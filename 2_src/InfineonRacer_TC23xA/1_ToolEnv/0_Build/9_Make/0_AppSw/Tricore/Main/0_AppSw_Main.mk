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
# Subdirectory make file for 0_Src/0_AppSw/Tricore/Main
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/AppTaskFu.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/AppTaskFu.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/AppTaskFu.o: 0_Src/0_AppSw/Tricore/Main/AppTaskFu.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/AppTaskFu.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/AsclinShellInterface.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/AsclinShellInterface.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/AsclinShellInterface.o: 0_Src/0_AppSw/Tricore/Main/AsclinShellInterface.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/AsclinShellInterface.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicGpt12Enc.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicGpt12Enc.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicGpt12Enc.o: 0_Src/0_AppSw/Tricore/Main/BasicGpt12Enc.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/BasicGpt12Enc.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicGtmTom.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicGtmTom.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicGtmTom.o: 0_Src/0_AppSw/Tricore/Main/BasicGtmTom.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/BasicGtmTom.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicPort.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicPort.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicPort.o: 0_Src/0_AppSw/Tricore/Main/BasicPort.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/BasicPort.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicStm.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicStm.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicStm.o: 0_Src/0_AppSw/Tricore/Main/BasicStm.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/BasicStm.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicTsl1401.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicTsl1401.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicTsl1401.o: 0_Src/0_AppSw/Tricore/Main/BasicTsl1401.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/BasicTsl1401.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicVadcBgScan.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicVadcBgScan.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/BasicVadcBgScan.o: 0_Src/0_AppSw/Tricore/Main/BasicVadcBgScan.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/BasicVadcBgScan.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/Cpu0_Main.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/Cpu0_Main.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/Cpu0_Main.o: 0_Src/0_AppSw/Tricore/Main/Cpu0_Main.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/Cpu0_Main.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/InfineonRacer.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/InfineonRacer.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/Main/InfineonRacer.o: 0_Src/0_AppSw/Tricore/Main/InfineonRacer.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/Main/InfineonRacer.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

