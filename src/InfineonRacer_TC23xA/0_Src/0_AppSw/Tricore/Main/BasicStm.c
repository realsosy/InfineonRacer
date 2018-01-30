/**
 * \file BasicStm.c
 * \brief Stm
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

#include "BasicStm.h"
#include "AppTaskFu.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct
{
    Ifx_STM             *stmSfr;            /**< \brief Pointer to Stm register base */
    IfxStm_CompareConfig stmConfig;         /**< \brief Stm Configuration structure */
    volatile uint8       LedBlink;          /**< \brief LED state variable */
    volatile uint32      counter;           /**< \brief interrupt counter */
} Basic_Stm;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

Basic_Stm g_Stm; /**< \brief Stm global data */
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
static void BlinkLed_run(void);
static void BlinkLed_init(void);
/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/** \addtogroup IfxLld_Demo_Stm_SrcDoc_Main_Interrupt
 * \{ */

/** \name Interrupts for SystemTimer(STM) driver.
 * \{ */
IFX_INTERRUPT(STM_Int0Handler, 0, ISR_PRIORITY_STM_INT0);
/** \} */

/** \} */
/** \brief Handle SystemTimer(STM) interrupt
 *
 * \isrProvider \ref ISR_PROVIDER_SystemTimer(STM)
 * \isrPriority \ref ISR_PRIORITY_SystemTimer(STM)
 *
 */
void STM_Int0Handler(void)
{
    IfxStm_clearCompareFlag(g_Stm.stmSfr, g_Stm.stmConfig.comparator);
#ifdef SIMULATION
	IfxStm_increaseCompare(g_Stm.stmSfr, g_Stm.stmConfig.comparator, 1000);
#else
	IfxStm_increaseCompare(g_Stm.stmSfr, g_Stm.stmConfig.comparator, TimeConst_1ms);
#endif
    IfxCpu_enableInterrupts();

    g_Stm.counter++;
    if(g_Stm.counter == 1000){
    	g_Stm.counter = 0;
    }

    task_flag_1m = TRUE;

    if(g_Stm.counter % 10 == 0){
    	task_flag_10m = TRUE;
    }
    if(g_Stm.counter % 100 == 0){
        task_flag_100m = TRUE;
        BlinkLed_run();
    }
    if(g_Stm.counter % 1000 == 0){
        task_flag_1000m = TRUE;
    }

    appIsrCb_1ms();

}


/** \brief LED Blinking
 *
 * This function blinks the LED connected to P 33.6 and counts the number
 *	of times the interrupt occurs.
 */
static void BlinkLed_run(void)
{
    g_Stm.LedBlink ^= 1;
    if (g_Stm.LedBlink == TRUE)
    {
        IfxPort_setPinState(&MODULE_P13, 0, IfxPort_State_high);
    }
    else
    {
        IfxPort_setPinState(&MODULE_P13, 0, IfxPort_State_low);
    }

}


/** \brief LED Initialization
 *
 * This function initializes the LED connected to P13.0
 */
static void BlinkLed_init(void)
{
    IfxPort_setPinMode(&MODULE_P13, 0, IfxPort_Mode_outputPushPullGeneral);
}


/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void BasicStm_init(void)
{
//    printf("IfxStmDemo_init() called\n");

    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    g_Stm.LedBlink = 0;
    g_Stm.counter  = 0;

    initTime();

    // suspend by debugger enabled
    IfxStm_enableOcdsSuspend (&MODULE_STM0);

    g_Stm.stmSfr = &MODULE_STM0;
    IfxStm_initCompareConfig(&g_Stm.stmConfig);

    g_Stm.stmConfig.triggerPriority = ISR_PRIORITY_STM_INT0;
    g_Stm.stmConfig.typeOfService   = IfxSrc_Tos_cpu0;
#ifdef SIMULATION
    g_SrcSwInt.stmConfig.ticks      = 1000;
#else
    g_Stm.stmConfig.ticks           = TimeConst_1ms;
#endif
    IfxStm_initCompare(g_Stm.stmSfr, &g_Stm.stmConfig);

    BlinkLed_init();

    appTaskfu_init();

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);
}


/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
void BasicStm_run(void)
{
//    printf("IfxStmDemo_run() called\n");
	if(task_flag_1m == TRUE){
		appTaskfu_1ms();
		task_flag_1m = FALSE;
	}

	if(task_flag_10m == TRUE){
		appTaskfu_10ms();
		task_flag_10m = FALSE;
	}

	if(task_flag_100m == TRUE){
		appTaskfu_100ms();
		task_flag_100m = FALSE;
	}

	if(task_flag_1000m == TRUE){
		appTaskfu_1000ms();
		task_flag_1000m = FALSE;
	}

	appTaskfu_idle();
//    printf("OK: checks passed \n");
}
