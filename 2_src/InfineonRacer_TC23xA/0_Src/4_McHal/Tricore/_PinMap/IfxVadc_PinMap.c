/**
 * \file IfxVadc_PinMap.c
 * \brief VADC I/O map
 * \ingroup IfxLld_Vadc
 *
 * \version iLLD_1_0_0_11_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */

#include "IfxVadc_PinMap.h"

IfxVadc_Emux_Out IfxVadc_EMUX00_P02_6_OUT = {&MODULE_VADC, {&MODULE_P02, 6}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX00_P33_3_OUT = {&MODULE_VADC, {&MODULE_P33, 3}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX01_P02_7_OUT = {&MODULE_VADC, {&MODULE_P02, 7}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX01_P33_2_OUT = {&MODULE_VADC, {&MODULE_P33, 2}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX02_P02_8_OUT = {&MODULE_VADC, {&MODULE_P02, 8}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX02_P33_1_OUT = {&MODULE_VADC, {&MODULE_P33, 1}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX10_P00_6_OUT = {&MODULE_VADC, {&MODULE_P00, 6}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX10_P33_6_OUT = {&MODULE_VADC, {&MODULE_P33, 6}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX11_P00_7_OUT = {&MODULE_VADC, {&MODULE_P00, 7}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX11_P33_5_OUT = {&MODULE_VADC, {&MODULE_P33, 5}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX12_P00_8_OUT = {&MODULE_VADC, {&MODULE_P00, 8}, IfxPort_OutputIdx_alt5};
IfxVadc_Emux_Out IfxVadc_EMUX12_P33_4_OUT = {&MODULE_VADC, {&MODULE_P33, 4}, IfxPort_OutputIdx_alt5};
IfxVadc_GxBfl_Out IfxVadc_G0BFL0_P33_4_OUT = {&MODULE_VADC, IfxVadc_GroupId_0, {&MODULE_P33, 4}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G0BFL1_P33_5_OUT = {&MODULE_VADC, IfxVadc_GroupId_0, {&MODULE_P33, 5}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G0BFL2_P33_6_OUT = {&MODULE_VADC, IfxVadc_GroupId_0, {&MODULE_P33, 6}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G0BFL3_P33_7_OUT = {&MODULE_VADC, IfxVadc_GroupId_0, {&MODULE_P33, 7}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P00_4_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P00, 4}, IfxPort_OutputIdx_alt5};
IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P33_0_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P33, 0}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P00_5_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P00, 5}, IfxPort_OutputIdx_alt5};
IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P33_1_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P33, 1}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G1BFL2_P00_6_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P00, 6}, IfxPort_OutputIdx_alt3};
IfxVadc_GxBfl_Out IfxVadc_G1BFL2_P33_2_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P33, 2}, IfxPort_OutputIdx_alt6};
IfxVadc_GxBfl_Out IfxVadc_G1BFL3_P00_7_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P00, 7}, IfxPort_OutputIdx_alt3};
IfxVadc_GxBfl_Out IfxVadc_G1BFL3_P33_3_OUT = {&MODULE_VADC, IfxVadc_GroupId_1, {&MODULE_P33, 3}, IfxPort_OutputIdx_alt6};


const IfxVadc_Emux_Out *IfxVadc_Emux_Out_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_EMUX_OUT_NUM_ITEMS] = {
    {
        &IfxVadc_EMUX00_P02_6_OUT,
        &IfxVadc_EMUX01_P02_7_OUT,
        &IfxVadc_EMUX02_P02_8_OUT,
        &IfxVadc_EMUX10_P00_6_OUT,
        &IfxVadc_EMUX11_P00_7_OUT,
        &IfxVadc_EMUX12_P00_8_OUT,
        &IfxVadc_EMUX02_P33_1_OUT,
        &IfxVadc_EMUX01_P33_2_OUT,
        &IfxVadc_EMUX00_P33_3_OUT,
        &IfxVadc_EMUX12_P33_4_OUT,
        &IfxVadc_EMUX11_P33_5_OUT,
        &IfxVadc_EMUX10_P33_6_OUT
    }
};

const IfxVadc_GxBfl_Out *IfxVadc_GxBfl_Out_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_NUM_GROUPS][IFXVADC_PINMAP_GXBFL_OUT_NUM_ITEMS] = {
    {
        {
            &IfxVadc_G0BFL0_P33_4_OUT,
            &IfxVadc_G0BFL1_P33_5_OUT,
            &IfxVadc_G0BFL2_P33_6_OUT,
            &IfxVadc_G0BFL3_P33_7_OUT,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR,
            NULL_PTR
        },
        {
            &IfxVadc_G1BFL0_P00_4_OUT,
            &IfxVadc_G1BFL1_P00_5_OUT,
            &IfxVadc_G1BFL2_P00_6_OUT,
            &IfxVadc_G1BFL3_P00_7_OUT,
            &IfxVadc_G1BFL0_P33_0_OUT,
            &IfxVadc_G1BFL1_P33_1_OUT,
            &IfxVadc_G1BFL2_P33_2_OUT,
            &IfxVadc_G1BFL3_P33_3_OUT
        }
    }
};
