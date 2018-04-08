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

 /** @file      ee_tc_cpu_reg.h
  *  @brief     Compiler independent CPU register header file
  *  @author    Ashok Abbi, <Ashok.Abbi@infineon.com>
  *  @date      18.07.2013
  */

/* Infineon modifications, integration to Infineon Build environment:
 * Fixes for compilation issues with Tasking Compiler:
 * Updates for compilation issues with Dcc Compiler:
 * Usage of generic compiler independent register header file:
 * Author: 
 *         Ashok Abbi, <Ashok.Abbi@infineon.com> 18.07.2013
 */

#ifndef EE_TC_CPU_REG_H__
#define EE_TC_CPU_REG_H__

/* Program Control 0 */
#define EE_CPU_REG_PCON0    0x920C
/* Data Memory Control Register */
#define EE_CPU_REG_DCON0    0x9040
/* CPU Clock Cycle Count */
#define EE_CPU_REG_CCNT     0xFC04
/* Previous Context Information Register */
#define EE_CPU_REG_PCXI     0xFE00
/* Program Status Word */
#define EE_CPU_REG_PSW      0xFE04
/* Program Counter */
#define EE_CPU_REG_PC       0xFE08
/* System Configuration Register */
#define EE_CPU_REG_SYSCON   0xFE14
/* CPUn Identification Register TC1.6P */
#define EE_CPU_REG_CPU_ID   0xFE18
/* CPUn Core Identification Register */
#define EE_CPU_REG_CORE_ID  0xFE1C
/* Base Interrupt Vector Table Pointer */
#define EE_CPU_REG_BIV      0xFE20
/* Base Trap Vector Table Pointer */
#define EE_CPU_REG_BTV      0xFE24
/* Interrupt Stack Pointer */
#define EE_CPU_REG_ISP      0xFE28
/* Interrupt Control Register */
#define EE_CPU_REG_ICR      0xFE2C
/* Free CSA List Head Pointer */
#define EE_CPU_REG_FCX      0xFE38
/* Free CSA List Limit Pointer */
#define EE_CPU_REG_LCX      0xFE3C

#endif /* EE_TC_CPU_REG_H__ */
