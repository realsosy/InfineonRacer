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
 * Author: 2002-2004 Paolo Gai
 * CVS: $Id: ee_startos.c,v 1.5 2006/12/03 22:07:50 pj Exp $
 */

#include "ee_internal.h"

/*
 * ORTI variables
 */

#if defined(RTDRUID_CONFIGURATOR_NUMBER) \
 && (RTDRUID_CONFIGURATOR_NUMBER >= RTDRUID_CONFNUM_NO_ORTI_VARS)

#ifdef __OO_ORTI_LASTERROR__
StatusType EE_ORTI_lasterror = E_OK;
#endif

#ifdef __OO_ORTI_SERVICETRACE__
volatile EE_UINT8 EE_ORTI_servicetrace;
#endif

#ifdef __OO_ORTI_PRIORITY__
EE_TYPEPRIO EE_ORTI_th_priority[EE_MAX_TASK];
#endif

#endif /* RTDRUID_CONFIGURATOR_NUMBER */


#ifdef __OO_ORTI_RUNNINGISR2__
volatile EE_ORTI_runningisr2_type EE_ORTI_runningisr2;
#endif


/* StartOS

  - called to start the operating system in a specific Application
    mode
  - it does not need to return to the caller
*/
#ifndef __PRIVATE_STARTOS__

#ifdef __OO_AUTOSTART_TASK__
/*
 * MISRA NOTE: This function is a workaround to provide
 * the capability to access task id array as a real array
 * although it is declared as pointer.
 * This measure prevents from misra error:
 * "pointer arithmetic other than array indexing used"
 */
static EE_TID compute_task_tid(const EE_TID task_id_vec[], EE_UINT8 t){
	return task_id_vec[t];
}

static void EE_oo_autostart_tasks(AppModeType Mode)
{
    register EE_UINT8 n, t;
    n = (EE_UINT8)(EE_oo_autostart_task_data[Mode].n);
    for (t = 0U; t<n; t++) {
      (void)EE_oo_ActivateTask(compute_task_tid(EE_oo_autostart_task_data[Mode].task, t));
    }

}
#else /* __OO_AUTOSTART_TASK__ */
#define EE_oo_autostart_tasks(Mode)     ((void)0)
#endif /* __OO_AUTOSTART_TASK__ */

#ifdef __OO_AUTOSTART_ALARM__
/*
 * MISRA NOTE: This function is a workaround to provide
 * the capability to access alarm id array as a real array
 * although it is declared as pointer.
 * This measure prevents from misra error:
 * "pointer arithmetic other than array indexing used"
 * please note that this function is very similiar to
 * compute_task_tid but the first argument is a vector
 * and misra does not allow the cast from EE_TYPEALARM*
 * to EE_TID* and viceversa. Therefore the two function,
 * altought similiar need to be kept separated.
 */
static EE_TID compute_alarm_id(const EE_TYPEALARM alarm_id_vec[], EE_UINT8 t){
	return alarm_id_vec[t];
}

static void  EE_oo_autostart_alarms(AppModeType Mode)
{
  register EE_UINT8 n, t;
  n = (EE_UINT8)(EE_oo_autostart_alarm_data[Mode].n);
  for (t = 0U; t<n; t++) {
    EE_TYPEALARM alarm_temp = compute_alarm_id(
      EE_oo_autostart_alarm_data[Mode].alarm, t);
    (void)EE_oo_SetRelAlarm(alarm_temp,
      EE_oo_autostart_alarm_increment[alarm_temp],
      EE_oo_autostart_alarm_cycle[alarm_temp]);
  }
}
#else   /* __OO_AUTOSTART_ALARM__ */
#define EE_oo_autostart_alarms(Mode)    ((void)0)
#endif  /* __OO_AUTOSTART_ALARM__ */

#if defined(__OO_AUTOSTART_TASK__) || defined(__OO_AUTOSTART_ALARM__)
static void EE_oo_autostart_os(AppModeType Mode)
{
  if (Mode < EE_MAX_APPMODE) {
    EE_oo_autostart_tasks(Mode);
    EE_oo_autostart_alarms(Mode);
  }
}
#else /* __OO_AUTOSTART_TASK__ || __OO_AUTOSTART_ALARM__ */
#define EE_oo_autostart_os(Mode)    ((void)0);
#endif /* __OO_AUTOSTART_TASK__ || __OO_AUTOSTART_ALARM__ */

#ifdef __OO_HAS_STARTUPHOOK__
static void EE_oo_call_StartupHook(void)
{
  StartupHook();
}
#else /*  __OO_HAS_STARTUPHOOK__ */
#define EE_oo_call_StartupHook()    ((void)0)
#endif /* __OO_HAS_STARTUPHOOK__ */

#if defined(__OO_STARTOS_OLD__)
/*
 * If __OO_STARTOS_OLD__ is defined, the StartOS() returns,
 * (this is the old behaviour before the Autosar compliance).
 */
#define EE_oo_start_os()    ((void)0)
#else
/*
 * If __OO_STARTOS_OLD__ is not defined the system behaves 
 * like Autosar requires: infinite loop (do not return).
 * This is the standard solution.
 */
static void EE_oo_start_os(void)
{
  /*
   * This static declaration prevents from MISRA 14.2/FlexeLint 522:
   * lacks side-effects
   */
  static volatile int started;
  started = 1;

  for(;;) {
    ;
  }
}
#endif /* __OO_STARTOS_OLD__ */

StatusType EE_oo_StartOS(AppModeType Mode)
{
  /* Static flag to check if StartOS has been called already */
  static EE_BIT EE_oo_start_os_flag;

  register EE_TID rq;
  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_STARTOS);

  /* Check if this is the first time that I call StartOS */
  if(EE_oo_start_os_flag != 0U){
    EE_ORTI_set_lasterror(E_OS_STATE);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_StartOS(Mode, E_OS_STATE);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_STARTOS);

    return E_OS_STATE;
  }

  /* Initialize ORTI variables, so the debugger can see their initial value */
  EE_ORTI_set_runningisr2((EE_ORTI_runningisr2_type)NULL);

  /* I cannot accept an interruption from hereunder */
  flag = EE_hal_begin_nested_primitive();

#ifdef __OO_CPU_HAS_STARTOS_ROUTINE__
  /* the CPU initialization can return an error; 0 if all ok */
  if (EE_cpu_startos()) {
    EE_ORTI_set_lasterror(E_OS_SYS_INIT);

    EE_oo_notify_error_StartOS(Mode, E_OS_SYS_INIT);

    EE_hal_end_nested_primitive(flag);
    EE_ORTI_set_service_out(EE_SERVICETRACE_STARTOS);

    return E_OS_SYS_INIT;
  }
#endif /* __OO_CPU_HAS_STARTOS_ROUTINE__ */

  EE_ApplicationMode = Mode;

  /* Set the StartOS flag after all error checks and before return to user
    code in StartupHook */
  EE_oo_start_os_flag = 1U;

#if defined(__OO_HAS_STARTUPHOOK__) || defined(__OO_AUTOSTART_TASK__) || \
  defined(__OO_AUTOSTART_ALARM__)
  EE_oo_no_preemption = 1U;

  EE_oo_call_StartupHook();

  EE_oo_autostart_os(Mode);

  EE_oo_no_preemption = 0U;
#endif /* __OO_HAS_STARTUPHOOK__ || __OO_AUTOSTART_TASK__ ||
          __OO_AUTOSTART_ALARM__*/

  /* check if there is a preemption.
      This code is optimized for this case, but for code readability we could
      use EE_oo_preemption_point too.
  */
  rq = EE_rq_queryfirst();
  if (rq != EE_NIL) {
      /* get the internal resource */
      EE_sys_ceiling |= EE_th_dispatch_prio[rq];
      /* put the task in running state */
      EE_th_status[rq] = RUNNING;

      EE_ORTI_set_th_eq_dispatch_prio(rq);

      /* Since we are into the StartOS, the task was NOT previously on
         the stack... (we do not have to check the wasstacked field)
         So the code is equal for basic and extended task
         (all classes: BCC1, BCC2, ECC1, ECC2 are equal here)
         Look at EE_oo_run_next_task in ee_internal.h to see the usual
         differences.
       */
      EE_hal_ready2stacked(EE_rq2stk_exchange());
  }

  /* reset old value for interrupts */
  EE_hal_end_nested_primitive(flag);

  /* Eventually return to main task with interrupts enabled */
  EE_hal_enableIRQ();

  EE_ORTI_set_service_out(EE_SERVICETRACE_STARTOS);

  /* If __OO_STARTOS_AS__ is defined -> endless cycle, otherwise return. */
  EE_oo_start_os();

  return E_OK;
}
#endif /* __PRIVATE_STARTOS__ */

