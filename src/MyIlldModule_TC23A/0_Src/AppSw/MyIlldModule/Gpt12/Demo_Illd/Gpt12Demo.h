/**
 * \file Gpt12.h
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
 *
 * \defgroup IfxLld_Demo_Gpt12_SrcDoc_Main Demo Source
 * \ingroup IfxLld_Demo_Gpt12_SrcDoc
 * \defgroup IfxLld_Demo_Gpt12_SrcDoc_Main_Interrupt Interrupts
 * \ingroup IfxLld_Demo_Gpt12_SrcDoc_Main
 */

#ifndef GPT12_H
#define GPT12_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include "ConfigurationIsr.h"
#include "Gpt12/IncrEnc/IfxGpt12_IncrEnc.h"

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
    uint32           dummy;     /* Dummy variable */
    IfxGpt12_IncrEnc incrEnc;
    struct
    {
        IfxPort_Pin A;            /**< \brief A */
        IfxPort_Pin B;            /**< \brief B */
        IfxPort_Pin Z;            /**< \brief Z */
    } interface;
    struct
    {
        boolean          run;                  /* Status: TRUE: the encoder turn */
        IfxStdIf_Pos_Dir direction;            /* Direction*/
        uint32           step;                 /* Current step */
        sint32           rawPosition;          /* Expected rawPosition */
        sint32           positionMask;         /* Mask for rawPosition value */
        uint32           resolution;           /* Encoder resolution */
        uint32           multiplicationFactor; /* Encoder multiplication factor */
        float32          updatePeriod;         /* Refresh period */
        float32          speed;                /* Requested encoder speed in rad/s */
    } control;
    struct
    {
        float32          speed;
        float32          rawPosition;
        IfxStdIf_Pos_Dir direction;
    }status;
} App_Gpt12;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN App_Gpt12 g_Gpt12;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void Gpt12Demo_init(void);
IFX_EXTERN void Gpt12Demo_run(void);

#endif
