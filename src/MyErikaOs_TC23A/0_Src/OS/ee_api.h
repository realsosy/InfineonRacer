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
 * CVS: $Id: ee_api.h,v 1.11 2008/07/04 14:26:59 francesco Exp $
 */

#ifndef __INCLUDE_EE_API_H__
#define __INCLUDE_EE_API_H__

/*
  ee_api.h contains the definition of all the interfaces exported to
  the user.  Typically, they are just "#define apifunction
  internal_function" in case of kernels without memory protection, or
  they are something like "apifunction
  {assembler_stub_that_calls_SWI}" in case of a kernel with memory
  protection.
*/



  /*
   *
   * CPU
   *
   */

  /*
   *
   * MCU
   *
   */

  /*
   *
   * BOARD
   *
   */

  /*
   *
   * Kernel
   *
   */

#ifdef __FP__
#include "kernel/fp/inc/ee_api.h"
#endif

#if defined(__OO_BCC1__) || defined(__OO_BCC2__) || defined(__OO_ECC1__) || defined(__OO_ECC2__)
#ifndef __EE_MEMORY_PROTECTION__
#include "kernel/oo/inc/ee_api.h"
#endif /* ! __EE_MEMORY_PROTECTION__ */
#endif /* __OO_XXXX__ */

#ifdef __EDF__
#include "kernel/edf/inc/ee_api.h"
#endif

#ifdef __SEM__
#include "kernel/sem/inc/ee_api.h"
#endif

#ifdef __ALARMS__
#include "kernel/alarms/inc/ee_api.h"
#endif

#ifdef __FRSH__
#include "kernel/frsh/inc/ee_api.h"
#endif

  /*
   *
   * Com
   *
   */

#if defined(__COM_CCCA__) || defined(__COM_CCCB__) || defined(__COM_CCC0__) || defined(__COM_CCC1__)
#include "com/com/inc/ee_api.h"
#endif

  /*
   *
   *
   */
#if defined(__AS_SC4__)
#include "kernel/as/inc/ee_os.h"
#include "kernel/as/inc/ee_os_internal.h"

/*
 * Some autosar functionalities are implemented as architecture-dependent
 * macros, but they need the definitions in the above header files.
 */
#ifdef __PPCE200ZX__
#include "cpu/e200zx/inc/ee_as_cpu.h"
#endif

#endif /* __AS_SC4__ */

#endif
