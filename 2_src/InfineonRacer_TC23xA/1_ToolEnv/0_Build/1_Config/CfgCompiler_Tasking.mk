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

TOOLCHAIN_DIR_MAIN:=C:\Tools\Compilers\Tasking\TricoreV6p0r1\ctc

#user defined include paths start with -I
USER_C_INCLUDES:=-I./2_Out/Tasking/0_Src/4_McHal/Mcs
USER_ASM_INCLUDES:=

# Compiler options 
CC_OPTIONS_MAIN := --core=tc1.6.x -D_CTRI --iso=99	\
			--language=-gcc,-strings --switch=auto --align=4 --default-near-size=1 		\
			--default-a0-size=1 --default-a1-size=1 -ONRpfceogvIlywakmsU 			\
			--tradeoff=2 --compact-max-size=200 --max-call-depth=-1 --inline-max-incr=35\
			--inline-max-size=10 -g --misrac-version=2004 --immediate-in-code

# Assembler options 
ASM_OPTIONS_MAIN :=--list-format=Ldegilmnpqrsvwxyz --optimize=gs --debug-info=+hll -il

# Linker options 
LD_OPTIONS_MAIN := -D__CPU__=tc23x --map-file -OtcxyL --core=mpe:vtc

# Library configurations 
# Include standard libraries:-
LIB_DIR = "$(TOOLCHAIN_DIR_MAIN)/lib/tc16"
LIBS = $(LIB_DIR)/librt.a $(LIB_DIR)/libcs_fpu.a $(LIB_DIR)/libfp_fpu.a

# Include custom (user made) libraries:-
# Example to include custom library with name "LibTasking_IfxStdOutTft_Tricore.a"
# Place the library at the folder <Project>/1_ToolEnv/1_CustomLibs
# Add following lines to Configure the required build variables
# LIBS+= "./1_ToolEnv/1_CustomLibs/LibTasking_IfxStdOutTft_Tricore.a"

LIBS +=# "./1_ToolEnv/1_CustomLibs/LibTasking_IfxStdOutTft_Tricore.a" 

#End################## Configuration for MAIN Core #######################
