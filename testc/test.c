#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

#define DLM 0x55
#define FinishBlock(X) (*code_ptr = (X), code_ptr = dst++, code = 0x01)

void StuffData(const uint8_t *ptr, size_t length, uint8_t *dst)
{
  const uint8_t *end = ptr + length;
  uint8_t *code_ptr = dst++;
  uint8_t code = 0x01;

  while (ptr < end)
  {
    if (*ptr == DLM)
      FinishBlock(code);
    else
    {
      *dst++ = *ptr;
      if (++code == 0xFF)
        FinishBlock(code);
    }
    ptr++;
  }

  FinishBlock(code);
}

void UnStuffData(const uint8_t *ptr, size_t length, uint8_t *dst)
{
  const uint8_t *end = ptr + length;
  while (ptr < end)
  {
    int code = *ptr++;
    for (int i = 1; ptr < end && i < code; i++)
      *dst++ = *ptr++;
    //if (code < 0xFF)
      *dst++ = DLM;
  }
}

void prn_buf(uint8_t *p, int n)
{
	int i;
	for(i = 0; i < n; i++){
		printf("%02x:", p[i]);
	}
	printf("\n");		
}

int main(int argc, char *argv[])
{
	int i;
	uint8_t buf[9] = {0,121,12,0x55,44,0x55,136,78,0x55};
	uint8_t *pb;
	pb = buf;
	
	prn_buf(buf+1, sizeof(buf)-1);	
	StuffData(buf+1, 7, buf);	
	prn_buf(buf, sizeof(buf));	
	
	UnStuffData(buf, 8, buf);
	prn_buf(buf, sizeof(buf));	

	return 0;
}
