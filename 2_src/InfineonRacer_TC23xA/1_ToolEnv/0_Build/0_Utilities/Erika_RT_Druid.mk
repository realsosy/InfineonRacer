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

include 1_ToolEnv/0_Build/1_Config/ConfigPrj.mk	#To get all global definitions

RT_DRUID_TOOLS_DIR:=$(BINUTILS_PATH)/../RT-Druid
RT_DRUID_OUT_DIR=0_Src/3_OS/Config
RT_DRUID_TEMP_DIR=$(OUT_DIR)/RT_Druid
RT_DRUID_CMD=java -jar "$(RT_DRUID_TOOLS_DIR)/plugins/org.eclipse.equinox.launcher_1.3.0.v20120522-1813.jar"\
-data $(RT_DRUID_TEMP_DIR)/workspace -application com.eu.evidence.rtdruid.oil.standalone.writer 

ERIKA_OS_OIL_FILE=1_ToolEnv/0_Build/1_Config/CfgErikaOS.oil
ERIKA_OS_CONFIG_FILES=$(RT_DRUID_OUT_DIR)/eecfg.c

SED_CMD_OPTN_FOR_RT_DRUID= -e '/\(^ifdef.*\)\|\(^endif.*\)\|\(^ifndef.*\)\|\(^else.*\)\|\(^export.*\)/d' \
                           -e '/\(EEBASE.*\)\|\(ERIKA_FILES.*\)\|\(^CFLAGS.*\)\|\(^ASFLAGS.*\)\|\(^LDFLAGS.*\)\|\(^LDDEPS.*\)\|\(^LIBS.*\)/d' \
                           -e '/\(^APP_SRCS.*\)\|\(APPBASE.*\)\|\(OUTBASE.*\)\|\(eval.*\)/d' \
                           -e '/\(\#.*\)/d'

all: $(ERIKA_OS_CONFIG_FILES)

$(ERIKA_OS_CONFIG_FILES): $(ERIKA_OS_OIL_FILE)
	@-rm -rf $@
	@mkdir -p $(@D)/cfg $(@D)/src $(@D)/inc $(RT_DRUID_TEMP_DIR)
	@echo Operating system configurations generated .. 
	@$(RT_DRUID_CMD) --inputFile $(ERIKA_OS_OIL_FILE) --outputDir $(RT_DRUID_TEMP_DIR)
	@sed $(SED_CMD_OPTN_FOR_RT_DRUID) $(RT_DRUID_TEMP_DIR)/makefile >$(RT_DRUID_OUT_DIR)/cfg/cfg.mk
	@echo 'EE_SRCS= 0_Src/3_OS/config/src/eecfg.c' >>$(RT_DRUID_OUT_DIR)/cfg/cfg.mk
	@echo 'EE_INCPATH= -I./0_Src/3_OS/config/inc' >>$(RT_DRUID_OUT_DIR)/cfg/cfg.mk
	@echo '' >>$(RT_DRUID_OUT_DIR)/cfg/cfg.mk
	@cp $(RT_DRUID_TEMP_DIR)/eecfg.h $(RT_DRUID_OUT_DIR)/inc
	@cp $(RT_DRUID_TEMP_DIR)/eecfg.c $(RT_DRUID_OUT_DIR)/src
	@-rm -rf $(RT_DRUID_TEMP_DIR)
	@echo ..done

