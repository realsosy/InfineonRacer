/**
 * \file IfxQspi.c
 * \brief QSPI  basic functionality
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
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxQspi.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

float IfxQspi_calcRealBaudrate(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId)
{
    int           cs    = channelId % 8;
    float         fQspi = IfxScuCcu_getMaxFrequency();
    Ifx_QSPI_ECON econ[8];
    econ[cs].U = qspi->ECON[cs].U;
    fQspi      = fQspi / (qspi->GLOBALCON.B.TQ + 1);
    fQspi      = fQspi / (econ[cs].B.Q + 1);
    fQspi      = fQspi / ((econ[cs].B.A + 1) + econ[cs].B.B + econ[cs].B.C);
    return fQspi;
}


uint32 IfxQspi_calculateBasicConfigurationValue(Ifx_QSPI *qspi, const IfxQspi_ChannelId channelId, const SpiIf_ChMode *chMode, const float baudrate)
{
    Ifx_QSPI_BACON bacon;
    bacon.U = 0;

    uint32         pre = IfxQspi_calculatePrescaler(qspi, baudrate);

    bacon.B.LAST   = 0;                       /* 1-bits Last Word in a Frame, will be set via recalcBasicConfiguration before transfer */
    bacon.B.IPRE   = pre;                     /* 3-bits Prescaler for the Idle Delay */
    bacon.B.IDLE   = chMode->csInactiveDelay; /* 3-bits Idle Delay Length */
    bacon.B.LPRE   = pre;                     /* 3-bits Prescaler for the Leading Delay */
    bacon.B.LEAD   = chMode->csLeadDelay;     /* 3-bits Leading Delay Length */
    bacon.B.TPRE   = pre;                     /* 3-bits Prescaler for the Trailing Delay */
    bacon.B.TRAIL  = chMode->csTrailDelay;    /* 2-bits Trailing Delay Length */
    bacon.B.PARTYP = (chMode->parityMode == Ifx_ParityMode_even) ? 0 : 1;
    bacon.B.UINT   = 0;                       /* 1-bits User Interrupt at the PT1 Event in the Subsequent Frames */
    bacon.B.MSB    = (chMode->dataHeading == SpiIf_DataHeading_lsbFirst) ? 0 : 1;
    bacon.B.BYTE   = 0;                       /* only support bitwise selection in B.DL */
    bacon.B.DL     = chMode->dataWidth - 1;
    bacon.B.CS     = channelId;

    return bacon.U;
}


uint32 IfxQspi_calculateExtendedConfigurationValue(Ifx_QSPI *qspi, const uint8 cs, const SpiIf_ChConfig *chConfig)
{
    Ifx_QSPI_ECON econ;
    econ.U = 0;

    float32       tQspi  = 1.0f / IfxQspi_getTimeQuantaFrequency(qspi);
    float32       tBaud  = 1.0f / chConfig->baudrate;
    int           abcMin = (2);
    int           abcMax = (4 + 0 + 4);
    int           q, bestQ = 0, abc, bestAbc = abcMax;
    float32       error, bestError;
    float32       tTmp, tBaudTmp;
    boolean       done = FALSE;

    bestError = 1e6;

    for (abc = abcMax; abc >= abcMin; abc -= 2)
    {
        tTmp = tQspi * abc;
        q    = ((tBaud / tTmp) + 0.5);

        if (q > 64)
        {
            q = 64;
        }

        if (q < 2)
        {
            q = 2;
        }

        tBaudTmp = tTmp * q;
        error    = __absf(tBaudTmp - tBaud);

        if (__leqf(error, bestError))
        {
            bestError = error;
            bestAbc   = abc;
            bestQ     = q;

            if (bestAbc > 5)
            {
                done = (!__neqf(error, 0.0)) ? TRUE : FALSE;

                if (done != FALSE)
                {
                    break;
                }
            }
        }
    }

    econ.B.Q     = bestQ - 1;
    econ.B.A     = (bestAbc / 2) - 1;
    econ.B.C     = __min(bestAbc / 2, 3);
    econ.B.B     = bestAbc - (econ.B.C + (econ.B.A + 1));
    econ.B.CPH   = (chConfig->mode.shiftClock == SpiIf_ShiftClock_shiftTransmitDataOnLeadingEdge) ? 1 : 0;
    econ.B.CPOL  = (chConfig->mode.clockPolarity == SpiIf_ClockPolarity_idleLow) ? 0 : 1;
    econ.B.PAREN = chConfig->mode.parityCheck;

    return econ.U;
}


uint32 IfxQspi_calculatePrescaler(Ifx_QSPI *qspi, float baudrate)
{
    float  error, bestError;
    float  halfBaud = baudrate / 2;
    float  fQspiIn  = IfxQspi_getModuleFrequency(qspi);
    bestError = 10e6;
    uint32 i, bestPre = 0;

    for (i = 0; i < 8; i++)
    {
        float tempHalfBaud = fQspiIn / (1U << (4 * i));
        error = __absf(tempHalfBaud - halfBaud);

        if (__leqf(error, bestError))
        {
            bestError = error;
            bestPre   = i;
        }
    }

    return bestPre;
}


uint32 IfxQspi_calculateTimeQuantumLength(Ifx_QSPI *qspi, float maxBaudrate)
{
    float  divider = IfxScuCcu_getMaxFrequency() / (4.0 * maxBaudrate);
    uint32 tq      = __max((uint32)__roundf(divider) - 1, 0);
    return tq;
}


void IfxQspi_read16(Ifx_QSPI *qspi, uint16 *data, Ifx_SizeT count)
{
    volatile Ifx_QSPI_RXEXIT *rxFifo = &qspi->RXEXIT;

    while (count > 0)
    {
        *(data++) = (uint16)rxFifo->U;
        count--;
    }
}


void IfxQspi_read32(Ifx_QSPI *qspi, uint32 *data, Ifx_SizeT count)
{
    volatile Ifx_QSPI_RXEXIT *rxFifo = &qspi->RXEXIT;

    while (count > 0)
    {
        *(data++) = rxFifo->U;
        count--;
    }
}


void IfxQspi_read8(Ifx_QSPI *qspi, uint8 *data, Ifx_SizeT count)
{
    volatile Ifx_QSPI_RXEXIT *rxFifo = &qspi->RXEXIT;

    while (count > 0)
    {
        *(data++) = (uint8)rxFifo->U;
        count--;
    }
}


uint32 IfxQspi_recalcBasicConfiguration(uint32 oldBACON, Ifx_SizeT numOfData, boolean shortData, boolean lastData)
{
    Ifx_QSPI_BACON bacon;
    bacon.U = oldBACON;

    if (shortData == FALSE)
    {
        bacon.B.DL   = numOfData;
        bacon.B.BYTE = 1;
    }

    bacon.B.LAST = lastData;
    return bacon.U;
}


void IfxQspi_resetModule(Ifx_QSPI *qspi)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    qspi->KRST0.B.RST = 1;          /* Only if both Kernel reset bits are set a reset is executed */
    qspi->KRST1.B.RST = 1;
    IfxScuWdt_setCpuEndinit(passwd);

    while (0 == qspi->KRST0.B.RSTSTAT)  /* Wait until reset is executed */

    {}

    IfxScuWdt_clearCpuEndinit(passwd);
    qspi->KRSTCLR.B.CLR = 1;            /* Clear Kernel reset status bit */
    IfxScuWdt_setCpuEndinit(passwd);
}


void IfxQspi_setSlaveSelectOutputControl(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, boolean outputEnable, boolean activeLevel)
{
    uint16        mask = 1 << channelId;

    Ifx_QSPI_SSOC ssoc;
    ssoc.U = qspi->SSOC.U;

    if (outputEnable)
    {
        ssoc.B.OEN |= mask;
    }
    else
    {
        ssoc.B.OEN &= ~mask;
    }

    if (activeLevel)
    {
        ssoc.B.AOL |= mask;
    }
    else
    {
        ssoc.B.AOL &= ~mask;
    }

    qspi->SSOC.U = ssoc.U;
}


void IfxQspi_write16(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint16 *data, Ifx_SizeT count)
{
    int                          cs        = channelId % 8;
    volatile Ifx_QSPI_DATAENTRY *dataEntry = &qspi->DATAENTRY[cs];

    while (count > 0)
    {
        dataEntry->U = *(data++);
        count--;
    }
}


void IfxQspi_write32(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint32 *data, Ifx_SizeT count)
{
    int                          cs        = channelId % 8;
    volatile Ifx_QSPI_DATAENTRY *dataEntry = &qspi->DATAENTRY[cs];

    while (count > 0)
    {
        dataEntry->U = *(data++);
        count--;
    }
}


void IfxQspi_write8(Ifx_QSPI *qspi, IfxQspi_ChannelId channelId, uint8 *data, Ifx_SizeT count)
{
    int                          cs        = channelId % 8;
    volatile Ifx_QSPI_DATAENTRY *dataEntry = &qspi->DATAENTRY[cs];

    while (count > 0)
    {
        dataEntry->U = *(data++);
        count--;
    }
}
