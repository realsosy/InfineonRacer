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
 * CVS: $Id: ee_semwait.c,v 1.2 2006/12/03 22:07:50 pj Exp $
 */

#include "ee_internal.h"

#ifndef __PRIVATE_GETVALUESEM__
int EE_oo_GetValueSem(const SemType *Sem)
{
  int      returnvalue = EE_NIL;
  register EE_FREG flag;

  EE_ORTI_set_service_in(EE_SERVICETRACE_GETVALUESEM);
	
  flag = EE_hal_begin_nested_primitive();

  if (Sem != NULL) {
#if defined(__OO_ECC1__) || defined(__OO_ECC2__)
    if (Sem->first == EE_NIL) {
      returnvalue = (int)(Sem->count);
    }
    else {
      returnvalue = -1;
    }
#else
    returnvalue = (int)(Sem->count);
#endif
  }

  EE_hal_end_nested_primitive(flag);

  EE_ORTI_set_service_out(EE_SERVICETRACE_GETVALUESEM);

  return returnvalue;
}
#endif

