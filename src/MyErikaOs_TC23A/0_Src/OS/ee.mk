###############################################################################
#                                                                             #
#        Copyright © 2011 Infineon Technologies AG. All rights reserved.      #
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
# Subdir make file for ERIKA OS
# This make file is made specifically for ERIKA 2.1.0 !!!!
###############################################################################

# Function to test EEOPT, useful in conditionals and in or/and expressions
# Examples:
#   ifeq ($(call iseeopt,__MULTI__), yes)
#   ifeq ($(and $(call iseeopt,__MULTI__), $(call iseeopt,__IRQ_STACK_NEEDED__)), yes)
#   ifneq ($(call iseeopt,__MULTI__), yes)
iseeopt = $(if $(filter $1,$(EEOPT)),yes,)

EE_PKG= 0_Src/OS

EE_IPATH= -I./0_Src/OS -I./0_Src/OS/config/inc -I./0_Src/BaseSw/Service/Tricore/Compilers

include 0_Src/OS/config/cfg/cfg.mk
include 0_Src/OS/kernel/oo/cfg/cfg.mk 0_Src/OS/cpu/common/cfg/cfg.mk 0_Src/OS/cpu/tricore/cfg/cfg.mk

B_GEN_OUT_FOLDER= $(B_GEN_OUT_FOLDER_TRICORE)/$(B_GEN_TOOLCHAIN_PRIMARY_TRICORE)_Files

B_GEN_EXT_INCLUDE_PATHS+= -I0_Src/OS -I0_Src/OS/config/inc

EE_OBJS:= $(EE_SRCS:%.c=$(B_GEN_OUT_FOLDER)/%.o)
B_DEP_FILES_EE= $(EE_SRCS:%.c=$(B_GEN_OUT_FOLDER)/%.d)
B_GEN_CUSTOBJS_TRICORE_TC+=$(EE_OBJS)
B_GEN_CUSTOBJS_TRICORE_TC0+=$(EE_OBJS)
-include $(B_DEP_FILES_EE)

$(B_GEN_OUT_FOLDER)/%.o:%.c
	@mkdir -p $(@D)				
	@echo 'Building source file $(<F) for Tricore'
ifeq ($(strip $(B_GEN_TOOLCHAIN_PRIMARY_TRICORE)),Dcc)								
	$(B_GEN_TRICORE_DCC_CC) $(B_DCC_TRICORE_CC_OPTIONS) $(EE_IPATH) -D__TC161__ -c $< -o $@ -Xmake-dependency=4 -Xmake-dependency-savefile=$(@:.o=.d)
endif
ifeq ($(strip $(B_GEN_TOOLCHAIN_PRIMARY_TRICORE)),Gnuc)
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) -D__TC161__ $(EE_IPATH) -c $< -o $@ -save-temps=obj -MMD
endif
ifeq ($(strip $(B_GEN_TOOLCHAIN_PRIMARY_TRICORE)),Tasking)
#	@echo 1: $@, 2: $(@:.o=.src)
	$(B_GEN_TRICORE_TASKING_CC) $(B_TASKING_TRICORE_CC_OPTIONS) -D__TC161__ $(EE_IPATH) $< -o $(@:.o=.src)	--dep-file=$(B_GEN_OUT_FOLDER)/$*.dep
	$(B_GEN_TRICORE_TASKING_AS1) $(@:.o=.src) -o $@
	@sed -e 's/\($(subst .,\.,$(@F)) *:\)/$(subst /,\/,$(@D))\/\1/g' -e 's/\\/\//g' -e '/\"/d' $(@:.o=.dep) >$(@:.o=.d)
	@rm -f $(@:.o=.dep)
endif	
