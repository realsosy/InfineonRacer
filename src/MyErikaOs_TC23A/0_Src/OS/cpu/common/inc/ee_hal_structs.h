/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2009  Evidence Srl
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
 * Structures commonly used in HAL implementations, to be included by a specific
 * ee_cpu.h header.
 * Derived from pkg/cpu/pic30/inc/ee_cpu.h
 * Author: 2009 Bernardo Dal Seno
 */


#ifndef __INCLUDE_CPU_COMMON_EE_HAL_STRUCTS__
#define __INCLUDE_CPU_COMMON_EE_HAL_STRUCTS__

  
/*************************************************************************
 HAL Constants
 *************************************************************************/

/* invalid pointer */
#ifndef NULL
#define NULL 0
#endif


/*************************************************************************
 HAL Types
 *************************************************************************/

/*
 * This structure is used by the Multistack HAL to contain the
 * information about a "stack", that is composed by a user stack
 * (SYS-mode) and a system stack (IRQ-mode). This type is
 * used internally by the HAL and is not used by the Kernels.
 */
#ifdef __MULTI__
struct EE_TOS {
    EE_ADDR SYS_tos;
};
#endif


/*************************************************************************
 HAL Variables
 *************************************************************************/

/* Thread function body pointer */
extern const EE_THREAD_PTR EE_hal_thread_body[];

#ifdef __MULTI__

/* each task uses a system (IRQ) stack and a user (SYS) stack */
extern struct EE_TOS EE_std_system_tos[];

/* std_system_tos[] index that points to the thread tos (one for each thread) */
extern const EE_UREG EE_std_thread_tos[];

/* std_system_tos[] index that points to the active thread tos */
extern EE_UREG EE_std_active_tos;

#endif /* __MULTI__ */


#if defined(__OO_BCC1__) || defined(__OO_BCC2__) || defined(__OO_ECC1__) || defined(__OO_ECC2__)

/* this is a safe place to put sp_sys when EE_hal_terminate_savestk
   is called into EE_oo_thread_stub */
extern EE_UINT32 EE_terminate_data[];

/* this is the real thread body that is called if the thread use the
   TerminateTask function */
extern const EE_THREAD_PTR EE_terminate_real_th_body[];

#endif /* __OO_BCCx__ */


#endif /* __INCLUDE_CPU_COMMON_EE_HAL_STRUCTS__ */
