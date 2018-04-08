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

 /** @file  ee_tc_trap.h
  *  @brief Header with definition for Trap handling
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

#ifndef INCLUDE_EE_TC_TRAP_H__
#define INCLUDE_EE_TC_TRAP_H__
#if 0
/* use this symbol to switch off ERIKA Trap Handling */
#ifndef EE_ERIKA_TRAP_HANDLING_OFF

/* I need base API */
#include "cpu/tricore/inc/ee_tc_cpu.h"

/* Macros for Trap Classes */
#define EE_CLASS_TRAPMMU   0U
#define EE_CLASS_TRAPPROT  1U
#define EE_CLASS_TRAPINST  2U
#define EE_CLASS_TRAPCONT  3U
#define EE_CLASS_TRAPBUS   4U
#define EE_CLASS_TRAPASS   5U
#define EE_CLASS_TRAPSYS   6U
#define EE_CLASS_TRAPNMI   7U

/*  Macros for MMU Class Trap Numbers:
 *  TIN Name Sync/Async  H/S      Description
 *  0   VAF  Synchronous Hardware Virtual Address Fill
 *  1   VAP  Synchronous Hardware Virtual Address Protection
 */
#define EE_TRAPMMU_VAF  0U
#define EE_TRAPMMU_VAP  1U

/*  Macros for Protection Class Trap Numbers:
 *  TIN Name Sync/Async  H/S      Description
 *  1   PRIV Synchronous Hardware Privileged Instruction
 *  2   MPR  Synchronous Hardware Memory Protection: Read Access
 *  3   MPW  Synchronous Hardware Memory Protection: Write Access
 *  4   MPX  Synchronous Hardware Memory Protection: Execution Access
 *  5   MPP  Synchronous Hardware Memory Protection: Peripheral Access
 *  6   MPN  Synchronous Hardware Memory Protection: Null Address
 *  7   GRWP Synchronous Hardware Global Register Write Protection
 */
#define EE_TRAPPROT_PRIV  1U
#define EE_TRAPPROT_MPR   2U
#define EE_TRAPPROT_MPW   3U
#define EE_TRAPPROT_MPX   4U
#define EE_TRAPPROT_MPP   5U
#define EE_TRAPPROT_MPN   6U
#define EE_TRAPPROT_GRWP  7U

/*  Macros for Instructions Class Trap Numbers:
 *  TIN Name Sync/Async  H/S      Description
 *  1   IOPC Synchronous Hardware Illegal Opcode
 *  2   UOPC Synchronous Hardware Unimplemented Opcode
 *  3   OPD  Synchronous Hardware Invalid operand specification
 *  4   ALN  Synchronous Hardware Data address alignment error
 *  5   MEM  Synchronous Hardware Invalid local memory address
 */
#define EE_TRAPINST_IOPC 1U
#define EE_TRAPINST_UOPC 2U
#define EE_TRAPINST_OPD  3U
#define EE_TRAPINST_ALN  4U
#define EE_TRAPINST_MEM  5U

/*  Macros for Context Class Trap Numbers:
 *  TIN Name Sync/Async  H/S      Description
 *  1   FCD  Synchronous Hardware Free context list depleted
 *  2   CDO  Synchronous Hardware Call depth overflow
 *  3   CDU  Synchronous Hardware Call depth underflow
 *  4   FCU  Synchronous Hardware Free context list underflow
 *  5   CSU  Synchronous Hardware Call stack underflow
 *  6   CTYP Synchronous Hardware Context type error
 *  7   NEST Synchronous Hardware Nesting error
 */
#define EE_TRAPCONT_FCD     1U
#define EE_TRAPCONT_CDO     2U
#define EE_TRAPCONT_CDU     3U
#define EE_TRAPCONT_FCU     4U
#define EE_TRAPCONT_CSU     5U
#define EE_TRAPCONT_CTYP    6U
#define EE_TRAPCONT_NEST    7U

/*  Macros for System Bus and Peripheral Errors Class Trap Numbers:
 *  TIN Name Sync/Async   H/S      Description
 *  1   PSE  Synchronous  Hardware Program fetch bus error
 *  2   DSE  Synchronous  Hardware Data access bus error
 *  3   DAE  Asynchronous Hardware Data access bus error
 *  4   CAE  Asynchronous Hardware Coprocessor Trap Asynchronous (TriCore 1.6)
 *  5   PIE  Synchronous  Hardware Program Memory Integrity Error.
 *  6   DIE  Asynchronous Hardware Data Memory Integrity Error (TriCore 1.6)
 *  7   TAE  Asynchronous Hardware Temporal Asynchronous Error
 */
#define EE_TRAPBUS_PSE 1U
#define EE_TRAPBUS_DSE 2U
#define EE_TRAPBUS_DAE 3U
#define EE_TRAPBUS_CAE 4U
#define EE_TRAPBUS_PIE 5U
#define EE_TRAPBUS_DIE 6U
#define EE_TRAPBUS_TAE 7U

/*  Macros for Assertions Class Trap Numbers:
 *  TIN Name Sync/Async  H/S      Description
 *  1   OVF  Synchronous Software Arithmetic overflow
 *  2   SOVF Synchronous Software Sticky arithmetic overflow
 */
#define EE_TRAPASS_OVF  1U
#define EE_TRAPASS_SOVF 2U

/*
 *  NO Macros for System Call Trap Numbers 
 *  TIN Name Sync/Async  H/S      Description
 *  n   SYS  Synchronous Software System call
 * (n=8-bit unsigned immediate constant int the SYSCALL instruction) *
 */

/*  Macros for Non-Maskable Interrupt Class Trap Numbers:
 *  TIN Name Sync/Async   H/S      Description
 *  0   NMI  Asynchronous Hardware Non-maskable interrupt
 */
#define EE_TRAPNMI_NMI 0U

/* Trap handler declaration */
#ifdef __TASKING__
#define TRAP(class,f) \
  void __trap( class ) EE_VECTOR_TABLE EE_COMPILER_EXPORT f ( void )
#elif defined(__GNUC__)
#define TRAP(class,f) \
  void  __attribute__((interrupt_handler, used)) f (EE_TIN tin)
#elif defined(__DCC__)
#define TRAP(class,f) \
__interrupt__ void f (EE_TIN tin)
#else
#error Unsupported compiler!
#endif

#if defined(__EE_MEMORY_PROTECTION__) && defined(EE_TC_TRAP_SYS_TRAP)
/* In memory protected environment system call TRAP is handled by Kernel code */
#error In memory protected environment system call MUST be handled by the\
 Kernel
#endif /* __EE_MEMORY_PROTECTION__ && EE_TC_TRAP_SYS_TRAP */

/* Resolve trap vectors */
#ifdef __TASKING__

#ifndef EE_TC_TRAP_MMU_TRAP
EE_COMPILER_EXTERN(EE_tc_trap_mmu)
#else
EE_COMPILER_EXTERN(EE_TC_TRAP_MMU_TRAP)
#endif /* EE_TC_TRAP_MMU_TRAP */

#ifndef EE_TC_TRAP_PROT_TRAP
EE_COMPILER_EXTERN(EE_tc_trap_protection)
#else
EE_COMPILER_EXTERN(EE_TC_TRAP_PROT_TRAP)
#endif /* EE_TC_TRAP_PROT_TRAP */

#ifndef EE_TC_TRAP_INST_TRAP
EE_COMPILER_EXTERN(EE_tc_trap_instruction)
#else
EE_COMPILER_EXTERN(EE_TC_TRAP_INST_TRAP)
#endif /* EE_TC_TRAP_INST_TRAP */

#ifndef EE_TC_TRAP_CONT_TRAP
EE_COMPILER_EXTERN(EE_tc_trap_context)
#else
EE_COMPILER_EXTERN(EE_TC_TRAP_CONT_TRAP)
#endif /* EE_TC_TRAP_CONT_TRAP */

#ifndef EE_TC_TRAP_BUS_TRAP
EE_COMPILER_EXTERN(EE_tc_trap_bus)
#else
EE_COMPILER_EXTERN(EE_TC_TRAP_BUS_TRAP)
#endif /* EE_TC_TRAP_BUS_TRAP */

#ifndef EE_TC_TRAP_ASS_TRAP
EE_COMPILER_EXTERN(EE_tc_trap_assertion)
#else
EE_COMPILER_EXTERN(EE_TC_TRAP_ASS_TRAP)
#endif /* EE_TC_TRAP_ASS_TRAP */

#ifndef EE_TC_TRAP_SYS_TRAP
EE_COMPILER_EXTERN(EE_tc_trap_system)
#else
EE_COMPILER_EXTERN(EE_TC_TRAP_SYS_TRAP)
#endif /* EE_TC_TRAP_SYS_TRAP */

#ifndef EE_TC_TRAP_NMI_TRAP
EE_COMPILER_EXTERN(EE_tc_trap_nmi)
#else
EE_COMPILER_EXTERN(EE_TC_TRAP_NMI_TRAP)
#endif /* EE_TC_TRAP_NMI_TRAP */
#endif /* __TASKING__ */

/* Trap Identification Number */
typedef EE_UINT8 EE_TIN;

/* Type pointing to an Trap Handler */
typedef void (*EE_tc_Trap_handler)(EE_TIN par);

/* Register d15 holds the Trap Id Nr inside a Trap handler */
__INLINE__ EE_TIN __ALWAYS_INLINE__ EE_tc_get_TIN()
{
  EE_TIN tin = 0U;
  __asm("mov  %0,d15;":"=d"(tin));
  return tin;
}

#endif /* EE_ERIKA_TRAP_HANDLING_OFF */
#endif /* #if 0*/
#endif /* INCLUDE_EE_TC_TRAP_H__ */
