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

include 1_ToolEnv/0_Build/1_Config/CfgIndent.mk
include 1_ToolEnv/0_Build/1_Config/ConfigPrj.mk	#To get all global definitions

C_FILES_FOR_INDENT=$(shell find $(SRC_DIR) -name "*.c")
H_FILES_FOR_INDENT=$(shell find $(SRC_DIR) -name "*.h")

INDENT_EXCLUDE:=$(foreach element,$(INDENT_EXCLUDE_CFG),"$(element)" )
EXCLUDE_DIR_FOR_INDENT:= $(foreach element,$(INDENT_EXCLUDE), $(shell find $(SRC_DIR) -iname $(element) -type d))
EXCLUDE_DIR_FOR_INDENT:= $(foreach element,$(EXCLUDE_DIR_FOR_INDENT), $(element)%)
EXCLUDE_FILE_FOR_INDENT:= $(foreach element,$(INDENT_EXCLUDE), $(shell find $(SRC_DIR) -iname $(element) -type f))

C_FILES_FOR_INDENT:= $(filter-out $(EXCLUDE_DIR_FOR_INDENT) $(EXCLUDE_FILE_FOR_INDENT),$(C_FILES_FOR_INDENT))
H_FILES_FOR_INDENT:= $(filter-out $(EXCLUDE_DIR_FOR_INDENT) $(EXCLUDE_FILE_FOR_INDENT),$(H_FILES_FOR_INDENT))

all:
	@echo Formatting code style ..
	$(INDENT) $(INDENT_OPTIONS) $(C_FILES_FOR_INDENT) $(H_FILES_FOR_INDENT)
	@-rm -f $(C_FILES_FOR_INDENT:.c=.c~) $(H_FILES_FOR_INDENT:.h=.h~)
	@echo ..done
	