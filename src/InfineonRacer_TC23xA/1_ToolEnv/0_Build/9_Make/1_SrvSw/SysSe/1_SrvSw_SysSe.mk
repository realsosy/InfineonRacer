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
# Subdirectory make file for 0_Src/1_SrvSw/SysSe
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


include 1_ToolEnv/0_Build/9_Make/1_SrvSw/SysSe/Bsp/1_SrvSw_Bsp.mk \
		1_ToolEnv/0_Build/9_Make/1_SrvSw/SysSe/Comm/1_SrvSw_Comm.mk \
		1_ToolEnv/0_Build/9_Make/1_SrvSw/SysSe/General/1_SrvSw_General.mk \
		1_ToolEnv/0_Build/9_Make/1_SrvSw/SysSe/Math/1_SrvSw_Math.mk \
		1_ToolEnv/0_Build/9_Make/1_SrvSw/SysSe/Time/1_SrvSw_Time.mk

