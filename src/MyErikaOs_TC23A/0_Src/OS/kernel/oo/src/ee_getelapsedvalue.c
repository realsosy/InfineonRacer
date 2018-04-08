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
 *   AS 4.0 OS SWS 8.4.18 GetElapsedValue
 ***************************************************************************/

#ifndef __PRIVATE_GETELAPSEDVALUE__

#ifdef __OO_EXTENDED_STATUS__
StatusType EE_oo_GetElapsedValue(CounterType CounterID, TickRefType Value,
    TickRefType ElapsedValue)
{
  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_GETELAPSEDVALUE);

  /*
    OS093: If interrupts are disabled/suspended by a Task/OsIsr and the
      Task/OsIsr calls any OS service (excluding the interrupt services)
      then the Operating System shall ignore the service AND shall return
      E_OS_DISABLEDINT if the service returns a StatusType value.
  */
  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetElapsedValue(CounterID, Value, ElapsedValue,
      E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETELAPSEDVALUE);

    return E_OS_DISABLEDINT;
  }

  /* OS381: If the input parameter <CounterID> in a call of GetElapsedValue()
     is not Valid GetElapsedValue() shall return E_OS_ID.
  */
  if ((CounterID < 0) || (CounterID >= EE_MAX_COUNTER)) {
    EE_ORTI_set_lasterror(E_OS_ID);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetElapsedValue(CounterID, Value, ElapsedValue, E_OS_ID);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETELAPSEDVALUE);
    return E_OS_ID;
  }

  flag = EE_hal_begin_nested_primitive();
  if(Value != (TickRefType)NULL) {
    /* Access to a READ ONLY kernel global structure: I don't need to,
       syncronize but i need it for following check.
     */

    if(*Value > EE_counter_ROM[CounterID].maxallowedvalue) {
      EE_ORTI_set_lasterror(E_OS_VALUE);

      EE_oo_notify_error_GetElapsedValue(CounterID, Value, ElapsedValue,
        E_OS_VALUE);

      EE_hal_end_nested_primitive(flag);
      EE_ORTI_set_service_out(EE_SERVICETRACE_GETELAPSEDVALUE);

      return E_OS_VALUE;
    }
    /* OS382: If the input parameters in a call of GetElapsedValue() are valid,
        GetElapsedValue() shall return the number of elapsed ticks since the
        given <Value> value via <ElapsedValue> and shall return E_OK.

      OS533: Caveats of GetCounterValue():If the timer already passed the
        <Value> value a second (or multiple) time, the result returned is wrong.
        The reason is that the service can not detect such a relative overflow.
    */
    if(ElapsedValue != (TickRefType)NULL) {
      *ElapsedValue = (EE_counter_RAM[CounterID].value >= *Value) ?
        /* Timer did not pass the <value> yet */
        (EE_counter_RAM[CounterID].value - *Value) :
        /* Timer already passed the <value> */
        ((EE_counter_ROM[CounterID].maxallowedvalue -
        (*Value - EE_counter_RAM[CounterID].value)) + 1U);

      EE_hal_end_nested_primitive(flag);
      EE_ORTI_set_service_out(EE_SERVICETRACE_GETELAPSEDVALUE);

      return E_OK;
    }
  }
  /* OS566: The Operating System API shall check in extended mode all pointer
      argument for NULL pointer and return OS_E_PARAMETER if such argument is
      NULL.
  */
  EE_ORTI_set_lasterror(E_OS_PARAMETER_POINTER);

  EE_oo_notify_error_GetElapsedValue(CounterID, Value, ElapsedValue,
    E_OS_PARAMETER_POINTER);

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_GETELAPSEDVALUE);
  return E_OS_PARAMETER_POINTER;
}
#else /* __OO_EXTENDED_STATUS__ */
StatusType EE_oo_GetElapsedValue(CounterType CounterID, TickRefType Value,
    TickRefType ElapsedValue)
{
  register EE_FREG flag;
  register StatusType retVal;

  EE_ORTI_set_service_in(EE_SERVICETRACE_GETELAPSEDVALUE);

  /*
    OS093: If interrupts are disabled/suspended by a Task/OsIsr and the
      Task/OsIsr calls any OS service (excluding the interrupt services)
      then the Operating System shall ignore the service AND shall return
      E_OS_DISABLEDINT if the service returns a StatusType value.
  */
  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_GetElapsedValue(CounterID, Value, ElapsedValue,
      E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_GETELAPSEDVALUE);

    return E_OS_DISABLEDINT;
  }

  /* OS382: If the input parameters in a call of GetElapsedValue() are valid,
      GetElapsedValue() shall return the number of elapsed ticks since the given
      <Value> value via <ElapsedValue> and shall return E_OK.

    OS533: Caveats of GetCounterValue():If the timer already passed the <Value>
      value a second (or multiple) time, the result returned is wrong. The
      reason is that the service can not detect such a relative overflow.
  */
  flag = EE_hal_begin_nested_primitive();
  if((Value != (TickRefType)NULL) && (ElapsedValue != (TickRefType)NULL)) {
    *ElapsedValue = (EE_counter_RAM[CounterID].value >= *Value) ?
        /* Timer did not pass the <value> yet */
        (EE_counter_RAM[CounterID].value - *Value) :
        /* Timer already passed the <value> */
        ((EE_counter_ROM[CounterID].maxallowedvalue -
        (*Value - EE_counter_RAM[CounterID].value)) + 1U);

    retVal = E_OK;
  } else {
    /* OS566: The Operating System API shall check in extended mode all pointer
        argument for NULL pointer and return OS_E_PARAMETER if such argument is
        NULL.
    */
    EE_ORTI_set_lasterror(E_OS_PARAMETER_POINTER);

    EE_oo_notify_error_GetElapsedValue(CounterID, Value, ElapsedValue,
      E_OS_PARAMETER_POINTER);

    retVal = E_OS_PARAMETER_POINTER;
  }

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_GETELAPSEDVALUE);

  return retVal;
}
#endif /* __OO_EXTENDED_STATUS__ */
#endif /* __PRIVATE_GETELAPSEDVALUE__ */
