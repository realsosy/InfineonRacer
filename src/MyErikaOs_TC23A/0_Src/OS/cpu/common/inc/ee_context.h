/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2010  Evidence Srl
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
 * Context switch functions used in HAL implementations, to be included by a
 * specific ee_internal.h header.
 * Derived from pkg/cpu/pic30/inc/ee_internal.h
 * Author: 2009-2010 Bernardo Dal Seno
 */

#ifndef __INCLUDE_CPU_COMMON_EE_CONTEXT__
#define __INCLUDE_CPU_COMMON_EE_CONTEXT__

/*
 * Instructions
 *
 * The monostack part is complete (obviously, the functions to disable/enable
 *  interrupts are not included here).  For the multistack part you have to
 *  provide two additional things:
 *  1. An assembly implementation of EE_std_change_context_multi(); see below.
 *  2. A #define directive for EE_hal_active_tos, which is just an alias for the
 *  actual architecture-dependent variable.  This variable contains the index of
 *  the current stack.
 */

/* After a task terminates, the scheduler puts the id of the new task to launch
 * or switch to in this variable.  If the is stacked, its id is marked so. */
extern EE_TID EE_std_endcycle_next_tid;


/* The multistack version must be implemented in ASM; no standard
 * implementation, sorry.  This is the only function that performs context
 * switching.  The multistack version doesn't jump to the task body if its TID
 * has been maked as stacked.  This is used to switch to a task that has been
 * suspend by a previous call to EE_std_change_contex(). */
#ifdef __MONO__
__DECLARE_INLINE__ void EE_std_change_context(EE_TID tid);
#endif
#ifdef __MULTI__
void EE_std_change_context(EE_TID tid);
#endif
/* Pseudo code for EE_std_change_context_multi():
     begin:
      tos_index = EE_std_thread_tos[tid+1];
      if is_not_the_current_stack(tos_index) {
          save_caller_saved_registers();
          switch_stacks(tos_index);
          restore_caller_saved_registers();
      }
      if (is_not_marked_stacked(tid)) {
          tid = EE_std_run_task_code(tid);
          goto begin;
      }

      Please notice that the "goto begin" is actually a recursive call to
      EE_std_change_context_multi(), but in this way there is no stack growing.
      
      Please notice also that 'tid' must NOT be saved onto the stack before
      switching stacks, otherwise when switching from another stack back to the
      current one, you would overwrite its value.

      For processors where the return address is saved in a register, that
      register must be saved in the stack too.

      switch_stacks() should also update EE_hal_active_tos.
*/


/* Call a the body of a task */
#if defined(__OO_BCC1__) || defined(__OO_BCC2__) || \
 defined(__OO_ECC1__) || defined(__OO_ECC2__)
#define EE_call_task_body(tid)  EE_oo_thread_stub()
#else
#define EE_call_task_body(tid)  ((EE_hal_thread_body[tid])())
#endif


/* Launch a new task, possibly switching to a different stack, clean up the task
 * after it ends, and call the scheduler (and switch to other tasks/stacks)
 * until there are no more tasks to switch to.  In the multistack version, also
 * change the current stack before returning if the scheduler asks for it. */
__DECLARE_INLINE__ void EE_hal_ready2stacked(EE_TID tid);


/* Launch a new task on the current stack, clean up the task after it ends, and
 * call the scheduler.  Return the next task to launch, which is "marked as
 * stacked" if there is no new task to launch. */
EE_TID EE_std_run_task_code(EE_TID tid);



/*
 * Inline implementations
 */

#ifdef __MONO__

/* With monostack, we need only the information that the task is stacked.  We
 * don't need to know which task it is, as there is no new stack to switch
 * to. */
#define EE_std_mark_tid_stacked(tid) ((EE_TID)-1)

#define EE_std_need_context_change(tid) ((tid) >= 0)

__INLINE__ void __ALWAYS_INLINE__ EE_std_change_context(EE_TID tid)
{
    do {
        tid = EE_std_run_task_code(tid);
    } while (EE_std_need_context_change(tid));
}

#endif /* __MONO__ */


#ifdef __MULTI__

/*  TID_IS_STACKED_MARK must set the most significative bit

    #1
    FIXME:
    This works only with two's complements architecture. Casting beetween
    signed/unsigned integer in C is defined by value not by representation and
    only two's complements grant the the equivalence between the two.

    Standard Section 4.7/2 [conv.integral]:

    If the destination type is unsigned, the resulting value is the least
    unsigned integer congruent to the source integer (modulo 2^n where n is
    the number of bits used to represent the unsigned type).

    Note: In a two’s complement representation, this conversion is conceptual
    and there is no change in the bit pattern (if there is no truncation).
 */
#define EE_std_mark_tid_stacked(tid) \
    ((EE_UTID)(tid) | (EE_UTID)TID_IS_STACKED_MARK)

  /* Check if the TID is Marked Stacked */
#define EE_std_tid_is_marked_stacked(tid)\
    (((EE_UTID)(tid) & TID_IS_STACKED_MARK) != 0U)

__INLINE__ int __ALWAYS_INLINE__ EE_std_need_context_change(EE_TID tid)
{
    EE_UTID utid;
    int need_context_change;

    if ( EE_std_tid_is_marked_stacked(tid) )
    {
      /* Unmark the tid to access the EE_std_thread_tos, otherwise undefined
         behaviour. (Index out of arrays boundaries)
         FIXME: #1
      */
      utid = (((EE_UTID)tid + 1U)) & (~(EE_UTID)TID_IS_STACKED_MARK);
      need_context_change = (EE_hal_active_tos != EE_std_thread_tos[utid]);
    } else {
      need_context_change = 1;
    }

    return need_context_change;
}

__INLINE__ void __ALWAYS_INLINE__ EE_hal_stkchange(EE_TID tid)
{
    EE_UTID tmp = EE_std_mark_tid_stacked(tid);
    EE_std_change_context((EE_TID)tmp);
}

#endif /* __MULTI__ */


/* The functions below should work for both the monostack and multistack
 * versions of the kernel, thanks to the macros defined above.  In the mono
 * version, all the stack-related stuff is ignored. */


__INLINE__ void EE_hal_ready2stacked(EE_TID tid)
{
    EE_std_change_context(tid);
}


__INLINE__ void __ALWAYS_INLINE__ EE_hal_endcycle_ready(EE_TID tid)
{
    EE_std_endcycle_next_tid = tid;
}


__INLINE__ void __ALWAYS_INLINE__ EE_hal_endcycle_stacked(EE_TID tid)
{
    EE_UTID utid_tmp = (EE_UTID)EE_std_mark_tid_stacked(tid);
    EE_std_endcycle_next_tid = (EE_TID)utid_tmp;
}

#endif /* __INCLUDE_CPU_COMMON_EE_CONTEXT__ */
