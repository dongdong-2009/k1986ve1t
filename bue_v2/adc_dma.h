#ifndef _ADC_DMA_H
#define _ADC_DMA_H

#include "gdef.h"

extern void adc_dma_init(void);
extern void adc_dma_start(void);
extern void adc_dma_wait(void);
extern uint32_t adc_dma_buffer[8];

#endif
