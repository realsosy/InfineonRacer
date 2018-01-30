/**
 * \file IfxVadc_cfg.c
 * \brief VADC on-chip implementation data
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

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxVadc_cfg.h"

/******************************************************************************/
/*-----------------------Exported Variables/Constants-------------------------*/
/******************************************************************************/

const uint32 IfxVadc_cfg_srcAddresses[(IFXVADC_NUM_ADC_GROUPS * 4) + (IFXVADC_NUM_ADC_COMMON_GROUPS * 4)] = {
    (uint32)&SRC_VADC_G0_SR0,
    (uint32)&SRC_VADC_G0_SR1,
    (uint32)&SRC_VADC_G0_SR2,
    (uint32)&SRC_VADC_G0_SR3,
    (uint32)&SRC_VADC_G1_SR0,
    (uint32)&SRC_VADC_G1_SR1,
    (uint32)&SRC_VADC_G1_SR2,
    (uint32)&SRC_VADC_G1_SR3,
    (uint32)&SRC_VADC_CG0_SR0,
    (uint32)&SRC_VADC_CG0_SR1,
    (uint32)&SRC_VADC_CG0_SR2,
    (uint32)&SRC_VADC_CG0_SR3
};
