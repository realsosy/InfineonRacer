/**
 * \file ConfigurationIsr.h
 * \brief Interrupts configuration.
 *
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
 * \defgroup IfxLld_Demo_StmDemo_SrcDoc_InterruptConfig Interrupt configuration
 * \ingroup IfxLld_Demo_StmDemo_SrcDoc
 */

#ifndef CONFIGURATIONISR_H
#define CONFIGURATIONISR_H
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
 * \addtogroup IfxLld_Demo_StmDemo_SrcDoc_InterruptConfig
 * \{ */

/**
 * \name Interrupt priority configuration.
 * The interrupt priority range is [1,255]
 * \{
 */
#define ISR_PRIORITY_STM_INT0       40 /**< \brief Define the System Timer Interrupt priority.  */
#define ISR_PRIORITY_INCRENC_ZERO   7 /**< \brief Define the Incremental encoder zero interrupt priority.  */

#define ISR_PRIORITY_ASC_0_RX 4         /**< \brief Define the ASC0 receive interrupt priority.  */
#define ISR_PRIORITY_ASC_0_TX 5         /**< \brief Define the ASC0 transmit interrupt priority.  */
#define ISR_PRIORITY_ASC_0_EX 6        /**< \brief Define the ASC0 error interrupt priority.  */

#define ISR_PRIORITY_CPUSRV0        2  /**< \brief Define the conio periodic interrupt priority must be lower than QSPIx priorities.  */
#define ISR_PRIORITY_QSPI0_ER       12  /**< \brief Define the Qspi0 error interrupt priority.  */
#define ISR_PRIORITY_BACKLIGHT      15  /**< \brief Define the TOMx_x compare match interrupt priority.  */
#define ISR_PRIORITY_QSPI0_TX       31  /**< \brief Define the Qspi0 transmit interrupt priority.  */
#define ISR_PRIORITY_QSPI0_RX       51  /**< \brief Define the Qspi0 receive interrupt priority.  */
#define ISR_PRIORITY_OS_TICK        64  /**< \brief Define the TFT refresh interrupt priority.  */
#define ISR_PRIORITY_PERF_MEAS      255 /**< \brief Define the TOMx_x interrupt priority.  */


//#define ISR_PRIORITY_PRINTF_ASC0_TX 5  /**< \brief Define the ASC0 transmit interrupt priority used by printf.c */
//#define ISR_PRIORITY_PRINTF_ASC0_EX 6  /**< \brief Define the ASC0 error interrupt priority used by printf.c */
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
 * \name Interrupt service provider configuration.
 * \{ */
#define ISR_PROVIDER_STM_INT0       IfxSrc_Tos_cpu0         /**< \brief Define the System Timer interrupt provider.  */
#define ISR_PROVIDER_INCRENC_ZERO   IfxSrc_Tos_cpu0          /**< \brief Define the Incremental encoder zero interrupt provider.  */

#define ISR_PROVIDER_ASC_0    IfxSrc_Tos_cpu0         /**< \brief Define the ASC0 interrupt provider.  */

#define ISR_PROVIDER_QSPI0          0     /**< \brief Define the Qspi0 interrupt provider.  */
#define ISR_PROVIDER_PERF_MEAS      0     /**< \brief Define the TOMx_x compare match interrupt provider. */
#define ISR_PROVIDER_BACKLIGHT      0     /**< \brief Define the TOMx_x compare match interrupt provider. */
#define ISR_PROVIDER_CPUSRV0        0     /**< \brief Define the touch data receive interrupt provider.  */
#define ISR_PROVIDER_OS_TICK        0     /**< \brief Define the tft refresh interrupt provider.  */

//#define ISR_PROVIDER_PRINTF_ASC0_TX IfxSrc_Tos_cpu0         /**< \brief Define the ASC0 transmit interrupt provider used by printf.c   */
//#define ISR_PROVIDER_PRINTF_ASC0_EX IfxSrc_Tos_cpu0         /**< \brief Define the ASC0 error interrupt provider used by printf.c */
/** \} */

/**
 * \name Interrupt configuration.
 * \{ */
#define INTERRUPT_STM_INT0          ISR_ASSIGN(ISR_PRIORITY_STM_INT0, ISR_PROVIDER_STM_INT0)                            /**< \brief Define the System Timer interrupt priority.  */
#define INTERRUPT_INCRINC_ZERO      ISR_ASSIGN(ISR_PRIORITY_INCRENC_ZERO, ISR_PROVIDER_INCRENC_ZERO)               /**< \brief Define the  Incremental encoder zero interrupt priority.  */

#define INTERRUPT_ASC_0_RX    ISR_ASSIGN(ISR_PRIORITY_ASC_0_RX, ISR_PROVIDER_ASC_0)                 /**< \brief Define the ASC0 receive interrupt priority.  */
#define INTERRUPT_ASC_0_TX    ISR_ASSIGN(ISR_PRIORITY_ASC_0_TX, ISR_PROVIDER_ASC_0)                 /**< \brief Define the ASC0 transmit interrupt priority.  */
#define INTERRUPT_ASC_0_EX    ISR_ASSIGN(ISR_PRIORITY_ASC_0_EX, ISR_PROVIDER_ASC_0)                 /**< \brief Define the ASC0 error interrupt priority.  */

//#define INTERRUPT_PRINTF_ASC0_TX    ISR_ASSIGN(ISR_PRIORITY_PRINTF_ASC0_TX, ISR_PROVIDER_PRINTF_ASC0_TX)                /**< \brief Define the ASC0 transmit interrupt priority used by printf.c */
//#define INTERRUPT_PRINTF_ASC0_EX    ISR_ASSIGN(ISR_PRIORITY_PRINTF_ASC0_EX, ISR_PROVIDER_PRINTF_ASC0_EX)                /**< \brief Define the ASC0 error interrupt priority used by printf.c */
//
/** \} */

/** \} */
//------------------------------------------------------------------------------

#endif
