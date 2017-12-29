#include "opora.h"

#define BUF_SIZE 512
  
char tx_buf[BUF_SIZE];
int  tx_idx = 0;
int  tx_wr_idx = 0;
  
char rx_buf[BUF_SIZE];
int  rx_idx = 0;
int  rx_rd_idx = 0;

void uart_init(void)
{
	RST_CLK->PER_CLOCK |= (1 << 6);								// enable clock UART1
	RST_CLK->UART_CLOCK |= (1 << 24);		
	
	// UART_CLK = 120MHz
	// rate = 500 k
	// div = 120000/16/500 = 15.0
	UART1->IBRD = 15;											// 15
	UART1->FBRD = 0;											// round(0.0*2^6) = 0

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

int uart_read(char *pb, int nb)
{
        int i;

        if(rx_rd_idx == rx_idx) return 0;

        for( i = 0; i < nb; i++ ){
                pb[i] = rx_buf[rx_rd_idx];
                rx_rd_idx = (rx_rd_idx+1)&(BUF_SIZE-1);
                if(rx_rd_idx == rx_idx) {
                        i++;
                        break;
                }
        }
        return i;
}

int uart_send(char *pb, int nb)
{
	int i;

	NVIC_DisableIRQ(UART1_IRQn);
	if(tx_wr_idx == tx_idx) {

	}

	for( i = 0; i < nb; i++ ){
			tx_buf[tx_wr_idx] = pb[i];
			tx_wr_idx = (tx_wr_idx+1)&(BUF_SIZE-1);
			if(tx_wr_idx == tx_idx) {
					i++;
					break;
			}
	}

	if((UART1->FR & UART_FR_BUSY) == 0){
		// send first byte
		UART1->DR = tx_buf[tx_idx];
		tx_idx = (tx_idx+1)&(BUF_SIZE-1);	

	}
	
	UART1->IMSC |= UART_IMSC_TXIM;  // Transmit data register empty interrupt enable
	NVIC_EnableIRQ(UART1_IRQn);
	return i;
}

void uart_putch(char ch)
{
	while( UART1->FR & UART_FR_TXFF );	//wait until Tx FIFO full
	UART1->DR = ch;
}

void UART1_Handler(void)
{
	//PORTD->RXTX ^= 0xffff;
	//char ch = UART1->DR; 
	
	if(UART1->MIS & UART_MIS_TXMIS)
	{
		if(tx_idx == tx_wr_idx)
		{
			// no data for transfer - interrupt disable
			UART1->IMSC &= ~UART_IMSC_TXIM;
		}
		else
		{
			// transfer next byte from the buffer
			UART1->DR = tx_buf[tx_idx];
			tx_idx = (tx_idx+1)&(BUF_SIZE-1);
		}
	}

	if(UART1->MIS & UART_MIS_RXMIS)
	{       
		rx_buf[rx_idx] = UART1->DR;
		rx_idx = (rx_idx+1)&(BUF_SIZE-1);
	}        	
}
