extern unsigned long _data_flash;
extern unsigned long _data_begin;
extern unsigned long _data_end;
extern unsigned long _bss_begin;
extern unsigned long _bss_end;
extern unsigned long _stack_end;

extern int main(void);

__attribute__ ((section(".startup")))

void startup_proc(void)
{
	unsigned long *destination;
	/* zeroing data to RAM */
	for (destination = &_data_begin; destination < &_data_end;)
	{
	*(destination++) = 0;
	}
	/* default zero to undefined variables */
	for (destination = &_bss_begin; destination < &_bss_end;)
	{
	*(destination++) = 0;
	}
	
	/* starting main program */
	main();
}
