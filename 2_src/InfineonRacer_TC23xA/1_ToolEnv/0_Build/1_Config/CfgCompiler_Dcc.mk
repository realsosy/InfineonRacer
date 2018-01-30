###############################################################################
#                                                                             #
#       Copyright (c) 2015 Infineon Technologies AG. All rights reserved.     #
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

#Start################ Configuration for MAIN Core #######################

TOOLCHAIN_DIR_MAIN:=C:\Tools\Compilers\Windriver\diab\5.9.4.7\WIN32

#user defined include paths start with -I
USER_C_INCLUDES:=-I./2_Out/Dcc/0_Src/4_McHal/Mcs
USER_ASM_INCLUDES:=

# Compiler options

CC_OPTIONS_MAIN = -DWINDRIVER -tTC16NF:windiss -O -Xsection-split=3 \
		-Xkeep-assembly-file=2 -Xsmall-data=1 -Xsmall-const=1 -g3 \
           -XO -Xinline=0 -Xunroll-size=200 -Xdialect-c99 -ei5388,2273,5387

# Assembler options
#same as compiler options
ASM_OPTIONS_MAIN = $(CC_OPTIONS_MAIN)

# Linker options
LD_OPTIONS_MAIN = -tTC16NF:simple -m6

# Library configurations
# Include standard libraries:-
LIB_DIR= -L"$(TOOLCHAIN_DIR_MAIN)/TC16NF" 
LIBS= -lc

# Include custom (user made) libraries:-
# Note: Library must be with prefix "Lib" and with extension .a !!!!
# Example to include custom library with name "LibDcc_IfxStdOutTft_Tricore.a"
# Place the library at the folder <Project>/1_ToolEnv/1_CustomLibs
# Add following lines to Configure the required build variables
# LIB_DIR+= -L"./1_ToolEnv/1_CustomLibs
# LIBS+= -lDcc_IfxStdOutTft_Tricore (Note that, Lib is replaced by -l and .a is omitted)

LIB_DIR+=#-L"./1_ToolEnv/1_CustomLibs"
LIBS+=#-lDcc_IfxStdOutTft_Tricore

#End################## Configuration for MAIN Core #######################
