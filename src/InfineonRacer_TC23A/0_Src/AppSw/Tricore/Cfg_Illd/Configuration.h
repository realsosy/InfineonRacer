/**
 * \file Configuration.h
 * \brief Global configuration
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
#include <_PinMap/IfxQspi_PinMap.h>
#include <_PinMap/IfxPort_PinMap.h>
#include <_PinMap/IfxScu_PinMap.h>
#include <_PinMap/IfxGtm_PinMap.h>
#include <Qspi/Qspi0.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Demo_Template_SrcDoc_Config
 * \{ */
/*______________________________________________________________________________
** Help Macros
**____________________________________________________________________________*/

/** \addtogroup IfxLld_Demo_AsclinShellInterface_SrcDoc_Config
 * \{ */

#define CFG_ASC_BAUDRATE       (115200.0)                   /**< \brief Define the Baudrate */
#define CFG_ASC_RX_BUFFER_SIZE (512)                        /**< \brief Define the Rx buffer size in byte. */
#define CFG_ASC_TX_BUFFER_SIZE (6 * 1024)                   /**< \brief Define the Tx buffer size in byte. */
/** \} */

#define M11_IN						IfxGtm_TOM0_9_TOUT1_P02_1_OUT
#define M12_IN						IfxGtm_TOM0_10_TOUT12_P00_3_OUT
#define M21_IN						IfxGtm_TOM0_11_TOUT3_P02_3_OUT
#define M22_IN						IfxGtm_TOM0_12_TOUT14_P00_5_OUT
#define SRV							IfxGtm_TOM0_7_TOUT32_P33_10_OUT
#define BEEPER                      IfxGtm_TOM0_4_TOUT22_P33_0_OUT

#define LED107						IfxPort_P13_0
#define LED108						IfxPort_P13_1
#define LED109						IfxPort_P13_2
#define LED110						IfxPort_P13_3

#define PORT00_0					IfxPort_P00_0
#define PORT00_1					IfxPort_P00_1

#define M11_INH						IfxPort_P02_0
#define M12_INH						IfxPort_P00_2
#define M21_INH						IfxPort_P02_2
#define M22_INH						IfxPort_P33_5

#define TSL1401_SI					IfxPort_P14_6
#define TSL1401_CLK					IfxPort_P14_7
#define TSL1401_AO_1				9
#define TSL1401_AO_2				10

/* set here the used pins for QSPI0 */
#define QSPI0_MAX_BAUDRATE          50000000  // maximum baudrate which is possible to get a small timequantum
#define QSPI0_SCLK_PIN	            IfxQspi0_SCLK_P20_11_OUT
#define QSPI0_MTSR_PIN	            IfxQspi0_MTSR_P20_14_OUT
#define QSPI0_MRST_PIN	            IfxQspi0_MRSTA_P20_12_IN
#define QSPI0_USE_DMA  // comment line for not using DMA
#define DMA_CH_QSPI0_TX             TFT_DMA_CH_TXBUFF_TO_TXFIFO
#define DMA_CH_QSPI0_RX             TFT_DMA_CH_RXBUFF_FROM_RXFIFO
#define QSPI0_TRANSMIT_CALLBACK     tft_transmit_callback

#define TFT_QSPI_INIT			    qspi0_init
#define TFT_USE_CHIPSELECT          IfxQspi0_SLSO8_P20_6_OUT
#define TFT_USE_SCLK                QSPI0_SCLK_PIN

#define TFT_UPDATE_IRQ              MODULE_SRC.GPSR.GPSR[0].SR0

#define TOUCH_QSPI_INIT			    qspi0_init
#define TOUCH_USE_CHIPSELECT        IfxQspi0_SLSO9_P20_3_OUT
#define TOUCH_USE_INT               IfxPort_P20_0

#define BACKGROUND_LIGHT            IfxGtm_TOM1_1_TOUT69_P20_13_OUT

#define PERFORMANCE_MEASURE         IfxGtm_TOM0_0_TOUT76_P15_5_OUT // we can use P15.5 because no output needed and P15.5 maybe used by I2C

/* set the values for systemtimer */
//#define IFX_CFG_STM_TICKS_PER_MS (100000) /**< \brief Number of STM ticks per millisecond */

/* define the CPU which holds the variable for different parts */
#define TFT_DISPLAY_VAR_LOCATION    0
#define TOUCH_VAR_LOCATION          0

#define USE_TFT
#define TFT_OVER_DAS


#define REFRESH_TFT 2		// Refresh period in 100ms; 1x refresh ~0,8 % CPU load; for graphic-out: 4 colors ~ 1.2 % CPU load, 16 colors ~ 0.8 % CPU load
							// Max refresh rate ~ 40 ms due to QSPI-load

/* 다음 3개중의 하나만 정의해서 사용*/
#define CODE_HAND			// Hand code : default
//#define CODE_ERT			// Using embedded coder
//#define CODE_SCILAB			// Using SciLab


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
