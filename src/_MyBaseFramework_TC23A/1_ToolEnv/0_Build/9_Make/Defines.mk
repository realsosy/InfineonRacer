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
# Subdirectory make file for Defines
# !! Generated make file, modifications could be overwritten !!
#------------------------------------------------------------------------------

# ---------------------- Make variables for TOOL COMMANDS ---------------------

# Architecture: Tricore
# Toolchain: Gnuc -------------------------------------------------------------
# Tool: Cc
B_GEN_TRICORE_GNUC_CC:= @"$(B_GNUC_TRICORE_PATH)/bin"/tricore-gcc
# Tool: Ld
B_GEN_TRICORE_GNUC_LD:= @"$(B_GNUC_TRICORE_PATH)/bin"/tricore-gcc
# Tool: Hex
B_GEN_TRICORE_GNUC_HEX:= @"$(B_GNUC_TRICORE_PATH)/bin"/tricore-objcopy

# -------------- Make variables for TOOLCHAIN CONFIGURATION FILES -------------

# Architecture: Tricore
# Toolchain: Gnuc -------------------------------------------------------------
B_GEN_CONFIG_TRICORE_GNUC:= 1_ToolEnv/0_Build/1_Config/Config.mk \
   $(B_CONFIG_FILES_FOLDER)/Config_Tricore_Gnuc/Config_Gnuc.mk

# ------------------- Make variables for TARGET OUTPUT FILES ------------------

B_BUILD_TARGETS:=	# Initialized to empty

# Architecture: Tricore
# Target: Tc ------------------------------------------------------------------
# target output: elf: $(PROJ_NAME)_tc.elf
B_GEN_ELF_TRICORE_TC:= 2_Out/Tricore_Gnuc/$(PROJ_NAME)_tc.elf
# target output: hex: $(PROJ_NAME)_tc.hex
B_GEN_HEX_TRICORE_TC:= 2_Out/Tricore_Gnuc/$(PROJ_NAME)_tc.hex
# Target output collection:
B_BUILD_TARGETS+=  $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)

# ---------------------- Make variables for OBJECT FILES ----------------------

# Architecture: Tricore
# Target: Tc ------------------------------------------------------------------
B_GEN_OBJS_TRICORE_TC:=  # Initialized to empty

# ------------------ Make variables for OBJECTS LIST FILES --------------------

# Architecture: Tricore
# Target: Tc ------------------------------------------------------------------
B_GEN_OBJLIST_FILE_TRICORE_TC:= 1_ToolEnv/0_Build/9_Make/Tricore_Tc_ObjList.opt

# ---------------- Make variables for INCLUDE PATHS LIST FILES ----------------
# Architecture: Tricore
B_GEN_INC_LISTFILE_TRICORE:= 1_ToolEnv/0_Build/9_Make/Tricore_IncludePathList.opt

# ----------------- Make variables for EXTERNAL INCLUDE PATHS -----------------
B_GEN_EXT_INCLUDE_PATHS= # Initialized to empty

# ------------------ Make variables for LINKER COMMAND FILES ------------------

# Architecture: Tricore
# Target: Tc ------------------------------------------------------------------
B_GEN_LCF_FILE_TRICORE_TC:= $(B_CONFIG_FILES_FOLDER)/Config_Tricore_Gnuc/Lcf_Gnuc_Tricore_Tc.lsl

# ------------------------ Make variables for extensions ----------------------
# Architecture Names:
B_GEN_ARCHITECTURE_PRIMARY= Tricore
B_GEN_ARCHITECTURE0= Tricore

# Target Names:
# Architecture: Tricore -------------------------------------------------------
B_GEN_TARGET_PRIMARY_TRICORE:= Tc
B_GEN_TARGET0_TRICORE:= Tc

# Toolchain Names:
# Architecture: Tricore -------------------------------------------------------
B_GEN_TOOLCHAIN_PRIMARY_TRICORE:= Gnuc
B_GEN_TOOLCHAIN0_TRICORE:= Gnuc

# Output Path:
# Architecture: Tricore -------------------------------------------------------
B_GEN_OUT_FOLDER_TRICORE= 2_Out/Tricore_Gnuc

# ------------------ Make variable for BUILD DEPENDENCY FILE ------------------
B_GEN_DEP_FILES:=  # Initialized to empty