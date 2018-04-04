/**
 * \file AsclinAscDemo.c
 * \brief Demo AsclinAscDemo
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
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include "AsclinAscDemo.h"

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

App_AsclinAsc g_AsclinAsc; /**< \brief Demo information */

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Demo_AsclinAsc_SrcDoc_Main_Interrupt
 * \{ */

/** \name Interrupts for Transmit
 * \{ */

IFX_INTERRUPT(asclin0TxISR, 0, ISR_PRIORITY_ASC_0_TX)
{
    IfxAsclin_Asc_isrTransmit(&g_AsclinAsc.drivers.asc0);
}

/** \} */

/** \name Interrupts for Receive
 * \{ */

IFX_INTERRUPT(asclin0RxISR, 0, ISR_PRIORITY_ASC_0_RX)
{
    IfxAsclin_Asc_isrReceive(&g_AsclinAsc.drivers.asc0);
}

/** \} */

/** \name Interrupts for Error
 * \{ */

IFX_INTERRUPT(asclin0ErISR, 0, ISR_PRIORITY_ASC_0_EX)
{
    IfxAsclin_Asc_isrError(&g_AsclinAsc.drivers.asc0);
}

/** \} */

/** \} */

/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void AsclinAscDemo_init(void)
{
    /* disable interrupts */
    boolean              interruptState = IfxCpu_disableInterrupts();

    /* create module config */
    IfxAsclin_Asc_Config ascConfig;
    IfxAsclin_Asc_initModuleConfig(&ascConfig, &MODULE_ASCLIN0);

    /* set the desired baudrate */
    ascConfig.baudrate.prescaler    = 1;
    ascConfig.baudrate.baudrate     = 115200; /* FDR values will be calculated in initModule */
    ascConfig.baudrate.oversampling = IfxAsclin_OversamplingFactor_4;

    /* ISR priorities and interrupt target */
    ascConfig.interrupt.txPriority    = ISR_PRIORITY_ASC_0_TX;
    ascConfig.interrupt.rxPriority    = ISR_PRIORITY_ASC_0_RX;
    ascConfig.interrupt.erPriority    = ISR_PRIORITY_ASC_0_EX;
    ascConfig.interrupt.typeOfService = (IfxSrc_Tos)IfxCpu_getCoreIndex();

    /* FIFO configuration */
    ascConfig.txBuffer     = g_AsclinAsc.ascBuffer.tx;
    ascConfig.txBufferSize = ASC_TX_BUFFER_SIZE;

    ascConfig.rxBuffer     = g_AsclinAsc.ascBuffer.rx;
    ascConfig.rxBufferSize = ASC_RX_BUFFER_SIZE;

    /* pin configuration */
    const IfxAsclin_Asc_Pins pins = {
        NULL_PTR,                     IfxPort_InputMode_pullUp,        /* CTS pin not used */
        &IfxAsclin0_RXA_P14_1_IN, IfxPort_InputMode_pullUp,        /* Rx pin */
        NULL_PTR,                     IfxPort_OutputMode_pushPull,     /* RTS pin not used */
        &IfxAsclin0_TX_P14_0_OUT, IfxPort_OutputMode_pushPull,     /* Tx pin */
        IfxPort_PadDriver_cmosAutomotiveSpeed1
    };
    ascConfig.pins = &pins;

    /* initialize module */
    IfxAsclin_Asc_initModule(&g_AsclinAsc.drivers.asc0, &ascConfig);

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    printf("Asclin Asc is initialised\n");
}


/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
void AsclinAscDemo_run(void)
{
    uint32 i, errors = 0;

    /* prepare data to transmit and receive */
    g_AsclinAsc.count = 5;

    for (i = 0; i < g_AsclinAsc.count; ++i)
    {
        g_AsclinAsc.txData[i] = i + '1';    /* {'1', '2', '3' ,'4' ,'5'} */
        g_AsclinAsc.rxData[i] = 0;
    }

    /* Transmit data */
    IfxAsclin_Asc_write(&g_AsclinAsc.drivers.asc0, g_AsclinAsc.txData, &g_AsclinAsc.count, TIME_INFINITE);

    /* Receive data */
    IfxAsclin_Asc_read(&g_AsclinAsc.drivers.asc0, g_AsclinAsc.rxData, &g_AsclinAsc.count, TIME_INFINITE);

    /* check received data */
    for (i = 0; i < 5; ++i)
    {
        if (g_AsclinAsc.rxData[i] != g_AsclinAsc.txData[i])
        {
            ++errors;
        }
    }

    if (errors)
    {
    	IfxAsclin_Asc_write(&g_AsclinAsc.drivers.asc0, g_AsclinAsc.rxData, &g_AsclinAsc.count , TIME_INFINITE);
        printf("ERROR: received data doesn't match with expected data (%lu mismatches)\n", errors);
    }
    else
    {
        IfxAsclin_Asc_write(&g_AsclinAsc.drivers.asc0, g_AsclinAsc.rxData, &g_AsclinAsc.count , TIME_INFINITE);
        printf("OK: received data matches with expected data\n");
    }

   printf("Asclin Asc data transfers are finished\n");
}
