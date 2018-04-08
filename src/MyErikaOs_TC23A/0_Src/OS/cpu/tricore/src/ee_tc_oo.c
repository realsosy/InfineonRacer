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

 /**
    @file ee_tc_oo.c
    @brief Functions to save and restore registers for OSEK TerminateTask().
    @author Errico Guidieri
    @date 2012
  */

/* Infineon modifications, integration to Infineon Build environment:
 * Fixes for compilation issues with Tasking Compiler:
 * Updates for compilation issues with Dcc Compiler:
 * Usage of generic compiler independent register header file:
 * Author: 
 *         Ashok Abbi, <Ashok.Abbi@infineon.com> 18.07.2013
 */
/* I need EE_NIL symbol from the kernel so I include the whole internals */
#include "ee_internal.h"

#if defined(__OO_BCC1__) || defined(__OO_BCC2__) \
    || defined(__OO_ECC1__) || defined(__OO_ECC2__)

/* Restores the context which has been saved with
 * EE_hal_terminate_savestk. */
void EE_hal_terminate_task(EE_TID tid)
{
    /* TASK previous CSAs list tail */
    EE_CSA_LINK task_queue_tail;
    /* Pointer to TASK Tail CSA */
    EE_CSA * p_task_tail_csa;
    /* "check point" (The context we want set back). */
    EE_CSA_LINK cp;
    /* Right place to return to */
    EE_ADDR ra;

    /* Obtain free-list head */
    EE_CSA_LINK fcx = EE_tc_csa_get_fcx();
    /* Obtain previous CSA list head */
    EE_CSA_LINK pcx = EE_tc_csa_get_pcxi();

    /* Flush shadow CSAs & any kind of write before access */
    EE_tc_dsync();

    /* Obtain the right context values to set back */
    task_queue_tail.reg = EE_terminate_data[tid];
    p_task_tail_csa = EE_tc_csa_make_addr(task_queue_tail);

    if (p_task_tail_csa != NULL) {
      cp = p_task_tail_csa->next;
      ra = p_task_tail_csa->cx.ucx.A11;

      /* "Try to Ensure" that compiler doesn't schedule beyond this point */
      EE_barrier();

      /* "Unwind" previous CSA list */
      EE_tc_csa_set_pcxi(cp);
      /* Link tail of dead CSAs to free-list */
      EE_tc_csa_set_next(task_queue_tail, fcx);
      /* Dead CSAs become head of free-list */
      EE_tc_csa_set_fcx(pcx);
      /* Return to the right place */
      EE_tc_set_RA(ra);
      /* Ensure changes apply before returning */
      EE_tc_isync();
    }
}

/* Used to save the first context that can be freed.
   I need this dummy call because. I want the context already in previous
   context queue, to protetct my self from interrupt that could change
   Free Context List.
 */
static void __NEVER_INLINE__ EE_tc_dummy_context( EE_TID tid )
{
  /* Previous Context from this point is the first context to be freed */
  EE_terminate_data[tid] = EE_tc_get_pcxi();

  /* Task funtion call */
  EE_terminate_real_th_body[tid]();

  /* When TerminateTask is not invoked, we simply return here,
   * and we handle the error calling EE_thread_not_terminated,
   * which not return.
   * I can simply make the function call because even though the compiler
   * optimize it with a jump (tail call optimization), I have to return
   * to previous context.
   *
   * AS requirements (OS052, OS069, OS070, OS239)
   */
  EE_thread_not_terminated();
}

/* Used to call the dummy context in the right way */
__INLINE__ void __ALWAYS_INLINE__ EE_tc_call_dummy_context( void )
{
  __asm volatile ("call EE_tc_dummy_context");
}

/* Saves a context "check point" to which we can return to with
 * TerminateTask. */
void EE_hal_terminate_savestk( EE_TID tid )
{
  /* Upper context has been saved implicitly and is pointed to by
   * PCXI, lower context need not be saved by ABI definition.
   *
   * I need make a dummy call to force the first context
   * to be freed in previous context list, to protect my self
   * from interrupt that could change free context list.
   */

  /* The right TID is already placed in the right register,
     so I just make the call to dummy context */
  EE_tc_call_dummy_context();
  /* This is has been added just to make the compiler happily check that dummy
     context is called */
  EE_tc_dummy_context(tid);
}

#endif /* __OO_BCC1__ || __OO_BCC2__ || __OO_ECC1__ || __OO_ECC2__  */
