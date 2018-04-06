/**
 * \file Gpt12.c
 * \brief Demo Gpt12
 *
 * \version iLLD_Demos_1_0_1_4_0
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
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include "Gpt12Demo.h"
#include "_Utilities/Ifx_Assert.h"
#include "Port/Std/IfxPort.h"
#include "SysSe/Bsp/Bsp.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
App_Gpt12 g_Gpt12; /**< \brief Demo information */

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/** \addtogroup IfxLld_Demo_Gpt12_SrcDoc_Main_Interrupt
 * \{ */

/** \name Interrupts for IncrIncZero
 * \{ */
IFX_INTERRUPT(ISR_IncrIncZero, 0, ISR_PRIORITY_INCRENC_ZERO);
/** \} */

/** \} */

/** \brief Handle IncrIncZero interrupt.
 *
 * \isrProvider \ref ISR_PROVIDER_INCRENC_ZERO
 * \isrPriority \ref ISR_PRIORITY_INCRENC_ZERO
 *
 */
void ISR_IncrIncZero(void)
{
    __enable();
    IfxGpt12_IncrEnc_onZeroIrq(&g_Gpt12.incrEnc);
}


/** Demo init API
 *
 * This function is call from the main, before interrupt enable
 */
void Gpt12Demo_init(void)
{
    //    printf("Gpt12_init() called. \n");

    initTime();

    /* Initialize global clocks */
    /* FIXME Global prescaller should not be set by the driver as they are global resources */
    IfxGpt12_enableModule(&MODULE_GPT120);
    IfxGpt12_setGpt1BlockPrescaler(&MODULE_GPT120, IfxGpt12_Gpt1BlockPrescaler_8);
    IfxGpt12_setGpt2BlockPrescaler(&MODULE_GPT120, IfxGpt12_Gpt2BlockPrescaler_4);

    IfxGpt12_IncrEnc_Config config;
    IfxGpt12_IncrEnc_initConfig(&config, &MODULE_GPT120);
#if 1
    {
        /* Test implementation with T3 as core */
        config.base.offset                    = 0;
        config.base.reversed                  = FALSE;
        config.base.resolution                = 32; // 2048; for test purpose
        config.base.periodPerRotation         = 1;
        config.base.resolutionFactor          = IfxStdIf_Pos_ResolutionFactor_fourFold;
        config.base.updatePeriod              = 100e-6;
        config.base.speedModeThreshold        = 200;
        config.base.minSpeed                  = 10;
        config.base.maxSpeed                  = 500;
        config.zeroIsrPriority                = ISR_PRIORITY(INTERRUPT_INCRINC_ZERO);
        config.zeroIsrProvider                = ISR_PROVIDER(INTERRUPT_INCRINC_ZERO);
        config.pinA                           = &IfxGpt120_T3INA_P02_6_IN;
        config.pinB                           = &IfxGpt120_T3EUDA_P02_7_IN;
        config.pinZ                           = &IfxGpt120_T4INA_P02_8_IN;
        config.pinMode                        = IfxPort_InputMode_noPullDevice;

        config.base.speedFilterEnabled        = TRUE;
        config.base.speedFilerCutOffFrequency = config.base.maxSpeed / 2 * IFX_PI * 2;
    }
#else
    {
        /* Test implementation with T2 as core */
        config.base.offset                    = 100;
        config.base.reversed                  = FALSE;
        config.base.resolution                = 2048;
        config.base.periodPerRotation         = 1;
        config.base.resolutionFactor          = IfxStdIf_Pos_ResolutionFactor_fourFold;
        config.base.updatePeriod              = 100e-6;
        config.base.speedModeThreshold        = 200;
        config.base.minSpeed                  = 10;
        config.base.maxSpeed                  = 500;
        config.zeroIsrPriority                = ISR_PRIORITY(INTERRUPT_INCRINC_ZERO);
        config.zeroIsrProvider                = ISR_PROVIDER(INTERRUPT_INCRINC_ZERO);
        config.pinA                           = &IfxGpt120_T2INA_P00_7_IN;
        config.pinB                           = &IfxGpt120_T2EUDA_P00_8_IN;
        config.pinZ                           = &IfxGpt120_T4EUDA_P00_9_IN;
        config.pinMode                        = IfxPort_InputMode_noPullDevice;

        config.base.speedFilterEnabled        = TRUE;
        config.base.speedFilerCutOffFrequency = config.base.maxSpeed / 2 * IFX_PI * 10;
    }
#endif
    IFX_VALIDATE(IFX_VERBOSE_LEVEL_ERROR, IfxGpt12_IncrEnc_init(&g_Gpt12.incrEnc, &config));

    g_Gpt12.control.run                  = TRUE;
    g_Gpt12.control.direction            = IfxStdIf_Pos_Dir_forward;
    g_Gpt12.control.resolution           = config.base.resolution;
    g_Gpt12.control.step                 = 3;
    g_Gpt12.control.rawPosition          = config.base.offset;
    g_Gpt12.control.speed                = IFX_PI * 2.0;
    g_Gpt12.control.multiplicationFactor = config.base.resolutionFactor;
    g_Gpt12.control.updatePeriod         = config.base.updatePeriod;
    g_Gpt12.control.positionMask         = g_Gpt12.control.resolution * g_Gpt12.control.multiplicationFactor - 1;

    g_Gpt12.interface.A                  = config.pinA->pin;
    g_Gpt12.interface.B                  = config.pinB->pin;
    g_Gpt12.interface.Z                  = config.pinZ->pin;

    /* Overwrite port configuration to enable feature check */
    IfxPort_setPinModeOutput(g_Gpt12.interface.A.port, g_Gpt12.interface.A.pinIndex, IfxPort_OutputMode_pushPull,
        IfxPort_OutputIdx_general);
    IfxPort_setPinModeOutput(g_Gpt12.interface.B.port, g_Gpt12.interface.B.pinIndex, IfxPort_OutputMode_pushPull,
        IfxPort_OutputIdx_general);
    IfxPort_setPinModeOutput(g_Gpt12.interface.Z.port, g_Gpt12.interface.Z.pinIndex, IfxPort_OutputMode_pushPull,
        IfxPort_OutputIdx_general);
}


void Gpt12Demo_step(void)
{
    if (g_Gpt12.control.run)
    {
        sint32 rawPosition;
        rawPosition = g_Gpt12.control.rawPosition;

        if (g_Gpt12.control.direction == IfxStdIf_Pos_Dir_forward)
        {
            g_Gpt12.control.step++;
            g_Gpt12.control.step &= 0x3;
            rawPosition++;
        }
        else
        {
            g_Gpt12.control.step--;
            g_Gpt12.control.step &= 0x3;
            rawPosition--;
        }

        rawPosition                &= g_Gpt12.control.positionMask;
        g_Gpt12.control.rawPosition = rawPosition;

#if 1

        /* Handle zero pin */
        if (g_Gpt12.control.direction == IfxStdIf_Pos_Dir_forward)
        {
            if (rawPosition == 0)
            {
                IfxPort_setPinHigh(g_Gpt12.interface.Z.port, g_Gpt12.interface.Z.pinIndex);
            }
            else if (rawPosition == 1)
            {
                IfxPort_setPinLow(g_Gpt12.interface.Z.port, g_Gpt12.interface.Z.pinIndex);
            }
        }
        else
        {
            if (rawPosition == g_Gpt12.control.positionMask)
            {
                IfxPort_setPinHigh(g_Gpt12.interface.Z.port, g_Gpt12.interface.Z.pinIndex);
            }
            else if (rawPosition == g_Gpt12.control.positionMask - 1)
            {
                IfxPort_setPinLow(g_Gpt12.interface.Z.port, g_Gpt12.interface.Z.pinIndex);
            }
        }

#endif

        switch (g_Gpt12.control.step)
        {
        case 0:
            IfxPort_setPinLow(g_Gpt12.interface.A.port, g_Gpt12.interface.A.pinIndex);
            IfxPort_setPinLow(g_Gpt12.interface.B.port, g_Gpt12.interface.B.pinIndex);
            break;
        case 1:
            IfxPort_setPinLow(g_Gpt12.interface.A.port, g_Gpt12.interface.A.pinIndex);
            IfxPort_setPinHigh(g_Gpt12.interface.B.port, g_Gpt12.interface.B.pinIndex);
            break;
        case 2:
            IfxPort_setPinHigh(g_Gpt12.interface.A.port, g_Gpt12.interface.A.pinIndex);
            IfxPort_setPinHigh(g_Gpt12.interface.B.port, g_Gpt12.interface.B.pinIndex);
            break;
        case 3:
            IfxPort_setPinHigh(g_Gpt12.interface.A.port, g_Gpt12.interface.A.pinIndex);
            IfxPort_setPinLow(g_Gpt12.interface.B.port, g_Gpt12.interface.B.pinIndex);
            break;
        }
    }
}


/** Demo run API
 *
 * This function is call from the main, background loop
 */
void Gpt12Demo_run(void)
{
    printf("Gpt12_run() called \n");
    Ifx_TickTime tickPeriod;
    Ifx_TickTime tickRefresh;

    Ifx_TickTime refreshDeadLine;
    Ifx_TickTime tickDeadLine;

    tickRefresh     = g_Gpt12.control.updatePeriod * TimeConst_1s;

    refreshDeadLine = now();
    tickDeadLine    = refreshDeadLine;

    while (1)
    {
        g_Gpt12.control.run = g_Gpt12.control.speed != 0.0;

        if (!g_Gpt12.control.run)
        {}
        else
        {
            float32 roundDuration_s = (2.0 * IFX_PI) / g_Gpt12.control.speed;
            float32 tickDuration_s  = roundDuration_s / (g_Gpt12.control.positionMask + 1);

            tickPeriod = tickDuration_s * TimeConst_1s;

            if (isDeadLine(tickDeadLine))
            {
                tickDeadLine = addTTime(tickDeadLine, tickPeriod);
                Gpt12Demo_step();
            }
        }

        if (isDeadLine(refreshDeadLine))
        {
            refreshDeadLine = addTTime(refreshDeadLine, tickRefresh);
            IfxGpt12_IncrEnc_update(&g_Gpt12.incrEnc);

            g_Gpt12.status.speed       = IfxGpt12_IncrEnc_getSpeed(&g_Gpt12.incrEnc);
            g_Gpt12.status.rawPosition = IfxGpt12_IncrEnc_getRawPosition(&g_Gpt12.incrEnc);
            g_Gpt12.status.direction   = IfxGpt12_IncrEnc_getDirection(&g_Gpt12.incrEnc);
        }
    }
}
