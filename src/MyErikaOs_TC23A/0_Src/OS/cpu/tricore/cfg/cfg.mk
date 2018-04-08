# ###*B*###
# ERIKA Enterprise - a tiny RTOS for small microcontrollers
# 
# Copyright (C) 2010, TU Dortmund University, Faculty of Computer Science 12
# 
# This file is part of ERIKA Enterprise.
# 
# ERIKA Enterprise is free software; you can redistribute it
# and/or modify it under the terms of the GNU General Public License
# version 2 as published by the Free Software Foundation, 
# (with a special exception described below).
# 
# Linking this code statically or dynamically with other modules is
# making a combined work based on this code.  Thus, the terms and
# conditions of the GNU General Public License cover the whole
# combination.
# 
# As a special exception, the copyright holders of this library give you
# permission to link this code with independent modules to produce an
# executable, regardless of the license terms of these independent
# modules, and to copy and distribute the resulting executable under
# terms of your choice, provided that you also meet, for each linked
# independent module, the terms and conditions of the license of that
# module.  An independent module is a module which is not derived from
# or based on this library.  If you modify this code, you may extend
# this exception to your version of the code, but you are not
# obligated to do so.  If you do not wish to do so, delete this
# exception statement from your version.
# 
# ERIKA Enterprise is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License version 2 for more details.
# 
# You should have received a copy of the GNU General Public License
# version 2 along with ERIKA Enterprise; if not, write to the
# Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301 USA.
# ###*E*###

## Author: Errico Guidieri 2012
## 
##

## Infinion modifications, intigration to Infineon Build environment:
## Author: 
##         Ashok Abbi, <Ashok.Abbi@infineon.com> 18.07.2013

ifeq  ($(call iseeopt, EE_TRICORE__), yes)

ifneq ($(call iseeopt, EE_USE_CUSTOM_STARTUP_CODE), yes)
ifeq  ($(call iseeopt, EE_DEBUG), yes)
ifeq  ($(call iseeopt, EE_TASKING__), yes)
EE_BOOT_SRCS += $(EE_PKG)/cpu/tricore/src/ee_tc_tasking_sync_on_halt.c
endif # EE_TASKING__
endif # EE_DEBUG
endif # !EE_USE_CUSTOM_STARTUP_CODE

ifneq ($(call iseeopt, EE_ERIKA_TRAP_HANDLING_OFF), yes)
EE_SRCS += $(EE_PKG)/cpu/tricore/src/ee_tc_trapvec.c
endif

ifneq ($(call iseeopt, EE_ERIKA_ISR_HANDLING_OFF), yes)
EE_SRCS += $(EE_PKG)/cpu/tricore/src/ee_tc_intvec.c
endif

ifeq ($(call iseeopt, __OO_BCC1__), yes)
CPU_OO=YES
endif
ifeq ($(call iseeopt, __OO_BCC2__), yes)
CPU_OO=YES
endif
ifeq ($(call iseeopt, __OO_ECC1__), yes)
CPU_OO=YES
endif
ifeq ($(call iseeopt, __OO_ECC2__), yes)
CPU_OO=YES
endif

ifeq ($(CPU_OO), YES)
EE_SRCS += $(EE_PKG)/cpu/tricore/src/ee_tc_oo.c
endif

ifeq ($(call iseeopt, __MULTI__), yes)
EE_SRCS += $(EE_PKG)/cpu/tricore/src/ee_tc_context.c
endif

endif # EE_TRICORE__
