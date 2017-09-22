#include "gdef.h"
#include "dsp.h"
#include "adc_dma.h"
#include "encoder.h"
#include "debug.h"
#include "pwm.h"

int32_t refpos = 0;
int32_t reflinpos = 0;

pi_reg_state dreg;
pi_reg_state qreg;
pi_reg_state sreg;
pi_reg_state preg;

extern void SystemInit(void);

uint32_t system_time = 0;

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
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

	/* конфигурирование системы */
	SystemInit();
	adc_dma_init();
	encoder_init();	
	debug_init();
	
	/* инициализация регуляторов */
	reg_init(&dreg, KI_DQCUR, KP_DQCUR);
	reg_init(&qreg, KI_DQCUR, KP_DQCUR);	
	reg_init(&sreg, 0, KP_SPD);	
	reg_init(&preg, 0, KP_POS);
	
	refpos = 0;
	
	/* цикл начальной инициализации датчиков */
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
		startphase += encoder_read();
	}
	
	dca = dca >> 10;
	dcc = dcc >> 10;
	startlinpos = startlinpos >> 10;
	reflinpos = startlinpos;		
	startphase = startphase >> 10;

	while(1)
	{
		PORTC->RXTX &= ~(1<<5);	
		/* ждем окончания цикла DMA */
		adc_dma_wait();			
		/* данные готовы */
		PORTC->RXTX |= (1<<5);	
		
		/* уставка положения штока */
		i = mfilter( 5*(0xfff&(adc_dma_buffer[0])) );
		reflinpos = ((i+(i>>3))>>3)+700;		
		//DAC->DAC1_DATA = reflinpos;
		/* пересчет в положения в абсолютную фазу */
		refpos = (reflinpos - startlinpos)*49;

		/* получаем данные с датчиков тока */
		ia = (0xfff&(adc_dma_buffer[1])) - dca;
		ic = (0xfff&(adc_dma_buffer[2])) - dcc;
		ib = -ia-ic;
		
		/* получаем данные с линейного датчика положения штока */
		linpos = (0xfff&(adc_dma_buffer[3]));
		//DAC->DAC1_DATA = linpos;
	
		/* получаем значения угла с энкодера */
		code = encoder_read();
		DAC->DAC1_DATA = code;		
		
		tcnt++;
				
		if( (0x7 & tcnt) == 0){			
			/* процесс с частотой 3 кГц */
			/* рассчитываем скорость и положение ротора */
			speed = get_speed(code, &position);		
			
			/* регулятор положения */
			reg_update(&preg, (refpos - position), 0);
			//reg_update(&preg, (reflinpos - linpos), 0);
			/* на выходе регулятора положения имеем уставку скорости */
			refspeed = preg.y>>10;
			
			//refspeed = -1000;
			
			/* регулятор скорости */
			reg_update(&sreg, (refspeed - speed), 0);
			
			/* на выходе регулятора скорости имеем уставку тока q */
			qref = sreg.y>>10;
			
			/* ограничение значения тока */
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

		/* рассчет электрического угла для 4 пар полюсного ротора  */
		phase = code & (1024-1);		
		/* сдвиг фазы ротора для правильного положения */
		phase = 1023&(phase+1002);    	
		
		/* преобразование фазных токов в систему координат ротора */
		abc[0] = ia;
		abc[1] = ib;
		abc[2] = ic;
		abc_to_dq(abc, dq, phase);
		
		/* рассчет ошибок для регуляторов тока */
		ed = 0 - dq[0];
		eq = qref - dq[1];
		
		/* регуляторы токов работают в системе координат ротора */
		reg_update(&dreg, ed , fsat);
		reg_update(&qreg, eq , fsat);			
		/* на выходе имеем напряжения в системе координат ротора */
		dq[0] = dreg.y;
		dq[1] = qreg.y;
		
		/* векторная ШИМ модуляция */
		fsat = svpwm(abc, dq, phase);
		/* синоусоидальная ШИМ модуляция */
		//fsat = sinpwm(abc, dq, phase);
		
		/* обновляем состояние ШИМ контроллера */
		pwm_set(abc);
		
		//DAC->DAC1_DATA = ed + 2048;
		//DAC->DAC1_DATA = phase;
		//DAC->DAC1_DATA = abc[0] + 2048;

	}
}

void TIMER4_Handler(void)
{
	/* каждые 40 мкс ... */
	TIMER4->STATUS = 0;
	system_time ++;
	/* запуск цикла DMA */
	adc_dma_start();
	/* запрос к энкодеру */
	encoder_start();
}
