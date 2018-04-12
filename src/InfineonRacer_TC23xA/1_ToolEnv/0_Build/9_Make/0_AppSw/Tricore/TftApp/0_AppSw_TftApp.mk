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
# Subdirectory make file for 0_Src/0_AppSw/Tricore/TftApp
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/background_light.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/background_light.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/background_light.o: 0_Src/0_AppSw/Tricore/TftApp/background_light.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/TftApp/background_light.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/basebar.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/basebar.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/basebar.o: 0_Src/0_AppSw/Tricore/TftApp/basebar.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/TftApp/basebar.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/display_io.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/display_io.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/display_io.o: 0_Src/0_AppSw/Tricore/TftApp/display_io.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/TftApp/display_io.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/DrawLogo.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/DrawLogo.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/DrawLogo.o: 0_Src/0_AppSw/Tricore/TftApp/DrawLogo.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/TftApp/DrawLogo.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/keyboard.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/keyboard.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/keyboard.o: 0_Src/0_AppSw/Tricore/TftApp/keyboard.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/TftApp/keyboard.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/menu.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/menu.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/menu.o: 0_Src/0_AppSw/Tricore/TftApp/menu.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/TftApp/menu.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/Perf_Meas.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/Perf_Meas.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/Perf_Meas.o: 0_Src/0_AppSw/Tricore/TftApp/Perf_Meas.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/TftApp/Perf_Meas.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/tft_app.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/tft_app.d

2_Out/Gnuc/0_Src/0_AppSw/Tricore/TftApp/tft_app.o: 0_Src/0_AppSw/Tricore/TftApp/tft_app.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/0_AppSw/Tricore/TftApp/tft_app.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

