#include <stdlib.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <string.h>
#include <stdint.h>
#include <sys/time.h>
#include <fcntl.h>


#define SRV_IP "127.0.0.1"
#define BUFLEN 1024
#define PORT 12345
#define TIMEOUTMS 50

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

void diep(char *s)
{
  perror(s);
  exit(1);
}

int main(int argc, char *argv[])
{
  struct sockaddr_in si_other;
  int s, i, slen=sizeof(si_other);
  char buf[BUFLEN];  
  struct timeval start, end;

	if(argc < 2){
		printf("argument missed\n");
		return 1;
	}
	
  if ((s=socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP))==-1)
    diep("socket");
     
  memset((char *) &si_other, 0, sizeof(si_other));
  si_other.sin_family = AF_INET;
  si_other.sin_port = htons(PORT);
  if (inet_aton(SRV_IP, &si_other.sin_addr)==0) {
    fprintf(stderr, "inet_aton() failed\n");
    exit(1);
  }

  //printf("Sending packet\n");

  //sprintf(buf, "%d:%d:%d\n", 1,2,3);
  //sprintf(buf, "%s:%s:%s:%s\n", argv[1],argv[2],argv[3], argv[4]);
  
  if (sendto(s, argv[1], strlen(argv[1]), 0, (struct sockaddr *)&si_other, slen)==-1)
     diep("sendto()");
  
	int flags = fcntl(s, F_GETFL, 0);
	flags |= O_NONBLOCK;
	fcntl(s, F_SETFL, flags);  
  
  gettimeofday(&start, NULL);

  while(1){
	  gettimeofday(&end, NULL);
	  int dt = (end.tv_sec*1000000+end.tv_usec) - (start.tv_sec*1000000+start.tv_usec);

	  if( dt > TIMEOUTMS*1000) break;
	  
	  int nb = 0;
		if ( (nb = recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *)&si_other, &slen)) > 0 )
		{
			//for(i = 0; i < nb; i++) printf("%02x:", buf[i]);
			//printf("\n");
			
			int16_t tlm[32];
			char *sp = buf;
			for(i = 0; i < 32; i++){
				sp = parser(sp, &tlm[i]);
				if(i == 31) printf("%d\n", tlm[i]);
				else printf("%d:", tlm[i]);
				
				if(sp == 0) break;
			}			
			
			break;
		}
  } 

  close(s);
  return 0;
}
