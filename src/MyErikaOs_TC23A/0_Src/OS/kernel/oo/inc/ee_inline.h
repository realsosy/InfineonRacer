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
 * Author: 2004 Paolo Gai
 * CVS: $Id: ee_inline.h,v 1.3 2006/04/08 21:15:23 pj Exp $
 */

/* This file is ONLY included when we are NOT compiling a library that
   will be used in BINARY DISTRIBUTIONS */

#ifndef __INCLUDE_OO_INLINE_H__
#define __INCLUDE_OO_INLINE_H__

/***************************************************************************
 * Internal data structures and functions
 ***************************************************************************/

#include "kernel/oo/inc/ee_intfunc.h"

/***************************************************************************
 * 13.2 Task management 
 ***************************************************************************/

/***************************************************************************
 * 13.3 Interrupt handling 
 ***************************************************************************/

/***************************************************************************
 * The simbol EE_OLD_HAL marks architecture that doesn't not implement new
 * HAL APIs (MUST be defined in the header ee_cpu.h of these architectures)
 ***************************************************************************/
#ifndef EE_OLD_HAL
/* 13.3.2.1: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_ENABLEALLINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_EnableAllInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  EE_ORTI_set_service_in(EE_SERVICETRACE_ENABLEALLINTERRUPTS);
  /* I begin with the suspend for atomicity. */
  temp_suspend = EE_hal_suspendIRQ();
  /* OS299: If EnableAllInterrupts()/ResumeAllInterrupts()/   ResumeOSInterrupts()
      are called and no corresponding DisableAllInterupts()/
      SuspendAllInterrupts() / SuspendOSInterrupts() was done before,
      the Operating System shall not perform this OS service. */
  if(EE_oo_IRQ_disable_count > 0U) {
    --EE_oo_IRQ_disable_count;
    if(EE_oo_IRQ_disable_count == 0U) {
      EE_hal_enableIRQ();
    }
  } else {
    /* Revert What I did */
    EE_hal_resumeIRQ(temp_suspend);
  }
  EE_ORTI_set_service_out(EE_SERVICETRACE_ENABLEALLINTERRUPTS);
}
#endif

/* 13.3.2.2: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_DISABLEALLINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_DisableAllInterrupts(void)
{
  EE_ORTI_set_service_in(EE_SERVICETRACE_DISABLEALLINTERRUPTS);
  /* I begin with the disable for atomicity. */
  EE_hal_disableIRQ();
  ++EE_oo_IRQ_disable_count;
  EE_ORTI_set_service_out(EE_SERVICETRACE_DISABLEALLINTERRUPTS);
}
#endif /* ! __PRIVATE_DISABLEALLINTERRUPTS__ && ! __EE_MEMORY_PROTECTION__ */

/* 13.3.2.3: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_RESUMEALLINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_ResumeAllInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  EE_ORTI_set_service_in(EE_SERVICETRACE_RESUMEALLINTERRUPTS);
  /* I begin with the suspend for atomicity. */
  temp_suspend = EE_hal_suspendIRQ();
  /* OS299: If EnableAllInterrupts()/ResumeAllInterrupts()/ResumeOSInterrupts()
      are called and no corresponding DisableAllInterupts()/
      SuspendAllInterrupts() / SuspendOSInterrupts() was done before,
      the Operating System shall not perform this OS service. */
  if (EE_oo_IRQ_disable_count > 0U) {
    --EE_oo_IRQ_disable_count;
    if(EE_oo_IRQ_disable_count == 0U) {
      EE_hal_resumeIRQ(EE_oo_IRQ_suspend_status);
    }
  } else {
    /* Revert What I did */
    EE_hal_resumeIRQ(temp_suspend);
  }

  EE_ORTI_set_service_out(EE_SERVICETRACE_RESUMEALLINTERRUPTS);
}
#endif /* ! __PRIVATE_RESUMEALLINTERRUPTS__ && ! __EE_MEMORY_PROTECTION__ */

/* 13.3.2.4: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_SUSPENDALLINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_SuspendAllInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  EE_ORTI_set_service_in(EE_SERVICETRACE_SUSPENDALLINTERRUPTS);
  /* I begin with the suspend for atomicity. */
  temp_suspend = EE_hal_suspendIRQ();
  if(EE_oo_IRQ_disable_count == 0U) {
    EE_oo_IRQ_suspend_status = temp_suspend;
  }
  EE_oo_IRQ_disable_count++;

  EE_ORTI_set_service_out(EE_SERVICETRACE_SUSPENDALLINTERRUPTS);
}
#endif /* ! __PRIVATE_SUSPENDALLINTERRUPTS__ && ! __EE_MEMORY_PROTECTION__ */

/* 13.3.2.5: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_RESUMEOSINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_ResumeOSInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  EE_ORTI_set_service_in(EE_SERVICETRACE_RESUMEOSINTERRUPTS);
  /* I begin with the suspend for atomicity. */
  temp_suspend = EE_hal_suspendIRQ();
  /* OS299: If EnableAllInterrupts()/ResumeAllInterrupts()/ResumeOSInterrupts()
      are called and no corresponding DisableAllInterupts()/
      SuspendAllInterrupts() / SuspendOSInterrupts() was done before,
      the Operating System shall not perform this OS service. */
  if (EE_oo_IRQ_disable_count > 0U) {
    --EE_oo_IRQ_disable_count;
    if(EE_oo_IRQ_disable_count == 0U) {
      EE_hal_resumeIRQ(EE_oo_IRQ_suspend_status);
    }
  } else {
    /* Revert What I did */
    EE_hal_resumeIRQ(temp_suspend);
  }

  EE_ORTI_set_service_out(EE_SERVICETRACE_RESUMEOSINTERRUPTS);
}
#endif /* ! __PRIVATE_RESUMEOSINTERRUPTS__ && ! __EE_MEMORY_PROTECTION__ */

/* 13.3.2.6: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_SUSPENDOSINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_SuspendOSInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  EE_ORTI_set_service_in(EE_SERVICETRACE_SUSPENDOSINTERRUPTS);
  /* I begin with the suspend for atomicity. */
  temp_suspend = EE_hal_suspendIRQ();
  if(EE_oo_IRQ_disable_count == 0U) {
    EE_oo_IRQ_suspend_status = temp_suspend;
  }
  EE_oo_IRQ_disable_count++;

  EE_ORTI_set_service_out(EE_SERVICETRACE_SUSPENDOSINTERRUPTS);
}
#endif /* ! __PRIVATE_SUSPENDOSINTERRUPTS__ && ! __EE_MEMORY_PROTECTION__ */

#else /* !!! OLD INTERRUPT HANDLING PRIMITIVES !!! */

/* 13.3.2.1: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_ENABLEALLINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_EnableAllInterrupts(void)
{
  EE_ORTI_set_service_in(EE_SERVICETRACE_ENABLEALLINTERRUPTS);

  EE_hal_enableIRQ();

  EE_ORTI_set_service_out(EE_SERVICETRACE_ENABLEALLINTERRUPTS);
}
#endif

/* 13.3.2.2: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_DISABLEALLINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_DisableAllInterrupts(void)
{
  EE_ORTI_set_service_in(EE_SERVICETRACE_DISABLEALLINTERRUPTS);

  EE_hal_disableIRQ();

  EE_ORTI_set_service_out(EE_SERVICETRACE_DISABLEALLINTERRUPTS);
}
#endif /* ! __PRIVATE_DISABLEALLINTERRUPTS__) && ! __EE_MEMORY_PROTECTION__ */

/* 13.3.2.3: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_RESUMEALLINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_ResumeAllInterrupts(void)
{
  EE_ORTI_set_service_in(EE_SERVICETRACE_RESUMEALLINTERRUPTS);

  EE_oo_IRQ_disable_count--;
  if (EE_oo_IRQ_disable_count == 0U) {
    EE_hal_enableIRQ();
  }

  EE_ORTI_set_service_out(EE_SERVICETRACE_RESUMEALLINTERRUPTS);
}
#endif /* ! __PRIVATE_RESUMEALLINTERRUPTS__ && ! __EE_MEMORY_PROTECTION__ */

/* 13.3.2.4: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_SUSPENDALLINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_SuspendAllInterrupts(void)
{
  EE_ORTI_set_service_in(EE_SERVICETRACE_SUSPENDALLINTERRUPTS);

  if (EE_oo_IRQ_disable_count == 0U) {
    EE_hal_disableIRQ();
  }
  EE_oo_IRQ_disable_count++;

  EE_ORTI_set_service_out(EE_SERVICETRACE_SUSPENDALLINTERRUPTS);
}
#endif /* ! __PRIVATE_SUSPENDALLINTERRUPTS__ && ! __EE_MEMORY_PROTECTION__ */

/* 13.3.2.5: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_RESUMEOSINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_ResumeOSInterrupts(void)
{
  EE_ORTI_set_service_in(EE_SERVICETRACE_RESUMEOSINTERRUPTS);

  EE_oo_IRQ_disable_count--;
  if (EE_oo_IRQ_disable_count == 0U) {
    EE_hal_enableIRQ();
  }

  EE_ORTI_set_service_out(EE_SERVICETRACE_RESUMEOSINTERRUPTS);
}
#endif /* ! __PRIVATE_RESUMEOSINTERRUPTS__ && ! __EE_MEMORY_PROTECTION__ */

/* 13.3.2.6: BCC1, BCC2, ECC1, ECC2 */
#if (! defined(__PRIVATE_SUSPENDOSINTERRUPTS__)) \
 && (! defined(__EE_MEMORY_PROTECTION__))
__INLINE__ void __ALWAYS_INLINE__ EE_oo_SuspendOSInterrupts(void)
{
  EE_ORTI_set_service_in(EE_SERVICETRACE_SUSPENDOSINTERRUPTS);

  if (EE_oo_IRQ_disable_count == 0U) {
    EE_hal_disableIRQ();
  }
  EE_oo_IRQ_disable_count++;

  EE_ORTI_set_service_out(EE_SERVICETRACE_SUSPENDOSINTERRUPTS);
}
#endif /* ! __PRIVATE_SUSPENDOSINTERRUPTS__ && ! __EE_MEMORY_PROTECTION__ */

#endif /* EE_OLD_HAL */

/***************************************************************************
 * 13.7 Operating system execution control 
 ***************************************************************************/

/* 13.7.2 System services                                                  */
/* ----------------------------------------------------------------------- */

/* 13.7.2.1: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_GETACTIVEAPPLICATIONMODE__
/* by default there is only 6the default application mode defined!... */
__INLINE__ AppModeType __ALWAYS_INLINE__ EE_oo_GetActiveApplicationMode(void) 
{ 
  /* both assignment to enable smart debuggers to notice the entry and
     exit from getactiveapplicationmode.
     Note that the variable is volatile, so both the writings succeeds
  */
  EE_ORTI_set_service_in(EE_SERVICETRACE_GETACTIVEAPPLICATIONMODE);
  EE_ORTI_set_service_out(EE_SERVICETRACE_GETACTIVEAPPLICATIONMODE);

  return EE_ApplicationMode; 
}
#endif

#if defined(__MSRP__) && (!defined(__OO_NO_RESOURCES__))
__INLINE__ EE_UREG __ALWAYS_INLINE__ EE_oo_isGlobal(ResourceType ResID)
{
  register EE_UREG isGlobal, ureg_tmp1, ureg_tmp2;
  EE_SREG sreg_tmp;
/* mask off the MSB, that indicates whether this is a global or a
     local resource */

  /*
   * This is the compact expression
   * isGlobal = ((ResID & EE_GLOBAL_MUTEX) != (ResourceType)0U);
   *
   * The following is the extended version introduced to
   * meet MISRA requirements
   */
  ureg_tmp1 = (ResID & EE_GLOBAL_MUTEX);
  ureg_tmp2 = (ResourceType)0U;
  sreg_tmp = (EE_SREG)(ureg_tmp1 != ureg_tmp2);
  isGlobal = (EE_UREG)sreg_tmp;

  return isGlobal;
}
#endif /* __MSRP__ && !__OO_NO_RESOURCES__ */

#endif /* __INCLUDE_OO_INLINE_H__ */
