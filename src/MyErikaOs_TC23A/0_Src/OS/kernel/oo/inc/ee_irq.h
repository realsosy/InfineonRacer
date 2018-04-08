/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2012  Evidence Srl
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

/**
 * @author Errico Guidieri
 * @date  2012
 **/

#ifndef INCLUDE_OO_IRQ_H__
#define INCLUDE_OO_IRQ_H__

/**************************************************************************
  This header contains kernel API that have to be called by IRQ handlers
 **************************************************************************/

#ifndef __PRIVATE_IRQ_END_INSTANCE__
/* This primitive shall be atomic.
   This primitive shall be inserted as the last function in an IRQ handler.
   If the HAL allow IRQ nesting the C_end_instance should work as follows:
   - it must implement the preemption test only if it is the last IRQ on the
     stack
   - if there are other interrupts on the stack the IRQ end_instance should
     do nothing
*/
void EE_IRQ_end_instance(void);
/* This primitive shall be atomic.
   This primitive shall be inserted as the last function in an IRQ post-stub.
    This primitive done needed clean-up as restting kernel interrupt nested
    counters and release got resources if application forget to do that as
    specified by Autosar standard.
*/
void EE_IRQ_end_post_stub(void);
#endif /* __PRIVATE_IRQ_END_INSTANCE__ */

/*
 * ORTI ISR2 Support
 */
#ifdef __OO_ORTI_RUNNINGISR2__

/* This variable stores 0 if no ISR is running, or the address of the ISR stub
   generated for the particular ISR handler
   Initvalue: 0 */
extern volatile EE_ORTI_runningisr2_type EE_ORTI_runningisr2;

__INLINE__ EE_ORTI_runningisr2_type EE_ORTI_get_runningisr2(void)
{
    return EE_ORTI_runningisr2;
}

__INLINE__ void EE_ORTI_set_runningisr2(EE_ORTI_runningisr2_type isr2)
{
    EE_ORTI_runningisr2 = isr2;
    EE_ORTI_send_otm_runningisr2(isr2);
}

#else /* if __OO_ORTI_RUNNINGISR2__ */

#define EE_ORTI_get_runningisr2()         (NULL)
#define EE_ORTI_set_runningisr2(isr2)     ((void)0)

#endif /* else __OO_ORTI_RUNNINGISR2__ */

#endif /* INCLUDE_OO_IRQ_H__ */

