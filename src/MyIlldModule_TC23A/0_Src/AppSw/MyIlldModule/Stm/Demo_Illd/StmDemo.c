/**
 * \file StmDemo.c
 * \brief Stm Demo
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

#include <stdio.h>

#include "StmDemo.h"

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

App_Stm g_Stm; /**< \brief Stm global data */
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
static void IfxBlinkLed_Task(void);
static void IfxBlinkLed_Init(void);
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
	IfxStm_increaseCompare(g_Stm.stmSfr, g_Stm.stmConfig.comparator, TimeConst_1s);
#endif
    IfxCpu_enableInterrupts();
    IfxBlinkLed_Task();
}


/** \brief Port Pin State
 *
 * This function changes the Port Pin state
 */
static void setOutputPin(Ifx_P *port, uint8 pin, boolean state)
{
    if (state)
    {
        IfxPort_setPinState(port, pin, IfxPort_State_high);
    }
    else
    {
        IfxPort_setPinState(port, pin, IfxPort_State_low);
    }
}


/** \brief LED Blinking
 *
 * This function blinks the LED connected to P 33.6 and counts the number
 *	of times the interrupt occurs.
 */
static void IfxBlinkLed_Task(void)
{
    g_Stm.LedBlink ^= 1;

    setOutputPin(&MODULE_P13, 0, g_Stm.LedBlink);

    g_Stm.counter++;
}


/** \brief LED Initialization
 *
 * This function initializes the LED connected to P33.6
 */
static void IfxBlinkLed_Init(void)
{
    IfxPort_setPinMode(&MODULE_P13, 0, IfxPort_Mode_outputPushPullGeneral);
}


/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void IfxStmDemo_init(void)
{
    printf("IfxStmDemo_init() called\n");

    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    g_Stm.LedBlink = 0;
    g_Stm.counter  = 0;

    initTime();

    g_Stm.stmSfr = &MODULE_STM0;
    IfxStm_initCompareConfig(&g_Stm.stmConfig);

    g_Stm.stmConfig.triggerPriority = ISR_PRIORITY_STM_INT0;
    g_Stm.stmConfig.typeOfService   = IfxSrc_Tos_cpu0;
#ifdef SIMULATION
    g_SrcSwInt.stmConfig.ticks      = 1000;
#else
    g_Stm.stmConfig.ticks           = TimeConst_1s;
#endif
    IfxStm_initCompare(g_Stm.stmSfr, &g_Stm.stmConfig);

    IfxBlinkLed_Init();

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);
}


/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
void IfxStmDemo_run(void)
{
    printf("IfxStmDemo_run() called\n");

    while (g_Stm.counter < 10)
    {}

    printf("OK: checks passed \n");
}
