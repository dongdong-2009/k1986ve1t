extern unsigned long _data_flash;
extern unsigned long _data_begin;
extern unsigned long _data_end;
extern unsigned long _bss_begin;
extern unsigned long _bss_end;
extern unsigned long _stack_end;

extern int main(void);
/* Vector Table */

void Reset_Handler(void) 			__attribute__ ((weak,  alias ("handler_reset")));
void NMI_Handler(void) 				__attribute__ ((weak,  alias ("default_handler")));
void HardFault_Handler(void) 		__attribute__ ((weak,  alias ("default_handler")));
void SVC_Handler(void) 				__attribute__ ((weak,  alias ("default_handler")));
void PendSV_Handler(void) 			__attribute__ ((weak,  alias ("default_handler")));
void SysTick_Handler(void) 			__attribute__ ((weak,  alias ("default_handler")));

void MIL_STD_1553B2_Handler(void)		__attribute__ ((weak,  alias ("default_handler")));
void MIL_STD_1553B1_Handler(void)		__attribute__ ((weak,  alias ("default_handler")));
void USB_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void CAN1_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void CAN2_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void DMA_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void UART1_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void UART2_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void SSP1_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void BUSY_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void ARINC429R_Handler(void)			__attribute__ ((weak,  alias ("default_handler")));
void POWER_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void WWDG_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void TIMER4_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void TIMER1_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void TIMER2_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void TIMER3_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void ADC_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void ETHERNET_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void SSP3_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void SSP2_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void ARINC429T1_Handler(void)			__attribute__ ((weak,  alias ("default_handler")));
void ARINC429T2_Handler(void)			__attribute__ ((weak,  alias ("default_handler")));
void ARINC429T3_Handler(void)			__attribute__ ((weak,  alias ("default_handler")));
void ARINC429T4_Handler(void)			__attribute__ ((weak,  alias ("default_handler")));
void BKP_Handler(void)					__attribute__ ((weak,  alias ("default_handler")));
void EXT_INT1_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void EXT_INT2_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void EXT_INT3_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));
void EXT_INT4_Handler(void)				__attribute__ ((weak,  alias ("default_handler")));

void handler_reset(void)
{
	unsigned long *source;
	unsigned long *destination;
	/* Copying data from Flash to RAM */
	source = &_data_flash;
	for (destination = &_data_begin; destination < &_data_end;)
	{
	*(destination++) = *(source++);
	}
	/* default zero to undefined variables */
	for (destination = &_bss_begin; destination < &_bss_end;)
	{
	*(destination++) = 0;
	}
	
	/* starting main program */
	main();
}

void default_handler(void)
{
	while (1)
	{
	/* loop */
	}
}

__attribute__ ((section(".interrupt_vector")))

void (* const table_interrupt_vector[])(void) = 
{
	(void *) &_stack_end,
	Reset_Handler,              /* Reset Handler */
	NMI_Handler,                /* NMI Handler */
	HardFault_Handler,          /* Hard Fault Handler */
	0,					        /* Reserved */
	0,					        /* Reserved */
	0,         					/* Reserved */
	0,                          /* Reserved */
	0,                          /* Reserved */
	0,                          /* Reserved */
	0,                          /* Reserved */
	SVC_Handler,                /* SVCall Handler */
	0,  				        /* Reserved */
	0,                          /* Reserved */
	PendSV_Handler,             /* PendSV Handler */
	SysTick_Handler,            /* SysTick Handler */

	/* External Interrupts */
	MIL_STD_1553B2_Handler,		/* IRQ0 */
	MIL_STD_1553B1_Handler,	/* IRQ1 */
	USB_Handler,				/* IRQ2 */
	CAN1_Handler,			/* IRQ3 */
	CAN2_Handler,			/* IRQ4 */
	DMA_Handler,				/* IRQ5 */
	UART1_Handler,			/* IRQ6 */
	UART2_Handler,			/* IRQ7 */
	SSP1_Handler,			/* IRQ8 */
	BUSY_Handler,			/* IRQ9 */
	ARINC429R_Handler,		/* IRQ10 */
	POWER_Handler,			/* IRQ11 */
	WWDG_Handler,			/* IRQ12 */
	TIMER4_Handler,			/* IRQ13 */
	TIMER1_Handler,			/* IRQ14 */
	TIMER2_Handler,			/* IRQ15 */
	TIMER3_Handler,			/* IRQ16 */
	ADC_Handler,				/* IRQ17 */
	ETHERNET_Handler,		/* IRQ18 */
	SSP3_Handler,			/* IRQ19 */
	SSP2_Handler,			/* IRQ20 */
	ARINC429T1_Handler,		/* IRQ21 */
	ARINC429T2_Handler,		/* IRQ22 */
	ARINC429T3_Handler,		/* IRQ23 */
	ARINC429T4_Handler,		/* IRQ24 */
	0,							/* IRQ25 */
	0,							/* IRQ26 */
	BKP_Handler,				/* IRQ27 */
	EXT_INT1_Handler,		/* IRQ28 */
	EXT_INT2_Handler,		/* IRQ29 */
	EXT_INT3_Handler,		/* IRQ30 */
	EXT_INT4_Handler,		/* IRQ31 */
};
