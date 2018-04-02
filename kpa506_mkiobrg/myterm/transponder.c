#include <stdio.h>   		/* Standard input/output definitions */
#include <string.h>  		/* String function definitions */
#include <unistd.h>  		/* UNIX standard function definitions */
#include <fcntl.h>   		/* File control definitions */
#include <errno.h>   		/* Error number definitions */
#include <termios.h> 		/* POSIX terminal control definitions */
#include <sys/ioctl.h> 
#include <linux/serial.h> 
#include <stdint.h>
#include <stdlib.h>

#define SZCWR 6

extern const int32_t cos_tb[1024];
const char port_name[] =  "/dev/ttyUSB0";

uint16_t tttt[] = {0x1234,0x0000,0x02af,0x03e8,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
				   0x001b,0x001b,0x000a,0x0000,0x0000,0x0001,0x0000,0x0000,0x0000,0x0000,
				   0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x190a};

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
	options.c_oflag = 0; //&= ~OPOST;
	options.c_cc[VMIN]  = 0;
	options.c_cc[VTIME] = 0;
	options.c_iflag = 0; //&= ~(IXON | IXOFF | IXANY); /*  disable software flow control */
	//options.c_cflag &= ~CRTSCTS; /*  disable hardware flow control */
	options.c_cflag |= CRTSCTS; /*  enable hardware flow control */
	
	//cfsetispeed(&options, B115200);
	cfsetispeed(&options, B500000);
	//cfsetispeed(&options, B1000000);
	//cfsetospeed(&options, B921600);	

	/* set the options */
	tcsetattr(fd, TCSANOW, &options);

	return (fd);
}

uint16_t get_checksum(uint16_t *p, uint32_t n)
{
	int i;
	uint32_t s = 0;
	for(i = 0; i < n; i++){
		s += *p++;
	}	
	return 0xffff & (s+1);
}

uint16_t swpb(uint16_t val)
{
	return (val << 8) + (0x00ff & (val >> 8));
}

int main_1(int argc, char *argv[])
{
	int ib = 0;
	uint8_t bc;
	uint8_t bp;	
	uint32_t bm=0;

	uint8_t buf[128];
	int fcom;
	int nb;
	int i,j;
	uint8_t ch='h';
	int ln = 0;
	uint32_t phase = 0;
	uint32_t freq = 50;
	uint32_t tanl = 0;

	uint16_t cw[6];
	uint16_t tlm[32];
	uint32_t ntowrite = 0;
	uint32_t nwritten = 0;
	uint32_t idw = 0;

	uint32_t errcnt = 0;

	if(argc < 2){
		printf("argument missed\n");
		return 1;
	}

	freq = (50*atoi(argv[1]))/10;
	//printf("f=%d\n", freq);

	//printf("init serial port\r\n");
	if( (fcom = init_port()) < 0) {
		perror("open_port: Unable to open /dev/ttyUSB1 - ");
		return 1;
	}

	while(1)
	{
		//usleep(100000);
		//for(i = 0; i < 21; i++)
		// writing command word loop
		//while(1)
		{
			//if(ntowrite == 0)
			{
				phase = (phase+freq) & 1023;

				uint16_t cx = (1<<5)+(0<<3)+(0<<1);
				uint16_t val1 = cos_tb[phase];
				uint16_t val2 = cos_tb[(phase+1024/3)&1023];
				uint16_t val3 = cos_tb[(phase+2*1024/3)&1023];
				uint16_t cs = cx+val1+val2+val3+1;

				cw[0] = swpb(cx);
				cw[1] = swpb(val1);
				cw[2] = swpb(val2);
				cw[3] = swpb(val3);
				cw[4] = swpb(cs);
				cw[5] = 0x55aa;

				/*cw[0] = cx;
				cw[1] = val1;
				cw[2] = val2;
				cw[3] = val3;
				cw[4] = cs;
				cw[5] = 0x55aa;*/

				ntowrite = 12;
				idw = 0;
			}			

			nwritten = write(fcom, (uint8_t*)cw, sizeof(cw));
			/*nwritten = write(fcom, ((uint8_t*)cw)+idw, ntowrite);
			if(nwritten < ntowrite){
				fprintf(stderr, "break\n");
				idw = nwritten;
				ntowrite = 12-nwritten;				
				break;
			}			
			ntowrite = 0;*/


			//printf("%d:%d:%d:%d:%d\r\n", cw[0], cw[1], cw[2], cw[3], cw[4]);
		}
		//while(nb = read(fcom, &ch, 1))	putc(ch, stderr);


		//fprintf(stderr,"telem:\n");
		// reading telemetry loop
		while(nb = read(fcom, &bc, 1))
		{
			if((bc==0x55) && (bp==0xaa)){
			//if(bm == 0xaa55aa55){
				int is = (ib-(32*2+1))&127;

				for(i = 0; i < 32; i++){
					uint8_t bh = buf[is]; is = (is+1)&127;
					uint8_t bl = buf[is]; is = (is+1)&127;
					tlm[i] = bh+(bl<<8);					
				}

				if(get_checksum(tlm, 31) == tlm[31]){

					/*for(i = 0; i < 31; i++){
						printf("%04x:", tlm[i]);
					}
					printf("%04x\r\n", tlm[i]);*/


					static uint32_t tp;
					uint32_t tc = (tlm[1]<<16)+tlm[2];
					uint32_t dt = tc-tp;
					tp = tc;		

					//printf("t = %dms:pos = %d:refpos=%d\n", (tlm[1]<<16)+tlm[2], (int16_t)tlm[3], (int16_t)tlm[7]);
					/*printf("t = %dms\n", (tlm[1]<<16)+tlm[2]);
					printf("pos1 = %d:refpos1 = %d:pcur1 = %d\n", (int16_t)tlm[3], (int16_t)tlm[7], 3*(int16_t)tlm[12]);
					printf("pos2 = %d:refpos2 = %d:pcur2 = %d\n", (int16_t)tlm[4], (int16_t)tlm[8], 3*(int16_t)tlm[13]);
					printf("pos3 = %d:refpos3 = %d:pcur3 = %d\n", (int16_t)tlm[5], (int16_t)tlm[9], 3*(int16_t)tlm[14]);
					printf("Ipwr = %d:Upwr = %d:Uupr = %d\n", (int16_t)tlm[10], (int16_t)tlm[11], (int16_t)tlm[15]);
					printf("dt=%dms\n\n", dt);*/
					//printf("crc errors=%d\n", errcnt);

					printf("%d %d %d\n", (tlm[1]<<16)+tlm[2], (int16_t)tlm[5], (int16_t)tlm[9]);

				}
				else {
					//printf("crc error detected\n");
					/*printf("crc errors=%d\n", errcnt);
					for(i = 0; i < 31; i++){
						printf("%04x:", tlm[i]);
					}
					printf("%04x\r\n", tlm[i]);*/

					errcnt++;
				}
			 }
			bp = bc;

			bm = (bm<<8) | bc;

			buf[ib] = bc;
			ib = (ib+1)&127;

		}
	}



	/*
	ln = 0;
	while( (ch=getchar()) != EOF){
		buf[ln] = ch; 
		if(ln < 128) ln++;
		buf[ln] = 0;
		if(ch == '\n') {
			//fprintf(stderr, "%s", buf);
			write(fcom, buf, ln);
			ln = 0;
			//usleep(1000);
			while(nb = read(fcom, &ch, 1))	putc(ch, stderr);
		}		

	}
	*/
	
	/*
	while(1)
	{
		if(nb = read(fcom, &ch, 1))
		{
			putc(ch, stderr);
			if(ch == '\n') usleep(50000);
		}
		
	}*/

	close(fcom);
}


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
int main(int argc, char *argv[])
{
	int ib = 0;
	uint8_t bc;
	uint8_t bp;	
	uint32_t bm=0;

	uint8_t buf[128];
	int fcom;
	int nb;
	int i,j;
	uint8_t ch='h';
	int ln = 0;
	uint32_t phase = 0;
	uint32_t freq = 50;
	uint32_t tanl = 0;

	uint16_t cw[6];
	uint16_t tlm[32];
	uint32_t ntowrite = 0;
	uint32_t nwritten = 0;
	uint32_t idw = 0;

	uint32_t errcnt = 0;
	uint8_t adu[128];	

	if(argc < 2){
		printf("argument missed\n");
		return 1;
	}

	freq = (50*atoi(argv[1]))/10;
	//printf("f=%d\n", freq);

	//printf("init serial port\r\n");
	if( (fcom = init_port()) < 0) {
		perror("open_port: Unable to open /dev/ttyUSB1 - ");
		return 1;
	}

	while(1)
	{
		//usleep(100000);
		//for(i = 0; i < 21; i++)
		// writing command word loop
		//while(1)
		{
			//if(ntowrite == 0)
			{
				phase = (phase+freq) & 1023;

				// put the control array
				uint16_t tw = 0;
				uint16_t ts = 0;
				
				tw = (1<<5)+(0<<3)+(0<<1); 			ts += tw;	cw[0] = tw;
				tw = cos_tb[phase]<<1;				ts += tw;	cw[1] = tw;
				tw = cos_tb[(phase+1024/3)&1023];	ts += tw;	cw[2] = tw;
				tw = cos_tb[(phase+2*1024/3)&1023];	ts += tw;	cw[3] = tw;
				cw[4] = ts+1;

				stuff((uint8_t*)cw, 10, adu);

				// send adu to device
				nb = write(fcom, adu, 12);
			}
		}

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
					/*printf("tlm = {");
					for(i = 0; i < 32; i++){
						printf("%04x:", tlm[i]);
					}				
					printf("}\n");*/
									
					/*printf("buf = {");
					for(i = 0; i < sizeof(buf); i++){
						printf("%02x:", buf[i]);
					}
					printf("}\n");*/

					/*printf("t = %dms\nrefpos1=%d:refpos2=%d:refpos3=%d\npos1=%d:pos2=%d:pos3=%d\n",
					(tlm[1]<<16)+tlm[2], (int16_t)tlm[7], (int16_t)tlm[8], (int16_t)tlm[9],
					(int16_t)tlm[3], (int16_t)tlm[4], (int16_t)tlm[5]);*/
					
					//printf("%d %d %d\n", (tlm[1]<<16)+tlm[2], (int16_t)tlm[5], (int16_t)tlm[9]);
					//printf("%d %d %d\n", (tlm[1]<<16)+tlm[2], (int16_t)tlm[3], (int16_t)tlm[7]);
					
					printf("t = %dms\nrefpos1=%d:refpos2=%d:refpos3=%d\npos1=%d:pos2=%d:pos3=%d\n",
					(tlm[1]<<16)+tlm[2], (int16_t)tlm[7], (int16_t)tlm[8], (int16_t)tlm[9],
					(int16_t)tlm[3], (int16_t)tlm[4], (int16_t)tlm[5]);
				}

			 }
			buf[ib] = bc;
			ib = (ib+1)&127;
		}
	}

	close(fcom);
}
