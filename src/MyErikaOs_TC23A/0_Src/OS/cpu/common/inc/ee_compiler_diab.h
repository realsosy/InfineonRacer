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
 * Compiler-dependent definitions for DCC
 * Derived from pkg/cpu/mico32/inc/ee_compiler.h
 * Author: 2010 Fabio Checconi
 */

/* Infinion modifications, to integrate Ifx Build environment:
 * Author: 
 *         Ashok Abbi, <Ashok.Abbi@infineon.com> 18.07.2013
 */

/* This file MUST contain only #defines, because it is also included
   by the .S files */

/*
 * Compiler dependent interface
 */

#ifndef __INCLUDE_CPU_COMMON_EE_COMPILER_DIAB__
#define __INCLUDE_CPU_COMMON_EE_COMPILER_DIAB__

/* __INLINE__ is a macro already used by a lot of libraries: protect it for
   integration */
#ifndef __INLINE__
#ifdef __NO_INLINE__
#define __INLINE__ static
#else
#define __INLINE__ static inline
#endif
#endif /* !__INLINE__ */

/* Used to declare an inline function before the actual definition */
#define __DECLARE_INLINE__ static

#define __ALWAYS_INLINE__

#define __NEVER_INLINE__  __attribute__ ((noinline))

#define NORETURN  __attribute__ ((noreturn))

#define EE_COMPILER_ALIGN(a) __attribute__((aligned(a)))
#define EE_COMPILER_SECTION(s) __attribute__((section(s)))
#define EE_COMPILER_KEEP

/* Macros used to encapsulate # and ## operators; used to enforce the expected
 * evaluation order of arguments */
#define EE_PREPROC_JOIN(a,b) a ## b
#define EE_PREPROC_STRING(s) # s
#define EE_PREPROC_EVAL(e) e

/* Diab Pragma Header/Footer for "pragma section" used in memory protection */
#define PRAGMA_SECTION_BEGIN_SYS_STACK DATA ".stack" ".stack"
#define PRAGMA_SECTION_END_SYS_STACK DATA

/* Pragma macros for Multicore applications */
/* for const variables */
#define EE_SHARED_CONST_BEGIN CONST "ee_mcglobalc"
#define EE_SHARED_SCONST_BEGIN SCONST "ee_mcglobalc"

/* for variables inside the rapid access area (initialized data) */
#define EE_SHARED_BEGIN DATA "ee_mcglobald" "ee_mcglobalu"
#define EE_SHARED_FAST_BEGIN SDATA "ee_fast_mcglobald" "ee_fast_mcglobalu"

/* for variables outside the rapid access area (initialized data) */
#define EE_SHARED_SLOW_BEGIN \
EE_PREPROC_JOIN(SDATA "ee_fast_mcglobald" "ee_fast_mcglobalu", far-absolute)

/* for variables inside the rapid access area (uninitialized data) */
#define EE_SHARED_NOTINIT_BEGIN DATA "" "ee_mcglobalu"
#define EE_SHARED_FAST_NOTINIT_BEGIN SDATA "" "ee_fast_mcglobalu"

/* for variables outside the rapid access area (uninitialized data) */
#define EE_SHARED_SLOW_NOTINIT_BEGIN \
EE_PREPROC_JOIN(SDATA "" "ee_fast_mcglobalu", far-absolute)

/* Pragma section tail for DATA/SDATA classes */
#define EE_SHARED_END DATA
#define EE_SHARED_FAST_OR_SLOW_END SDATA

/* Pragma section tail for CONST/SCONST classes */
#define EE_SHARED_CONST_END CONST
#define EE_SHARED_SCONST_END SCONST

#define EE_barrier() _nop()

#endif /* __INCLUDE_CPU_COMMON_EE_COMPILER_DIAB__ */
