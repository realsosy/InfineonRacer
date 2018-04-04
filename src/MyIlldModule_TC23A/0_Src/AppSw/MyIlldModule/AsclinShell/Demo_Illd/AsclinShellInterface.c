/**
 * \file AsclinShellInterface.c
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
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "AsclinShellInterface.h"
#include "SysSe/Time/Ifx_DateTime.h"
#include "IfxLldVersion.h"
#include "_Impl/IfxGlobal_cfg.h"
#include "Cpu0_Main.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define SHELL_HELP_DESCRIPTION_TEXT                                 \
    "     : Display command list."ENDL                              \
    "           A command followed by a question mark '?' will"ENDL \
    "           show the command syntax"

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

App_AsclinShellInterface g_AsclinShellInterface; /**< \brief Demo information */

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

boolean AppShell_status(pchar args, void *data, IfxStdIf_DPipe *io);
boolean AppShell_info(pchar args, void *data, IfxStdIf_DPipe *io);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/** \brief Application shell command list */
const Ifx_Shell_Command AppShell_commands[] = {
    {"status", "   : Show the application status", &g_AsclinShellInterface,       &AppShell_status,    },
    {"info",   "     : Show the welcome screen",   &g_AsclinShellInterface,       &AppShell_info,      },
    {"help",   SHELL_HELP_DESCRIPTION_TEXT,        &g_AsclinShellInterface.shell, &Ifx_Shell_showHelp, },
    IFX_SHELL_COMMAND_LIST_END
};

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/** \addtogroup IfxLld_Demo_AsclinShellInterface_SrcDoc_Main_Interrupt
 * \{ */

/** \name Interrupts for Serial interface
 * \{ */

IFX_INTERRUPT(ISR_Asc_0_rx, 0, ISR_PRIORITY_ASC_0_RX);
IFX_INTERRUPT(ISR_Asc_0_tx, 0, ISR_PRIORITY_ASC_0_TX);
IFX_INTERRUPT(ISR_Asc_0_ex, 0, ISR_PRIORITY_ASC_0_EX);

/** \} */

/** \} */

/** \brief Handle Asc0 Rx interrupt
 *
 * \isrProvider \ref ISR_PROVIDER_ASC_0
 * \isrPriority \ref ISR_PRIORITY_ASC_0_RX
 *
 * - Configuration of this interrupt is done by Asc_If_init()
 * - This interrupt is raised each time a data have been received on the serial interface.
 *   and Asc_If_receiveIrq() will be called
 */
void ISR_Asc_0_rx(void)
{
    IfxCpu_enableInterrupts();
    IfxStdIf_DPipe_onReceive(&g_AsclinShellInterface.stdIf.asc);
}


/** \brief Handle Asc0 Tx interrupt
 *
 * \isrProvider \ref ISR_PROVIDER_ASC_0
 * \isrPriority \ref ISR_PRIORITY_ASC_0_TX
 *
 * - Configuration of this interrupt is done by Asc_If_init()
 * - This interrupt is raised each time the serial interface transmit buffer get empty
 *   and Asc_If_transmitIrq() will be called
 */
void ISR_Asc_0_tx(void)
{
    IfxCpu_enableInterrupts();
    IfxStdIf_DPipe_onTransmit(&g_AsclinShellInterface.stdIf.asc);
}


/** \brief Handle Asc0 Ex interrupt.
 *
 * \isrProvider \ref ISR_PROVIDER_ASC_0
 * \isrPriority \ref ISR_PRIORITY_ASC_0_EX
 *
 * - Configuration of this interrupt is done by Asc_If_init()
 * - This interrupt is raised each time an error occurs on the serial interface and
 *   Asc_If_errorIrq() will be called.
 */
void ISR_Asc_0_ex(void)
{
    IfxCpu_enableInterrupts();
    IfxStdIf_DPipe_onError(&g_AsclinShellInterface.stdIf.asc);
}


/** \addtogroup IfxLld_Demo_AsclinShellInterface_SrcDoc_Main_Interrupt
 * \{ */

/** Send the welcome screen to the Terminal
 *
 */
void welcomeScreen(App_AsclinShellInterface *app, IfxStdIf_DPipe *io)
{
    IfxStdIf_DPipe_print(io, ENDL ""ENDL);
    IfxStdIf_DPipe_print(io, "******************************************************************************"ENDL);
    IfxStdIf_DPipe_print(io, "*******                                                                *******"ENDL);
    IfxStdIf_DPipe_print(io, "*******  Infineon "IFXGLOBAL_DERIVATIVE_NAME " uC                                             *******"ENDL);
    IfxStdIf_DPipe_print(io, "******************************************************************************"ENDL);
    IfxStdIf_DPipe_print(io, "******************************************************************************"ENDL);
    IfxStdIf_DPipe_print(io, "******* Copyright (c) 2013 Infineon Technologies AG.                   *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* All rights reserved.                                           *******"ENDL);
    IfxStdIf_DPipe_print(io, "*******                                                                *******"ENDL);
    IfxStdIf_DPipe_print(io, "*******                        IMPORTANT NOTICE                        *******"ENDL);
    IfxStdIf_DPipe_print(io, "*******                                                                *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* Infineon Technologies AG (Infineon) is supplying this file for *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* use exclusively with Infineon's microcontroller products. This *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* file can be freely distributed within development tools that   *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* are supporting such microcontroller products.                  *******"ENDL);
    IfxStdIf_DPipe_print(io, "*******                                                                *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* THIS SOFTWARE IS PROVIDED 'AS IS'.  NO WARRANTIES, WHETHER     *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO,  *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A        *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. INFINEON SHALL NOT, *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR    *******"ENDL);
    IfxStdIf_DPipe_print(io, "******* CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.              *******"ENDL);
    IfxStdIf_DPipe_print(io, "******************************************************************************"ENDL);
    IfxStdIf_DPipe_print(io, "*******  Software Version Date : %4X/%2X/%2X                            *******"ENDL, app->info.srcRevDate >> 16, (app->info.srcRevDate >> 8) & 0xFF, (app->info.srcRevDate & 0xFF));
    IfxStdIf_DPipe_print(io, "*******  Software Version      : %2d.%02d                                 *******"ENDL, (app->info.srcRev >> 8) & 0xFF, (app->info.srcRev >> 0) & 0xFF);
    IfxStdIf_DPipe_print(io, "*******  iLLD version          : %d.%d.%d.%d.%d                             *******"ENDL, IFX_LLD_VERSION_GENERATION, IFX_LLD_VERSION_MAJOR, IFX_LLD_VERSION_MAJOR_UPDATE, IFX_LLD_VERSION_MINOR, IFX_LLD_VERSION_REVISION);
    IfxStdIf_DPipe_print(io, "*******  "COMPILER_NAME " Compiler      : %ld.%1dr%1d                                 *******"ENDL, (app->info.compilerVer >> 16) & 0xFF, (app->info.compilerVer >> 8) & 0xFF, (app->info.compilerVer >> 0) & 0xFF);
    IfxStdIf_DPipe_print(io, "*******  Author                : Alann Denais (ATV SYS SE)             *******"ENDL);
    IfxStdIf_DPipe_print(io, "******************************************************************************"ENDL);
}


/** \brief Handle the 'info' command.
 *
 * \par Syntax
 * - info : Show application information */
boolean AppShell_info(pchar args, void *data, IfxStdIf_DPipe *io)
{
    App_AsclinShellInterface *app = (App_AsclinShellInterface *)data;

    welcomeScreen(app, io);
    return TRUE;
}


/** \brief Handle the 'status' command
 *
 * \par Syntax
 *  - status : Show the application internal state
 */
boolean AppShell_status(pchar args, void *data, IfxStdIf_DPipe *io)
{
    if (Ifx_Shell_matchToken(&args, "?") != FALSE)
    {
        IfxStdIf_DPipe_print(io, "Syntax     : status"ENDL);
        IfxStdIf_DPipe_print(io, "           > Show the application internal state"ENDL);
    }
    else
    {
        Ifx_DateTime rt;
        DateTime_get(&rt);
        IfxStdIf_DPipe_print(io, "Real-time: %02d:%02d:%02d"ENDL, rt.hours, rt.minutes, rt.seconds);
        IfxStdIf_DPipe_print(io, "CPU Frequency: %ld Hz"ENDL, (sint32)g_AppCpu0.info.cpuFreq);
        IfxStdIf_DPipe_print(io, "SYS Frequency: %ld Hz"ENDL, (sint32)g_AppCpu0.info.sysFreq);
        IfxStdIf_DPipe_print(io, "STM Frequency: %ld Hz"ENDL, (sint32)g_AppCpu0.info.stmFreq);
    }

    return TRUE;
}


/** Initialise the serial interafce
 *
 */
void initSerialInterface(void)
{
    {   /** - Serial interface */
        IfxAsclin_Asc_Config config;
        IfxAsclin_Asc_initModuleConfig(&config, &MODULE_ASCLIN0);
        config.baudrate.baudrate             = CFG_ASC_BAUDRATE;
        config.baudrate.oversampling         = IfxAsclin_OversamplingFactor_16;
        config.bitTiming.medianFilter        = IfxAsclin_SamplesPerBit_three;
        config.bitTiming.samplePointPosition = IfxAsclin_SamplePointPosition_8;
        config.interrupt.rxPriority          = ISR_PRIORITY(INTERRUPT_ASC_0_RX);
        config.interrupt.txPriority          = ISR_PRIORITY(INTERRUPT_ASC_0_TX);
        config.interrupt.erPriority          = ISR_PRIORITY(INTERRUPT_ASC_0_EX);
        config.interrupt.typeOfService       = ISR_PROVIDER_ASC_0;
        IfxAsclin_Asc_Pins ascPins = {
            .cts       = NULL_PTR,
            .ctsMode   = IfxPort_InputMode_noPullDevice,
            .rx        = &IfxAsclin0_RXA_P14_1_IN,
            .rxMode    = IfxPort_InputMode_noPullDevice,
            .rts       = NULL_PTR,
            .rtsMode   = IfxPort_OutputMode_pushPull,
            .tx        = &IfxAsclin0_TX_P14_0_OUT,
            .txMode    = IfxPort_OutputMode_pushPull,
            .pinDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1
        };
        config.pins         = &ascPins;
        config.rxBuffer     = g_AsclinShellInterface.ascBuffer.rx;
        config.txBuffer     = g_AsclinShellInterface.ascBuffer.tx;
        config.txBufferSize = CFG_ASC_TX_BUFFER_SIZE;
        config.rxBufferSize = CFG_ASC_RX_BUFFER_SIZE;
        IfxAsclin_Asc_initModule(&g_AsclinShellInterface.drivers.asc, &config);

        /* Connect the standard asc interface to the device driver*/
        IfxAsclin_Asc_stdIfDPipeInit(&g_AsclinShellInterface.stdIf.asc, &g_AsclinShellInterface.drivers.asc);
    }

    /* Ifx_Console initialisation */
    Ifx_Console_init(&g_AsclinShellInterface.stdIf.asc);

    /* Assert initialisation */
    Ifx_Assert_setStandardIo(&g_AsclinShellInterface.stdIf.asc);
}


void AsclinShellInterface_init(void)
{
    /** - Initialise the time constants */
    initTime();

    /** - Initialise the serial interface and the console */
    initSerialInterface();

    g_AsclinShellInterface.info.srcRev      = SW_REVISION;
    g_AsclinShellInterface.info.srcRevDate  = SW_REVISION_DATE;
#if defined(__TASKING__)
    g_AsclinShellInterface.info.compilerVer = SW_COMPILER_VERSION;
#else
    g_AsclinShellInterface.info.compilerVer = 0;
#endif

    /** - Enable the global interrupts of this CPU */
    restoreInterrupts(TRUE);

    Ifx_SizeT count = 52;

    Ifx_Console_print(ENDL);

    /** - Simple print using IfxAsclin_Asc_write API */
    IfxAsclin_Asc_write(&g_AsclinShellInterface.drivers.asc, "Hello world!  => print using IfxAsclin_Asc_write()\n", &count, TIME_INFINITE);

    /** - Simple print using Ifx_Console_print API */
    Ifx_Console_print(ENDL "Hello world!  => print using Ifx_Console_print()"ENDL);

    /** - Simple print using IfxStdIf_DPipe_print API */
    IfxStdIf_DPipe_print(&g_AsclinShellInterface.stdIf.asc, ENDL "Hello world!  => print using IfxStdIf_DPipe_print()"ENDL);

    /** - Show the welcome screen using the standard DPipe interface */
    welcomeScreen(&g_AsclinShellInterface, &g_AsclinShellInterface.stdIf.asc);

    /** - Initialise the shell interface  */
    {
        Ifx_Shell_Config config;
        Ifx_Shell_initConfig(&config);
        config.standardIo     = &g_AsclinShellInterface.stdIf.asc;
        config.commandList[0] = &AppShell_commands[0];

        Ifx_Shell_init(&g_AsclinShellInterface.shell, &config);
    }

    Ifx_Console_print(ENDL "Enter 'help' to see the available commands"ENDL);
}


void AsclinShellInterface_run(void)
{
    /** Handle the shell interface */
    Ifx_Shell_process(&g_AsclinShellInterface.shell);
}
