/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2012  Evidence Srl
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

 /** @file   ee_tc_internal.h
  *  @brief  CPU-dependent internal part of HAL
  *  @author Errico Guidieri
  *  @date 2012
  */

/* Infineon modifications, integration to Infineon Build environment:
 * Fixes for compilation issues with Tasking Compiler:
 * Updates for compilation issues with Dcc Compiler:
 * Usage of generic compiler independent register header file:
 * Author: 
 *         Ashok Abbi, <Ashok.Abbi@infineon.com> 18.07.2013
 */

#ifndef INCLUDE_EE_TC_INTERNAL_H__
#define INCLUDE_EE_TC_INTERNAL_H__

/* Public API must be seen by Kernel internals */
#include "cpu/tricore/inc/ee_tc_cpu.h"

/* Customize internal compilation with pragmas */
#ifdef __TASKING__
/*
 * Disable Warnings for Infinite Loops, inside the Kernel
 */
EE_DO_PRAGMA(warning 557)
/* Disable Warnings for dead assignment to "np_flags" eliminated inside the
   EE_oo_TerminateTask Kernel Function. We want the code in the way it is. */
/* It should have been worked according to documentation but it doesn't */
/* EE_DO_PRAGMA(EE_oo_TerminateTask:warning 588) */
#endif /* __TASKING__ */

/* I have to inform DCC when a function touch SP adding the following attribute
   to the function definition */
#if defined(__DCC__)
#define EE_CHANGE_STACK_POINTER __attribute__(( use_frame_pointer ))
#else
#define EE_CHANGE_STACK_POINTER
#endif /* __DCC__ */

/*******************************************************************************
                              Generic Primitives
 ******************************************************************************/

#include "cpu/common/inc/ee_primitives.h"

/*******************************************************************************
      System startup Handling is Moved in MCU folder, because TriCore
      architecture doesn't define any standard core timer to be used as
      system timer. So the system timer must be a MCU Timer.
 ******************************************************************************/
/* Inform StartOS kernel primitive that have to call EE_cpu_startos
   start-up routine */
//#define __OO_CPU_HAS_STARTOS_ROUTINE__ FIXME Ashok: It would be nice to move this to eecfg.h file !

/*******************************************************************************
                      HAL For Primitives Syncronization
 ******************************************************************************/

/* Mask used to reset CCPN field in flags dull variable */
#define EE_TC_RESET_ICR_CCPN 0xFFFFFF00U
/* Macro used to adjust flags dull variable with new priority */
#define EE_TC_ADJUST_FLAGS_WITH_NEW_PRIO(flags, prio) \
  (((flags) & EE_TC_RESET_ICR_CCPN) | (prio))

/* Called as _first_ function of a primitive that can be called from within
 * an IRQ and from within a task. */
__INLINE__ EE_FREG __ALWAYS_INLINE__ EE_hal_begin_nested_primitive( void )
{
  return EE_hal_suspendIRQ();
}

/* Called as _last_ function of a primitive that can be called from
 * within an IRQ or a task. */
__INLINE__ void __ALWAYS_INLINE__ EE_hal_end_nested_primitive( EE_FREG flags )
{
  EE_hal_resumeIRQ(flags);
}

/* Used to get internal CPU priority. */
__INLINE__ EE_TYPEISR2PRIO __ALWAYS_INLINE__ EE_hal_get_int_prio( void )
{
  return EE_tc_get_int_prio();
}

/* Used to set internal CPU priority. */
__INLINE__ void __ALWAYS_INLINE__ EE_hal_set_int_prio( EE_TYPEISR2PRIO prio )
{
  EE_tc_set_int_prio(prio);
}

/*
 * Used to change internal CPU priority and return a status flags mask.
 *
 * Note:    EE_FREG param flags and return value needed only for according to
 *          HAL interface.
 */
__INLINE__ EE_FREG __ALWAYS_INLINE__ EE_hal_change_int_prio(
  EE_TYPEISR2PRIO prio, EE_FREG flags )
{
  EE_tc_set_int_prio(prio);
  return EE_TC_ADJUST_FLAGS_WITH_NEW_PRIO(flags, prio);
}

/*
 * Used to raise internal CPU interrupt priority if param new_prio is greater
 * than actual priority.
 *
 * Note:    EE_FREG param flags and return value needed only for according to
 *          HAL interface.
 */

__INLINE__ EE_FREG __ALWAYS_INLINE__ EE_hal_raise_int_prio_if_less(
  EE_TYPEISR2PRIO new_prio, EE_FREG flags )
{
  register EE_TYPEISR2PRIO prev_prio = EE_tc_get_int_prio();
  if ( prev_prio < new_prio )
  {
    EE_tc_set_int_prio(new_prio);
    /* Mask CCPN in flags and set the new one */
    flags = EE_TC_ADJUST_FLAGS_WITH_NEW_PRIO(flags, new_prio);
  }
  return flags;
}

/*
    Used to check if interrupt priority is less than new priority to be
    set.
*/
__INLINE__ EE_BIT __ALWAYS_INLINE__ EE_hal_check_int_prio_if_higher(
    EE_TYPEISR2PRIO new_prio )
{
  register EE_TYPEISR2PRIO actual_prio = EE_tc_get_int_prio();
  return (actual_prio > new_prio)? 1U: 0U;
}

/*******************************************************************************
                Multistack Data Structures for Context Handling
 ******************************************************************************/
/*
 * These structures are used by the Multistack HAL to contain the
 * information about a "stack", that is composed by a user stack
 * (SYS-mode) and a system stack (IRQ-mode). This type is used
 * internally by the HAL and is not used by the kernel.
 */

#ifdef __MULTI__

/* Index of the current stack. */
extern EE_UREG EE_tc_active_tos;

/* Used in common context */
#define EE_hal_active_tos EE_tc_active_tos

/* Top of each private stack. */
extern struct EE_TC_TOS EE_tc_system_tos[];

/* Used to hold the Tasks return addresses (that ccan be lost in context
   switches) */
extern EE_ADDR EE_tc_tasks_RA[];

/* Stack used by IRQ handlers */
#ifdef __IRQ_STACK_NEEDED__
/* This could be declared 'const', but to keep RT-Druid behave as usual
   is NOT declared as const */
extern struct EE_TOS EE_tc_IRQ_tos;
#endif /* __IRQ_STACK_NEEDED__ */
#endif /* __MULTI__ */

/*******************************************************************************
                            Standard Context Handling
 ******************************************************************************/

/* Flag (OR'ed to an EE_TID) to mark a task as stacked. */
#define TID_IS_STACKED_MARK 0x80000000U

#include "cpu/common/inc/ee_context.h"

/* typically called at the end of an interrupt */
#define EE_hal_IRQ_stacked  EE_hal_endcycle_stacked
#define EE_hal_IRQ_ready    EE_hal_endcycle_ready

 /* Unmark the tid and add one to access the kernel data structures
    (tid->index).
    This is rely on implicit cast rule between signed and unsigned numbers
    valid only for two's complements integer representations,
    IS NOT PORTABLE IN NOT INTEGER TWO'S COMPLEMENT ARCHITECTURES. */
__INLINE__ EE_UTID __ALWAYS_INLINE__ EE_tc_tid_as_index( EE_TID tid )
{
  return (((EE_UTID)tid + 1U) & (~TID_IS_STACKED_MARK));
}

/*******************************************************************************
                        OO TerminateTask related stuffs
 ******************************************************************************/
#if defined(__OO_BCC1__) || defined(__OO_BCC2__) || defined(__OO_ECC1__) || \
    defined(__OO_ECC2__)

/** Save the context and call the body of the task `tid'. */
void EE_hal_terminate_savestk( EE_TID tid );

/** Restore the context saved by EE_hal_terminate_savestk() for the task `tid'
    and return from EE_hal_terminate_savestk(). */
void EE_hal_terminate_task( EE_TID tid );

#endif /* __OO_BCCx__  || __OO_ECCx__ */

/*******************************************************************************
                  ISR (and TRAPs) PCXI/Stack handling Code
 ******************************************************************************/
 
 /**
 *  This code crawl the CSA list and search the one after an IRQ or a TRAP.
 *  It makes some assumption about Interrupt and Vector tables implementations.
 */
 __INLINE__ EE_CSA * __ALWAYS_INLINE__ EE_tc_get_original_csa( void )
{
  register EE_PCXI pcxi = EE_tc_csa_get_pcxi();
  /* Flush shadow CSAs & any kind of write before access */
  EE_tc_dsync();

  /* If Interrupt Vector use a call instead of a jump
     the actual Previous Context is an Upper Context, so I have to move up
     twice in the CSA list to find the right context where TASK SP is saved.
     Uncomment the following */
  /* pcxi = EE_tc_csa_make_addr(pcxi)->next; */

  /* Move-Up from expected lower context saved */
  return EE_tc_csa_make_addr(pcxi);
}

/**
 *  This code crawl the CSA list and search the PCXI after an IRQ or a TRAP.
 *  It makes some assumption about Interrupt and Vector tables implementations.
 */
__INLINE__ EE_PCXI __ALWAYS_INLINE__ EE_tc_get_original_pcxi( void )
{
  EE_CSA_LINK res = {0U};
  EE_CSA * csa_ptr = EE_tc_get_original_csa();
  if (csa_ptr != NULL) {
    res = csa_ptr->next;
  }
  return res;
}

#ifdef __IRQ_STACK_NEEDED__

/**
 *  This code crawl the CSA list and search the Context Holding SP to be set
 *  back before scheduling. It makes some assumption about Interrupt and
 *  Vector tables implementations.
 */
__INLINE__ EE_ADDR __ALWAYS_INLINE__ EE_tc_get_prev_stack( void )
{
  /* Read saved SP */
  EE_ADDR res = (EE_ADDR)NULL;
  EE_CSA* csa_ptr = EE_tc_csa_make_addr(EE_tc_get_original_pcxi());
  if (csa_ptr != NULL) {
    res = csa_ptr->cx.ucx.A10;
  }
  return res;
}

/* Masked used to clean bit corresponding to PSW.IS in bitmask. */
#define EE_TC_PSW_IS_CLEAN_MASK (~((EE_UINT32)1U << 9U))

/* Clean PSW.IS bit in PSW register */
__INLINE__ void __ALWAYS_INLINE__ EE_tc_set_psw_user_stack( void )
{
  EE_tc_set_psw((EE_UINT32)EE_tc_get_psw() & EE_TC_PSW_IS_CLEAN_MASK);
}

/**
 *  This code crawl the CSA list and search the Context Holding SP and set it
 *  back before scheduling. It makes some assumption about Interrupt and
 *  Vector tables implementations.
 */
__INLINE__ void __ALWAYS_INLINE__ EE_CHANGE_STACK_POINTER
  EE_tc_set_prev_stack_back( void )
{
  /* Switch back to interrupted "User Stack" */
  EE_tc_set_SP( EE_tc_get_prev_stack( ) );
  /* Configure "User" Stack */
  EE_tc_set_psw_user_stack();
}

__INLINE__ void __ALWAYS_INLINE__ EE_CHANGE_STACK_POINTER
  EE_tc_set_interrupted_stack( EE_CONST_ADDR sp )
{
  /* Switch back to interrupted "User Stack" */
  EE_tc_set_SP( sp );
  /* Configure "User" Stack */
  EE_tc_set_psw_user_stack();
}
#else /* __IRQ_STACK_NEEDED__ */
__INLINE__ EE_ADDR __ALWAYS_INLINE__ EE_tc_get_prev_stack( void )
{
  return EE_tc_get_SP();
}
/* Do not clean anything, I can't */
#define EE_TC_PSW_IS_CLEAN_MASK                     ((EE_UREG)-1)
/* If there's only one stack you must be in "Global Shared Stack" flagged by
   PSW.IS bit at true: that means, no PSW.IS clean up is allowed */
#define EE_tc_set_psw_user_stack()                  ((void)0U)
/* Automatic switch to ISR stack is disabled: I'm always in "previous" stack */
#define EE_tc_set_prev_stack_back()                 ((void)0)
/* "Shared Global Stack": nothing to do */
#define EE_tc_set_interrupted_stack(isr_stack_ptr)  ((void)0U)
#endif /* __IRQ_STACK_NEEDED__ */

#endif /* INCLUDE_EE_TC_INTERNAL_H__ */
