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
 * CVS: $Id: ee_evget.c,v 1.1 2005/07/16 12:23:42 pj Exp $
 */

#include "ee_internal.h"

/* GetEvent:
   - can be called from a task, from ISR, from error, pre e post taskhook
   - clear the events for the task
   - returns (only extended state)
       E_OS_ID       task id invalid
       E_OS_ACCESS   if the task is not an extended task
       E_OS_STATE    the task id is in the suspended state
*/


#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
#ifndef __PRIVATE_GETEVENT__

#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_GetEvent(TaskType TaskID, EventMaskRefType Event)
#else
void EE_oo_GetEvent(TaskType TaskID, EventMaskRefType Event)
#endif
{
  register EE_FREG flag;
  
  EE_ORTI_set_service_in(EE_SERVICETRACE_GETEVENT);

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
    EE_oo_notify_error_GetEvent(TaskID, Event, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETEVENT);

    return E_OS_DISABLEDINT;
  }

  /* check if the task Id is valid */
  if ((TaskID < 0) || (TaskID >= EE_MAX_TASK)) {
    EE_ORTI_set_lasterror(E_OS_ID);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetEvent(TaskID, Event, E_OS_ID);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETEVENT);

    return E_OS_ID;
  }

  if (EE_th_is_extended[TaskID] == 0U) {
    EE_ORTI_set_lasterror(E_OS_ACCESS);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetEvent(TaskID, Event, E_OS_ACCESS);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETEVENT);

    return E_OS_ACCESS;
  }
#endif /* __OO_EXTENDED_STATUS__ */

  flag = EE_hal_begin_nested_primitive();

#ifdef __OO_EXTENDED_STATUS__    
  if (EE_th_status[TaskID] == SUSPENDED) {
    EE_ORTI_set_lasterror(E_OS_STATE);

    EE_oo_notify_error_GetEvent(TaskID, Event, E_OS_STATE);

    EE_hal_end_nested_primitive(flag);
    EE_ORTI_set_service_out(EE_SERVICETRACE_GETEVENT);

    return E_OS_STATE;
  }
#endif /* __OO_EXTENDED_STATUS__ */

  if (Event != (EventMaskRefType)NULL) {
    *Event = EE_th_event_active[TaskID];
  }

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_GETEVENT);

#ifdef __OO_EXTENDED_STATUS__
  return E_OK;
#endif
}

#endif /* __PRIVATE_GETEVENT__ */
#endif /* #ifndef __PRIVATE_GETEVENT__ */
