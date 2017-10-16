#include "opora.h"
#include "xprintf.h"
#include "usb_desc.h"
#include "usb_def.h"

#define SET_LINE_CODING 		0x20
#define GET_LINE_CODING 		0x21
#define SET_CONTROL_LINE_STATE	0x22

#define dbg_msg xprintf

void null_proc();

void usb_reset();
void usb_device_update(void);
void setup0_proc(void);
void get_descriptor_proc(void);
void plan_Data_IN_proc(void);
void enable_RX_proc();
int usb_read(uint8_t *pb, uint32_t nb);
int usb_write(uint8_t *pb, uint32_t nb);

uint16_t devAddr = 0;
uint16_t devConfig = 0;
uint16_t devControlLineState = 0;

uint8_t  uart_linecoding_data[7];
uint32_t usbConfigured = 0;

void (*input0_proc)(void) = &null_proc;
void (*output0_proc)(void) = &null_proc;

uint8_t setup_data[8];
uint32_t tx_length = 0;
uint8_t  *tx_pbUser = 0;

extern int sleep(uint32_t ms);

void usb_device_init(void)
{
	
	RST_CLK->PER_CLOCK |= (1 << 2); 	// clock usb on
	RST_CLK->USB_CLOCK = (1 << 8) | (1<<2) | 0x02;
	
	RST_CLK->PLL_CONTROL |= RST_CLK_PLL_CONTROL_PLL_USB_ON | ((6-1)<<RST_CLK_PLL_CONTROL_PLL_USB_MUL_OFFS);
	while(0 == (RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_PLL_USB_RDY));	// wait for PLL USB ready

	USB->HSCR |= (1<<1); //reset usb core
	sleep(1);	
	USB->HSCR = (1<<2) | (1<<3) | (1<<4); // device mode enable rx and tx full speed device
	USB->SC |= (1<<4) | (1<<5) | 1; // full speed 12 Mbit/s enable endpoints
		
}

void usb_reset()
{
	usbConfigured = 0;
	
	USB->SEP0_CTRL = 0;
	USB->SEP1_CTRL = 0;
	USB->SEP2_CTRL = 0;
	USB->SEP3_CTRL = 0;
	
	/*USB->HSCR |= (1<<1); //reset usb core
	sleep(1);	
	USB->HSCR &= ~(1<<1);
	*/
	
	USB->SA = 0;
	
	USB->SEP0_CTRL &= ~(1<<2); // DATA0
	
	USB->SEP0_CTRL |= 1+2; // EP0 is enabled and ready
	//USB->SEP1_CTRL |= 1+2; // EP1 is enabled
	//USB->SEP2_CTRL |= 1+2; // EP2 is enabled
	//USB->SEP3_CTRL |= 1+2; // EP3 is enabled
	
	input0_proc = &null_proc;
	output0_proc = &enable_RX_proc;	
}

void usb_device_update(void)
{
	uint32_t token_tp = 0;
	uint32_t state = USB->SIS;
	USB->SIS = 0;
	
	if(state & (1<<2))
	{
		USB->SIS |= (1<<2); // reset flag
		usb_reset();
		xprintf("RESET\r\n");
	}	
	else if(state & 1)
	{
		USB->SIS |= 1; // reset flag
		//xprintf("SETUP/OUT\r\n");
		//USB->SEP0_CTRL |= 2; // EP0 is ready	
		
		
		if(0 == (USB->SEP0_CTRL & 2)){
			token_tp = USB->SEP0_TS & 0xff;
			
			if(token_tp == 0){
				// SETUP token
				dbg_msg("ep0:setup:");
				setup0_proc();
			}		
			if(token_tp == 1){
				dbg_msg("ep0:in\r\n");
				(*input0_proc)();
			}		
			if(token_tp == 2){
				dbg_msg("ep0:out\r\n");
				(*output0_proc)();
			}				
		}
		
		if(0 == (USB->SEP1_CTRL & 2)){
			token_tp = USB->SEP1_TS & 0xff;		
			
			if(token_tp == 1){
				dbg_msg("ep1:in\r\n");
				//(*input0_proc)();
				//USB->SEP1_TXFDC = 1;  			// reset FIFO index
			}		
			if(token_tp == 2){
				dbg_msg("ep1:out\r\n");
				//(*output0_proc)();
			}					
			
		}	
		
		if(0 == (USB->SEP2_CTRL & 2)){	
			token_tp = USB->SEP2_TS & 0xff;		
			if(token_tp == 1){
				dbg_msg("ep1:in\r\n");
				//(*input0_proc)();
			}		
			if(token_tp == 2){
				dbg_msg("ep1:out\r\n");
				//(*output0_proc)();
			}						
		}
		
		if(0 == (USB->SEP3_CTRL & 2)){
			token_tp = USB->SEP3_TS & 0xff;
			
			if(token_tp == 1){
				dbg_msg("ep3:in\r\n");
				//(*input0_proc)();
				//usb_write("hello\r\n", 7);
			}		
			if(token_tp == 2){
				dbg_msg("ep3:out\r\n");
				//(*output0_proc)();
			}
		}			
		
		//USB->SEP1_CTRL |= 1+2; // EP1 is enabled
		//USB->SEP2_CTRL |= 1+2; // EP2 is enabled
		//USB->SEP3_CTRL |= 1+2; // EP3 is enabled		
	}
}

int usb_read(uint8_t *pb, uint32_t nb)
{
	int i, nr, bc;
	
	//bc = _GetEPRxCount(ENDP3); // num rx bytes
	bc = USB->SEP3_RXFDC_H; 	// how many bytes has FIFO?

	if(bc == 0) return 0;
	
	nr = (nb < bc) ? nb : bc;
	//pma_to_user_copy(pb, EP3_RX_ADDRESS, nr);
	for(i = 0; i < nr; i++){
		pb[i] = USB->SEP3_RXFD;
	}
	//USB->SEP3_RXFC = 1;  			// reset FIFO index
	
	// enable next out transaction
	USB->SEP3_CTRL |= 2; // EP3 is enabled
	
	return nr;		
}

int usb_write(uint8_t *pb, uint32_t nb)
{
	int nr, i;
	
	// check tne ep1	
	if(USB->SEP1_CTRL & 2){
		// usb tx is busie
		return 0;
	}
	
	nr = (nb < VIRTUAL_COM_PORT_DATA_SIZE) ? nb : VIRTUAL_COM_PORT_DATA_SIZE;
	
	// copy nr bytes usb tx buffer
	USB->SEP1_TXFDC = 1;  			// reset FIFO index
	for(i = 0; i < nr; i++){
		USB->SEP1_TXFD = pb[i];
	}
	
	dbg_msg("written =%d bytes\n\r", nr);
	
	USB->SEP1_CTRL ^= (1<<2); // 
	USB->SEP1_CTRL |= 2; // EP1 is ready

	return nr;
}

void null_proc()
{
	return;
}

void enable_RX_proc()
{
	//USB->SEP0_CTRL ^= 1<<2; // DATA0/DATA1 sequence
	USB->SEP0_CTRL |= 2; // EP0 is ready
}

void plan_ZeroLength_OUT_proc()
{
	// plan the status stage - zero length host OUT transaction
	//_SetEPRxStatus(ENDP0, EP_RX_VALID);	
	
	//USB->SEP0_CTRL ^= 1<<2; // DATA0/DATA1 sequence
	USB->SEP0_CTRL |= 2; // EP0 is ready
	input0_proc = &null_proc; 
	output0_proc = &enable_RX_proc;
}


void plan_ZeroLength_IN_proc()
{
	// plan zero length IN
	USB->SEP0_TXFDC = 1;  			// reset FIFO index null data 
	USB->SEP0_CTRL |= (1<<2); 	// отправляем DATA1 
	//USB->SEP0_CTRL ^= 1<<2; // DATA0/DATA1 sequence
	USB->SEP0_CTRL |= 2; 		// EP0 is ready		
}

void plan_Data_IN_proc()
{
	uint32_t len;	
	uint32_t last;		
	int i;
						
	len = (tx_length > 64) ? 64 : tx_length;
	last = tx_length - len;
						
	if(len > 0)
	{
		// if there is the data for tx
		// plan IN data stage transaction:
		// copy len bytes of config descriptor to usb tx buffer
		//user_to_pma_copy(tx_pbUser, EP0_TX_ADDRESS, len);
			
		// and set tx counter equal len
		//_SetEPTxCount(ENDP0, len);
		// make tx valid for next IN request from host
		//_SetEPTxStatus(ENDP0,EP_TX_VALID);
		
		// copy len bytes of config descriptor to usb tx buffer
		USB->SEP0_TXFDC = 1;  			// reset FIFO index
		for(i = 0; i < len; i++){
			USB->SEP0_TXFD = tx_pbUser[i];
		}
		
		dbg_msg(" len=%d ", len);
		
		USB->SEP0_CTRL ^= (1<<2); // 
		USB->SEP0_CTRL |= 2; // EP0 is ready				
	}
	
	if(last > 0 )
	{
		// we have one more data
		// save position for next trasfer
		tx_length = last;	
		tx_pbUser = &tx_pbUser[len];
		input0_proc = &plan_Data_IN_proc;		
		
		dbg_msg(" last=%d ", last);
	}
	else
	{
		// nothig to transfer 
		// It will plan the status stage next
		input0_proc = &plan_ZeroLength_OUT_proc;
	}				
}

void string_descriptor_proc()
{
	uint32_t descr_index = (uint32_t)setup_data[2];
	
	switch(descr_index)
	{				
		case 0x00:
			// Index of string descriptor describing languige id
			// plan data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_LANGID;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringLangID[0];
			plan_Data_IN_proc();
			break;

		case 0x01:
			// Index of string descriptor describing manufacturer
			// plan data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_VENDOR;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringVendor[0];
			plan_Data_IN_proc();				
			break;
		
		case 0x02:
			// Index of string descriptor describing product
			// plan  data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_PRODUCT;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringProduct[0];
			plan_Data_IN_proc();								
			break;
		
		case 0x03:
			// Index of string descriptor describing serial
			// plan data stage transaction:
			tx_length = VIRTUAL_COM_PORT_SIZ_STRING_SERIAL;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_StringSerial[0];
			plan_Data_IN_proc();												
			break;
	}					
}

void get_descriptor_proc()
{
	uint32_t descr_type = (uint32_t)setup_data[3];
	uint32_t wLength = (uint32_t)(setup_data[6] | (setup_data[7] << 8));	
	
	// detect the type of the request
	switch(descr_type)
	{
		case DEVICE_DESCRIPTOR:
			// It's USB_DEVICE_DESCRIPTOR_TYPE request
			// plan data stage transaction:
			tx_length = wLength;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_DeviceDescriptor[0];
			
			USB->SEP0_CTRL &= ~(1<<2); // отправляем DATA0
			//USB->SEP0_CTRL |= (1<<2); // отправляем DATA1
			plan_Data_IN_proc();
			dbg_msg("DEVICE\r\n");
			break;
		
		case DEVICE_QUALIFIER:
			// plan zero length IN
			plan_ZeroLength_IN_proc();			
			input0_proc = &plan_ZeroLength_OUT_proc;						
			dbg_msg("QUALIFIER\r\n");	
			break;

		case CONFIG_DESCRIPTOR:
			// It's USB_CONFIGURATION_DESCRIPTOR_TYPE request
			// plan data stage transaction:
			tx_length = wLength;	
			tx_pbUser = (uint8_t*) &Virtual_Com_Port_ConfigDescriptor[0];
			
			USB->SEP0_CTRL &= ~(1<<2); // отправляем DATA0
			//USB->SEP0_CTRL |= (1<<2); // отправляем DATA1
			plan_Data_IN_proc();	
			dbg_msg("CONFIGURATION\r\n");
			break;
		
		case STRING_DESCRIPTOR:
			// It's USB_STRING_DESCRIPTOR_TYPE request
			USB->SEP0_CTRL &= ~(1<<2); // отправляем DATA0
			string_descriptor_proc();
			dbg_msg("STRING\r\n");
			break;
	}	
}

void input0_for_setaddr_proc()
{	
	// set early saving address
	USB->SA = devAddr;
	//USBDeviceState = ADDRESSED;
	
    // set address in every used endpoint 
	//_SetEPAddress(ENDP1, ENDP1);
	//_SetEPAddress(ENDP2, ENDP2);
	//_SetEPAddress(ENDP3, ENDP3);	
		
	// enable getting the next request from host
	//_SetEPRxStatus(ENDP0, EP_RX_VALID);
	USB->SEP0_CTRL |= 2; 		// EP0 is ready		
	
	input0_proc = &null_proc;
}

void input0_for_setconfig_proc()
{
	// here we're setting new configuration
	// using early saving devConfig
	//USBDeviceState = CONFIGURED;
	//led_on();
	
	usbConfigured = 1;
	
		USB->SEP1_CTRL |= 1; // EP1 is enabled IN1  from the device to the host
		//USB->SEP2_CTRL |= 1+2; // EP2 is enabled
		USB->SEP3_CTRL |= 1+2; // EP3 is enabled OUT3  from the host to the device
	
	dbg_msg("set new configuration %d\r\n", devConfig);
	
	// enable getting the next request from the host
	//_SetEPRxStatus(ENDP0, EP_RX_VALID);
	USB->SEP0_CTRL |= 2; 		// EP0 is ready				
	input0_proc = &null_proc;	
}
	
void output0_for_setlinecoding_proc()
{
	int bc, i;
	uint32_t dwDTERate;
	uint8_t bCharFormat;
	uint8_t bParityType;
	uint8_t bDataBits;
	
	//bc = _GetEPRxCount(ENDP0); // num rx bytes
	bc = USB->SEP0_RXFDC_H; 	// read num bytes in FIFO
	dbg_msg("set line coding proc :get %d bytes\r\n", bc);	
	
	// read 7 bytes from usb rx buffer to user rx bufer
	//pma_to_user_copy(uart_linecoding_data, EP0_RX_ADDRESS, 7);
	for(i = 0; i < 7; i++){
		uart_linecoding_data[i] = USB->SEP0_RXFD;
		//dbg_msg("uart_linecoding_data[%d]=%d\r\n", i, uart_linecoding_data[i]); 
	}
	USB->SEP0_RXFC = 1;  			// reset FIFO index
	
	bDataBits = uart_linecoding_data[6];
	dwDTERate = uart_linecoding_data[0];
	dwDTERate += uart_linecoding_data[1]<<8;	
	dwDTERate += uart_linecoding_data[2]<<16;	
	
	dbg_msg("boderate=%d\r\n", dwDTERate);
	dbg_msg("databits=%d\r\n", bDataBits);
		
	// plan status stage zero length IN
		
	plan_ZeroLength_IN_proc();
	input0_proc = &null_proc;
	

	// enable next OUT or SETUP transaction
	//_SetEPRxStatus(ENDP0, EP_RX_VALID);		
	//USB->SEP0_CTRL |= 2; // EP0 is ready
	output0_proc = &enable_RX_proc;
}


void input0_for_setcontrolline_proc()
{
	// here we're setting new control line state
	// using early saving devControlLineState
	
	dbg_msg("set new control line state %d\r\n", devControlLineState);
	
	// enable getting the next request from the host
	//_SetEPRxStatus(ENDP0, EP_RX_VALID);	
	USB->SEP0_CTRL |= 2; // EP0 is ready
	input0_proc = &null_proc;	
}

void setup0_proc()
{
	int bc, i;	
	uint32_t req_type;

	//int nrxb = USB->SEP0_RXFDC_H; 	// read num bytes in FIFO
	//bc = _GetEPRxCount(ENDP0); // num rx bytes
	bc = USB->SEP0_RXFDC_H; 	// read num bytes in FIFO

	// read 8 control bytes from usb rx buffer to user rx bufer
	//pma_to_user_copy(setup_data, EP0_RX_ADDRESS, 8);
	for(i = 0; i < 8; i++){
		setup_data[i] = USB->SEP0_RXFD;
	}
	USB->SEP0_RXFC = 1;  			// reset FIFO index

	req_type = setup_data[1];
	switch(req_type)
	{
		case SET_CONTROL_LINE_STATE:
			// set control line request
			// plan status stage IN transaction
			plan_ZeroLength_IN_proc();						
	
			// set procedure for some deffered actions
			input0_proc = &input0_for_setcontrolline_proc;		
			// save line state code
			devControlLineState = setup_data[2];	
			dbg_msg("SET_CONTROL_LINE_STATE\r\n");	
			break;

		case SET_LINE_CODING:
			// set line coding request
			// plan data stage OUT transaction:
			output0_proc = &output0_for_setlinecoding_proc;	
			USB->SEP0_CTRL |= 2; // EP0 is ready
			dbg_msg("SET_LINE_CODING\r\n");	
			break;

		case GET_LINE_CODING:
			// It's GET_LINE_CODING request
			// plan data stage transaction:
			tx_length = 7;	
			tx_pbUser = (uint8_t*) &uart_linecoding_data[0];
			
			USB->SEP0_CTRL &= ~(1<<2); // отправляем DATA0
			plan_Data_IN_proc();	
			dbg_msg("GET_LINE_CODING\r\n");	
			break;

		case SET_CONFIGURATION:
			// set config request
			devConfig = setup_data[2]; // save config code from host request
			// plan status stage transaction for set address control trasfer -
			// send zero length data packet to host
			plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			input0_proc = &input0_for_setconfig_proc;	
			dbg_msg("SET_CONFIGURATION\r\n");		
			break;

		case SET_ADDRESS:
			// set address request		
			devAddr = setup_data[2]; // save address from host request
			// plan status stage transaction for set address control trasfer -
			// send zero length data packet to host
			plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			input0_proc = &input0_for_setaddr_proc;	
			dbg_msg("SET_ADDRESS %d\r\n", devAddr);
			break;

		case GET_DESCRIPTOR:
			dbg_msg("GET_DESCRIPTOR:");
			get_descriptor_proc();
			break;
			
			dbg_msg("unknown request:%d\r\n", req_type);
	}
}
