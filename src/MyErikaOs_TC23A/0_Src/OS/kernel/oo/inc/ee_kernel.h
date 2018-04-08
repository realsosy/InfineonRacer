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
 * CVS: $Id: ee_kernel.h,v 1.9 2006/12/03 22:07:50 pj Exp $
 */


#ifndef __INCLUDE_OO_KERNEL_H__
#define __INCLUDE_OO_KERNEL_H__

/* Symbols that can be defined into EEOPT
   __OO_EXTENDED_STATUS__ 
   __PRIVATE_XXXX__
   __OO_BCC1__
   __OO_BCC2__
   __OO_ECC1__
   __OO_ECC2__
   __OO_NO_CHAINTASK__  if the application do not use chaintask
   __OO_NO_RESOURCES__  if the application do not use resources
   __OO_NO_ALARMS__     if the application do not use alarms


   __OO_ORTI_LASTERROR__ if the application should record the last 
                         error for ORTI use

   __OO_ORTI_SERVICETRACE__ if the application should record the
                            ORTI servicetrace attribute

   __OO_ORTI_PRIORITY__ if the application should record the current
                        priority for each task. Note that that
                        information is used only for debugging, the
                        kernel schedules using just the system
                        ceiling.

   __OO_ORTI_RUNNINGISR2__ if the application should generate some ISR
                           stubs capable to register the ISRs that are
                           currently running.

   __OO_ORTI_ALARMTIME__ if defined, it stores informations about the
                         expiration time of an alarm

   __OO_ORTI_RES_ISLOCKED__ if defined, the resource functions keep trace
                         of the fact that a resource is locked or not

   __OO_ORTI_RES_LOCKER_TASK__ if defined, the resource functions keep
                         trace of the locker task.

   __OO_ORTI_STACK__ This define is not included in the OO
                     sources, but instead it is contained in the BSP
                     boot code, and specifies if stack
                     initialization should be performed for all the
                     stacks in the system.

   - The extension of resource usage into ISR2 is optional and it is
     not implemented.

   __OO_HAS_STARTUPHOOK__ & co.

   __OO_ERRORHOOK_NOMACROS__  disables macro support inside ErrorHooK 
                             (end of 11.2)

   __OO_AUTOSTART_TASK__ if defined, StartOS() will processthe OIL
                         Task AUTOSTART informations.

   __OO_AUTOSTART_ALARM__ if defined, StartOS() will processthe OIL
                          Alarm AUTOSTART informations.
                          
   __OO_CPU_HAS_STARTOS_ROUTINE__ This is defined internally by the CPU
*/


/*************************************************************************
 Common part
 *************************************************************************/

/* 
- Constants
- Types 
- Data structures used at configuration time
*/

#include "kernel/oo/inc/ee_common.h"

/***************************************************************************
 * 13.1 Common data types
 ***************************************************************************/

/* See ee_common.h */

/***************************************************************************
 * 13.2 Task management 
 ***************************************************************************/

/* 13.2.1 Data types                                                       */
/* ----------------------------------------------------------------------- */

/* See ee_common.h */

/* 13.2.2 Constructional elements                                          */
/* ----------------------------------------------------------------------- */

/* 13.2.2.1: BCC1, BCC2, ECC1, ECC2 */
#define DeclareTask(t) void Func##t(void)

/* 13.2.3 System services                                                  */
/* ----------------------------------------------------------------------- */

/* 13.2.3.1: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_ACTIVATETASK__
StatusType EE_oo_ActivateTask(TaskType TaskID);
#endif

/* 13.2.3.2: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_TERMINATETASK__
#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_TerminateTask(void);
#else
void EE_oo_TerminateTask(void);
#endif
#endif

/* 13.2.3.3: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_CHAINTASK__
StatusType EE_oo_ChainTask(TaskType TaskID);
#endif

/* 13.2.3.4: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_SCHEDULE__
StatusType EE_oo_Schedule(void);
#endif

/* Needed for counters (see later) */
#ifndef __PRIVATE_FORCESCHEDULE__
#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_ForceSchedule(void);
#else
void EE_oo_ForceSchedule(void);
#endif
#endif

/* 13.2.3.5: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_GETTASKID__
StatusType EE_oo_GetTaskID(TaskRefType TaskID);
#endif /* __PRIVATE_GETTASKID__ */

/* 13.2.3.6: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_GETTASKSTATE__
StatusType EE_oo_GetTaskState(TaskType TaskID, TaskStateRefType State);
#endif

/* 13.2.4 Constants                                                        */
/* ----------------------------------------------------------------------- */

/* task states in common.h */

/* Constant of data type TaskType for a not defined task. */
/* This definition has the same behavior of the NIL constant, that is -1 */
#define INVALID_TASK EE_NIL


/* 13.2.5 Naming Conventions                                               */
/* ----------------------------------------------------------------------- */

/* Why Note 14 page 54 says that a Task must have a StatusType ret. value? */
#define TASK(t) void Func##t(void)


/***************************************************************************
 * 13.3 Interrupt handling 
 ***************************************************************************/

/* 13.3.1 Data types                                                       */
/* ----------------------------------------------------------------------- */

/* none */

/* 13.3.2 System services                                                  */
/* ----------------------------------------------------------------------- */

/* (see ee_inline.h) */

/* 13.3.3 Naming convention                                                */
/* ----------------------------------------------------------------------- */

/* to implement the RUNNINGISR2 parameter, the only identifier I can
   use is the name of the ISR itself. For that reason, I use that
   identifier as unique ISR2 identifier. 

   Please note that the ISR macro should be implemented by the CPU or
   the MCU layer, because it depends a lot on the particular
   microcontroller. For this reason, the following is reported as a
   comment.

   Please note that EE_ORTI_get_runningisr2() and EE_ORTI_set_runningisr2() do
   not produce any code when the macro  __OO_ORTI_RUNNINGISR2__ is not defined,
   so the example below could be written with no "#ifdef".
*/

#if 0 /* This is just an example! */
#ifdef __OO_ORTI_RUNNINGISR2__
#define ISR(t) static void t##_ORTI(void);  \
void t(void)                                \
{                                           \
  EE_ORTI_runningisr2_type ortiold          \
  ortiold = EE_ORTI_get_runningisr2();      \
  EE_ORTI_set_runningisr2(t);               \
  t##_ORTI();                               \
  EE_ORTI_set_runningisr2(ortiold);         \
}                                           \
static void t##_ORTI(void)

#else
#define ISR(t) void t(void)
#endif
#endif /* #if 0 */

/***************************************************************************
 * 13.4 Resource management 
 ***************************************************************************/

#ifndef __OO_NO_RESOURCES__

/* 13.4.1 Data types                                                       */
/* ----------------------------------------------------------------------- */

/* see ee_common.h */

/* 13.4.2 Constructional elements                                          */
/* ----------------------------------------------------------------------- */

/* 13.4.2.1: BCC1, BCC2, ECC1, ECC2 */
/* this is a void declaration ;-) */
#define DeclareResource(ResourceIdentifier) extern EE_TID EE_th_next[] /* void! */


/* 13.4.3 System services                                                  */
/* ----------------------------------------------------------------------- */

/* NB: The extension of resource usage into ISR2 is optional and it is
   not implemented. 
*/

/* 13.4.3.1: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_GETRESOURCE__
#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_GetResource(ResourceType ResID);
#else
void EE_oo_GetResource(ResourceType ResID);
#endif
#endif

/* 13.4.3.2: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_RELEASERESOURCE__
#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_ReleaseResource(ResourceType ResID);
#else
void EE_oo_ReleaseResource(ResourceType ResID);
#endif
#endif

/* 13.4.4 Constants RES_SCHEDULER                                          */
/* ----------------------------------------------------------------------- */

/* 13.4.4 Constants */

/* note: TYPEPRIO must be unsigned!!! */

/* RES_SCHEDULER is defined only if USE_RESSCHEDULER is defined inside
 * the OIL file. In general its value is variable and depends on the
 * code that is automatically generated */

#if 0 /* Disabled! */
#define RES_SCHEDULER 0
#endif

#endif

/***************************************************************************
 * 13.5 Event control 
 ***************************************************************************/

/* 13.5.1 Data types                                                       */
/* ----------------------------------------------------------------------- */

/* see ee_common.h */

/* 13.5.2 Constructional elements                                          */
/* ----------------------------------------------------------------------- */

/* 13.5.2.1: ECC1, ECC2 */
/* this is a void definition ;-) */
#define DeclareEvent(EventIdentifier) extern EE_TID EE_th_next[] /* void! */

/* 13.5.3 System services                                                  */
/* ----------------------------------------------------------------------- */

/* see also internal.h */
/* 13.5.3.1: ECC1, ECC2 */
#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
#ifndef __PRIVATE_SETEVENT__
#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_SetEvent(TaskType TaskID, EventMaskType Mask);
#else
void EE_oo_SetEvent(TaskType TaskID, EventMaskType Mask);
#endif
#endif
#endif

/* 13.5.3.2: ECC1, ECC2 */
#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
#ifndef __PRIVATE_CLEAREVENT__
#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_ClearEvent(EventMaskType Mask);
#else
void EE_oo_ClearEvent(EventMaskType Mask);
#endif
#endif
#endif

/* 13.5.3.3: ECC1, ECC2 */
#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
#ifndef __PRIVATE_GETEVENT__
#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_GetEvent(TaskType TaskID, EventMaskRefType Event);
#else
void EE_oo_GetEvent(TaskType TaskID, EventMaskRefType Event);
#endif
#endif
#endif

/* 13.5.3.4: ECC1, ECC2 */
#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
#ifndef __PRIVATE_WAITEVENT__
#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_WaitEvent(EventMaskType Mask);
#else
void EE_oo_WaitEvent(EventMaskType Mask);
#endif
#endif
#endif




/***************************************************************************
 * Semaphores 
 ***************************************************************************/

#ifdef __OO_SEM__

/* These functions are an extension of the OSEK/VDX API */
#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
#define STATICSEM(value) { (value), EE_NIL, EE_NIL }
#else
#define STATICSEM(value) { (value) }
#endif


/* Semaphore Initialization: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_INITSEM__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_InitSem(SemRefType Sem, int value)
{
  EE_ORTI_set_service_in(EE_SERVICETRACE_INITSEM);

  if (Sem != NULL) {
    (Sem)->count = (EE_UREG)(value);
#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
    (Sem)->first = EE_NIL;
    (Sem)->last = EE_NIL;
#endif
  }

  EE_ORTI_set_service_out(EE_SERVICETRACE_INITSEM);
}
#endif

/* Semaphore Blocking Wait: ECC1, ECC2 */
#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
#ifndef __PRIVATE_WAITSEM__
#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_WaitSem(SemRefType Sem);
#else
void EE_oo_WaitSem(SemRefType Sem);
#endif
#endif
#endif


/* Semaphore Non-Blocking Wait: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_TRYWAITSEM__
int EE_oo_TryWaitSem(SemRefType Sem);
#endif

/* Semaphore Post: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_POSTSEM__
StatusType EE_oo_PostSem(SemRefType Sem);
#endif


/* Semaphore value read: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_GETVALUESEM__
int EE_oo_GetValueSem(const SemType *Sem);
#endif

#endif /* __OO_SEM__ */



/***************************************************************************
 * 13.6 Alarms 
 ***************************************************************************/

#ifndef __OO_NO_ALARMS__

/* Implementation defined functions */

/* Counter initialization
   ----------------------

   Counter initialization is done at initialization time OUTSIDE
   StartOS.  Since software counters are stored in RAM, their
   initialization values are typically set to 0. That also conforms to
   note 10 page 43 of the specification version 2.2.1 that says:

   "Counters are - if possible - set to zero by the system
   initialization before alarms are autostarted. Exception: calendar
   timers, etc. For autostarted alarms, all values are relative
   values.

*/

/*
   AS 4.0 OS SWS 8.4.16
   AS OS requirement OS399:

   This function notifies a tick to a counter. That is, the counter is
   incremented by 1.

   The function will also implement the notification of expired alarms
   (calling an alarm callback, setting an event, or activating a
   task). 

   And DO RESCHEDULING.
   see also internal.h
*/
#ifndef __PRIVATE_INCREMENTCOUNTER__
StatusType EE_oo_IncrementCounter(CounterType CounterID);
#endif  /* __PRIVATE_INCREMENTCOUNTER__ */

/*
  AS 4.0 OS SWS 8.4.17 GetCounterValue
  AS OS requirement OS383:
 */
#ifndef __PRIVATE_GETCOUNTERVALUE__
StatusType EE_oo_GetCounterValue(CounterType CounterID, TickRefType Value);
#endif

/*
  AS 4.0 OS SWS 8.4.18 GetElapsedValue
  AS OS requirement OS392:
 */
#ifndef __PRIVATE_GETELAPSEDVALUE__
StatusType EE_oo_GetElapsedValue(CounterType CounterID, TickRefType Value,
    TickRefType ElapsedValue);
#endif


/* 13.6.1 Data types                                                       */
/* ----------------------------------------------------------------------- */

/* see ee_common.h */


/* 13.6.2 Constructional elements                                          */
/* ----------------------------------------------------------------------- */

/* 13.6.2.1: BCC1, BCC2, ECC1, ECC2 */
/* this is a void definition ;-) */
#define DeclareAlarm(AlarmIdentifier) extern EE_TID EE_th_next[] /* void! */

/* 13.6.3 System services                                                  */
/* ----------------------------------------------------------------------- */

/* 13.6.3.1 BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_GETALARMBASE__
StatusType EE_oo_GetAlarmBase(AlarmType AlarmID, AlarmBaseRefType Info);
#endif

/* 13.6.3.2 BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_GETALARM_
StatusType EE_oo_GetAlarm(AlarmType AlarmID, TickRefType Tick);
#endif

/* 13.6.3.3 BCC1, BCC2, ECC1, ECC2; Events only ECC1, ECC2 */
#ifndef __PRIVATE_SETRELALARM__
StatusType EE_oo_SetRelAlarm(AlarmType AlarmID, TickType increment, TickType cycle);
#endif

/* 13.6.3.4 BCC1, BCC2, ECC1, ECC2; Events only ECC1, ECC2 */
#ifndef __PRIVATE_SETABSALARM__
StatusType EE_oo_SetAbsAlarm(AlarmType AlarmID, TickType start, TickType cycle);
#endif

/* 13.6.3.5 BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_CANCELALARM__
StatusType EE_oo_CancelAlarm(AlarmType AlarmID);
#endif

/* 13.6.4 Constants                                                        */
/* ----------------------------------------------------------------------- */


/* NOTE: these #defines have to be defined by the user or by the HAL!!!
   x is the counter */

/* Maximum possible allowed value of counter x in ticks. */
/*#define OSMAXALLOWEDVALUE_x */

/* Number of ticks required to reach a specific unit of counter x. */
/*#define OSTICKSPERBASE_x */
/* Minimum allowed number of ticks for a cyclic alarm of counter x. */
/*#define OSMINCYCLE_x */
/* Maximum possible allowed value of the system counter in ticks. */
/*#define OSMAXALLOWEDVALUE */
/* Number of ticks required to reach a specific unit of the system counter. */
/*#define OSTICKSPERBASE */
/* Minimum allowed number of ticks for a cyclic alarm of the system counter. */
/*#define OSMINCYCLE */

/* Duration of a tick of the system counter in nanoseconds. */
/*#define OSTICKDURATION */

/* 13.6.5 Naming convention                                                */
/* ----------------------------------------------------------------------- */

#define ALARMCALLBACK(t) void t(void)

#endif /* __OO_NO_ALARMS__ */

/***************************************************************************
 * 13.7 Operating system execution control 
 ***************************************************************************/

/* 13.7.1 Data types                                                       */
/* ----------------------------------------------------------------------- */

/* see ee_common.h */

/* 13.7.2 System services                                                  */
/* ----------------------------------------------------------------------- */

/* 13.7.2.1: BCC1, BCC2, ECC1, ECC2 */
/* see ee_inline.h */

/* 13.7.2.2: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_STARTOS__
StatusType EE_oo_StartOS(AppModeType Mode);
#endif

/* 13.7.2.3: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_SHUTDOWNOS__
void EE_oo_ShutdownOS(StatusType Error);
#endif

/* 13.7.3 Constants                                                        */
/* ----------------------------------------------------------------------- */

/* Default application mode, always a valid parameter to StartOS. 
   Note: because of this parameter, the constant EE_MAX_APPMODE should 
   be always >1 */
#define OSDEFAULTAPPMODE 0U

/***************************************************************************
 * 13.8 Hook routines 
 ***************************************************************************/

/* 13.8.1 Data Types                                                       */
/* ----------------------------------------------------------------------- */

/* see ee_common.h */

/* 13.8.2 System services                                                  */
/* ----------------------------------------------------------------------- */

/* 13.8.2.1: BCC1, BCC2, ECC1, ECC2 */
#ifdef __OO_HAS_ERRORHOOK__
void ErrorHook(StatusType Error);
#endif

/* 13.8.2.2: BCC1, BCC2, ECC1, ECC2 */
#ifdef __OO_HAS_PRETASKHOOK__
void PreTaskHook(void);
#endif

/* 13.8.2.3: BCC1, BCC2, ECC1, ECC2 */
#ifdef __OO_HAS_POSTTASKHOOK__
void PostTaskHook(void);
#endif

/* 13.8.2.4: BCC1, BCC2, ECC1, ECC2 */
#ifdef __OO_HAS_STARTUPHOOK__
void StartupHook(void);
#endif

/* 13.8.2.5: BCC1, BCC2, ECC1, ECC2 */
#ifdef __OO_HAS_SHUTDOWNHOOK__
void ShutdownHook(StatusType Error);
#endif

/* 13.8.3 Constants                                                        */
/* ----------------------------------------------------------------------- */

/* see ee_common.h */

/* 13.8.4 Macros                                                           */
/* ----------------------------------------------------------------------- */

#ifdef __OO_HAS_ERRORHOOK__
#ifndef __OO_ERRORHOOK_NOMACROS__


/* see ee_common.h */

/* provides the service identifier where the error has been risen. */
__INLINE__ OSServiceIdType __ALWAYS_INLINE__ OSErrorGetServiceId(void)
{
  return EE_oo_ErrorHook_ServiceID;
}

/* names of macros to access (within ErrorHook) parameters of the
   system service which called ErrorHook */


__INLINE__ TaskType __ALWAYS_INLINE__ OSError_ActivateTask_TaskID(void) 
{ return EE_oo_ErrorHook_data.ActivateTask_prm.TaskID; }

#ifndef __OO_NO_CHAINTASK__
__INLINE__ TaskType __ALWAYS_INLINE__ OSError_ChainTask_TaskID(void)
{ return EE_oo_ErrorHook_data.ChainTask_prm.TaskID; }
#endif

__INLINE__ TaskRefType __ALWAYS_INLINE__ OSError_GetTaskID_TaskID(void)
{ return EE_oo_ErrorHook_data.GetTaskID_prm.TaskID; }

__INLINE__ TaskType __ALWAYS_INLINE__ OSError_GetTaskState_TaskID(void)
{ return EE_oo_ErrorHook_data.GetTaskState_prm.TaskID; }
__INLINE__ TaskStateRefType __ALWAYS_INLINE__ OSError_GetTaskState_State(void)
{ return EE_oo_ErrorHook_data.GetTaskState_prm.State; }

#ifndef __OO_NO_RESOURCES__
__INLINE__ ResourceType __ALWAYS_INLINE__ OSError_GetResource_ResID(void)
{ return EE_oo_ErrorHook_data.GetResource_prm.ResID; }

__INLINE__ ResourceType __ALWAYS_INLINE__ OSError_ReleaseResource_ResID(void)
{ return EE_oo_ErrorHook_data.ReleaseResource_prm.ResID; }
#endif

#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
__INLINE__ TaskType __ALWAYS_INLINE__ OSError_SetEvent_TaskID(void)
{ return EE_oo_ErrorHook_data.SetEvent_prm.TaskID; }
__INLINE__ EventMaskType __ALWAYS_INLINE__ OSError_SetEvent_Mask(void)
{ return EE_oo_ErrorHook_data.SetEvent_prm.Mask; }

__INLINE__ EventMaskType __ALWAYS_INLINE__ OSError_ClearEvent_Mask(void)
{ return EE_oo_ErrorHook_data.ClearEvent_prm.Mask; }

__INLINE__ TaskType __ALWAYS_INLINE__ OSError_GetEvent_TaskID(void)
{ return EE_oo_ErrorHook_data.GetEvent_prm.TaskID; }
__INLINE__ EventMaskRefType __ALWAYS_INLINE__ OSError_GetEvent_Event(void)
{ return EE_oo_ErrorHook_data.GetEvent_prm.Event; }

__INLINE__ EventMaskType __ALWAYS_INLINE__ OSError_WaitEvent_Mask(void)
{ return EE_oo_ErrorHook_data.WaitEvent_prm.Mask; }
#endif

#ifndef __OO_NO_ALARMS__
__INLINE__ AlarmType __ALWAYS_INLINE__ OSError_GetAlarmBase_AlarmID(void)
{ return EE_oo_ErrorHook_data.GetAlarmBase_prm.AlarmID; }
__INLINE__ AlarmBaseRefType __ALWAYS_INLINE__ OSError_GetAlarmBase_Info(void)
{ return EE_oo_ErrorHook_data.GetAlarmBase_prm.Info; }

__INLINE__ AlarmType __ALWAYS_INLINE__ OSError_GetAlarm_AlarmID(void)
{ return EE_oo_ErrorHook_data.GetAlarm_prm.AlarmID; }
__INLINE__ TickRefType __ALWAYS_INLINE__ OSError_GetAlarm_Tick(void)
{ return EE_oo_ErrorHook_data.GetAlarm_prm.Tick; }

__INLINE__ AlarmType __ALWAYS_INLINE__ OSError_SetRelAlarm_AlarmID(void)
{ return EE_oo_ErrorHook_data.SetRelAlarm_prm.AlarmID; }
__INLINE__ TickType __ALWAYS_INLINE__ OSError_SetRelAlarm_increment(void)
{ return EE_oo_ErrorHook_data.SetRelAlarm_prm.increment; }
__INLINE__ TickType __ALWAYS_INLINE__ OSError_SetRelAlarm_cycle(void)
{ return EE_oo_ErrorHook_data.SetRelAlarm_prm.cycle; }

__INLINE__ AlarmType __ALWAYS_INLINE__ OSError_SetAbsAlarm_AlarmID(void)
{ return EE_oo_ErrorHook_data.SetAbsAlarm_prm.AlarmID; }
__INLINE__ TickType __ALWAYS_INLINE__ OSError_SetAbsAlarm_start(void)
{ return EE_oo_ErrorHook_data.SetAbsAlarm_prm.start; }
__INLINE__ TickType __ALWAYS_INLINE__ OSError_SetAbsAlarm_cycle(void)
{ return EE_oo_ErrorHook_data.SetAbsAlarm_prm.cycle; }

__INLINE__ AlarmType __ALWAYS_INLINE__ OSError_CancelAlarm_AlarmID(void)
{ return EE_oo_ErrorHook_data.CancelAlarm_prm.AlarmID; }

__INLINE__ AlarmType __ALWAYS_INLINE__ OSError_IncrementCounter_AlarmID(void)
{ return EE_oo_ErrorHook_data.IncrementCounter_prm.AlarmID; }
__INLINE__ TaskType __ALWAYS_INLINE__ OSError_IncrementCounter_TaskID(void)
{ return EE_oo_ErrorHook_data.IncrementCounter_prm.TaskID; }

__INLINE__ CounterType __ALWAYS_INLINE__ OSError_GetCounterValue_CounterID(void)
{ return EE_oo_ErrorHook_data.GetCounterValue_prm.CounterID; }

__INLINE__ TickRefType __ALWAYS_INLINE__ OSError_GetCounterValue_Value(void)
{ return EE_oo_ErrorHook_data.GetCounterValue_prm.Value; }

__INLINE__ CounterType __ALWAYS_INLINE__ OSError_GetElapsedValue_CounterID(void)
{ return EE_oo_ErrorHook_data.GetElapsedValue_prm.CounterID; }

__INLINE__ TickRefType __ALWAYS_INLINE__ OSError_GetElapsedValue_Value(void)
{ return EE_oo_ErrorHook_data.GetElapsedValue_prm.Value; }

__INLINE__ TickRefType __ALWAYS_INLINE__
  OSError_GetElapsedValue_ElapsedValue(void)
{ return EE_oo_ErrorHook_data.GetElapsedValue_prm.ElapsedValue; }

#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
__INLINE__ EventMaskType __ALWAYS_INLINE__ OSError_IncrementCounter_Mask(void)
{ return EE_oo_ErrorHook_data.IncrementCounter_prm.Mask; }
#endif

__INLINE__ EE_TYPENOTIFY __ALWAYS_INLINE__ OSError_IncrementCounter_action(void)
{ return EE_oo_ErrorHook_data.IncrementCounter_prm.action; }

#endif

__INLINE__ AppModeType __ALWAYS_INLINE__ OSError_StartOS_Mode(void)
{ return EE_oo_ErrorHook_data.StartOS_prm.Mode; }

#ifdef __OO_SEM__
__INLINE__ SemRefType __ALWAYS_INLINE__ OSError_WaitSem_Sem(void)
{ return EE_oo_ErrorHook_data.WaitSem_prm.Sem; }

__INLINE__ SemRefType __ALWAYS_INLINE__ OSError_PostSem_Sem(void)
{ return EE_oo_ErrorHook_data.PostSem_prm.Sem; }
#endif /* __OO_SEM__ */

#endif /* __OO_ERRORHOOK_NOMACROS__ */
#endif /* __OO_HAS_ERRORHOOK__ */


/***************************************************************************
 * Inline inclusions
 ***************************************************************************/

#include "kernel/oo/inc/ee_inline.h"

#endif
