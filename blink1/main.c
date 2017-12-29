
#include "opora.h"

#define REVISION_2

void ClkConfig(void);
void PortConfig(void);

int Current_Led;
uint32_t i;
int main()
{
	PortConfig();
	Current_Led=0;
	while(1)
	{
		//PORTD->RXTX^=1<<(7+Current_Led++);
		//if(Current_Led>7) Current_Led=0;
		PORTD->RXTX ^= 0x000f;

		for(i=0;i<3;i++); 					//Pause ~88 ms
	}
}

//--- Ports configuration ---
void PortConfig()
{
	RST_CLK->PER_CLOCK|=1<<24;	 				//clock of PORTD ON
	
	PORTD->FUNC = 0x00000000;  	/* mode is port */
	PORTD->RXTX = 0x0000;	     	/* clear the out */
	PORTD->OE = 0x00ff;					/* port is output mode */
	PORTD->ANALOG = 0x00ff;			/* port is digital mode */
	PORTD->PWR = 0x3FFFCfff;		/* max power of port */
}
