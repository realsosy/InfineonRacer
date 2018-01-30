/**
 * \file IfxGtm_Cmu.h
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
 * \defgroup IfxLld_Gtm_Std_Cmu Cmu Basic Functionality
 * \ingroup IfxLld_Gtm_Std
 * \defgroup IfxLld_Gtm_Std_Cmu_Enumerations CMU Enumerations
 * \ingroup IfxLld_Gtm_Std_Cmu
 * \defgroup IfxLld_Gtm_Std_Cmu_Basic_Functions CMU Basic Functions
 * \ingroup IfxLld_Gtm_Std_Cmu
 */

#ifndef IFXGTM_CMU_H
#define IFXGTM_CMU_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "_Impl/IfxGtm_cfg.h"

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Gtm_Std_Cmu_Enumerations
 * \{ */
typedef enum
{
    IfxGtm_Cmu_Clk_0 = 0,
    IfxGtm_Cmu_Clk_1,
    IfxGtm_Cmu_Clk_2,
    IfxGtm_Cmu_Clk_3,
    IfxGtm_Cmu_Clk_4,
    IfxGtm_Cmu_Clk_5,
    IfxGtm_Cmu_Clk_6,
    IfxGtm_Cmu_Clk_7
} IfxGtm_Cmu_Clk;

typedef enum
{
    IfxGtm_Cmu_Eclk_0 = 0,
    IfxGtm_Cmu_Eclk_1,
    IfxGtm_Cmu_Eclk_2
} IfxGtm_Cmu_Eclk;

typedef enum
{
    IfxGtm_Cmu_Fxclk_0 = 0,
    IfxGtm_Cmu_Fxclk_1,
    IfxGtm_Cmu_Fxclk_2,
    IfxGtm_Cmu_Fxclk_3,
    IfxGtm_Cmu_Fxclk_4
} IfxGtm_Cmu_Fxclk;

/** \} */

/** \addtogroup IfxLld_Gtm_Std_Cmu_Basic_Functions
 * \{ */

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Enable / Disable the configurable, fixed, and external clocks
 *
 * FIXME chek that CMU register are accessed 32 bitwise (See TS 3.0 27.8.8 CMU Configuration Register Description).
 * If not use different coding way
 * \param gtm Pointer to GTM module
 * \param clkMask Enable / Disable mask. Mask is from \ref IfxLld_Gtm_cfg_cmu_clock_enable_disable
 * \return None
 */
IFX_EXTERN void IfxGtm_Cmu_enableClocks(Ifx_GTM *gtm, uint32 clkMask);

/** \brief Returns the GTM configurable clock frequency in Hz
 * \param gtm Pointer to GTM module
 * \param clkIndex Index of the configurable clock 0=CMU_CLK0, 1=CMU_CLK1, ...
 * \param assumeEnabled When TRUE, attempt to calculate the frequency as if the clock is enabled.
 * \return GTM configurable clock frequency in Hz
 */
IFX_EXTERN float32 IfxGtm_Cmu_getClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, boolean assumeEnabled);

/** \brief Returns the GTM external clock frequency in Hz
 * \param gtm Pointer to GTM module
 * \param clkIndex Index of the external clock 0=CMU_ECLK0, 1=CMU_ECLK1, ...
 * \param assumeEnabled When TRUE, attempt to calculate the frequency as if the clock is enabled.
 * \return GTM external clock frequency in Hz
 */
IFX_EXTERN float32 IfxGtm_Cmu_getEclkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex, boolean assumeEnabled);

/** \brief Returns the GTM fixed clock frequency in Hz
 * \param gtm Pointer to GTM module
 * \param clkIndex Index of the fixed clock 0=CMU_FXCLK0, 1=CMU_FXCLK1, ...
 * \param assumeEnabled When TRUE, attempt to calculate the frequency as if the clock is enabled.
 * \return GTM fixed clock frequency in Hz
 */
IFX_EXTERN float32 IfxGtm_Cmu_getFxClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Fxclk clkIndex, boolean assumeEnabled);

/** \brief Returns the GTM global clock frequency in Hz
 * \param gtm Pointer to GTM module
 * \return GTM global clock frequency in Hz
 */
IFX_EXTERN float32 IfxGtm_Cmu_getGclkFrequency(Ifx_GTM *gtm);

/** \brief Returns the GTM module frequency in Hz
 * \param gtm Pointer to GTM module
 * \return GTM module frequency in Hz
 */
IFX_EXTERN float32 IfxGtm_Cmu_getModuleFrequency(Ifx_GTM *gtm);

/** \brief Returns the configurable clock enable status
 * \param gtm Pointer to GTM module
 * \param clkIndex Index of the configurable clock 0=CMU_CLK0, 1=CMU_CLK1, ...
 * \return TRUE The clock is enabled, FALSE The clock is disabled
 */
IFX_EXTERN boolean IfxGtm_Cmu_isClkClockEnabled(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex);

/** \brief Returns the external clock enable status
 * \param gtm Pointer to GTM module
 * \param clkIndex Index of the external clock 0=CMU_ECLK0, 1=CMU_ECLK1, ...
 * \return TRUE The clock is enabled, FALSE The clock is disabled
 */
IFX_EXTERN boolean IfxGtm_Cmu_isEclkClockEnabled(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex);

/** \brief Returns the fixed clock enable status
 * \param gtm Pointer to GTM module
 * \return TRUE The clock is enabled, FALSE The clock is disabled
 */
IFX_EXTERN boolean IfxGtm_Cmu_isFxClockEnabled(Ifx_GTM *gtm);

/** \brief Select the clock input for CLK6 and CLK7
 * note The frequency can only be modified when the corresponding clock is disabled using IfxGtm_Cmu_enableClocks()
 * \param gtm Pointer to GTM module
 * \param clkIndex Index of the configurable clock 0=CMU_CLK0, 1=CMU_CLK1, ...
 * \param useGlobal if TRUE, uses the global clock as an input, else use the SUB_INC input
 * \return None
 */
IFX_EXTERN void IfxGtm_Cmu_selectClkInput(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, boolean useGlobal);

/** \brief Set the GTM configurable clock frequency in Hz
 * \param gtm Pointer to GTM module
 * \param clkIndex Index of the configurable clock 0=CMU_CLK0, 1=CMU_CLK1, ...
 * \param frequency Frequency in Hz
 * \return None
 */
IFX_EXTERN void IfxGtm_Cmu_setClkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Clk clkIndex, float32 frequency);

/** \brief Set the GTM external clock frequency in Hz
 * \param gtm Pointer to GTM module
 * \param clkIndex Index of the external clock 0=CMU_ECLK0, 1=CMU_ECLK1, ...
 * \param frequency Frequency in Hz
 * \return None
 */
IFX_EXTERN void IfxGtm_Cmu_setEclkFrequency(Ifx_GTM *gtm, IfxGtm_Cmu_Eclk clkIndex, float32 frequency);

/** \brief Set the GTM global clock frequency in Hz
 * \param gtm Pointer to GTM module
 * \param frequency Frequency in Hz
 * \return None
 */
IFX_EXTERN void IfxGtm_Cmu_setGclkFrequency(Ifx_GTM *gtm, float32 frequency);

/** \} */

#endif /* IFXGTM_CMU_H */
