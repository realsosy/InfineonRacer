/**
 * \file IfxEth_PinMap.h
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
 * \defgroup IfxLld_Eth_pinmap ETH Pin Mapping
 * \ingroup IfxLld_Eth
 */

#ifndef IFXETH_PINMAP_H
#define IFXETH_PINMAP_H

#include <_Reg/IfxEth_reg.h>
#include <_Impl/IfxEth_cfg.h>
#include <Port/Std/IfxPort.h>

/** \addtogroup IfxLld_Eth_pinmap
 * \{ */

/** \brief CRS pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEth_Crs_In;

/** \brief CRSDV pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEth_Crsdv_In;

/** \brief RXDV pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEth_Rxdv_In;

/** \brief REFCLK pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEth_Refclk_In;

/** \brief RXCLK pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEth_Rxclk_In;

/** \brief TXCLK pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEth_Txclk_In;

/** \brief RXD pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEth_Rxd_In;

/** \brief COL pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEth_Col_In;

/** \brief MDC pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxEth_Mdc_Out;

/** \brief MDIO pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         inSelect; /**< \brief Input multiplexer value */
    IfxPort_OutputIdx outSelect;/**< \brief Port control code */
} IfxEth_Mdio_InOut;

/** \brief TXD pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxEth_Txd_Out;

/** \brief TXEN pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxEth_Txen_Out;

/** \brief TXER pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    IfxPort_OutputIdx select;   /**< \brief Port control code */
} IfxEth_Txer_Out;

/** \brief RXER pin mapping structure */
typedef const struct
{
    Ifx_ETH*          module;   /**< \brief Base address */
    IfxPort_Pin       pin;      /**< \brief Port pin */
    Ifx_RxSel         select;   /**< \brief Input multiplexer value */
} IfxEth_Rxer_In;

IFX_EXTERN IfxEth_Col_In IfxEth_COL_P10_2_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Crs_In IfxEth_CRSB_P11_11_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Crs_In IfxEth_CRSC_P10_1_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Crsdv_In IfxEth_CRSDVA_P11_11_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Mdc_Out IfxEth_MDC_P02_8_OUT;  /**< \brief Ethernet output */
IFX_EXTERN IfxEth_Mdc_Out IfxEth_MDC_P21_2_OUT;  /**< \brief Ethernet output */
IFX_EXTERN IfxEth_Mdio_InOut IfxEth_MDIO_P00_0_INOUT;  /**< \brief Ethernet output */
IFX_EXTERN IfxEth_Mdio_InOut IfxEth_MDIO_P21_3_INOUT;  /**< \brief Ethernet output */
IFX_EXTERN IfxEth_Refclk_In IfxEth_REFCLK_P11_12_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Rxclk_In IfxEth_RXCLKA_P11_12_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Rxd_In IfxEth_RXD0A_P11_10_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Rxd_In IfxEth_RXD1A_P11_9_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Rxd_In IfxEth_RXD2A_P11_8_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Rxd_In IfxEth_RXD3B_P10_5_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Rxdv_In IfxEth_RXDVA_P11_11_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Rxer_In IfxEth_RXERB_P21_7_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Rxer_In IfxEth_RXERC_P10_3_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Txclk_In IfxEth_TXCLKB_P11_12_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Txclk_In IfxEth_TXCLKC_P13_1_IN;  /**< \brief Ethernet input */
IFX_EXTERN IfxEth_Txd_Out IfxEth_TXD0_P11_3_OUT;  /**< \brief Ethernet output */
IFX_EXTERN IfxEth_Txd_Out IfxEth_TXD1_P11_2_OUT;  /**< \brief Ethernet output */
IFX_EXTERN IfxEth_Txd_Out IfxEth_TXD2_P13_3_OUT;  /**< \brief Ethernet output */
IFX_EXTERN IfxEth_Txd_Out IfxEth_TXD3_P13_2_OUT;  /**< \brief Ethernet output */
IFX_EXTERN IfxEth_Txen_Out IfxEth_TXEN_P11_6_OUT;  /**< \brief Ethernet output */
IFX_EXTERN IfxEth_Txer_Out IfxEth_TXER_P13_0_OUT;  /**< \brief Ethernet output */

/** \brief Table dimensions */
#define IFXETH_PINMAP_NUM_MODULES 1
#define IFXETH_PINMAP_COL_IN_NUM_ITEMS 2
#define IFXETH_PINMAP_CRS_IN_NUM_ITEMS 3
#define IFXETH_PINMAP_CRSDV_IN_NUM_ITEMS 1
#define IFXETH_PINMAP_MDC_OUT_NUM_ITEMS 2
#define IFXETH_PINMAP_MDIO_INOUT_NUM_ITEMS 2
#define IFXETH_PINMAP_REFCLK_IN_NUM_ITEMS 1
#define IFXETH_PINMAP_RXCLK_IN_NUM_ITEMS 1
#define IFXETH_PINMAP_RXD_IN_NUM_ITEMS 1
#define IFXETH_PINMAP_RXDV_IN_NUM_ITEMS 1
#define IFXETH_PINMAP_RXER_IN_NUM_ITEMS 3
#define IFXETH_PINMAP_TXCLK_IN_NUM_ITEMS 3
#define IFXETH_PINMAP_TXD_OUT_NUM_ITEMS 4
#define IFXETH_PINMAP_TXEN_OUT_NUM_ITEMS 1
#define IFXETH_PINMAP_TXER_OUT_NUM_ITEMS 1


/** \brief IfxEth_Col_In table */
IFX_EXTERN const IfxEth_Col_In *IfxEth_Col_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_COL_IN_NUM_ITEMS];

/** \brief IfxEth_Crs_In table */
IFX_EXTERN const IfxEth_Crs_In *IfxEth_Crs_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_CRS_IN_NUM_ITEMS];

/** \brief IfxEth_Crsdv_In table */
IFX_EXTERN const IfxEth_Crsdv_In *IfxEth_Crsdv_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_CRSDV_IN_NUM_ITEMS];

/** \brief IfxEth_Mdc_Out table */
IFX_EXTERN const IfxEth_Mdc_Out *IfxEth_Mdc_Out_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_MDC_OUT_NUM_ITEMS];

/** \brief IfxEth_Mdio_InOut table */
IFX_EXTERN const IfxEth_Mdio_InOut *IfxEth_Mdio_InOut_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_MDIO_INOUT_NUM_ITEMS];

/** \brief IfxEth_Refclk_In table */
IFX_EXTERN const IfxEth_Refclk_In *IfxEth_Refclk_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_REFCLK_IN_NUM_ITEMS];

/** \brief IfxEth_Rxclk_In table */
IFX_EXTERN const IfxEth_Rxclk_In *IfxEth_Rxclk_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_RXCLK_IN_NUM_ITEMS];

/** \brief IfxEth_Rxd_In table */
IFX_EXTERN const IfxEth_Rxd_In *IfxEth_Rxd_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_RXD_IN_NUM_ITEMS];

/** \brief IfxEth_Rxdv_In table */
IFX_EXTERN const IfxEth_Rxdv_In *IfxEth_Rxdv_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_RXDV_IN_NUM_ITEMS];

/** \brief IfxEth_Rxer_In table */
IFX_EXTERN const IfxEth_Rxer_In *IfxEth_Rxer_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_RXER_IN_NUM_ITEMS];

/** \brief IfxEth_Txclk_In table */
IFX_EXTERN const IfxEth_Txclk_In *IfxEth_Txclk_In_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_TXCLK_IN_NUM_ITEMS];

/** \brief IfxEth_Txd_Out table */
IFX_EXTERN const IfxEth_Txd_Out *IfxEth_Txd_Out_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_TXD_OUT_NUM_ITEMS];

/** \brief IfxEth_Txen_Out table */
IFX_EXTERN const IfxEth_Txen_Out *IfxEth_Txen_Out_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_TXEN_OUT_NUM_ITEMS];

/** \brief IfxEth_Txer_Out table */
IFX_EXTERN const IfxEth_Txer_Out *IfxEth_Txer_Out_pinTable[IFXETH_PINMAP_NUM_MODULES][IFXETH_PINMAP_TXER_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXETH_PINMAP_H */
