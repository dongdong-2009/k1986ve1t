#include "stm32f10x.h"
#include "led.h"


void uart_start_trans(int n)
{
	tx_numbytes = n;
	tx_index = 0;	
	USART2->CR1 |= USART_CR1_TE;    // send idle frame
	USART2->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable				
}

void uart_init()
{
	// setting outputs for uart
	GPIOA->CRL &= ~(GPIO_CRL_CNF2|GPIO_CRL_MODE2);
	GPIOA->CRL |= (GPIO_CRL_CNF2_1|GPIO_CRL_MODE2_0|GPIO_CRL_MODE2_1); // PA2 - push-pull 50MHz alter out
		
	// uart setup
	USART2->CR1 |= USART_CR1_UE;	 // uart is on
	USART2->CR1 |= USART_CR1_RE;	 // uart rx is on	
	USART2->CR1 |= USART_CR1_RXNEIE; // Received data ready to be read interrupt enable
	//USART2->CR1 |= USART_CR1_TXEIE;  // Transmit data register empty interrupt enable
	USART2->CR1 |= USART_CR1_IDLEIE; // IDLE interrupt enable
	
	NVIC_EnableIRQ(USART2_IRQn);
	
	//USART2->BRR = 0xea6; 			 // setup boderate 9600 bode for 36MHz mantissa=234 fract=6	
	USART2->BRR = 0x138; 			 // setup boderate 115200 bode for 36MHz mantissa=19 fract=8	
}

void USART2_IRQHandler()
{
	uint8_t buf;
	
	if(USART2->SR & USART_SR_IDLE)
	{
		// It is cleared by a software sequence (an read to the
		// USART_SR register followed by a read to the USART_DR register).
		buf = USART2->DR;
		proc_ADU();
		rx_index = 0;
		//USART2->CR1 &= ~USART_CR1_RXNEIE;		
	}
	
	if(USART2->SR & USART_SR_TXE)
	{
		if(tx_numbytes == 0)
		{
				// no data for transfer
				USART2->CR1 &= ~USART_CR1_TXEIE;
		}
		else
		{
				// transfer next byte from the buffer
				USART2->DR = tx_buffer[tx_index];
				tx_index = (tx_index+1) & (BUF_SIZE-1);
				tx_numbytes --;
		}
	}

	if(USART2->SR & USART_SR_RXNE)
	{	
		rx_buffer[rx_index] = USART2->DR;
		rx_index = (rx_index+1) & (BUF_SIZE-1);
	}	
}
