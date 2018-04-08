/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2011  Evidence Srl
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
 * Author: 2011 Errico Guidieri
 */

#include "ee_internal.h"

/***************************************************************************
 * AS 4.0 OS SWS 8.4.17 GetCounterValue 
 ***************************************************************************/

#ifndef __PRIVATE_GETCOUNTERVALUE__
StatusType EE_oo_GetCounterValue(CounterType CounterID, TickRefType Value)
{
  register EE_FREG flag;
  register StatusType retVal;

  EE_ORTI_set_service_in(EE_SERVICETRACE_GETCOUNTERVALUE);

  /*
    OS093: If interrupts are disabled/suspended by a Task/OsIsr and the
      Task/OsIsr calls any OS service (excluding the interrupt services)
      then the Operating System shall ignore the service AND shall return
      E_OS_DISABLEDINT if the service returns a StatusType value.
  */
  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetCounterValue(CounterID, Value, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETCOUNTERVALUE);

    return E_OS_DISABLEDINT;
  }

#ifdef __OO_EXTENDED_STATUS__
  /* OS376: If the input parameter <CounterID> in a call of GetElapsedValue()
     is not valid GetElapsedValue() shall return E_OS_ID.
     <Only in Extended Status: look at Return value in specifiation table>
  */
  if ((CounterID < 0) || (CounterID >= EE_MAX_COUNTER)) {
    EE_ORTI_set_lasterror(E_OS_ID);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetCounterValue(CounterID, Value, E_OS_ID);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETCOUNTERVALUE);
    return E_OS_ID;
  }
#endif

  /* OS377: If the input parameter <CounterID> in a call of GetCounterValue()
     is valid, GetCounterValue() shall return the current tick value of the
     counter via <Value> and return E_OK.
     OS531: ... for counters of OsCounterType = SOFTWARE the current “software”
     tick value is returned.
   */

  flag = EE_hal_begin_nested_primitive();
  if(Value != (TickRefType)NULL) {
    *Value = EE_counter_RAM[CounterID].value;
    retVal = E_OK;
  } else {
    /* OS566: The Operating System API shall check in extended mode all pointer
        argument for NULL pointer and return OS_E_PARAMETER_POINTER
        if such argument is NULL.
        +
        MISRA dictate NULL check for pointers always.
    */
    EE_ORTI_set_lasterror(E_OS_PARAMETER_POINTER);

    EE_oo_notify_error_GetCounterValue(CounterID, Value,
      E_OS_PARAMETER_POINTER);

    retVal = E_OS_PARAMETER_POINTER;
  }

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_GETCOUNTERVALUE);
  return retVal;
}
#endif /* __PRIVATE_GETCOUNTERVALUE__ */
