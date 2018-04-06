/**
 * \file GtmAtomPwmHlDemo.c
 * \brief Demo GtmAtomPwmHlDemo
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

#include <stdio.h>
#include "GtmTomPwmHlDemo.h"

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

App_GtmTomPwmHl g_GtmTomPwmHl; /**< \brief Demo information */

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Demo_GtmTomPwmHl_SrcDoc_Main_Interrupt
 * \{ */

/** \name Interrupts for Timer
 * \{ */

IFX_INTERRUPT(ISR_Timer, 0, ISR_PRIORITY_TIMER);

/** \} */

/** \} */

/** \brief Handle 1ms interrupt.
 *
 * \isrProvider \ref ISR_PROVIDER_TIMER
 * \isrPriority \ref ISR_PRIORITY_TIMER
 *
 */

void ISR_Timer(void)
{
    IfxCpu_enableInterrupts();

    IfxGtm_Tom_Timer_acknowledgeTimerIrq(&g_GtmTomPwmHl.drivers.timer);
    g_GtmTomPwmHl.isrCounter.counter++;

}


void GtmTomPwmHl_initTimer(void)
{
    {   /* GTM TOM configuration */
        IfxGtm_Tom_Timer_Config timerConfig;
        IfxGtm_Tom_PwmHl_Config pwmHlConfig;

        IfxGtm_Tom_Timer_initConfig(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency                  = 10000;
        timerConfig.base.isrPriority                = ISR_PRIORITY(INTERRUPT_TIMER);
        timerConfig.base.isrProvider                = ISR_PROVIDER(INTERRUPT_TIMER);
        timerConfig.base.minResolution              = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.base.trigger.enabled            = FALSE;
        timerConfig.tom                             = IfxGtm_Tom_0;
        timerConfig.timerChannel                    = IfxGtm_Tom_Ch_0;
        timerConfig.clock                           = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk0;

        timerConfig.triggerOut                      = &IfxGtm_TOM0_0_TOUT18_P00_9_OUT;
        timerConfig.base.trigger.outputEnabled      = TRUE;
        timerConfig.base.trigger.enabled            = TRUE;
        timerConfig.base.trigger.triggerPoint       = 500;
        timerConfig.base.trigger.risingEdgeAtPeriod = TRUE;

        IfxGtm_Tom_Timer_init(&g_GtmTomPwmHl.drivers.timer, &timerConfig);

        IfxGtm_Tom_PwmHl_initConfig(&pwmHlConfig);

        IfxGtm_Tom_ToutMapP ccx[2], coutx[2];
        ccx[0]   = &IfxGtm_TOM0_4_TOUT10_P00_1_OUT;
        coutx[0] = &IfxGtm_TOM0_5_TOUT11_P00_2_OUT;
        ccx[1]   = &IfxGtm_TOM0_6_TOUT14_P00_5_OUT;
        coutx[1] = &IfxGtm_TOM0_7_TOUT15_P00_6_OUT;
        pwmHlConfig.timer                 = &g_GtmTomPwmHl.drivers.timer;
        pwmHlConfig.tom                   = timerConfig.tom;
        pwmHlConfig.base.deadtime         = 2e-6;
        pwmHlConfig.base.minPulse         = 1e-6;
        pwmHlConfig.base.channelCount     = 2;
        pwmHlConfig.base.emergencyEnabled = FALSE;
        pwmHlConfig.base.outputMode       = IfxPort_OutputMode_pushPull;
        pwmHlConfig.base.outputDriver     = IfxPort_PadDriver_cmosAutomotiveSpeed1;
        pwmHlConfig.base.ccxActiveState   = Ifx_ActiveState_high;
        pwmHlConfig.base.coutxActiveState = Ifx_ActiveState_high;
        pwmHlConfig.ccx                   = ccx;
        pwmHlConfig.coutx                 = coutx;

        IfxGtm_Tom_PwmHl_init(&g_GtmTomPwmHl.drivers.pwm, &pwmHlConfig);

        IfxGtm_Tom_Timer_run(&g_GtmTomPwmHl.drivers.timer);
    }
}


/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void GtmTomPwmHl_init(void)
{
    /* disable interrupts */
    boolean  interruptState = IfxCpu_disableInterrupts();

    /** - GTM clocks */
    Ifx_GTM *gtm = &MODULE_GTM;
    g_GtmTomPwmHl.info.gtmFreq = IfxGtm_Cmu_getModuleFrequency(gtm);
    IfxGtm_enable(gtm);

    /* Set the global clock frequencies */
    IfxGtm_Cmu_setGclkFrequency(gtm, g_GtmTomPwmHl.info.gtmFreq);
    g_GtmTomPwmHl.info.gtmGclkFreq = IfxGtm_Cmu_getGclkFrequency(gtm);

    IfxGtm_Cmu_setClkFrequency(gtm, IfxGtm_Cmu_Clk_0, g_GtmTomPwmHl.info.gtmGclkFreq);
    g_GtmTomPwmHl.info.gtmCmuClk0Freq = IfxGtm_Cmu_getClkFrequency(gtm, IfxGtm_Cmu_Clk_0, TRUE);
    g_GtmTomPwmHl.info.state          = GtmTomPwmHl_State_normal;

    /** - Initialise the GTM part */
    GtmTomPwmHl_initTimer();
    printf("Gtm Tom PwmHl is initialised\n");

    g_GtmTomPwmHl.info.timerValue =  IfxGtm_Tom_Timer_getPeriod(&g_GtmTomPwmHl.drivers.timer);
    g_GtmTomPwmHl.tOn[0] = 0;
    g_GtmTomPwmHl.tOn[1] = 0;

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    IfxGtm_Cmu_enableClocks(gtm, IFXGTM_CMU_CLKEN_FXCLK | IFXGTM_CMU_CLKEN_CLK0);
}


/** \brief run API
 *
 * This function is called from main, background loop
 */


void GtmTomPwmHl_run(void)
{
    IfxGtm_Tom_PwmHl *pwmHl = &g_GtmTomPwmHl.drivers.pwm;
    IfxGtm_Tom_Timer *timer = &g_GtmTomPwmHl.drivers.timer;

    /* Set PWM duty */
	switch (g_GtmTomPwmHl.info.state)
	{

	case GtmTomPwmHl_State_uninit:
		/* GtmTomPwmHl is NOT initialized */

		break;

	case GtmTomPwmHl_State_normal:
		/* Set 0% duty cycle, center aligned */
		IfxGtm_Tom_PwmHl_setMode(pwmHl, Ifx_Pwm_Mode_centerAligned);
		IfxGtm_Tom_Timer_disableUpdate(timer);
		IfxGtm_Tom_PwmHl_setOnTime(pwmHl, g_GtmTomPwmHl.tOn);
		IfxGtm_Tom_Timer_applyUpdate(timer);
		break;

	case GtmTomPwmHl_State_off:
	default:
		/* Set PWM to off */
		IfxGtm_Tom_PwmHl_setMode(pwmHl, Ifx_Pwm_Mode_off);
		IfxGtm_Tom_Timer_disableUpdate(timer);
		IfxGtm_Tom_PwmHl_setOnTime(pwmHl, NULL_PTR);
		IfxGtm_Tom_Timer_applyUpdate(timer);
		break;
	}

}
