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

# Proj dir name... caution !!!! all make files shall be always called under the project directory !!!!
PROJ_DIR=$(CURDIR)

#Configure the Core Type. This name shall be the directory name inside folders corresponding layer names
#And the names are case sensitive
CORETYP_MAIN:=Tricore
CORETYP_SECOND:=
CORETYP_THIRD:=
CORETYP_SPECIAL:=Mcs

#Configure the tool chain for each core type
#TOOL_CHAIN_MAIN:=Tasking
TOOL_CHAIN_MAIN:=Gnuc
#TOOL_CHAIN_MAIN:=Dcc

#Configure the rule for using the selected files for compilation or discarding some of the files
#eg1: USE_FILE_PATTERN= *OS/* will include only the folders below OS to be used for building the project
#eg2: DISCARD_FILE_PATTERN= *OS/* will exclude all the folders below OS 
# Note: When USE_FILE_PATTERN is used only the files matching the pattern is used all others will be discarded
# Note: When both USE_FILE_PATTERN and DISCARD_FILE_PATTERN are used DISCARD_FILE_PATTERN has priority
# Note: If multiple patterns are to be defined in USE_FILE_PATTERN and DISCARD_FILE_PATTERN separate them with comma (,)
USE_FILE_PATTERN=
DISCARD_FILE_PATTERN=

#Name of the TOOL_CHAIN_SECOND is NOT FLEXIBLE, is always fixed to ToolChain_SecCore
#The file names CfgToolChain_SecCore.mk and Lcf_ToolChain_SecCore.lsl can not be changed
#User need to update the content depending on the Tool chain specific requirement 

TOOL_CHAIN_SPECIAL:=$(TOOL_CHAIN_MAIN)

# External source folders ##################
# External Source folders could be added here either as, relative path or, absolute path
# if there are multiple such folders, separate them with comma (,)
EXTERNAL_SRC_FOLDERS:= 

#Display the build commands
DISPLAY_BUILD_CMD:=No
#DISPLAY_BUILD_CMD:=yes

#Enable multiprocess
ENABLE_MULTI_PROCESS:=no
#ENABLE_MULTI_PROCESS:=yes

#Create Library output without linking
CREATE_LIB_NO_EXE:=no            #Create only executables
#CREATE_LIB_NO_EXE:=yes          #Create only library

#Create additional output file formats
#CREATE_EXE_HEX_FILES:=yes        #Create executable files in intel hex formats
#CREATE_EXE_SREC_FILES:=yes       #Create executable files in motorola S-record formats

include 1_ToolEnv/0_Build/0_Utilities/GenericDefs.mk
