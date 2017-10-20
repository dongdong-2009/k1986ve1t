#ifndef _ENCODER_H
#define _ENCODER_H

extern uint32_t b2g(uint32_t b);
extern uint32_t g2b(uint32_t g);

static inline void encoder_init(void)
{
	RST_CLK->PER_CLOCK |= 1<<20;	 				//clock of SPI2
	RST_CLK->SSP_CLOCK = (1<<25) | (2<<8); 			// SSP2_CLK = HCLK/4 = 30MHz
	
	SSP2->CR1 = 0;
	SSP2->CPSR = 10; // предделитель 1MHz 
	//SSP2->CR0 = (0x02 << SSP_CR0_SCR_Pos) + (0x00 << SSP_CR0_FRF_Pos) | (11 << SSP_CR0_DSS_Pos) | SSP_CR0_SPO;
	SSP2->CR0 = (0x02 << SSP_CR0_SCR_OFFS) + (0x01 << SSP_CR0_FRF_OFFS) + ((NE-1) << SSP_CR0_DSS_OFFS);
	SSP2->CR1 = SSP_CR1_SSE; // enable ssp
}

static inline void encoder_start(void)
{
	SSP2->DR = 0x555; // start encoder request	
}

static inline int32_t encoder_read(void)
{
	return g2b((MAXENC-1) & (SSP2->DR));
}

#endif
