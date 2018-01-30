/**
 * \file IfxMtu_cfg.c
 * \brief Mtu on-chip implementation data
 *
 * \version iLLD_1_0_0_11_0
 * \copyright Copyright (c) 2015 Infineon Technologies AG. All rights reserved.
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

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxMtu_cfg.h"

/******************************************************************************/
/*-----------------------Exported Variables/Constants-------------------------*/
/******************************************************************************/

const IfxMtu_SramItem IfxMtu_sramTable[IFXMTU_NUM_MBIST_TABLE_ITEMS] = {
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {1 * 2, 128, 9, 0, 1, 256 }, /**< \brief IfxMtu_MbistSel_miniMcds */
    {2 * 8, 16,  6, 0, 1, 5888}, /**< \brief IfxMtu_MbistSel_cpu0Dspr */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {1 * 2, 32,  8, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_cpu0Pspr */
    {2 * 1, 20,  5, 0, 1, 128 }, /**< \brief IfxMtu_MbistSel_cpu0Ptag */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {1 * 2, 35,  7, 0, 1, 1024}, /**< \brief IfxMtu_MbistSel_ethermac */
    {1 * 4, 32,  7, 5, 6, 256 }, /**< \brief IfxMtu_MbistSel_mod1 */
    {1 * 4, 24,  6, 0, 1, 64  }, /**< \brief IfxMtu_MbistSel_mod2 */
    {1 * 2, 32,  7, 5, 6, 3072}, /**< \brief IfxMtu_MbistSel_mod3 */
    {1 * 1, 64,  8, 0, 1, 4096}, /**< \brief IfxMtu_MbistSel_mod4 */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {1 * 1, 32,  7, 5, 6, 2048}, /**< \brief IfxMtu_MbistSel_mcan */
    {1 * 1, 32,  7, 5, 6, 2048}, /**< \brief IfxMtu_MbistSel_mcan1 */
    {1 * 2, 32,  7, 5, 6, 64  }, /**< \brief IfxMtu_MbistSel_erayObf */
    {1 * 4, 32,  7, 5, 6, 128 }, /**< \brief IfxMtu_MbistSel_erayIbfTbf */
    {1 * 1, 32,  7, 5, 6, 4096}, /**< \brief IfxMtu_MbistSel_erayMbf */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {1 * 4, 32,  8, 0, 1, 1024}, /**< \brief IfxMtu_MbistSel_mcds */
    {1 * 2, 128, 9, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_emem0 */
    {1 * 2, 128, 9, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_emem1 */
    {1 * 2, 128, 9, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_emem2 */
    {1 * 2, 128, 9, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_emem3 */
    {1 * 2, 128, 9, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_emem4 */
    {1 * 2, 128, 9, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_emem5 */
    {1 * 2, 128, 9, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_emem6 */
    {1 * 2, 128, 9, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_emem7 */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {1 * 1, 64,  8, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_lmu */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {0 * 0, 0,   0, 0, 0, 0   }, /**< \brief IfxMtu_MbistSel_none */
    {1 * 2, 128, 9, 0, 1, 256 }, /**< \brief IfxMtu_MbistSel_ememXtm0 */
    {1 * 2, 128, 9, 0, 1, 256 }, /**< \brief IfxMtu_MbistSel_ememXtm1 */
    {1 * 4, 64,  8, 0, 1, 2048}, /**< \brief IfxMtu_MbistSel_fft0 */
    {1 * 1, 16,  6, 0, 1, 1024}, /**< \brief IfxMtu_MbistSel_fft1 */
};
