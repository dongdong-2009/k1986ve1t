#include "opora.h"

#define DMA_TRANS_NUM 3
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


void adc_init()
{

	RST_CLK->PER_CLOCK |= (1<<17);
	RST_CLK->ADC_MCO_CLOCK = (0x02 << 4) + (1 << 13);
	
/*	RST_CLK->PER_CLOCK |= (1<<17);
	RST_CLK->ADC_MCO_CLOCK = (0x02 << 4) + (1 << 13);
	 
	// множ преобр
	ADC->ADC1_CFG = 0 ;
	ADC->ADC1_CFG |= ADC1_CFG_Cfg_REG_ADON + ADC1_CFG_Cfg_REG_CLKS +
					 ADC1_CFG_Cfg_REG_CHCH;    // переключение каналов выбранных в регистре CHSEL
					 				
	ADC->ADC1_CHSEL |= (1<<4) + (1<<5) + (1<<6); // выбор каналов для авт переключения
	ADC->ADC1_STATUS = ADC1_STATUS_ECOIF_IE; // прерывание по окончанию преобразования
*/	
}

uint32_t adc_update(uint32_t ch)
{
	ch &= 0x07;
	// одиночное преобразование выбранного канала в поле CHS
	ADC->ADC1_CFG = ADC1_CFG_Cfg_REG_ADON + 
					(ch<<ADC1_CFG_Cfg_REG_CHS_OFFS) +
					ADC1_CFG_Cfg_REG_CLKS + ADC1_CFG_Cfg_REG_GO;	
	
	return ADC->ADC1_RESULT;
}

void adc_dma_init(void)
{
	adc_init();

	/*RST_CLK->PER_CLOCK |= 1<<5;

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
	dma_ctr_str[30].DestinationEndPointer = (uint32_t)(&adc_dma_buffer[2]);			
	dma_ctr_str[30].Control = (DMA_DST_INC<<30) + (DMA_DST_SZ<<28) + 
							(DMA_SRC_INC<<26) + (DMA_SRC_SZ<<24) + 
							((DMA_TRANS_NUM-1)<<4) + 0x01;	
							
	NVIC_EnableIRQ(DMA_IRQn);*/
}

void adc_dma_start(void)
{
	
	ADC->ADC1_CFG |= ADC1_CFG_Cfg_REG_GO;
	
	/*int buf = ADC->ADC1_RESULT;	
	ADC->ADC1_CFG = 0 ;
	ADC->ADC1_CFG |= ADC1_CFG_Cfg_REG_ADON + ADC1_CFG_Cfg_REG_CLKS + ADC1_CFG_Cfg_REG_CHCH + ADC1_CFG_Cfg_REG_SAMPLE;

	// set control struct
	dma_ctr_str[30].Control = (DMA_DST_INC<<30) + (DMA_DST_SZ<<28) + 
							(DMA_SRC_INC<<26) + (DMA_SRC_SZ<<24) + 
							((DMA_TRANS_NUM-1)<<4) + 0x01;
							
	DMA->CHNL_ENABLE_SET = 1<<30;			//enable channel 30 for ADC										
	*/
}

/*
void adc_dma_start(void)
{
	//register int buf = MDR_ADC->ADC1_RESULT;

	MDR_ADC->ADC1_CFG = 0;
	MDR_ADC->ADC1_CFG = ADC1_CFG_REG_ADON + ADC1_CFG_REG_CLKS + ADC1_CFG_REG_CHCH + ADC1_CFG_REG_SAMPLE;

	//MDR_ADC->ADC1_CFG |= ADC1_CFG_REG_SAMPLE; 			// start ADC
	
	MDR_DMA->CHNL_ENABLE_SET = 1<<DMA_CH_POS;			// enable channel DMA_CH_POS for ADC			
} 
*/

void adc_dma_wait(void)
{
	while( (dma_ctr_str[30].Control & 0x07) );	// waiting for the dma transaction to complete
	ADC->ADC1_CFG &= ~ADC1_CFG_Cfg_REG_SAMPLE;  // stop ADC	
	
	/*// once again set control struct
	dma_ctr_str[30].Control = (DMA_DST_INC<<30) + (DMA_DST_SZ<<28) + 
							(DMA_SRC_INC<<26) + (DMA_SRC_SZ<<24) + 
							((DMA_TRANS_NUM-1)<<4) + 0x01;*/
}

int adc_dma_check(void)
{
	if( (dma_ctr_str[30].Control & 0x07) ) return 0;	// checking for the dma transaction to complete
	ADC->ADC1_CFG &= ~ADC1_CFG_Cfg_REG_SAMPLE;  // stop ADC	
	
	// once again set control struct
	/*dma_ctr_str[30].Control = (DMA_DST_INC<<30) + (DMA_DST_SZ<<28) + 
							(DMA_SRC_INC<<26) + (DMA_SRC_SZ<<24) + 
							((DMA_TRANS_NUM-1)<<4) + 0x01;*/	
							
	return 1;
}

void DMA_Handler()
{
	ADC->ADC1_CFG = 0;
	
	PORTE->RXTX ^= (1<<0);
}
