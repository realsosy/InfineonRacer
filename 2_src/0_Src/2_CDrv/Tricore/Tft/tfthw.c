/*
 * TFTHW.c
 *
 *  Created on: 07.01.2012
 *      Author: voigtlae
 */
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include "font_8_12.h"
#include "tfthw.h"
#include "Configuration.h"

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
/** \brief QspiCpu global data */
typedef struct
{
    struct
    {
        IfxQspi_SpiMaster         *spiMaster;            /**< \brief Pointer to spi Master handle */
        IfxQspi_SpiMaster_Channel spiMasterChannel;      /**< \brief Spi Master Channel handle */
    }drivers;
}  App_Qspi_Tft;

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
#if TFT_DISPLAY_VAR_LOCATION == 0
	#if defined(__GNUC__)
    #pragma section
	#pragma section ".bss_cpu0" awc0
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu0"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
	#endif
#elif TFT_DISPLAY_VAR_LOCATION == 1
	#if defined(__GNUC__)
	#pragma section ".bss_cpu1" awc1
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu1"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
	#endif
#elif TFT_DISPLAY_VAR_LOCATION == 2
	#if defined(__GNUC__)
	#pragma section ".bss_cpu2" awc2
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu2"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#else
#error "Set TFT_DISPLAY_VAR_LOCATION to a valid value!"
#endif

// the iLLD don't use cirular buffering, we need an align to 4 for DMA (32 bit access)
uint16 Row_Buff[FONT_YSIZE*TFT_XSIZE] IFX_ALIGN(4);
volatile uint32 tft_status = 0;
volatile uint16 tft_id = 0;

volatile uint32 (*pCallbackFunction) (void) = (void *)0;

App_Qspi_Tft g_Qspi_Tft;


#if defined(__GNUC__)
#pragma section
#endif
#if defined(__TASKING__)
#pragma section farbss restore
#endif
#if defined(__DCC__)
#pragma section DATA RW
#endif

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void tft_transmit_callback(void)
{
    // check that we are ready (no remaining bytes) in case that we are not using the DMA
	if (g_Qspi_Tft.drivers.spiMaster->dma.useDma == 0)
        if (g_Qspi_Tft.drivers.spiMasterChannel.base.tx.remaining) return;
	// if our pCallbackFunction is valid then we call it
	if (pCallbackFunction != (void *)0)
		pCallbackFunction();
}

static void delay_us (uint32 time)
{
    volatile sint32 test;
    uint32 i;
    test = 0;
    for (i = 0; i < time; i += 1)
    {
        test += 1;
    }
}

static void delay_ms (uint32 time)
{
    while (time--)
    {
        delay_us (1000);
        ;
    }
}

static void tft_write_data (uint8 regaddr, uint16 data)
{
    uint32 tx_data;
    /* we can use stack variables for exchange because we are waiting until the transfer is finished */

    /* wait until Spi is no longer busy (should not busy here) */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};

    tx_data = (regaddr << 22) | (data << 6);

    IfxQspi_SpiMaster_exchange(&g_Qspi_Tft.drivers.spiMasterChannel, &tx_data, 0, 1);

    /* wait until our datas are valid */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
}

static uint32 tft_read_data (uint8 regaddr)
{
    uint32 tx_data[2];
    uint32 rx_data[2];
    uint8 cnt;

    /* wait until Spi is no longer busy (should not busy here) */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};

    /* we can use stack variables for exchange because we are waiting until the transfer is finished */

    for (cnt=0; cnt<2; cnt++)
    {
    	tx_data[cnt] = 0;
    	rx_data[cnt] = 0;
    }

    /* we need 16 bit for address and 26 bits for value = 42 bits total */
    /* we change the datawidth to 21 bit */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 20;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 21;

    tx_data[0] = ((0x1 << 20) | (regaddr << 11));

    IfxQspi_SpiMaster_exchange(&g_Qspi_Tft.drivers.spiMasterChannel, &tx_data[0], &rx_data[0], 2);

    /* wait until our datas are valid */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};

    /* set back to 32 bit transfer */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 31;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 32;

    /* ??? we need to check this with an old display */
    return rx_data[1];
}

static void tft_read_data_ili9341 (uint8 regaddr, uint16 *puiData, uint32 count)
{
    uint16 tx_data;
    /* wait until Spi is no longer busy (should not busy here) */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
    /* we can use stack variables for exchange because we are waiting until the transfer is finished */
    /* we write first the address (10 bit) */
    /* we change the datawidth to 10 bit */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 9;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 10;
    /* calculate the command and address value */
    tx_data = (0x3 << 8) | regaddr;
    /* send the address to ILI9341 */
    IfxQspi_SpiMaster_exchange(&g_Qspi_Tft.drivers.spiMasterChannel, &tx_data, 0, 1);
    /* our values haven 16 bit */
    /* we change the datawidth to 16 bit */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 15;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 16;
    /* we wait until our address is send */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
    /* send the values to ILI9341 */
    IfxQspi_SpiMaster_exchange(&g_Qspi_Tft.drivers.spiMasterChannel, 0, puiData, count);
    /* we wait until our values are send */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
    /* we terminate the transfer by generate one SCLK without transfer */
    /* we make sure that the SCLK will be low when we switch to general output */
    IfxPort_setPinLow(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex);
    /* set the SCLK to general output */
    IfxPort_setPinMode(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex, IfxPort_Mode_outputPushPullGeneral);
    /* toggle the SCLK */
    IfxPort_togglePin(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex);
    /* toggle the SCLK */
    IfxPort_togglePin(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex);
    /* set the SCLK back to used alternate output */
    IfxPort_setPinMode(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex, TFT_USE_SCLK.select);
    /* set back to 32 bit transfer */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 31;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 32;
}

//uint32 tft_write_data_ili9341 (uint8 regaddr, uint16 *puiData, uint32 count)
static void tft_write_data_ili9341 (uint8 regaddr, uint16 *puiData, uint32 count)
{
    uint16 tx_data;
    /* wait until Spi is no longer busy (should not busy here) */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
    /* we can use stack variables for exchange because we are waiting until the transfer is finished */
    /* we write first the address (10 bit) */
    /* we change the datawidth to 10 bit */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 9;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 10;
    /* calculate the command and address value */
    tx_data = (0x1 << 8) | regaddr;
    /* send the address to ILI9341 */
    IfxQspi_SpiMaster_exchange(&g_Qspi_Tft.drivers.spiMasterChannel, &tx_data, 0, 1);
    /* our values haven 16 bit */
    /* we change the datawidth to 16 bit */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 15;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 16;
    /* we wait until our address is send */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
    /* send the values to ILI9341 */
    IfxQspi_SpiMaster_exchange(&g_Qspi_Tft.drivers.spiMasterChannel, puiData, 0, count);
    /* we wait until our values are send */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
    /* we terminate the transfer by generate one SCLK without transfer */
    /* we make sure that the SCLK will be low when we switch to general output */
    IfxPort_setPinLow(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex);
    /* set the SCLK to general output */
    IfxPort_setPinMode(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex, IfxPort_Mode_outputPushPullGeneral);
    /* toggle the SCLK */
    IfxPort_togglePin(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex);
    /* toggle the SCLK */
    IfxPort_togglePin(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex);
    /* set the SCLK back to used alternate output */
    IfxPort_setPinMode(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex, TFT_USE_SCLK.select);
    /* set back to 32 bit transfer */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 31;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 32;
}

static uint32 tft_terminate_endless_transfer (void)
{
    // all our values was send
    uint16 tx_data;
	// first we reset the callback function to 0
    pCallbackFunction = (void *)0;
    /* wait until Spi is no longer busy (wait until receive is finished) */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
    /* we send other 16 bit to write the last value */
    /* we change the datawidth to 16 bit */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 15;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 16;
    /* send the value 0 to ILI9341 to write the last word */
    tx_data = 0;
    IfxQspi_SpiMaster_exchange(&g_Qspi_Tft.drivers.spiMasterChannel, &tx_data, 0, 1);
    /* we wait until our values are send */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
    /* we terminate the transfer by generate one SCLK without transfer */
    /* we make sure that the SCLK will be low when we switch to general output */
    IfxPort_setPinLow(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex);
    /* set the SCLK to general output */
    IfxPort_setPinMode(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex, IfxPort_Mode_outputPushPullGeneral);
    /* toggle the SCLK */
    IfxPort_togglePin(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex);
    /* toggle the SCLK */
    IfxPort_togglePin(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex);
    /* set the SCLK back to used alternate output */
    IfxPort_setPinMode(TFT_USE_SCLK.pin.port, TFT_USE_SCLK.pin.pinIndex, TFT_USE_SCLK.select);
    /* set back to 32 bit transfer */
    g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 31;
    g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 32;
    /* we reset the tft status, no longer busy */
	tft_status = 0;
	return 0;
}

void tft_init (void)
{
    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    g_Qspi_Tft.drivers.spiMaster = TFT_QSPI_INIT();
    IfxQspi_SpiMaster_ChannelConfig spiMasterChannelConfig;

    {
        /* create channel config */
#if defined(__DCC__)
   		// bug on DCC not all bits in mode are cleared
   		memset(&spiMasterChannelConfig, 0, sizeof(spiMasterChannelConfig));
#endif
        IfxQspi_SpiMaster_initChannelConfig(&spiMasterChannelConfig,
            g_Qspi_Tft.drivers.spiMaster);

        /* set the baudrate for this channel */
        spiMasterChannelConfig.base.baudrate = 50000000;

        /* set the transfer data width */
        spiMasterChannelConfig.base.mode.dataWidth = 32;
        spiMasterChannelConfig.base.mode.csLeadDelay = SpiIf_SlsoTiming_1;
        spiMasterChannelConfig.base.mode.csTrailDelay = SpiIf_SlsoTiming_0;
        spiMasterChannelConfig.base.mode.csInactiveDelay = SpiIf_SlsoTiming_0;
        spiMasterChannelConfig.base.mode.shiftClock = SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge;

        const IfxQspi_SpiMaster_Output slsOutput = {&TFT_USE_CHIPSELECT,
                                                    IfxPort_OutputMode_pushPull,
                                                    IfxPort_PadDriver_cmosAutomotiveSpeed1};

        spiMasterChannelConfig.sls.output.pin    = slsOutput.pin;
        spiMasterChannelConfig.sls.output.mode   = slsOutput.mode;
        spiMasterChannelConfig.sls.output.driver = slsOutput.driver;

        /* initialize channel */
        IfxQspi_SpiMaster_initChannel(&g_Qspi_Tft.drivers.spiMasterChannel,
            &spiMasterChannelConfig);
    }

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    tft_id = 0;
    pCallbackFunction = (void *)0;

    tft_id = tft_read_data (0x0);

    if (tft_id == 0x0)
    {
        // check for ILI9341 controller
    	uint16 uwData[6];
        tft_read_data_ili9341 (0xD3, &uwData[0], 5);
        if ((uwData[3] == 0x0093) && (uwData[4] == 0x0041))
        {
            tft_id = 0x9341;
        }
    }
    //tft_id = 0x9341;
    //tft_id = 0x47;

    if (tft_id == 0x9341)
    {
        // this is an ILI9341 controller
    	// we will send max. 15 values + 1 value for last write
    	uint16 uwData[16];
        /************* Start Initial Sequence **********/
    	uwData[0] = 0x0000;
    	uwData[1] = 0x0083;
    	uwData[2] = 0x0030;
    	uwData[3] = 0x0000;
    	tft_write_data_ili9341(0xCF, &uwData[0], 4); // setting from display supplier

    	uwData[0] = 0x0064;
    	uwData[1] = 0x0003;
    	uwData[2] = 0x0012;
    	uwData[3] = 0x0081;
    	uwData[4] = 0x0000;
    	tft_write_data_ili9341(0xED, &uwData[0], 5); // setting from display supplier

    	uwData[0] = 0x0085;
    	uwData[1] = 0x0000;
    	uwData[2] = 0x0078;
    	uwData[3] = 0x0000;
    	tft_write_data_ili9341(0xE8, &uwData[0], 4); // setting from display supplier

    	uwData[0] = 0x0039;
    	uwData[1] = 0x002C;
    	uwData[2] = 0x0000;
    	uwData[3] = 0x0034;
    	uwData[4] = 0x0002;
    	uwData[5] = 0x0000;
    	tft_write_data_ili9341(0xCB, &uwData[0], 6); // setting from display supplier

    	uwData[0] = 0x0020;
    	uwData[1] = 0x0000;
    	tft_write_data_ili9341(0xF7, &uwData[0], 2); // setting from display supplier

    	uwData[0] = 0x0000;
    	uwData[1] = 0x0000;
    	uwData[2] = 0x0000;
    	tft_write_data_ili9341(0xEA, &uwData[0], 3); // setting from display supplier

    	uwData[0] = 0x0019;  // VRH[5:0]
    	uwData[1] = 0x0000;
    	tft_write_data_ili9341(0xC0, &uwData[0], 2); // Power Control 1

    	uwData[0] = 0x0011;  // SAP[2:0];BT[3:0]
    	uwData[1] = 0x0000;
    	tft_write_data_ili9341(0xC1, &uwData[0], 2); // Power Control 2

    	uwData[0] = 0x0031;
    	uwData[1] = 0x003C;
    	uwData[2] = 0x0000;
    	tft_write_data_ili9341(0xC5, &uwData[0], 3); // VCM Control 1

    	uwData[0] = 0x00B0;
    	uwData[1] = 0x0000;
    	tft_write_data_ili9341(0xC7, &uwData[0], 2); // VCM Control 2

    	uwData[0] = 0x0028;  // MV=1; BGR=1
    	uwData[1] = 0x0000;
    	tft_write_data_ili9341(0x36, &uwData[0], 2); // Memory Access Control

    	uwData[0] = 0x0055;  // 16 bit
    	uwData[1] = 0x0000;
    	tft_write_data_ili9341(0x3A, &uwData[0], 2); // Pixel Format Set

    	uwData[0] = 0x0000;
    	uwData[1] = 0x0017;
    	uwData[2] = 0x0000;
    	tft_write_data_ili9341(0xB1, &uwData[0], 3); // Frame Control (in Normal Mode)

    	uwData[0] = 0x000A;
    	uwData[1] = 0x00A2;
    	uwData[2] = 0x0000;
    	tft_write_data_ili9341(0xB6, &uwData[0], 3); // Display Function Control

    	uwData[0] = 0x0001;
    	uwData[1] = 0x0030;
    	uwData[2] = 0x0000;
    	tft_write_data_ili9341(0xF6, &uwData[0], 3); // Interface Control

    	uwData[0] = 0x0000;  // Gamma Function Disable
    	uwData[1] = 0x0000;
    	tft_write_data_ili9341(0xF2, &uwData[0], 2);  // setting from display supplier

    	uwData[0] = 0x0001;     //Gamma curve selected
    	uwData[1] = 0x0000;
    	tft_write_data_ili9341(0x26, &uwData[0], 2);  // Gamma Set

    	uwData[0]  = 0x000F;
    	uwData[1]  = 0x0026;
    	uwData[2]  = 0x0022;
    	uwData[3]  = 0x000A;
    	uwData[4]  = 0x0010;
    	uwData[5]  = 0x000A;
    	uwData[6]  = 0x004C;
    	uwData[7]  = 0x00CA;
    	uwData[8]  = 0x0036;
    	uwData[9]  = 0x0000;
    	uwData[10] = 0x0015;
    	uwData[11] = 0x0000;
    	uwData[12] = 0x0010;
    	uwData[13] = 0x0010;
    	uwData[14] = 0x0000;
    	uwData[15] = 0x0000;
    	tft_write_data_ili9341(0xE0, &uwData[0], 16); // Positive Gamma Correction

    	uwData[0]  = 0x0000;
    	uwData[1]  = 0x0019;
    	uwData[2]  = 0x001B;
    	uwData[3]  = 0x0005;
    	uwData[4]  = 0x000F;
    	uwData[5]  = 0x0005;
    	uwData[6]  = 0x0033;
    	uwData[7]  = 0x0035;
    	uwData[8]  = 0x0049;
    	uwData[9]  = 0x000F;
    	uwData[10] = 0x001F;
    	uwData[11] = 0x000F;
    	uwData[12] = 0x003F;
    	uwData[13] = 0x003F;
    	uwData[14] = 0x000F;
    	uwData[15] = 0x0000;
    	tft_write_data_ili9341(0xE1, &uwData[0], 16); // Negative Gamma Correction

    	uwData[0] = 0x0000;
    	uwData[1] = 0x0000;
    	uwData[2] = ((TFT_XSIZE-1) & 0xFF00)>>8;
    	uwData[3] = (TFT_XSIZE-1) & 0x00FF;
    	uwData[4] = 0x0000;
    	tft_write_data_ili9341(0x2A, &uwData[0], 5);  // Column Address Set

    	uwData[0] = 0x0000;
    	uwData[1] = 0x0000;
    	uwData[2] = ((TFT_YSIZE-1) & 0xFF00)>>8;
    	uwData[3] = (TFT_YSIZE-1) & 0x00FF;
    	uwData[4] = 0x0000;
    	tft_write_data_ili9341(0x2B, &uwData[0], 5);  // Page Address Set

    	uwData[0] = 0x0000;
    	tft_write_data_ili9341(0x11, &uwData[0], 1);  // Exit Sleep

        delay_ms (120);

    	uwData[0] = 0x0000;
    	tft_write_data_ili9341(0x29, &uwData[0], 1);  // Display on
    }
    else
    {
        if (tft_id == 0x47)
        {
            // we have a display with HX8347
            //Power on Setting
            tft_write_data (0x0019, 0x0001);    //OSC_EN='1', start Osc
            tft_write_data (0x001F, 0x0088);    // GAS=1, VOMG=00, PON=0, DK=1, XDK=0, DVDH_TRI=0, STB=0
            delay_ms (5);
            tft_write_data (0x001F, 0x0080);    // GAS=1, VOMG=00, PON=0, DK=0, XDK=0, DVDH_TRI=0, STB=0
            delay_ms (5);
            tft_write_data (0x001F, 0x0090);    // GAS=1, VOMG=00, PON=1, DK=0, XDK=0, DVDH_TRI=0, STB=0
            delay_ms (5);
            tft_write_data (0x001F, 0x00D0);    // GAS=1, VOMG=10, PON=1, DK=0, XDK=0, DDVDH_TRI=0, STB=0
            delay_ms (5);
            //262k/65k color selection
            tft_write_data (0x0017, 0x0005);    //default 0x0006 262k color
            // 0x0005 65k color
            //SET PANEL
            tft_write_data (0x0016, 0x0028);    //MV=1, BRG=1
            tft_write_data (0x0036, 0x0000);    //SS_P, GS_P, REV_P, BGR_P
            //Display ON Setting
            tft_write_data (0x0028, 0x0038);    //GON=1, DTE=1, D=1000
            delay_ms (40);
            tft_write_data (0x0028, 0x003C);    //GON=1, DTE=1, D=1100
            //Set GRAM Area
            tft_write_data (0x0002, 0x0000);
            tft_write_data (0x0003, 0x0000);    //Column Start
            tft_write_data (0x0004, 0x0001);
            tft_write_data (0x0005, 0x003F);    //Column End
            tft_write_data (0x0006, 0x0000);
            tft_write_data (0x0007, 0x0000);    //Row Start
            tft_write_data (0x0008, 0x0000);
            tft_write_data (0x0009, 0x00EF);    //Row End
        }
        else
        {
            // we expect that this is an ILI932x
            tft_write_data (0x00, 0x0001);
            tft_write_data (0x01, 0x0100);  // set SM bit (with reg.0x60.GS=1 for rotate the display), was 0000
            tft_write_data (0x02, 0x0700);  // set 1 line inversion
            tft_write_data (0x0003, 0x1038);
            tft_write_data (0x04, 0x0000);  // Resize register
            tft_write_data (0x08, 0x0202);  // set the back porch and front porch
            tft_write_data (0x09, 0x0000);  // set non-display area refresh cycle ISC[3:0]
            tft_write_data (0x0A, 0x0000);  // FMARK function
            //Power On sequence //
            tft_write_data (0x10, 0x0080);  // SAP, BT[3:0], AP, DSTB, SLP, STB
            tft_write_data (0x11, 0x0007);  // DC1[2:0], DC0[2:0], VC[2:0]
            tft_write_data (0x12, 0x0000);  // VREG1OUT voltage
            tft_write_data (0x13, 0x0000);  // VDV[4:0] for VCOM amplitude
            tft_write_data (0x07, 0x0001);  //

            delay_ms (2000);    // Dis-sint8ge capacitor power voltage

            //         tft_write_data(0x10, 0x1790); // SAP, BT[3:0], AP, DSTB, SLP, STB
            tft_write_data (0x10, 0x1290);  // SAP, BT[3:0], AP, DSTB, SLP, STB
            tft_write_data (0x11, 0x0227);  // DC1[2:0], DC0[2:0], VC[2:0]
            delay_ms (1000);    // Delay 50ms
            tft_write_data (0x12, 0x001C);  // Internal reference voltage= Vci;
            delay_ms (1000);    // Delay 50ms
            tft_write_data (0x13, 0x1600);  // Set VDV[4:0] for VCOM amplitude
            tft_write_data (0x29, 0x0012);  // Set VCM[5:0] for VCOMH
            tft_write_data (0x2B, 0x000D);  // Set Frame Rate
            delay_ms (500);     // Delay 50ms

            tft_write_data (0x0020, 0x0000);
            tft_write_data (0x0021, 0x0000);
            // ----------- Adjust the Gamma Curve ----------//
            tft_write_data (0x0030, 0x0007);
            tft_write_data (0x0031, 0x0707);
            tft_write_data (0x0032, 0x0107);
            tft_write_data (0x0035, 0x0206);
            tft_write_data (0x0036, 0x0408);
            tft_write_data (0x0037, 0x0006);
            tft_write_data (0x0038, 0x0000);
            tft_write_data (0x0039, 0x0207);
            tft_write_data (0x003C, 0x0504);
            tft_write_data (0x003D, 0x1501);
            //------------------ Set GRAM area ---------------//
            tft_write_data (0x0050, 0x0000);    // Horizontal GRAM Start Address
            tft_write_data (0x0051, 0x00EF);    // Horizontal GRAM End Address
            tft_write_data (0x0052, 0x0000);    // Vertical GRAM Start Address
            tft_write_data (0x0053, 0x013F);    // Vertical GRAM Start Address
            tft_write_data (0x0060, 0xA700);    // Gate Scan Line was 2700 (set GS=1, with reg.0x01.MS=1 for rotate the display)
            tft_write_data (0x0061, 0x0001);    // NDL,VLE, REV
            tft_write_data (0x006A, 0x0000);    // set scrolling line
            //-------------- Partial Display Control ---------//
            tft_write_data (0x80, 0x0000);
            tft_write_data (0x81, 0x0000);
            tft_write_data (0x82, 0x0000);
            tft_write_data (0x83, 0x0000);
            tft_write_data (0x84, 0x0000);
            tft_write_data (0x85, 0x0000);
            //-------------- Panel Control -------------------//
            tft_write_data (0x90, 0x0010);
            tft_write_data (0x92, 0x0000);
            tft_write_data (0x93, 0x0003);
            tft_write_data (0x95, 0x0110);
            tft_write_data (0x97, 0x0000);
            tft_write_data (0x98, 0x0000);
            tft_write_data (0x07, 0x0173);  // 262K color and display ON   0133
            delay_ms (1000);
        }
    }
}

void tft_display_setxy (uint32 x, uint32 y)
{
    if (tft_id == 0x9341)
    {
    	uint16 uwData[3];

    	uwData[0] = (uint16) (x >> 8);
    	uwData[1] = (uint16) x;
    	uwData[2] = 0x0000;
    	tft_write_data_ili9341(0x2A, &uwData[0], 3);  // Column Address Set, we change only the start (2 Parameters)

    	uwData[0] = (uint16) (y >> 8);
    	uwData[1] = (uint16) y;
    	uwData[2] = 0x0000;
    	tft_write_data_ili9341(0x2B, &uwData[0], 3);  // Page Address Set, we change only the start (2 Parameters)
    }
    else
    {
        if (tft_id == 0x47)
        {
            tft_write_data (0x0002, (uint16) (x >> 8));
            tft_write_data (0x0003, (uint16) x);    //Column Start
            tft_write_data (0x0006, (uint16) (y >> 8));
            tft_write_data (0x0007, (uint16) y);    //Row Start
        }
        else
        {
            tft_write_data (0x0020, (uint16) y);
            tft_write_data (0x0021, (uint16) x);
        }
    }
}

void tft_flush_row_buff(void *pFunc, uint32 numberOfPixel)
{
    if (tft_status == 0)
    {
        uint16 tx_data;

        /* we write first the address (10 bit) */
        /* we change the datawidth to 10 bit */
        g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 9;
        g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 10;
        /* calculate the command and address value */
        if (tft_id == 0x9341)
            tx_data = (0x1 << 8) | 0x2C; // register 0x2C on ILI9341
        else
            tx_data = (0x1 << 8) | 0x22; // register 0x22 on other

        /* wait until Spi is no longer busy (should not busy here) */
        while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
        /* send the address to the display */
        IfxQspi_SpiMaster_exchange(&g_Qspi_Tft.drivers.spiMasterChannel, &tx_data, 0, 1);
        /* set back to 32 bit transfer */
        g_Qspi_Tft.drivers.spiMasterChannel.bacon.B.DL = 31;
        g_Qspi_Tft.drivers.spiMasterChannel.dataWidth = 32;
    }

	tft_status = 1; // TFT Busy

	pCallbackFunction = pFunc;
	if (pCallbackFunction == (void *)0)
		pCallbackFunction = (void *)&tft_terminate_endless_transfer;

    /* wait until Spi is no longer busy (should not busy here) */
    while (IfxQspi_SpiMaster_getStatus(&g_Qspi_Tft.drivers.spiMasterChannel) == SpiIf_Status_busy) {};
    /* send the values to the display */
    IfxQspi_SpiMaster_exchange(&g_Qspi_Tft.drivers.spiMasterChannel, &Row_Buff[0], 0, numberOfPixel/2);
}
