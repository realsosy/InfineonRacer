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
 * CVS: $Id: ee_force_schedule.c,v 1.2 2006/06/08 20:40:42 pj Exp $
 */

#include "ee_internal.h"

/* Force Scheduling: 

    - This is an internal function that has been inserted in the OO
      implementation because it is also needed because counters relies
      on such a rescheduling point when the counter increment is
      called inside a task (a call to this function is not needed when
      calling the counter increment inside an interrupt handler.

    - no checks are done at all; it is the user responsibility to take
      care that this function is called in the proper place.

    - the typical behavior of this function is -nothing-. It will just
      implement a preemption point for the functions that need it and
      that have not a preemption point hardwired in their code.

    - return values:
      Standard status: nothing
      Extended status: E_OS_CALLEVEL, if it was called at interrupt level

*/

#ifndef __PRIVATE_FORCESCHEDULE__

#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_ForceSchedule(void)
#else
void EE_oo_ForceSchedule(void)
#endif
{
  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_FORCESCHEDULE);

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
    EE_oo_notify_error_service(OSServiceId_ForceSchedule , E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_FORCESCHEDULE);

    return E_OS_DISABLEDINT;
  }

  /* check for a call at interrupt level: This must be the FIRST check!*/
  if (EE_hal_get_IRQ_nesting_level()) {
    EE_ORTI_set_lasterror(E_OS_CALLEVEL);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_service(OSServiceId_ForceSchedule ,E_OS_CALLEVEL);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_FORCESCHEDULE);

    return E_OS_CALLEVEL;
  }
#endif /* __OO_EXTENDED_STATUS__ */

  flag = EE_hal_begin_nested_primitive();

  EE_oo_preemption_point();

  EE_hal_end_nested_primitive(flag);

  EE_ORTI_set_service_out(EE_SERVICETRACE_FORCESCHEDULE);
  
#ifdef __OO_EXTENDED_STATUS__
  return E_OK;
#endif /* __OO_EXTENDED_STATUS__ */
}

#endif /* __PRIVATE_FORCESCHEDULE__ */

