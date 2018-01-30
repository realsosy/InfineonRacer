/**
 * \file IfxSent_PinMap.h
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
 * \defgroup IfxLld_Sent_pinmap SENT Pin Mapping
 * \ingroup IfxLld_Sent
 */

#ifndef IFXSENT_PINMAP_H
#define IFXSENT_PINMAP_H

#include <_Reg/IfxSent_reg.h>
#include <_Impl/IfxSent_cfg.h>
#include <Port/Std/IfxPort.h>

/** \addtogroup IfxLld_Sent_pinmap
 * \{ */

/** \brief SENT pin mapping structure */
typedef const struct
{
    Ifx_SENT*         module;    /**< \brief Base address */
    IfxSent_ChannelId channelId; /**< \brief Channel ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    Ifx_RxSel         select;    /**< \brief Input multiplexer value */
} IfxSent_Sent_In;

/** \brief SPC pin mapping structure */
typedef const struct
{
    Ifx_SENT*         module;    /**< \brief Base address */
    IfxSent_ChannelId channelId; /**< \brief Channel ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxSent_Spc_Out;

IFX_EXTERN IfxSent_Sent_In IfxSent_SENT0A_P40_11_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT0B_P00_1_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT0C_P02_8_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT1A_P41_0_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT1B_P00_2_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT1C_P02_7_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT2A_P41_2_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT2B_P00_3_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT2C_P02_6_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT3A_P41_3_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT3B_P00_4_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Sent_In IfxSent_SENT3C_P02_5_IN;  /**< \brief SENT input */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC0_P00_1_OUT;  /**< \brief SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC1_P02_7_OUT;  /**< \brief SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC2_P00_3_OUT;  /**< \brief SENT output */
IFX_EXTERN IfxSent_Spc_Out IfxSent_SPC3_P00_4_OUT;  /**< \brief SENT output */

/** \brief Table dimensions */
#define IFXSENT_PINMAP_NUM_MODULES 1
#define IFXSENT_PINMAP_NUM_CHANNELS 4
#define IFXSENT_PINMAP_SENT_IN_NUM_ITEMS 3
#define IFXSENT_PINMAP_SPC_OUT_NUM_ITEMS 1


/** \brief IfxSent_Sent_In table */
IFX_EXTERN const IfxSent_Sent_In *IfxSent_Sent_In_pinTable[IFXSENT_PINMAP_NUM_MODULES][IFXSENT_PINMAP_NUM_CHANNELS][IFXSENT_PINMAP_SENT_IN_NUM_ITEMS];

/** \brief IfxSent_Spc_Out table */
IFX_EXTERN const IfxSent_Spc_Out *IfxSent_Spc_Out_pinTable[IFXSENT_PINMAP_NUM_MODULES][IFXSENT_PINMAP_NUM_CHANNELS][IFXSENT_PINMAP_SPC_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXSENT_PINMAP_H */
