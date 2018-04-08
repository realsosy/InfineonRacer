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
 * CVS: $Id: ee_sempost.c,v 1.3 2006/12/03 22:07:50 pj Exp $
 */

#include "ee_internal.h"

/* PostSem:
  - This primitive can be called from ISRs, Tasks, and from the background
    (main) task.
  - for BCC1 and BCC2, a smaller reduced version is provided.
  - The primitive implements the traditional counting Semaphore post operation.
  - If there are tasks blocked on the Semaphore, then one of these tasks is
    awaken. In that case, the call enforces rescheduling.
    If there are no tasks blocked on the Semaphore, the semaphore counter is
    incremented.
  - Error value returned
    Standard:  No error, E_OK 
    E_OS_VALUE Semaphore counter has the maximum value

    Conformance: 
    - BCC1, BCC2 (without wakeup)
    - ECC1, ECC2 (with wakeup)
*/

#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
#ifndef __PRIVATE_POSTSEM__

StatusType EE_oo_PostSem(SemRefType Sem)
{
  register TaskType unlocked_tmp;
  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_POSTSEM);

  /*
    OS093: If interrupts are disabled/suspended by a Task/OsIsr and the
      Task/OsIsr calls any OS service (excluding the interrupt services)
      then the Operating System shall ignore the service AND shall return
      E_OS_DISABLEDINT if the service returns a StatusType value.
  */
  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_PostSem(Sem, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_POSTSEM);

    return E_OS_DISABLEDINT;
  }

  flag = EE_hal_begin_nested_primitive();

  /* check if the post on the semaphore wakes up someone */
  if ((Sem != NULL) && (Sem->first != EE_NIL)) {

    /* update the semaphore queue */
    unlocked_tmp = Sem->first;
    if ((Sem->first = EE_th_next[unlocked_tmp]) == EE_NIL) {
      Sem->last = EE_NIL;
    }

    /* if yes, the task must go back into the READY state */
    EE_th_status[unlocked_tmp] = READY;
    /* insert the task in the ready queue */
    EE_rq_insert(unlocked_tmp);
  
    /* and if I am at task level, check for preemption... */
    if (EE_hal_get_IRQ_nesting_level()==(EE_UREG)NULL) {
      /* we are inside a task */
      EE_oo_preemption_point();
    }
  }
  else {
    if ((Sem != NULL)) {
      if (Sem->count == EE_MAX_SEM_COUNTER) {
        EE_ORTI_set_lasterror(E_OS_VALUE);

        EE_oo_notify_error_PostSem(Sem, E_OS_VALUE);

        EE_hal_end_nested_primitive(flag);
        EE_ORTI_set_service_out(EE_SERVICETRACE_POSTSEM);

        return E_OS_VALUE;
      }

      Sem->count++;
    }
  }

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_POSTSEM);

  return E_OK;
}

#endif /* __PRIVATE_POSTSEM__ */
#endif /* ECC1/ECC2 */


/* This is a simplified version of PostSem */

#if defined(__OO_BCC1__) || defined(__OO_BCC2__)
#ifndef __PRIVATE_POSTSEM__

StatusType EE_oo_PostSem(SemRefType Sem)
{
  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_POSTSEM);

  flag = EE_hal_begin_nested_primitive();

  /* the wake up check is removed because there is no blocking wait! */
  if (Sem != NULL) {
    if (Sem->count == EE_MAX_SEM_COUNTER) {

      EE_ORTI_set_lasterror(E_OS_VALUE);

      EE_oo_notify_error_PostSem(Sem, E_OS_VALUE);

      EE_hal_end_nested_primitive(flag);
      EE_ORTI_set_service_out(EE_SERVICETRACE_POSTSEM);

      return E_OS_VALUE;
    }

    Sem->count++;
  }

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_POSTSEM);

  return E_OK;
}

#endif /* __PRIVATE_POSTSEM__ */
#endif /* BCC1/BCC2 */
