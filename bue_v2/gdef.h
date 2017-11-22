#ifndef _GDEF_H
#define _GDEF_H

#define K1

#define CPU_PLL_MULT 15 // PLL_CLK 120 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 120000 // 1ms for 120 MHz
//#define SYS_TICKS 12000000 // 100ms

#define NE 12
#define MAXENC (2<<(NE-1))

#define START_ADC_CH(x) ADC->ADC1_CFG = (0x0<<ADC1_CFG_Delay_Go_OFFS) + ADC1_CFG_Cfg_REG_GO + ADC1_CFG_Cfg_REG_ADON + ((x)<<ADC1_CFG_Cfg_REG_CHS_OFFS) + ADC1_CFG_Cfg_REG_CLKS
#define WAIT_FOR_ADC while(0 == (ADC->ADC1_STATUS & ADC1_STATUS_Flg_REG_EOCIF))

#define KI_DQCUR 200
#define KP_DQCUR 600
#define KI_SPD 0
#define KP_SPD 4000
#define KI_POS 0
#define KP_POS 6000

#define MAXQCURR 2000

#ifdef K1
#define PHASE_MARGIN (512+320) // k1
#define MAXREFLINPOS 3350
#define MINREFLINPOS 650
//#define MINREFLINPOS 740
#endif

#ifdef K3
#define PHASE_MARGIN (250) // k3
#define MAXREFLINPOS 3200
#define MINREFLINPOS 500
#endif

#endif
