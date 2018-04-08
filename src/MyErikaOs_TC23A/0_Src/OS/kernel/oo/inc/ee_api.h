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
 * Author: Paolo Gai
 * CVS: $Id: ee_api.h,v 1.5 2006/12/03 22:07:50 pj Exp $
 */


#ifndef __INCLUDE_KERNEL_OO_EE_API__
#define __INCLUDE_KERNEL_OO_EE_API__

#if defined(__OO_BCC1__) || defined(__OO_BCC2__) || defined(__OO_ECC1__) || defined(__OO_ECC2__)

#ifndef ActivateTask
#define ActivateTask             EE_oo_ActivateTask
#endif

#ifndef TerminateTask
#define TerminateTask            EE_oo_TerminateTask
#endif

#ifndef ChainTask
#define ChainTask                EE_oo_ChainTask
#endif

#ifndef Schedule
#define Schedule                 EE_oo_Schedule
#endif

#ifndef ForceSchedule
#define ForceSchedule            EE_oo_ForceSchedule
#endif

#ifndef GetTaskID
#define GetTaskID                EE_oo_GetTaskID
#endif

#ifndef GetTaskState
#define GetTaskState             EE_oo_GetTaskState
#endif

/* ----- */

#ifndef EnableAllInterrupts
#define EnableAllInterrupts      EE_oo_EnableAllInterrupts
#endif

#ifndef DisableAllInterrupts
#define DisableAllInterrupts     EE_oo_DisableAllInterrupts
#endif

#ifndef ResumeAllInterrupts
#define ResumeAllInterrupts      EE_oo_ResumeAllInterrupts
#endif

#ifndef SuspendAllInterrupts
#define SuspendAllInterrupts     EE_oo_SuspendAllInterrupts
#endif

#ifndef ResumeOSInterrupts
#define ResumeOSInterrupts       EE_oo_ResumeOSInterrupts
#endif

#ifndef SuspendOSInterrupts
#define SuspendOSInterrupts      EE_oo_SuspendOSInterrupts
#endif

/* ----- */

#ifndef GetResource
#define GetResource               EE_oo_GetResource
#endif

#ifndef ReleaseResource
#define ReleaseResource           EE_oo_ReleaseResource
#endif

/* ----- */

#ifndef SetEvent
#define SetEvent                  EE_oo_SetEvent
#endif

#ifndef ClearEvent
#define ClearEvent                EE_oo_ClearEvent
#endif

#ifndef GetEvent
#define GetEvent                  EE_oo_GetEvent
#endif

#ifndef WaitEvent
#define WaitEvent                 EE_oo_WaitEvent
#endif

/* ----- */

#ifndef CounterTick
#define CounterTick               EE_oo_IncrementCounter
#endif

#ifndef IncrementCounter
#define IncrementCounter          EE_oo_IncrementCounter
#endif

#ifndef GetCounterValue
#define GetCounterValue           EE_oo_GetCounterValue
#endif

#ifndef GetElapsedValue
#define GetElapsedValue           EE_oo_GetElapsedValue
#endif

#ifndef GetAlarmBase
#define GetAlarmBase              EE_oo_GetAlarmBase
#endif

#ifndef GetAlarm
#define GetAlarm                  EE_oo_GetAlarm
#endif

#ifndef SetRelAlarm
#define SetRelAlarm               EE_oo_SetRelAlarm
#endif

#ifndef SetAbsAlarm
#define SetAbsAlarm               EE_oo_SetAbsAlarm
#endif

#ifndef CancelAlarm
#define CancelAlarm               EE_oo_CancelAlarm
#endif

/* ----- */

#ifndef GetActiveApplicationMode
#define GetActiveApplicationMode  EE_oo_GetActiveApplicationMode
#endif

#ifndef StartOS
#define StartOS                   EE_oo_StartOS
#endif

#ifndef ShutdownOS
#define ShutdownOS                EE_oo_ShutdownOS
#endif


/* ----- */

#ifdef __OO_SEM__

#ifndef InitSem
#define InitSem                   EE_oo_InitSem
#endif

#ifndef WaitSem
#define WaitSem                   EE_oo_WaitSem
#endif

#ifndef TryWaitSem
#define TryWaitSem                EE_oo_TryWaitSem
#endif

#ifndef PostSem
#define PostSem                   EE_oo_PostSem
#endif

#ifndef GetValueSem
#define GetValueSem               EE_oo_GetValueSem
#endif

#endif /* __OO_SEM__ */

#endif /* BCC1... */

#endif
