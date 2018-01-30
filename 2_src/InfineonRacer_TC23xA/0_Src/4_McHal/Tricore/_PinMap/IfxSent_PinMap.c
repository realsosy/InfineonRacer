/**
 * \file IfxSent_PinMap.c
 * \brief SENT I/O map
 * \ingroup IfxLld_Sent
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

#include "IfxSent_PinMap.h"

IfxSent_Sent_In IfxSent_SENT0A_P40_11_IN = {&MODULE_SENT, IfxSent_ChannelId_0, {&MODULE_P40,11}, Ifx_RxSel_a};
IfxSent_Sent_In IfxSent_SENT0B_P00_1_IN = {&MODULE_SENT, IfxSent_ChannelId_0, {&MODULE_P00, 1}, Ifx_RxSel_b};
IfxSent_Sent_In IfxSent_SENT0C_P02_8_IN = {&MODULE_SENT, IfxSent_ChannelId_0, {&MODULE_P02, 8}, Ifx_RxSel_c};
IfxSent_Sent_In IfxSent_SENT1A_P41_0_IN = {&MODULE_SENT, IfxSent_ChannelId_1, {&MODULE_P41, 0}, Ifx_RxSel_a};
IfxSent_Sent_In IfxSent_SENT1B_P00_2_IN = {&MODULE_SENT, IfxSent_ChannelId_1, {&MODULE_P00, 2}, Ifx_RxSel_b};
IfxSent_Sent_In IfxSent_SENT1C_P02_7_IN = {&MODULE_SENT, IfxSent_ChannelId_1, {&MODULE_P02, 7}, Ifx_RxSel_c};
IfxSent_Sent_In IfxSent_SENT2A_P41_2_IN = {&MODULE_SENT, IfxSent_ChannelId_2, {&MODULE_P41, 2}, Ifx_RxSel_a};
IfxSent_Sent_In IfxSent_SENT2B_P00_3_IN = {&MODULE_SENT, IfxSent_ChannelId_2, {&MODULE_P00, 3}, Ifx_RxSel_b};
IfxSent_Sent_In IfxSent_SENT2C_P02_6_IN = {&MODULE_SENT, IfxSent_ChannelId_2, {&MODULE_P02, 6}, Ifx_RxSel_c};
IfxSent_Sent_In IfxSent_SENT3A_P41_3_IN = {&MODULE_SENT, IfxSent_ChannelId_3, {&MODULE_P41, 3}, Ifx_RxSel_a};
IfxSent_Sent_In IfxSent_SENT3B_P00_4_IN = {&MODULE_SENT, IfxSent_ChannelId_3, {&MODULE_P00, 4}, Ifx_RxSel_b};
IfxSent_Sent_In IfxSent_SENT3C_P02_5_IN = {&MODULE_SENT, IfxSent_ChannelId_3, {&MODULE_P02, 5}, Ifx_RxSel_c};
IfxSent_Spc_Out IfxSent_SPC0_P00_1_OUT = {&MODULE_SENT, IfxSent_ChannelId_0, {&MODULE_P00, 1}, IfxPort_OutputIdx_alt6};
IfxSent_Spc_Out IfxSent_SPC1_P02_7_OUT = {&MODULE_SENT, IfxSent_ChannelId_1, {&MODULE_P02, 7}, IfxPort_OutputIdx_alt6};
IfxSent_Spc_Out IfxSent_SPC2_P00_3_OUT = {&MODULE_SENT, IfxSent_ChannelId_2, {&MODULE_P00, 3}, IfxPort_OutputIdx_alt6};
IfxSent_Spc_Out IfxSent_SPC3_P00_4_OUT = {&MODULE_SENT, IfxSent_ChannelId_3, {&MODULE_P00, 4}, IfxPort_OutputIdx_alt6};


const IfxSent_Sent_In *IfxSent_Sent_In_pinTable[IFXSENT_PINMAP_NUM_MODULES][IFXSENT_PINMAP_NUM_CHANNELS][IFXSENT_PINMAP_SENT_IN_NUM_ITEMS] = {
    {
        {
            &IfxSent_SENT0A_P40_11_IN,
            &IfxSent_SENT0B_P00_1_IN,
            &IfxSent_SENT0C_P02_8_IN
        },
        {
            &IfxSent_SENT1A_P41_0_IN,
            &IfxSent_SENT1B_P00_2_IN,
            &IfxSent_SENT1C_P02_7_IN
        },
        {
            &IfxSent_SENT2A_P41_2_IN,
            &IfxSent_SENT2B_P00_3_IN,
            &IfxSent_SENT2C_P02_6_IN
        },
        {
            &IfxSent_SENT3A_P41_3_IN,
            &IfxSent_SENT3B_P00_4_IN,
            &IfxSent_SENT3C_P02_5_IN
        }
    }
};

const IfxSent_Spc_Out *IfxSent_Spc_Out_pinTable[IFXSENT_PINMAP_NUM_MODULES][IFXSENT_PINMAP_NUM_CHANNELS][IFXSENT_PINMAP_SPC_OUT_NUM_ITEMS] = {
    {
        {
            &IfxSent_SPC0_P00_1_OUT
        },
        {
            &IfxSent_SPC1_P02_7_OUT
        },
        {
            &IfxSent_SPC2_P00_3_OUT
        },
        {
            &IfxSent_SPC3_P00_4_OUT
        }
    }
};
