#include <stdlib.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <string.h>
#include <stdint.h>
#include <fcntl.h>   /* File control definitions */
#include <errno.h>   /* Error number definitions */
#include <termios.h> /* POSIX terminal control definitions */
#include <sys/ioctl.h> 
#include <linux/serial.h> 


#define BUFLEN 128
#define PORT 12345

const char port_name[] =  "/dev/ttyUSB0";
int fcom = 0;

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

void put_control(uint16_t *cmd)
{
	// put the control array
	uint16_t cw[5];
	uint8_t adu[128];
	uint16_t ts = 0;
	
	ts += cw[0] = cmd[0];
	ts += cw[1] = cmd[1];
	ts += cw[2] = cmd[2];
	ts += cw[3] = cmd[3];
	cw[4] = ts+1;
	
	stuff((uint8_t*)cw, 10, adu);
	
	// send adu to device
	if(write(fcom, adu, 12) < 12)
	{
		perror("write command");
		exit(1);
	}
}

void diep(char *s)
{
  perror(s);
  exit(1);
}

char* parser(char* s, int16_t *n)
{
	char *p;
	for(p = s; (*p <= 0x39) && (*p >= 0x30) || (*p == 0x2d) || (*p == 0x2b); p++);
	
	if(*p == 0xa){
		*p = 0;
		*n = atoi(s);
		return 0;
	}	

	*p = 0;
	*n = atoi(s);
	return p+1;

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

static uint8_t tlm_cbuf[128];
void get_tlm(uint16_t *tlm)
{
	uint8_t bc;
	int nb, i;
	uint8_t adu[128];

	static int ib = 0;

	// get the telemetry array
	while(nb = read(fcom, &bc, 1))
	{
		
		if(bc == 0){
			int is = (ib-(32*2+1) )&127;
								
			// decode adu
			for(i = 0; i < 32*2+2; i++){
				adu[i] = tlm_cbuf[is]; 
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
			
			break;
						
		 }
		tlm_cbuf[ib] = bc;
		ib = (ib+1)&127;
	}
}

int main(int argc, char **argv)
{
	struct sockaddr_in si_me, si_other;
	int s, i, slen=sizeof(si_other);
	char buf[BUFLEN];
	
	int fcmd = 0;

	printf("init serial port\r\n");
	if( (fcom = init_port()) < 0) {
		diep("init serial");
	}	

	if ((s=socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP))==-1)
	diep("socket");

	memset((char *) &si_me, 0, sizeof(si_me));
	si_me.sin_family = AF_INET;
	si_me.sin_port = htons(PORT);
	si_me.sin_addr.s_addr = htonl(INADDR_ANY);
	if (bind(s, (const struct sockaddr *)&si_me, sizeof(si_me))==-1)
	  diep("bind");

	int activity = 0;
	fd_set rdset;
	fd_set wrset;
	int fdmax = (fcom>s)?fcom:s;
	int16_t cmd[4] = {0,0,0,0};
		
	while(1){
		FD_ZERO(&rdset);
		FD_SET(s, &rdset);
		FD_SET(fcom, &rdset);
		
		FD_ZERO(&wrset);
		//FD_SET(fcom, &wrset);		
		
		if((activity = select(fdmax+1, &rdset, NULL, NULL, NULL)) > 0){
			// smth happening
			if(FD_ISSET(s, &rdset)){
				int nb = 0;
				nb = recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *)&si_other, &slen);
				
				if(nb > 0){
					printf("Received packet from %s:%d\n", inet_ntoa(si_other.sin_addr), ntohs(si_other.sin_port));
					for(i = 0; i < nb; i++) printf("%02x:", buf[i]);
					printf("\n");
					
					char *sp = buf;
					for(i = 0; i < 4; i++){
						sp = parser(sp, &cmd[i]);
						printf("%d\n", cmd[i]);
						if(sp == 0) break;
					}
					
					put_control(cmd);
					fcmd = 1;
				}
			}
			
			/*if(FD_ISSET(fcom, &wrset)){
				if(fcmd){
					put_control(cmd);
					fcmd = 0;
				}
			}*/
			
			if(FD_ISSET(fcom, &rdset)){
				fprintf(stderr, "serial is acvite\n");
				uint16_t tlm[32];
				char mess[1024];
				
				get_tlm(tlm);
				
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
					
					
					char *pm = mess;
					
					for(i = 0; i < 32; i++){
						pm += sprintf(pm, "%u:", tlm[i]);
					}				
					sprintf(pm, "\n");										
					sendto(s, mess, strlen(mess), 0, (struct sockaddr *)&si_other, slen);
				
				}				
			}
		}
	}



	/*int nb = 0;
	while(1)
	{
		if ( (nb = recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *)&si_other, &slen))==-1 )
		  diep("recvfrom()");
		printf("Received packet from %s:%d\n", 
				inet_ntoa(si_other.sin_addr), ntohs(si_other.sin_port));
		for(i = 0; i < nb; i++)
			printf("%02x:", buf[i]);
		printf("\n");

		int16_t cmd[5] = {0,0,0,0,0};
		char *sp = buf;
		for(i = 0; i < 5; i++){
			sp = parser(sp, &cmd[i]);
			printf("%d\n", cmd[i]);
			if(sp == 0) break;
		}

		if (sendto(s, "hello\n", 6, 0, (struct sockaddr *)&si_other, slen)==-1)
			diep("sendto()");

	}*/

	close(s);
	return 0;
}
