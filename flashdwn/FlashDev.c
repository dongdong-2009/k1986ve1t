/*********************************************************************
*               (c) SEGGER Microcontroller GmbH & Co. KG             *
*                        The Embedded Experts                        *
*                           www.segger.com                           *
**********************************************************************
----------------------------------------------------------------------
File    : FlashDev.c
Purpose : Flash device description Template
--------  END-OF-HEADER  ---------------------------------------------
*/

#include "FlashOS.H"

struct FlashDevice const FlashDevice __attribute__ ((section ("DevDscr"))) =  {
  ALGO_VERSION,              // Algo version
  "K1986VE1T", // Flash device name
  ONCHIP,                    // Flash device type
  0x00000000,                // Flash base address
  0x00020000,                // Total flash device size in Bytes (128 KB)
  4096,                       // Page Size (number of bytes that will be passed to ProgramPage(). May be multiple of min alignment in order to reduce overhead for calling ProgramPage multiple times
  0,                         // Reserved, should be 0
  0xFF,                      // Flash erased value
  100,                       // Program page timeout in ms
  6000,                      // Erase sector timeout in ms
  //
  // Flash sector layout definition
  //
  //0x00004000, 0x00000000,   // 4 *  16 KB =  64 KB
  //0x00010000, 0x00010000,   // 1 *  64 KB =  64 KB
  //0x00020000, 0x00020000,   // 1 * 128 KB = 128  KB
  0x00020000, 0x00000000,   //  1 * 128 KB = 128  KB
  0xFFFFFFFF, 0xFFFFFFFF    // Indicates the end of the flash sector layout. Must be present.
};
