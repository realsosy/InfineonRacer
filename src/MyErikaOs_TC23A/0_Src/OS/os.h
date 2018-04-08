/**
 * \file os.h
 * \brief This file contains contains the required inclusions header files for Erika Os.
 *
 *
 * \copyright Copyright (c) 2012 Infineon Technologies AG. All rights reserved.
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 */

#ifndef OS_H_
#define OS_H_

#ifndef __TC161__
#define  __TC161__
#endif

#include "compilers.h"
#include "ee.h"
#include "cpu/tricore/inc/ee_tc_irq_internal.h"

/*Macro to define the interrupts using Infineon software framework basic infrastructure*/

#define IFX_INTERRUPT_CATEGORY2(isr,vectabNum,prio)       \
static void EE_isr2_handler_ ## isr (void);               \
IFX_INTERRUPT(EE_isr2_ ## isr,vectabNum,prio)             \
{                                                         \
	EE_tc_isr2_wrapper_body(EE_isr2_handler_ ## isr);     \
}                                                         \
static void EE_isr2_handler_ ## isr (void)


#endif /* OS_H_ */
