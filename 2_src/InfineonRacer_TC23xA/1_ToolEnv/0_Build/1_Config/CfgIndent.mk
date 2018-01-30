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

#Start################ Configuration for Indent tool ####################

#configure the path where indent.exe is available
INDENT_TOOL_PATH:=#not required as it is available with bin dir

#Configure the exclude rule for Indent tool
#eg: INDENT_EXCLUDE_CFG= OS will exclude all the folders below OS from AStyling
#eg: INDENT_EXCLUDE_CFG= OS<space>Ifx*.* will exclude all the folders below OS 
#    and all files starting with "Ifx" in project from Indenting
INDENT_EXCLUDE_CFG=3_OS Platform*.* common.h _Reg

#Options to control Indent tool
INDENT_OPTIONS:=-gnu -npsl -i4 -ts4 -fc1 -nut -sc -bap -cli0 -bli0 -di1 -bls -blf --line-length120

#End################# Configuration for Indent tool #####################	