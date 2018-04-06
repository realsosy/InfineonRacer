/**
 * \file GtmTomPwmHlDemo.h
 * \brief Demo GtmTomPwmHlDemo
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
 *
 * \defgroup IfxLld_Demo_GtmTomPwmHl_SrcDoc_Main Demo Source
 * \ingroup IfxLld_Demo_GtmTomPwmHl_SrcDoc
 * \defgroup IfxLld_Demo_GtmTomPwmHl_SrcDoc_Main_Interrupt Interrupts
 * \ingroup IfxLld_Demo_GtmTomPwmHl_SrcDoc_Main
 */

#ifndef GTMTOMPWMHL_H
#define GTMTOMPWMHL_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Ifx_Types.h>
#include "Configuration.h"
#include "SysSe/Bsp/Bsp.h"

#include "Gtm/Tom/PwmHl/IfxGtm_Tom_PwmHl.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

typedef enum
{
    GtmTomPwmHl_State_uninit = 0,
    GtmTomPwmHl_State_off,
    GtmTomPwmHl_State_normal,
    GtmTomPwmHl_State_count
}GtmTomPwmHl_State;

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \brief Application information */
typedef struct
{
    struct
    {
        float32           gtmFreq;
        float32           gtmGclkFreq;
        float32           gtmCmuClk0Freq; /**< \brief CMU CLK 0 frequency*/
        Ifx_TimerValue    timerValue;
        GtmTomPwmHl_State state;
    }info;
    Ifx_TimerValue    tOn[2];  /**< \brief PwmHl 0,2 onTime value */
    struct
    {
        IfxGtm_Tom_Timer timer;        /**< \brief Timer driver */
        IfxGtm_Tom_PwmHl pwm;
    }drivers;
    struct
    {
        uint32 counter;
    }isrCounter;
}App_GtmTomPwmHl;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

IFX_EXTERN App_GtmTomPwmHl g_GtmTomPwmHl;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

IFX_EXTERN void GtmTomPwmHl_init(void);
IFX_EXTERN void GtmTomPwmHl_run(void);

#endif
