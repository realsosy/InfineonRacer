###############################################################################
#                                                                             #
#       Copyright (C) 2015 Infineon Technologies AG. All rights reserved.     #
#                                                                             #
#                                                                             #
#                              IMPORTANT NOTICE                               #
#                                                                             #
#                                                                             #
# Infineon Technologies AG (Infineon) is supplying this file for use          #
# exclusively with Infineon’s microcontroller products. This file can be      #
# freely distributed within development tools that are supporting such        #
# microcontroller products.                                                   #
#                                                                             #
# THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED #
# OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF          #
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.#
# INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,#
# OR CONSEQUENTIAL DAMAGES, FOR	ANY REASON WHATSOEVER.                        #
#                                                                             #
###############################################################################
# Subdirectory make file for 0_Src/4_McHal/Tricore/Ccu6
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


include 1_ToolEnv/0_Build/9_Make/4_McHal/Tricore/Ccu6/Icu/4_McHal_Icu.mk \
		1_ToolEnv/0_Build/9_Make/4_McHal/Tricore/Ccu6/PwmBc/4_McHal_PwmBc.mk \
		1_ToolEnv/0_Build/9_Make/4_McHal/Tricore/Ccu6/PwmHl/4_McHal_PwmHl.mk \
		1_ToolEnv/0_Build/9_Make/4_McHal/Tricore/Ccu6/Std/4_McHal_Std.mk \
		1_ToolEnv/0_Build/9_Make/4_McHal/Tricore/Ccu6/Timer/4_McHal_Timer.mk \
		1_ToolEnv/0_Build/9_Make/4_McHal/Tricore/Ccu6/TimerWithTrigger/4_McHal_TimerWithTrigger.mk \
		1_ToolEnv/0_Build/9_Make/4_McHal/Tricore/Ccu6/TPwm/4_McHal_TPwm.mk

