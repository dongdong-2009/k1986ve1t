#include <stdlib.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <string.h>
#include <stdint.h>

#define BUFLEN 128
#define NPACK 1
#define PORT 12345

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

int main(int argc, char **argv)
{
  struct sockaddr_in si_me, si_other;
  int s, i, slen=sizeof(si_other);
  char buf[BUFLEN];

  if ((s=socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP))==-1)
    diep("socket");

  memset((char *) &si_me, 0, sizeof(si_me));
  si_me.sin_family = AF_INET;
  si_me.sin_port = htons(PORT);
  si_me.sin_addr.s_addr = htonl(INADDR_ANY);
  if (bind(s, (const struct sockaddr *)&si_me, sizeof(si_me))==-1)
      diep("bind");

  int nb = 0;
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
	
	char tlm[] = "21:22:23:24:25\n";
	
	if (sendto(s, tlm, sizeof(tlm), 0, (struct sockaddr *)&si_other, slen)==-1)
		diep("sendto()");

  }

  close(s);
  return 0;
}
