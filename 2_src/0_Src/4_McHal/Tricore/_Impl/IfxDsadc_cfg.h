/**
 * \file IfxDsadc_cfg.h
 * \brief DSADC on-chip implementation data.
 *
 *
 * \version iLLD_1_0_0_11_0
 * \copyright Copyright (c) 2012 Infineon Technologies AG. All rights reserved.
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
 */

#ifndef IFXDSADC_CFG_H_
#define IFXDSADC_CFG_H_

#include "IfxDsadc_reg.h"
#include "Cpu/Std/IfxCpu_Intrinsics.h"

/** \brief Number of channels -- NOTE: only channel 0 and 3 are implemented! */
#define IFXDSADC_NUM_CHANNELS  (4)

/** \brief DSADC channel resources definition. */
typedef enum
{
    IfxDsadc_ChannelId_0 = 0,   /**< DSADC Channel 0 */
    IfxDsadc_ChannelId_3 = 3,   /**< DSADC Channel 3 */
} IfxDsadc_ChannelId;

#endif /* IFXDSADC_CFG_H_ */
