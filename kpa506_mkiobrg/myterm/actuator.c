#include <stdio.h>   /* Standard input/output definitions */
#include <string.h>  /* String function definitions */
#include <unistd.h>  /* UNIX standard function definitions */
#include <fcntl.h>   /* File control definitions */
#include <errno.h>   /* Error number definitions */
#include <termios.h> /* POSIX terminal control definitions */
#include <sys/ioctl.h> 
#include <linux/serial.h> 
#include <stdint.h>
#include <stdlib.h>

extern const int32_t cos_tb[1024];
const char port_name[] =  "/dev/ttyUSB0";

#define FinishBlock(X) (*code_ptr = (X), code_ptr = dst++, code = 0x01)
void stuff(const uint8_t *ptr, size_t length, uint8_t *dst)
{
  const uint8_t *end = ptr + length;
  uint8_t *code_ptr = dst++;
  uint8_t code = 0x01;

  while (ptr < end)
  {
    if (*ptr == 0)
      FinishBlock(code);
    else
    {
      *dst++ = *ptr;
	  if (++code == 0xFF) FinishBlock(code);      
    }
    ptr++;
  }

  *dst = 0;
  FinishBlock(code);
}

void unstuff(const uint8_t *ptr, size_t length, uint8_t *dst)
{
  const uint8_t *end = ptr + length;
  while (ptr < end)
  {
    int code = *ptr++;
    for (int i = 1; ptr < end && i < code; i++) *dst++ = *ptr++; 
  
    if (code < 0xFF)
      *dst++ = 0;
  }
}

/*
 * 'open_port()' - Open serial port 1.
 *
 * Returns the file descriptor on success or -1 on error.
 */

int init_port(void)
{
	int            fd;
	struct termios options;
	struct serial_struct serial; 

	/* open the port */
	fd = open(port_name, O_RDWR | O_NOCTTY | O_NDELAY);
	fcntl(fd, F_SETFL, 0);

	/*
	ioctl(fd, TIOCGSERIAL, &serial); 
		serial.flags |= ASYNC_LOW_LATENCY; 
		serial.flags &= ~ASYNC_LOW_LATENCY; 
		//serial.xmit_fifo_size = 32; 
	ioctl(fd, TIOCSSERIAL, &serial); 
	*/

	/* get the current options */
	tcgetattr(fd, &options);

	/* set raw input, 1 second timeout */
	options.c_cflag     |= (CLOCAL | CREAD);
	options.c_lflag     &= ~(ICANON | ECHO | ECHOE | ISIG);
	options.c_oflag     &= ~OPOST;
	options.c_cc[VMIN]  = 0;
	options.c_cc[VTIME] = 5;
	options.c_iflag &= ~(IXON | IXOFF | IXANY); /*  disable software flow control */
	//options.c_cflag &= ~CRTSCTS; /*  disable hardware flow control */
	options.c_cflag |= CRTSCTS; /*  enable hardware flow control */
	//cfsetispeed(&options, B921600);
	cfsetispeed(&options, B500000);

	/* set the options */
	tcsetattr(fd, TCSANOW, &options);

	return (fd);
}

uint16_t get_checksum(uint16_t *p, uint32_t n)
{
	int i;
	uint16_t s = 0;
	for(i = 0; i < n; i++){
		s += *p++;
	}
	
	return (s+1);
}

uint16_t swpb(uint16_t val)
{
	return (val << 8) + (0x00ff & (val >> 8));
}

void prn_buf(uint8_t *p, int n)
{
	int i;
	printf("buf = {");		
	for(i = 0; i < n; i++){
		printf("%02x:", p[i]);
	}
	printf("}\n");		
}

int main(int argc, char *argv[])
{
	int16_t refpos1 = 0;
	int16_t refpos2 = 0;
	int16_t refpos3 = 0;
	int fcom;
	uint16_t cw[5];
	uint16_t tlm[32];
	uint8_t adu[128];
	int ib = 0;
	uint8_t bc;
	uint8_t buf[128];
	int nb;
	int i;
	
	/*int i;
	uint8_t adu[12] = {0xff,0x11,0x12,0x21,0x22,0x31,0x32,0x41,0x42,0x51,0x52,0xff};
	//uint8_t adu[12] = {0xff,0x00,0x12,0x00,0x22,0x31,0x32,0x41,0x42,0x00,0x52,0xff};
	
	prn_buf(adu+1, 10);
	stuff(adu+1, 10, adu);
	prn_buf(adu, 12);	

	unstuff(adu, 12, adu);
	prn_buf(adu, 10);
	return 0;
	*/
	
	if(argc < 4){
		printf("argument missed\n");
		return 1;
	}
	
	refpos1 = atoi(argv[1]);
	printf("refpos1=%d\n", refpos1);
	refpos2 = atoi(argv[2]);
	printf("refpos2=%d\n", refpos2);
	refpos3 = atoi(argv[3]);
	printf("refpos3=%d\n", refpos3);
	
	printf("init serial port\r\n");
	if( (fcom = init_port()) < 0) {
		perror("open_port: Unable to open /dev/ttyUSB0 - ");
		return 1;
	}	
	
	// put the control array
	uint16_t tw = 0;
	uint16_t ts = 0;
	
	tw = (1<<5)+(0<<3)+(0<<1); 	ts += tw;	cw[0] = tw;
	tw = refpos1;				ts += tw;	cw[1] = tw;
	tw = refpos2;				ts += tw;	cw[2] = tw;
	tw = refpos3;				ts += tw;	cw[3] = tw;
	cw[4] = ts+1;
	
	stuff((uint8_t*)cw, 10, adu);
	
	// send adu to device
	write(fcom, adu, 12);
	printf("cw = {%04x:%04x:%04x:%04x:%04x}\r\n", cw[0], cw[1], cw[2], cw[3], cw[4]);
	prn_buf(adu, sizeof(adu));
	printf("\n");
	
	//return 0;
	
	ib = 0;
	// get the telemetry array
	while(nb = read(fcom, &bc, 1))
	{
		
		if(bc == 0){
			int is = (ib-(32*2+1) )&127;
								
			// decode adu
			for(i = 0; i < 32*2+2; i++){
				adu[i] = buf[is]; 
				is = (is+1)&127;
			}
			prn_buf(adu, sizeof(adu));
			printf("\n");
			
			unstuff(adu, 32*2+2, adu);
			
			// copy to buffer
			is = 0;
			for(i = 0; i < 32; i++){
				uint8_t bl = adu[is++];
				uint8_t bh = adu[is++];
				tlm[i] = bl+(bh<<8);
			}
						
			if(get_checksum(tlm, 31) == tlm[31]){
				printf("tlm = {");
				for(i = 0; i < 32; i++){
					printf("%04x:", tlm[i]);
				}				
				printf("}\n");								
								
				/*printf("buf = {");
				for(i = 0; i < sizeof(buf); i++){
					printf("%02x:", buf[i]);
				}
				printf("}\n");*/

				printf("t = %dms\nrefpos1=%d:refpos2=%d:refpos3=%d\npos1=%d:pos2=%d:pos3=%d\n",
				(tlm[1]<<16)+tlm[2], (int16_t)tlm[7], (int16_t)tlm[8], (int16_t)tlm[9],
				(int16_t)tlm[3], (int16_t)tlm[4], (int16_t)tlm[5]);
				break;
			}

		 }
		buf[ib] = bc;
		ib = (ib+1)&127;
	}

	close(fcom);
}

int main_1(int argc, char *argv[])
{
	int ib = 0;
	uint8_t bc;
	uint8_t bp;	
	
	uint8_t buf[128];
	int fcom;
	int nb;
	int i;
	uint8_t ch='h';
	int ln = 0;
	uint32_t phase = 0;
	uint32_t freq = 50;
	int16_t refpos1 = 0;
	
	uint16_t cw[6];
	uint16_t tlm[32];
	
	if(argc < 2){
		printf("argument missed\n");
		return 1;
	}
	
	//freq = (50*atoi(argv[1]))/10;
	//printf("f=%d\n", freq);
	
	refpos1 = atoi(argv[1]);
	printf("position=%d\n", refpos1);
	
	printf("init serial port\r\n");
	if( (fcom = init_port()) < 0) {
		perror("open_port: Unable to open /dev/ttyUSB0 - ");
		return 1;
	}
	
	// put the control array
	uint16_t cx = (1<<5)+(0<<3)+(0<<1);
	uint16_t val1 = refpos1;
	uint16_t val2 = 0;
	uint16_t val3 = 0;
	uint16_t cs = cx+val1+val2+val3+1;
		
	cw[0] = swpb(cx);
	cw[1] = swpb(val1);
	cw[2] = swpb(val2);
	cw[3] = swpb(val3);
	cw[4] = swpb(cs);
	cw[5] = 0x55aa;
	
	write(fcom, cw, sizeof(cw));
	printf("cw = {%04x:%04x:%04x:%04x:%04x}\r\n", cw[0], cw[1], cw[2], cw[3], cw[4]);
	
	printf("cw = {");
	uint8_t *ptb = (uint8_t*)cw;
	for(i = 0; i < sizeof(cw)*2; i++){
		printf("%02x:", *ptb++);
	}
	printf("}\n\n");

	//while(nb = read(fcom, &ch, 1))	putc(ch, stderr);
	
	// get the telemetry array
	while(nb = read(fcom, &bc, 1))
	{
		if((bc==0x55) && (bp==0xaa)){
			int is = (ib-(32*2+1))&127;
			
			for(i = 0; i < 32; i++){
				uint8_t bh = buf[is]; is = (is+1)&127;
				uint8_t bl = buf[is]; is = (is+1)&127;
				tlm[i] = bh+(bl<<8);					
			}
						
			printf("tlm = {");
			if(get_checksum(tlm, 31) == tlm[31]){
				for(i = 0; i < 32; i++){
					printf("%04x:", tlm[i]);
				}				
				printf("}\n");								
								
				printf("buf = {");
				for(i = 0; i < sizeof(buf); i++){
					printf("%02x:", buf[i]);
				}
				printf("}\n");								
				
				printf("t = %dms:pos = %d:refpos=%d:pcur=%d\n", (tlm[1]<<16)+tlm[2], (int16_t)tlm[5], (int16_t)tlm[9], (int16_t)tlm[12]);
			}
							
		 }
		bp = bc;
		buf[ib] = bc;
		ib = (ib+1)&127;			
	}		

	close(fcom);
}
