/**
 * \file IfxMultican_PinMap.h
 * \brief MULTICAN I/O map
 * \ingroup IfxLld_Multican
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
 * \defgroup IfxLld_Multican_pinmap MULTICAN Pin Mapping
 * \ingroup IfxLld_Multican
 */

#ifndef IFXMULTICAN_PINMAP_H
#define IFXMULTICAN_PINMAP_H

#include <_Reg/IfxCan_reg.h>
#include <_Impl/IfxMultican_cfg.h>
#include <Port/Std/IfxPort.h>

/** \addtogroup IfxLld_Multican_pinmap
 * \{ */

/** \brief RXD pin mapping structure */
typedef const struct
{
    Ifx_CAN*           module;   /**< \brief Base address */
    IfxMultican_NodeId nodeId;   /**< \brief Node ID */
    IfxPort_Pin        pin;      /**< \brief Port pin */
    Ifx_RxSel          select;   /**< \brief Input multiplexer value */
} IfxMultican_Rxd_In;

/** \brief TXD pin mapping structure */
typedef const struct
{
    Ifx_CAN*           module;   /**< \brief Base address */
    IfxMultican_NodeId nodeId;   /**< \brief Node ID */
    IfxPort_Pin        pin;      /**< \brief Port pin */
    IfxPort_OutputIdx  select;   /**< \brief Port control code */
} IfxMultican_Txd_Out;

IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD0A_P10_5_IN;  /**< \brief CAN1 node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD0B_P13_1_IN;  /**< \brief CAN1 node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD0F_P02_6_IN;  /**< \brief CAN1 node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD0G_P00_5_IN;  /**< \brief CAN1 node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD0H_P33_6_IN;  /**< \brief CAN1 node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD1A_P00_3_IN;  /**< \brief CAN1 node 1 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD1B_P13_3_IN;  /**< \brief CAN1 node 1 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD1C_P20_0_IN;  /**< \brief CAN1 node 1 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD1F_P02_7_IN;  /**< \brief CAN1 node 1 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD1G_P00_6_IN;  /**< \brief CAN1 node 1 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD1H_P20_12_IN;  /**< \brief CAN1 node 1 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD2A_P00_3_IN;  /**< \brief CAN1 node 2 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD2C_P20_0_IN;  /**< \brief CAN1 node 2 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD2D_P11_10_IN;  /**< \brief CAN1 node 2 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD2E_P20_9_IN;  /**< \brief CAN1 node 2 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD2G_P00_8_IN;  /**< \brief CAN1 node 2 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican1_RXD2H_P20_13_IN;  /**< \brief CAN1 node 2 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD0A_P02_1_IN;  /**< \brief CAN node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD0B_P20_7_IN;  /**< \brief CAN node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD0D_P02_4_IN;  /**< \brief CAN node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD0E_P33_7_IN;  /**< \brief CAN node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD0G_P34_2_IN;  /**< \brief CAN node 0 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD1A_P15_3_IN;  /**< \brief CAN node 1 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD1B_P14_1_IN;  /**< \brief CAN node 1 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD1D_P00_1_IN;  /**< \brief CAN node 1 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD2A_P15_1_IN;  /**< \brief CAN node 2 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD2B_P02_3_IN;  /**< \brief CAN node 2 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD2D_P14_8_IN;  /**< \brief CAN node 2 input */
IFX_EXTERN IfxMultican_Rxd_In IfxMultican_RXD2E_P10_2_IN;  /**< \brief CAN node 2 input */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD0_P00_4_OUT;  /**< \brief CAN1 node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD0_P02_4_OUT;  /**< \brief CAN1 node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD0_P10_6_OUT;  /**< \brief CAN1 node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD0_P13_0_OUT;  /**< \brief CAN1 node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD0_P33_7_OUT;  /**< \brief CAN1 node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD1_P00_7_OUT;  /**< \brief CAN1 node 1 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD1_P02_5_OUT;  /**< \brief CAN1 node 1 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD1_P13_2_OUT;  /**< \brief CAN1 node 1 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD1_P20_11_OUT;  /**< \brief CAN1 node 1 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD2_P00_2_OUT;  /**< \brief CAN1 node 2 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD2_P00_9_OUT;  /**< \brief CAN1 node 2 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD2_P20_10_OUT;  /**< \brief CAN1 node 2 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD2_P20_14_OUT;  /**< \brief CAN1 node 2 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican1_TXD2_P20_3_OUT;  /**< \brief CAN1 node 2 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD0_P02_0_OUT;  /**< \brief CAN node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD0_P02_5_OUT;  /**< \brief CAN node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD0_P20_8_OUT;  /**< \brief CAN node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD0_P33_8_OUT;  /**< \brief CAN node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD0_P34_1_OUT;  /**< \brief CAN node 0 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD1_P00_0_OUT;  /**< \brief CAN node 1 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD1_P14_0_OUT;  /**< \brief CAN node 1 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD1_P15_2_OUT;  /**< \brief CAN node 1 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD2_P02_2_OUT;  /**< \brief CAN node 2 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD2_P10_3_OUT;  /**< \brief CAN node 2 output */
IFX_EXTERN IfxMultican_Txd_Out IfxMultican_TXD2_P15_0_OUT;  /**< \brief CAN node 2 output */

/** \brief Table dimensions */
#define IFXMULTICAN_PINMAP_NUM_MODULES 2
#define IFXMULTICAN_PINMAP_NUM_NODES 3
#define IFXMULTICAN_PINMAP_RXD_IN_NUM_ITEMS 8
#define IFXMULTICAN_PINMAP_TXD_OUT_NUM_ITEMS 5


/** \brief IfxMultican_Rxd_In table */
IFX_EXTERN const IfxMultican_Rxd_In *IfxMultican_Rxd_In_pinTable[IFXMULTICAN_PINMAP_NUM_MODULES][IFXMULTICAN_PINMAP_NUM_NODES][IFXMULTICAN_PINMAP_RXD_IN_NUM_ITEMS];

/** \brief IfxMultican_Txd_Out table */
IFX_EXTERN const IfxMultican_Txd_Out *IfxMultican_Txd_Out_pinTable[IFXMULTICAN_PINMAP_NUM_MODULES][IFXMULTICAN_PINMAP_NUM_NODES][IFXMULTICAN_PINMAP_TXD_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXMULTICAN_PINMAP_H */
