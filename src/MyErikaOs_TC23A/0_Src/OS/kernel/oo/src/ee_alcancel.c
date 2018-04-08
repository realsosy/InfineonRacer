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
 * CVS: $Id: ee_alcancel.c,v 1.1 2005/07/16 12:23:42 pj Exp $
 */

#include "ee_internal.h"

/* CancelAlarm
   - This function cancels the AlarmID
   - it returns E_OK if all OK
     E_OS_NOFUNC if the Alarm is not used
     E_OS_ID if the alarm is invalid (only Extended status)
*/

#ifndef __PRIVATE_CANCELALARM__
StatusType EE_oo_CancelAlarm(AlarmType AlarmID)
{
  register AlarmType current, previous;
  register EE_FREG flag;
  
  EE_ORTI_set_service_in(EE_SERVICETRACE_CANCELALARM);

  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_CancelAlarm(AlarmID, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_CANCELALARM);

    return E_OS_DISABLEDINT;
  }


#ifdef __OO_EXTENDED_STATUS__
  if ((AlarmID < 0) || (AlarmID >= EE_MAX_ALARM)) {
    EE_ORTI_set_lasterror(E_OS_ID);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_CancelAlarm(AlarmID, E_OS_ID);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_CANCELALARM);

    return E_OS_ID;
  }
#endif

  flag = EE_hal_begin_nested_primitive();
  if (EE_alarm_RAM[AlarmID].used == 0U) {
    EE_ORTI_set_lasterror(E_OS_NOFUNC);

    EE_oo_notify_error_CancelAlarm(AlarmID, E_OS_NOFUNC);

    EE_hal_end_nested_primitive(flag);
    EE_ORTI_set_service_out(EE_SERVICETRACE_CANCELALARM);

    return E_OS_NOFUNC;
  }

  /* to compute the relative value in ticks, we have to follow the counter
     delay chain */
  current = EE_counter_RAM[EE_alarm_ROM[AlarmID].c].first;

  if (current == AlarmID) {
    /* the alarm is the first one in the delta queue */
    EE_counter_RAM[EE_alarm_ROM[AlarmID].c].first = 
      EE_alarm_RAM[AlarmID].next;
  } else {
    /* the alarm is not the first one in the delta queue */
    do {
      previous = current;
      current = EE_alarm_RAM[current].next;
    } while (current != AlarmID);
    EE_alarm_RAM[previous].next = EE_alarm_RAM[AlarmID].next;
  }

  if (EE_alarm_RAM[AlarmID].next != (EE_SREG)-1) {
    EE_alarm_RAM[EE_alarm_RAM[AlarmID].next].delta +=
      EE_alarm_RAM[AlarmID].delta;
  }

  EE_alarm_RAM[AlarmID].used = 0U;

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_CANCELALARM);

  return E_OK;
}
#endif /* __PRIVATE_CANCELALARM__ */
