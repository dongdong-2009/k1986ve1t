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
	options.c_cc[VTIME] = 10;
	options.c_iflag &= ~(IXON | IXOFF | IXANY); /*  disable software flow control */
	//options.c_cflag &= ~CRTSCTS; /*  disable hardware flow control */
	options.c_cflag |= CRTSCTS; /*  enable hardware flow control */
	//cfsetispeed(&options, B921600);
	cfsetispeed(&options, B500000);

	/* set the options */
	tcsetattr(fd, TCSANOW, &options);
	
	tcflush(fd, TCIOFLUSH);

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
	uint16_t control_word = 0;
	
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
	
	
	printf("\n\n**** hello ****\n");
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
	uint16_t ts = 0;
	control_word = 0;
	control_word = (1<<15); // вкл СЧ
	//control_word = (1<<15) | (1<<5); // разаррет
	
	ts += cw[0] = control_word; //(1<<15) | (1<<5) | (0<<3) | (0<<1);
	ts += cw[1] = refpos1;
	ts += cw[2] = refpos2;
	ts += cw[3] = refpos3;
	cw[4] = ts+1;
	
	stuff((uint8_t*)cw, 10, adu);
	
	// send adu to device
	
	//tcsendbreak(fcom, 100);	
	
	
	if(write(fcom, adu, 12) < 12)
	{
		perror("write command");
		return 1;
	}
	
	if(tcflush(fcom, TCOFLUSH) < 0) return 1;
	
	printf("cw = {%04x:%04x:%04x:%04x:%04x}\r\n", cw[0], cw[1], cw[2], cw[3], cw[4]);
	//prn_buf(adu, sizeof(adu));
	//printf("\n");
	
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
			//prn_buf(adu, sizeof(adu));
			//printf("\n");
			
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

				printf("t = %dms\nrefpos1=%d:refpos2=%d:refpos3=%d\npos1=%d:pos2=%d:pos3=%d\nIp1=%d:Ip3=%d:Ip3=%d\nstatus=0x%04x\nU=%d\nUpr=%d\n",
				(tlm[1]<<16)+tlm[2], (int16_t)tlm[7], (int16_t)tlm[8], (int16_t)tlm[9],
				(int16_t)tlm[3], (int16_t)tlm[4], (int16_t)tlm[5], (int16_t)tlm[12], (int16_t)tlm[13], (int16_t)tlm[14], tlm[0], tlm[11],tlm[10]);
				break;
			}

		 }
		buf[ib] = bc;
		ib = (ib+1)&127;
	}
	
	if(nb<0) perror("read error");

	close(fcom);
	return 0;
}
