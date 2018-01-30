/**
 * \file Cpu0_Main.c
 * \brief System initialisation and main program implementation.
 *
 * \version iLLD_Demos_1_0_0_11_0
 * \copyright Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
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

#include "Cpu0_Main.h"
#include "SysSe/Bsp/Bsp.h"
#include "IfxScuWdt.h"
#include "BasicStm.h"
#include "AsclinShellInterface.h"
#include <Tft/conio_tft.h>
#include "tft_app.h"
#include "background_light.h"
#include "Perf_Meas.h"
#include "display_io.h"

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
App_Cpu g_AppCpu0; /**< \brief CPU 0 global data */

/* this variables are initialized by c_init and accessible from all CPUs */
//volatile boolean tft_ready = 0;
//
//extern TCONTROLMENU controlmenu;
//
/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief Main entry point after CPU boot-up.
 *
 *  It initialise the system and enter the endless loop that handles the demo
 */
int core0_main(void)
{
    /*
     * !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
     * Enable the watchdog in the demo if it is required and also service the watchdog periodically
     * */
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

    // all our ports are tristate, we enable the pull-up on some pins
    // CS to touch
    IfxPort_setPinModeInput(TOUCH_USE_CHIPSELECT.pin.port, TOUCH_USE_CHIPSELECT.pin.pinIndex, IfxPort_Mode_inputPullUp);
    // CS to tft
    IfxPort_setPinModeInput(TFT_USE_CHIPSELECT.pin.port, TFT_USE_CHIPSELECT.pin.pinIndex, IfxPort_Mode_inputPullUp);
    // INT from touch
    IfxPort_setPinModeInput(TOUCH_USE_INT.port, TOUCH_USE_INT.pinIndex, IfxPort_Mode_inputPullUp);
    /* we enable the background light Application Kit */
    IfxPort_setPinModeOutput(BACKGROUND_LIGHT.pin.port, BACKGROUND_LIGHT.pin.pinIndex, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_alt1);

    /* Initialise the application state */
    g_AppCpu0.info.pllFreq = IfxScuCcu_getPllFrequency();
    g_AppCpu0.info.cpuFreq = IfxScuCcu_getCpuFrequency(IfxCpu_getCoreIndex());
    g_AppCpu0.info.sysFreq = IfxScuCcu_getSpbFrequency();
    g_AppCpu0.info.stmFreq = IfxStm_getFrequency(&MODULE_STM0);

    /* Enable the global interrupts of this CPU */
    IfxCpu_enableInterrupts();

    /* Demo init */
    BasicStm_init();

    /* background endless loop */
    while (TRUE)
    {
        BasicStm_run();
    }

    return 0;
}


/** \} */
