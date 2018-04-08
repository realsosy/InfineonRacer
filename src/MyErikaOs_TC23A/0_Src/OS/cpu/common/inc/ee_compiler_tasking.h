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

 /** @file   ee_compiler_tasking.h
  *  @brief  Compiler-dependent definitions for TASKING
  *  This file has been generated for TASKING 4.0r1. 
  *  You can find TASKING documentation pdf file for compiler at:
  *  http://www.tasking.com/support/tricore/tc_user_guide_v4.0.pdf
  *  In following comments, sometime, paragraph reference of this document
  *  are added.
  *  @author Errico Guidieri
  *  @date 2012
  */
#ifndef INCLUDE_EE_COMPILER_TASKING_H__
#define INCLUDE_EE_COMPILER_TASKING_H__

/******************************************************************************
 * TASKING implements the C99 standard pragma operator that let you embed 
 * pragmas inside macros.
 * So where will be possibible we'll use pragmas instead that attributes,
 * beacuse more 'standard' and preferred by MISRA-C.
 * (1.7. Pragmas to Control the Compiler)
 * Syntax for _Pragma operator:
 * _Pragma("[label:]pragma-spec pragma-arguments [on|off|default|restore]")
 ******************************************************************************/
/* Used for second level macro expansion and token stringification */
#define EE_DO_PRAGMA(X) _Pragma(#X)
/* Aesthetic MACRO to make attributes looks like pragmas */
#define EE_DO_ATTRIBUTE(X) __attribute__((X))

/* __INLINE__ is a macro already used by a lot of libraries: protect it for
   integration */
#ifndef __INLINE__
#ifdef __NO_INLINE__
#define __INLINE__             static
/* Used to declare an inline function before the actual definition */
#define __DECLARE_INLINE__     static
#else
#define __INLINE__             static inline
/* Used to declare an inline function before the actual definition */
#define __DECLARE_INLINE__     static inline
#endif
#endif /* !__INLINE__ */

/* Empty because redundant with the keyword inline. 1.6. Attributes */ 
#define __ALWAYS_INLINE__

#define __NEVER_INLINE__        EE_DO_PRAGMA(noinline)
/* For noreturn attribute there'is not pragma equivalence */
#define NORETURN                EE_DO_ATTRIBUTE(noreturn)
/* "Maybe Attribute" not documented but originally used in startup code.
   It cannot be used with the construct __attribute__, I don't know
   why because, as I said, is not documented. */
#define JUMP                    __jump__

/* Alignment, Section, Used attributes as are used in GCC compiler */
/* attribute __align() (1.1.4. Changing the Alignment: __align()) */
#define EE_COMPILER_ALIGN(a)    EE_DO_ATTRIBUTE(__align(a))
#define EE_COMPILER_SECTION(s)  EE_DO_ATTRIBUTE(section(s))
#define EE_COMPILER_KEEP        EE_DO_ATTRIBUTE(used)

/* More useful attributes */
#define EE_COMPILER_UNUSED      EE_DO_ATTRIBUTE(unused)
/* For Weak attribute exist equivalent pragma */
#define EE_COMPILER_WEAK        EE_DO_PRAGMA(weak)
#define EE_COMPILER_EXPORT      EE_DO_ATTRIBUTE(export)
#define EE_COMPILER_EXTERN(f)   EE_DO_PRAGMA(extern f)

/*
 * I will use label pragmas (1.7. Pragmas to Control the Compiler - 
 * Label Pragmas) for alignment and sections where I should not share
 * code between TASKING and GCC. I do that to minimize the need of
 * "#pragma ... restore" statments.
 */
#define EE_PRAGMA_ALIGN(label,align_value)  \
    EE_DO_PRAGMA(label:align align_value)
#define EE_PRAGMA_SECTION(label,section_name)   \
    EE_DO_PRAGMA(label:section all #section_name)

/* Interrupt Function qualifier (1.10.4. Interrupt and Trap Functions) */

/* declare ivec_prio priority interrupt handler (priority and entry ID
   are the same thing in TriCore). */
#define EE_INTERRUPT(ivec_prio)     __interrupt(ivec_prio)
/* declare trap_class trap handler. (It will placed in Vector Table) */
#define EE_TRAP(trap_class)         __trap_fast(trap_class)

#ifdef  __CORE_TC16X__
/* EG: sii sicuro che __MSRP__ sia veramente la macro per il multicore */ 
#ifdef  __MSRP__
#define EE_VECTOR_TABLE             __vector_table(EE_CURRENTCPU)     
#else     /* __MSRP__ */
/* In sigle-core the main CPU is the one with CPU_ID = 0 */
#define EE_VECTOR_TABLE             __vector_table(0)
#endif    /* __MSRP__ */
#else    /* __CORE_TC16X__ */
/* Vector Table declaration makes sense only for last multicore chips
  (TC16X) */
#define EE_VECTOR_TABLE
#endif

/* This define is needed to enhance equivalence between GCC compiler and
   TASKING compiler so they can share mostly of the code. */
#define asm __asm

/* Macros used to encapsulate # and ## operators; used to enforce the expected
 * evaluation order of arguments */
#define EE_PREPROC_JOIN(a,b) a ## b
#define EE_PREPROC_STRING(s) # s
#define EE_PREPROC_EVAL(e) e

/* Software "memory barrier" (or "memory clobber") to enforce NOT code
   reordering. At compile level.
   http://www.nongnu.org/avr-libc/user-manual/optimization.html */
#define EE_barrier() \
    __asm volatile("" : : : "memory")

#endif  /* INCLUDE_EE_COMPILER_TASKING_H__ */
