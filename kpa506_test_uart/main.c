#include "opora.h"

#define CPU_PLL_MULT 15 // PLL_CLK 120 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 120000 // 1ms for 120 MHz
//#define SYS_TICKS 12000000 // 100ms

void ClkConfig(void);
void PortConfig(void);
void SystemInit(void);

int Current_Led;
uint32_t i;
uint32_t system_time = 0;
uint32_t test_pwm = 500;

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
}

int main()
{
	char buf[] = "hello world\r\n";
	SystemInit();
	Current_Led=0;
	int i = 0;
	while(1)
	{
		while( UART2->FR & UART_FR_RXFE );	//wait for rx byte
		char c = UART2->DR;
		
		UART2->DR  = c;
		while( UART2->FR & UART_FR_TXFF ); // wait for tx buf empting
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

void UartConfig(void)
{
	// UART_CLK = 120MHz
	// rate = 115200 k
	// div = 120000/16/115.2 = 65.1042
	RST_CLK->PER_CLOCK |= (1 << 7);								// enable clock UART2
	RST_CLK->UART_CLOCK |= (1 << 25);	
	
	UART2->IBRD = 65;											// 65
	UART2->FBRD = 7;											// round(0.1042*2^6) = 7

	//UART2->LCR_H |= UART_LCR_H_FEN;								// enable FIFO
	UART2->LCR_H |= 3 << UART_LCR_H_WLEN_OFFS;					// word length is 8 bit
	UART2->CR |= UART_CR_RXE | UART_CR_TXE | UART_CR_UARTEN; 	// enable uart 
}	

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	UartConfig();
	SysTick_Config(SYS_TICKS);
}	

void SysTick_Handler(void)
{
	system_time ++;
}
