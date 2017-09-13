#ifndef _DEBUG_H
#define _DEBUG_H

static inline void debug_init()
{
	RST_CLK->PER_CLOCK |= (1<<18);
	DAC->CFG |= (1<<2); // dac0 on
}	

static inline void debug_signal(int32_t s)
{
	DAC->DAC1_DATA = s + 2048;
}	

#endif
