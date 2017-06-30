#include "opora.h"

void uart_init(void)
{
	// UART_CLK = 120MHz
	// rate = 115200 k
	// div = 120000/16/115.2 = 65.1042
	RST_CLK->PER_CLOCK |= (1 << 6);								// enable clock UART1
	RST_CLK->UART_CLOCK |= (1 << 24);	
	
	UART1->IBRD = 65;											// 65
	UART1->FBRD = 7;											// round(0.1042*2^6) = 7

	UART1->IFLS &= ~(UART_IFLS_RXIFLSEL_MASK | UART_IFLS_TXIFLSEL_MASK);
	UART1->IFLS |= (4 << UART_IFLS_RXIFLSEL_OFFS) | (4 << UART_IFLS_TXIFLSEL_OFFS);  // threshold for FIFO is 7/8
	//UART1->LCR_H |= UART_LCR_H_FEN;								// enable FIFO
	UART1->LCR_H |= 3 << UART_LCR_H_WLEN_OFFS;					// word length is 8 bit
	UART1->CR |= (UART_CR_RXE | UART_CR_TXE | UART_CR_UARTEN); 	// enable uart 
	
	// config uart irq
	//UART1->IMSC |= (UART_IMSC_RXIM | UART_IMSC_TXIM);
	UART1->IMSC |= (UART_IMSC_RXIM);
	NVIC_EnableIRQ(UART1_IRQn);
}	

void UART1_Handler(void)
{
	PORTD->RXTX ^= 0xffff;
	char ch = UART1->DR; 
}
