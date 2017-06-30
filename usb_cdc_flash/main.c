#include "opora.h"
#include "xprintf.h"
#include "usb_desc.h"
#include "usb_def.h"

#define CPU_PLL_MULT 15 // PLL_CLK 120 MHz for 8 MHz ext oscillator
#define EEPROM_DEL 4
#define SYS_TICKS 120000 // 1ms for 120 MHz
//#define SYS_TICKS 12000000 // 100ms

#define SET_LINE_CODING 		0x20
#define GET_LINE_CODING 		0x21
#define SET_CONTROL_LINE_STATE	0x22

#define dbg_msg xprintf

void null_proc();

void ClkConfig(void);
void PortConfig(void);
void SystemInit(void);
void uart1_putch(char ch);

void usb_device_update(void);
void setup0_proc(void);
void get_descriptor_proc(void);
void plan_Data_IN_proc(void);

int Current_Led;
uint32_t i;
uint32_t system_time = 0;
uint32_t test_pwm = 500;

uint8_t setup_data[8];
uint32_t tx_length = 0;
uint8_t  *tx_pbUser = 0;

uint16_t devAddr = 0;
uint16_t devConfig = 0;
uint16_t devControlLineState = 0;

void (*input0_proc)(void) = &null_proc;
void (*output0_proc)(void) = &null_proc;

int sleep(uint32_t ms)
{
	uint32_t t = system_time + ms;
	while(system_time < t);
	
	//int i;
	//for(i = 0; i < 10000; i++){}
}

int main()
{
	char ch;
	char buf[] = "hello world\r\n";
	SystemInit();
	
	xdev_out(uart1_putch);
	
	Current_Led=0;
	int i = 0;

	while(1)
	{
		//PORTD->RXTX^=1<<(7+Current_Led++);
		//if(Current_Led>7) Current_Led=0;
		
/*		
		for(i = 0; i < sizeof(buf); i++){
			UART1->DR = buf[i];
			while( UART1->FR & UART_FR_TXFF );	//wait until Tx FIFO full
		}
*/
		
		/*
		while(0 == (UART1->FR & UART_FR_RXFF));			// wait for filling fifo		
		while(0 == (UART1->FR & UART_FR_RXFE)) {
			ch = UART1->DR; // empting the fifo		
			PORTD->RXTX |= 0xffff;
			sleep(1000);
			PORTD->RXTX &= ~0xffff;
			sleep(1000);
		}
		*/
		
		/*xprintf("hello\r\n");
		sleep(1000);*/
		
		usb_device_update();
		
	}
}

//--- Ports configuration ---
void PortConfig()
{
	RST_CLK->PER_CLOCK|=1<<24;	 				//clock of PORTD ON
	
	PORTD->FUNC = 0x00000000;  		// функция - порт
	PORTD->RXTX = 0x0000;	     	// очищаем выход
	PORTD->OE = 0x7F80;				// порт на выход
	PORTD->ANALOG = 0x7F80;			/* port is digital mode */
	PORTD->PWR = 0x3FFFC000;		/* max power of port */
	
	// настройка выхода ШИМ PA.6 и PA.7
	RST_CLK->PER_CLOCK|=1<<21;	 		// clock of PORTA ON
	PORTA->FUNC &= ~(0x03 << (6<<1)); 		
	PORTA->FUNC &= ~(0x03 << (7<<1)); 		
	PORTA->FUNC |= (0x02 << (6<<1)); 	// альтернативная функция PA.6
	PORTA->FUNC |= (0x02 << (7<<1)); 	// альтернативная функция PA.7
	PORTA->OE |= (1 << 6);				// PA.6 - выход
	PORTA->OE |= (1 << 7);				// PA.7 - выход
	PORTA->ANALOG |= (1 << 6);			// PA.6 - цифровой режим
	PORTA->ANALOG |= (1 << 7);			// PA.7 - цифровой режим
	PORTA->PWR |= (0x03 << (6<<1));		// max speed PA.6
	PORTA->PWR |= (0x03 << (7<<1));		// max speed PA.7
	
	// Настройка выводов UART1 PC.3 PC.4
	RST_CLK->PER_CLOCK |= 1<<23;	 							// clock of PORTС ON
	PORTC->FUNC &= ~( (0x03 << (3<<1)) | (0x03 << (4<<1)) );
	PORTC->FUNC |= (0x01 << (3<<1)) | (0x01 << (4<<1)); 	// основная функция PC.3 и PC.4
	PORTC->ANALOG |= (1 << 3) | (1 << 4);					// PC.3 PC.4 - цифровой режим
	PORTC->PWR |= (0x03 << (3<<1)) | (0x03 << (4<<1));		// max speed PC.3 PC.4
	PORTC->RXTX &= ~((1 << 3) | (1 << 4));	     			// очищаем выход
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
	TIMER4->PSG = 12 - 1;  // prescaller gets 10 MHz
	TIMER4->ARR = 1000 - 1;	// TIM4 period is 10 KHz  
	TIMER4->CCR1 = 500;
	
	TIMER4->CH1_CNTRL &= ~TIMER_CH_CNTRL_OCCM_MASK;				
	
	//TIMER4->CH1_CNTRL |= (1 << TIMER_CH_CNTRL_OCCM_OFFS);									// 000: REF = 1 if CNT=ARR
	//TIMER4->CH1_CNTRL |= (6 << TIMER_CH_CNTRL_OCCM_OFFS);									// 110: 1, если DIR= 0 (счет вверх), CNT<CCR, иначе 0
	TIMER4->CH1_CNTRL |= (7 << TIMER_CH_CNTRL_OCCM_OFFS);									// 111: 0, если DIR= 0 (счет вверх), CNT<CCR, иначе 1
	
	TIMER4->CH1_CNTRL1 &= ~(TIMER_CH_CNTRL1_SELO_MASK | TIMER_CH_CNTRL1_SELOE_MASK);		// настройка прямого выхода канала 1
	TIMER4->CH1_CNTRL1 |= (3 << TIMER_CH_CNTRL1_SELO_OFFS);	    							// на прямой выход канала 1 идет REF 
	TIMER4->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_SELOE_OFFS);	    						// прямой выход канала 1 всегда работает на выход на OE всегда 1
	
	TIMER4->CH1_CNTRL1 &= ~(TIMER_CH_CNTRL1_NSELO_MASK | TIMER_CH_CNTRL1_NSELOE_MASK);		// настройка инверсного выхода канала 1
	TIMER4->CH1_CNTRL1 |= (3 << TIMER_CH_CNTRL1_NSELO_OFFS);	    						// на инверсный выход канала 1 идет REF
	TIMER4->CH1_CNTRL1 |= (1 << TIMER_CH_CNTRL1_NSELOE_OFFS);	    						// инверсный выход канала 1 всегда работает на выход на OE всегда 1	
	
	// setting for dead time generator (DTG)
	//TIMER4->CH1_DTG |= (1 << 4);
	//TIMER4->CH1_DTG |= 15;
	TIMER4->CH1_DTG |= ((0xff&(200)) << 8); 		// delay DTG	
	
	TIMER4->IE |= (0x0f << TIMER_IE_CCR_REF_EVENT_IE_OFFS); 	// прерывание по событию передний фронт на REF
	//TIMER4->IE |= TIMER_IE_CNT_ARR_EVENT_IE;					// прерывание по событию  ARR=CNT
	
	TIMER4->CNTRL = TIMER_CNTRL_CNT_EN; 						// start count up
	NVIC_EnableIRQ(TIMER4_IRQn); 								// enable in nvic int from tim4
		
}

void uart1_putch(char ch)
{
	while( UART1->FR & UART_FR_TXFF );	//wait until Tx FIFO full
	UART1->DR = ch;
}

void UartConfig(void)
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
	UART1->LCR_H |= UART_LCR_H_FEN;								// enable FIFO
	UART1->LCR_H |= 3 << UART_LCR_H_WLEN_OFFS;					// word length is 8 bit
	UART1->CR |= (UART_CR_RXE | UART_CR_TXE | UART_CR_UARTEN); 	// enable uart 
	
	// config uart irq
	//UART1->IMSC |= (UART_IMSC_RXIM | UART_IMSC_TXIM);
	//NVIC_EnableIRQ(UART1_IRQn);
}	

void usb_device_init(void)
{
	
	RST_CLK->PER_CLOCK |= (1 << 2); 	// clock usb on
	RST_CLK->USB_CLOCK = (1 << 8) | (1<<2) | 0x02;
	
	RST_CLK->PLL_CONTROL |= RST_CLK_PLL_CONTROL_PLL_USB_ON | ((6-1)<<RST_CLK_PLL_CONTROL_PLL_USB_MUL_OFFS);
	while(0 == (RST_CLK->CLOCK_STATUS & RST_CLK_CLOCK_STATUS_PLL_USB_RDY));	// wait for PLL USB ready
	
	USB->HSCR = (1<<1); //reset usb core
	sleep(1);
	USB->HSCR = (1<<2) | (1<<3) | (1<<4); // device mode enable rx and tx full speed device
	USB->SC |= (1<<4) | (1<<5) | 1; // full speed 12 Mbit/s enable endpoints
	
	USB->SEP0_CTRL |= 1+2; // EP0 is enabled and ready
	
}

void usb_reset()
{
	USB->SEP0_CTRL &= ~(1<<2); // DATA0
}

void usb_device_update(void)
{
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
		
		uint32_t token_tp = USB->SEP0_TS & 0xff;
		
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
}

void SystemInit(void)
{
	ClkConfig();
	PortConfig();
	//TimerConfig();
	UartConfig();
	SysTick_Config(SYS_TICKS);
	usb_device_init();
		
	
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
		
		dbg_msg("len=%d", len);
		
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
		
		dbg_msg("last=%d", last);
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
	
	// enable getting the next request from the host
	//_SetEPRxStatus(ENDP0, EP_RX_VALID);
	USB->SEP0_CTRL |= 2; 		// EP0 is ready				
	input0_proc = &null_proc;	
}

void setup0_proc()
{
	int bc;	
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
			//plan_ZeroLength_IN_proc();
			// set procedure for some deffered actions
			//input0_proc = &input0_for_setcontrolline_proc;		
			// save line state code
			//devControlLineState = setup_data[2];	
			dbg_msg("SET_CONTROL_LINE_STATE\r\n");	
			break;

		case SET_LINE_CODING:
			// set line coding request
			// plan data stage OUT transaction:
			//output0_proc = &output0_for_setlinecoding_proc;	
			//_SetEPRxStatus(ENDP0, EP_RX_VALID);
			dbg_msg("SET_LINE_CODING\r\n");	
			break;

		case GET_LINE_CODING:
			// It's GET_LINE_CODING request
			// plan data stage transaction:
			//tx_length = 7;	
			//tx_pbUser = (uint8_t*) &uart_linecoding_data[0];
			//plan_Data_IN_proc();	
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
	}
}



void SysTick_Handler(void)
{
	system_time ++;
}

void TIMER4_Handler(void)
{
	TIMER4->STATUS = 0;
	PORTD->RXTX ^= 0xffff;	
}

void UART1_Handler(void)
{
	
}
