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
 * CVS: $Id: ee_shtdown.c,v 1.1 2005/07/16 12:23:42 pj Exp $
 */

#include "ee_internal.h"

/* ShutdownOS

  - This function simply calls ShutdownHook.

  - NOTE: it is not specified into the standard if the ShutdownHook
    have to be called with interrupts disabled or not. The behavior I
    chose is the same for the StartupHook.

  - It seems that the only thing that this function has to do is to call
    the ShutdownHook... In any case, if the ShutdownHook returns, a system
    reset is issued!

*/


#ifndef __PRIVATE_SHUTDOWNOS__

static void EE_oo_shutdown(void)
{
  /* OS425: If ShutdownOS() is called and ShutdownHook() returns then the
    operating system shall disable all interrupts and enter an endless loop.
  */
  EE_hal_disableIRQ();
  for(;;) {
    ;
  }
}

#ifdef __OO_HAS_SHUTDOWNHOOK__
static void EE_oo_call_ShutdownHook(StatusType Error)
{
  register EE_FREG flag;
  flag = EE_hal_begin_nested_primitive();
  ShutdownHook(Error);
  EE_hal_end_nested_primitive(flag);
}
#else
#define EE_oo_call_ShutdownHook(Error)   ((void)0)
#endif

void EE_oo_ShutdownOS(StatusType Error)
{

  EE_ORTI_set_service_in(EE_SERVICETRACE_SHUTDOWNOS);

  /* Autosar Requirement OS071: 
      If the PostTaskHook() is configured, the Operating System shall not call
      the hook if ShutdownOS() is called. */
  /* EE_oo_call_PostTaskHook(); */

  EE_oo_call_ShutdownHook(Error);

  EE_ORTI_set_service_out(EE_SERVICETRACE_SHUTDOWNOS);

  EE_oo_shutdown();
}

#endif /* __PRIVATE_SHUTDOWNOS__ */
