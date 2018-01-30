/**
 * \file IfxStdIf_Timer.c
 * \brief Standard interface: Timer
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

#include "IfxStdIf_Timer.h"

void IfxStdIf_Timer_initConfig (IfxStdIf_Timer_Config * config)
{
    config->frequency = 1000;
    config->isrPriority = 0;
    config->isrProvider = IfxSrc_Tos_cpu0;
    config->minResolution = 0;
    config->trigger.outputMode = IfxPort_OutputMode_pushPull;
    config->trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
    config->trigger.risingEdgeAtPeriod = FALSE;
    config->trigger.outputEnabled = FALSE;
    config->trigger.enabled = FALSE;
    config->trigger.triggerPoint = 0;
    config->trigger.isrPriority = 0;
    config->trigger.isrProvider = IfxSrc_Tos_cpu0;
    config->countDir = IfxStdIf_Timer_CountDir_up;
    config->startOffset = 0.0;
}
