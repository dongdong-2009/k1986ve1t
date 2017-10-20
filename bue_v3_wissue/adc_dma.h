#ifndef _ADC_DMA_H
#define _ADC_DMA_H

extern DMA_CTR_STRUCT	dma_ctr_str[32];
extern uint32_t			adc_dma_buffer[8];

extern void adc_dma_init(void);

static inline void adc_dma_start(void)
{
	//int buf = ADC->ADC1_RESULT;	
	ADC->ADC1_CFG |= ADC1_CFG_Cfg_REG_SAMPLE; 	// start ADC
	DMA->CHNL_ENABLE_SET = 1<<30;			//enable channel 30 for ADC			
}

static inline void adc_dma_wait(void)
{
	while( (dma_ctr_str[30].Control & 0x07) );	// waiting for the dma transaction to complete
	ADC->ADC1_CFG &= ~ADC1_CFG_Cfg_REG_SAMPLE;  // stop ADC	
	
	// once again set control struct
	dma_ctr_str[30].Control = (DMA_DST_INC<<30) + (DMA_DST_SZ<<28) + 
							(DMA_SRC_INC<<26) + (DMA_SRC_SZ<<24) + 
							((DMA_TRANS_NUM-1)<<4) + 0x01;	
}

#endif
