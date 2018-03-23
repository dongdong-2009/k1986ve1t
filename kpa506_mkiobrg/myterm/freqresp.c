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
const char port_name[] =  "/dev/ttyUSB1";

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
	options.c_cc[VTIME] = 1;
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

	if(argc < 3){
		printf("argument missed\n");
		return 1;
	}

	freq = (50*atoi(argv[1]))/10;
	tanl = atoi(argv[2]);
	//printf("f=%d\n", freq);

	//printf("init serial port\r\n");
	if( (fcom = init_port()) < 0) {
		perror("open_port: Unable to open /dev/ttyUSB1 - ");
		return 1;
	}

	//while(1)
	for(j = 0; j < tanl; j++)
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

		nwritten = write(fcom, (uint8_t*)cw, sizeof(cw));
	}

	while(nb = read(fcom, &bc, 1))
	{
		if((bc==0x55) && (bp==0xaa)){
			int is = (ib-(32*2+1))&127;

			for(i = 0; i < 32; i++){
				uint8_t bh = buf[is]; is = (is+1)&127;
				uint8_t bl = buf[is]; is = (is+1)&127;
				tlm[i] = bh+(bl<<8);					
			}

			if(get_checksum(tlm, 31) == tlm[31]){
				static uint32_t tp;
				uint32_t tc = (tlm[1]<<16)+tlm[2];
				uint32_t dt = tc-tp;
				tp = tc;		

				printf("%d %d %d\n", (tlm[1]<<16)+tlm[2], (int16_t)tlm[5], (int16_t)tlm[9]);
			}
		 }
		 
		bp = bc;
		bm = (bm<<8) | bc;

		buf[ib] = bc;
		ib = (ib+1)&127;

	}

	close(fcom);
}
