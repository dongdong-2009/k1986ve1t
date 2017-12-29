#ifndef _GDEF_H
#define _GDEF_H

#define RT_ADDR 8
#define RT_SBADDR 1

struct STR_CONTROL
{
	uint16_t cw;
	int16_t ref1;
	int16_t ref2;
	int16_t ref3;
	uint16_t cs;
};

struct STR_TELEMETRY
{
	uint16_t sw;
	uint16_t tmh;
	uint16_t tml;
	int16_t pos1;
	int16_t pos2;
	int16_t pos3;
	uint16_t cw;
	int16_t ref1;
	int16_t ref2;
	int16_t ref3;
	uint16_t uaux;
	uint16_t upwr;
	uint16_t impr1;
	uint16_t impr2;
	uint16_t impr3;
	uint16_t ipwr;
	uint16_t res[15];
	uint16_t cs;
};

#define SW_PWROK     	(1<<15)
#define SW_CONTRERR	  	(1<<14)
#define SW_CONTRRDY	 	(1<<13)
#define SW_EMULMODE		(1<<12)
#define SW_INTRDY		(1<<6)
#define SW_DRV1RDY		(1<<5)
#define SW_DRV1ERR		(1<<4)
#define SW_DRV2RDY		(1<<3)
#define SW_DRV2ERR		(1<<2)
#define SW_DRV3RDY		(1<<1)
#define SW_DRV3ERR		(1<<0)

#define CW_PWRON 		(1<<15)
#define CW_EMULON 		(1<<12)
#define CW_DRV1ON	 	(1<<5)
#define CW_DRV2ON	 	(1<<3)
#define CW_DRV3ON	 	(1<<1)

#endif
