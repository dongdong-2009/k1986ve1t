#include "gdef.h"
#include "dsp.h"

int32_t refpos = 0;
int32_t reflinpos = 0;

extern void adc_dma_start(void);
extern void adc_dma_wait(void);
extern void SystemInit(void);
extern uint32_t adc_dma_buffer[8];

uint32_t system_time = 0;

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
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

static inline void debug_signal(int32_t s)
{
	DAC->DAC1_DATA = s + 2048;
}	

int main()
{
	uint32_t code;
	int32_t i = 0;	
	int32_t dq[2];	
	int32_t abc[3];	
	uint32_t phase = 0;
	int32_t ia, ib, ic;
	int32_t dca = 0, dcc = 0;
	int32_t ed, eq, es;
	int32_t vd, vq;
	pi_reg_state dreg;
	pi_reg_state qreg;
	pi_reg_state sreg;
	pi_reg_state preg;
	int32_t fsat = 0;
	uint32_t tcnt = 0;
	int32_t speed;
	int32_t refspeed = 1000;
	int32_t qref;
	int32_t position = 0;
	//int32_t refpos = 0;
	int32_t linpos = 0;
	int32_t startlinpos = 0;
	int32_t startphase = 0;

	SystemInit();
	
	// init the regulators
	reg_init(&dreg, KI_DQCUR, KP_DQCUR);
	reg_init(&qreg, KI_DQCUR, KP_DQCUR);	
	reg_init(&sreg, 0, KP_SPD);	
	reg_init(&preg, 0, KP_POS);
	
	refpos = 0;
	
	// do some init actions	
	dca = 0;
	dcc = 0;
	startlinpos = 0;
	startphase = 0;
	for(i=0; i<1024; i++)
	{	
		adc_dma_wait();			
		
		dca += (0xfff&(adc_dma_buffer[1]));
		dcc += (0xfff&(adc_dma_buffer[2]));
		startlinpos += (0xfff&(adc_dma_buffer[3]));
		startphase += g2b((MAXENC-1) & (SSP2->DR));
	}
	
	dca = dca >> 10;
	dcc = dcc >> 10;
	startlinpos = startlinpos >> 10;
	reflinpos = startlinpos;		
	startphase = startphase >> 10;

	while(1)
	{
		PORTC->RXTX &= ~(1<<5);	
		adc_dma_wait();			
		// data is ready now
		PORTC->RXTX |= (1<<5);	
		
		// get the reference analog signal for positoin regulator
		i = mfilter( 5*(0xfff&(adc_dma_buffer[0])) );
		reflinpos = ((i+(i>>3))>>3)+700;		// scale 
		//DAC->DAC1_DATA = reflinpos;
		refpos = (reflinpos - startlinpos)*49;

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
			//update(&preg, (reflinpos - linpos), 0);
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

void TIMER4_Handler(void)
{
	TIMER4->STATUS = 0;
	system_time ++;
	adc_dma_start();
	SSP2->DR = 0x555; // start encoder request	
}
