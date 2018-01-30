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

#Start################ Configuration for Doxygen #######################

#configure the path where doxygen application is available
DOXYGEN_TOOL_PATH:=$(BINUTILS_PATH)/../doxygen/bin
#configure the path where dot tool application is available
DOTTOOL_TOOL_PATH:=$(BINUTILS_PATH)/../Graphviz2_22/bin
#configure the path where ms help compiler is available
#Note: this doesnot work if the path is //servername/..
MSHELP_COMPILER_PATH:=$(BINUTILS_PATH)/../HTMLHelpWorkshop


#Configure the exclude rule for Doxygen tool
#eg1: DOXYGEN_EXCLUDE_CFG= OS will exclude all the folders below OS from generating document
#eg2: DOXYGEN_EXCLUDE_CFG= OS<space>Ifx*.* will exclude all the folders below OS 
#    and all files starting with "Ifx" in project from generating document

DOXYGEN_EXCLUDE_CFG= 3_OS _Reg

#keep the HTML files after compilation as .chm
DOXYGEN_KEEP_HTML:=no
#DOXYGEN_KEEP_HTML:=yes

#End################## Configuration for Doxygen #######################	