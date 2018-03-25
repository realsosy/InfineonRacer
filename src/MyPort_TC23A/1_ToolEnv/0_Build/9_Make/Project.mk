# -----------------------------------------------------------------------------
#
# Copyright (C) 2015-2017 Infineon Technologies AG. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# - Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the following disclaimer.
# - Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation.
#   and/or other materials provided with the distribution.
# - Neither the name of the copyright holders nor the names of its
#   contributors may be used to endorse or promote products derived from this
#   software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
# TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# To improve the quality of the software, users are encouraged to share
# modifications, enhancements or bug fixes with Infineon Technologies AG
# (support@infineon.com).
# 
# -----------------------------------------------------------------------------
# Subdirectory make file for Project
# !! Generated make file, modifications could be overwritten !!
#------------------------------------------------------------------------------

SHELL = /bin/sh

include $(BINUTILS_PATH)/../Bifaces/Make/Bifaces.mk           # Get the common macros and variables
include 1_ToolEnv/0_Build/1_Config/Config.mk                  # Configuration make file for the project
include 1_ToolEnv/0_Build/9_Make/Defines.mk     # To get required make variables

# Include sub folder make files
include 1_ToolEnv/0_Build/9_Make/0_Src/SubDirectory.mk

.PHONY: all clean

all: $(B_BUILD_TARGETS)

# Make-Rules:

# Make-rules for architecture: Tricore -----------------------------------------

# Make-rules for target: Tc ----------------------------------------------------

# Make-rule to build: elf
$(B_GEN_ELF_TRICORE_TC): $(B_GEN_OBJS_TRICORE_TC) $(B_GEN_LCF_FILE_TRICORE_TC) $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $@
	@echo 'Building output $(B_GEN_ELF_TRICORE_TC)'
	$(B_GEN_TRICORE_GNUC_LD) $(B_GNUC_TRICORE_LD_OPTIONS) -Wl,-T $(B_GEN_LCF_FILE_TRICORE_TC) -Wl,-Map=$(@:.elf=.map) -Wl,--extmap=a @$(B_GEN_OBJLIST_FILE_TRICORE_TC)  $(B_GNUC_TRICORE_LIB_INC) $(B_GNUC_TRICORE_LIBS) -o $@

# Make-rule to build: hex
$(B_GEN_HEX_TRICORE_TC): $(B_GEN_ELF_TRICORE_TC) $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $@
	@echo 'Building output $(B_GEN_HEX_TRICORE_TC)'
	$(B_GEN_TRICORE_GNUC_HEX) $< -O ihex $@

# Make-Rule for clean
clean:
	@-rm -rf 2_Out/Tricore_Gnuc 

#include dependency make files
-include $(B_GEN_DEP_FILES)
