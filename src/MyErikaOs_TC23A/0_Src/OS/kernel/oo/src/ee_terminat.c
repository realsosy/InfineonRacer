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
 * CVS: $Id: ee_terminat.c,v 1.1 2005/07/16 12:23:42 pj Exp $
 */

#include "ee_internal.h"

/* TerminateTask:
   - The task is moved from the running state to the suspended state
   - automatic release of internal resource
   - no check for pending resources left by the task
   - Rescheduling is issued
   - returns (only extended state)
       E_OS_RESOURCE if the task still occupy resources
       E_OS_CALLLEVEL if called at interrupt level
*/

#ifndef __PRIVATE_TERMINATETASK__
#ifdef __OO_EXTENDED_STATUS__

StatusType EE_oo_TerminateTask(void)
{
  register EE_FREG np_flags;

  EE_ORTI_set_service_in(EE_SERVICETRACE_TERMINATETASK);

  /* check for a call at interrupt level
   * This must be the FIRST Check!!!
   */
  if (EE_hal_get_IRQ_nesting_level()) 
  {
    EE_ORTI_set_lasterror(E_OS_CALLEVEL);

    np_flags = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_service(OSServiceId_TerminateTask, E_OS_CALLEVEL);
    EE_hal_end_nested_primitive(np_flags);

    EE_ORTI_set_service_out(EE_SERVICETRACE_TERMINATETASK);

    return E_OS_CALLEVEL;
  }

#ifndef __OO_NO_RESOURCES__
  /* check for busy resources */ 

  if (EE_th_resource_last[EE_stk_queryfirst()] != EE_UREG_MINUS1) 
  {
    EE_ORTI_set_lasterror(E_OS_RESOURCE);

    np_flags = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_service(OSServiceId_TerminateTask, E_OS_RESOURCE);
    EE_hal_end_nested_primitive(np_flags);

    EE_ORTI_set_service_out(EE_SERVICETRACE_TERMINATETASK);

    return E_OS_RESOURCE;
  }
#endif /* __OO_NO_RESOURCES__ */

  np_flags = EE_hal_begin_nested_primitive();

#ifndef __OO_NO_CHAINTASK__
  EE_th_terminate_nextask[EE_stk_queryfirst()] = EE_NIL;
#endif

  EE_ORTI_set_service_out(EE_SERVICETRACE_TERMINATETASK);

  EE_hal_terminate_task(EE_stk_queryfirst());
  /* This return instruction usually is optimized by the compiler,
     because hal_terminate_task does not return... */
  return E_OK;
}

#else /* __OO_EXTENDED_STATUS__ */

void EE_oo_TerminateTask(void)
{
  /* both assignment to enable smart debuggers to notice the entry and
     exit from terminatetask */
  EE_ORTI_set_service_in(EE_SERVICETRACE_TERMINATETASK);

#ifndef __OO_NO_CHAINTASK__
  EE_th_terminate_nextask[EE_stk_queryfirst()] = EE_NIL;
#endif

  EE_ORTI_set_service_out(EE_SERVICETRACE_TERMINATETASK);

  /* just terminate without any check */
  EE_hal_terminate_task(EE_stk_queryfirst());
}

#endif /* __OO_EXTENDED_STATUS__ */
#endif /* __PRIVATE_TERMINATETASK__ */
