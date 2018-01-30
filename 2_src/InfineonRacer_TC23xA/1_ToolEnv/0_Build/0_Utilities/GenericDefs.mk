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

#macro makes sed command string to convert the Tasking generated dependency files to GNU format 
TaskingDepConversionString=$(subst a,-e 's/\($(subst .,\.,$(1)).*:\)/$(subst /,\/,$(2))\/\1/g' -e 's/\\/\//g' -e '/\"/d',a)

# Software framework version and iLLD version
FW_VERSION= V3.1.R0
ILLD_VERSION= iLLD_1_0_0_8_0

#Environment variables. These 6 variables below can be changed with environment variable setting in the shell
COMPILER_DIR_MAIN?=$(TOOLCHAIN_DIR_MAIN)
PHP_PATH?="$(BINUTILS_PATH)"/../php
PHP_MAKEGEN_SCRIPT?="$(BINUTILS_PATH)"/../php/Scripts/IfxSwFw_GenMake_CSrc.php
PHP_RELEASE_SCRIPT?="$(BINUTILS_PATH)"/../php/Scripts/IfxSwFw_CreateReleasePkg.php
CREATE_OUT_HEX_FILES?= $(CREATE_EXE_HEX_FILES)
CREATE_OUT_SREC_FILES?= $(CREATE_EXE_SREC_FILES)

# Automatically fetch the project name
PROJ_NAME= $(lastword $(subst /, ,$(CURDIR)))

#Source code
SRC_DIR := 0_Src
OUT_DIR = 2_Out/$(TOOL_CHAIN_MAIN)
OUT_DIR_SECOND = 2_Out/$(TOOL_CHAIN_SECOND)
OUT_DIR_THIRD = 2_Out/$(TOOL_CHAIN_THIRD)

#the directory name where config info are available #########################
MAK_CONFIG_DIR:=$(PROJ_DIR)/1_ToolEnv/0_Build/1_Config

#the directory name where all make files are generated #########################
MAK_FILE_DIR:=1_ToolEnv/0_Build/9_Make

# Make the dir structure for sub make files ####################################
PROJ_FIRST_SUBMAKE:=$(MAK_FILE_DIR)/$(SRC_DIR).mk
PROJCONFIG_MAKE_FILE= $(MAK_CONFIG_DIR)/ConfigPrj.mk

ifeq ($(strip $(DISPLAY_BUILD_CMD)),yes)
EXPOSE=
else
EXPOSE=@
endif

ifeq ($(strip $(ENABLE_MULTI_PROCESS)),yes)
MULTI_PROC=-j4
else
MULTI_PROC=
endif

ifeq ($(strip $(CREATE_LIB_NO_EXE)),yes)
BUILD_TARGET=Archive
else
BUILD_TARGET=ExeTargets
endif

# Defining the binary target names #############################################
ELF_BIN_MAIN = $(OUT_DIR)/$(PROJ_NAME)_$(CORETYP_MAIN).elf
HEX_BIN_MAIN = $(OUT_DIR)/$(PROJ_NAME)_$(CORETYP_MAIN).hex
SREC_BIN_MAIN = $(OUT_DIR)/$(PROJ_NAME)_$(CORETYP_MAIN).srec
LIB_OBJ_MAIN = $(OUT_DIR)/Lib$(TOOL_CHAIN_MAIN)_$(PROJ_NAME)_$(CORETYP_MAIN).a
MAP_FILE_MAIN = $(OUT_DIR)/$(PROJ_NAME)_$(CORETYP_MAIN).map
LSL_MAIN_FILE ?= $(PROJ_DIR)/1_ToolEnv/0_Build/1_Config/Lcf_$(TOOL_CHAIN_MAIN).lsl

#GENERATE_SECOND_EXE is set to 'Yes' at the PROJ_FIRST_SUBMAKE if there are some src files are available in third cpu folders
ifneq ($(GENERATE_SECOND_EXE),)
ELF_BIN_SECOND = $(OUT_DIR_SECOND)/$(PROJ_NAME)_$(CORETYP_SECOND).elf
HEX_BIN_SECOND = $(OUT_DIR_SECOND)/$(PROJ_NAME)_$(CORETYP_SECOND).hex
SREC_BIN_SECOND = $(OUT_DIR_SECOND)/$(PROJ_NAME)_$(CORETYP_SECOND).srec
LIB_OBJ_SECOND = $(OUT_DIR_SECOND)/Lib$(TOOL_CHAIN_SECOND)_$(PROJ_NAME)_$(CORETYP_SECOND).a
MAP_FILE_SECOND = $(OUT_DIR_SECOND)/$(PROJ_NAME)_$(CORETYP_SECOND).map
LSL_SECOND_FILE ?= $(PROJ_DIR)/1_ToolEnv/0_Build/1_Config/Lcf_$(TOOL_CHAIN_SECOND).lsl
endif

#GENERATE_THIRD_EXE is set to 'Yes' at the PROJ_FIRST_SUBMAKE if there are some src files are available in third cpu folders
ifneq ($(GENERATE_THIRD_EXE),)
ELF_BIN_THIRD = $(OUT_DIR_THIRD)/$(PROJ_NAME)_$(CORETYP_THIRD).elf
HEX_BIN_THIRD = $(OUT_DIR_THIRD)/$(PROJ_NAME)_$(CORETYP_THIRD).hex
SREC_BIN_THIRD = $(OUT_DIR_THIRD)/$(PROJ_NAME)_$(CORETYP_THIRD).srec
LIB_OBJ_THIRD = $(OUT_DIR_THIRD)/Lib$(TOOL_CHAIN_THIRD)_$(PROJ_NAME)_$(CORETYP_THIRD).a
MAP_FILE_THIRD = $(OUT_DIR_THIRD)/$(PROJ_NAME)_$(CORETYP_THIRD).map
LSL_THIRD_FILE ?= $(PROJ_DIR)/1_ToolEnv/0_Build/1_Config/Lcf_$(TOOL_CHAIN_THIRD).lsl
endif

################# DONOT CHANGE THE FOLLOWING IN USUAL CASES ####################
# May be changed only if some BASE_xx_OPTS give error with different toolchain #
# version ######################################################################
ADDITIONAL_EXE_MAIN=
ADDITIONAL_EXE_SECOND=
ADDITIONAL_EXE_THIRD=
ifeq ($(strip $(CREATE_OUT_HEX_FILES)),yes)
ADDITIONAL_EXE_MAIN+= $(HEX_BIN_MAIN)
ADDITIONAL_EXE_SECOND+= $(HEX_BIN_SECOND)
ADDITIONAL_EXE_THIRD+= $(HEX_BIN_THIRD)
endif
ifeq ($(strip $(CREATE_OUT_SREC_FILES)),yes)
ADDITIONAL_EXE_MAIN+= $(SREC_BIN_MAIN)
ADDITIONAL_EXE_SECOND+= $(SREC_BIN_SECOND)
ADDITIONAL_EXE_THIRD+= $(SREC_BIN_THIRD)
endif

ifeq ("$(TOOL_CHAIN_MAIN)","Gnuc")
###########################Start of Gnuc tool chain settings #######################
#Make commands Gnuc
CC:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/tricore-gcc"
AS:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/tricore-gcc"
LD:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/tricore-gcc"
AR:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/tricore-ar"
HX:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/tricore-objcopy"

# C Compiler Options
CC_OPTS= $(CC_OPTIONS_MAIN) $(USER_C_INCLUDES)

#Assembler options
ASM_OPTS= $(ASM_OPTIONS_MAIN) -x assembler-with-cpp

#Linker command options
LD_OPTS = $(LD_OPTIONS_MAIN) -Wl,-T $(LSL_MAIN_FILE) -Wl,-Map=$(MAP_FILE_MAIN) -Wl,--extmap=a

##########################End of Gnuc tool chain settings #########################
endif


ifeq ("$(TOOL_CHAIN_MAIN)","Dcc")
###########################Start of Dcc tool chain settings #######################
#Make commands Dcc
CC:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/dcc"
AS:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/das"
LD:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/dld"
AR:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/dar"
DD:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/ddump"

# C Compiler Options
CC_OPTS= $(CC_OPTIONS_MAIN) $(USER_C_INCLUDES)

#Assembler options
ASM_OPTS= $(ASM_OPTIONS_MAIN)

#Linker command options
LD_OPTS = $(LD_OPTIONS_MAIN) -m6 $(LSL_MAIN_FILE) -@O=$(MAP_FILE_MAIN)
##########################End of Dcc tool chain settings #########################
endif


ifeq ("$(TOOL_CHAIN_MAIN)","Tasking")
###########################Start of Tasking tool chain settings #######################
#Make commands Tasking
CC:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/ctc"
AS:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/astc"
LD:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/ltc"
AR:=$(EXPOSE)"$(COMPILER_DIR_MAIN)/bin/artc"

# C Compiler Options
CC_OPTS = $(CC_OPTIONS_MAIN) $(USER_C_INCLUDES)

#Assembler options
ASM_OPTS:= $(ASM_OPTIONS_MAIN) $(USER_ASM_INCLUDES)

#Linker command options
OUT_FILE_OPT= --output=$(ELF_BIN_MAIN):elf
ifeq ($(strip $(CREATE_OUT_HEX_FILES)),yes)
OUT_FILE_OPT += --output=$(HEX_BIN_MAIN):IHEX
endif
ifeq ($(strip $(CREATE_OUT_SREC_FILES)),yes)
OUT_FILE_OPT += --output=$(SREC_BIN_MAIN):SREC
endif
LD_OPTS := $(OUT_FILE_OPT) \
-I$(PROJ_DIR)/1_ToolEnv/0_Build/1_Config --lsl-file=$(LSL_MAIN_FILE) \
$(LIBS) $(LD_OPTIONS_MAIN)

##########################End of Tasking tool chain settings ###########################
endif

#Settings for secondary core
# Name of the TOOL_CHAIN_SECOND is always fixed to Tool2ndCpu
TOOL_CHAIN_SECOND:=Tool2ndCpu

#Settings for third core
# Name of the TOOL_CHAIN_THIRD is always fixed to Tool3rdCpu
TOOL_CHAIN_THIRD:=Tool3rdCpu

#Make commands Mcs assembler
GTMASM=$(EXPOSE)"1_ToolEnv/0_Build/0_Utilities/caspr-mcs"


#OBJ_FILES present in the application ###
OBJ_FILES_MAIN:=
OBJ_FILES_SECOND:=
OBJ_FILES_SPECIAL:=

#Dependency files a present in the application ###
DEP_FILES_MAIN:=
DEP_FILES_SECOND:=
DEP_FILES_SPECIAL:=

# Indent, coding style format tool configuration#####################################
INDENT_TOOL_EXE=$(if $(strip $(INDENT_TOOL_PATH)),"$(INDENT_TOOL_PATH)/Indent.exe",Indent.exe)
INDENT:=$(EXPOSE)$(INDENT_TOOL_EXE)

# Doxygen Documentation format tool configuration###################################
DOXYGEN:=$(EXPOSE)"$(DOXYGEN_TOOL_PATH)/doxygen"
MSHELP_COMPILER:="$(MSHELP_COMPILER_PATH)/hhc"

# Make generation dependency check ###############
PROJ_SRC_FOLDERS=$(CURDIR)/0_Src,$(EXTERNAL_SRC_FOLDERS)
IS_SRC_MODIFIED= $(shell $(PHP_PATH)/php "$(BINUTILS_PATH)"/../php/Scripts/IfxSwFw_IsFolderModified.php "i=$(1);c=$(2)")
SUBDIR_MAKE_TARGET=$(if $(wildcard $(PROJ_FIRST_SUBMAKE)),$(if $(call IS_SRC_MODIFIED,$(PROJ_SRC_FOLDERS),$(MAK_FILE_DIR)),cleanMake)) \
$(PROJCONFIG_MAKE_FILE)

# PHP Configuration ###############
PHP= @$(PHP_PATH)/php

# Makegen command Configuration !!! Donot Change !!!###############
MAKEGEN_COMMAND= "PROJ_DIR= $(PROJ_DIR); \
	DEFAULT_TARGET_TYPE= $(CORETYP_MAIN); \
	SECOND_TARGET_TYPE= $(CORETYP_SECOND); \
	THIRD_TARGET_TYPE= $(CORETYP_THIRD); \
	SPECIAL_TARGET_TYPE= $(CORETYP_SPECIAL); \
	TOOLCHAIN_FOR_DEFAULT_TARGET= $(TOOL_CHAIN_MAIN); \
	TOOLCHAIN_FOR_SECOND_TARGET= $(TOOL_CHAIN_SECOND); \
	TOOLCHAIN_FOR_THIRD_TARGET= $(TOOL_CHAIN_THIRD); \
	TOOLCHAIN_FOR_SPECIAL_TARGET= $(TOOL_CHAIN_SPECIAL); \
	USE_FILE_PATTERN= $(USE_FILE_PATTERN); \
	DISCARD_FILE_PATTERN= $(DISCARD_FILE_PATTERN); \
	EXTERNAL_SRC_FOLDERS= $(EXTERNAL_SRC_FOLDERS)"
