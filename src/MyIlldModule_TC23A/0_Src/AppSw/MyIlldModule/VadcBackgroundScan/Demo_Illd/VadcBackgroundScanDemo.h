/**
 * \file VadcBackgroundScanDemo.h
 * \brief Demo VadcBackgroundScanDemo
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
 *
 * \defgroup IfxLld_Demo_VadcBackgroundScanDemo_SrcDoc_Main Demo Source
 * \ingroup IfxLld_Demo_VadcBackgroundScanDemo_SrcDoc
 * \defgroup IfxLld_Demo_VadcBackgroundScanDemo_SrcDoc_Main_Interrupt Interrupts
 * \ingroup IfxLld_Demo_VadcBackgroundScanDemo_SrcDoc_Main
 */

#ifndef VADCBACKGROUNDSCANDEMO_H
#define VADCBACKGROUNDSCANDEMO_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Vadc/Std/IfxVadc.h>
#include <Vadc/Adc/IfxVadc_Adc.h>
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
    IfxVadc_Adc vadc;   /* VADC handle*/
    IfxVadc_Adc_Group adcGroup;
} App_VadcBackgroundScan;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN App_VadcBackgroundScan g_VadcBackgroundScan;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void VadcBackgroundScanDemo_init(void);
IFX_EXTERN void VadcBackgroundScanDemo_run(void);

#endif
