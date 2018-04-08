/**
 * \file QspiTlfDemo.c
 * \brief Qspi Master Demo (using dma)
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
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "Configuration.h"
#include "conio_tft.h"
#include "touch.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define TOUCH_BUFFER_SIZE 5    /**< \brief Tx/Rx Buffer size */

#define XMAX_TOUCH   3700.0f		//maybe a option is needed to trim the values
#define XMIN_TOUCH   240.0f
#define YMIN_TOUCH   300.0f
#define YMAX_TOUCH   3740.0f

#ifdef TFT_OVER_DAS

#define XMAX_DAS     3800.0f		//maybe a option is needed to trim the values
#define XMIN_DAS     340.0f
#define YMIN_DAS     140.0f
#define YMAX_DAS     3600.0f

#endif

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct
{
    uint8 spiTxBuffer[TOUCH_BUFFER_SIZE];                               /**< \brief Qspi Transmit buffer */
    uint8 spiRxBuffer[TOUCH_BUFFER_SIZE];                               /**< \brief Qspi receive buffer */
} AppQspi_Touch_Buffer;

/** \brief QspiCpu global data */
typedef struct
{
    AppQspi_Touch_Buffer qspiBuffer;                       /**< \brief Qspi buffer */
    struct
    {
        IfxQspi_SpiMaster         *spiMaster;            /**< \brief Pointer to spi Master handle */
        IfxQspi_SpiMaster_Channel spiMasterChannel;      /**< \brief Spi Master Channel handle */
    }drivers;
}  App_Qspi_Touch;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
#if TOUCH_VAR_LOCATION == 0
	#if defined(__GNUC__)
	#pragma section ".bss_cpu0" awc0
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu0"
	#pragma section fardata "data_cpu0"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
	#endif
#elif TOUCH_VAR_LOCATION == 1
	#if defined(__GNUC__)
	#pragma section ".bss_cpu1" awc1
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu1"
	#pragma section fardata "data_cpu1"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
	#endif
#elif TOUCH_VAR_LOCATION == 2
	#if defined(__GNUC__)
	#pragma section ".bss_cpu2" awc2
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu2"
	#pragma section fardata "data_cpu2"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#else
#error "Set TOUCH_VAR_LOCATION to a valid value!"
#endif

App_Qspi_Touch g_Qspi_Touch;
TTOUCH_DRIVER touch_driver;
TTOUCH_EVENT touch_event;

#ifdef TFT_OVER_DAS
TTOUCH_DASINFO touch_dasinfo;
#endif

#if defined(__GNUC__)
#pragma section
#endif
#if defined(__TASKING__)
#pragma section farbss restore
#pragma section fardata restore
#endif
#if defined(__DCC__)
#pragma section DATA RW
#endif

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/** \brief Touch (QSPI) initialization
 *
 * This function initializes Qspix in master mode and sets the variables.
 */
void touch_init (void)
{
    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    g_Qspi_Touch.drivers.spiMaster = TOUCH_QSPI_INIT();
    IfxQspi_SpiMaster_ChannelConfig spiMasterChannelConfig;

    {
        /* create channel config */
#if defined(__DCC__)
   		// bug on DCC not all bits in mode are cleared
   		memset(&spiMasterChannelConfig, 0, sizeof(spiMasterChannelConfig));
#endif
        IfxQspi_SpiMaster_initChannelConfig(&spiMasterChannelConfig,
            g_Qspi_Touch.drivers.spiMaster);

        /* set the baudrate for this channel */
        spiMasterChannelConfig.base.baudrate = 2000000;

        /* set the transfer data width */
        spiMasterChannelConfig.base.mode.dataWidth = 8;

        spiMasterChannelConfig.base.mode.csTrailDelay = 0;
        spiMasterChannelConfig.base.mode.csInactiveDelay = 0;
        spiMasterChannelConfig.base.mode.shiftClock = SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge;

        const IfxQspi_SpiMaster_Output slsOutput = {&TOUCH_USE_CHIPSELECT,
                                                    IfxPort_OutputMode_pushPull,
                                                    IfxPort_PadDriver_cmosAutomotiveSpeed1};

        spiMasterChannelConfig.sls.output.pin    = slsOutput.pin;
        spiMasterChannelConfig.sls.output.mode   = slsOutput.mode;
        spiMasterChannelConfig.sls.output.driver = slsOutput.driver;

        /* initialize channel */
        IfxQspi_SpiMaster_initChannel(&g_Qspi_Touch.drivers.spiMasterChannel,
            &spiMasterChannelConfig);
    }

    /* init tx buffer area */
	g_Qspi_Touch.qspiBuffer.spiTxBuffer[0] = 0;
    g_Qspi_Touch.qspiBuffer.spiRxBuffer[0] = 0;

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    touch_event.status = TOUCH_UNINIT;

    touch_driver.status = TOUCH_UP;
    touch_driver.prev_status = TOUCH_UP;
    touch_driver.cnt = 0;

    touch_driver.xmax = XMAX_TOUCH;
    touch_driver.xmin = XMIN_TOUCH;
    touch_driver.ymax = YMIN_TOUCH;
    touch_driver.ymin = YMAX_TOUCH;

#ifdef TFT_OVER_DAS
    touch_dasinfo.event = 0;    //clear the event which is potentially avail. from external
    touch_dasinfo.xmax = XMAX_DAS;
    touch_dasinfo.xmin = XMIN_DAS;
    touch_dasinfo.ymax = YMIN_DAS;
    touch_dasinfo.ymin = YMAX_DAS;
#endif

    touch_driver.touchmode = (1 << TOUCH_UNINIT);
    touch_driver.bounce_limit = 0;
    touch_driver.bounce_cnt = 0;

}

inline void touch_calcdisp (void)
{
    touch_event.xdisp =
        ((float) touch_event.x - touch_driver.xmin) / (touch_driver.xmax - touch_driver.xmin) * (float) TERMINAL_MAXX;
    if (touch_event.xdisp < 0)
        touch_event.xdisp = 0;
    if (touch_event.xdisp >= TERMINAL_MAXX)
        touch_event.xdisp = TERMINAL_MAXX - 1;
    touch_event.ydisp =
        ((float) touch_event.y - touch_driver.ymin) / (touch_driver.ymax - touch_driver.ymin) * (float) TERMINAL_MAXY;
    if (touch_event.ydisp < 0)
        touch_event.ydisp = 0;
    if (touch_event.ydisp >= TERMINAL_MAXY)
        touch_event.ydisp = TERMINAL_MAXY - 1;
    touch_driver.xdisp = touch_event.xdisp;
    touch_driver.ydisp = touch_event.ydisp;
}

void touch_periodic (void)
{
    touch_driver.bounce_cnt += 1;
    if (touch_driver.bounce_cnt < touch_driver.bounce_limit)
        return;
    touch_driver.bounce_cnt = 0;
    //the touch is selected
    touch_driver.touchmode = 0;
#ifdef TFT_OVER_DAS
    if (touch_dasinfo.event == 0)
#endif
    {
        if (IfxPort_getPinState(TOUCH_USE_INT.port, TOUCH_USE_INT.pinIndex) == FALSE)
        {
            touch_driver.xmax = XMAX_TOUCH;
            touch_driver.xmin = XMIN_TOUCH;
            touch_driver.ymax = YMIN_TOUCH;
            touch_driver.ymin = YMAX_TOUCH;
            g_Qspi_Touch.qspiBuffer.spiTxBuffer[0] = 0x90;
            g_Qspi_Touch.qspiBuffer.spiTxBuffer[1] = 0x00;
            g_Qspi_Touch.qspiBuffer.spiTxBuffer[2] = 0xD0;
            g_Qspi_Touch.qspiBuffer.spiTxBuffer[3] = 0x00;
            g_Qspi_Touch.qspiBuffer.spiTxBuffer[4] = 0x00;

            while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Touch.drivers.spiMasterChannel) == SpiIf_Status_busy) {};

            IfxQspi_SpiMaster_exchange(&g_Qspi_Touch.drivers.spiMasterChannel, &g_Qspi_Touch.qspiBuffer.spiTxBuffer[0],
                &g_Qspi_Touch.qspiBuffer.spiRxBuffer[0], TOUCH_BUFFER_SIZE);

            /* wait until our datas are valid */
            while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Touch.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
            touch_driver.prev_time = touch_driver.time;
            touch_driver.time = (__mfcr (0xFC04) & 0x7FFFFFFF) >> 8;
            touch_driver.prev_x = touch_driver.x;
            // here we get the touch position
            touch_driver.x = ((g_Qspi_Touch.qspiBuffer.spiRxBuffer[1]<<8) | (g_Qspi_Touch.qspiBuffer.spiRxBuffer[2])) >> 3;
            touch_driver.prev_y = touch_driver.y;
            touch_driver.y = ((g_Qspi_Touch.qspiBuffer.spiRxBuffer[3]<<8) | (g_Qspi_Touch.qspiBuffer.spiRxBuffer[4])) >> 3;

            touch_driver.prev_status = touch_driver.status;
            touch_driver.status = TOUCH_DOWN;
        }
        else
        {
            touch_driver.prev_time = touch_driver.time;
            touch_driver.prev_y = touch_driver.y;
            touch_driver.y = -1;
            touch_driver.prev_x = touch_driver.x;
            touch_driver.x = -1;
            touch_driver.prev_status = touch_driver.status;
            touch_driver.status = TOUCH_UP;
        }
    }
 #ifdef TFT_OVER_DAS
    else
    {

        if (touch_dasinfo.button == 1)
        {
            touch_driver.xmax = XMAX_DAS;
            touch_driver.xmin = XMIN_DAS;
            touch_driver.ymax = YMIN_DAS;
            touch_driver.ymin = YMAX_DAS;
            touch_driver.prev_time = touch_driver.time;
            touch_driver.time = (__mfcr (0xFC04) & 0x7FFFFFFF) >> 8;
            touch_driver.prev_x = touch_driver.x;
            touch_driver.x = touch_dasinfo.x;
            touch_driver.prev_y = touch_driver.y;
            touch_driver.y = touch_dasinfo.y;
            touch_driver.prev_status = touch_driver.status;
            touch_driver.status = TOUCH_DOWN;
        }
        else
#endif
        {
            touch_driver.prev_time = touch_driver.time;
            touch_driver.prev_y = touch_driver.y;
            touch_driver.y = -1;
            touch_driver.prev_x = touch_driver.x;
            touch_driver.x = -1;
            touch_driver.prev_status = touch_driver.status;
            touch_driver.status = TOUCH_UP;
        }
#ifdef TFT_OVER_DAS
    }
#endif

    if ((touch_driver.status == TOUCH_DOWN) && (touch_driver.prev_status == TOUCH_UP))
    {
        //this is a down event
        touch_event.time = touch_driver.time;
        touch_event.x = touch_driver.x;
        touch_event.y = touch_driver.y;
        touch_driver.prev_x_down = touch_driver.x;
        touch_driver.prev_y_down = touch_driver.y;
        touch_driver.prev_time_down = touch_driver.time;
        touch_event.dx = -1;
        touch_event.dy = -1;
        touch_event.dtime = -1;
        touch_driver.cnt = 0;
        touch_event.status = TOUCH_DOWN;
        touch_driver.touchmode |= (1 << touch_event.status);
        touch_calcdisp ();

        return;
    }
    if ((touch_driver.status == TOUCH_DOWN) && (touch_driver.prev_status == TOUCH_DOWN))
    {
        //this is a down with previous down, means move
        touch_event.time = touch_driver.time;
        touch_event.dtime = touch_driver.time - touch_driver.prev_time;
        touch_event.x = touch_driver.x;
        touch_event.y = touch_driver.y;
        touch_event.dx = touch_driver.x - touch_driver.prev_x;
        touch_event.dy = touch_driver.y - touch_driver.prev_y;
        touch_driver.cnt += 1;
        if (touch_driver.cnt < 100)
            touch_event.status = TOUCH_MOVE;
        else
        {
            if (touch_driver.cnt > 1000)
                touch_event.status = TOUCH_DOWN10S;
            else
                touch_event.status = TOUCH_DOWN3S;
        }
        touch_driver.touchmode |= (1 << touch_event.status);
        touch_driver.status = TOUCH_MOVE;
        touch_calcdisp ();

        return;
    }
    if ((touch_driver.status == TOUCH_DOWN) && (touch_driver.prev_status == TOUCH_MOVE))
    {
        //this is a prev. move with act. down, means move
        touch_event.time = touch_driver.time;
        touch_event.dtime = touch_driver.time - touch_driver.prev_time;
        touch_event.x = touch_driver.x;
        touch_event.y = touch_driver.y;
        touch_event.dx = touch_driver.x - touch_driver.prev_x;
        touch_event.dy = touch_driver.y - touch_driver.prev_y;
        touch_driver.cnt += 1;
        if (touch_driver.cnt < 100)
            touch_event.status = TOUCH_MOVE;
        else
        {
            if (touch_driver.cnt > 1000)
                touch_event.status = TOUCH_DOWN10S;
            else
                touch_event.status = TOUCH_DOWN3S;
        }
        touch_driver.touchmode |= (1 << touch_event.status);
        touch_driver.status = TOUCH_MOVE;
        touch_calcdisp ();

        return;
    }
    if ((touch_driver.status == TOUCH_UP) && (touch_driver.prev_status == TOUCH_MOVE))
    {
        //this is a up with prev. move
        touch_event.time = touch_driver.time;
        touch_event.dtime = touch_driver.prev_time - touch_driver.prev_time_down;
        touch_event.x = touch_driver.prev_x;
        touch_event.y = touch_driver.prev_y;
        touch_event.dx = touch_driver.prev_x - touch_driver.prev_x_down;
        touch_event.dy = touch_driver.prev_y - touch_driver.prev_y_down;
        touch_event.status = TOUCH_UP;
        touch_driver.touchmode |= (1 << touch_event.status);
        touch_driver.status = TOUCH_UP;
        touch_calcdisp ();

        return;
    }
    if ((touch_driver.status == TOUCH_UP) && (touch_driver.prev_status == TOUCH_DOWN))
    {
        //this is a up without prev. move
        touch_event.time = touch_driver.time;
        touch_event.dtime = touch_driver.prev_time - touch_driver.prev_time_down;
        touch_event.x = touch_driver.prev_x;
        touch_event.y = touch_driver.prev_y;
        touch_event.dx = touch_driver.prev_x - touch_driver.prev_x_down;
        touch_event.dy = touch_driver.prev_y - touch_driver.prev_y_down;
        touch_event.status = TOUCH_UP;
        touch_driver.touchmode |= (1 << touch_event.status);
        touch_driver.status = TOUCH_UP;
        touch_calcdisp ();

        return;
    }

}
