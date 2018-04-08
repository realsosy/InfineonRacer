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
 * CVS: $Id: ee_schedule.c,v 1.1 2005/07/16 12:23:42 pj Exp $
 */

#include "ee_internal.h"

/* Schedule: 
    - the internal resource is released; 
    - no check if resources are still used by the task
    - then rescheduling takes place 
    - and then the internal resource is taken again
    - returns
      Extended status
      E_OS_CALLLEVEL if called at interrupt level 
      E_OS_RESOURCE if the calling task occupies resources
*/

#ifndef __PRIVATE_SCHEDULE__

StatusType EE_oo_Schedule(void)
{
  EE_TID current, rq;
  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_SCHEDULE);

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
    EE_oo_notify_error_service(OSServiceId_Schedule, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_SCHEDULE);

    return E_OS_DISABLEDINT;
  }

  /* check for a call at interrupt level */
  if (EE_hal_get_IRQ_nesting_level()) {
    EE_ORTI_set_lasterror(E_OS_CALLEVEL);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_service(OSServiceId_Schedule, E_OS_CALLEVEL);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_SCHEDULE);

    return E_OS_CALLEVEL;
  }


#ifndef __OO_NO_RESOURCES__
  /* check for busy resources */
  if (EE_th_resource_last[current] != EE_UREG_MINUS1) {
    EE_ORTI_set_lasterror(E_OS_RESOURCE);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_service(OSServiceId_Schedule, E_OS_RESOURCE);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_SCHEDULE);

    return E_OS_RESOURCE;
  }
#endif /* __OO_NO_RESOURCES__ */

#endif /* __OO_EXTENDED_STATUS__ */

  flag = EE_hal_begin_nested_primitive();
  
  /* check if there is a preemption */
  rq = EE_rq_queryfirst();
  if (rq != EE_NIL) {
    /* The standard says that "Schedule enables a processor assignment
       to other tasks with lower priority than the ceiling priority of
       the internal resource and higher priority than the priority of
       the calling task". That means that only tasks currently in the
       ready queue with the ready priority > than the ready priority
       of the running task can be executed... */
    if (EE_th_ready_prio[current] < EE_th_ready_prio[rq]) {
      EE_oo_call_PostTaskHook();
      /* release the internal resource */
      EE_sys_ceiling &= ~EE_th_dispatch_prio[current];

      /* set the ready priority bit. In that way we prevent preemption
       * from all the tasks with lower priority than the current task.
       *
       * NOTE: Setting the ready priority is legal because if the task
       * has been scheduled it must be that the system_ceiling <
       * ready_priority, and so (system_ceiling &ready_priority)=0!!!
       * after a task has been put in execution, the dispatch priority
       * is set. no other bits are set when this function is called
       * (all the resources must be unlocked, and all the task that
       * preempts the running task must have been finished!.
       */
      EE_sys_ceiling |= EE_th_ready_prio[current];

      /* we have to put the task in the ready status */
      EE_th_status[current] = READY;
      /* but not in the ready queue!!! 
         the task remains into the stacked queue!
      */

      /* get the new internal resource */
      EE_sys_ceiling |= EE_th_dispatch_prio[rq];
      /* put the task in running state */
      EE_th_status[rq] = RUNNING;

      EE_ORTI_set_th_eq_dispatch_prio(current);
      EE_ORTI_set_th_eq_dispatch_prio(rq);
      
      /* Execute context SWITCH, this method return when we have a switch
         back on the previous TASK contest.
       */
      EE_oo_run_next_task();

      /* release the ready priority bit and... */
      EE_sys_ceiling &= ~EE_th_ready_prio[current];
      /* ...get again the internal resource */
      EE_sys_ceiling |= EE_th_dispatch_prio[current];

      EE_ORTI_set_th_eq_dispatch_prio(current);

      /* Call PreTaskHook in the first TASK context */
      EE_oo_call_PreTaskHook();
    }
  }
  
  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_SCHEDULE);

  return E_OK;
}

#endif

