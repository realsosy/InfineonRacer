/**
 * \file 
 * \brief QSPI0 Driver Initialisation
 *
 * This Driver manage the global initialisation of QSPI0.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include "Configuration.h"
#include "Qspi0.h"


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
#if ISR_PROVIDER_QSPI0 == 0
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
#elif ISR_PROVIDER_QSPI0 == 1
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
#elif ISR_PROVIDER_QSPI0 == 2
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
#error "Set ISR_PROVIDER_QSPI0 to a valid value!"
#endif

IfxQspi_SpiMaster spi0Master={{ 0, 0, 0, 0, 0, { 0, 0, 0, 0, 0}}, 0,{{ 0, 0, 0},{ 0, 0, 0}, 0, 0, 0}}; /**< \brief Qspi0 global data */

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
#ifdef QSPI0_TRANSMIT_CALLBACK
    extern void QSPI0_TRANSMIT_CALLBACK(void);
#endif
#ifdef QSPI0_RECEIVE_CALLBACK
    extern void QSPI0_RECEIVE_CALLBACK(void);
#endif

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/* pin configuration */
const IfxQspi_SpiMaster_Pins qspi0_pins = {&QSPI0_SCLK_PIN, IfxPort_OutputMode_pushPull,  /* SCLK */
                                           &QSPI0_MTSR_PIN,  IfxPort_OutputMode_pushPull, /* MTSR */
                                           &QSPI0_MRST_PIN,  IfxPort_InputMode_pullDown,  /* MRST */
                                           IfxPort_PadDriver_ttlSpeed1		              /* pad driver mode */
};

/******************************************************************************/
/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/** \addtogroup IfxLld_Demo_QspiCpu_SrcDoc_Main_Interrupt
 * \{ */

/** \name Interrupts for Qspi Master (QSPI0)
 * \{ */
IFX_INTERRUPT(ISR_qspi0_Tx, 0, ISR_PRIORITY_QSPI0_TX);
IFX_INTERRUPT(ISR_qspi0_Rx, 0, ISR_PRIORITY_QSPI0_RX);
IFX_INTERRUPT(ISR_qspi0_Er, 0, ISR_PRIORITY_QSPI0_ER);

/** \} */

/** \} */

/** \brief Handle qspi0_Tx interrupt.
 *
 * \isrProvider \ref ISR_PROVIDER_QSPI0
 * \isrPriority \ref ISR_PRIORITY_QSPI0
 *
 */
void ISR_qspi0_Tx(void)
{
    IfxCpu_enableInterrupts();
#ifdef QSPI0_USE_DMA
    IfxQspi_SpiMaster_isrDmaTransmit(&spi0Master);
#else
    IfxQspi_SpiMaster_isrTransmit(&spi0Master);
#endif

#ifdef QSPI0_TRANSMIT_CALLBACK
    QSPI0_TRANSMIT_CALLBACK();
#endif
}


/** \brief Handle qspi0_Rx interrupt.
 *
 * \isrProvider \ref ISR_PROVIDER_QSPI0
 * \isrPriority \ref ISR_PRIORITY_QSPI0
 *
 */
void ISR_qspi0_Rx(void)
{
    IfxCpu_enableInterrupts();
#ifdef QSPI0_USE_DMA
    IfxQspi_SpiMaster_isrDmaReceive(&spi0Master);
#else
    IfxQspi_SpiMaster_isrReceive(&spi0Master);
#endif
#ifdef QSPI0_RECEIVE_CALLBACK
    QSPI0_RECEIVE_CALLBACK();
#endif
}

/** \brief Handle qspi0_Er interrupt.
 *
 * \isrProvider \ref ISR_PROVIDER_QSPI0
 * \isrPriority \ref ISR_PRIORITY_QSPI0
 *
 */
void ISR_qspi0_Er(void)
{
    IfxCpu_enableInterrupts();
    IfxQspi_SpiMaster_isrError(&spi0Master);
}

/** \brief QSPI0 initialisation
 *
 * This function initialises the Qspi0 in master mode.
 */
IfxQspi_SpiMaster *qspi0_init (void)
{

    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    IfxQspi_SpiMaster_Config        spiMasterConfig;

    if (spi0Master.qspi == 0)
    {
        /* create module config */
        IfxQspi_SpiMaster_initModuleConfig(&spiMasterConfig, &MODULE_QSPI0);

        /* set the maximum baudrate */
        spiMasterConfig.base.maximumBaudrate = QSPI0_MAX_BAUDRATE;

        /* ISR priorities and interrupt target */
        spiMasterConfig.base.txPriority  = ISR_PRIORITY_QSPI0_TX;
        spiMasterConfig.base.rxPriority  = ISR_PRIORITY_QSPI0_RX;
        spiMasterConfig.base.erPriority  = ISR_PRIORITY_QSPI0_ER;
        spiMasterConfig.base.isrProvider = ISR_PROVIDER_QSPI0;

#ifdef QSPI0_USE_DMA
        // DMA configuration
        spiMasterConfig.dma.txDmaChannelId = DMA_CH_QSPI0_TX;
        spiMasterConfig.dma.rxDmaChannelId = DMA_CH_QSPI0_RX;
        spiMasterConfig.dma.useDma = 1;
#endif
        spiMasterConfig.pins = &qspi0_pins;

        /* initialize module */
        IfxQspi_SpiMaster_initModule(&spi0Master, &spiMasterConfig);
        /* set the MRST_input also to the selected pad driver mode if needed */
        if (qspi0_pins.mrst != NULL_PTR)
            IfxPort_setPinPadDriver(qspi0_pins.mrst->pin.port, qspi0_pins.mrst->pin.pinIndex, qspi0_pins.pinDriver);
    }

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

  return (&spi0Master);
}
