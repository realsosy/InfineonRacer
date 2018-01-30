/**
 * \file IfxGtm_Tim.h
 * \brief GTM  basic functionality
 * \ingroup IfxLld_Gtm
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
 *
 *
 * \defgroup IfxLld_Gtm_Std_Tim Tim Basic Functionality
 * \ingroup IfxLld_Gtm_Std
 * \defgroup IfxLld_Gtm_Std_Tim_Enumerations TIM Enumerations
 * \ingroup IfxLld_Gtm_Std_Tim
 */

#ifndef IFXGTM_TIM_H
#define IFXGTM_TIM_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "_Impl/IfxGtm_cfg.h"

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Gtm_Std_Tim_Enumerations
 * \{ */
typedef enum
{
    IfxGtm_Tim_CntsSel_cntReg = 0,
    IfxGtm_Tim_CntsSel_tbuTs0
} IfxGtm_Tim_CntsSel;

/** \brief Enum for Filter counter
 */
typedef enum
{
    IfxGtm_Tim_FilterCounter_upDown = 0,
    IfxGtm_Tim_FilterCounter_hold
} IfxGtm_Tim_FilterCounter;

/** \brief Enum for Filter mode
 */
typedef enum
{
    IfxGtm_Tim_FilterMode_immediateEdge = 0,  /**< \brief Immediate edge mode */
    IfxGtm_Tim_FilterMode_individualDeglitch  /**< \brief Individual deglitch mode */
} IfxGtm_Tim_FilterMode;

typedef enum
{
    IfxGtm_Tim_GprSel_tbuTs0 = 0,
    IfxGtm_Tim_GprSel_tbuTs1,
    IfxGtm_Tim_GprSel_tbuTs2,
    IfxGtm_Tim_GprSel_cnts
} IfxGtm_Tim_GprSel;

typedef enum
{
    IfxGtm_Tim_Input_external = 0,
    IfxGtm_Tim_Input_adjacent
} IfxGtm_Tim_Input;

typedef enum
{
    IfxGtm_Tim_Mode_pwmMeasurement = 0,  /**< \brief TPWM */
    IfxGtm_Tim_Mode_pulseIntegration,    /**< \brief TPIM */
    IfxGtm_Tim_Mode_inputEvent,          /**< \brief TIEM */
    IfxGtm_Tim_Mode_inputPrescaler,      /**< \brief TIPM */
    IfxGtm_Tim_Mode_bitCompression       /**< \brief TBCM */
} IfxGtm_Tim_Mode;

/** \} */

#endif /* IFXGTM_TIM_H */
