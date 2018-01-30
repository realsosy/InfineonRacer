/**
 * \file IfxStdIf_Pos.c
 * \brief Standard interface: Position interface
 * \ingroup IfxStdIf
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

#include "IfxStdIf_Pos.h"

void IfxStdIf_Pos_initConfig (IfxStdIf_Pos_Config * config)
{
    config->offset = 0;
    config->reversed = FALSE;
    config->resolution = 0;
    config->periodPerRotation = 1;
    config->resolutionFactor = IfxStdIf_Pos_ResolutionFactor_oneFold;
    config->updatePeriod = 0.001;
    config->speedModeThreshold = 0;
    config->minSpeed = 0;       // 0 rpm
    config->maxSpeed = 20000.0 / 60.0 * (2 * IFX_PI);   // 20000 rpm
    config->speedFilterEnabled = FALSE;
    config->speedFilerCutOffFrequency = 0;

}
