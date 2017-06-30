#include "opora.h"

#define CPU_PLL_MULT 15 // PLL_CLK 120 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 120000 // 1ms for 120 MHz
//#define SYS_TICKS 12000000 // 100ms

void ClkConfig(void);
void PortConfig(void);
void SystemInit(void);

int Current_Led;
uint32_t i;
uint32_t system_time = 0;

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

int main()
{
	SystemInit();
	Current_Led=0;
	while(1)
	{
		//PORTD->RXTX^=1<<(7+Current_Led++);
		//if(Current_Led>7) Current_Led=0;
		//PORTD->RXTX ^= 0xffff;

		sleep(1000);
		
	}
}
//--- Ports configuration ---
void PortConfig()
{
	RST_CLK->PER_CLOCK|=1<<24;	 				//clock of PORTD ON
	
	PORTD->FUNC = 0x00000000;  	/* mode is port */
	PORTD->RXTX = 0x0000;	     	/* clear the out */
	PORTD->OE = 0x7F80;					/* port is output mode */
	PORTD->ANALOG = 0x7F80;			/* port is digital mode */
	PORTD->PWR = 0x3FFFC000;		/* max power of port */
}

void ClkConfig(void)
{
	RST_CLK->HS_CONTROL |= 0x00000001; 					// HSE power on, in oscillator mode
	while(0 == (RST_CLK->CLOCK_STATUS & 0x00000004));	// wait for HSE ready
	
	RST_CLK->CPU_CLOCK |= 0x00000002;					// source for CPU_C1 is HSE
	//RST_CLK->CPU_CLOCK |= 0x00000003;					// source for CPU_C1 is HSE/2
	// setup PLL CPU
	RST_CLK->PLL_CONTROL = RST_CLK_PLL_CONTROL_PLL_CPU_ON |
						   ((CPU_PLL_MULT-1) << RST_CLK_PLL_CONTROL_PLL_CPU_MUL_OFFS);
	while(0 == (RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_PLL_CPU_RDY));	// wait for PLL CPU ready
	
	// flash delay
	EEPROM->CMD |= (EEPROM_DEL << EEPROM_CMD_Delay_OFFS);
						   						   
	RST_CLK->CPU_CLOCK |= (1 << RST_CLK_CPU_CLOCK_HCLK_SEL_OFFS);	// source for HCLK is CPU_C3
	RST_CLK->CPU_CLOCK |= (1 << RST_CLK_CPU_CLOCK_CPU_C2_SEL_OFFS);	// source for CPU_C2 is PLLCPUo	
}

void TimerConfig(void)
{
	// enable TIM1
	RST_CLK->PER_CLOCK |= (1 << 14); 							
	RST_CLK->TIM_CLOCK |= RST_CLK_TIM_CLOCK_TIM1_CLK_EN;
	RST_CLK->TIM_CLOCK &= ~RST_CLK_TIM_CLOCK_TIM1_BRG_MASK; // TIM3_CLK = HCLK
	//RST_CLK->TIM_CLOCK |= (0xff << RST_CLK_TIM_CLOCK_TIM1_BRG_OFFS);
	
	TIMER1->CNT = 0;
	TIMER1->PSG = 120 - 1;  // prescaller gets 1 MHz
	TIMER1->ARR = 1000 - 1;	// TIM1 period is 1 KHz  
	
	TIMER1->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// enable int for CNT=ARR event
	TIMER1->CNTRL |= TIMER_CNTRL_CNT_EN; 						// start count
	NVIC_EnableIRQ(TIMER1_IRQn); 								// enable in nvic int from timer1
		
}

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	TimerConfig();
	SysTick_Config(SYS_TICKS);
	
	
}	

void SysTick_Handler(void)
{
	system_time ++;
}

void TIMER1_Handler(void)
{
	TIMER1->STATUS = 0;
	PORTD->RXTX ^= 0xffff;	
}
