#ifndef _GDEF_H
#define _GDEF_H

#include "opora.h"

#define CPU_PLL_MULT 15 // PLL_CLK 120 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 120000 // 1ms for 120 MHz
//#define SYS_TICKS 12000000 // 100ms

#define KI_DQCUR 200
#define KP_DQCUR 200
#define KP_SPD 200
#define KP_POS 1000

#define MAXQCURR 1000

#define NE 12
#define MAXENC (2<<(NE-1))

#define DMA_TRANS_NUM 4
#define DMA_DST_INC 0x02
#define DMA_DST_SZ	0x02
#define DMA_SRC_INC	0x03
#define DMA_SRC_SZ	0x02

#define MY_PI 512
#define USE_SVPWM
#define abs(a) ((a>0)?a:-a)

typedef struct {
	int32_t ki;
	int32_t kp;
	int32_t a;
	int32_t y;	
} pi_reg_state;


typedef struct {
	uint32_t	SourceEndPointer;
	uint32_t	DestinationEndPointer;
	uint32_t	Control;
	uint32_t	Unused;
} DMA_CTR_STRUCT;

#endif
