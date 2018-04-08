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
 * CVS: $Id: ee_internal.h,v 1.6 2006/12/03 22:07:50 pj Exp $
 */

#ifndef __INCLUDE_OO_INTERNAL_H__
#define __INCLUDE_OO_INTERNAL_H__

#include "kernel/oo/inc/ee_common.h"
#include "kernel/oo/inc/ee_intfunc.h"
#include "kernel/oo/inc/ee_irq.h"


/* This function notifies a tick to a hardware counter.
   That is, the counter is
   incremented by 1.  It must be called into an ISR2 or into a
   task notify that the event linked to the counter occurred.

   The function will also implement the notification of expired alarms
   (calling an alarm callback, setting an event, or activating a
   task).

   The function can be considered atomic, and NO RESCHEDULING will
   take place after the execution of this function. To implement the
   rescheduling at task level, you can use the Schedule() or the
   ForceSchedule() functions just after this notification.

   see also internal.h
*/
#ifndef __OO_NO_ALARMS__

StatusType EE_oo_IncrementCounterHardware(CounterType CounterID);
void       EE_oo_IncrementCounterImplementation(CounterType CounterID);

/* kernel internal API */
#define IncrementCounterHardware EE_oo_IncrementCounterHardware

/* Helper function (0 as increment means next tick)*/
void EE_oo_alarm_insert(AlarmType AlarmID, TickType increment);

#endif

/*************************************************************************
 HAL extensions
 *************************************************************************/

 /* these are the functions that have been inserted to support tha OO layer
    under the EE HAL.
    
    - all the functions for interrupt handling (13.3)
    - EE_hal_begin_nested_primitive
      EE_hal_end_nested_primitive 
      (for primitives that can be called both into a task and into an ISR2
    - EE_hal_terminate_task(EE_TID t)
    - EE_hal_terminate_savestk(EE_TID t)
      EE_oo_preemption_point() execute task preemption if is needed
    - EE_oo_shutdown() if not redefined it does for(;;);
    - All the alarm constants listed in 13.6.4
 */


/***************************************************************************
 * Internal data structures and functions
 ***************************************************************************/

/*
    Call Hooks utilities
 */

#ifdef __OO_HAS_PRETASKHOOK__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_call_PreTaskHook(void)
{
    PreTaskHook();
}

/* Call PreTaskHook only if given TaskID is not main task */
__INLINE__ void __ALWAYS_INLINE__ EE_oo_call_with_nil_check_PreTaskHook(
    TaskType TaskID)
{
    if (TaskID != EE_NIL) {
        PreTaskHook();
    }
}
#else /* __OO_HAS_PRETASKHOOK__ */
#define EE_oo_call_PreTaskHook()                        ((void)0)
#define EE_oo_call_with_nil_check_PreTaskHook(TaskID)   ((void)0)
#endif /* __OO_HAS_PRETASKHOOK__ */

#if defined(__OO_HAS_POSTTASKHOOK__)
__INLINE__ void __ALWAYS_INLINE__ EE_oo_call_PostTaskHook(void)
{
    PostTaskHook();
}
#else /* __OO_HAS_POSTTASKHOOK__ */
#define EE_oo_call_PostTaskHook()   ((void)0)
#endif /* __OO_HAS_POSTTASKHOOK__ */

/* a flag that says if we are inside the startupHook/autostart rutines or not */
#if defined(__OO_HAS_STARTUPHOOK__) || defined(__OO_AUTOSTART_TASK__) ||\
  defined(__OO_AUTOSTART_ALARM__)
/* this variable is defined into lookup.c! */
extern EE_TYPEBOOL EE_oo_no_preemption;
#endif

/* Used to check if we are in disable interrupt error. It return
   'signed register type' because usally it is native intger type.
 */
__INLINE__ EE_SREG __ALWAYS_INLINE__ EE_oo_check_disableint_error(void)
{
    register EE_SREG error_check;
/* The following check is useful only in startupHook where you SHOULD NOT call
   Kernel API, so probably it's better to not waste clock time later */
/* #if defined(__OO_HAS_STARTUPHOOK__) || defined(__OO_AUTOSTART_TASK__) || \
    defined(__OO_AUTOSTART_ALARM__)
    // if EE_oo_no_preemption is set we are in statos routine. We never raise
    //  an error never in this case. 
    if (EE_oo_no_preemption != 0U) {
      // return not an error
      return 0;
    }
#endif */
    error_check = (EE_oo_IRQ_disable_count != 0U);
    /* TODO: add hal API that let understand the real state of the isr */
    return error_check;
}

#if defined(__OO_BCC2__) || defined(__OO_ECC2__)
/* a lookup table to speedup ready queue handling */
extern const EE_INT8 EE_rq_lookup[];
#endif

/* Internal Queue management functions */

/* return the first ready task without extracting it */
#ifndef __PRIVATE_RQ_QUERYFIRST__
#if defined(__OO_BCC1__) || defined(__OO_ECC1__)
__INLINE__ EE_TID __ALWAYS_INLINE__ EE_rq_queryfirst(void)
{ return EE_rq_first; }
#endif

#if defined(__OO_BCC2__) || defined(__OO_ECC2__)
EE_TID EE_rq_queryfirst(void);
#endif
#endif

/* __INLINE__ EE_TID __ALWAYS_INLINE__ EE_stk_queryfirst(void) in intfunc.h */

/* extract the running task from the stack */
#ifndef __PRIVATE_STK_GETFIRST__
__INLINE__ void __ALWAYS_INLINE__ EE_stk_getfirst(void)
{
    EE_stkfirst = EE_th_next[EE_stkfirst];
}
#endif

/* insert a task into the stack data structures */
#ifndef __PRIVATE_STK_INSERTFIRST__
__INLINE__ void __ALWAYS_INLINE__ EE_stk_insertfirst(EE_TID t)
{
    EE_th_next[t] = EE_stkfirst;
    EE_stkfirst = t;
}
#endif

/* insert a task into the ready queue */
#ifndef __PRIVATE_RQ_INSERT__
void EE_rq_insert(EE_TID t);
#endif

/* put the first ready task into the stack */
#ifndef __PRIVATE_RQ2STK_EXCHANGE__
EE_TID EE_rq2stk_exchange(void);
#endif

#ifndef __OO_NO_RESOURCES__
/*
    Method to release all resources locked by a Thread,
    used to fulfill AS requirement OS070
 */
#if ((!defined(__OO_EXTENDED_STATUS__)) && \
    (!defined(__PRIVATE_RELEASEALLRESOURCE__))) && \
    (!defined(__OO_ISR2_RESOURCES__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_release_all_resources(EE_TID tid)
{
  /* release the internal resource. a EE_TYPEPRIO is a bit mask with only one
     bit set to one.
     If i subtract one to this I obtain a bit mask with all
     ones before the starting one and all zeros after 
     (exactly what I want to release resources!)
  */
  EE_sys_ceiling &= (EE_th_dispatch_prio[tid] - 1U);
}
#else
EE_UREG EE_oo_release_all_resources(EE_TID tid);
#endif /* !__OO_EXTENDED_STATUS__ && !__OO_ISR2_RESOURCES__ */
#else /* __OO_NO_RESOURCES__ */
#define EE_oo_release_all_resources(tid)    ((void)0)
#endif /* __OO_NO_RESOURCES__ */

#ifndef __PRIVATE_THREANTERMINATED__
/* this the function that will be called if a Task doesn't end calling
   TerminateTask */
void EE_thread_not_terminated(void);
#endif /* __PRIVATE_THREANTERMINATED__ */

/* This call terminates a thread instance. It must be called as the
   LAST function call BEFORE the `}' that ends a thread. If the
   primitive is not inserted at the end of */
#ifndef __PRIVATE_THREAD_END_INSTANCE__
void EE_thread_end_instance(void);
#endif

#ifdef __OO_ISR2_RESOURCES__
/* Index used to give ISR2 Temporary TID value and to access at
   EE_isr2_nesting_level array */
extern EE_UREG EE_isr2_index;

/* Assign a fake TID to an ISR2 to eventually handle resources clean-up */
EE_TID  EE_oo_assign_TID_to_ISR2(void);

/* Get the last assigned fake ISR2 TID */
__INLINE__ EE_TID __ALWAYS_INLINE__ EE_oo_get_ISR2_TID(void) {
  return (EE_isr2_index != EE_UREG_MINUS1)?
    (EE_MAX_TASK + (EE_TID)EE_isr2_index): EE_NIL;
}
#endif /*  __OO_ISR2_RESOURCES__ */

#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
/*
    Reset Active Events  THREAD utility method.

    When an extended task is transferred from suspended state
    into ready state all its events have to be cleared cleared
*/
__INLINE__ void __ALWAYS_INLINE__ EE_oo_reset_th_event_active(TaskType TaskID)
{
    EE_th_event_active[TaskID] = 0U;
}

/* 
  This method actually do a CONTEXT SWITCH, with the highest priority TASK
*/
__INLINE__ void __ALWAYS_INLINE__ EE_oo_run_next_task(void)
{
    register TaskType tmp;
    /* swap from ready queue to stack queue */
    tmp = EE_rq2stk_exchange();
    if (EE_th_waswaiting[tmp]) {
      /* if the task was waiting switch the context to restart it */
      EE_th_waswaiting[tmp] = 0U;
      EE_hal_stkchange(tmp);
    } else {
      /* the next task have to be started */
      EE_hal_ready2stacked(tmp);
    }
}
#else
#define EE_oo_reset_th_event_active(TaskID)    ((void) 0)

/* 
  This method actually do a CONTEXT SWITCH, with the highest priority TASK
*/
__INLINE__ void __ALWAYS_INLINE__ EE_oo_run_next_task(void)
{
    EE_hal_ready2stacked(EE_rq2stk_exchange());
}
#endif /* defined(__OO_ECC1__) || defined(__OO_ECC2__) */


#if defined(__OO_BCC2__) || defined(__OO_ECC2__)
  /*
    Set THREAD ready utility method.
    If the task is BCC2/ECC2 it can be that it is ready or 
    running. in that case we have to check and queue it anyway
  */
__INLINE__ void __ALWAYS_INLINE__ EE_oo_set_th_status_ready(TaskType TaskID)
{
    if (EE_th_status[TaskID] == SUSPENDED) {
        EE_th_status[TaskID] = READY;
        EE_oo_reset_th_event_active(TaskID);
    }
}
#else
  /*
    Set THREAD ready utility method
    If the task is BCC1/ECC1 it can be here only because
    it had rnact=1 before the call, and so it is in suspended state
  */
__INLINE__ void __ALWAYS_INLINE__ EE_oo_set_th_status_ready(TaskType TaskID)
{
    EE_th_status[TaskID] = READY;
    EE_oo_reset_th_event_active(TaskID);
}
#endif /* defined(__OO_BCC2__) || defined(__OO_ECC2__) */

/* Execute a preemption */
#ifndef __PRIVATE_PREEMPTION_POINTS__
/*
  Moved preemption check implementation into an outside method because the
  behaviour is common to EE_ActivateTask, EE_oo_ForceSchedule,
  EE_oo_IncrementCounter, EE_oo_ReleaseResource, EE_oo_PostSem
*/
__INLINE__ void __ALWAYS_INLINE__ EE_oo_preemption_point(void)
{
  register EE_TID current, rq;

  /* check if there is a preemption */
  current = EE_stk_queryfirst();
  rq      = EE_rq_queryfirst();

  if (rq != EE_NIL) {
    /* We check if the system ceiling is greater or not the first task
       in the ready queue */
    if (EE_sys_ceiling < EE_th_ready_prio[rq]) {
      if (current != EE_NIL) { 
        EE_oo_call_PostTaskHook();
        /* we have to put the task in the ready status */
        EE_th_status[current] = READY;
        /* but not in the ready queue!!! 
           the task remains into the stacked queue!
         */
      }

      /* get the new internal resource */
      EE_sys_ceiling |= EE_th_dispatch_prio[rq];
      /* put the task in running state */
      EE_th_status[rq] = RUNNING;

      EE_ORTI_set_th_eq_dispatch_prio(rq);

      /* Execute context SWITCH, this method return when we have a switch
         back on the previous TASK contest.
       */
      EE_oo_run_next_task();

      /* Call PreTaskHook in the first TASK context, after have checked that
         the current TASK is not main.
      */
      EE_oo_call_with_nil_check_PreTaskHook(current);
    }
  }
}

#if defined(__OO_ECC1__) || defined(__OO_ECC2__)

/*
  Prepare current Task to Block if Extended Task is configured
 */
__INLINE__ void __ALWAYS_INLINE__ EE_oo_prepare_to_block(void) {
  register EE_TID current;

  current = EE_stk_queryfirst();

  /* the task must go into the WAITING state */
  EE_th_status[current] = WAITING;

  /* Call the Post Task Hook before change stk data structure */
  EE_oo_call_PostTaskHook();

  /* extract the task from the stk data structure */
  EE_stk_getfirst();

  /* reset the thread priority bit in the system_ceiling */
  EE_sys_ceiling &= ~EE_th_dispatch_prio[current];
  /* the ready priority is not touched, it is not the same as Schedule! */

  /* reset ORTI priority */
  EE_ORTI_set_th_priority(current, 0U);

  /* since the task blocks, it has to be woken up by another
     EE_hal_stkchange */
  EE_th_waswaiting[current] = 1U;
}

/*
    Reschedule on task blocking if Extended Task is configured
 */
__INLINE__ void __ALWAYS_INLINE__ EE_oo_reschedule_on_block(void)
{
  register EE_TID next;

  next = EE_rq_queryfirst();
  if ((next == EE_NIL) || (EE_sys_ceiling >= EE_th_ready_prio[next])) {
    /* we have to schedule an interrupted thread that is on the top 
     * of its stack; the state is already STACKED! */
    next = EE_stk_queryfirst();
    if (next != EE_NIL) {
      EE_th_status[next] = RUNNING;
    }

    /* CONTEXT SWITCH to a previous stacked Task */
    EE_hal_stkchange(next);
  } else { 
    /* we have to schedule a ready thread that is not yet on the stack */
    EE_th_status[next] = RUNNING;
    EE_sys_ceiling |= EE_th_dispatch_prio[next];

    EE_ORTI_set_th_eq_dispatch_prio(next);

    /* Execute context SWITCH, this method return when we have a switch
       back on the previous TASK contest.
     */
    EE_oo_run_next_task();
  }
  /* We do not have to set the thread priority bit in the
       system_ceiling, it will be set by the primitives that put the
       task in the RUNNING state */

  EE_oo_call_PreTaskHook();
}
#endif /* __OO_ECC1__ || __OO_ECC2__ */
#endif /* __PRIVATE_PREEMPTION_POINTS__ */

#endif /* __INCLUDE_OO_INTERNAL_H__ */

