#include "opora.h"
#include "uart.h"

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
uint32_t test_pwm = 500;

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

int main()
{
	char ch;
	char buf[] = "hello world\r\n";
	SystemInit();
	Current_Led=0;
	int i = 0;
	while(1)
	{
		//PORTD->RXTX^=1<<(7+Current_Led++);
		//if(Current_Led>7) Current_Led=0;
		
/*		
		for(i = 0; i < sizeof(buf); i++){
			UART1->DR = buf[i];
			while( UART1->FR & UART_FR_TXFF );	//wait until Tx FIFO full
		}
*/
		/*
		// wait for filling the fifo
		while(0 == (UART1->FR & UART_FR_RXFF));			
		
		// empting the fifo		
		while(0 == (UART1->FR & UART_FR_RXFE)) {
			ch = UART1->DR; 
			PORTD->RXTX |= 0xffff;
			sleep(1000);
			PORTD->RXTX &= ~0xffff;
			sleep(1000);
		}
		*/
	}
}

//--- Ports configuration ---
void PortConfig()
{
	RST_CLK->PER_CLOCK|=1<<24;	 				//clock of PORTD ON
	
	PORTD->FUNC = 0x00000000;  		// функция - порт
	PORTD->RXTX = 0x0000;	     	// очищаем выход
	PORTD->OE = 0x7F80;				// порт на выход
	PORTD->ANALOG = 0x7F80;			/* port is digital mode */
	PORTD->PWR = 0x3FFFC000;		/* max power of port */
	
	// настройка выхода ШИМ PA.6 и PA.7
	RST_CLK->PER_CLOCK|=1<<21;	 		// clock of PORTA ON
	PORTA->FUNC &= ~(0x03 << (6<<1)); 		
	PORTA->FUNC &= ~(0x03 << (7<<1)); 		
	PORTA->FUNC |= (0x02 << (6<<1)); 	// альтернативная функция PA.6
	PORTA->FUNC |= (0x02 << (7<<1)); 	// альтернативная функция PA.7
	PORTA->OE |= (1 << 6);				// PA.6 - выход
	PORTA->OE |= (1 << 7);				// PA.7 - выход
	PORTA->ANALOG |= (1 << 6);			// PA.6 - цифровой режим
	PORTA->ANALOG |= (1 << 7);			// PA.7 - цифровой режим
	PORTA->PWR |= (0x03 << (6<<1));		// max speed PA.6
	PORTA->PWR |= (0x03 << (7<<1));		// max speed PA.7
	
	// Настройка выводов UART1 PC.3 PC.4
	RST_CLK->PER_CLOCK |= 1<<23;	 							// clock of PORTС ON
	PORTC->FUNC &= ~( (0x03 << (3<<1)) | (0x03 << (4<<1)) );
	PORTC->FUNC |= (0x01 << (3<<1)) | (0x01 << (4<<1)); 	// основная функция PC.3 и PC.4
	PORTC->ANALOG |= (1 << 3) | (1 << 4);					// PC.3 PC.4 - цифровой режим
	PORTC->PWR |= (0x03 << (3<<1)) | (0x03 << (4<<1));		// max speed PC.3 PC.4
	PORTC->RXTX &= ~((1 << 3) | (1 << 4));	     			// очищаем выход
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
	// enable TIM4
	RST_CLK->PER_CLOCK |= (1 << 19);
	RST_CLK->UART_CLOCK |= (1 << 26);
	RST_CLK->UART_CLOCK &= ~0x00FF0000; // TIM4_CLK = HCLK
	//RST_CLK->TIM_CLOCK |= (0xff << 16);
	
	TIMER4->CNT = 0;
	TIMER4->PSG = 12 - 1;  // prescaller gets 10 MHz
	TIMER4->ARR = 1000 - 1;	// TIM4 period is 10 KHz  
	TIMER4->CCR1 = 500;
	
	TIMER4->CH1_CNTRL &= ~TIMER_CH_CNTRL_OCCM_MASK;				
	
	//TIMER4->CH1_CNTRL |= (1 << TIMER_CH_CNTRL_OCCM_OFFS);									// 000: REF = 1 if CNT=ARR
	//TIMER4->CH1_CNTRL |= (6 << TIMER_CH_CNTRL_OCCM_OFFS);									// 110: 1, если DIR= 0 (счет вверх), CNT<CCR, иначе 0
	TIMER4->CH1_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_OFFS);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1
	
	TIMER4->CH1_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_MASK | TIMER_CH_CNTRL1_SELOE_MASK);		// настройка прямого выхода канала 1
	TIMER4->CH1_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_OFFS);	    							// на прямой выход канала 1 идет REF 
	TIMER4->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_OFFS);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1
	
	TIMER4->CH1_CNTRL1 &= ~(TIMER_CH_CNTRL1_NSELO_MASK | TIMER_CH_CNTRL1_NSELOE_MASK);		// настройка инверсного выхода канала 1
	TIMER4->CH1_CNTRL1 |= (3 << TIMER_CH_CNTRL1_NSELO_OFFS);	    						// на инверсный выход канала 1 идет REF
	TIMER4->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_NSELOE_OFFS);	    						// инверсный выход канала 1 всегда работает на выход на OE всегда 1	
	
	// setting for dead time generator (DTG)
	//TIMER4->CH1_DTG |= (1 << 4);
	//TIMER4->CH1_DTG |= 15;
	TIMER4->CH1_DTG |= ((0xff&(200)) << 8); 		// delay DTG	
	
	TIMER4->IE |= (0x0f << TIMER_IE_CCR_REF_EVENT_IE_OFFS); 	// прерывание по событию передний фронт на REF
	//TIMER4->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// прерывание по событию  ARR=CNT
	
	TIMER4->CNTRL = TIMER_CNTRL_CNT_EN; 						// start count up
	NVIC_EnableIRQ(TIMER4_IRQn); 								// enable in nvic int from tim4
		
}

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	//TimerConfig();
	uart_init();
	SysTick_Config(SYS_TICKS);
	
		
	
}	

void SysTick_Handler(void)
{
	system_time ++;
}

void TIMER4_Handler(void)
{
	TIMER4->STATUS = 0;
	PORTD->RXTX ^= 0xffff;	
}

