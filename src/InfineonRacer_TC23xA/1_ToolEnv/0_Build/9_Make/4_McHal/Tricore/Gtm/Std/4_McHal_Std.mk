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
# Subdirectory make file for 0_Src/4_McHal/Tricore/Gtm/Std
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm.o: 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Cmu.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Cmu.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Cmu.o: 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Cmu.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Cmu.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Dpll.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Dpll.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Dpll.o: 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Dpll.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Dpll.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tbu.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tbu.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tbu.o: 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tbu.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tbu.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tim.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tim.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tim.o: 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tim.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tim.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tom.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tom.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tom.o: 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tom.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tom.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

