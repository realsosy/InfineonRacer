/**
 * \file AsclinShellInterface.h
 * \brief ASCLIN Shell interface demo
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
 * \defgroup IfxLld_Demo_AsclinShellInterface_SrcDoc_Main Demo Source
 * \ingroup IfxLld_Demo_AsclinShellInterface_SrcDoc
 * \defgroup IfxLld_Demo_AsclinShellInterface_SrcDoc_Main_Interrupt Interrupts
 * \ingroup IfxLld_Demo_AsclinShellInterface_SrcDoc_Main
 */

#ifndef ASCLINSHELLINTERFACE_H
#define ASCLINSHELLINTERFACE_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Configuration.h"
#include "SysSe/Bsp/Bsp.h"

#include "SysSe/Comm/Ifx_Console.h"
#include "SysSe/Comm/Ifx_Shell.h"
#include "Asclin/Asc/IfxAsclin_Asc.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define SW_REVISION_DATE    (0x20140630)            // Software date 0xyyyymmdd, with yyyy the year and mm the month and dd the day
#define SW_REVISION         (0x00000103)            // Software version and revision 0x0000vvrr, with vv the version number and rr the revision number
#if defined(__TASKING__)
#  define SW_COMPILER_VERSION ((COMPILER_VERSION / 1000) << 16) | ((COMPILER_VERSION % 10) << 8) | (COMPILER_REVISION)
#endif

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

typedef struct
{
    uint8 tx[CFG_ASC_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
    uint8 rx[CFG_ASC_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
} AppAscBuffer;

/** \brief Application information */
typedef struct
{
    struct
    {
        sint32 srcRev;                  /**< \brief Project source code revision number */
        sint32 srcRevDate;              /**< \brief Project source code revision Date */
        sint32 compilerVer;             /**< \brief Compiler version */
    }            info;
    AppAscBuffer ascBuffer;             /**< \brief ASC interface buffer */
    struct
    {
        IfxAsclin_Asc asc;              /**< \brief ASC interface */
    }         drivers;
    Ifx_Shell shell;                    /**< \brief Shell object */
    struct
    {
        IfxStdIf_DPipe asc;
    }stdIf;
} App_AsclinShellInterface;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

IFX_EXTERN App_AsclinShellInterface g_AsclinShellInterface;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

IFX_EXTERN void AsclinShellInterface_init(void);
IFX_EXTERN void AsclinShellInterface_run(void);

#endif
