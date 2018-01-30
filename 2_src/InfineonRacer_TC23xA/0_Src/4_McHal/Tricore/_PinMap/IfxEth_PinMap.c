/**
 * \file IfxEth_PinMap.c
 * \brief ETH I/O map
 * \ingroup IfxLld_Eth
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

#include "IfxEth_PinMap.h"

IfxEth_Col_In IfxEth_COL_P10_2_IN = {&MODULE_ETH, {&MODULE_P10, 2}, Ifx_RxSel_b};
IfxEth_Crs_In IfxEth_CRSB_P11_11_IN = {&MODULE_ETH, {&MODULE_P11,11}, Ifx_RxSel_b};
IfxEth_Crs_In IfxEth_CRSC_P10_1_IN = {&MODULE_ETH, {&MODULE_P10, 1}, Ifx_RxSel_c};
IfxEth_Crsdv_In IfxEth_CRSDVA_P11_11_IN = {&MODULE_ETH, {&MODULE_P11,11}, Ifx_RxSel_a};
IfxEth_Mdc_Out IfxEth_MDC_P02_8_OUT = {&MODULE_ETH, {&MODULE_P02, 8}, IfxPort_OutputIdx_alt6};
IfxEth_Mdc_Out IfxEth_MDC_P21_2_OUT = {&MODULE_ETH, {&MODULE_P21, 2}, IfxPort_OutputIdx_alt5};
IfxEth_Mdio_InOut IfxEth_MDIO_P00_0_INOUT = {&MODULE_ETH, {&MODULE_P00, 0}, Ifx_RxSel_b, IfxPort_OutputIdx_alt1};
IfxEth_Mdio_InOut IfxEth_MDIO_P21_3_INOUT = {&MODULE_ETH, {&MODULE_P21, 3}, Ifx_RxSel_b, IfxPort_OutputIdx_alt1};
IfxEth_Refclk_In IfxEth_REFCLK_P11_12_IN = {&MODULE_ETH, {&MODULE_P11,12}, Ifx_RxSel_a};
IfxEth_Rxclk_In IfxEth_RXCLKA_P11_12_IN = {&MODULE_ETH, {&MODULE_P11,12}, Ifx_RxSel_a};
IfxEth_Rxd_In IfxEth_RXD0A_P11_10_IN = {&MODULE_ETH, {&MODULE_P11,10}, Ifx_RxSel_a};
IfxEth_Rxd_In IfxEth_RXD1A_P11_9_IN = {&MODULE_ETH, {&MODULE_P11, 9}, Ifx_RxSel_a};
IfxEth_Rxd_In IfxEth_RXD2A_P11_8_IN = {&MODULE_ETH, {&MODULE_P11, 8}, Ifx_RxSel_a};
IfxEth_Rxd_In IfxEth_RXD3B_P10_5_IN = {&MODULE_ETH, {&MODULE_P10, 5}, Ifx_RxSel_a};
IfxEth_Rxdv_In IfxEth_RXDVA_P11_11_IN = {&MODULE_ETH, {&MODULE_P11,11}, Ifx_RxSel_a};
IfxEth_Rxer_In IfxEth_RXERB_P21_7_IN = {&MODULE_ETH, {&MODULE_P21, 7}, Ifx_RxSel_b};
IfxEth_Rxer_In IfxEth_RXERC_P10_3_IN = {&MODULE_ETH, {&MODULE_P10, 3}, Ifx_RxSel_c};
IfxEth_Txclk_In IfxEth_TXCLKB_P11_12_IN = {&MODULE_ETH, {&MODULE_P11,12}, Ifx_RxSel_b};
IfxEth_Txclk_In IfxEth_TXCLKC_P13_1_IN = {&MODULE_ETH, {&MODULE_P13, 1}, Ifx_RxSel_c};
IfxEth_Txd_Out IfxEth_TXD0_P11_3_OUT = {&MODULE_ETH, {&MODULE_P11, 3}, IfxPort_OutputIdx_alt6};
IfxEth_Txd_Out IfxEth_TXD1_P11_2_OUT = {&MODULE_ETH, {&MODULE_P11, 2}, IfxPort_OutputIdx_alt6};
IfxEth_Txd_Out IfxEth_TXD2_P13_3_OUT = {&MODULE_ETH, {&MODULE_P13, 3}, IfxPort_OutputIdx_alt6};
IfxEth_Txd_Out IfxEth_TXD3_P13_2_OUT = {&MODULE_ETH, {&MODULE_P13, 2}, IfxPort_OutputIdx_alt6};
IfxEth_Txen_Out IfxEth_TXEN_P11_6_OUT = {&MODULE_ETH, {&MODULE_P11, 6}, IfxPort_OutputIdx_alt6};
IfxEth_Txer_Out IfxEth_TXER_P13_0_OUT = {&MODULE_ETH, {&MODULE_P13, 0}, IfxPort_OutputIdx_alt6};


const IfxEth_Col_In *IfxEth_Col_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_COL_IN_NUM_ITEMS] = {
    {
        NULL_PTR,
        &IfxEth_COL_P10_2_IN
    }
};

const IfxEth_Crs_In *IfxEth_Crs_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_CRS_IN_NUM_ITEMS] = {
    {
        NULL_PTR,
        &IfxEth_CRSB_P11_11_IN,
        &IfxEth_CRSC_P10_1_IN
    }
};

const IfxEth_Crsdv_In *IfxEth_Crsdv_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_CRSDV_IN_NUM_ITEMS] = {
    {
        &IfxEth_CRSDVA_P11_11_IN
    }
};

const IfxEth_Mdc_Out *IfxEth_Mdc_Out_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_MDC_OUT_NUM_ITEMS] = {
    {
        &IfxEth_MDC_P02_8_OUT,
        &IfxEth_MDC_P21_2_OUT
    }
};

const IfxEth_Mdio_InOut *IfxEth_Mdio_InOut_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_MDIO_INOUT_NUM_ITEMS] = {
    {
        NULL_PTR,
        &IfxEth_MDIO_P00_0_INOUT
    }
};

const IfxEth_Refclk_In *IfxEth_Refclk_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_REFCLK_IN_NUM_ITEMS] = {
    {
        &IfxEth_REFCLK_P11_12_IN
    }
};

const IfxEth_Rxclk_In *IfxEth_Rxclk_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_RXCLK_IN_NUM_ITEMS] = {
    {
        &IfxEth_RXCLKA_P11_12_IN
    }
};

const IfxEth_Rxd_In *IfxEth_Rxd_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_RXD_IN_NUM_ITEMS] = {
    {
        &IfxEth_RXD1A_P11_9_IN
    }
};

const IfxEth_Rxdv_In *IfxEth_Rxdv_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_RXDV_IN_NUM_ITEMS] = {
    {
        &IfxEth_RXDVA_P11_11_IN
    }
};

const IfxEth_Rxer_In *IfxEth_Rxer_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_RXER_IN_NUM_ITEMS] = {
    {
        NULL_PTR,
        &IfxEth_RXERB_P21_7_IN,
        &IfxEth_RXERC_P10_3_IN
    }
};

const IfxEth_Txclk_In *IfxEth_Txclk_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_TXCLK_IN_NUM_ITEMS] = {
    {
        NULL_PTR,
        &IfxEth_TXCLKB_P11_12_IN,
        &IfxEth_TXCLKC_P13_1_IN
    }
};

const IfxEth_Txd_Out *IfxEth_Txd_Out_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_TXD_OUT_NUM_ITEMS] = {
    {
        &IfxEth_TXD3_P13_2_OUT,
        &IfxEth_TXD2_P13_3_OUT,
        &IfxEth_TXD1_P11_2_OUT,
        &IfxEth_TXD0_P11_3_OUT
    }
};

const IfxEth_Txen_Out *IfxEth_Txen_Out_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_TXEN_OUT_NUM_ITEMS] = {
    {
        &IfxEth_TXEN_P11_6_OUT
    }
};

const IfxEth_Txer_Out *IfxEth_Txer_Out_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_TXER_OUT_NUM_ITEMS] = {
    {
        &IfxEth_TXER_P13_0_OUT
    }
};
