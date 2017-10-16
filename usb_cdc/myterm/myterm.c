#include <stdio.h>   /* Standard input/output definitions */
#include <string.h>  /* String function definitions */
#include <unistd.h>  /* UNIX standard function definitions */
#include <fcntl.h>   /* File control definitions */
#include <errno.h>   /* Error number definitions */
#include <termios.h> /* POSIX terminal control definitions */
#include <sys/ioctl.h> 
#include <linux/serial.h> 

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
	fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY | O_NDELAY);
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
	options.c_cflag &= ~CRTSCTS; /*  disable hardware flow control */

	/* set the options */
	tcsetattr(fd, TCSANOW, &options);

	return (fd);
}

int main(int argc, char *argv[])
{
	char buf[128];
	int fcom;
	int nb;
	int i;
	char ch='h';
	int ln = 0;
	
	printf("init serial port\r\n");
	if( (fcom = init_port()) < 0) {
		perror("open_port: Unable to open /dev/ttyACM0 - ");
		return 1;
	}
	
	ln = 0;
	while( (ch=getchar()) != EOF){
		buf[ln] = ch; 
		if(ln < 128) ln++;
		buf[ln] = 0;
		if(ch == '\n') {
			//fprintf(stderr, "%s", buf);
			write(fcom, buf, ln);
			ln = 0;
			while(nb = read(fcom, &ch, 1))	putc(ch, stderr);
		}		

	}
	
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
