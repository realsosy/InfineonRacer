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
 * CVS: $Id: ee_gettaskid.c,v 1.1 2005/07/16 12:23:42 pj Exp $
 */

/* This file is ONLY compiled when makking a BINARY DISTRIBUTION */

#include "ee_internal.h"

/***************************************************************************
 * 13.2 Task management 
 ***************************************************************************/

/* 13.2.3.5: BCC1, BCC2, ECC1, ECC2 */
#ifndef __PRIVATE_GETTASKID__
StatusType EE_oo_GetTaskID(TaskRefType TaskID)
{
  register StatusType retVal;
  register EE_FREG flag;
  EE_ORTI_set_service_in(EE_SERVICETRACE_GETTASKID);

  /*
    OS093: If interrupts are disabled/suspended by a Task/OsIsr and the
      Task/OsIsr calls any OS service (excluding the interrupt services)
      then the Operating System shall ignore the service AND shall return
      E_OS_DISABLEDINT if the service returns a StatusType value.
  */
  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetTaskID(TaskID, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETTASKID);

    return E_OS_DISABLEDINT;
  }

  if (TaskID != (TaskRefType)NULL) {
    *TaskID = EE_stk_queryfirst();
    retVal = E_OK;
  } else {
    /* OS566: The Operating System API shall check in extended mode all pointer
       argument for NULL pointer and return OS_E_PARAMETER_POINTER
       if such argument is NULL. 
       + 
       MISRA dictate NULL check for pointers always.
    */
    EE_ORTI_set_lasterror(E_OS_PARAMETER_POINTER);
    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetTaskID(TaskID, E_OS_PARAMETER_POINTER);
    EE_hal_end_nested_primitive(flag);

    retVal = E_OS_PARAMETER_POINTER;
  }
  EE_ORTI_set_service_out(EE_SERVICETRACE_GETTASKID);
  return retVal;
}
#endif
