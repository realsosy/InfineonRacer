/**
 * \file BasicStem.h
 * \brief Demo Template
 * \version iLLD_Demos_1_0_0_11_0
 * \copyright Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
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
 * \defgroup IfxLld_Demo_StmDemo_SrcDoc_Main Demo Source
 * \ingroup IfxLld_Demo_StmDemo_SrcDoc
 * \defgroup IfxLld_Demo_StmDemo_SrcDoc_Main_Interrupt Interrupts
 * \ingroup IfxLld_Demo_StmDemo_SrcDoc_Main
 */

#ifndef BASICSTM_H
#define BASICSTM_H 1
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include <stdio.h>
#include "Bsp.h"
#include "ConfigurationIsr.h"
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "IfxPort.h"
#include <Stm/Std/IfxStm.h>
#include <Src/Std/IfxSrc.h>
#include "Cpu0_Main.h"
#include "Cpu/Irq/IfxCpu_Irq.h"

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

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void BasicStm_init(void);
IFX_EXTERN void BasicStm_run(void);

#endif
