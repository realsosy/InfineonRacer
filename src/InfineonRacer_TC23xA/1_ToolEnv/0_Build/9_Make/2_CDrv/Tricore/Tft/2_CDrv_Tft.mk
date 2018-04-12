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
# Subdirectory make file for 0_Src/2_CDrv/Tricore/Tft
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/conio_tft.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/conio_tft.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/conio_tft.o: 0_Src/2_CDrv/Tricore/Tft/conio_tft.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Tft/conio_tft.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/fifo.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/fifo.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/fifo.o: 0_Src/2_CDrv/Tricore/Tft/fifo.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Tft/fifo.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/font_8_12.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/font_8_12.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/font_8_12.o: 0_Src/2_CDrv/Tricore/Tft/font_8_12.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Tft/font_8_12.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/libtft_ascii.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/libtft_ascii.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/libtft_ascii.o: 0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/libtft_graphics.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/libtft_graphics.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/libtft_graphics.o: 0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/tfthw.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/tfthw.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/tfthw.o: 0_Src/2_CDrv/Tricore/Tft/tfthw.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Tft/tfthw.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

OBJ_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/touch.o
DEP_FILES_MAIN+= 2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/touch.d

2_Out/Gnuc/0_Src/2_CDrv/Tricore/Tft/touch.o: 0_Src/2_CDrv/Tricore/Tft/touch.c 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling 0_Src/2_CDrv/Tricore/Tft/touch.c'
	$(CC) $(CC_OPTS) @1_ToolEnv/0_Build/9_Make/cIncludePathList.opt -c $< -o $@ -save-temps=obj -MMD
	@echo ' '

