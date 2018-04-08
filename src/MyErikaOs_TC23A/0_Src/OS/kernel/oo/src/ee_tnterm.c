/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2011  Evidence Srl
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
 * Author: 2011 Errico Guidieri
 */

#include "ee_internal.h"

/* EE_thread_not_terminated:
   - This is the function that is called if task body doesn't call correctly
     TerminateTask
   Needed tuo fulfill Autosar OS software requirements OS052 OS069 OS070 OS239
*/

#ifndef PRIVATE_THREANTERMINATED
void EE_thread_not_terminated(void)
{
  register EE_TID current;

  /* IRQ disabling for primitive atomicity (It doesn't make sense use 
     EE_hal_begin_nested_primitive because at the end of the function I won't
     call EE_hal_end_nested_primitive) */
  EE_hal_disableIRQ();

  current = EE_stk_queryfirst();

  /* OS069: If a task returns from its entry function without making a 
      TerminateTask() or ChainTask() call AND the error hook is configured,
      the Operating System shall call the ErrorHook() 
      (this is done regardless of whether the task causes other errors,
       e.g. E_OS_RESOURCE) with status E_OS_MISSINGEND before the task leaves
      the RUNNING state.
  */
  EE_ORTI_set_lasterror(E_OS_MISSINGEND);
  EE_oo_notify_error_service(OSId_TaskBody, E_OS_MISSINGEND);

  /* OS070: If a task returns from the entry function without making a 
      TerminateTask() or ChainTask() call and still holds OSEK Resources, 
      the Operating System shall release them. 
  */
  (void)EE_oo_release_all_resources(current);

  /* OS052, OS239: terminate task + call PostTaskHook + ISRs counters reset
     in EE_thread_end_instance. Interrupts enabling is done by
     EE_std_run_task_code (cpu/common ee_context.c)
  */

  EE_hal_terminate_task(current);
}
#endif /* PRIVATE_THREANTERMINATED */
