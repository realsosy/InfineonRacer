/**
 * \file IfxQspi.h
 * \brief QSPI  basic functionality
 * \ingroup IfxLld_Qspi
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
 * \defgroup IfxLld_Qspi_Std_Enum Enumerations
 * \ingroup IfxLld_Qspi_Std
 * \defgroup IfxLld_Qspi_Std_Operative Operative Functions
 * \ingroup IfxLld_Qspi_Std
 * \defgroup IfxLld_Qspi_Std_Support Support Functions
 * \ingroup IfxLld_Qspi_Std
 * \defgroup IfxLld_Qspi_Std_Interrupt Interrupt Functions
 * \ingroup IfxLld_Qspi_Std
 * \defgroup IfxLld_Qspi_Std_IO IO Pin Configuration Functions
 * \ingroup IfxLld_Qspi_Std
 */

#ifndef IFXQSPI_H
#define IFXQSPI_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "_Impl/IfxQspi_cfg.h"
#include "Cpu/Std/IfxCpu_Intrinsics.h"
#include "If/SpiIf.h"
#include "Scu/Std/IfxScuCcu.h"
#include "Src/Std/IfxSrc.h"
#include "_PinMap/IfxQspi_PinMap.h"
#include "IfxQspi_reg.h"

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Qspi_Std_Enum
 * \{ */
/** \brief QSPI channel Number (BACON.CS)
 */
typedef enum
{
    IfxQspi_ChannelId_0,     /**< \brief Channel #0  */
    IfxQspi_ChannelId_1,     /**< \brief Channel #1  */
    IfxQspi_ChannelId_2,     /**< \brief Channel #2  */
    IfxQspi_ChannelId_3,     /**< \brief Channel #3  */
    IfxQspi_ChannelId_4,     /**< \brief Channel #4  */
    IfxQspi_ChannelId_5,     /**< \brief Channel #5  */
    IfxQspi_ChannelId_6,     /**< \brief Channel #6  */
    IfxQspi_ChannelId_7,     /**< \brief Channel #7  */
    IfxQspi_ChannelId_8,     /**< \brief Channel #8  */
    IfxQspi_ChannelId_9,     /**< \brief Channel #9  */
    IfxQspi_ChannelId_10,    /**< \brief Channel #10  */
    IfxQspi_ChannelId_11,    /**< \brief Channel #11  */
    IfxQspi_ChannelId_12,    /**< \brief Channel #12  */
    IfxQspi_ChannelId_13,    /**< \brief Channel #13  */
    IfxQspi_ChannelId_14     /**< \brief Channel #14  */
} IfxQspi_ChannelId;

/** \brief Data length unit of a frame (BACON.BYTE)
 */
typedef enum
{
    IfxQspi_DataLengthUnit_bit  = 0, /**< \brief Data Length in Bits */
    IfxQspi_DataLengthUnit_byte = 1  /**< \brief Data length in Bytes */
} IfxQspi_DataLengthUnit;

/** \brief QSPI Error Flags (STATUS.ERRORFLAGS)
 */
typedef enum
{
    IfxQspi_Error_none                      = 0,   /**< \brief No Error */
    IfxQspi_Error_parity                    = 1,   /**< \brief Parity Error */
    IfxQspi_Error_configuration             = 2,   /**< \brief Configuration Error */
    IfxQspi_Error_baudrate                  = 4,   /**< \brief BaudRate Error */
    IfxQspi_Error_txfifoOverflow            = 8,   /**< \brief TX FIFO Overflow Error */
    IfxQspi_Error_txfifoUnderflow           = 16,  /**< \brief TX FIFO Underflow Error */
    IfxQspi_Error_rxfifoOverflow            = 32,  /**< \brief RX FIFO Overflow Error */
    IfxQspi_Error_rxfifoUnderflow           = 64,  /**< \brief RX FIFO Underflow Error */
    IfxQspi_Error_expectTimeout             = 128, /**< \brief EXPECT Timeout Error */
    IfxQspi_Error_slsiMisplacedInactivation = 256  /**< \brief SLSI misplaced inactivation (slave mode) */
} IfxQspi_Error;

/** \brief Frame Expect phase time out value
 */
typedef enum
{
    IfxQspi_ExpectTimeout_64      = 0,   /**< \brief Expect phse time out 64 */
    IfxQspi_ExpectTimeout_128     = 1,   /**< \brief Expect phse time out 128 */
    IfxQspi_ExpectTimeout_256     = 2,   /**< \brief Expect phse time out 256 */
    IfxQspi_ExpectTimeout_512     = 3,   /**< \brief Expect phse time out 512 */
    IfxQspi_ExpectTimeout_1024    = 4,   /**< \brief Expect phse time out 1024 */
    IfxQspi_ExpectTimeout_2048    = 5,   /**< \brief Expect phse time out 2048 */
    IfxQspi_ExpectTimeout_4096    = 6,   /**< \brief Expect phse time out 4096 */
    IfxQspi_ExpectTimeout_8192    = 7,   /**< \brief Expect phse time out 8192 */
    IfxQspi_ExpectTimeout_16384   = 8,   /**< \brief Expect phse time out 16384 */
    IfxQspi_ExpectTimeout_32768   = 9,   /**< \brief Expect phse time out 32768 */
    IfxQspi_ExpectTimeout_65536   = 10,  /**< \brief Expect phse time out 65536 */
    IfxQspi_ExpectTimeout_131072  = 11,  /**< \brief Expect phse time out 131072 */
    IfxQspi_ExpectTimeout_262144  = 12,  /**< \brief Expect phse time out 262144 */
    IfxQspi_ExpectTimeout_524288  = 13,  /**< \brief Expect phse time out 524288 */
    IfxQspi_ExpectTimeout_1048576 = 14,  /**< \brief Expect phse time out 1048576 */
    IfxQspi_ExpectTimeout_2097152 = 15   /**< \brief Expect phse time out 2097152 */
} IfxQspi_ExpectTimeout;

/** \brief QSPI controller mode (GLOBALCON.MODE)
 */
typedef enum
{
    IfxQspi_Mode_master      = 0,  /**< \brief QSPI in "master" mode */
    IfxQspi_Mode_pwmOverQspi = 1,  /**< \brief QSPI in "PWM over QSPI" mode */
    IfxQspi_Mode_slave       = 2   /**< \brief QSPI in "slave" mode */
} IfxQspi_Mode;

/** \brief Request between pause and Run transition
 */
typedef enum
{
    IfxQspi_PauseRunTransition_pause = 0,  /**< \brief Request value for pause */
    IfxQspi_PauseRunTransition_run   = 1   /**< \brief Request value for Run */
} IfxQspi_PauseRunTransition;

/** \brief QSPI frame phase (STATUS.PHASE)
 */
typedef enum
{
    IfxQspi_Phase_wait        = 0, /**< \brief Frame wait phase */
    IfxQspi_Phase_idleA       = 1, /**< \brief Frame idleA phase */
    IfxQspi_Phase_idleB       = 2, /**< \brief frame idleB phase */
    IfxQspi_Phase_lead        = 3, /**< \brief Frame lead phase */
    IfxQspi_Phase_data        = 4, /**< \brief Frame data phase */
    IfxQspi_Phase_trail       = 5, /**< \brief Frame trail phase */
    IfxQspi_Phase_expect      = 6, /**< \brief Frame expect phase */
    IfxQspi_Phase_leadStrobe  = 7, /**< \brief Frame leadstrobe phase */
    IfxQspi_Phase_trailStrobe = 8  /**< \brief Frame trailstrobe phase */
} IfxQspi_Phase;

/** \brief Phase Transition Event
 */
typedef enum
{
    IfxQspi_PhaseTransitionEvent_endOfWait                 = 0,  /**< \brief BUSY (end of WAIT phase) */
    IfxQspi_PhaseTransitionEvent_serialClockPolarityChange = 1,  /**< \brief SCLKPC (serial clock polarity change) */
    IfxQspi_PhaseTransitionEvent_startOfFrame              = 2,  /**< \brief SOF (Start Of Frame ) */
    IfxQspi_PhaseTransitionEvent_transmitBufferEmptied     = 3,  /**< \brief TBE (Transmit Buffer Emptied) */
    IfxQspi_PhaseTransitionEvent_receiveBufferFilled       = 4,  /**< \brief RBF (Receive Buffer Filled) */
    IfxQspi_PhaseTransitionEvent_endOfFrame                = 5,  /**< \brief EOF (End of Frame) */
    IfxQspi_PhaseTransitionEvent_dataNotAvailable          = 6,  /**< \brief DNA (Data not Available = Start of Expect) */
    IfxQspi_PhaseTransitionEvent_endOfExpect               = 7   /**< \brief CONT (End of EXPECT phase) */
} IfxQspi_PhaseTransitionEvent;

/** \brief Reset Request (GLOBALCON.RESETS)
 */
typedef enum
{
    IfxQspi_Reset_none                = 0,  /**< \brief No Reset */
    IfxQspi_Reset_stateMachineAndFifo = 1,  /**< \brief State Machine, TXFIFO and RXFIFO reset, registers not reseted */
    IfxQspi_Reset_registers           = 2,  /**< \brief Registers Reset */
    IfxQspi_Reset_kernel              = 3   /**< \brief Kernel / Module Reset */
} IfxQspi_Reset;

/** \brief Receive Fifo Interrupt Threshold
 */
typedef enum
{
    IfxQspi_RxFifoInt_0,     /**< \brief RxFifo Interrupt Threshold  #0  */
    IfxQspi_RxFifoInt_1,     /**< \brief RxFifo Interrupt Threshold  #1  */
    IfxQspi_RxFifoInt_2,     /**< \brief RxFifo Interrupt Threshold  #2  */
    IfxQspi_RxFifoInt_3      /**< \brief RxFifo Interrupt Threshold  #3  */
} IfxQspi_RxFifoInt;

/** \brief Enable/disable the sensitivity of the module to sleep signal\n
 * Definition in Ifx_QSPI.CLC.B.EDIS
 */
typedef enum
{
    IfxQspi_SleepMode_enable  = 0, /**< \brief Sleep Mode enabled */
    IfxQspi_SleepMode_disable = 1  /**< \brief Sleep Mode disabled */
} IfxQspi_SleepMode;

/** \brief STROBE delay for SLSO in delayed mode (GLOBALCON.STROBE)
 */
typedef enum
{
    IfxQspi_StrobeDelay_1,     /**< \brief SLSO delay 1 cycle(s)  */
    IfxQspi_StrobeDelay_2,     /**< \brief SLSO delay 2 cycle(s)  */
    IfxQspi_StrobeDelay_3,     /**< \brief SLSO delay 3 cycle(s)  */
    IfxQspi_StrobeDelay_4,     /**< \brief SLSO delay 4 cycle(s)  */
    IfxQspi_StrobeDelay_5,     /**< \brief SLSO delay 5 cycle(s)  */
    IfxQspi_StrobeDelay_6,     /**< \brief SLSO delay 6 cycle(s)  */
    IfxQspi_StrobeDelay_7,     /**< \brief SLSO delay 7 cycle(s)  */
    IfxQspi_StrobeDelay_8,     /**< \brief SLSO delay 8 cycle(s)  */
    IfxQspi_StrobeDelay_9,     /**< \brief SLSO delay 9 cycle(s)  */
    IfxQspi_StrobeDelay_10,    /**< \brief SLSO delay 10 cycle(s)  */
    IfxQspi_StrobeDelay_11,    /**< \brief SLSO delay 11 cycle(s)  */
    IfxQspi_StrobeDelay_12,    /**< \brief SLSO delay 12 cycle(s)  */
    IfxQspi_StrobeDelay_13,    /**< \brief SLSO delay 13 cycle(s)  */
    IfxQspi_StrobeDelay_14,    /**< \brief SLSO delay 14 cycle(s)  */
    IfxQspi_StrobeDelay_15,    /**< \brief SLSO delay 15 cycle(s)  */
    IfxQspi_StrobeDelay_16,    /**< \brief SLSO delay 16 cycle(s)  */
    IfxQspi_StrobeDelay_17,    /**< \brief SLSO delay 17 cycle(s)  */
    IfxQspi_StrobeDelay_18,    /**< \brief SLSO delay 18 cycle(s)  */
    IfxQspi_StrobeDelay_19,    /**< \brief SLSO delay 19 cycle(s)  */
    IfxQspi_StrobeDelay_20,    /**< \brief SLSO delay 20 cycle(s)  */
    IfxQspi_StrobeDelay_21,    /**< \brief SLSO delay 21 cycle(s)  */
    IfxQspi_StrobeDelay_22,    /**< \brief SLSO delay 22 cycle(s)  */
    IfxQspi_StrobeDelay_23,    /**< \brief SLSO delay 23 cycle(s)  */
    IfxQspi_StrobeDelay_24,    /**< \brief SLSO delay 24 cycle(s)  */
    IfxQspi_StrobeDelay_25,    /**< \brief SLSO delay 25 cycle(s)  */
    IfxQspi_StrobeDelay_26,    /**< \brief SLSO delay 26 cycle(s)  */
    IfxQspi_StrobeDelay_27,    /**< \brief SLSO delay 27 cycle(s)  */
    IfxQspi_StrobeDelay_28,    /**< \brief SLSO delay 28 cycle(s)  */
    IfxQspi_StrobeDelay_29,    /**< \brief SLSO delay 29 cycle(s)  */
    IfxQspi_StrobeDelay_30,    /**< \brief SLSO delay 30 cycle(s)  */
    IfxQspi_StrobeDelay_31,    /**< \brief SLSO delay 31 cycle(s)  */
    IfxQspi_StrobeDelay_32     /**< \brief SLSO delay 32 cycle(s)  */
} IfxQspi_StrobeDelay;

/** \brief OCDS Suspend Control (OCDS.SUS)
 */
typedef enum
{
    IfxQspi_Suspend_none = 0,  /**< \brief No suspend */
    IfxQspi_Suspend_hard = 1,  /**< \brief Hard Suspend */
    IfxQspi_Suspend_soft = 2   /**< \brief Soft Suspend */
} IfxQspi_Suspend;

/** \brief Transmit Fifo Interrupt Threshold
 */
typedef enum
{
    IfxQspi_TxFifoInt_1,     /**< \brief TxFifo Interrupt Threshold  #1  */
    IfxQspi_TxFifoInt_2,     /**< \brief TxFifo Interrupt Threshold  #2  */
    IfxQspi_TxFifoInt_3,     /**< \brief TxFifo Interrupt Threshold  #3  */
    IfxQspi_TxFifoInt_4      /**< \brief TxFifo Interrupt Threshold  #4  */
} IfxQspi_TxFifoInt;

/** \} */

/** \addtogroup IfxLld_Qspi_Std_Operative
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Clear ALL service requests
 * \param qspi Pointer to QSPI module registers
 * \return None
 */
IFX_INLINE void IfxQspi_clearAllEventFlags(Ifx_QSPI *qspi);

/** \brief Clear RX service requests
 * \param qspi Pointer to QSPI module registers
 * \return None
 */
IFX_INLINE void IfxQspi_clearRxReq(Ifx_QSPI *qspi);

/** \brief Clear TX service requests
 * \param qspi Pointer to QSPI module registers
 * \return None
 */
IFX_INLINE void IfxQspi_clearTxReq(Ifx_QSPI *qspi);

/** \brief Configure PT1 event (also USR event depending if USREN=1 )
 * \param qspi Pointer to QSPI module registers
 * \param pt1Config Phase Transition1 Event Config
 * \return None
 */
IFX_INLINE void IfxQspi_configPT1Event(Ifx_QSPI *qspi, IfxQspi_PhaseTransitionEvent pt1Config);

/** \brief Configure PT2 event
 * \param qspi Pointer to QSPI module registers
 * \param pt2Config Phase Transition2 Event Config
 * \return None
 */
IFX_INLINE void IfxQspi_configPT2Event(Ifx_QSPI *qspi, IfxQspi_PhaseTransitionEvent pt2Config);

/** \brief Enable/Disable Loopback mode.
 * \param qspi Pointer to QSPI module registers
 * \param enable Enable / Disable loopback
 * \return None
 */
IFX_INLINE void IfxQspi_enableLoopbackMode(Ifx_QSPI *qspi, boolean enable);

/** \brief enable Hard/Soft Module suspend
 * Note: The api works only when the OCDS is enabled and in Supervisor Mode. When OCDS is disabled the OCS suspend control is ineffective.
 * \param qspi Pointer to QSPI module registers
 * \param suspend Module suspend
 * \return None
 */
IFX_INLINE void IfxQspi_enableModuleSuspend(Ifx_QSPI *qspi, IfxQspi_Suspend suspend);

/** \brief enable Phase Transition1 Event
 * \param qspi Pointer to QSPI module registers
 * \param enable Enable (1) / Disable (0)
 * \return None
 */
IFX_INLINE void IfxQspi_enablePT1Event(Ifx_QSPI *qspi, boolean enable);

/** \brief enable Phase Transition2 Event
 * \param qspi Pointer to QSPI module registers
 * \param enable Enable (1) / Disable (0)
 * \return None
 */
IFX_INLINE void IfxQspi_enablePT2Event(Ifx_QSPI *qspi, boolean enable);

/** \brief enable User Event (Event selected by PT1)
 * \param qspi Pointer to QSPI module registers
 * \param enable Enable (1) / Disable (0)
 * \return None
 */
IFX_INLINE void IfxQspi_enableUsrEvent(Ifx_QSPI *qspi, boolean enable);

/**
 * \param qspi Pointer to QSPI module registers
 * \return Error Flags
 */
IFX_INLINE uint16 IfxQspi_getErrorFlags(Ifx_QSPI *qspi);

/** \brief Request for Module in Pause state
 * no interrupts
 * no communication
 * \param qspi Pointer to QSPI module registers
 * \return None
 */
IFX_INLINE void IfxQspi_pause(Ifx_QSPI *qspi);

/** \brief Read the oldest data from RXFIFO
 * \param qspi Pointer to QSPI module registers
 */
IFX_INLINE uint32 IfxQspi_readReceiveFifo(Ifx_QSPI *qspi);

/** \brief Request reset (State Machine & FIFO / Register / Module)
 * \param qspi Pointer to QSPI module registers
 * \param reset reset type (GLOBALCON.RESETS)
 * \return None
 */
IFX_INLINE void IfxQspi_requestReset(Ifx_QSPI *qspi, IfxQspi_Reset reset);

/** \brief Request for QSPI in Run state
 * \param qspi Pointer to QSPI module registers
 * \return None
 */
IFX_INLINE void IfxQspi_run(Ifx_QSPI *qspi);

/** \brief Set the threshold of RXFIFO for service request generation
 * \param qspi Pointer to QSPI module registers
 * \param rxFifoInt RxFIFO Interrupt threshold to set
 * \return None
 */
IFX_INLINE void IfxQspi_setReceiveFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_RxFifoInt rxFifoInt);

/** \brief Write Data into DATAENTRY register
 * \param qspi Pointer to QSPI module registers
 * \param data Data to be entered into TxFIFO
 * \return None
 */
IFX_INLINE void IfxQspi_writeTransmitFifo(Ifx_QSPI *qspi, uint32 data);

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Reads 16bit data from the Rx FIFO
 * \param qspi Pointer to QSPI module registers
 * \param data Received data will be copied into this array
 * \param count Number of items to be received
 * \return None
 */
IFX_EXTERN void IfxQspi_read16(Ifx_QSPI *qspi, uint16 *data, Ifx_SizeT count);

/** \brief Reads 32bit data from the Rx FIFO
 * \param qspi Pointer to QSPI module registers
 * \param data Received data will be copied into this array
 * \param count Number of items to be received
 * \return None
 */
IFX_EXTERN void IfxQspi_read32(Ifx_QSPI *qspi, uint32 *data, Ifx_SizeT count);

/** \brief Reads 8bit data from the Rx FIFO
 * \param qspi Pointer to QSPI module registers
 * \param data Received data will be copied into this array
 * \param count Number of items to be received
 * \return None
 */
IFX_EXTERN void IfxQspi_read8(Ifx_QSPI *qspi, uint8 *data, Ifx_SizeT count);

/** \brief resets QSPI kernel
 * \param qspi pointer to QSPI registers
 * \return None
 */
IFX_EXTERN void IfxQspi_resetModule(Ifx_QSPI *qspi);

/** \brief Writes 16bit data into the Tx FIFO
 * \param qspi Pointer to QSPI module registers
 * \param channelId Channel number to which econ val belongs
 * \param data Array of data to be sent
 * \param count Number of items to be sent
 * \return None
 */
IFX_EXTERN void IfxQspi_write16(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint16 *data, Ifx_SizeT count);

/** \brief Writes 32bit data into the Tx FIFO
 * \param qspi Pointer to QSPI module registers
 * \param channelId Channel number to which econ val belongs
 * \param data Array of data to be sent
 * \param count Number of items to be sent
 * \return None
 */
IFX_EXTERN void IfxQspi_write32(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 *data, Ifx_SizeT count);

/** \brief Writes 8bit data into the Tx FIFO
 * \param qspi Pointer to QSPI module registers
 * \param channelId Channel number to which econ val belongs
 * \param data Array of data to be sent
 * \param count Number of items to be sent
 * \return None
 */
IFX_EXTERN void IfxQspi_write8(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 *data, Ifx_SizeT count);

/** \} */

/** \addtogroup IfxLld_Qspi_Std_Support
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief flush the receive FIFO
 * \param qspi Pointer to QSPI module registers
 * \return None
 */
IFX_INLINE void IfxQspi_flushReceiveFifo(Ifx_QSPI *qspi);

/** \brief flush the transmit FIFO
 * \param qspi Pointer to QSPI module registers
 * \return None
 */
IFX_INLINE void IfxQspi_flushTransmitFifo(Ifx_QSPI *qspi);

/** \brief Gets the current mode of QSPI
 * \param qspi Pointer to QSPI module registers
 * \return The current mode
 */
IFX_INLINE IfxQspi_Mode IfxQspi_getMode(Ifx_QSPI *qspi);

/** \brief Specifies function to get module frequency
 * \param qspi Pointer to QSPI module registers
 * \return Module frequency in Float value
 */
IFX_INLINE float IfxQspi_getModuleFrequency(Ifx_QSPI *qspi);

/** \brief Gets actual transmission phase
 * \param qspi Pointer to QSPI module registers
 * \return Actual transmission phase
 */
IFX_INLINE IfxQspi_Phase IfxQspi_getPhase(Ifx_QSPI *qspi);

/** \brief Gets the filling level of RXFIFO
 * \param qspi Pointer to QSPI module registers
 * \return RxFIFO level
 */
IFX_INLINE uint8 IfxQspi_getReceiveFifoLevel(Ifx_QSPI *qspi);

/** \brief Gets Time Quanta frequency
 * \param qspi Pointer to QSPI module registers
 * \return TQ frequency in float
 */
IFX_INLINE float IfxQspi_getTimeQuantaFrequency(Ifx_QSPI *qspi);

/** \brief Gets the filling level of TXFIFO
 * \param qspi Pointer to QSPI module registers
 * \return TxFIFO level
 */
IFX_INLINE uint8 IfxQspi_getTransmitFifoLevel(Ifx_QSPI *qspi);

/** \brief Specifies the Module enable or disable status
 * \param qspi Pointer to QSPI module registers
 * \return TRUE if module is enabled otherwise FALSE
 */
IFX_INLINE boolean IfxQspi_isModuleEnabled(Ifx_QSPI *qspi);

/** \brief Sets the disable module request
 * \param qspi Pointer to QSPI module registers
 * \return None
 */
IFX_INLINE void IfxQspi_setDisableModuleRequest(Ifx_QSPI *qspi);

/** \brief Sets the enable module request
 * \param qspi Pointer to QSPI module registers
 * \return None
 */
IFX_INLINE void IfxQspi_setEnableModuleRequest(Ifx_QSPI *qspi);

/** \brief Sets the disable module request
 * \param qspi Pointer to QSPI module registers
 * \param mode Sleep mode selection
 * \return None
 */
IFX_INLINE void IfxQspi_setSleepMode(Ifx_QSPI *qspi, IfxQspi_SleepMode mode);

/** \brief Set the threshold of TXFIFO for service request generation
 * \param qspi Pointer to QSPI module registers
 * \param txFifoInt TxFifo Interrupt threshold to set
 * \return None
 */
IFX_INLINE void IfxQspi_setTransmitFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_TxFifoInt txFifoInt);

/** \brief Write configuration into BACON register
 * \param qspi Pointer to QSPI module registers
 * \param baconVal baconVal Value to be entered in  BACON register
 * \return None
 */
IFX_INLINE void IfxQspi_writeBasicConfiguration(Ifx_QSPI *qspi, uint32 baconVal);

/** \brief Write configuration into BACON register with .LAST flag set to 0
 * \param qspi Pointer to QSPI module registers
 * \param baconVal baconVal Value to be entered in  BACON register
 * \return None
 */
IFX_INLINE void IfxQspi_writeBasicConfigurationBeginStream(Ifx_QSPI *qspi, uint32 baconVal);

/** \brief Write configuration into BACON register with .LAST flag set to 1
 * \param qspi Pointer to QSPI module registers
 * \param baconVal baconVal Value to be entered in  BACON register
 * \return None
 */
IFX_INLINE void IfxQspi_writeBasicConfigurationEndStream(Ifx_QSPI *qspi, uint32 baconVal);

/** \brief Writes channel timing configuration into ECON register
 * \param qspi Pointer to QSPI module registers
 * \param channelId Channel number to which econ val belongs
 * \param econVal Extended configuration value
 * \return None
 */
IFX_INLINE void IfxQspi_writeExtendedConfiguration(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 econVal);

/** \brief Writes Data and Configuration into MIXEDENTRY register
 * \param qspi Pointer to QSPI module registers
 * \param mixEntryVal Data and configuration in mixed
 * \return None
 */
IFX_INLINE void IfxQspi_writeMixedDataTransmitFifo(Ifx_QSPI *qspi, uint32 mixEntryVal);

/******************************************************************************/
/*-------------------------Global Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Function to calculate baudrate of specified channel
 * \param qspi Pointer to QSPI module registers
 * \param channelId QSPI channel number
 * \return Actual baudrate in float
 */
IFX_EXTERN float IfxQspi_calcRealBaudrate(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId);

/** \brief Function to calculate BACON register values
 * \param qspi Pointer to QSPI module registers
 * \param channelId QSPI Channel Number
 * \param chMode Frame configuration
 * \param baudrate The desired baudrate
 * \return Calculated BACON value
 */
IFX_EXTERN uint32 IfxQspi_calculateBasicConfigurationValue(Ifx_QSPI *qspi, const IfxQspi_ChannelId channelId, const SpiIf_ChMode *chMode, const float baudrate);

/** \brief Function to calculate ECON register values
 * \param qspi Pointer to QSPI module registers
 * \param cs QSPI channel Number : 8->0,9->1,.......
 * \param chConfig SPI Channel Configuration
 * \return Calculated ECON[CS] value
 */
IFX_EXTERN uint32 IfxQspi_calculateExtendedConfigurationValue(Ifx_QSPI *qspi, const uint8 cs, const SpiIf_ChConfig *chConfig);

/** \brief Function to calculate prescaler
 * \param qspi Pointer to QSPI module registers
 * \param baudrate Maximum baudrate in Float
 * \return Prescaler in integer
 */
IFX_EXTERN uint32 IfxQspi_calculatePrescaler(Ifx_QSPI *qspi, float baudrate);

/** \brief Specifies the function to calculate Time quantum length
 * \param qspi Pointer to QSPI module registers
 * \param maxBaudrate Maximum baudrate in Float
 * \return Time quantum length in integer
 */
IFX_EXTERN uint32 IfxQspi_calculateTimeQuantumLength(Ifx_QSPI *qspi, float maxBaudrate);

/** \brief Re-calculated BACON from the oldBACON
 * \param oldBACON Old BACON value
 * \param numOfData numOfData in LONG or CONTINUOUS mode
 * \param shortData Specifies SHORT mode (TRUE) or other modes (FALSE)
 * \param lastData Specifies last data in LONG or CONTINUOUS
 * \return Re-calculated BACON
 */
IFX_EXTERN uint32 IfxQspi_recalcBasicConfiguration(uint32 oldBACON, Ifx_SizeT numOfData, boolean shortData, boolean lastData);

/** \brief Configures a Slave Select Output
 * \param qspi Pointer to QSPI module registers
 * \param channelId Channel number to which econ val belongs
 * \param outputEnable chip select output will be enabled during transaction
 * \param activeLevel TRUE: active-high, FALSE: active-low
 * \return None
 */
IFX_EXTERN void IfxQspi_setSlaveSelectOutputControl(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, boolean outputEnable, boolean activeLevel);

/** \} */

/** \addtogroup IfxLld_Qspi_Std_Interrupt
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Gets the Error request value
 * \param qspi Pointer to QSPI module registers
 * \return Error request value
 */
IFX_INLINE volatile Ifx_SRC_SRCR *IfxQspi_getErrorSrc(Ifx_QSPI *qspi);

/** \brief Specifies the function to get Index
 * \param qspi Pointer to QSPI module registers
 * \return Index in Integer
 */
IFX_INLINE uint32 IfxQspi_getIndex(Ifx_QSPI *qspi);

/** \brief Gets the RXFIFO service request
 * \param qspi Pointer to QSPI module registers
 * \return Receive service request value
 */
IFX_INLINE volatile Ifx_SRC_SRCR *IfxQspi_getReceiveSrc(Ifx_QSPI *qspi);

/** \brief Gets the TXFIFO service request
 * \param qspi Pointer to QSPI module registers
 * \return Transmission service request value
 */
IFX_INLINE volatile Ifx_SRC_SRCR *IfxQspi_getTransmitSrc(Ifx_QSPI *qspi);

/** \} */

/** \addtogroup IfxLld_Qspi_Std_IO
 * \{ */

/******************************************************************************/
/*-------------------------Inline Function Prototypes-------------------------*/
/******************************************************************************/

/** \brief Initializes a MRST input
 * \param mrstIn the MRST Pin which should be configured
 * \param mrstInMode the pin input mode which should be configured
 * \return None
 */
IFX_INLINE void IfxQspi_initMrstInPin(const IfxQspi_Mrst_In *mrstIn, IfxPort_InputMode mrstInMode);

/** \brief Initializes a MRST output
 * \param mrstOut the MRST Pin which should be configured
 * \param mrstOutMode the pin output mode which should be configured
 * \param padDriver the pad driver mode which should be configured
 * \return None
 */
IFX_INLINE void IfxQspi_initMrstOutPin(const IfxQspi_Mrst_Out *mrstOut, IfxPort_OutputMode mrstOutMode, IfxPort_PadDriver padDriver);

/** \brief Initializes a MTSR input
 * \param mtsrIn the MTSR Pin which should be configured
 * \param mtsrInMode the pin input mode which should be configured
 * \return None
 */
IFX_INLINE void IfxQspi_initMtsrInPin(const IfxQspi_Mtsr_In *mtsrIn, IfxPort_InputMode mtsrInMode);

/** \brief Initializes a MTSR output
 * \param mtsrOut the MTSR Pin which should be configured
 * \param mtsrOutMode the pin output mode which should be configured
 * \param padDriver the pad driver mode which should be configured
 * \return None
 */
IFX_INLINE void IfxQspi_initMtsrOutPin(const IfxQspi_Mtsr_Out *mtsrOut, IfxPort_OutputMode mtsrOutMode, IfxPort_PadDriver padDriver);

/** \brief Initializes a SCLK input
 * \param sclkIn the SCLK Pin which should be configured
 * \param sclkInMode the pin input mode which should be configured
 * \return None
 */
IFX_INLINE void IfxQspi_initSclkInPin(const IfxQspi_Sclk_In *sclkIn, IfxPort_InputMode sclkInMode);

/** \brief Initializes a SCLK output
 * \param sclkOut the SCLK Pin which should be configured
 * \param sclkOutMode the pin output mode which should be configured
 * \param padDriver the pad driver mode which should be configured
 * \return None
 */
IFX_INLINE void IfxQspi_initSclkOutPin(const IfxQspi_Sclk_Out *sclkOut, IfxPort_OutputMode sclkOutMode, IfxPort_PadDriver padDriver);

/** \brief Initializes a SLSI input
 * \param slsi the SLSI Pin which should be configured
 * \param slsiMode the pin input mode which should be configured
 * \return None
 */
IFX_INLINE void IfxQspi_initSlsi(const IfxQspi_Slsi_In *slsi, IfxPort_InputMode slsiMode);

/** \brief Initializes a SLSO output
 * \param slso the SLSO Pin which should be configured
 * \param slsoMode the pin output mode which should be configured
 * \param padDriver the pad driver mode which should be configured
 * \param outIndex Pin Pad driver index
 * \return None
 */
IFX_INLINE void IfxQspi_initSlso(const IfxQspi_Slso_Out *slso, IfxPort_OutputMode slsoMode, IfxPort_PadDriver padDriver, IfxPort_OutputIdx outIndex);

/** \} */

/******************************************************************************/
/*---------------------Inline Function Implementations------------------------*/
/******************************************************************************/

IFX_INLINE void IfxQspi_clearAllEventFlags(Ifx_QSPI *qspi)
{
    qspi->FLAGSCLEAR.U = 0xFFFFU;
}


IFX_INLINE void IfxQspi_clearRxReq(Ifx_QSPI *qspi)
{
    qspi->FLAGSCLEAR.B.RXC = 1U;
}


IFX_INLINE void IfxQspi_clearTxReq(Ifx_QSPI *qspi)
{
    qspi->FLAGSCLEAR.B.TXC = 1U;
}


IFX_INLINE void IfxQspi_configPT1Event(Ifx_QSPI *qspi, IfxQspi_PhaseTransitionEvent pt1Config)
{
    qspi->GLOBALCON1.B.PT1 = pt1Config;
}


IFX_INLINE void IfxQspi_configPT2Event(Ifx_QSPI *qspi, IfxQspi_PhaseTransitionEvent pt2Config)
{
    qspi->GLOBALCON1.B.PT2 = pt2Config;
}


IFX_INLINE void IfxQspi_enableLoopbackMode(Ifx_QSPI *qspi, boolean enable)
{
    qspi->GLOBALCON.B.LB = 1;
}


IFX_INLINE void IfxQspi_enableModuleSuspend(Ifx_QSPI *qspi, IfxQspi_Suspend suspend)
{
    Ifx_QSPI_OCS ocs;
    ocs.U = qspi->OCS.U;

    // remove protection ie SUS_P to 0 (32 bit write only.)
    ocs.B.SUS_P = 0;
    qspi->OCS.U = ocs.U;
    ocs.U       = qspi->OCS.U;

    ocs.B.SUS   = suspend;
    // enable protection bit?
    qspi->OCS.U = ocs.U;
}


IFX_INLINE void IfxQspi_enablePT1Event(Ifx_QSPI *qspi, boolean enable)
{
    qspi->GLOBALCON1.B.PT1EN = enable;
}


IFX_INLINE void IfxQspi_enablePT2Event(Ifx_QSPI *qspi, boolean enable)
{
    qspi->GLOBALCON1.B.PT2EN = enable;
}


IFX_INLINE void IfxQspi_enableUsrEvent(Ifx_QSPI *qspi, boolean enable)
{
    qspi->GLOBALCON1.B.USREN = enable;
}


IFX_INLINE void IfxQspi_flushReceiveFifo(Ifx_QSPI *qspi)
{
    // Flush RXFIFO
    qspi->GLOBALCON.B.RESETS = 4;
}


IFX_INLINE void IfxQspi_flushTransmitFifo(Ifx_QSPI *qspi)
{
    // Flush TXFIFO
    qspi->GLOBALCON.B.RESETS = 2;
}


IFX_INLINE uint16 IfxQspi_getErrorFlags(Ifx_QSPI *qspi)
{
    return qspi->STATUS.B.ERRORFLAGS;
}


IFX_INLINE volatile Ifx_SRC_SRCR *IfxQspi_getErrorSrc(Ifx_QSPI *qspi)
{
    uint32 index = IfxQspi_getIndex(qspi);
    return &MODULE_SRC.QSPI.QSPI[index].ERR;
}


IFX_INLINE uint32 IfxQspi_getIndex(Ifx_QSPI *qspi)
{
    uint32 base           = (uint32)&MODULE_QSPI0;
    uint32 singleDistance = ((uint32)&MODULE_QSPI1) - base;
    uint32 distance       = ((uint32)qspi) - base;
    uint32 index          = distance / singleDistance;
    return index;
}


IFX_INLINE IfxQspi_Mode IfxQspi_getMode(Ifx_QSPI *qspi)
{
    return (IfxQspi_Mode)qspi->GLOBALCON.B.MS;
}


IFX_INLINE float IfxQspi_getModuleFrequency(Ifx_QSPI *qspi)
{
    return IfxScuCcu_getMaxFrequency();
}


IFX_INLINE IfxQspi_Phase IfxQspi_getPhase(Ifx_QSPI *qspi)
{
    return (IfxQspi_Phase)qspi->STATUS.B.PHASE;
}


IFX_INLINE uint8 IfxQspi_getReceiveFifoLevel(Ifx_QSPI *qspi)
{
    return qspi->STATUS.B.RXFIFOLEVEL;
}


IFX_INLINE volatile Ifx_SRC_SRCR *IfxQspi_getReceiveSrc(Ifx_QSPI *qspi)
{
    uint32 index = IfxQspi_getIndex(qspi);
    return &MODULE_SRC.QSPI.QSPI[index].RX;
}


IFX_INLINE float IfxQspi_getTimeQuantaFrequency(Ifx_QSPI *qspi)
{
    return IfxQspi_getModuleFrequency(qspi) / (qspi->GLOBALCON.B.TQ + 1);
}


IFX_INLINE uint8 IfxQspi_getTransmitFifoLevel(Ifx_QSPI *qspi)
{
    return qspi->STATUS.B.TXFIFOLEVEL;
}


IFX_INLINE volatile Ifx_SRC_SRCR *IfxQspi_getTransmitSrc(Ifx_QSPI *qspi)
{
    uint32 index = IfxQspi_getIndex(qspi);
    return &MODULE_SRC.QSPI.QSPI[index].TX;
}


IFX_INLINE void IfxQspi_initMrstInPin(const IfxQspi_Mrst_In *mrstIn, IfxPort_InputMode mrstInMode)
{
    IfxPort_setPinModeInput(mrstIn->pin.port, mrstIn->pin.pinIndex, mrstInMode);
    mrstIn->module->PISEL.B.MRIS = mrstIn->select;
}


IFX_INLINE void IfxQspi_initMrstOutPin(const IfxQspi_Mrst_Out *mrstOut, IfxPort_OutputMode mrstOutMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(mrstOut->pin.port, mrstOut->pin.pinIndex, mrstOutMode, mrstOut->select);
    IfxPort_setPinPadDriver(mrstOut->pin.port, mrstOut->pin.pinIndex, padDriver);
}


IFX_INLINE void IfxQspi_initMtsrInPin(const IfxQspi_Mtsr_In *mtsrIn, IfxPort_InputMode mtsrInMode)
{
    IfxPort_setPinModeInput(mtsrIn->pin.port, mtsrIn->pin.pinIndex, mtsrInMode);
    mtsrIn->module->PISEL.B.SRIS = mtsrIn->select;
}


IFX_INLINE void IfxQspi_initMtsrOutPin(const IfxQspi_Mtsr_Out *mtsrOut, IfxPort_OutputMode mtsrOutMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(mtsrOut->pin.port, mtsrOut->pin.pinIndex, mtsrOutMode, mtsrOut->select);
    IfxPort_setPinPadDriver(mtsrOut->pin.port, mtsrOut->pin.pinIndex, padDriver);
}


IFX_INLINE void IfxQspi_initSclkInPin(const IfxQspi_Sclk_In *sclkIn, IfxPort_InputMode sclkInMode)
{
    IfxPort_setPinModeInput(sclkIn->pin.port, sclkIn->pin.pinIndex, sclkInMode);
    sclkIn->module->PISEL.B.SCIS = sclkIn->select;
}


IFX_INLINE void IfxQspi_initSclkOutPin(const IfxQspi_Sclk_Out *sclkOut, IfxPort_OutputMode sclkOutMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(sclkOut->pin.port, sclkOut->pin.pinIndex, sclkOutMode, sclkOut->select);
    IfxPort_setPinPadDriver(sclkOut->pin.port, sclkOut->pin.pinIndex, padDriver);
}


IFX_INLINE void IfxQspi_initSlsi(const IfxQspi_Slsi_In *slsi, IfxPort_InputMode slsiMode)
{
    IfxPort_setPinModeInput(slsi->pin.port, slsi->pin.pinIndex, slsiMode);
    /* PISEL */
    slsi->module->PISEL.B.SLSIS = slsi->select + 1;
}


IFX_INLINE void IfxQspi_initSlso(const IfxQspi_Slso_Out *slso, IfxPort_OutputMode slsoMode, IfxPort_PadDriver padDriver, IfxPort_OutputIdx outIndex)
{
    IfxPort_setPinModeOutput(slso->pin.port, slso->pin.pinIndex, slsoMode, outIndex);
    IfxPort_setPinPadDriver(slso->pin.port, slso->pin.pinIndex, padDriver);
}


IFX_INLINE boolean IfxQspi_isModuleEnabled(Ifx_QSPI *qspi)
{
    return (qspi->CLC.B.DISS == 0) ? TRUE : FALSE;
}


IFX_INLINE void IfxQspi_pause(Ifx_QSPI *qspi)
{
    qspi->GLOBALCON.B.EN = 0;

    while (IfxQspi_getPhase(qspi) != IfxQspi_Phase_wait)
    {}
}


IFX_INLINE uint32 IfxQspi_readReceiveFifo(Ifx_QSPI *qspi)
{
    return qspi->RXEXIT.U;
}


IFX_INLINE void IfxQspi_requestReset(Ifx_QSPI *qspi, IfxQspi_Reset reset)
{
    qspi->GLOBALCON.B.RESETS = reset;
}


IFX_INLINE void IfxQspi_run(Ifx_QSPI *qspi)
{
    qspi->GLOBALCON.B.EN = 1;
}


IFX_INLINE void IfxQspi_setDisableModuleRequest(Ifx_QSPI *qspi)
{
    qspi->CLC.B.DISR = 1;
}


IFX_INLINE void IfxQspi_setEnableModuleRequest(Ifx_QSPI *qspi)
{
    qspi->CLC.B.DISR = 0;
}


IFX_INLINE void IfxQspi_setReceiveFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_RxFifoInt rxFifoInt)
{
    qspi->GLOBALCON1.B.RXFIFOINT = rxFifoInt;
}


IFX_INLINE void IfxQspi_setSleepMode(Ifx_QSPI *qspi, IfxQspi_SleepMode mode)
{
    qspi->CLC.B.EDIS = mode;
}


IFX_INLINE void IfxQspi_setTransmitFifoInterrruptThreshold(Ifx_QSPI *qspi, IfxQspi_TxFifoInt txFifoInt)
{
    qspi->GLOBALCON1.B.TXFIFOINT = txFifoInt;
}


IFX_INLINE void IfxQspi_writeBasicConfiguration(Ifx_QSPI *qspi, uint32 baconVal)
{
    qspi->BACONENTRY.U = baconVal;
}


IFX_INLINE void IfxQspi_writeBasicConfigurationBeginStream(Ifx_QSPI *qspi, uint32 baconVal)
{
    Ifx_QSPI_BACON bacon;
    bacon.U            = baconVal;
    bacon.B.LAST       = 0;

    qspi->BACONENTRY.U = bacon.U;
}


IFX_INLINE void IfxQspi_writeBasicConfigurationEndStream(Ifx_QSPI *qspi, uint32 baconVal)
{
    Ifx_QSPI_BACON bacon;
    bacon.U            = baconVal;
    bacon.B.LAST       = 1;

    qspi->BACONENTRY.U = bacon.U;
}


IFX_INLINE void IfxQspi_writeExtendedConfiguration(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 econVal)
{
    int cs = channelId % 8;
    qspi->ECON[cs].U = econVal;
}


IFX_INLINE void IfxQspi_writeMixedDataTransmitFifo(Ifx_QSPI *qspi, uint32 mixEntryVal)
{
    qspi->MIXENTRY.U = mixEntryVal;
}


IFX_INLINE void IfxQspi_writeTransmitFifo(Ifx_QSPI *qspi, uint32 data)
{
    qspi->DATAENTRY[0].U = data;
}


#endif /* IFXQSPI_H */
