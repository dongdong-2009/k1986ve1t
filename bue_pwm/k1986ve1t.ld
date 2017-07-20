/***********************************************************************
 minimal example linker script
***********************************************************************/

/* memory layout for an */
MEMORY
{
    FLASH (rx)  : ORIGIN = 0x00000000, LENGTH = 128K
    SRAM1 (xrw)  : ORIGIN = 0x20000000, LENGTH = 32K
    SRAM2 (xrw)  : ORIGIN = 0x20100000, LENGTH = 16K
}

/* output sections */
SECTIONS
{
    /* program code into FLASH */
    
    .text :
    {
		KEEP(*(.main_sec))
        *(.text)            /* Program code */
    } >SRAM2
    
    /* uninitialized global and static variables (which
       we don't have any in this example) into SRAM */
    .data :
    {
        *(.data)           
    } >SRAM1
    
    .bss :
    {
        *(.bss)           
    } >SRAM1
} 
ENTRY(main);
