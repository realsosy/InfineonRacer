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
 * CVS: $Id: ee_intfunc.h,v 1.2 2006/04/08 21:15:23 pj Exp $
 */

#ifndef __INCLUDE_OO_INTFUNC_H__
#define __INCLUDE_OO_INTFUNC_H__

/* This file contains internal functions and data structures needed to
   inline some kernel functions. */
extern EE_UREG EE_oo_IRQ_disable_count;

/***************************************************************************
 * The simbol EE_OLD_HAL marks architecture that do not implement new
 * HAL APIs (MUST be defined in the header ee_cpu.h of these architectures)
 ***************************************************************************/
#ifndef EE_OLD_HAL
extern EE_FREG EE_oo_IRQ_suspend_status;
#endif

extern EE_TYPEAPPMODE EE_ApplicationMode;

/* return the first stacked task (the running task) without extracting it 
   we suppose that this function can be called ALSO at interrupt ENABLED!!!
   (see WaitEvent.c) */
#ifndef __PRIVATE_STK_QUERYFIRST__
__INLINE__ EE_TID __ALWAYS_INLINE__ EE_stk_queryfirst(void)
{
    return EE_stkfirst;  
}
#endif /* __PRIVATE_STK_QUERYFIRST__ */

#ifdef __OO_HAS_ERRORHOOK__
extern EE_TYPEBOOL EE_ErrorHook_nested_flag;

#ifndef __OO_ERRORHOOK_NOMACROS__
/* 
    Inlines functions to fill parameters of the system service which called
    ErrorHook
*/

__INLINE__ void __ALWAYS_INLINE__ EE_oo_set_error_serviceid(OSServiceIdType
    ServiceID)
{
    EE_oo_ErrorHook_ServiceID = ServiceID;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_ActivateTask(TaskType
    TaskID)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_ActivateTask;
    EE_oo_ErrorHook_data.ActivateTask_prm.TaskID = TaskID;
}

#ifndef __OO_NO_CHAINTASK__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_ChainTask(TaskType
    TaskID)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_ChainTask;
    EE_oo_ErrorHook_data.ChainTask_prm.TaskID = TaskID;
}
#else /* __OO_NO_CHAINTASK__ */
#define EE_oo_fill_error_data_ChainTask(TaskID)         ((void)0)
#endif /* __OO_NO_CHAINTASK__ */

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_GetTaskID(TaskRefType
    TaskID)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_GetTaskID;
    EE_oo_ErrorHook_data.GetTaskID_prm.TaskID = TaskID;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_GetTaskState(TaskType
    TaskID, TaskStateRefType State)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_GetTaskState;
    EE_oo_ErrorHook_data.GetTaskState_prm.TaskID = TaskID;
    EE_oo_ErrorHook_data.GetTaskState_prm.State  = State;
}

#ifndef __OO_NO_RESOURCES__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_GetResource(
    ResourceType ResID)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_GetResource;
    EE_oo_ErrorHook_data.GetResource_prm.ResID = ResID;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_ReleaseResource(
    ResourceType ResID)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_ReleaseResource;
    EE_oo_ErrorHook_data.ReleaseResource_prm.ResID = ResID;
}
#else /* __OO_NO_RESOURCES__ */
#define EE_oo_fill_error_data_GetResource(ResID)        ((void)0)
#define EE_oo_fill_error_data_ReleaseResource(ResID)    ((void)0)
#endif /* __OO_NO_RESOURCES__ */

#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_SetEvent(TaskType
    TaskID, EventMaskType Mask)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_SetEvent;
    EE_oo_ErrorHook_data.SetEvent_prm.TaskID = TaskID;
    EE_oo_ErrorHook_data.SetEvent_prm.Mask = Mask;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_ClearEvent(
    EventMaskType Mask)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_ClearEvent;
    EE_oo_ErrorHook_data.ClearEvent_prm.Mask = Mask;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_GetEvent(TaskType
    TaskID, EventMaskRefType Event)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_GetEvent;
    EE_oo_ErrorHook_data.GetEvent_prm.TaskID = TaskID;
    EE_oo_ErrorHook_data.GetEvent_prm.Event  = Event;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_WaitEvent(EventMaskType
    Mask)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_WaitEvent;
    EE_oo_ErrorHook_data.WaitEvent_prm.Mask = Mask;
}
#else /* defined(__OO_ECC1__) || defined(__OO_ECC2__) */
#define EE_oo_fill_error_data_SetEvent(TaskID, Mask)    ((void)0)
#define EE_oo_fill_error_data_ClearEvent(Mask)          ((void)0)
#define EE_oo_fill_error_data_GetEvent(TaskID, Event)   ((void)0)
#define EE_oo_fill_error_data_WaitEvent(Mask)           ((void)0)
#endif /* defined(__OO_ECC1__) || defined(__OO_ECC2__) */

#ifndef __OO_NO_ALARMS__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_GetAlarmBase(AlarmType
    AlarmID, AlarmBaseRefType Info)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_GetAlarmBase;
    EE_oo_ErrorHook_data.GetAlarmBase_prm.AlarmID = AlarmID;
    EE_oo_ErrorHook_data.GetAlarmBase_prm.Info = Info;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_GetAlarm(AlarmType
    AlarmID, TickRefType Tick)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_GetAlarm;
    EE_oo_ErrorHook_data.GetAlarm_prm.AlarmID = AlarmID;
    EE_oo_ErrorHook_data.GetAlarm_prm.Tick = Tick;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_SetRelAlarm(AlarmType
    AlarmID, TickType increment, TickType cycle)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_SetRelAlarm;
    EE_oo_ErrorHook_data.SetRelAlarm_prm.AlarmID = AlarmID;
    EE_oo_ErrorHook_data.SetRelAlarm_prm.increment = increment;
    EE_oo_ErrorHook_data.SetRelAlarm_prm.cycle = cycle;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_SetAbsAlarm(AlarmType
    AlarmID, TickType start, TickType cycle)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_SetAbsAlarm;
    EE_oo_ErrorHook_data.SetAbsAlarm_prm.AlarmID = AlarmID;
    EE_oo_ErrorHook_data.SetAbsAlarm_prm.start = start;
    EE_oo_ErrorHook_data.SetAbsAlarm_prm.cycle = cycle;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_CancelAlarm(AlarmType
    AlarmID)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_CancelAlarm;
    EE_oo_ErrorHook_data.CancelAlarm_prm.AlarmID = AlarmID;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_IncrementCounter(
    CounterType CounterID, AlarmType AlarmID, TaskType TaskID,
    EE_TYPENOTIFY action)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_IncrementCounter;
    EE_oo_ErrorHook_data.IncrementCounter_prm.CounterID = CounterID;
    EE_oo_ErrorHook_data.IncrementCounter_prm.AlarmID   = AlarmID;
    EE_oo_ErrorHook_data.IncrementCounter_prm.TaskID    = TaskID;
    EE_oo_ErrorHook_data.IncrementCounter_prm.action    = action;
}

#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
__INLINE__ void __ALWAYS_INLINE__
  EE_oo_fill_error_data_with_mask_IncrementCounter(
    CounterType CounterID, AlarmType AlarmID, TaskType TaskID,
    EventMaskType Mask, EE_TYPENOTIFY action)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_IncrementCounter;
    EE_oo_ErrorHook_data.IncrementCounter_prm.CounterID = CounterID;
    EE_oo_ErrorHook_data.IncrementCounter_prm.AlarmID = AlarmID;
    EE_oo_ErrorHook_data.IncrementCounter_prm.TaskID = TaskID;
    EE_oo_ErrorHook_data.IncrementCounter_prm.Mask = Mask;
    EE_oo_ErrorHook_data.IncrementCounter_prm.action = action;
}
#else /* defined(__OO_ECC1__) || defined(__OO_ECC2__) */
__INLINE__ void __ALWAYS_INLINE__ 
  EE_oo_fill_error_data_with_mask_IncrementCounter(CounterType CounterID,
    AlarmType AlarmID, TaskType TaskID, EventMaskType Mask,
    EE_TYPENOTIFY action)
{
    EE_oo_fill_error_data_IncrementCounter(CounterID, AlarmID, TaskID, action);
}
#endif /* defined(__OO_ECC1__) || defined(__OO_ECC2__) */

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_GetCounterValue(
    CounterType CounterID, TickRefType Value)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_GetCounterValue;
    EE_oo_ErrorHook_data.GetCounterValue_prm.CounterID = CounterID;
    EE_oo_ErrorHook_data.GetCounterValue_prm.Value = Value;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_GetElapsedValue(
    CounterType CounterID, TickRefType Value, TickRefType ElapsedValue)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_GetElapsedValue;
    EE_oo_ErrorHook_data.GetElapsedValue_prm.CounterID = CounterID;
    EE_oo_ErrorHook_data.GetElapsedValue_prm.Value = Value;
    EE_oo_ErrorHook_data.GetElapsedValue_prm.ElapsedValue = ElapsedValue;
}

#else /* __OO_NO_ALARMS__ */
#define EE_oo_fill_error_data_GetAlarmBase(AlarmID, Info)           ((void)0)
#define EE_oo_fill_error_data_GetAlarm(AlarmID, Tick)               ((void)0)
#define EE_oo_fill_error_data_SetRelAlarm(AlarmID, increment, cycle) \
    ((void)0)
#define EE_oo_fill_error_data_SetAbsAlarm(AlarmID, start, cycle)    ((void)0)
#define EE_oo_fill_error_data_CancelAlarm(AlarmID)                  ((void)0)
#define EE_oo_fill_error_data_IncrementCounter(CounterID, AlarmID, TaskID,\
    action)   ((void)0)
#define EE_oo_fill_error_data_with_mask_IncrementCounter(CounterID, AlarmID, \
    TaskID, Mask, action) ((void)0)
#define EE_oo_fill_error_data_GetCounterValue(CounterID, Value)     ((void)0)
#define EE_oo_fill_error_data_GetElapsedValue(CounterID, Value, ElapsedValue) \
    ((void)0)
#endif /* __OO_NO_ALARMS__ */

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_StartOS(AppModeType
    Mode)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_StartOS;
    EE_oo_ErrorHook_data.StartOS_prm.Mode = Mode;
}

#ifdef __OO_SEM__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_WaitSem(SemRefType Sem)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_WaitSem;
    EE_oo_ErrorHook_data.WaitSem_prm.Sem = Sem;
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_fill_error_data_PostSem(SemRefType Sem)
{
    EE_oo_ErrorHook_ServiceID = OSServiceId_PostSem;
    EE_oo_ErrorHook_data.PostSem_prm.Sem = Sem;
}
#else /* __OO_SEM__ */
#define EE_oo_fill_error_data_WaitSem(Sem)  ((void)0)
#define EE_oo_fill_error_data_PostSem(Sem)  ((void)0)
#endif /*__OO_SEM__ */

#else /* __OO_ERRORHOOK_NOMACROS__ */
#define EE_oo_set_error_serviceid(ServiceID)                        ((void)0)
#define EE_oo_fill_error_data_ActivateTask(TaskID)                  ((void)0)
#define EE_oo_fill_error_data_ChainTask(TaskID)                     ((void)0)
#define EE_oo_fill_error_data_GetTaskID(TaskID)                     ((void)0)
#define EE_oo_fill_error_data_GetTaskState(TaskID, State)           ((void)0)
#define EE_oo_fill_error_data_GetResource(ResID)                    ((void)0)
#define EE_oo_fill_error_data_ReleaseResource(ResID)                ((void)0)
#define EE_oo_fill_error_data_SetEvent(TaskID, Mask)                ((void)0)
#define EE_oo_fill_error_data_ClearEvent(Mask)                      ((void)0)
#define EE_oo_fill_error_data_GetEvent(TaskID, Event)               ((void)0)
#define EE_oo_fill_error_data_WaitEvent(Mask)                       ((void)0)
#define EE_oo_fill_error_data_GetAlarmBase(AlarmID, Info)           ((void)0)
#define EE_oo_fill_error_data_GetAlarm(AlarmID, Tick)               ((void)0)
#define EE_oo_fill_error_data_SetRelAlarm(AlarmID, increment, cycle) \
    ((void)0)
#define EE_oo_fill_error_data_SetAbsAlarm(AlarmID, start, cycle)    ((void)0)
#define EE_oo_fill_error_data_CancelAlarm(AlarmID)                  ((void)0)
#define EE_oo_fill_error_data_IncrementCounter(AlarmID, TaskID, action) \
    ((void)0)
#define EE_oo_fill_error_data_with_mask_IncrementCounter(AlarmID, TaskID, \
    Mask, action) ((void)0)
#define EE_oo_fill_error_data_GetCounterValue(CounterID, Value)     ((void)0)
#define EE_oo_fill_error_data_GetElapsedValue(CounterID, Value, ElapsedValue) \
    ((void)0)
#define EE_oo_fill_error_data_StartOS(Mode)                         ((void)0)
#define EE_oo_fill_error_data_WaitSem(Sem)                          ((void)0)
#define EE_oo_fill_error_data_PostSem(Sem)                          ((void)0)
#endif /* __OO_ERRORHOOK_NOMACROS__ */

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_service(OSServiceIdType 
    ServiceID, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) 
    {
      EE_oo_set_error_serviceid(ServiceID);
      EE_ErrorHook_nested_flag = 1U;
      ErrorHook(Error);
      EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_ActivateTask(TaskType
    TaskID, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_ActivateTask(TaskID);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

#ifndef __OO_NO_CHAINTASK__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_ChainTask(TaskType TaskID,
    StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_ChainTask(TaskID);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

#else /* __OO_NO_CHAINTASK__ */
#define EE_oo_notify_error_ChainTask(TaskID, Error)   ((void)0);
#endif /* __OO_NO_CHAINTASK__ */

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_GetTaskID(TaskRefType
    TaskID, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_GetTaskID(TaskID);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_GetTaskState(TaskType
    TaskID, TaskStateRefType State, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_GetTaskState(TaskID, State);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

#ifndef __OO_NO_RESOURCES__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_GetResource(
    ResourceType ResID, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
      EE_oo_fill_error_data_GetResource(ResID);
      EE_ErrorHook_nested_flag = 1U;
      ErrorHook(Error);
      EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_ReleaseResource(
    ResourceType ResID, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
      EE_oo_fill_error_data_ReleaseResource(ResID);
      EE_ErrorHook_nested_flag = 1U;
      ErrorHook(Error);
      EE_ErrorHook_nested_flag = 0U;
    }
}
#else /* __OO_NO_RESOURCES__ */
#define EE_oo_notify_error_GetResource(ResID, Error)      ((void)0)
#define EE_oo_notify_error_ReleaseResource(ResID, Error)  ((void)0)
#endif /* __OO_NO_RESOURCES__ */

#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_SetEvent(TaskType
    TaskID, EventMaskType Mask, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_SetEvent(TaskID, Mask);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_ClearEvent(EventMaskType
    Mask, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_ClearEvent(Mask);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_GetEvent(TaskType TaskID,
    EventMaskRefType Event, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
      EE_oo_fill_error_data_GetEvent(TaskID, Event);
      EE_ErrorHook_nested_flag = 1U;
      ErrorHook(Error);
      EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_WaitEvent(EventMaskType
    Mask, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
      EE_oo_fill_error_data_WaitEvent(Mask);
      EE_ErrorHook_nested_flag = 1U;
      ErrorHook(Error);
      EE_ErrorHook_nested_flag = 0U;
    }
}
#else /* #if defined(__OO_ECC1__) || defined(__OO_ECC2__) */
#define EE_oo_notify_error_SetEvent(TaskID, Mask, Error)        ((void)0)
#define EE_oo_notify_error_ClearEvent(Mask, Error)              ((void)0)
#define EE_oo_notify_error_GetEvent(TaskID, Event, Error)       ((void)0)
#define EE_oo_notify_error_WaitEvent(Mask, Error)               ((void)0)
#endif /* #if defined(__OO_ECC1__) || defined(__OO_ECC2__) */

#ifndef __OO_NO_ALARMS__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_GetAlarmBase(AlarmType
    AlarmID, AlarmBaseRefType Info, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_GetAlarmBase(AlarmID, Info);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_GetAlarm(AlarmType AlarmID,
    TickRefType Tick, StatusType Error)
{ 
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_GetAlarm(AlarmID, Tick);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_SetRelAlarm(AlarmType
    AlarmID, TickType increment, TickType cycle, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_SetRelAlarm(AlarmID, increment, cycle);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_SetAbsAlarm(AlarmType
    AlarmID, TickType start, TickType cycle, StatusType Error )
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_SetAbsAlarm(AlarmID, start, cycle);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_CancelAlarm(AlarmType 
    AlarmID, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_CancelAlarm(AlarmID);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_IncrementCounter(
    CounterType CounterID, AlarmType AlarmID, TaskType TaskID,
    EE_TYPENOTIFY action, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_IncrementCounter(CounterID, AlarmID, TaskID,
            action);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_with_mask_IncrementCounter(
    CounterType CounterID, AlarmType AlarmID, TaskType TaskID,
    EventMaskType Mask, EE_TYPENOTIFY action, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_with_mask_IncrementCounter(CounterID, AlarmID,
            TaskID, Mask, action);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}
#else /* defined(__OO_ECC1__) || defined(__OO_ECC2__) */
__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_with_mask_IncrementCounter(
    CounterType CounterID, AlarmType AlarmID, TaskType TaskID,
    EventMaskType Mask, EE_TYPENOTIFY action, StatusType Error)
{
    EE_oo_notify_error_IncrementCounter(CounterID, AlarmID, TaskID, action,
        Error);
}
#endif /* defined(__OO_ECC1__) || defined(__OO_ECC2__) */

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_GetCounterValue(
    CounterType CounterID, TickRefType Value, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_GetCounterValue(CounterID, Value);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_GetElapsedValue(CounterType
    CounterID, TickRefType Value, TickRefType ElapsedValue, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_GetElapsedValue(CounterID, Value, ElapsedValue);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

#else /* __OO_NO_ALARMS__ */
#define EE_oo_notify_error_GetAlarmBase(AlarmID, Tick, Error)   ((void)0)
#define EE_oo_notify_error_GetAlarm(AlarmID, Tick, Error)       ((void)0)
#define EE_oo_notify_error_SetRelAlarm(AlarmID, increment, cycle, Error) \
    ((void) 0)
#define EE_oo_notify_error_SetAbsAlarm(AlarmID, start, cycle, Error) \
    ((void)0)
#define EE_oo_notify_error_CancelAlarm(AlarmID, Error)          ((void)0)
#define EE_oo_notify_error_IncrementCounter(CounterID, AlarmID, TaskID, Mask, \
    Error)    ((void)0)
#define EE_oo_notify_error_with_mask_IncrementCounter(CounterID, AlarmID, \
    TaskID, Mask, action, Error)    ((void)0)
#define EE_oo_notify_error_GetCounterValue(CounterID, Value, Error) ((void)0)
#define EE_oo_notify_error_GetElapsedValue(CounterID, Value, ElapsedValue, \
    Error)    ((void) 0)
#endif /* __OO_NO_ALARMS__ */

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_StartOS(AppModeType
    Mode, StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
      EE_oo_fill_error_data_StartOS(Mode);
      EE_ErrorHook_nested_flag = 1U;
      ErrorHook(Error);
      EE_ErrorHook_nested_flag = 0U;
    }
}

#ifdef __OO_SEM__
__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_WaitSem(SemRefType Sem,
    StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_WaitSem(Sem);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}

__INLINE__ void __ALWAYS_INLINE__ EE_oo_notify_error_PostSem(SemRefType Sem,
    StatusType Error)
{
    if (EE_ErrorHook_nested_flag == 0U) {
        EE_oo_fill_error_data_PostSem(Sem);
        EE_ErrorHook_nested_flag = 1U;
        ErrorHook(Error);
        EE_ErrorHook_nested_flag = 0U;
    }
}
#else /* __OO_SEM__ */
#define EE_oo_notify_error_WaitSem(Sem, Error)    ((void)0)
#define EE_oo_notify_error_PostSem(Sem, Error)    ((void)0)
#endif /*__OO_SEM__ */

#else /* __OO_HAS_ERRORHOOK__ */
#define EE_oo_notify_error_service(ServiceID, Error)            ((void)0)
#define EE_oo_notify_error_ActivateTask(TaskID, Error)          ((void)0)
#define EE_oo_notify_error_ChainTask(TaskID, Error)             ((void)0)
#define EE_oo_notify_error_TerminateTask                        ((void)0)
#define EE_oo_notify_error_GetTaskID(TaskID, Error)             ((void)0)
#define EE_oo_notify_error_GetTaskState(TaskID, State, Error)   ((void)0)
#define EE_oo_notify_error_GetResource(ResID, Error)            ((void)0)
#define EE_oo_notify_error_ReleaseResource(ResID, Error)        ((void)0)
#define EE_oo_notify_error_SetEvent(TaskID, Mask, Error)        ((void)0)
#define EE_oo_notify_error_ClearEvent(Mask, Error)              ((void)0)
#define EE_oo_notify_error_GetEvent(TaskID, Event, Error)       ((void)0)
#define EE_oo_notify_error_WaitEvent(Mask, Error)               ((void)0)
#define EE_oo_notify_error_GetAlarmBase(AlarmID, Tick, Error)   ((void)0)
#define EE_oo_notify_error_GetAlarm(AlarmID, Tick, Error)       ((void)0)
#define EE_oo_notify_error_SetRelAlarm(AlarmID, increment, cycle, Error) \
    ((void) 0)
#define EE_oo_notify_error_SetAbsAlarm(AlarmID, start, cycle, Error) \
    ((void)0)
#define EE_oo_notify_error_CancelAlarm(AlarmID, Error)          ((void)0)
#define EE_oo_notify_error_IncrementCounter(CounterID, AlarmID, TaskID, Mask, \
    Error)    ((void)0)
#define EE_oo_notify_error_with_mask_IncrementCounter(CounterID, AlarmID, \
    TaskID, Mask, action, Error)    ((void)0)
#define EE_oo_notify_error_GetCounterValue(CounterID, Value, Error) \
    ((void)0)
#define EE_oo_notify_error_GetElapsedValue(CounterID, Value, ElapsedValue, \
    Error)    ((void) 0)
#define EE_oo_notify_error_StartOS(Mode, Error)                 ((void)0)
#define EE_oo_notify_error_WaitSem(Sem, Error)                  ((void)0)
#define EE_oo_notify_error_PostSem(Sem, Error)                  ((void)0)
#endif /* __OO_HAS_ERRORHOOK__ */

#endif /* __INCLUDE_OO_INTFUNC_H__ */
