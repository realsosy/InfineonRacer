/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2008  Evidence Srl
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
 * Author: 2002 Paolo Gai
 * CVS: $Id: ee_evwait.c,v 1.3 2006/05/03 05:59:55 pj Exp $
 */

#include "ee_internal.h"

/* WaitEvent:
   - can be called from an extended task only
   - the task state is put to wait until an event in the mask has been set
   - if the task blocks -> reschedulig + internal resource released
   - returns (only extended state)
       E_OS_RESOURCE task occupies a resource
       E_OS_ACCESS   if the task is not an extended task
       E_OS_CALLEVEL called at interrupt level
*/


#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
#ifndef __PRIVATE_WAITEVENT__

#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_WaitEvent(EventMaskType Mask)
#else
void EE_oo_WaitEvent(EventMaskType Mask)
#endif
{
  TaskType current;
  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_WAITEVENT);

  current = EE_stk_queryfirst();

#ifdef __OO_EXTENDED_STATUS__

  /*
    OS093: If interrupts are disabled/suspended by a Task/OsIsr and the
      Task/OsIsr calls any OS service (excluding the interrupt services)
      then the Operating System shall ignore the service AND shall return
      E_OS_DISABLEDINT if the service returns a StatusType value.
  */
  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_WaitEvent(Mask, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_WAITEVENT);

    return E_OS_DISABLEDINT;
  }

  /* check for a call at interrupt level:
   * Note: this must be the FIRST error check!!!
   */
  if ((EE_hal_get_IRQ_nesting_level() != 0U) || (current==EE_NIL)) {
    EE_ORTI_set_lasterror(E_OS_CALLEVEL);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_WaitEvent(Mask, E_OS_CALLEVEL);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_WAITEVENT);

    return E_OS_CALLEVEL;
  }

#ifndef __OO_NO_RESOURCES__
  /* check for busy resources */ 
  if (EE_th_resource_last[current] != EE_UREG_MINUS1) {
    EE_ORTI_set_lasterror(E_OS_RESOURCE);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_WaitEvent(Mask, E_OS_RESOURCE);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_WAITEVENT);

    return E_OS_RESOURCE;
  }
#endif /* __OO_NO_RESOURCES__ */

  /* check if the task is an extended task */
  if (EE_th_is_extended[current] == 0U) {
    EE_ORTI_set_lasterror(E_OS_ACCESS);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_WaitEvent(Mask, E_OS_ACCESS);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_WAITEVENT);

    return E_OS_ACCESS;
  }
#endif /* __OO_EXTENDED_STATUS__ */

  flag = EE_hal_begin_nested_primitive();

  /* check if we have to wait */
  if ((EE_th_event_active[current] & Mask) == 0U) {
    /* set the waiting mask */
    EE_th_event_waitmask[current] = Mask;

    /* Prepare current Task to block */
    EE_oo_prepare_to_block();

    /* then, the task is not inserted in any queue! it will be woken
       up by a SetEvent using a EE_hal_stkchange... */

    /* Reschedule next task:
     * check if there is to schedule a ready thread or pop a preempted
     * thread 
     */
    EE_oo_reschedule_on_block();

    /* reset the waiting mask */
    EE_th_event_waitmask[current] = 0U;
  }

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_WAITEVENT);

#ifdef __OO_EXTENDED_STATUS__
  return E_OK;
#endif
}

#endif /* __PRIVATE_WAITEVENT__ */
#endif /* defined(__OO_ECC1__) || defined(__OO_ECC2__) */
