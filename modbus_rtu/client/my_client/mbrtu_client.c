#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include "modbus.h"

#define N_REGS 10
#define N_REGSWR 3
#define REGISTERS_ADDRESS 5

char *comname;
uint16_t tab_regs[N_REGS];
int boderate;
int serverid = 17;
int nregfwr = 0;

static int parse_command(int argc, char** argv)
{
  int i = 0;
  int j = 0;

  //if(argc < 5) return 0;

  for(i = 1; i < argc; i++)
  {
	  if(argv[i][0]=='-')
	  {
			switch(argv[i][1])
			{
				case 'd':
					comname = argv[i]+2;
					break;
					
				case 'b':
					boderate = atoi(&argv[i][2]);
					break;	
					
				case 'm':
					serverid = atoi(&argv[i][2]);
					break;										
										
				default:
					return 0;
	  	}
	 	}
	 	else{
			if(j < N_REGSWR){ 	 	
				tab_regs[N_REGS - N_REGSWR + (j++)] = (uint16_t)(0xffff&strtol(argv[i], 0, 16));
				nregfwr++;
			}
			else{
				break;
			}
	 	}
 	}/* for(i = 1; i < argc; i++) */

  return 1;
}

void pack_bits_to_bytes(unsigned char *pbytes, unsigned char *pbits, int sbit, int nbits)
{
    int ibyte, ibite, i, nb;

    ibyte = sbit >> 3;
    ibite = 0x07 & sbit;

    i = 0;
    while(1)
    {
		unsigned char reg;
		reg = pbits[ibyte++] >> ibite;
		reg |= pbits[ibyte] << (8-ibite);
		pbytes[i] = reg;
		if(nbits > 8)
		{
			nbits -= 8;
			i ++;
		}
		else
		{
			pbytes[i] &= (0xff >> (8-nbits));
			break;
		}
    }
}


int main(int argc, char *argv[])
{
    modbus_t *ctx;
    int i, rc;
    unsigned char bits[6] = {0x00, 0x00, 0xff, 0xff, 0x00, 0x00};
    unsigned char bytes[6] = {0, 0, 0, 0, 0, 0};
    
       
	if(!parse_command(argc, argv))
	{
		fprintf(stderr, "Error parsing comline\n");
		return -1;
	}
	
	/*for(i =0 ; i < N_REGS; i++)
	{
		printf("%u\n", tab_regs[i]);
	}
	printf("%u\n", boderate);
	printf("%s\n", comname);
	return 0;*/

	// some init ..
    ctx = modbus_new_rtu(comname, boderate, 'N', 8, 1);
    if (ctx == NULL) 
    {
        fprintf(stderr, "Unable to allocate libmodbus context\n");
        return -1;
    }
    modbus_set_debug(ctx, TRUE);
    modbus_set_slave(ctx, serverid);

    if (modbus_connect(ctx) == -1) 
    {
        fprintf(stderr, "Connection failed: %s\n",
                modbus_strerror(errno));
        modbus_free(ctx);
        return -1;
    }

	// lets do it
	if(nregfwr >= 3)
	{	 
		//rc = modbus_write_registers(ctx, (N_REGS-N_REGSWR), 4, &tab_regs[N_REGS-N_REGSWR]);
		rc = modbus_write_registers(ctx, (N_REGS-N_REGSWR), N_REGSWR, &tab_regs[N_REGS-N_REGSWR]);
		//rc =  modbus_write_register(ctx, 9, 0x1234);
		if (rc == N_REGSWR) {
			//printf("OK\n");
		} else {
			//printf("FAILED\n");
			goto close;
		}
	}

//    rc = modbus_read_registers(ctx, 0, 11, tab_regs);
    rc = modbus_read_registers(ctx, 0, N_REGS, tab_regs);
    if (rc != N_REGS) {
        printf("FAILED (nb points %d)\n", rc);
        goto close;
    }

	for(i = 0; i < N_REGS-1; i++)
	{
		printf("0x%04x ", tab_regs[i]);
	}
	printf("0x%04x", tab_regs[N_REGS-1]);
close:

    /* Close the connection */
    modbus_close(ctx);
    modbus_free(ctx);

    return 0;
}
