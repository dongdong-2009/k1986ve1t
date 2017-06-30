/*********************************************************************
*               (c) SEGGER Microcontroller GmbH & Co. KG             *
*                        The Embedded Experts                        *
*                           www.segger.com                           *
**********************************************************************
----------------------------------------------------------------------
File    : FlashPrg.c
Purpose : Implementation of RAMCode template
--------  END-OF-HEADER  ---------------------------------------------
*/
#include "FlashOS.H"

/*********************************************************************
*
*       Defines
*
**********************************************************************
*/
#define PAGE_SIZE_SHIFT (3)      // The smallest program unit (one page) is 8 byte in size

/*********************************************************************
*
*       Types
*
**********************************************************************
*/

/*********************************************************************
*
*       Static data
*
**********************************************************************
*/
//
// We use this dummy variable to make sure that the PrgData
// section is present in the output elf-file as this section
// is mandatory in current versions of the J-Link DLL 
//
static volatile int _Dummy;

/*********************************************************************
*
*       Static code
*
**********************************************************************
*/

/*********************************************************************
*
*       _FeedWatchdog
*
*  Function description
*    Feeds the watchdog. Needs to be called during RAMCode execution
*    in case of an watchdog is active.
*/
static void _FeedWatchdog(void) {
}

/*********************************************************************
*
*       Public code
*
**********************************************************************
*/

#define PER_CLOCK    (*(volatile unsigned long *)0x4002001C) 
#define EEPROM_CNTRL (1<<3)

#define EEPROM_CMD	(*(volatile unsigned long *) 0x40018000)
#define EEPROM_ADR	(*(volatile unsigned long *) 0x40018004)
#define EEPROM_DI	(*(volatile unsigned long *) 0x40018008)
#define EEPROM_DO	(*(volatile unsigned long *) 0x4001800C)
#define EEPROM_KEY	(*(volatile unsigned long *) 0x40018010)

#define NVSTR	0x2000
#define PROG	0x1000
#define MAS1    0x800
#define ERASE	0x400
#define IFREN	0x200
#define SE		0x100
#define YE		0x80
#define XE   	0x40
#define CON	 	0x1

	/*do
	{
	 id++;
	 id -= 2;
	}
 	while (id!=0);*/

void sleep(int id)
{
	while (id) 
		id--;
}


/*********************************************************************
*
*       Init
*
*  Function description
*    Handles the initialization of the flash module.
*
*  Parameters
*    Addr: Flash base address
*    Freq: Clock frequency in Hz
*    Func: Caller type (e.g.: 1 - Erase, 2 - Program, 3 - Verify)
*
*  Return value 
*    0 O.K.
*    1 Error
*/
int Init(U32 Addr, U32 Freq, U32 Func) {
  (void)Addr;
  (void)Freq;
  (void)Func;
  //
  // Init code
  //

	PER_CLOCK = EEPROM_CNTRL;
	EEPROM_KEY = 0x8AAA5551;
	EEPROM_CMD |= CON;
	EEPROM_CMD &= ~(XE|YE|SE|MAS1|ERASE|NVSTR|PROG);
	return (0);

  return 0;
}

/*********************************************************************
*
*       UnInit
*
*  Function description
*    Handles the de-initialization of the flash module.
*
*  Parameters
*    Func: Caller type (e.g.: 1 - Erase, 2 - Program, 3 - Verify)
*
*  Return value 
*    0 O.K.
*    1 Error
*/
int UnInit(U32 Func) {
  (void)Func;
  //
  // Uninit code
  //
	EEPROM_CMD &= ~CON;
	return 0;

  //*(volatile U32*)(0x1234) = Func; // Dummy 
  return 0;
}

/*********************************************************************
*
*       EraseSector
*
*  Function description
*    Erases one flash sector.
*
*  Parameters
*    Addr: Address of the sector to be erased
*
*  Return value 
*    0 O.K.
*    1 Error
*/
int EraseSector(U32 sectorAddr) {
  int r;

  r = 0;
  //
  // Erase sector code
  //
	unsigned long i;
	for (i=0;i<16;i+=4)
	{
		//EEPROM_ADR = 0x08000000+i;
		EEPROM_ADR = 0x00000000+i;    // smolvik
		EEPROM_CMD &= ~(XE|YE|SE|MAS1|ERASE|NVSTR);
		EEPROM_CMD |= XE|MAS1|ERASE; //MAS1?
		sleep(6);// 6us
		EEPROM_CMD |= NVSTR;
		sleep(50000);// 50ms
		EEPROM_CMD &= ~ERASE;
		sleep(110);// 110us
		EEPROM_CMD &= ~(XE|MAS1|NVSTR);
		sleep(2);// 2us
	}
	// Проверка
	for (i=sectorAddr; i<sectorAddr+0x20000; i+=4)
	{
		EEPROM_ADR = i;
		EEPROM_CMD |= XE|YE|SE;
		sleep(1);
		unsigned long data = EEPROM_DO;
		EEPROM_CMD &= ~(XE|YE|SE);
		sleep(1);
		if(data != 0xffffffff) return (1);
	}
	return (0);

  //*(volatile U32*)(0x1234) = 0x1234;  // Dummy code, needs to be replaced with erase sector code
  _FeedWatchdog();
  return r;
}

/*********************************************************************
*
*       ProgramPage
*
*  Function description
*    Programs one flash page.
*
*  Parameters
*    DestAddr: Destination address
*    NumBytes: Number of bytes to be programmed (always a multiple of program page size, defined in FlashDev.c)
*    pSrcBuff: Point to the source buffer
*
*  Return value 
*    0 O.K.
*    1 Error
*/
int ProgramPage(U32 pageAddr, U32 size, U8 *buf) {
	size = (size + 3) & ~3;
	while (size)
	{
		EEPROM_ADR = pageAddr;
		unsigned long data = *((unsigned long *)buf);
		EEPROM_DI = data;
		EEPROM_CMD |= XE|PROG;
		sleep(6);// 6us
		EEPROM_CMD |= NVSTR;
		sleep(11);// 11us
		EEPROM_CMD |= YE;
		sleep(50);// 50us
		EEPROM_CMD &= ~YE;
		sleep(1);// 1us
		EEPROM_CMD &= ~PROG;
		sleep(6);// 6us
		EEPROM_CMD &= ~(XE|NVSTR);
		sleep(1);// 1us
		// Go to next Word
		pageAddr += 4;                                     
		buf      += 4;
		size     -= 4;
	}
	return (0);                                        
}