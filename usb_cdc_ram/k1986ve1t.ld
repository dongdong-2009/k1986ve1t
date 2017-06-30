/***********************************************************************
k1986ve1t linker script
***********************************************************************/

/* memory layout for an k1986ve1t */
MEMORY
{
	RAM1 (rw) : ORIGIN = 0x20000000, LENGTH = 32K
	RAM2 (rwx) : ORIGIN = 0x20100000, LENGTH = 16K
	FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 128K
}

/* output sections */
SECTIONS
{
	/* section where program code will be stored */
	.text :
	{
		. = ALIGN(4);
		KEEP(*(.startup))
		*(.text)
		*(.text*)
		*(.rodata)
		*(.rodata*)
		. = ALIGN(4);
	} >RAM2

	_data_flash = .; /* last used address */

	/* contains static data when variables have initially defined values
	Here we are using saved flash address AT ( _data_flash ) where we 
	can find initial constants stored in flash that has to be loaded 
	to RAM. This will be done by startup code. For now we create .data 
	location where our constants will be loaded */
	.data : AT ( _data_flash )
	{
		. = ALIGN(4);
		_data_begin = .;
		*(.data)
		*(.data*)
		. = ALIGN(4);
		_data_end = .;
	} > RAM1

	/* Next section is .bss. This is where undefined/uninitialized 
	variables and globals will be stored */
	.bss :
	{
		. = ALIGN(4);
		_bss_begin = .;
		__bss_start__ = _bss_begin;
		*(.bss)
		*(.bss*)
		*(COMMON)
		. = ALIGN(4);
		_bss_end = .;
		__bss_end__ = _bss_end;
	} > RAM1

	_stack_size = 1024;
	_stack_end = ORIGIN(RAM1)+LENGTH(RAM1);
	_stack_begin =  _stack_end - _stack_size;
	. = _stack_begin;
	._stack :
	{
		. = . + _stack_size;
	} > RAM1
} 

/*ENTRY(handler_reset);*/
