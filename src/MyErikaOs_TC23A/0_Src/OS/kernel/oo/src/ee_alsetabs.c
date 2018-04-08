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
 * CVS: $Id: ee_alsetabs.c,v 1.1 2005/07/16 12:23:42 pj Exp $
 */

#include "ee_internal.h"

/* SetAbsAlarm
   - This function occupies the AlarmID setting an alarm when the counter 
     will reach the absolute value passed as parameter.
   - the Alarm must not be already in use

   returns the relative value in ticks before the alarm expires
   - it returns E_OK if all OK
     E_OS_STATE if the Alarm is already used
     E_OS_ID if the alarm is invalid (only Extended status)
     E_OS_VALUE if the parameters are incorrect
*/

#ifndef __PRIVATE_SETABSALARM__
StatusType EE_oo_SetAbsAlarm(AlarmType AlarmID, 
    TickType start, TickType cycle)
{
  register EE_FREG flag;
  /* these are used to evaluate alarm time handling wrap around */
  register TickType counter_value;
  register TickType alarm_time;
  register EE_SREG  start_rel;

  EE_ORTI_set_service_in(EE_SERVICETRACE_SETABSALARM);

  /*
    OS093: If interrupts are disabled/suspended by a Task/OsIsr and the
      Task/OsIsr calls any OS service (excluding the interrupt services)
      then the Operating System shall ignore the service AND shall return
      E_OS_DISABLEDINT if the service returns a StatusType value.
  */
  if(EE_oo_check_disableint_error()) {
    EE_ORTI_set_lasterror(E_OS_DISABLEDINT);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_SetAbsAlarm(AlarmID, start, cycle, E_OS_DISABLEDINT);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_SETABSALARM);

    return E_OS_DISABLEDINT;
  }

#ifdef __OO_EXTENDED_STATUS__
  if ((AlarmID < 0) || (AlarmID >= EE_MAX_ALARM)) {

    EE_ORTI_set_lasterror(E_OS_ID);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_SetAbsAlarm(AlarmID, start, cycle, E_OS_ID);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_SETABSALARM);

    return E_OS_ID;
  }
#endif /* __OO_EXTENDED_STATUS__ */

#ifdef __OO_EXTENDED_STATUS__
  if ((start > EE_counter_ROM[EE_alarm_ROM[AlarmID].c].maxallowedvalue)
      || 
      ((cycle != 0U) && 
       ((cycle < EE_counter_ROM[EE_alarm_ROM[AlarmID].c].mincycle) ||
        (cycle > EE_counter_ROM[EE_alarm_ROM[AlarmID].c].maxallowedvalue)))
      ) {
    EE_ORTI_set_lasterror(E_OS_VALUE);

    flag = EE_hal_begin_nested_primitive();
    EE_oo_notify_error_SetAbsAlarm(AlarmID, start, cycle, E_OS_VALUE);
    EE_hal_end_nested_primitive(flag);

    EE_ORTI_set_service_out(EE_SERVICETRACE_SETABSALARM);

    return E_OS_VALUE;
  }
#endif /* __OO_EXTENDED_STATUS__ */

  flag = EE_hal_begin_nested_primitive();

  if (EE_alarm_RAM[AlarmID].used) {
    EE_ORTI_set_lasterror(E_OS_STATE);

    EE_oo_notify_error_SetAbsAlarm(AlarmID, start, cycle, E_OS_STATE);

    EE_hal_end_nested_primitive(flag);
    EE_ORTI_set_service_out(EE_SERVICETRACE_SETABSALARM);

    return E_OS_STATE;
  }

  /* first, use the alarm and set the cycle */
  EE_alarm_RAM[AlarmID].used = 1U;
  EE_alarm_RAM[AlarmID].cycle = cycle;

  /* Handling wrap around for alarm time */
  counter_value = EE_counter_RAM[EE_alarm_ROM[AlarmID].c].value;
  start_rel = (EE_SREG)start - (EE_SREG)counter_value;
  if(start_rel > 0) {
    /* Normal behavior */
    alarm_time = (TickType)start_rel - 1U;
  } else if (start_rel == 0){
    /* start_rel == 0 -> the alarm should start now or next time that counter
       has this value. Has been chosen the second option */
    alarm_time = EE_counter_ROM[EE_alarm_ROM[AlarmID].c].maxallowedvalue;
  } else {
    /* start_rel is negative in this case (unsigned conversion +
       wrap around do the work) */
    alarm_time = EE_counter_ROM[EE_alarm_ROM[AlarmID].c].maxallowedvalue +
      (TickType)start_rel;
  }

  /* Set alarm with a relative ammount of time (alarm_time already is a "0 as
     next tick" value)*/
  EE_oo_alarm_insert(AlarmID, alarm_time);

  EE_hal_end_nested_primitive(flag);
  EE_ORTI_set_service_out(EE_SERVICETRACE_SETABSALARM);

  return E_OK;
}
#endif /* !__PRIVATE_SETABSALARM__ */
