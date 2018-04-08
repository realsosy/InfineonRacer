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
 * CVS: $Id: ee_algetbase.c,v 1.1 2005/07/16 12:23:42 pj Exp $
 */

#include "ee_internal.h"

/* GetAlarmBase
   - This function returns the base characteristics of a counter
   - in Extended Status it returns E_OK or E_OS_ID if the alarm_id is invalid
*/

#ifndef __PRIVATE_GETALARMBASE__
StatusType EE_oo_GetAlarmBase(AlarmType AlarmID, AlarmBaseRefType Info)
{
  register EE_FREG flag;
  register StatusType retVal;
  register const EE_oo_counter_ROM_type *c;

  EE_ORTI_set_service_in(EE_SERVICETRACE_GETALARMBASE);

  /*
    OS093: If interrupts are disabled/suspended by a Task/OsIsr and the
      Task/OsIsr calls any OS service (excluding the interrupt services)
      then the Operating System shall ignore the service AND shall return
      E_OS_DISABLEDINT if the service returns a StatusType value.
  */
  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetAlarmBase(AlarmID, Info, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETALARMBASE);

    return E_OS_DISABLEDINT;
  }

#ifdef __OO_EXTENDED_STATUS__
  if ((AlarmID < 0) || (AlarmID >= EE_MAX_ALARM)) {

    EE_ORTI_set_lasterror(E_OS_ID);
    
    /* Kernel mutual exclusion needed only here */
    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetAlarmBase(AlarmID, Info, E_OS_ID);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETALARMBASE);

    return E_OS_ID;
  }
#endif

  /* Fill the informations required */
  c = &EE_counter_ROM[EE_alarm_ROM[AlarmID].c];

  /* For MISRA conformance you should always check for null pointers */
  if (Info != (AlarmBaseRefType)NULL) {
    Info->maxallowedvalue = c->maxallowedvalue;
    Info->ticksperbase = c->ticksperbase;
#ifdef __OO_EXTENDED_STATUS__
    Info->mincycle = c->mincycle;
#endif
    retVal = E_OK;
  } else {
    /* OS566: The Operating System API shall check in extended mode all pointer
        argument for NULL pointer and return OS_E_PARAMETER_POINTER 
        if such argument is NULL.
      +
      MISRA dictate NULL check for pointers always.
    */
    EE_ORTI_set_lasterror(E_OS_PARAMETER_POINTER);

    /* Kernel mutual exclusion needed only here */
    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetAlarmBase(AlarmID, Info, E_OS_PARAMETER_POINTER);
    EE_hal_end_nested_primitive(flag);
    retVal = E_OS_PARAMETER_POINTER;
  }

  EE_ORTI_set_service_out(EE_SERVICETRACE_GETALARMBASE);

  return retVal;
}
#endif /* !__PRIVATE_GETALARMBASE__ */
