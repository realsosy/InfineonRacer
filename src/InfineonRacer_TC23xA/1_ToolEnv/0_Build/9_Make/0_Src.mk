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
# Subdirectory make file for 0_Src
# This is for core type "MAIN" and Gnuc toolchain !
###############################################################################


include 1_ToolEnv/0_Build/1_Config/CfgCompiler_Gnuc.mk
include 1_ToolEnv/0_Build/1_Config/ConfigPrj.mk

include 1_ToolEnv/0_Build/9_Make/0_AppSw/0_AppSw.mk \
		1_ToolEnv/0_Build/9_Make/1_SrvSw/1_SrvSw.mk \
		1_ToolEnv/0_Build/9_Make/2_CDrv/2_CDrv.mk \
		1_ToolEnv/0_Build/9_Make/4_McHal/4_McHal.mk

.PHONY: All_Targets

ExeTargets:$(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN)
	@echo '...Done'

PROJ_OBJS_MAIN:= 

$(ELF_BIN_MAIN): $(OBJ_FILES_SPECIAL) $(OBJ_FILES_MAIN) $(PROJ_OBJS_MAIN) $(USER_MAKE_OBJS_MAIN) $(LSL_MAIN_FILE) $(PROJCONFIG_MAKE_FILE)
	@echo 'Building target: $@'
	$(LD) $(LD_OPTS) $(LIB_DIR) @1_ToolEnv/0_Build/9_Make/mainObjFileList.opt $(USER_MAKE_OBJS_MAIN) $(LIBS) -o $(ELF_BIN_MAIN)
	
$(HEX_BIN_MAIN): $(ELF_BIN_MAIN)
	$(HX) $(ELF_BIN_MAIN) -O ihex $(HEX_BIN_MAIN)
	
$(SREC_BIN_MAIN): $(ELF_BIN_MAIN)
	$(HX) $(ELF_BIN_MAIN) -O srec $(SREC_BIN_MAIN)
	@echo ' '

Archive: $(LIB_OBJ_MAIN)
	@echo '...Done'

$(LIB_OBJ_MAIN): $(OBJ_FILES_SPECIAL) $(OBJ_FILES_MAIN) $(PROJ_OBJS_MAIN) $(USER_MAKE_OBJS_MAIN) $(PROJCONFIG_MAKE_FILE)
	@echo 'Building library: $@'
	$(AR) rcs $@ @1_ToolEnv/0_Build/9_Make/mainObjFileList.opt $(USER_MAKE_OBJS_MAIN)
	@echo ' '
	
clean: 
	@-rm -rf $(OUT_DIR)  

-include $(DEP_FILES_MAIN)
-include $(DEP_FILES_SPECIAL)
