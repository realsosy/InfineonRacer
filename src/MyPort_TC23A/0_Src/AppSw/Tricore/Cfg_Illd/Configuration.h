/**
 * \file Configuration.h
 * \brief Global configuration
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
 * \defgroup IfxLld_Demo_StmDemo_SrcDoc_Config Application configuration
 * \ingroup IfxLld_Demo_StmDemo_SrcDoc
 *
 *
 */

#ifndef CONFIGURATION_H
#define CONFIGURATION_H
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "Ifx_Cfg.h"
#include "ConfigurationIsr.h"
#include "_Impl/IfxGlobal_cfg.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Demo_Template_SrcDoc_Config
 * \{ */
/*______________________________________________________________________________
** Help Macros
**____________________________________________________________________________*/

#define LED107						IfxPort_P13_0
#define LED108						IfxPort_P13_1
#define LED109						IfxPort_P13_2
#define LED110						IfxPort_P13_3

#define PORT00_0					IfxPort_P00_0
#define PORT00_1					IfxPort_P00_1


/**
 * \name Macros for Regression Runs
 * \{
 */
#ifndef REGRESSION_RUN_STOP_PASS
#define REGRESSION_RUN_STOP_PASS
#endif

#ifndef REGRESSION_RUN_STOP_FAIL
#define REGRESSION_RUN_STOP_FAIL
#endif
/** \} */

/** \} */
#endif
