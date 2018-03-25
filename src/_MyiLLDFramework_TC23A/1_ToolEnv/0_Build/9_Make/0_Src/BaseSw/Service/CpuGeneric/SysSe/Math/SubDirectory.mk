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
# Subdirectory make file for 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math
# !! Generated make file, modifications could be overwritten !!
#------------------------------------------------------------------------------


# Make-Rules:
# Make-rules for architecture: Tricore

#Make-rule to build file: Ifx_AngleTrkF32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_AngleTrkF32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_AngleTrkF32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_Cf32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Cf32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Cf32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Cf32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Cf32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_Cf32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_Crc.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Crc.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Crc.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Crc.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_Crc.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_Crc.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_FftF32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_FftF32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_FftF32_BitReverseTable.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32_BitReverseTable.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32_BitReverseTable.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32_BitReverseTable.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32_BitReverseTable.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_FftF32_BitReverseTable.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_FftF32_TwiddleTable.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32_TwiddleTable.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32_TwiddleTable.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32_TwiddleTable.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_FftF32_TwiddleTable.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_FftF32_TwiddleTable.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_IntegralF32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_IntegralF32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_IntegralF32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_IntegralF32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_IntegralF32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_IntegralF32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_LowPassPt1F32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_LowPassPt1F32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_LutAtan2F32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_LutAtan2F32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_LutAtan2F32_Table.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32_Table.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32_Table.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32_Table.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutAtan2F32_Table.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_LutAtan2F32_Table.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_LutLinearF32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutLinearF32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutLinearF32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutLinearF32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutLinearF32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_LutLinearF32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_LutLSincosF32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutLSincosF32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutLSincosF32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutLSincosF32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutLSincosF32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_LutLSincosF32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_LutSincosF32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutSincosF32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutSincosF32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutSincosF32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutSincosF32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_LutSincosF32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_LutSincosF32_Table.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutSincosF32_Table.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutSincosF32_Table.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutSincosF32_Table.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LutSincosF32_Table.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_LutSincosF32_Table.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_RampF32.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_RampF32.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_RampF32.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_RampF32.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_RampF32.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_RampF32.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_WndF32_BlackmanHarrisTable.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_WndF32_BlackmanHarrisTable.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_WndF32_BlackmanHarrisTable.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_WndF32_BlackmanHarrisTable.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_WndF32_BlackmanHarrisTable.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_WndF32_BlackmanHarrisTable.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD

#Make-rule to build file: Ifx_WndF32_HannTable.c
B_GEN_DEP_FILES+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_WndF32_HannTable.d
B_GEN_OBJS_TRICORE_TC+= 2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_WndF32_HannTable.o

2_Out/Tricore_Gnuc/Gnuc_Files/0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_WndF32_HannTable.o: 0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_WndF32_HannTable.c $(B_GEN_CONFIG_TRICORE_GNUC)
	@mkdir -p $(@D)
	@-rm -f $(B_GEN_ELF_TRICORE_TC) $(B_GEN_HEX_TRICORE_TC)
	@echo 'Building source file Ifx_WndF32_HannTable.c for Tricore'
	$(B_GEN_TRICORE_GNUC_CC) $(B_GNUC_TRICORE_CC_OPTIONS) @$(B_GEN_INC_LISTFILE_TRICORE) $(B_GEN_EXT_INCLUDE_PATHS) -c $< -o $@ -save-temps=obj -MMD
