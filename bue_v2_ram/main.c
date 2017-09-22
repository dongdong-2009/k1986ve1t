#include "opora.h"
#include "gdef.h"

int32_t refpos = 0;
int32_t reflinpos = 0;
int32_t startlinpos = 0;
int32_t startphase = 0;
int32_t linpos = 0;

struct pi_reg_state{
	int32_t ki;
	int32_t kp;
	int32_t a;
	int32_t y;	
};

extern const int32_t cos_tb[1024];

extern void dq_to_abc(int32_t *abc, int32_t *dq, int32_t angle);
extern void abc_to_dq(int32_t *abc, int32_t *dq, int32_t angle);

extern void reg_init(struct pi_reg_state *s, int32_t ki, int32_t kp);
extern void reg_update(struct pi_reg_state *s, int32_t e, int32_t fs);

extern int32_t svpwm(int32_t *abc, int32_t *dq, int32_t phase);
extern int32_t sinpwm(int32_t *abc, int32_t *dq, int32_t phase);
extern int32_t get_speed(int32_t enc, int32_t *pos);
extern int32_t mfilter(int32_t x);

extern void adc_dma_init(void);
extern void adc_dma_start(void);
extern void adc_dma_wait(void);
extern uint32_t adc_dma_buffer[8];

void ClkConfig(void);
void PortConfig(void);
void SystemInit(void);

uint32_t system_time = 0;
uint32_t test_pwm = 500;

int sleep(uint32_t t)
{
	int i;
	for(i = 0; i < t; i++){
		while(!(TIMER4->STATUS & 0x02));
		TIMER4->STATUS = 0;
	}		
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
	//PORTD->ANALOG &= ~( (1<<7) + (1<<10) + (1<<11) );  // PD10 - ADC3, PD11 - ADC4
	
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
	PORTC->OE |= (1<<5)+(1<<6);			/* port is output mode */
	PORTC->ANALOG |= (1<<5)+(1<<6);		/* port is digital mode */
	PORTC->PWR |= (3<<(5<<1))+(3<<(6<<1));			/* max power of port */	
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
/*	
	ADC->ADC1_CFG = ADC1_CFG_Cfg_REG_ADON + 
					(4<<ADC1_CFG_Cfg_REG_CHS_OFFS) +
					ADC1_CFG_Cfg_REG_CLKS;
*/
	 
	// множ преобр
	ADC->ADC1_CFG = 0 ;
	ADC->ADC1_CFG |= ADC1_CFG_Cfg_REG_ADON + ADC1_CFG_Cfg_REG_CLKS +
					 ADC1_CFG_Cfg_REG_CHCH;    // переключение каналов выбранных в регистре CHSEL
					 				
	ADC->ADC1_CHSEL |= (1<<0) + (1<<3) + (1<<4) + (1<<5); // выбор каналов для авт переключения
	ADC->ADC1_STATUS = ADC1_STATUS_ECOIF_IE; // прерывание по окончанию преобразования
	
	//NVIC_EnableIRQ(ADC_IRQn);					
}

void dac_init()
{
	RST_CLK->PER_CLOCK |= (1<<18);
	DAC->CFG |= (1<<2); // dac0 on
}	

void ssi_init()
{
	RST_CLK->PER_CLOCK |= 1<<20;	 				//clock of SPI2
	RST_CLK->SSP_CLOCK = (1<<25) | (2<<8); 			// SSP2_CLK = HCLK/4 = 30MHz
	
	SSP2->CR1 = 0;
	SSP2->CPSR = 10; // предделитель 1MHz 
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
	adc_init();
	dac_init();
	ssi_init();
	adc_dma_init();
}

void timer_wait(void)
{
	while(!(TIMER4->STATUS & 0x02));
	TIMER4->STATUS = 0;
}	

static inline void debug_signal(int32_t s)
{
	DAC->DAC1_DATA = s + 2048;
}	

extern int32_t c_mfilter(int32_t x);
extern void asm_dq_to_abc(int32_t *abc, int32_t *dq, int32_t angle);

__attribute__ ((section(".main_sec")))
int main()
{
	uint32_t code;
	int32_t i = 0, j=0;	
	int32_t dq[2];	
	int32_t abc[3];	
	uint32_t phase = 0;
	int32_t ia, ib, ic;
	int32_t dca = 0, dcc = 0;
	int32_t ed, eq, es;
	int32_t vd, vq;
	struct pi_reg_state dreg;
	struct pi_reg_state qreg;
	struct pi_reg_state sreg;
	struct pi_reg_state preg;
	int32_t fsat = 0;
	uint32_t tcnt = 0;
	int32_t speed;
	int32_t refspeed = 1000;
	int32_t qref;
	int32_t position = 0;
	//int32_t refpos = 0;

	SystemInit();

	// init the regulators
	reg_init(&dreg, 200, 200);
	reg_init(&qreg, 200, 200);	
	reg_init(&sreg, 0, 1000);	
	reg_init(&preg, 0, 1000);
	
	refpos = 0;
	
	// wait for system to be steady
//	sleep(1000);

	while(1){
		
		timer_wait();
		
		//PORTC->RXTX |= (1<<6);
		adc_dma_start();
		adc_dma_wait();		
		//PORTC->RXTX &= ~(1<<6);
				
		//PORTC->RXTX ^= (1<<6);
		DAC->DAC1_DATA = 0xfff&adc_dma_buffer[3];
		
		PORTC->RXTX |= (1<<6);
		c_mfilter(5);
		PORTC->RXTX &= ~(1<<6);
		
		dq[0] = 280<<10;
		dq[1] = 120<<10;
		asm_dq_to_abc(abc, dq, 400);
		dq[0] = 280<<10;
		dq[1] = 120<<10;		
		dq_to_abc(abc, dq, 400);
		i = 0;
	}
	

	// do some init actions	
	dca = 0;
	dcc = 0;
	startlinpos = 0;
	startphase = 0;
	for(i=0; i<1024; i++)
	{
		timer_wait();
		
		adc_dma_start();
		SSP2->DR = 0x555; // start encoder request
		adc_dma_wait();			
		
		dca += (0xfff&(adc_dma_buffer[1]));
		dcc += (0xfff&(adc_dma_buffer[2]));
		startlinpos += (0xfff&(adc_dma_buffer[3]));
		startphase += g2b((MAXENC-1) & (SSP2->DR));
		
		mfilter( 5*(0xfff&(adc_dma_buffer[0])) );		
	}
	
	dca = dca >> 10;
	dcc = dcc >> 10;
	startlinpos = startlinpos >> 10;
	reflinpos = startlinpos;		
	startphase = startphase >> 10;

	while(1)
	{
		timer_wait();		
		
		//i = mfilter(5);
	
		PORTC->RXTX &= ~(1<<6);
		adc_dma_start();	
		SSP2->DR = 0x555; // start encoder request
		adc_dma_wait();			
		// data is ready now		
		PORTC->RXTX |= (1<<6);
		// get the reference analog signal for positoin regulator
		i = mfilter( 5*(0xfff&(adc_dma_buffer[0])) );
		//i = 5*(0xfff&(adc_dma_buffer[0]));
		reflinpos = ((i+(i>>3))>>3)+700;		// scale 
		//DAC->DAC1_DATA = reflinpos;

		// get the currents from ADC	
		ia = (0xfff&(adc_dma_buffer[1])) - dca;
		ic = (0xfff&(adc_dma_buffer[2])) - dcc;
		ib = -ia-ic;
		
		// get the data from linear positon sensor
		linpos = (0xfff&(adc_dma_buffer[3]));
		//DAC->DAC1_DATA = linpos;
	
		// get the data from encoder
		code = g2b((MAXENC-1) & (SSP2->DR));	
		// get the motor electrical angle (x4 mechanical angle)
		phase = code & (1024-1);								
		DAC->DAC1_DATA = code;		
		
		tcnt++;
				
		if( (0x7 & tcnt) == 0){			
			// 3kHz
			speed = get_speed(code, &position);		

			reg_update(&preg, (refpos - position), 0);
			//reg_update(&preg, (reflinpos - linpos), 0);
			refspeed = preg.y>>10;
			
			//refspeed = -1000;
			
			reg_update(&sreg, (refspeed - speed), 0);
			
			qref = sreg.y>>10;
			
			if(qref > MAXQCURR) qref = MAXQCURR;
			if(qref < -MAXQCURR) qref = -MAXQCURR;
			
			//DAC->DAC1_DATA = (speed>>1) + 2048;
			//DAC->DAC1_DATA = ((startphase-position)>>1) + 2048;
			//DAC->DAC1_DATA = qref + 2048;
			//DAC->DAC1_DATA = ((reflinpos - linpos)>>1) + 2048;
			//DAC->DAC1_DATA = linpos;			
			
			refpos = (reflinpos - startlinpos)*49;
			
		}


/*
 		// current regulator debug
		if( (0x7fff&tcnt) == 0){
			if(qref == 0) qref = -500; // 100 is abt 1A
			else qref = 0;
		}

		ed = qref-ib;
		reg_update(&dreg, ed , fsat);
		
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
			
		TIMER4->CCR1 = -vd+512;
		TIMER4->CCR2 = vd+512;
		//TIMER4->CCR1 = phase;
		debug_signal(ia<<1);
		//debug_signal(ed<<2);
*/


		// vector sync motor controller
		phase = 1023&(phase+1002);    // phase offset for correct rotor position
		
		// convert abc currents to dq
		abc[0] = ia;
		abc[1] = ib;
		abc[2] = ic;
		abc_to_dq(abc, dq, phase);
		
		// get the errors
		ed = 0 - dq[0];
		eq = qref - dq[1];
		
		// regulators do its work
		reg_update(&dreg, ed , fsat);
		reg_update(&qreg, eq , fsat);			
		
		// pwm modulation
		dq[0] = dreg.y;
		dq[1] = qreg.y;
		
		fsat = svpwm(abc, dq, phase);
		//fsat = sinpwm(abc, dq, phase);
		
		// set the pwm controller
		TIMER4->CCR1 = (abc[0])+512;
		TIMER4->CCR2 = (abc[1])+512;
		TIMER4->CCR3 = (abc[2])+512;
		
		//DAC->DAC1_DATA = ed + 2048;
		//DAC->DAC1_DATA = phase;
		//DAC->DAC1_DATA = abc[0] + 2048;

	}
}
