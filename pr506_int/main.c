#include "opora.h"
#include "uart.h"
#include "xprintf.h"
#include "gdef.h"

//#define CPU_PLL_MULT 15 // PLL_CLK 120 MHz for 8 MHz ext oscillator
#define CPU_PLL_MULT 12 // PLL_CLK 96 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 120000 // 1ms for 120 MHz
//#define SYS_TICKS 12000000 // 100ms

// defs for mil_std_1533
#define MIL_DIV 48

#define NUM_DW (32&0x1f)

extern void adc_init(void);
extern uint32_t adc_update(uint32_t);

struct STR_TELEMETRY telemetry506_p1;
struct STR_TELEMETRY telemetry506_p2;
struct STR_CONTROL control506;

struct STR_TELEMETRY *pdisp_tm[2] = {0, 0};
int disp_idx = 0;

uint32_t milerrcnt = 0;
uint32_t milfrmcnt = 0;
uint32_t crcerrcnt = 0;

static uint16_t ipwr = 0;
static uint16_t upwr = 0;
static uint16_t u27 = 0;

static uint32_t adc_tbl[8];

//uint16_t array_cw[32]; // массив упр слов

// массив телеметрии
uint16_t array_tm[32] = {	0x1234,0x0000,0x02af,0x03e8,
							0x0000,0x0000,0x0000,0x0000,
							0x0000,0x0000,0x001b,0x001b,
							0x000a,0x0000,0x0000,0x0001,
							0x0000,0x0000,0x0000,0x0000,
							0x0000,0x0000,0x0000,0x0000,
							0x0000,0x0000,0x0000,0x0000,
							0x0000,0x0000,0x0000,0x190d};


/*
uint16_t array_tm[32] = {0x3031, 0x3233, 0x3435, 0x3637, 
						 0x3839, 0x3031, 0x3233, 0x3435, 
						 0x3031, 0x3233, 0x3435, 0x3637, 
						 0x3839, 0x3031, 0x3233, 0x3435,
						 0x3031, 0x3233, 0x3435, 0x3637, 
						 0x3839, 0x3031, 0x3233, 0x3435, 
						 0x3031, 0x3233, 0x3435, 0x3637, 
						 0x3839, 0x3031, 0x3233, 0x0a0d,
						 };
*/

void ClkConfig(void);
void PortConfig(void);
void SystemInit(void);

int Current_Led;
uint32_t cnt;
uint32_t system_time = 0;
uint32_t test_pwm = 500;
uint32_t cwready_flg = 0;
uint32_t tlmready_flg = 0;

uint8_t status_word = 0;

uint16_t get_checksum(uint16_t *p, uint32_t n)
{
	int i;
	uint16_t s = 0;
	for(i = 0; i < n; i++){
		s += *p++;
	}
	
	return (s+1);
}

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}


/*
void update_telemetry_loop(uint32_t t)
{
	struct STR_BUPR_TLM btlm;
	struct STR_TELEMETRY *ptm = *(pdisp_tm+disp_idx);
	int i;
	//for(i = 0; i < 32; i++) ((uint16_t*)ptm)[i] = 0;
	
	uint8_t *pbtlm = (uint8_t*)&btlm;
	
	*pbtlm++ = UART1->DR;
	*pbtlm++ = UART1->DR;
	*pbtlm++ = UART1->DR;
	*pbtlm++ = UART1->DR;
	*pbtlm++ = UART1->DR;
	*pbtlm++ = UART1->DR;
	*pbtlm++ = UART1->DR;
	*pbtlm++ = UART1->DR;	

	ptm->sw = SW_PWROK + SW_CONTRRDY + SW_EMULMODE + SW_INTRDY + SW_DRV1RDY;
	ptm->tmh = 0xffff&(t>>16);
	ptm->tml = 0xffff&t;
	ptm->pos1 = control506.ref1;
	ptm->pos2 = control506.ref1;
	ptm->pos3 = control506.ref1;
	ptm->cw = 0;
	ptm->ref1 = control506.ref1;
	ptm->ref2 = control506.ref1;
	ptm->ref3 = control506.ref1;
	ptm->uaux = 27;
	ptm->upwr = 27;
	ptm->impr1 = 10;
	ptm->impr2 = 0;
	ptm->impr3 = 0;
	ptm->ipwr = 1;	
	ptm->cs = get_checksum((uint16_t*)ptm, 31);
	
	disp_idx = disp_idx^1;				
}
*/

void update_telemetry_loop(uint32_t t)
{
	static struct STR_BUPR_TLM btlm[4];
	struct STR_TELEMETRY *ptm = *(pdisp_tm+disp_idx);
	int i;
	int cidx = 0;
	//for(i = 0; i < 32; i++) ((uint16_t*)ptm)[i] = 0;
	
	i = 0x7 & (TIMER1->STATUS >> 9);
	if(i == 0) return;
	
	cidx = i&3 | ((i>>1)&2) | ((i>>2)&1);
	TIMER1->STATUS = 0;			
	
			
	if(UART1->MIS & UART_MIS_RXMIS)
	{       
		uint8_t *pbtlm = (uint8_t*)&btlm[cidx];
		
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
	}

	if(UART1->MIS & UART_MIS_RTMIS){
		// error timeout
		while(0 == (UART1->FR & UART_FR_RXFE)) {
			char buf = UART1->DR; // empting the fifo
		}
	}	

	if(cidx == 3){
		
		/*if(adc_dma_check()){
			ipwr = adc_dma_buffer[0];
			upwr = adc_dma_buffer[1];
			u27 = adc_dma_buffer[2];
			adc_dma_start();
		}*/
		
		// update telemetry arrray
		ptm->sw = SW_PWROK + SW_CONTRRDY + SW_EMULMODE + SW_INTRDY + SW_DRV1RDY;
		ptm->tmh = 0xffff&(t>>16);
		ptm->tml = 0xffff&t;
		ptm->pos1 = DAC->DAC1_DATA-2048;
		ptm->pos2 = 0; //control506.ref2; //DAC->DAC1_DATA-2048;
		ptm->pos3 = 0; //control506.ref3; //DAC->DAC1_DATA-2048;
		ptm->cw = 0;
		ptm->ref1 = DAC->DAC1_DATA-2048;
		ptm->ref2 = 0; //control506.ref2; //DAC->DAC1_DATA-2048;
		ptm->ref3 = 0; //control506.ref3; //DAC->DAC1_DATA-2048;
		ptm->uaux = u27;
		ptm->upwr = upwr;
		ptm->impr1 = btlm[1].pcur;
		ptm->impr2 = btlm[2].pcur;
		ptm->impr3 = btlm[3].pcur;
		ptm->ipwr = ipwr;	
		ptm->cs = get_checksum((uint16_t*)ptm, 31);
		
		disp_idx = disp_idx^1;		
		
	}
}


void update_telemetry(uint32_t t)
{
	static struct STR_BUPR_TLM btlm[4];
	struct STR_TELEMETRY *ptm = *(pdisp_tm+disp_idx);
	int i;
	int cidx = 0;
	//for(i = 0; i < 32; i++) ((uint16_t*)ptm)[i] = 0;
	
	i = 0x7 & (TIMER1->STATUS >> 9);
	if(i == 0) return;
	
	cidx = i&3 | ((i>>1)&2) | ((i>>2)&1);
	cidx = (4-cidx) & 0x0f;
	TIMER1->STATUS = 0;			
	
/* Слово соcтояния
 * [0] - ошибка привода
 * [1] - готовность привода
 * [2] - индикация режима эмуляции 
 * [3] - индикация включения привода
 */
			
	if(UART1->MIS & UART_MIS_RXMIS)
	{       
		uint8_t *pbtlm = (uint8_t*)&btlm[cidx];
		
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
		*pbtlm++ = UART1->DR;
	}

	if(UART1->MIS & UART_MIS_RTMIS){
		// error timeout
		while(0 == (UART1->FR & UART_FR_RXFE)) {
			char buf = UART1->DR; // empting the fifo
		}
	}	

	if(cidx == 3){
		
		/*if(adc_dma_check()){
			ipwr = adc_dma_buffer[0];
			upwr = ((2+adc_dma_buffer[1])>>2)<<2;
			u27 = adc_dma_buffer[2];
			adc_dma_start();
		}*/
		
		// update telemetry arrray
		//ptm->sw = SW_PWROK + SW_CONTRRDY + SW_EMULMODE + SW_INTRDY + SW_DRV1RDY;
		ptm->sw = ((btlm[1].status & (1<<4))<<2) | ((btlm[1].status & (1<<3))<<12) | 
				  ((btlm[1].status & 0x03)<<4) | ((btlm[2].status & 0x03)<<2) | ((btlm[3].status & 0x03)<<0);
		ptm->tmh = 0xffff&(t>>16);
		ptm->tml = 0xffff&t;
		ptm->pos1 = btlm[1].pos;
		ptm->pos2 = btlm[2].pos;
		ptm->pos3 = btlm[3].pos;
		ptm->cw = 0;
		ptm->ref1 = btlm[1].refpos;
		ptm->ref2 = btlm[2].refpos;
		ptm->ref3 = btlm[3].refpos;
		ptm->uaux = u27;
		ptm->upwr = upwr;
		ptm->impr1 = btlm[1].pcur;
		ptm->impr2 = btlm[2].pcur;
		ptm->impr3 = btlm[3].pcur;
		ptm->ipwr = ipwr;	
		ptm->cs = get_checksum((uint16_t*)ptm, 31);
		
		disp_idx = disp_idx^1;		
		
	}
}

/* Управляющее слово
 * [0] - снять тормоз привода 3
 * [1] - снять тормоз привода 2
 * [2] - снять тормоз привода 1
 * [3] - включить/выключить режим эмуляции работы приводов
 * [4] - включить/выключить привод
 * [5] - 
 * [6] - статус силового . пит. 1 - норм
 * [7] - статус приборного пит. 1 - норм
 */

void send_command(struct STR_CONTROL *pc)
{
	uint8_t bx = 0;
	uint16_t cw = pc->cw;
	uint16_t ref1 = pc->ref1;
	uint16_t ref2 = pc->ref2;
	uint16_t ref3 = pc->ref3;

	uint8_t s = 0;
	(upwr > 2000) && (upwr < 4000) && (s |= (1<<6));
	//(u27 > 2000) && (u27 < 4000) && (s |= (1<<7));
	
	bx ^= UART1->DR = ref1 & 0xff;
	bx ^= UART1->DR = (ref1>>8) & 0xff;
	bx ^= UART1->DR = ref2 & 0xff;
	bx ^= UART1->DR = (ref2>>8) & 0xff;	
	bx ^= UART1->DR = ref3 & 0xff;
	bx ^= UART1->DR = (ref3>>8) & 0xff;	
	bx ^= UART1->DR = s | ((cw>>1)&0x0001) | ((cw>>2)&0x0002) | 
					  ((cw>>3)&0x0004) | ((cw>>9)&0x0008) | ((cw>>11)&0x0010);
	UART1->DR = bx;
}

void update_status()
{
	ipwr = adc_tbl[4];
	upwr = adc_tbl[5] + (adc_tbl[5]>>2);
	u27 = adc_tbl[6] + (adc_tbl[6]>>2);

	PORTF->RXTX = 0x1f & (upwr >> 7);
}

int main()
{
	char ch;
	char buf[] = "hello world\r\n";
	char inbuf[128];
	SystemInit();
	Current_Led=0;
	int i = 0;
	
	//xdev_out(uart_putch);
	//xprintf("hello\r\n");
	
	cnt = 0;
	
	pdisp_tm[0] = &telemetry506_p1;
	pdisp_tm[1] = &telemetry506_p2;
	disp_idx = 0;
	
	while(1)
	{
		if(cwready_flg){
			int val = (control506.ref1 & 0x8000 ? control506.ref1-65536 : control506.ref1);
			//xprintf("s=%d\r\n", val);
			DAC->DAC1_DATA = val+2048;
			send_command(&control506);		
			cwready_flg = 0;
		}
		
		//update_telemetry_loop(system_time);
		update_telemetry(system_time);
		update_status();

	}
}

//--- Ports configuration ---
void PortConfig()
{
	/*RST_CLK->PER_CLOCK|=1<<24;	 				//clock of PORTD ON
	
	PORTD->FUNC = 0x00000000;  		// функция - порт
	PORTD->RXTX = 0x0000;	     	// очищаем выход
	PORTD->OE = 0x7F80;				// порт на выход
	PORTD->ANALOG = 0x7F80;			// port is digital mode
	PORTD->PWR = 0x3FFFC000;		// max power of port
	*/
	
	// inputs for adc portd
	RST_CLK->PER_CLOCK |= 1<<24;	 		  //clock of PORTD ON
	PORTD->ANALOG &= ~( (1<<11) + (1<<12) + (1<<13) );  // PD11 - ADC4, PD12 - ADC5, PD13 - ADC6	
	
	// Setting for mil-std-1533 1 pins
	RST_CLK->PER_CLOCK |= 1<<23;	 							// clock of PORTС on
	RST_CLK->PER_CLOCK |= 1<<24;	 							// clock of PORTD on
	// PC13...PC15 PD0...PD6 порты первого мкио контроллера
	// PC13 - PRMA+	
	// PC14 - PRMA-
	// PC15 - PRMB+
	PORTC->FUNC &= ~( (3 <<(13<<1)) | (3 <<(14<<1)) | (3 <<(15<<1)) );
	PORTC->FUNC |= (1 <<(13<<1)) | (1 <<(14<<1)) | (1 <<(15<<1));
	PORTC->ANALOG |= (1 << 13) | (1 << 14) | (1 << 15);				// digital mode
	PORTC->PWR |= (3 <<(13<<1)) | (3 <<(14<<1)) | (3 <<(15<<1));	// max speed
	// PD0 - PRMB-
	// PD1 - PRDA+
	// PD2 - PRDA-
	// PD3 - PRDB+
	// PD4 - PRDB-
	// PD5 - PRD_PRM_A
	// PD6 - PRD_PRM_B
	PORTD->FUNC &= ~( (3 <<(0<<1)) | (3 <<(1<<1)) | (3 <<(2<<1)) |
					  (3 <<(3<<1)) | (3 <<(4<<1)) | (3 <<(5<<1)) | (3 <<(6<<1)) );
	PORTD->FUNC |= 	( (1 <<(0<<1)) | (1 <<(1<<1)) | (1 <<(2<<1)) |
					  (1 <<(3<<1)) | (1 <<(4<<1)) | (1 <<(5<<1)) | (1 <<(6<<1)) );
	PORTD->ANALOG |= (1 << 0) | (1 << 1) | (1 << 2) | (1 << 3) | (1 << 4) | (1 << 5) | (1 << 6); // digital mode
	PORTD->PWR |= ( (3 <<(0<<1)) | (3 <<(1<<1)) | (3 <<(2<<1)) |
					(3 <<(3<<1)) | (3 <<(4<<1)) | (3 <<(5<<1)) | (3 <<(6<<1)) );				// max speed
					
	// выход для dac0
	RST_CLK->PER_CLOCK |= 1<<25;	 				//clock of PORTE ON					
	PORTE->ANALOG &= ~(1<<1); 	// pe1 - dac0 out	

	PORTE->ANALOG |= 1<<3; 		// pe3 - TMR1_CH1 out
	PORTE->FUNC &= ~(3 <<(3<<1));  // цифровой порт
	PORTE->FUNC |= (1 << (3<<1));  // основная функция - TMR1_CH1	
	PORTE->PWR |= (0x03 << (3<<1));		// max speed pe.3
	PORTE->OE |= (1 << 3);				// pe.3 - выход
	
	//TP - pe0
	PORTE->ANALOG |= 1<<0; 			// 
	PORTE->FUNC &= ~(3 <<(0<<1));  	// цифровой порт
	PORTE->PWR |= (0x03 << (0<<1));	// max speed pe.0
	PORTE->OE |= (1 << 0);			// pe.0 - выход
	PORTE->RXTX |= (1 << 0);
	
	// Настройка выводов UART1 PC.3 PC.4
	RST_CLK->PER_CLOCK |= 1<<23;	 							// clock of PORTС ON
	PORTC->FUNC &= ~( (0x03 << (3<<1)) | (0x03 << (4<<1)) );
	PORTC->FUNC |= (0x01 << (3<<1)) | (0x01 << (4<<1)); 	// основная функция PC.3 и PC.4
	PORTC->ANALOG |= (1 << 3) | (1 << 4);					// PC.3 PC.4 - цифровой режим
	PORTC->PWR |= (0x03 << (3<<1)) | (0x03 << (4<<1));		// max speed PC.3 PC.4
	PORTC->RXTX &= ~((1 << 3) | (1 << 4));	     			// очищаем выход	
	PORTC->PULL |= 1<<(4+16); //pc4 - pull up
	
	// portF
	RST_CLK->PER_CLOCK |= 1<<29;
	PORTF->ANALOG = 0x1f;
	PORTF->FUNC = 0;  				// цифровой порт
	PORTF->PWR = 0x3ff;		// max speed
	PORTF->OE = 0x1f;				// pf выход
	PORTF->RXTX = 0;			
	
}

void dac_init()
{
	RST_CLK->PER_CLOCK |= (1<<18);
	DAC->CFG |= (1<<2); // dac0 on
}	

void ClkConfig(void)
{
	RST_CLK->HS_CONTROL |= 0x00000001; 					// HSE power on, in oscillator mode
	while(0 == (RST_CLK->CLOCK_STATUS & 0x00000004));	// wait for HSE ready
	
	RST_CLK->CPU_CLOCK |= 0x00000002;					// source for CPU_C1 is HSE
	//RST_CLK->CPU_CLOCK |= 0x00000003;					// source for CPU_C1 is HSE/2
	// setup PLL CPU
	RST_CLK->PLL_CONTROL = RST_CLK_PLL_CONTROL_PLL_CPU_ON |
						   ((CPU_PLL_MULT-1) << RST_CLK_PLL_CONTROL_PLL_CPU_MUL_OFFS);
	while(0 == (RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_PLL_CPU_RDY));	// wait for PLL CPU ready
	
	// flash delay
	EEPROM->CMD |= (EEPROM_DEL << EEPROM_CMD_Delay_OFFS);
						   						   
	RST_CLK->CPU_CLOCK |= (1 << RST_CLK_CPU_CLOCK_HCLK_SEL_OFFS);	// source for HCLK is CPU_C3
	RST_CLK->CPU_CLOCK |= (1 << RST_CLK_CPU_CLOCK_CPU_C2_SEL_OFFS);	// source for CPU_C2 is PLLCPUo	
}

void TimerConfig(void)
{
	// enable TIM1
	RST_CLK->PER_CLOCK |= (1 << 14);
	RST_CLK->TIM_CLOCK |= (1 << 24);
	RST_CLK->TIM_CLOCK &= ~(0xff<<0); // TIM1_CLK = HCLK
	
	TIMER1->CNT = 0;
	TIMER1->PSG = 96 - 1;  // prescaller
	TIMER1->ARR = 1000 - 1;	// TIM1 period is 1ms
	TIMER1->CCR1 = 400;
	TIMER1->CCR2 = 700;
	TIMER1->CCR3 = 990;

	TIMER1->CH1_CNTRL &= ~TIMER_CH_CNTRL_OCCM_MASK;
	TIMER1->CH1_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_OFFS);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1	
	TIMER1->CH1_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_MASK | TIMER_CH_CNTRL1_SELOE_MASK);		// настройка прямого выхода канала 1
	TIMER1->CH1_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_OFFS);	    							// на прямой выход канала 1 идет REF 
	TIMER1->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_OFFS);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1	
	
	TIMER1->CH2_CNTRL &= ~TIMER_CH_CNTRL_OCCM_MASK;
	TIMER1->CH2_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_OFFS);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1	
	TIMER1->CH2_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_MASK | TIMER_CH_CNTRL1_SELOE_MASK);		// настройка прямого выхода канала 1
	TIMER1->CH2_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_OFFS);	    							// на прямой выход канала 1 идет REF 
	TIMER1->CH2_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_OFFS);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1	
	
	TIMER1->CH3_CNTRL &= ~TIMER_CH_CNTRL_OCCM_MASK;
	TIMER1->CH3_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_OFFS);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1	
	TIMER1->CH3_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_MASK | TIMER_CH_CNTRL1_SELOE_MASK);		// настройка прямого выхода канала 1
	TIMER1->CH3_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_OFFS);	    							// на прямой выход канала 1 идет REF 
	TIMER1->CH3_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_OFFS);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1			
	
	TIMER1->IE |= 0x07 << TIMER_IE_CCR_REF_EVENT_IE_OFFS;
	
	TIMER1->CNTRL = TIMER_CNTRL_CNT_EN; 						// start count up
	
	// enable TIM4
	RST_CLK->PER_CLOCK |= (1 << 19);
	RST_CLK->UART_CLOCK |= (1 << 26);
	RST_CLK->UART_CLOCK &= ~0x00FF0000; // TIM4_CLK = HCLK
	//RST_CLK->TIM_CLOCK |= (0xff << 16);
	
	TIMER4->CNT = 0;
	//TIMER4->PSG = 36*2 - 1;  // prescaller
	TIMER4->PSG = 96 - 1;  // prescaller
	TIMER4->ARR = 1000 - 1;	// TIM4 period
	
	TIMER4->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// прерывание по событию  ARR=CNT
	
	TIMER4->CNTRL = TIMER_CNTRL_CNT_EN; 						// start count up
	NVIC_EnableIRQ(TIMER4_IRQn); 								// enable in nvic int from tim4
		
}

void mil_std_1533_init_rt(void)
{
	int i;
	uint32_t *pw = (uint32_t*)(MIL_STD_15531_BASE+0x80);
	
	RST_CLK->PER_CLOCK |= (1 << 9);								// clock mil_1533 on
	RST_CLK->ETH_CLOCK |= (1 << 25) + (0x01 << 8);				// clock mil_1533 enable, mil_clk = hclk/2
	
	MIL_STD_15531->CONTROL = MIL_STD_1553_CONTROL_MR;
	//MIL_STD_15531->CONTROL = MIL_STD_1553_CONTROL_TRA | MIL_STD_1553_CONTROL_BCMODE | (MIL_DIV<<11); // КШ
	MIL_STD_15531->CONTROL = MIL_STD_1553_CONTROL_TRA | MIL_STD_1553_CONTROL_TRB | 
							 MIL_STD_1553_CONTROL_RTMODE | (RT_ADDR<<6) | (MIL_DIV<<11); // ОУ
	MIL_STD_15531->INTEN |= MIL_STD_1553_INTEN_ERRIE; // errors int enable
	MIL_STD_15531->INTEN |= MIL_STD_1553_INTEN_VALMESSIE | MIL_STD_1553_INTEN_RFLAGNIE; //
	NVIC_EnableIRQ(MIL_STD_1553B1_IRQn);

	MIL_STD_15531->StatusWord1 = (RT_ADDR<<11);
	//MIL_STD_15531->CommandWord1 = 0;
	//MIL_STD_15531->CommandWord1 |= (RT_ADDR<<11) | (1<<10) | (0x1f<<5) | 2;	// запрос ОС
	//MIL_STD_15531->CommandWord1 |= (RT_ADDR<<11) | (1<<10) | (RT_SBADDR<<5) | NUM_DW;	// запрос NUM_DW слов из подадреса RT_SBADDR ОУ RT_ADDR
	//MIL_STD_15531->CommandWord1 |= (RT_ADDR<<11) | (0<<10) | (RT_SBADDR<<5) | NUM_DW;	// запись NUM_DW слов в подадрес RT_SBADDR ОУ RT_ADDR

	for(i = 0; i < 32; i++){
		*pw++ = (uint16_t)((i&0xf)+0x30);
	}

}

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	TimerConfig();
	uart_init();
	//SysTick_Config(SYS_TICKS);
	mil_std_1533_init_rt();
	dac_init();				
	
	RST_CLK->PER_CLOCK |= 1<<8 | 1<<20 | 1<<31; 
	SSP1->DMACR=0;
	SSP2->DMACR=0;
	SSP3->DMACR=0;
	RST_CLK->PER_CLOCK &= ~ (1<<8 | 1<<20 | 1<<31); 
	
	adc_init();
}	

void SysTick_Handler(void)
{
	system_time ++;
}

void TIMER4_Handler(void)
{
	static int ch = 0;
	TIMER4->STATUS = 0;	
	system_time ++;
	uint32_t buf;
	
	//update_telemetry(system_time, *(pdisp_tm+disp_idx));
	//disp_idx = disp_idx^1;
	
	tlmready_flg = 1;
	//PORTE->RXTX ^= (1 << 0);
	buf = adc_update(ch=(ch+1)&0x07);
	
	adc_tbl[0x07 & (buf>>16)] = 0xfff & buf;
}

extern void mil_cpy(uint16_t *pt);

void MIL_STD_1553B1_Handler(void)
{
	int i;
	uint32_t *pw = (uint32_t*)(MIL_STD_15531_BASE+RT_SBADDR*0x80);

	//PORTE->RXTX ^= (1 << 0);
	
	//PORTD->RXTX |= 0xffff;

	if(MIL_STD_15531->STATUS & MIL_STD_1553_STATUS_RFLAGN){
		// получили КС от КШ
		//if(MIL_STD_15531->CommandWord1 & (1<<10)){
		if(MIL_STD_15531->MSG == 0x402){
			// КШ запрашивает данные телеметрии
			
			//PORTE->RXTX ^= (1 << 0);
			
			uint16_t *pt = (uint16_t *)*(pdisp_tm+(disp_idx^1));
			//uint16_t *pt = array_tm;
			/*for(i = 0; i < 32; i++){
				//*pw++ = array_tm[i];
				*pw++ = *pt++;
			}*/			
			
			//mil_cpy(pt);

			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;
			*pw++ = *pt++;

			//PORTD->RXTX &= ~0xffff;
		}
		//xprintf("%x\n", MIL_STD_15531->MSG);
	}	

	if(MIL_STD_15531->STATUS & MIL_STD_1553_STATUS_VALMESS){
		// произошло успешное окончание транзакции
		milfrmcnt++;
		
		//if(MIL_STD_15531->CommandWord1 & (1<<10))
		if(MIL_STD_15531->MSG == 0x402)
		{
			//PORTE->RXTX ^= (1 << 0);
			// закончили передавать запрошенную телеметрию к КШ
			/*uint16_t *pt = (uint16_t *)*(pdisp_tm+(disp_idx^1));
			for(i = 0; i < 32; i++){
				xprintf("%x:", *pt++);
			}
			xprintf("\r\n");
			*/
		}
		else if(MIL_STD_15531->MSG == 0x1)
		{
			uint32_t nw = MIL_STD_15531->CommandWord1 & 0x1f;
			uint16_t cs = 0;
			uint16_t *pcw = (uint16_t*)&control506;
			
			//PORTE->RXTX ^= (1 << 0);
			
			// получили управляющий массив от КШ
			if(cwready_flg == 0){
				if(nw <= 32){
					for(i = 0; i < nw; i++){
						pcw[i] = *pw++;
					}
					cs = get_checksum(pcw, nw-1);
					cwready_flg = (control506.cs == cs);
					
					//if(control506.cs != cs)
						//PORTE->RXTX ^= (1 << 0);
				}
				
				//uart_send((uint8_t*)array_cw, nw*2);
				//int val = (array_cw[1]&0x8000?array_cw[1]-65536:array_cw[1]);
				//xprintf("%x:%x:%x:%x:%x\r\n", array_cw[0], array_cw[1], array_cw[2], array_cw[3], array_cw[4]);
				//DAC->DAC1_DATA = val+2048;
			}
		}
	}
	
	uint32_t errf;
	
	if(MIL_STD_15531->STATUS & MIL_STD_1553_STATUS_ERR){
		// транзакция завершилась с ошибкой
		/*errf = MIL_STD_15531->ERROR;
		PORTE->RXTX ^= (1 << 0);
		milerrcnt++;*/
	}
	
}
