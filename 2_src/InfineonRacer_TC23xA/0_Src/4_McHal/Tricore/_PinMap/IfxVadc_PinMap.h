/**
 * \file IfxVadc_PinMap.h
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
 * \defgroup IfxLld_Vadc_pinmap VADC Pin Mapping
 * \ingroup IfxLld_Vadc
 */

#ifndef IFXVADC_PINMAP_H
#define IFXVADC_PINMAP_H

#include <_Reg/IfxVadc_reg.h>
#include <_Impl/IfxVadc_cfg.h>
#include <Port/Std/IfxPort.h>

/** \addtogroup IfxLld_Vadc_pinmap
 * \{ */

/** \brief VADC Boundary Flag pin mapping structure */
typedef const struct
{
    Ifx_VADC*         module;    /**< \brief Base address */
    IfxVadc_GroupId   groupId;   /**< \brief Group ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxVadc_GxBfl_Out;

/** \brief VADC External Mux pin mapping structure */
typedef const struct
{
    Ifx_VADC*         module;    /**< \brief Base address */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    IfxPort_OutputIdx select;    /**< \brief Port control code */
} IfxVadc_Emux_Out;

/** \brief VADC Analog Input */
typedef const struct
{
    Ifx_VADC*         module;    /**< \brief Base address */
    IfxVadc_GroupId   groupId;   /**< \brief Group ID */
    IfxPort_Pin       pin;       /**< \brief Port pin */
    uint8             channelId; /**< \brief Channel ID */
} IfxVadc_Vadcg_In;

IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX00_P02_6_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX00_P33_3_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX01_P02_7_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX01_P33_2_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX02_P02_8_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX02_P33_1_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX10_P00_6_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX10_P33_6_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX11_P00_7_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX11_P33_5_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX12_P00_8_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_Emux_Out IfxVadc_EMUX12_P33_4_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G0BFL0_P33_4_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G0BFL1_P33_5_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G0BFL2_P33_6_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G0BFL3_P33_7_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P00_4_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P33_0_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P00_5_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P33_1_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL2_P00_6_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL2_P33_2_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL3_P00_7_OUT;  /**< \brief VADC output */
IFX_EXTERN IfxVadc_GxBfl_Out IfxVadc_G1BFL3_P33_3_OUT;  /**< \brief VADC output */

/** \brief Table dimensions */
#define IFXVADC_PINMAP_NUM_MODULES 1
#define IFXVADC_PINMAP_NUM_GROUPS 2
#define IFXVADC_PINMAP_EMUX_OUT_NUM_ITEMS 12
#define IFXVADC_PINMAP_GXBFL_OUT_NUM_ITEMS 8


/** \brief IfxVadc_Emux_Out table */
IFX_EXTERN const IfxVadc_Emux_Out *IfxVadc_Emux_Out_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_EMUX_OUT_NUM_ITEMS];

/** \brief IfxVadc_GxBfl_Out table */
IFX_EXTERN const IfxVadc_GxBfl_Out *IfxVadc_GxBfl_Out_pinTable[IFXVADC_PINMAP_NUM_MODULES][IFXVADC_PINMAP_NUM_GROUPS][IFXVADC_PINMAP_GXBFL_OUT_NUM_ITEMS];

/** \} */

#endif /* IFXVADC_PINMAP_H */
