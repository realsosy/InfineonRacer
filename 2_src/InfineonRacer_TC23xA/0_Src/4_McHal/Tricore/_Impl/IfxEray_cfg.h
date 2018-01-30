/**
 * \file IfxEray_cfg.h
 * \brief ERAY on-chip implementation data 
 * \ingroup IfxLld_Eray 
 *
 * \version iLLD_1_0_0_11_0
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
 * \defgroup IfxLld_Eray ERAY
 * \ingroup IfxLld
 * \defgroup IfxLld_Eray_Impl Implementation
 * \ingroup IfxLld_Eray
 * \defgroup IfxLld_Eray_Std Standard Driver
 * \ingroup IfxLld_Eray
 * \defgroup IfxLld_Eray_Impl_Enumerations Enumerations
 * \ingroup IfxLld_Eray_Impl
 */

#ifndef IFXERAY_CFG_H
#define IFXERAY_CFG_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/


/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define IFXERAY_NUM_MODULES (1)
                
#define IFXERAY_NUM_SLOTS (128)
                


/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Eray_Impl_Enumerations
 * \{ */
/** \brief Node Id in communication cycle.  
 */
typedef enum
{
    IfxEray_NodeId_a = 0,     /**< \brief Ifx_ERAY Node A */
    IfxEray_NodeId_b = 1,     /**< \brief Ifx_ERAY Node B */
    IfxEray_NodeId_none = -1  /**< \brief None of the Ifx_ERAY Nodes */
} IfxEray_NodeId;

/** \} */ 
 

#endif /* IFXERAY_CFG_H */
