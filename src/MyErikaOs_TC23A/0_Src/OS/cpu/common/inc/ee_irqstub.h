/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2010  Evidence Srl
 *
 * This file is part of ERIKA Enterprise.
 *
 * ERIKA Enterprise is free software; you can redistribute it
 * and/or modify it under the terms of the GNU General Public License
 * version 2 as published by the Free Software Foundation, 
 * (with a special exception described below).
 *
 * Linking this code statically or dynamically with other modules is
 * making a combined work based on this code.  Thus, the terms and
 * conditions of the GNU General Public License cover the whole
 * combination.
 *
 * As a special exception, the copyright holders of this library give you
 * permission to link this code with independent modules to produce an
 * executable, regardless of the license terms of these independent
 * modules, and to copy and distribute the resulting executable under
 * terms of your choice, provided that you also meet, for each linked
 * independent module, the terms and conditions of the license of that
 * module.  An independent module is a module which is not derived from
 * or based on this library.  If you modify this code, you may extend
 * this exception to your version of the code, but you are not
 * obligated to do so.  If you do not wish to do so, delete this
 * exception statement from your version.
 *
 * ERIKA Enterprise is distributed in the hope that it will be
 * useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License version 2 for more details.
 *
 * You should have received a copy of the GNU General Public License
 * version 2 along with ERIKA Enterprise; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA.
 * ###*E*### */

/*
 * Some IRQ-related stuff.
 * Author: 2009-2010,  Bernardo  Dal Seno
 */

/*******************************************************************************
 *                        !!!WARNING!!!
 * This header depends on "cpu/common/inc/ee_context.h" or your own 
 * implementation of the same. You should include it file before including this
 * file
 ******************************************************************************/

#ifndef __INCLUDE_CPU_COMMON_EE_IRQSTUB__
#define __INCLUDE_CPU_COMMON_EE_IRQSTUB__

/* this bring EE_IRQ_nesting_level definition */
#include "cpu/common/inc/ee_primitives.h"

/* True if we are inside an interrupt-serving routine */
#define EE_is_inside_ISR_call() (EE_IRQ_nesting_level > 0U)


/* EE_decrement_IRQ_nesting_level() and EE_increment_IRQ_nesting_level() are
 * used to keep track of the current IRQ nesting level.
 * EE_std_enableIRQ_nested() and EE_std_disableIRQ_nested() are used to control
 * when IRQ nesting is enabled.
 */
#if defined(__AS_SC4__)
/* For SC4 the nesting level is updated inside the prestub and postub */
#define EE_decrement_IRQ_nesting_level() ((void)0)
#define EE_increment_IRQ_nesting_level() ((void)0)
#define EE_std_enableIRQ_nested() ((void)0)
#define EE_std_disableIRQ_nested() ((void)0)
#elif defined(__ALLOW_NESTED_IRQ__)
#define EE_decrement_IRQ_nesting_level() (--EE_IRQ_nesting_level)
#define EE_increment_IRQ_nesting_level() (++EE_IRQ_nesting_level)
/*  EE_std_enableIRQ_nested() and EE_std_disableIRQ_nested() must be defined in
 *  the platform-dependent part, as they dependend on the particular way
 *  interrupts are handled by the CPU. */
#else
#define EE_decrement_IRQ_nesting_level() (EE_IRQ_nesting_level = 0U)
#define EE_increment_IRQ_nesting_level() (EE_IRQ_nesting_level = 1U)
#define EE_std_enableIRQ_nested() ((void)0)
#define EE_std_disableIRQ_nested() ((void)0)
#endif

#if defined(__OO_BCC1__) || defined(__OO_BCC2__) || defined(__OO_ECC1__) || \
    defined(__OO_ECC2__) || defined(__AS_SC4__)
/* Function to be called at the end of a function service interrupt, to execute
   clean-up specifiend in Autosar standard */
__INLINE__ void __ALWAYS_INLINE__ EE_std_end_IRQ_post_stub(void)
{
  EE_IRQ_end_post_stub();
}
#else /* __OO_BCC1__ || __OO_BCC2__ || __OO_ECC1__ || __OO_ECC2__ */
#define EE_std_end_IRQ_post_stub()  ((void)0)
#endif /* __OO_BCC1__ || __OO_BCC2__ || __OO_ECC1__ || __OO_ECC2__ */

/* Function to be called at the end of a function servicing an interrupt.  Call
 * the scheduler and launch a new scheduled task (if any), or change the current
 * stack (if needed); return whenever there is nothing else to do.
 */
__INLINE__ void __ALWAYS_INLINE__ EE_std_after_IRQ_schedule(void)
{
    EE_IRQ_end_instance();
    if (EE_std_need_context_change(EE_std_endcycle_next_tid)) {
        EE_std_change_context(EE_std_endcycle_next_tid);
    }
}

#endif /* __INCLUDE_CPU_COMMON_EE_IRQSTUB__ */
