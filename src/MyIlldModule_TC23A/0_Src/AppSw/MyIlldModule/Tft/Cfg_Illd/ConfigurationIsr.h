/**
 * \file ConfigurationIsr.h
 * \brief Interrupts configuration.
 *
 *
 * \version iLLD_Demos_0_1_0_11
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
 * \defgroup IfxLld_Demo_QspiDmaDemo_SrcDoc_InterruptConfig Interrupt configuration
 * \ingroup IfxLld_Demo_QspiDmaDemo_SrcDoc
 */

#ifndef CONFIGURATIONISR_H
#define CONFIGURATIONISR_H

#include <_Impl/IfxSrc_cfg.h>
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \brief Build the ISR configuration object
 * \param no interrupt priority
 * \param cpu assign CPU number
 */
#define ISR_ASSIGN(no, cpu)  ((no << 8) + cpu)

/** \brief extract the priority out of the ISR object */
#define ISR_PRIORITY(no_cpu) (no_cpu >> 8)

/** \brief extract the service provider  out of the ISR object */
#define ISR_PROVIDER(no_cpu) (no_cpu % 8)
/**
 * \addtogroup IfxLld_Demo_QspiDmaDemo_SrcDoc_InterruptConfig
 * \{ */

/**
 * \name Interrupt priority configuration for CPU.
 * The interrupt priority range is [1,255]
 * \{
 */

#define ISR_PRIORITY_MEASUREMENT    10  /**< \brief Define the GPT compare match interrupt priority.  */

#define ISR_PRIORITY_TIMER_1MS      1  /**< \brief Define the 1ms timer interrupt priority.  */

#define ISR_PRIORITY_CPUSRV0        2  /**< \brief Define the conio periodic interrupt priority must be lower than QSPIx priorities.  */

#define ISR_PRIORITY_QSPI0_ER       12  /**< \brief Define the Qspi0 error interrupt priority.  */

#define ISR_PRIORITY_BACKLIGHT      15  /**< \brief Define the TOMx_x compare match interrupt priority.  */

#define ISR_PRIORITY_QSPI0_TX       31  /**< \brief Define the Qspi0 transmit interrupt priority.  */

#define ISR_PRIORITY_QSPI0_RX       51  /**< \brief Define the Qspi0 receive interrupt priority.  */

#define ISR_PRIORITY_OS_TICK        64  /**< \brief Define the TFT refresh interrupt priority.  */

#define ISR_PRIORITY_PERF_MEAS      255 /**< \brief Define the TOMx_x interrupt priority.  */

#define ISR_PROVIDER_TIMER_1MS      IfxSrc_Tos_cpu0 /**< \brief Define the 1ms timer interrupt provider.  */

/** \} */

/**
 * \name DMA channel configuration.
 * The DMA channel range is [0,15] for TC22X/TC23X
 * \{
 */

#define TFT_DMA_CH_TXBUFF_TO_TXFIFO        0 /**< \brief Dma channel used for TFT Master Qspi Transmit  */
#define TFT_DMA_CH_RXBUFF_FROM_RXFIFO      1 /**< \brief Dma channel used for TFT Master Qspi Receive  */

/** \} */

/**
 * \name Interrupt service provider configuration (use only number for variable section definition).
 * \{ */
#define ISR_PROVIDER_QSPI0          0     /**< \brief Define the Qspi0 interrupt provider.  */

#define ISR_PROVIDER_PERF_MEAS      0     /**< \brief Define the TOMx_x compare match interrupt provider. */

#define ISR_PROVIDER_BACKLIGHT      0     /**< \brief Define the TOMx_x compare match interrupt provider. */

#define ISR_PROVIDER_CPUSRV0        0     /**< \brief Define the touch data receive interrupt provider.  */

#define ISR_PROVIDER_OS_TICK        0     /**< \brief Define the tft refresh interrupt provider.  */

/** \} */

#define INTERRUPT_TIMER_1MS         ISR_ASSIGN(ISR_PRIORITY_TIMER_1MS, ISR_PROVIDER_TIMER_1MS)           /**< \brief Define the 1ms timer interrupt priority.  */


//------------------------------------------------------------------------------

#endif
