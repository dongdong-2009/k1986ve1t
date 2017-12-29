#ifndef _UART_H
#define _UART_H

extern void uart_init(void);
extern int uart_read(char *pb, int nb);
extern int uart_send(char *pb, int nb);
extern int uart_bsz(void);
extern void uart_putch(char ch);

#endif
