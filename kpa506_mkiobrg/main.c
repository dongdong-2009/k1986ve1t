#include "opora.h"
#include "uart.h"
#include "xprintf.h"
#include "gdef.h"

//#define CPU_PLL_MULT 15 	// PLL_CLK 120 MHz for 8 MHz ext oscillator
#define CPU_PLL_MULT 12 	// PLL_CLK 96 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 120000 // 1ms for 120 MHz
//#define SYS_TICKS 12000000 // 100ms

// defs for mil_std_1533
#define MIL_DIV 48
#define RT_ADDR 8
#define RT_SBADDR 1
#define NUM_DW 5
#define NUM_DW_TM 32

uint16_t array_tm2[NUM_DW_TM]; // массив телеметрии
uint16_t array_test[33]; // массив телеметрии

uint32_t milerrcnt = 0;
uint32_t milfrmcnt = 0;
uint32_t crcerrcnt = 0;

uint16_t tttt[] = {	0x1234,0x0000,0x02af,0x03e8,
					0x0000,0x0000,0x0000,0x0000,
					0x0000,0x0000,0x001b,0x001b,
					0x000a,0x0000,0x0000,0x0001,
					0x0000,0x0000,0x0000,0x0000,
					0x0000,0x0000,0x0000,0x0000,
					0x0000,0x0000,0x0000,0x0000,
					0x0000,0x0000,0x0000,0x190d,0x55aa};

void ClkConfig(void);
void PortConfig(void);
void SystemInit(void);

uint32_t system_time = 0;
uint32_t marker_flg = 0;
uint32_t tlm_flg = 0;
uint8_t  marker_seq[]={0xaa, 0x55};

void mil_null(void);
void (*proc_mil)(void) = mil_null;

void mil_null(void)
{
	return;
}

void mil_2pc(void)
{
	uint32_t *pw = (uint32_t*)(MIL_STD_15531_BASE+0x80);
	//uint16_t *pw = (uint16_t*)(tttt);
	int i;
	
	if(tlm_flg) return;
	
	for(i = 0; i < NUM_DW_TM; i++){
		array_tm2[i] = *pw++;
	}
	tlm_flg = 32;
	//uart_send((uint8_t*)array_tm2, NUM_DW_TM*2);
	
	proc_mil = mil_null;
	
	//PORTE->RXTX ^= (1 << 6);
}

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

uint16_t get_checksum(uint16_t *p, uint32_t n)
{
	int i;
	uint32_t s = 0;
	for(i = 0; i < n; i++){
		s += *p++;
	}	
	return 0xffff & (s+1);
}

void test_telem(uint32_t t)
{
	array_test[0] = 0x1234;
	array_test[1] = 0xffff&(t>>16);
	array_test[2] = 0xffff&t;
	array_test[3] = 1000;
	array_test[4] = 0;
	array_test[5] = 0;
	array_test[6] = 0;
	array_test[7] = 0;
	array_test[8] = 0;
	array_test[9] = 0;
	array_test[10] = 27;
	array_test[11] = 27;
	array_test[12] = 10;
	array_test[13] = 0;
	array_test[14] = 0;
	array_test[15] = 1;
	array_test[31] = get_checksum((uint16_t*)array_test, 31);
}

uint16_t swpb(uint16_t val)
{
	return (val << 8) + (0x00ff & (val >> 8));
}

void test_cw(uint16_t *cw)
{
	uint16_t cx = (1<<5)+(0<<3)+(0<<1);
	uint16_t val1 = 0x1234;
	uint16_t val2 = 0x1234;
	uint16_t val3 = 0x1234;
	uint16_t cs = cx+val1+val2+val3+1;
		
	cw[0] = swpb(cx);
	cw[1] = swpb(val1);
	cw[2] = swpb(val2);
	cw[3] = swpb(val3);
	cw[4] = swpb(cs);
	cw[5] = 0x55aa;
}

int main()
{
	uint8_t ch;
	uint8_t buf[128];	
	int i = 0;
	int ib = 0;
	uint8_t bc;
	uint8_t bp;
	uint16_t cw[6];
	uint32_t cwi = 0;
	
	SystemInit();	
	xdev_out(uart_putch);
	
	//xprintf("hello\r\n");
/*
	uint32_t t =0;	
	while(1){
		
		if(tlm_flg){
			test_telem(t++);
			uart_send((uint8_t*)array_test, NUM_DW_TM*2);
			uart_send(marker_seq, 2);
			tlm_flg = 0;			
			
		}					
		
	}
*/	

	test_cw(cw);

	while(1)
	{
		if(marker_flg == 0){
		
			/*bc = ((uint8_t*)cw)[cwi];
			cwi = (cwi >= 11)?cwi=0:cwi+1;*/
			if(uart_read(&bc, 1))
			{
				if((bc==0x55) && (bp==0xaa)){
					int is = (ib-(NUM_DW*2+1) )&127;
					uint32_t *pw = (uint32_t*)(MIL_STD_15531_BASE+0x80);
					
					for(i = 0; i < NUM_DW; i++){
						uint8_t bh = buf[is]; is = (is+1)&127;
						uint8_t bl = buf[is]; is = (is+1)&127;
						*pw++ = bl+(bh<<8);
					}
					marker_flg = 2;
					//PORTE->RXTX ^= (1 << 6);
				 }
				bp = bc;
				buf[ib] = bc;
				ib = (ib+1)&127;
				
				//int bsz = uart_bsz();				
				//if(bsz > BUF_TH_DOWN)	PORTE->OE &= ~(1 << 7); 				
				//else if(bsz < BUF_TH_UP) PORTE->OE |= (1 << 7); 
				//xprintf("%d\n", bsz);
			}
		}
		
		if(tlm_flg){
			uint8_t ss[] = {0,0};

			uart_send((uint8_t*)array_tm2, NUM_DW_TM*2);
			//uart_send((uint8_t*)tttt, NUM_DW_TM*2);
			uart_send(ss, 2);			
			uart_send(marker_seq, 2);
			uart_send(marker_seq, 2);
			tlm_flg = 0;
			if(array_tm2[31] != get_checksum(array_tm2, 31)) crcerrcnt ++;
		}		
	}
}

//--- Ports configuration ---
void PortConfig()
{
	// Настройка выводов UART2 PD.13 PD.14
	RST_CLK->PER_CLOCK|=1<<24;	 							//clock of PORTD ON
	PORTD->FUNC &= ~( (0x03 << (13<<1)) | (0x03 << (14<<1)) );
	PORTD->FUNC |= (0x01 << (13<<1)) | (0x01 << (14<<1)); 	// основная функция 
	PORTD->ANALOG |= (1 << 13) | (1 << 14);					// цифровой режим
	PORTD->PWR |= (0x03 << (13<<1)) | (0x03 << (14<<1));		// max speed
	PORTD->RXTX &= ~((1 << 13) | (1 << 14));	     			// очищаем выход
	
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
					
	// KT1 PD.7
	PORTD->ANALOG |= (1 << 7); 
	PORTD->OE |= (1 << 7); 
	PORTD->FUNC &= ~(0x03 << (7<<1));
	PORTD->PWR |= (0x03 << (7<<1));
	PORTD->RXTX &= ~(1 << 7);
	
	// KT20 - PE.6 
	// KT21 - PE.7 - UART2_CTS
	// RS485_1_TR - PE11
	RST_CLK->PER_CLOCK |= 1<<25;	 				//clock of PORTE ON
	PORTE->ANALOG |= (1 << 7) + (1 << 11) + (1 << 6);
	PORTE->OE |= (1 << 7) + (1 << 11) + (1 << 6);
	//PORTE->OE &= ~(1 << 7); 
	PORTE->FUNC &= ~(0x03 << (7<<1));
	PORTE->PWR |= (0x03 << (7<<1)) + (0x03 << (11<<1)) + (0x03 << (6<<1));
	PORTE->RXTX &= ~(1 << 7);
	//PORTE->RXTX |= (1 << 7);
	PORTE->RXTX &= ~(1 << 11);  // RS485_1_TR - 0
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
	// enable TIM4
	RST_CLK->PER_CLOCK |= (1 << 19);
	RST_CLK->UART_CLOCK |= (1 << 26);
	RST_CLK->UART_CLOCK &= ~0x00FF0000; // TIM4_CLK = HCLK
	//RST_CLK->TIM_CLOCK |= (0xff << 16);
	
	TIMER4->CNT = 0;
	TIMER4->PSG = 96 - 1;  // prescaller gets 1 MHz
	TIMER4->ARR = 2500 - 1;	// TIM4 period is 400 Hz
	TIMER4->CCR1 = 2000;
	
	TIMER4->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// прерывание по событию  ARR=CNT
	
	TIMER4->CNTRL = TIMER_CNTRL_CNT_EN; 						// start count up
	NVIC_EnableIRQ(TIMER4_IRQn); 								// enable in nvic int from tim4
		
}

void mil_std_1533_init_bc(void)
{
	int i;
	uint32_t *pw = (uint32_t*)(MIL_STD_15531_BASE+0x80);
	
	RST_CLK->PER_CLOCK |= (1 << 9);								// clock mil_1533 on
	RST_CLK->ETH_CLOCK |= (1 << 25) + (0x01 << 8);				// clock mil_1533 enable, mil_clk = hclk/2
	
	MIL_STD_15531->CONTROL = MIL_STD_1553_CONTROL_MR;
	MIL_STD_15531->CONTROL = MIL_STD_1553_CONTROL_TRA | MIL_STD_1553_CONTROL_BCMODE | (0 << 21) |
								(MIL_DIV<<11);
	MIL_STD_15531->INTEN |= MIL_STD_1553_INTEN_ERRIE; // errors int enable
	MIL_STD_15531->INTEN |= MIL_STD_1553_INTEN_VALMESSIE; // trans is OK int enable
	NVIC_EnableIRQ(MIL_STD_1553B1_IRQn);

	MIL_STD_15531->CommandWord1 = 0;
	//MIL_STD_15531->CommandWord1 |= (RT_ADDR<<11) | (1<<10) | (0x1f<<5) | 2;	// запрос ОС
	//MIL_STD_15531->CommandWord1 |= (RT_ADDR<<11) | (1<<10) | (RT_SBADDR<<5) | NUM_DW;	// запрос NUM_DW слов из подадреса RT_SBADDR ОУ RT_ADDR
	//MIL_STD_15531->CommandWord1 |= (RT_ADDR<<11) | (0<<10) | (RT_SBADDR<<5) | NUM_DW;	// запись NUM_DW слов в подадрес RT_SBADDR ОУ RT_ADDR

	for(i = 0; i < 32; i++){
		*pw++ = (uint16_t)i;
	}

}

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	TimerConfig();
	uart_init();
	mil_std_1533_init_bc();
	//SysTick_Config(SYS_TICKS);				
}	

void SysTick_Handler(void)
{
	system_time ++;
}

void TIMER4_Handler(void)
{
	TIMER4->STATUS = 0;
	PORTD->RXTX ^= (1 << 7);
	
	/*tlm_flg = 1;	
	return;*/

	switch (marker_flg){
		case 2:
			marker_flg--;
			MIL_STD_15531->CommandWord1 |= (RT_ADDR<<11) | (0<<10) | (RT_SBADDR<<5) | NUM_DW;
			MIL_STD_15531->CONTROL |= MIL_STD_1553_CONTROL_BCSTART;			
			proc_mil = mil_null;						
			break;
			
		case 1:
			marker_flg--;		
			MIL_STD_15531->CommandWord1 |= (RT_ADDR<<11) | (1<<10) | (RT_SBADDR<<5) | NUM_DW_TM;
			MIL_STD_15531->CONTROL |= MIL_STD_1553_CONTROL_BCSTART;
			proc_mil = mil_2pc;	
			//proc_mil = mil_null;
			//PORTE->RXTX ^= (1 << 6);
			break;
		}	
}

void MIL_STD_1553B1_Handler(void)
{
	uint32_t errf;
	
	if(MIL_STD_15531->STATUS & MIL_STD_1553_STATUS_ERR){
		errf = MIL_STD_15531->ERROR;
		PORTE->RXTX ^= (1 << 6);
		milerrcnt++;
	}
	
	if(MIL_STD_15531->STATUS & MIL_STD_1553_STATUS_VALMESS){
		proc_mil();
		milfrmcnt++;
	}
}
