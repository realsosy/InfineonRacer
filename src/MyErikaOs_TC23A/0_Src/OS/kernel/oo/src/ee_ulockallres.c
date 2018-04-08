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
 * Author: 2011 Errico Guidieri
 */

#include "ee_internal.h"

/*
  Method to Release All Resources locked by a Thread,
  used to fulfill AS requirement OS070
*/

#if ((defined(__OO_EXTENDED_STATUS__)) || defined(__OO_ISR2_RESOURCES__)) && \
    (!defined(__PRIVATE_RELEASEALLRESOURCE__))

#if 0
#ifdef __MSRP__
#warning "MSRP multiprocessor kernel protocol is not completly supported!"
static void EE_oo_unlock_others(EE_UREG ResID)
{
  /* TODO Understand what I need to do for global resources
   * PSEUDO code:
   *  if(EE_oo_isGlobal(ResID))
   *    EE_hal_spin_out((EE_TYPESPIN)ResID);
   * but i cannot rely on EE_GLOBAL_MUTEX flag!
   * EG:
   * Global resources are going to disappear!
   */
}
#else
#define EE_oo_unlock_others(ResID)  ((void)0)
#endif /* __MSRP__ */
#endif /* comment */

EE_UREG EE_oo_release_all_resources(EE_TID tid)
{
  /* ALLERT! this method have to be called only inside a critical section
     (e.g. interrupt disabled) */
  register EE_UREG curRes, ResID = EE_UREG_MINUS1;

  while((curRes = EE_th_resource_last[tid]) != EE_UREG_MINUS1) {
    ResID = curRes;
    /* remove the last entry from the data structure */
    EE_th_resource_last[tid] =
      EE_resource_stack[ResID];
#ifdef __OO_EXTENDED_STATUS__
    /* free the resource */
    EE_resource_locked[ResID] = 0U;
#endif /* __OO_EXTENDED_STATUS__ */
    /* TODO choose the fate of global resources */
    /* commented just to prevent from misra non-compliance */
    /*EE_oo_unlock_others(ResID);*/
  }

  /* Check if at least one resource have been freed */
  if(ResID != EE_UREG_MINUS1)
  {
    /* Restore the sys-ceiling with the old value from the bottom of the
       resource stack */
    EE_sys_ceiling = EE_resource_oldceiling[ResID];

#ifdef __OO_ISR2_RESOURCES__
    /* Restore the isr2 prio with the old value from the bottom of the
       resource stack */
    EE_hal_set_int_prio(EE_isr2_oldpriority[ResID]);
#endif /* __OO_ISR2_RESOURCES__ */

#ifdef __OO_ORTI_PRIORITY__
    /* Restore the ORTI priority with the old value from the bottom of the
       resource stack */
    EE_ORTI_th_priority[tid] = EE_ORTI_resource_oldpriority[ResID];
#endif /* __OO_ORTI_PRIORITY__ */
  }
  return ResID;
}

#endif /* __OO_EXTENDED_STATUS__&& !__PRIVATE_RELEASEALLRESOURCE__ */
