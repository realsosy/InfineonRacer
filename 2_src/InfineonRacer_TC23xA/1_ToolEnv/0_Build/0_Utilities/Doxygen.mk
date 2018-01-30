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

include 1_ToolEnv/0_Build/1_Config/CfgDoxygen.mk
include 1_ToolEnv/0_Build/1_Config/ConfigPrj.mk	#To get all global definitions

#Doxygen output dir
DOXYGEN_OUT_DIR=3_Doc/Doxygen/Out
DOXYGEN_LOG_DIR=3_Doc/Doxygen/Log
DOXYGEN_USEROBJ_DIR=3_Doc/Doxygen/_UserFiles
DOXYGEN_HELPGEN_PATH=$(subst \,/,$(BINUTILS_PATH)/../FrameWorkFiles/HelpGenFiles)

#generated file for the doxygen rules
DOXYGEN_RULES_FILE=$(DOXYGEN_LOG_DIR)/DoxygenRules.txt

DOXYGEN_RULES_DEP=$(if $(call IS_SRC_MODIFIED,$(PROJ_SRC_FOLDERS),$(DOXYGEN_RULES_FILE)),clean)

DOXYGEN_CFGGEN_CMD="EXTERNAL_SRC_FOLDERS= $(PROJ_SRC_FOLDERS),$(DOXYGEN_HELPGEN_PATH)/Headers;\
                    DOXYGEN_EXCLUDE_CFG= $(DOXYGEN_EXCLUDE_CFG);\
                    DOXYGEN_IMAGE_FILE_PATH= $(DOXYGEN_USEROBJ_DIR), $(DOXYGEN_HELPGEN_PATH)/Images;\
                    DOXYGEN_OUT_PATHNAME= $(DOXYGEN_OUT_DIR);\
                    DOXYGEN_RULES_FILE_PATHNAME= $(DOXYGEN_RULES_FILE);\
                    DOXYGEN_DOT_TOOL_PATH= $(subst \,/,$(DOTTOOL_TOOL_PATH));\
                    DOXYGEN_HHC_TOOL_PATHNAME= $(subst \,/,$(MSHELP_COMPILER))"

ifeq ($(strip $(DOXYGEN_KEEP_HTML)),yes)
CLEAN_ONLY_HTML=
else
CLEAN_ONLY_HTML=cleanonlyhtml
endif

all: $(DOXYGEN_OUT_DIR)/HTML/$(PROJ_NAME).chm $(CLEAN_ONLY_HTML)

$(DOXYGEN_OUT_DIR)/HTML/$(PROJ_NAME).chm: $(DOXYGEN_RULES_DEP) $(DOXYGEN_RULES_FILE)
	@echo Doxygen generating documents ..
	@echo It takes considerable time, please wait ..
	$(DOXYGEN) $(DOXYGEN_RULES_FILE) 1>$(DOXYGEN_LOG_DIR)/Doxygen_log.txt 2>$(DOXYGEN_LOG_DIR)/Doxygen_error.txt
	@cp $(DOXYGEN_OUT_DIR)/HTML/$(PROJ_NAME).chm $(DOXYGEN_OUT_DIR) 2>>$(DOXYGEN_LOG_DIR)/Doxygen_error.txt
	@echo ..done

$(DOXYGEN_RULES_FILE): 1_ToolEnv/0_Build/1_Config/CfgDoxygen.mk
	@-rm -rf $(DOXYGEN_OUT_DIR)/*
	@echo Doxygen configuration generated .. 
	@$(PHP) $(PHP_PATH)/Scripts/IfxSwFw_GenMake_Doxygen.php $(DOXYGEN_CFGGEN_CMD)
	@echo ..done
	
cleanonlyhtml:
	@echo Cleaning generated HTML files ..
	@-rm -rf $(DOXYGEN_OUT_DIR)/Html
	@-rm -rf $(DOXYGEN_OUT_DIR)/Rtf 

clean:
	@-rm -rf $(DOXYGEN_OUT_DIR)/*
	@-rm -rf $(DOXYGEN_LOG_DIR)/*

