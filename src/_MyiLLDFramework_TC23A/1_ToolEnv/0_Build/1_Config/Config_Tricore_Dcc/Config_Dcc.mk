###############################################################################
#                                                                             #
#       Copyright (C) 2017 Infineon Technologies AG. All rights reserved.     #
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

B_DCC_TRICORE_PATH= C:\Tools\Compilers\Windriver\diab\5.9.6.3\WIN32

B_DCC_TRICORE_CC_OPTIONS= -tTC161NF:windiss -O -XO -Xsection-split=3 \
                          -Xkeep-assembly-file=2 -g3 -Xinline=0 \
                          -Xdialect-c99 -ei5388,2273,5387

B_DCC_TRICORE_ASM_OPTIONS= $(B_DCC_TRICORE_CC_OPTIONS)

B_DCC_TRICORE_LD_OPTIONS= -tTC161NF:windiss -m6

#Include path for library directories. Add each path with following format as shown below.
#Each path prefixed with -L and separated by a space.
#B_DCC_TRICORE_LIB_INC=-L<path>[ -L<path>][..]
B_DCC_TRICORE_LIB_DIR=

B_DCC_TRICORE_LIBS= -lc