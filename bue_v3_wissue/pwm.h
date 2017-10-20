#ifndef _PWM_H
#define _PWM_H

static inline void pwm_set(int32_t *abc)
{
	TIMER4->CCR1 = (abc[0])+512;
	TIMER4->CCR2 = (abc[1])+512;
	TIMER4->CCR3 = (abc[2])+512;
}

#endif
