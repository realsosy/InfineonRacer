/**
 * \file Cpu0_Main.c
 * \brief System initialisation and main program implementation.
 *
 * \version iLLD_Demos_1_0_1_4_0
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

#include "Cpu0_Main.h"

#include <Stm/Std/IfxStm.h>
#include <Gtm/Std/IfxGtm_Cmu.h>

#include <background_light.h>
#include "Configuration.h"
#include <Tft/conio_tft.h>
#include "tft_app.h"
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

    IfxGtm_enable(&MODULE_GTM);
    // we set the global clock to 100MHz
    IfxGtm_Cmu_setGclkFrequency(&MODULE_GTM, 100000000.0f);
    // set CMU0 frequency
    IfxGtm_Cmu_setClkFrequency(&MODULE_GTM, IfxGtm_Cmu_Clk_0, 100000000.0f);
    // enable CMU0 clock
    IfxGtm_Cmu_enableClocks(&MODULE_GTM, IFXGTM_CMU_CLKEN_CLK0);
    // enable FX clock
    IfxGtm_Cmu_enableClocks(&MODULE_GTM, IFXGTM_CMU_CLKEN_FXCLK);

    /* Initialise the application state */
    g_AppCpu0.info.pllFreq = IfxScuCcu_getPllFrequency();
    g_AppCpu0.info.cpuFreq = IfxScuCcu_getCpuFrequency(IfxCpu_getCoreIndex());
    g_AppCpu0.info.sysFreq = IfxScuCcu_getSpbFrequency();
    g_AppCpu0.info.stmFreq = IfxStm_getFrequency(&MODULE_STM0);

    /* initialize STM */
    IfxStm_CompareConfig stmCompareConfig;

    /* suspend by debugger enabled */
    IfxStm_enableOcdsSuspend(&MODULE_STM0);

    /* Enable the global interrupts of this CPU */
    IfxCpu_enableInterrupts();

    /* constructor of configuration */
    IfxStm_initCompareConfig(&stmCompareConfig);

    /* change the comparator configuration */
    stmCompareConfig.triggerPriority      = ISR_PRIORITY_OS_TICK;
    stmCompareConfig.comparatorInterrupt  = IfxStm_ComparatorInterrupt_ir0; /*User must select the interrupt output */
    stmCompareConfig.ticks                = IFX_CFG_STM_TICKS_PER_MS*10;    /* we start after 10ms */
    stmCompareConfig.typeOfService        = (IfxSrc_Tos) IfxCpu_getCoreId();

    /* Now Compare functionality is initialized */
    IfxStm_initCompare(&MODULE_STM0, &stmCompareConfig);

    /* Init TFT-display */
    tft_appl_init(1);

    /* Init the backroundlight */
    background_light_init();

    graph_drawInfineonLogo();

    /* Init the performance measurement */
    perf_meas_init();

    display_io_init();

    /* background endless loop */
    while (TRUE)
    {
    	perf_meas_idle();
    }

    return 0;
}

/**
 * \ingroup interrupts
 *
 * This interrupt is raised by the STM0. The initialization is done by initStm0().
 *
 * \isrProvider 0
 * \isrPriority \ref ISR_PRIORITY_OS_TICK
 */
IFX_INTERRUPT (UsrIsr_Stm_0, 0, ISR_PRIORITY_OS_TICK);

void UsrIsr_Stm_0(void)
{
    /* Set next 1ms scheduler tick alarm */
    IfxStm_increaseCompare(&MODULE_STM0, IfxStm_Comparator_0, IFX_CFG_STM_TICKS_PER_MS);

    /* increment the ms value */
    g_AppCpu0.TickCount_1ms++;

    __enable();
    /* action to do each 10ms */
    if ((g_AppCpu0.TickCount_1ms % 10) == 0)
    {

    }
    /* action to do each REFRESH_TFT ms */
    if ((g_AppCpu0.TickCount_1ms % REFRESH_TFT) == 0)
    {
   		IfxSrc_setRequest(&TFT_UPDATE_IRQ);    //trigger the tft lib
    }
    /* action to do each 100ms */
    if ((g_AppCpu0.TickCount_1ms % 100) == 0)
    {
        controlmenu.cpuseconds += controlmenu.cpusecondsdelta;
    }
}


/** \} */
