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
    @file ee_tc_trapvec.c
    @brief Trap handlers vector implementation.
    @author Errico Guidieri
    @date 2012
  */
#if 0 /*This content is not necessary for the software framework*/
#include <stdlib.h>
#include "cpu/tricore/inc/ee_tc_trap.h"

#ifdef __TASKING__
/* libc support needed for default handler */
#pragma weak exit
#pragma extern _Exit

#ifdef EE_DEBUG
/* halt execution if debug mode enabled */
#define EE_TC_DEFAULT_TRAP_HANDLER(class_trap, trap_number)\
  do {              \
    EE_tc_debug();  \
  } while(1)
#else 
/* or exit if debug mode is disabled */
#define EE_TC_DEFAULT_TRAP_HANDLER(class_trap, trap_number)\
  exit(class_trap << 4U | trap_number)
#endif /* EE_DEBUG */

/**
  Skeleton for MMU trap handler (Trap Class 0).
 */
#ifndef EE_TC_TRAP_MMU_TRAP
void EE_TRAP( EE_CLASS_TRAPMMU ) EE_VECTOR_TABLE EE_COMPILER_EXPORT EE_tc_trap_mmu( void )
{
  EE_TIN tin = EE_tc_get_TIN();
  EE_TC_DEFAULT_TRAP_HANDLER(EE_CLASS_TRAPMMU, tin);
}
#endif /* !EE_TC_TRAP_MMU_TRAP */

/**
  Skeleton for PROTECTION trap handler (Trap Class 1).
 */
#ifndef EE_TC_TRAP_PROT_TRAP
void EE_TRAP( EE_CLASS_TRAPPROT ) EE_VECTOR_TABLE EE_COMPILER_EXPORT EE_tc_trap_protection( void )
{
  EE_TIN tin = EE_tc_get_TIN();
  EE_TC_DEFAULT_TRAP_HANDLER(EE_CLASS_TRAPPROT, tin);
}
#endif /* !EE_TC_TRAP_PROT_TRAP */

/**
  Skeleton for INSTRUCTION trap handler (Trap Class 2).
 */
#ifndef EE_TC_TRAP_INST_TRAP
void EE_TRAP( EE_CLASS_TRAPINST ) EE_VECTOR_TABLE EE_COMPILER_EXPORT EE_tc_trap_instruction( void )
{
  EE_TIN tin = EE_tc_get_TIN();
  EE_TC_DEFAULT_TRAP_HANDLER(EE_CLASS_TRAPINST, tin);
}
#endif /* !EE_TC_TRAP_INST_TRAP */

/** 
  Skeleton for CONTEXT trap handler (Trap Class 3).
 */
#ifndef EE_TC_TRAP_CONT_TRAP
void EE_TRAP( EE_CLASS_TRAPCONT ) EE_VECTOR_TABLE EE_COMPILER_EXPORT EE_tc_trap_context( void )
{
  EE_TIN tin = EE_tc_get_TIN();
  EE_TC_DEFAULT_TRAP_HANDLER(EE_CLASS_TRAPCONT, tin);
}
#endif /* !EE_TC_TRAP_CONT_TRAP */

/**
  Skeleton for BUS trap handler (Trap Class 4).
 */
#ifndef EE_TC_TRAP_BUS_TRAP
void EE_TRAP( EE_CLASS_TRAPBUS ) EE_VECTOR_TABLE EE_COMPILER_EXPORT EE_tc_trap_bus( void )
{
  EE_TIN tin = EE_tc_get_TIN();
  EE_TC_DEFAULT_TRAP_HANDLER(EE_CLASS_TRAPBUS, tin);
}
#endif /* !EE_TC_TRAP_BUS_TRAP */

/**
  Skeleton for ASSERTION trap handler (Trap Class 5).
 */
#ifndef EE_TC_TRAP_ASS_TRAP
void EE_TRAP( EE_CLASS_TRAPASS ) EE_VECTOR_TABLE EE_COMPILER_EXPORT EE_tc_trap_assertion( void )
{
  EE_TIN tin = EE_tc_get_TIN();
  EE_TC_DEFAULT_TRAP_HANDLER(EE_CLASS_TRAPASS, tin);
}
#endif /* !EE_TC_TRAP_ASS_TRAP */

/**
  Skeleton for SYSTEM trap handler (Trapp Class 6).
  TIN Name Sync/Async  H/S      Description
  n   SYS  Synchronous Software System call
  (n=8-bit unsigned immediate constant int the SYSCALL instruction) *
 */
#ifndef EE_TC_TRAP_SYS_TRAP
void EE_TRAP( EE_CLASS_TRAPSYS ) EE_VECTOR_TABLE EE_COMPILER_EXPORT EE_tc_trap_system( void )
{
  EE_TIN tin = EE_tc_get_TIN();
  EE_TC_DEFAULT_TRAP_HANDLER(EE_CLASS_TRAPSYS, tin);
}
#endif /* !EE_TC_TRAP_SYS_TRAP */

/**
  Skeleton for NMI trap handler (Trap Class 7).
 */
#ifndef EE_TC_TRAP_NMI_TRAP
void EE_TRAP( EE_CLASS_TRAPNMI ) EE_VECTOR_TABLE EE_COMPILER_EXPORT EE_tc_trap_nmi( void )
{
  EE_TC_DEFAULT_TRAP_HANDLER(EE_CLASS_TRAPNMI, EE_TRAPNMI_NMI);
}
#endif /* !EE_TC_TRAP_NMI_TRAP */

#elif defined (__GNUC__) || defined(__DCC__)

#if defined(__GNUC__)
#define EE_TRAP_DEFINITION2(t,h)                      \
  __asm (".globl " EE_PREPROC_STRING(t));             \
  __asm (EE_PREPROC_STRING(t) ":");                   \
  __asm ("svlcx");                                    \
  __asm ("movh.a %a15,hi:" EE_PREPROC_STRING(h));     \
  __asm ("lea %a15,[%a15]lo:" EE_PREPROC_STRING(h));  \
  __asm ("mov %d4,%d15");                             \
  __asm ("ji %a15");                                  \
  __asm (".align 5");

/* Two pre-processor steps to let macros explode */
#define EE_TRAP_DEFINITION(t,h) EE_TRAP_DEFINITION2(t,h)

#define EE_TRAP_DEFINITION_WITH_CALL(t,h)             \
  __asm (".globl " EE_PREPROC_STRING(t));             \
  __asm (EE_PREPROC_STRING(t) ":");                   \
  __asm ("svlcx");                                    \
  __asm ("movh.a %a15,hi:" EE_PREPROC_STRING(h));     \
  __asm ("lea %a15,[%a15]lo:" EE_PREPROC_STRING(h));  \
  __asm ("mov %d4,%d15");                             \
  __asm ("calli %a15");                               \
  __asm ("rslcx");                                    \
  __asm ("rfe");                                      \
  __asm (".align 5");

#ifdef EE_DEBUG
#define EE_TRAP_DEFAULT(t)                \
  __asm (".globl " EE_PREPROC_STRING(t)); \
  __asm (EE_PREPROC_STRING(t) ":");       \
  __asm ("debug");                        \
  __asm ("j " EE_PREPROC_STRING(t));      \
  __asm (".align 5");
#else
#define EE_TRAP_DEFAULT(t)                \
  __asm (".globl " EE_PREPROC_STRING(t)); \
  __asm (EE_PREPROC_STRING(t) ":");       \
  __asm ("j _exit");                      \
  __asm (".align 5");
#endif /* EE_DEBUG */

__asm ("                                \n\
  .section .traptab, \"awx\", @progbits \n\
  .align 8                              \n\
  .globl _exit                          \n\
  .globl EE_tc_trap_table               \n\
EE_tc_trap_table:                       \n\
");
#elif defined (__DCC__)

#define EE_TRAP_DEFINITION2(t,h)                          \
  __asm ("  .globl " EE_PREPROC_STRING(t));               \
  __asm (EE_PREPROC_STRING(t) ":");                       \
  __asm ("  svlcx");                                      \
  __asm ("  movh.a %a15," EE_PREPROC_STRING(h) "@ha" );   \
  __asm ("  lea %a15,[%a15]" EE_PREPROC_STRING(h) "@l");  \
  __asm ("  mov %d4,%d15");                               \
  __asm ("  ji %a15");                                    \
  __asm ("  .align 5");

/* Two pre-processor steps to let macros explode */
#define EE_TRAP_DEFINITION(t,h) EE_TRAP_DEFINITION2(t,h)

#define EE_TRAP_DEFINITION_WITH_CALL(t,h)                   \
  __asm ("  .globl " EE_PREPROC_STRING(t));                 \
  __asm (EE_PREPROC_STRING(t) ":");                         \
  __asm ("  svlcx");                                        \
  __asm ("  movh.a %a15" EE_PREPROC_STRING(h) "@ha" );      \
  __asm ("  lea %a15,[%a15]lo:" EE_PREPROC_STRING(h) "@l"); \
  __asm ("  mov %d4,%d15");                                 \
  __asm ("  calli %a15");                                   \
  __asm ("  rslcx");                                        \
  __asm ("  rfe");                                          \
  __asm ("  .align 5");

#ifdef EE_DEBUG
#define EE_TRAP_DEFAULT(t)                  \
  __asm ("  .globl " EE_PREPROC_STRING(t)); \
  __asm (EE_PREPROC_STRING(t) ":");         \
  __asm ("  debug");                        \
  __asm ("  j " EE_PREPROC_STRING(t));      \
  __asm ("  .align 5");
#else
#define EE_TRAP_DEFAULT(t)                  \
  __asm ("  .globl " EE_PREPROC_STRING(t)); \
  __asm (EE_PREPROC_STRING(t) ":");         \
  __asm ("  j _exit");                      \
  __asm ("  .align 5");
#endif /* EE_DEBUG */

__asm ("                                \n\
  .section .traptab,4,rx                \n\
  .set noreorder                        \n\
  .align 8                              \n\
  .globl _exit                          \n\
  .globl EE_tc_trap_table               \n\
EE_tc_trap_table:                       \n\
");

#endif /* __GNUC__ || __DCC__ */

#if defined(__EE_MEMORY_PROTECTION__) && defined(__EE_USE_MMU__)
EE_TRAP_DEFINITION(EE_tc_trap_mmu, EE_tc_mmu_handler)
#elif defined(EE_TC_TRAP_MMU_TRAP)
EE_TRAP_DEFINITION(EE_tc_trap_mmu, EE_TC_TRAP_MMU_TRAP)
#else
EE_TRAP_DEFAULT(EE_tc_trap_mmu)
#endif /* EE_TC_TRAP_MMU_TRAP */

#if defined(EE_TC_TRAP_PROT_TRAP)
EE_TRAP_DEFINITION(EE_tc_trap_protection, EE_TC_TRAP_PROT_TRAP)
#else
EE_TRAP_DEFAULT(EE_tc_trap_protection)
#endif /* EE_TC_TRAP_PROT_TRAP */

#if defined(EE_TC_TRAP_INST_TRAP)
EE_TRAP_DEFINITION(EE_tc_trap_instruction, EE_TC_TRAP_INST_TRAP)
#else
EE_TRAP_DEFAULT(EE_tc_trap_instruction)
#endif /* EE_TC_TRAP_INST_TRAP */

#if defined(EE_TC_TRAP_CONT_TRAP)
EE_TRAP_DEFINITION(EE_tc_trap_context, EE_TC_TRAP_CONT_TRAP)
#else
EE_TRAP_DEFAULT(EE_tc_trap_context)
#endif /* EE_TC_TRAP_CONT_TRAP */

#if defined(EE_TC_TRAP_BUS_TRAP)
EE_TRAP_DEFINITION(EE_tc_trap_bus, EE_TC_TRAP_BUS_TRAP)
#else
EE_TRAP_DEFAULT(EE_tc_trap_bus)
#endif /* EE_TC_TRAP_BUS_TRAP */

#if defined(EE_TC_TRAP_ASS_TRAP)
EE_TRAP_DEFINITION(EE_tc_trap_assertion, EE_TC_TRAP_ASS_TRAP)
#else
EE_TRAP_DEFAULT(EE_tc_trap_assertion)
#endif /* EE_TC_TRAP_ASS_TRAP */

#if defined(EE_TC_TRAP_SYS_TRAP)
EE_TRAP_DEFINITION(EE_tc_trap_system, EE_TC_TRAP_SYS_TRAP)
#else
EE_TRAP_DEFAULT(EE_tc_trap_system)
#endif /* EE_TC_TRAP_SYS_TRAP */

#if defined(EE_TC_TRAP_NMI_TRAP)
EE_TRAP_DEFINITION(EE_tc_trap_nmi, EE_TC_TRAP_NMI_TRAP)
#else
EE_TRAP_DEFAULT(EE_tc_trap_nmi)
#endif /* EE_TC_TRAP_NMI_TRAP */

#endif /* __TASKING__ || __GNUC___ || __DCC__ */
#endif /*#if 0*/
