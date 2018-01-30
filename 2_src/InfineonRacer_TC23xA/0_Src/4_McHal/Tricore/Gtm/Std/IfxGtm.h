/**
 * \file IfxGtm.h
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
 * \defgroup IfxLld_Gtm_Std_Basic_Functions Basic Functions
 * \ingroup IfxLld_Gtm_Std
 * \defgroup IfxLld_Gtm_Std_Enumerations Enumerations
 * \ingroup IfxLld_Gtm_Std
 */

#ifndef IFXGTM_H
#define IFXGTM_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "_Impl/IfxGtm_cfg.h"

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Gtm_Std_Enumerations
 * \{ */
/** \brief Enum for GTM interrupt modes
 */
typedef enum
{
    IfxGtm_IrqMode_level       = 0,
    IfxGtm_IrqMode_pulse       = 1,
    IfxGtm_IrqMode_pulseNotify = 2,
    IfxGtm_IrqMode_singlePulse = 3
} IfxGtm_IrqMode;

/** \} */

/** \addtogroup IfxLld_Gtm_Std_Basic_Functions
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Returs the status of module enabled or disabled
 * \param gtm Pointer to GTM module
 * \return status: TRUE/FALSE
 */
IFX_INLINE boolean IfxGtm_isEnabled(Ifx_GTM *gtm);

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Disables the module
 * \param gtm Pointer to GTM module
 * \return None
 */
IFX_EXTERN void IfxGtm_disable(Ifx_GTM *gtm);

/** \brief Enables the module
 * \param gtm Pointer to GTM module
 * \return None
 */
IFX_EXTERN void IfxGtm_enable(Ifx_GTM *gtm);

/** \} */

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE boolean IfxGtm_isEnabled(Ifx_GTM *gtm)
{
    return gtm->CLC.B.DISS == 0;
}


#endif /* IFXGTM_H */
