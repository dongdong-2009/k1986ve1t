#include "opora.h"

#define CPU_PLL_MULT 15 // PLL_CLK 120 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 120000 // 1ms for 120 MHz
//#define SYS_TICKS 12000000 // 100ms

void ClkConfig(void);
void PortConfig(void);
void SystemInit(void);

uint32_t system_time = 0;
uint32_t test_pwm = 500;

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

//--- Ports configuration ---
void PortConfig()
{

	// настройка выхода ШИМ PA.6 и PA.7
	RST_CLK->PER_CLOCK|=1<<21;	 		// clock of PORTA ON
	PORTA->FUNC &= ~( 	(0x03 << (6<<1))+(0x03 << (7<<1))+ 
						(0x03 << (8<<1))+(0x03 << (9<<1))+
						(0x03 << (10<<1))+(0x03 << (11<<1)) );

	// альтернативная функция
	PORTA->FUNC |= 	(0x02 << (6<<1))+(0x02 << (7<<1))+
					(0x02 << (8<<1))+(0x02 << (9<<1))+
					(0x02 << (10<<1))+(0x02 << (11<<1))	;
	
	// выход
	PORTA->OE |= (1 << 6)+(1 << 7)+(1 << 8)+(1 << 9)+(1 << 10)+(1 << 11);
	// цифровой режим
	PORTA->ANALOG |= (1 << 6)+(1 << 7)+(1 << 8)+(1 << 9)+(1 << 10)+(1 << 11);
	// max speed
	PORTA->PWR |= 	(0x03 << (6<<1))+(0x03 << (7<<1))+
					(0x03 << (8<<1))+(0x03 << (9<<1))+
					(0x03 << (10<<1))+(0x03 << (11<<1));

	RST_CLK->PER_CLOCK |= 1<<25;	 				//clock of PORTE ON				
	// выход для dac0
//	PORTE->OE |= (1<<1);
	PORTE->ANALOG &= ~(1<<1); // pe1 - dac0 out
	
	// inputs for adc
	RST_CLK->PER_CLOCK |= 1<<24;	 				  //clock of PORTD ON	
	PORTD->ANALOG &= ~( (1<<9) + (1<<10) + (1<<11) ); // ADC2, ADC3, ADC4

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
	TIMER4->PSG = 12 - 1;   // prescaller gets 10 MHz
	TIMER4->ARR = 400 - 1;	// TIM4 period is 10 KHz
	TIMER4->CCR1 = 200;
	TIMER4->CCR2 = 200;
	TIMER4->CCR3 = 200;
	
	// channel 1
	TIMER4->CH1_CNTRL &= ~TIMER_CH_CNTRL_OCCM_MASK;				
	
	//TIMER4->CH1_CNTRL |= (1 << TIMER_CH_CNTRL_OCCM_OFFS);									// 000: REF = 1 if CNT=ARR
	//TIMER4->CH1_CNTRL |= (6 << TIMER_CH_CNTRL_OCCM_OFFS);									// 110: 1, если DIR= 0 (счет вверх), CNT<CCR, иначе 0
	TIMER4->CH1_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_OFFS);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1
	
	TIMER4->CH1_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_MASK | TIMER_CH_CNTRL1_SELOE_MASK);		// настройка прямого выхода канала 1
	TIMER4->CH1_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_OFFS);	    							// на прямой выход канала 1 идет сигнал с DTG
	TIMER4->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_OFFS);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1
	
	TIMER4->CH1_CNTRL1 &= ~(TIMER_CH_CNTRL1_NSELO_MASK | TIMER_CH_CNTRL1_NSELOE_MASK);		// настройка инверсного выхода канала 1
	TIMER4->CH1_CNTRL1 |= (3 << TIMER_CH_CNTRL1_NSELO_OFFS);	    						// на инверсный выход канала 1 идет сигнал с DTG
	TIMER4->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_NSELOE_OFFS);	    						// инверсный выход канала 1 всегда работает на выход на OE всегда 1	

	// channel 2
	TIMER4->CH2_CNTRL &= ~TIMER_CH_CNTRL_OCCM_MASK;				
	
	TIMER4->CH2_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_OFFS);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1
	
	TIMER4->CH2_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_MASK | TIMER_CH_CNTRL1_SELOE_MASK);		// настройка прямого выхода канала 1
	TIMER4->CH2_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_OFFS);	    							// на прямой выход канала 1 идет сигнал с DTG
	TIMER4->CH2_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_OFFS);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1
	
	TIMER4->CH2_CNTRL1 &= ~(TIMER_CH_CNTRL1_NSELO_MASK | TIMER_CH_CNTRL1_NSELOE_MASK);		// настройка инверсного выхода канала 1
	TIMER4->CH2_CNTRL1 |= (3 << TIMER_CH_CNTRL1_NSELO_OFFS);	    						// на инверсный выход канала 1 идет сигнал с DTG
	TIMER4->CH2_CNTRL1 |= (1 << TIMER_CH_CNTRL1_NSELOE_OFFS);	    						// инверсный выход канала 1 всегда работает на выход на OE всегда 1		

	// channel 3
	TIMER4->CH3_CNTRL &= ~TIMER_CH_CNTRL_OCCM_MASK;				
	
	TIMER4->CH3_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_OFFS);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1
	
	TIMER4->CH3_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_MASK | TIMER_CH_CNTRL1_SELOE_MASK);		// настройка прямого выхода канала 1
	TIMER4->CH3_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_OFFS);	    							// на прямой выход канала 1 идет сигнал с DTG
	TIMER4->CH3_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_OFFS);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1
	
	TIMER4->CH3_CNTRL1 &= ~(TIMER_CH_CNTRL1_NSELO_MASK | TIMER_CH_CNTRL1_NSELOE_MASK);		// настройка инверсного выхода канала 1
	TIMER4->CH3_CNTRL1 |= (3 << TIMER_CH_CNTRL1_NSELO_OFFS);	    						// на инверсный выход канала 1 идет сигнал с DTG
	TIMER4->CH3_CNTRL1 |= (1 << TIMER_CH_CNTRL1_NSELOE_OFFS);	    						// инверсный выход канала 1 всегда работает на выход на OE всегда 1		
	
	// setting for dead time generator (DTG)
	//TIMER4->CH1_DTG |= (1 << 4);
	//TIMER4->CH1_DTG |= 15;
	TIMER4->CH1_DTG |= ((0xff&(200)) << 8); 					// delay DTG	
	TIMER4->CH2_DTG |= ((0xff&(200)) << 8); 					// delay DTG	
	TIMER4->CH3_DTG |= ((0xff&(200)) << 8); 					// delay DTG	

	TIMER4->IE |= (0x0f << TIMER_IE_CCR_REF_EVENT_IE_OFFS); 	// прерывание по событию передний фронт на REF
	//TIMER4->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// прерывание по событию  ARR=CNT

	TIMER4->CNTRL = TIMER_CNTRL_CNT_EN; 						// start count up
	//NVIC_EnableIRQ(TIMER4_IRQn); 								// enable in nvic int from tim4		
}

void adc_init()
{
	RST_CLK->PER_CLOCK |= (1<<17);
	RST_CLK->ADC_MCO_CLOCK = (0x02 << 4) + (1 << 13);
	
	ADC->ADC1_CFG = ADC1_CFG_Cfg_REG_ADON + 
					(3<<ADC1_CFG_Cfg_REG_CHS_OFFS) +
					ADC1_CFG_Cfg_REG_CLKS;
}

void dac_init()
{
	RST_CLK->PER_CLOCK |= (1<<18);
	DAC->CFG |= (1<<2); // dac0 on
}	

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	TimerConfig();
	//SysTick_Config(SYS_TICKS);
	adc_init();
	dac_init();
	
	
}
	
/*
void SysTick_Handler(void)
{
	system_time ++;
}

void TIMER4_Handler(void)
{
	TIMER4->STATUS = 0;
	PORTD->RXTX ^= 0xffff;	
}
*/

__attribute__ ((section(".main_sec")))

int main()
{
	uint32_t i = 0x0800;
	
	SystemInit();

	while(1)
	{
		ADC->ADC1_CFG |= ADC1_CFG_Cfg_REG_GO; 	// start adc conversion
		
		while(!(TIMER4->STATUS & 0x02));
		TIMER4->STATUS = 0;
		
		if(ADC->ADC1_STATUS & ADC1_STATUS_Flg_REG_EOCIF)
			DAC->DAC1_DATA = ADC->ADC1_RESULT;
		
	}
}
