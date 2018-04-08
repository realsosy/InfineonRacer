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
 * CVS: $Id: ee_lockres.c,v 1.2 2006/02/08 11:37:31 pj Exp $
 */

#include "ee_internal.h"

#if defined(RTDRUID_CONFIGURATOR_NUMBER) \
 && (RTDRUID_CONFIGURATOR_NUMBER >= RTDRUID_CONFNUM_NO_ORTI_VARS)

/* ORTI variables */

#ifdef __OO_ORTI_PRIORITY__
EE_TYPEPRIO EE_ORTI_resource_oldpriority[EE_MAX_RESOURCE];
#endif

#ifdef __OO_ORTI_RES_LOCKER_TASK__
EE_TID EE_ORTI_res_locker[EE_MAX_RESOURCE];
#endif

#endif /* RTDRUID_CONFIGURATOR_NUMBER */

/* GetResource:
   - lock a resource
   - lock/unlock on the same function level
   - no point of rescheduling inside critical sections!!!
   - returns (only extended state)
       E_OS_ID     if resource number is invalid
       E_OS_ACCESS if resource already locked or interrupt routine 
                   greater than the ceiling priority

   Extended Status: Count for locked resources!!!!
*/

#ifndef __PRIVATE_GETRESOURCE__

#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_GetResource(ResourceType ResID)
#else
void EE_oo_GetResource(ResourceType ResID)
#endif
{
#if defined(__OO_EXTENDED_STATUS__) || defined(__OO_ORTI_PRIORITY__) || \
    defined(__OO_ISR2_RESOURCES__)
  register TaskType current;
#endif

#ifdef __MSRP__
  register EE_UREG isGlobal;
#endif

  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_GETRESOURCE);

#ifdef __MSRP__
  isGlobal = EE_oo_isGlobal(ResID);
  ResID = ResID & ~EE_GLOBAL_MUTEX;
#endif

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
    EE_oo_notify_error_GetResource(ResID, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETRESOURCE);

    return E_OS_DISABLEDINT;
  }

  /* no comparison for ResID < 0, the type is unsigned! */
  if (ResID >= EE_MAX_RESOURCE) {

    EE_ORTI_set_lasterror(E_OS_ID);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetResource(ResID, E_OS_ID);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETRESOURCE);

    return E_OS_ID;
  }

  /* I begin the primitive */
  flag = EE_hal_begin_nested_primitive();
  current = EE_stk_queryfirst();

  {
    /* Resource access error block flag */
    register EE_BIT  res_access_error_flag = 0U;
    /* Check if the resource is already gotten */
    if(EE_resource_locked[ResID] != 0U) {
      res_access_error_flag = 1U;
    } else if(EE_hal_get_IRQ_nesting_level() == 0U) {
      /* If I'm in a Task check invalid task and ceiling */
      if ((current == EE_NIL) ||
          (EE_th_ready_prio[current] > EE_resource_ceiling[ResID])) {
        res_access_error_flag = 1U;
      }
    } else {
#ifdef __OO_ISR2_RESOURCES__
      /* Check if interrupt controller priority is greater than new priority */
      if(EE_hal_check_int_prio_if_higher(EE_resource_isr2_priority[ResID])) {
        res_access_error_flag = 1U;
      }
#else
      res_access_error_flag = 1U;
#endif
    }

    if(res_access_error_flag != 0U) {
      EE_ORTI_set_lasterror(E_OS_ACCESS);
      EE_oo_notify_error_GetResource(ResID, E_OS_ACCESS);
      EE_hal_end_nested_primitive(flag);
      EE_ORTI_set_service_out(EE_SERVICETRACE_GETRESOURCE);
      return E_OS_ACCESS;
    }
  }

#else
  /* I begin the primitive */
  flag = EE_hal_begin_nested_primitive();
#endif /* __OO_EXTENDED_STATUS__ */

#if (defined(__OO_ORTI_PRIORITY__) || defined(__OO_ISR2_RESOURCES__)) && \
    (!defined(__OO_EXTENDED_STATUS__))
  current = EE_stk_queryfirst();
#endif

  /* Handle, if needed, resource sharing with ISR2 */
#ifdef __OO_ISR2_RESOURCES__
  /* Save old priority to restore it when release the resource */
  EE_isr2_oldpriority[ResID] = EE_hal_get_int_prio();
  /* Raise ISR2 priority if needed */
  flag = EE_hal_raise_int_prio_if_less(EE_resource_isr2_priority[ResID], flag);

  /* If actually we are inside an ISR2 assign a fake TID to access stack */
  if(EE_hal_get_IRQ_nesting_level() > 0U) {
    current  = EE_oo_assign_TID_to_ISR2();
  }
#endif /* __OO_ISR2_RESOURCES__ */

#if defined(__OO_EXTENDED_STATUS__) || defined(__OO_ISR2_RESOURCES__)
  /* insert the resource into the data structure */
  EE_resource_stack[ResID] = EE_th_resource_last[current];
  EE_th_resource_last[current] = ResID;
#endif /* __OO_EXTENDED_STATUS__ || __OO_ISR2_RESOURCES__ */

#if defined(__OO_EXTENDED_STATUS__) || defined(__OO_ORTI_RES_ISLOCKED__)
  EE_resource_locked[ResID] = 1U;
#endif

#ifdef __OO_ORTI_RES_LOCKER_TASK__
  EE_ORTI_res_locker[ResID] = (EE_TID)current;
#endif

  EE_resource_oldceiling[ResID] = EE_sys_ceiling;
  EE_sys_ceiling |= EE_resource_ceiling[ResID];

#ifdef __OO_ORTI_PRIORITY__
  EE_ORTI_resource_oldpriority[ResID] = EE_ORTI_th_priority[current];
  if (EE_ORTI_th_priority[current] < EE_resource_ceiling[ResID]) {
    EE_ORTI_th_priority[current] = EE_resource_ceiling[ResID];
  }
#endif

#ifdef __MSRP__
  /* if this is a global resource, lock the others CPUs */
  if (isGlobal) {
    EE_hal_spin_in((EE_TYPESPIN)ResID);
  }
#endif

  EE_hal_end_nested_primitive(flag);

  EE_ORTI_set_service_out(EE_SERVICETRACE_GETRESOURCE);

#ifdef __OO_EXTENDED_STATUS__
  return E_OK;
#endif
}

#endif /* __PRIVATE_GETRESOURCE__ */

