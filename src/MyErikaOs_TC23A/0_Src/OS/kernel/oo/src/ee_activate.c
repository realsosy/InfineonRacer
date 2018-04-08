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
 * CVS: $Id: ee_activate.c,v 1.5 2006/01/05 14:37:22 pj Exp $
 */

#include "ee_internal.h"

/* ActivateTask:
   - The task is moved from the suspended state to the ready state
   - called from interrupts, from tasks, from StartupHook
   - returns E_OS_LIMIT if too many activations are issued
	     E_OK otherwise
             E_OS_ID if the taskID is invalid (Extended status)
   - clears the events of a task (extended task)

   NOTE: part of this source code is copied into altick.c!
*/

#ifndef __PRIVATE_ACTIVATETASK__
StatusType EE_oo_ActivateTask(TaskType TaskID)
{
  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_ACTIVATETASK);

#ifdef __RN_TASK__
  if (EE_IS_TID_REMOTE(TaskID)) {
    EE_TYPERN_PARAM par;
    par.pending = 1U;
    /* forward the request to another CPU */
    (void)EE_rn_send((EE_SREG)EE_UNMARK_REMOTE_TID(TaskID),
        EE_RN_TASK, par );

    EE_ORTI_set_service_out(EE_SERVICETRACE_ACTIVATETASK);

    return E_OK;
  }
#endif /* __RN_TASK__ */


  /*
    OS093: If interrupts are disabled/suspended by a Task/OsIsr and the
      Task/OsIsr calls any OS service (excluding the interrupt services)
      then the Operating System shall ignore the service AND shall return
      E_OS_DISABLEDINT if the service returns a StatusType value.
  */
  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_ActivateTask(TaskID, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_ACTIVATETASK);

    return E_OS_DISABLEDINT;
  }
  
#ifdef __OO_EXTENDED_STATUS__    
  /* check if the task Id is valid */
  if ((TaskID < 0) || (TaskID >= EE_MAX_TASK)) {
    EE_ORTI_set_lasterror(E_OS_ID);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_ActivateTask(TaskID, E_OS_ID);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_ACTIVATETASK);

    return E_OS_ID;
  }
#endif

  flag = EE_hal_begin_nested_primitive();

  /* check for pending activations */
  if (EE_th_rnact[TaskID] == (EE_UREG)0U) {
    EE_ORTI_set_lasterror(E_OS_LIMIT);

    EE_oo_notify_error_ActivateTask(TaskID, E_OS_LIMIT);

    EE_hal_end_nested_primitive(flag);
    EE_ORTI_set_service_out(EE_SERVICETRACE_ACTIVATETASK);

    return E_OS_LIMIT;
  } 
  EE_th_rnact[TaskID]--;
  
  /* see also thendin.c
     put the task in the ready state:
     - if the task is basic/BCC1 or extended it can be here only because
     it had rnact=1 before the call, and so it is in suspended state
     - if the task is basic/BCC2 it can be that it is ready or 
     running. in that case we have to check and queue it anyway
  */
  EE_oo_set_th_status_ready(TaskID);

  /* insert the task in the ready queue */
  EE_rq_insert(TaskID);
  
  /* check for preemption: 
     this test has to be done only if we are inside a task */ 
  if ((EE_hal_get_IRQ_nesting_level() == 0U)
#if (defined(__OO_HAS_STARTUPHOOK__)) || (defined(__OO_AUTOSTART_TASK__))
      && (EE_oo_no_preemption == 0U)
#endif
      ) {

    /* we are inside a task */
    EE_oo_preemption_point();
  }

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_ACTIVATETASK);

  return E_OK;
}
#endif /* !__PRIVATE_ACTIVATETASK__ */

