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
# Subdirectory make file for 0_Src/4_McHal/Tricore/_PinMap
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxAsclin_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxCcu6_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxCcu6_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxCcu6_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxCcu6_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxCcu6_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxGpt12_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxGpt12_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxGpt12_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxGpt12_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxGpt12_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxGtm_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxGtm_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxGtm_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxGtm_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxGtm_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxPort_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxPort_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxPort_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxPort_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxPort_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxQspi_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxQspi_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxQspi_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxQspi_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxQspi_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxSent_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxSent_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxSent_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxSent_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxSent_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxSmu_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxSmu_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxSmu_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxSmu_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxSmu_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.d

2_Out/Gnuc/0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.o: 0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

