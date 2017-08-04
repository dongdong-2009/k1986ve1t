#include "opora.h"

#define CPU_PLL_MULT 15 // PLL_CLK 120 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 120000 // 1ms for 120 MHz
//#define SYS_TICKS 12000000 // 100ms

#define NE 12
#define MAXENC (2<<(NE-1))

#define START_ADC_CH(x) ADC->ADC1_CFG = (0x0<<ADC1_CFG_Delay_Go_OFFS) + ADC1_CFG_Cfg_REG_GO + ADC1_CFG_Cfg_REG_ADON + ((x)<<ADC1_CFG_Cfg_REG_CHS_OFFS) + ADC1_CFG_Cfg_REG_CLKS
#define WAIT_FOR_ADC while(0 == (ADC->ADC1_STATUS & ADC1_STATUS_Flg_REG_EOCIF))

struct pi_reg_state{
	int32_t ki;
	int32_t kp;
	int32_t a;
	int32_t y;	
};

extern void dq_to_abc(int32_t *abc, int32_t *dq, int32_t angle);
extern void abc_to_dq(int32_t *abc, int32_t *dq, int32_t angle);
extern void update(struct pi_reg_state *s, int32_t e, int32_t fs);
extern int32_t svpwm(int32_t *abc, int32_t *dq, int32_t phase);
extern int32_t sinpwm(int32_t *abc, int32_t *dq, int32_t phase);
extern int32_t get_speed(int32_t enc);

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
	RST_CLK->PER_CLOCK |= 1<<24;	 		  //clock of PORTD ON
	PORTD->ANALOG &= ~( (1<<10) + (1<<11) );  // PD10 - ADC3, PD11 - ADC4
	
	// порты для ssp2 
	// SSP_RXD - PD8
	// SSP_SCK - PD9
	//
	PORTD->FUNC &= ~( (0x03<<(8<<1)) + (0x03<<(9<<1)) );
	PORTD->FUNC |= 	(0x01<<(8<<1)) + (0x01<<(9<<1));
	PORTD->ANALOG |= (1<<8) + (1<<9);
	PORTD->PWR |= 	(0x3<<(9<<1));
	PORTD->OE |=  (1<<9);
	PORTD->OE &= ~(1<<8);
	
	// debug out PC5
	RST_CLK->PER_CLOCK|=1<<23;	 	//clock of PORTC ON	
	PORTC->FUNC = 0;  				/* mode is port */
	PORTC->RXTX = 0;	     		/* clear the out */
	PORTC->OE |= (1<<5);			/* port is output mode */
	PORTC->ANALOG |= (1<<5);		/* port is digital mode */
	PORTC->PWR |= (3<<(5<<1));			/* max power of port */	
	
		
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
	TIMER4->PSG = 5 - 1;   // prescaller gets 24 MHz
	TIMER4->ARR = 1024 - 1;	// TIM4 period is 23.4KHz
	TIMER4->CCR1 = 512;
	TIMER4->CCR2 = 512;
	TIMER4->CCR3 = 512;
	
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
	TIMER4->CH1_DTG |= ((0xff&(100)) << 8); 					// delay DTG	
	TIMER4->CH2_DTG |= ((0xff&(100)) << 8); 					// delay DTG	
	TIMER4->CH3_DTG |= ((0xff&(100)) << 8); 					// delay DTG	

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
					(4<<ADC1_CFG_Cfg_REG_CHS_OFFS) +
					ADC1_CFG_Cfg_REG_CLKS;
					
	/*ADC->ADC1_CFG = ADC1_CFG_Cfg_REG_ADON + ADC1_CFG_Cfg_REG_CLKS +
					ADC1_CFG_Cfg_REG_SAMPLE + ADC1_CFG_Cfg_REG_CHCH;
					
	ADC->ADC1_CHSEL |= (1<<3) + (1<<4);*/

}

void dac_init()
{
	RST_CLK->PER_CLOCK |= (1<<18);
	DAC->CFG |= (1<<2); // dac0 on
}	

void ssi_init()
{
	RST_CLK->PER_CLOCK |= 1<<20;	 				//clock of SPI2
	RST_CLK->SSP_CLOCK = (1<<25) | (10<<8); 	// SSP2_CLK = HCLK
	
	SSP2->CR1 = 0;
	SSP2->CPSR = 16; // предделитель
	//SSP2->CR0 = (0x02 << SSP_CR0_SCR_Pos) + (0x00 << SSP_CR0_FRF_Pos) | (11 << SSP_CR0_DSS_Pos) | SSP_CR0_SPO;
	SSP2->CR0 = (0x02 << SSP_CR0_SCR_OFFS) + (0x01 << SSP_CR0_FRF_OFFS) + ((NE-1) << SSP_CR0_DSS_OFFS);
	SSP2->CR1 = SSP_CR1_SSE; // enable ssp
}

uint32_t b2g(uint32_t b)
{
	return b ^ (b >> 1);
}

uint32_t g2b(uint32_t g)
{
	uint32_t b = 0;
	for(b = 0; g; (g = g >> 1)){
		b = b ^ g;
	}
	return b;
}

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	TimerConfig();
	//SysTick_Config(SYS_TICKS);
	adc_init();
	dac_init();
	ssi_init();
	
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

int32_t get_dcA()
{
	int32_t i;
	int32_t a = 0;
	
	for(i = 0; i < 1024; i++){
		START_ADC_CH(3);	
		WAIT_FOR_ADC;
		
		a += 0xfff&(ADC->ADC1_RESULT);
	}
	
	return (a>>10);
}


int32_t get_dcB()
{
	int32_t i;
	int32_t a = 0;
	
	for(i = 0; i < 1024; i++){
		START_ADC_CH(4);	
		WAIT_FOR_ADC;
		
		a += 0xfff&(ADC->ADC1_RESULT);
	}
	
	return (a>>10);
}

void vector_sync_motor_controller(int32_t *abc, int32_t phase)
{
	int32_t dq[2];	
	int32_t ed, eq;	
	struct pi_reg_state dreg;
	struct pi_reg_state qreg;	
	int32_t fsat;
	
	// convert abc currents to dq
	abc_to_dq(abc, dq, phase);
	
	// get the errors
	ed = 0 - dq[0];
	eq = 200 - dq[1];
	
	// regulators do its work
	update(&dreg, ed , fsat);
	update(&qreg, eq , fsat);		
	
	dq[0] = dreg.y;
	dq[1] = qreg.y;
	dq_to_abc(abc, dq, 1023&(phase+250)); 

	TIMER4->CCR1 = abc[2]+512;
	TIMER4->CCR2 = abc[1]+512;
	TIMER4->CCR3 = abc[0]+512;
	
	//DAC->DAC1_DATA = abc[0] + 2048;
}

void wait_timer_ticks(int32_t t)
{
	int i;
	for(i = 0; i < t; i++){
		while(!(TIMER4->STATUS & 0x02));
		TIMER4->STATUS = 0;
	}				
}


__attribute__ ((section(".main_sec")))
int main()
{
	uint32_t code;
	int i = 0;	
	int32_t dq[2];	
	int32_t abc[3];	
	uint32_t phase = 0;
	int32_t ia, ib, ic;
	int32_t dca, dcb;
	int32_t ed, eq, es;
	int32_t vd, vq;
	struct pi_reg_state dreg;
	struct pi_reg_state qreg;
	struct pi_reg_state sreg;
	int32_t fsat = 0;
	uint32_t tcnt = 0;
	int32_t speed;
	int32_t refspeed = 1000;
	int32_t qref;

	SystemInit();

	wait_timer_ticks(1000);

	dca = get_dcA();
	dcb = get_dcB();
	
	dreg.ki = 100;
	dreg.kp = 200;
	dreg.a = 0;
	dreg.y = 0;
	
	qreg.ki = 100;
	qreg.kp = 200;	
	qreg.a = 0;
	qreg.y = 0;	
	
	/*
	sreg.ki = 200;
	sreg.kp = 2000;
	*/
	sreg.ki = 0;
	sreg.kp = 2000;	
	sreg.a = 0;
	sreg.y = 0;		

	while(1)
	{	
		
		PORTC->RXTX |= (1<<5);	
		
		//ADC->ADC1_CFG |= ADC1_CFG_Cfg_REG_GO; 	// start adc conversion
		SSP2->DR = 0x555; 						
		
		// get the currents from ADC	
		START_ADC_CH(3);	
		WAIT_FOR_ADC;
		ia = (0xfff&(ADC->ADC1_RESULT)) - dca;
		START_ADC_CH(4);	
		WAIT_FOR_ADC;
		ic = (0xfff&(ADC->ADC1_RESULT)) - dcb;
		ib = -ia-ic;

		while(!(TIMER4->STATUS & 0x02));
		TIMER4->STATUS = 0;
		
		PORTC->RXTX &= ~(1<<5);							

		// get data from encoder
		code = g2b((MAXENC-1) & (SSP2->DR));	
		//DAC->DAC1_DATA = code;
		tcnt++;

		if( (0x7&tcnt) == 0){			
			// 3kHz
			speed = get_speed(code);		
			es = refspeed- speed;		
			update(&sreg, es, 0);
			
			qref = sreg.y>>10;
			DAC->DAC1_DATA = (speed>>1) + 2048;
		}		
		
		if( (0xffff&tcnt) == 0){					
			//refspeed *= -1;
		}

		// get the motor electrical angle x4 mechanical angle
		phase = code & (1024-1);							
/*
		// simple sync motor controller
		dq[0] = 0;
		dq[1] = 400*1024;
		dq_to_abc(abc, dq, 1023&(phase+250));	
		//svpwm(abc, dq, 1023&(phase+250));
	
		TIMER4->CCR1 = abc[0]+512;
		TIMER4->CCR2 = abc[1]+512;
		TIMER4->CCR3 = abc[2]+512;
		//DAC->DAC1_DATA = (ib<<2) + 2048;
		DAC->DAC1_DATA = abc[0] + 2048;
*/

/*
 		// current regulator debug
		ed = -50-ib;
		update(&dreg, ed , fsat);
		
		vd = dreg.y>>10;
		fsat = 0;
		if(vd > 511){
			fsat = 1;
			vd = 511;
		}		
		
		if(vd < -511){
			fsat = 1;
			vd = -511;
		}				
			
		TIMER4->CCR2 = vd+512;
		//TIMER4->CCR1 = phase;
		//DAC->DAC1_DATA = ia + 2048;
		DAC->DAC1_DATA = (ed<<2) + 2048;
		//DAC->DAC1_DATA = vd + 2048;
		//DAC->DAC1_DATA = (phase-512) + 2048;
*/

		// vector sync motor controller
		phase = 1023&(phase+250);
		
		// convert abc currents to dq
		abc[0] = ia;
		abc[1] = ib;
		abc[2] = ic;
		abc_to_dq(abc, dq, phase);
		
		// get the errors
		ed = 0 - dq[0];
		eq = qref - dq[1];
		
		// regulators do its work
		update(&dreg, ed , fsat);
		update(&qreg, eq , fsat);			
		
		// pwm modulation
		dq[0] = dreg.y;
		dq[1] = qreg.y;

		fsat = svpwm(abc, dq, phase);
		//fsat = sinpwm(abc, dq, phase);
		
		TIMER4->CCR1 = (abc[0])+512;
		TIMER4->CCR2 = (abc[1])+512;
		TIMER4->CCR3 = (abc[2])+512;
		
		//DAC->DAC1_DATA = ed + 2048;
		//DAC->DAC1_DATA = phase;
		//DAC->DAC1_DATA = abc[0] + 2048;

	}
}
