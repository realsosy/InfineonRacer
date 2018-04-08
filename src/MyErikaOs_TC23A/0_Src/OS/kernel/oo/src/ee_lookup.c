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
 * Author: 2002 Paolo Gai
 * CVS: $Id: ee_lookup.c,v 1.1 2005/07/16 12:23:42 pj Exp $
 */

#include "ee_internal.h"

/* used for nested interrupt enabling/disabling */
EE_UREG EE_oo_IRQ_disable_count;

/***************************************************************************
 * The simbol EE_OLD_HAL marks architecture that do not implement new
 * HAL APIs (MUST be defined in the header ee_cpu.h of these architectures)
 ***************************************************************************/
#ifndef EE_OLD_HAL
EE_FREG EE_oo_IRQ_suspend_status;
#endif

#ifdef __OO_HAS_ERRORHOOK__
#ifndef __OO_ERRORHOOK_NOMACROS__
OSServiceIdType EE_oo_ErrorHook_ServiceID;
union EE_oo_ErrorHook_parameters EE_oo_ErrorHook_data;
#endif
EE_TYPEBOOL EE_ErrorHook_nested_flag = 0U;
#endif

#if defined(__OO_HAS_STARTUPHOOK__) || defined(__OO_AUTOSTART_TASK__) || \
  defined(__OO_AUTOSTART_ALARM__)
EE_TYPEBOOL EE_oo_no_preemption = 0U;
#endif


#if defined(__OO_BCC2__) || defined(__OO_ECC2__)

const EE_INT8 EE_rq_lookup[] = 
  {  -1, 0,  1,  1,  2,  2,  2,  2, 
     3,  3,  3,  3,  3,  3,  3,  3,
     4,  4,  4,  4,  4,  4,  4,  4, 
     4,  4,  4,  4,  4,  4,  4,  4, 

     5,  5,  5,  5,  5,  5,  5,  5,  
     5,  5,  5,  5,  5,  5,  5,  5,  
     5,  5,  5,  5,  5,  5,  5,  5,  
     5,  5,  5,  5,  5,  5,  5,  5,  

     6,  6,  6,  6,  6,  6,  6,  6, 
     6,  6,  6,  6,  6,  6,  6,  6, 
     6,  6,  6,  6,  6,  6,  6,  6, 
     6,  6,  6,  6,  6,  6,  6,  6, 

     6,  6,  6,  6,  6,  6,  6,  6, 
     6,  6,  6,  6,  6,  6,  6,  6, 
     6,  6,  6,  6,  6,  6,  6,  6, 
     6,  6,  6,  6,  6,  6,  6,  6, 

     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  

     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  

     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  

     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  
     7,  7,  7,  7,  7,  7,  7,  7,  
  };

#endif
