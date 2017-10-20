#include "opora.h"

#define DMA_TRANS_NUM 4
#define DMA_DST_INC 0x02
#define DMA_DST_SZ	0x02
#define DMA_SRC_INC	0x03
#define DMA_SRC_SZ	0x02

struct DMA_CTR_STRUCT
{
	uint32_t	SourceEndPointer;
	uint32_t	DestinationEndPointer;
	uint32_t	Control;
	uint32_t	Unused;
};

struct DMA_CTR_STRUCT			dma_ctr_str[32]		__attribute__ ((section(".dma_sec")));
uint32_t						adc_dma_buffer[8]	__attribute__ ((section(".dma_sec")));

void adc_dma_init(void)
{

	RST_CLK->PER_CLOCK |= 1<<5;

	DMA->CTRL_BASE_PTR = (int32_t)dma_ctr_str;
	DMA->CHNL_ENABLE_CLR = 0xFFFFFFFF;		//disable all channel
	DMA->CHNL_REQ_MASK_SET = 0xFFFFFFFF;	//disable all request
	DMA->CHNL_PRI_ALT_CLR = 0xFFFFFFFF;		//all channel use primary management structure
	DMA->CHNL_USEBURST_CLR = 1<<30;			//enable dma_sreq[] for ADC
	DMA->CHNL_REQ_MASK_CLR = 1<<30;			//enable dma_sreq[] for ADC
	//DMA->CHNL_ENABLE_SET = 1<<30;			//enable channel 30 for ADC

	DMA->CFG=1;								//DMA enable
	
	// setting DMA control struct in SRAM
	dma_ctr_str[30].SourceEndPointer = (uint32_t)(&(ADC->ADC1_RESULT));			
	dma_ctr_str[30].DestinationEndPointer = (uint32_t)(&adc_dma_buffer[3]);			
	dma_ctr_str[30].Control = (DMA_DST_INC<<30) + (DMA_DST_SZ<<28) + 
							(DMA_SRC_INC<<26) + (DMA_SRC_SZ<<24) + 
							((DMA_TRANS_NUM-1)<<4) + 0x01;	
}

void adc_dma_start(void)
{
	//int buf = ADC->ADC1_RESULT;	
	ADC->ADC1_CFG |= ADC1_CFG_Cfg_REG_SAMPLE; 	// start ADC
	DMA->CHNL_ENABLE_SET = 1<<30;			//enable channel 30 for ADC			
}

void adc_dma_wait(void)
{
	while( (dma_ctr_str[30].Control & 0x07) );	// waiting for the dma transaction to complete
	ADC->ADC1_CFG &= ~ADC1_CFG_Cfg_REG_SAMPLE;  // stop ADC	
	
	// once again set control struct
	dma_ctr_str[30].Control = (DMA_DST_INC<<30) + (DMA_DST_SZ<<28) + 
							(DMA_SRC_INC<<26) + (DMA_SRC_SZ<<24) + 
							((DMA_TRANS_NUM-1)<<4) + 0x01;	
}
