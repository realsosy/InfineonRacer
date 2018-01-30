/**
 * \file Ifx_InterfaceConst.c
 * \brief Interface constants to provide the indirection pointers to data shared with external devices
 * \ingroup
 *
 *
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 * $Date: 2013-06-07 19:21:34
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineons microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 * \author Ashok Abbi<Ashok.Abbi@Infineon.com>
 */
#include <Cpu/Std/Ifx_Types.h>
#include "Configuration.h"
#include <Tft/conio_tft.h>
#include <Tft/touch.h>

#ifdef USE_TFT
#ifdef TFT_OVER_DAS
#if defined(__DCC__)
    #if TFT_DISPLAY_VAR_LOCATION == 0
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
    #elif TFT_DISPLAY_VAR_LOCATION == 1
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
    #elif TFT_DISPLAY_VAR_LOCATION == 2
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#endif

extern TCONIO_DRIVER conio_driver;
extern TTOUCH_DASINFO touch_dasinfo;
#endif

#endif /* USE_TFT */

#if defined(__GNUC__)
#pragma section
#pragma section ".interface_const"
#endif
#if defined(__TASKING__)
#pragma section farrom "interface_const"
#pragma protect
#endif
#if defined(__DCC__)
#pragma section CONST ".interface_const" far-absolute R
#endif

#ifdef USE_TFT


const uint32 Ifx_interfaceConst[40] = {
    /*Address:80000040 */ 0x00000000,
    /*Project info to be used */
    /*Address:80000044 */ 0x00000000,
    /*Project info to be used */
    /*Address:80000048 */ 0x00000000,
#ifdef TFT_OVER_DAS
    /*Pointer TFT display */
    /*Address:8000004C */ (uint32)&conio_driver,
    /*Address:80000050 */ (uint32)&conio_driver.dasdisplaymode,
    /*Address:80000054 */ (uint32)&conio_driver.dasstatus,
    /*Address:80000058 */ (uint32)&conio_driver.pdasmirror,
    /*Address:8000005C */ (uint32)&touch_dasinfo,
#else
    /*Address:8000004C */ 0x00000000,
    /*Address:80000050 */ 0x00000000,
    /*Address:80000054 */ 0x00000000,
    /*Address:80000058 */ 0x00000000,
    /*Address:8000005C */ 0x00000000,
#endif
    /*Address:80000060 */ 0x00000000,
    /*Address:80000064 */ 0x00000000,
    /*Address:80000068 */ 0x00000000,
    /*Address:8000006C */ 0x00000000,
    /*Address:80000070 */ 0x00000000,
    /*Address:80000074 */ 0x00000000,
    /*Address:80000078 */ 0x00000000,
    /*Address:8000007C */ 0x00000000,
    /*Address:80000080 */ 0x00000000,
    /*Address:80000084 */ 0x00000000,
    /*Address:80000088 */ 0x00000000,
    /*Address:8000008C */ 0x00000000,
    /*Address:80000090 */ 0x00000000,
    /*Address:80000094 */ 0x00000000,
    /*Address:80000098 */ 0x00000000,
    /*Address:8000009C */ 0x00000000,
    /*Address:800000A0 */ 0x00000000,
    /*Address:800000A4 */ 0x00000000,
    /*Address:800000A8 */ 0x00000000,
    /*Address:800000AC */ 0x00000000,
    /*Address:800000B0 */ 0x00000000,
    /*Address:800000B4 */ 0x00000000,
    /*Address:800000B8 */ 0x00000000,
    /*Address:800000BC */ 0x00000000,
    /*Address:800000C0 */ 0x00000000,
    /*Address:800000C4 */ 0x00000000,
    /*Address:800000C8 */ 0x00000000,
    /*Address:800000CC */ 0x00000000,
    /*Address:800000D0 */ 0x00000000,
    /*Address:800000D4 */ 0x00000000,
    /*Address:800000D8 */ 0x00000000,
    /*Address:800000DC */ 0x00000000
};

#endif /* USE_TFT */
