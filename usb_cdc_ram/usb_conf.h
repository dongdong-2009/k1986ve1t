#ifndef __USB_CONF_H
#define __USB_CONF_H

#define VIRTUAL_COM_PORT_DATA_SIZE              64
#define VIRTUAL_COM_PORT_INT_SIZE               16

#define BTABLE_LENGTH_BYTES 		64

// EP0 - standard requests, class requests IN/OUT
#define EP0_TXBUFF_LENGTH_BYTES 	64
// RX Buff size 64 bytes = 2 block by 32 bytes
#define EP0_RXBUFF_LENGTH_BYTES 	64
#define EP0_RX_BLSIZE				1
#define EP0_RX_NUMBLOCK				2

#define EP0_TX_ADDRESS				BTABLE_LENGTH_BYTES
#define EP0_RX_ADDRESS				BTABLE_LENGTH_BYTES+EP0_TXBUFF_LENGTH_BYTES

// EP1 - data transfer from device to host IN
#define EP1_TXBUFF_LENGTH_BYTES 	VIRTUAL_COM_PORT_DATA_SIZE
#define EP1_TX_ADDRESS				EP0_RX_ADDRESS+EP0_RXBUFF_LENGTH_BYTES

// EP2 - state notification from device to host IN
#define EP2_TXBUFF_LENGTH_BYTES 	VIRTUAL_COM_PORT_INT_SIZE
#define EP2_TX_ADDRESS				EP1_TX_ADDRESS+EP1_TXBUFF_LENGTH_BYTES

// EP3 - data transfer from host to device OUT
// RX Buff size 64 bytes = 2 block by 32 bytes
#define EP3_RXBUFF_LENGTH_BYTES 	64
#define EP3_RX_BLSIZE				1
#define EP3_RX_NUMBLOCK				2
#define EP3_RX_ADDRESS				EP2_TX_ADDRESS+EP2_TXBUFF_LENGTH_BYTES

/*extern void user_to_pma_copy(const uint8_t *pbUser, uint32_t usb_addr, uint32_t nb);
extern void pma_to_user_copy(uint8_t *pbUser, uint32_t usb_addr, uint32_t nb);
*/

#endif /* __USB_MEM_H */
