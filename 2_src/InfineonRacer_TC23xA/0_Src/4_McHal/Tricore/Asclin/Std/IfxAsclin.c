/**
 * \file IfxAsclin.c
 * \brief ASCLIN  basic functionality
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

#include "IfxAsclin.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void IfxAsclin_enableAscErrorFlags(Ifx_ASCLIN *asclin, boolean parEnable, boolean rfoEnable)
{
    IfxAsclin_enableParityErrorFlag(asclin, parEnable);     /* enables parity error*/
    IfxAsclin_enableRxFifoOverflowFlag(asclin, rfoEnable);  /* enables Rx fifo Overflow error*/
}


void IfxAsclin_enableModule(Ifx_ASCLIN *asclin)
{
    uint16 psw = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(psw);           /* clears the endinit protection*/
    IfxAsclin_setEnableModuleRequest(asclin); /* enables the module*/
    IfxScuWdt_setCpuEndinit(psw);             /* sets the endinit protection back on*/
}


float32 IfxAsclin_getFaFrequency(Ifx_ASCLIN *asclin)
{
    float32               frequency;
    IfxAsclin_ClockSource clockSource = IfxAsclin_getClockSource(asclin);   /* gets the current clock source*/

    switch (clockSource)
    {
    case IfxAsclin_ClockSource_noClock: /* gets the respective frequency*/
        frequency = 0.0;
        break;
    case IfxAsclin_ClockSource_kernelClock:
        frequency = IfxScuCcu_getSpbFrequency();
        break;
    case IfxAsclin_ClockSource_oscillatorClock:
        frequency = IfxScuCcu_getOsc0Frequency();
        break;
    case IfxAsclin_ClockSource_flexRayClock:
        frequency = IfxScuCcu_getPllErayFrequency();
        break;
    case IfxAsclin_ClockSource_ascFastClock:
        frequency = IfxScuCcu_getBaud2Frequency();
        break;
    default:
        frequency = 0.0;
        break;
    }

    return frequency;
}


sint32 IfxAsclin_getIndex(Ifx_ASCLIN *asclin)
{
    uint32 base           = (uint32)&MODULE_ASCLIN0;
    uint32 singleDistance = ((uint32)&MODULE_ASCLIN1) - base;
    uint32 distance       = ((uint32)asclin) - base;
    uint32 index          = distance / singleDistance;
    return index;
}


float32 IfxAsclin_getOvsFrequency(Ifx_ASCLIN *asclin)
{
    return (IfxAsclin_getPdFrequency(asclin) * asclin->BRG.B.NUMERATOR) / asclin->BRG.B.DENOMINATOR;
}


float32 IfxAsclin_getPdFrequency(Ifx_ASCLIN *asclin)
{
    return IfxAsclin_getFaFrequency(asclin) / (asclin->BITCON.B.PRESCALER + 1);
}


float32 IfxAsclin_getShiftFrequency(Ifx_ASCLIN *asclin)
{
    return IfxAsclin_getOvsFrequency(asclin) / asclin->BITCON.B.OVERSAMPLING;
}


volatile Ifx_SRC_SRCR *IfxAsclin_getSrcPointerEr(Ifx_ASCLIN *asclin)
{
    return &MODULE_SRC.ASCLIN.ASCLIN[IfxAsclin_getIndex(asclin)].ERR;
}


volatile Ifx_SRC_SRCR *IfxAsclin_getSrcPointerRx(Ifx_ASCLIN *asclin)
{
    return &MODULE_SRC.ASCLIN.ASCLIN[IfxAsclin_getIndex(asclin)].RX;
}


volatile Ifx_SRC_SRCR *IfxAsclin_getSrcPointerTx(Ifx_ASCLIN *asclin)
{
    return &MODULE_SRC.ASCLIN.ASCLIN[IfxAsclin_getIndex(asclin)].TX;
}


uint32 IfxAsclin_read16(Ifx_ASCLIN *asclin, uint16 *data, uint32 count)
{
    volatile Ifx_ASCLIN_RXDATA *rxData = (volatile Ifx_ASCLIN_RXDATA *)&asclin->RXDATA.U;

    while (count > 0)
    {
        *data++ = (uint16)rxData->U;
        count--;
    }

    return count;
}


uint32 IfxAsclin_read32(Ifx_ASCLIN *asclin, uint32 *data, uint32 count)
{
    volatile Ifx_ASCLIN_RXDATA *rxData = (volatile Ifx_ASCLIN_RXDATA *)&asclin->RXDATA.U;

    while (count > 0)
    {
        *data++ = rxData->U;
        count--;
    }

    return count;
}


uint32 IfxAsclin_read8(Ifx_ASCLIN *asclin, uint8 *data, uint32 count)
{
    volatile Ifx_ASCLIN_RXDATA *rxData = (volatile Ifx_ASCLIN_RXDATA *)&asclin->RXDATA.U;

    while (count > 0)
    {
        *data++ = (uint8)rxData->U;
        count--;
    }

    return count;
}


void IfxAsclin_setBaudrateBitFields(Ifx_ASCLIN *asclin, uint16 prescaler, uint16 numerator, uint16 denominator, IfxAsclin_OversamplingFactor oversampling)
{
    IfxAsclin_ClockSource clockSource = IfxAsclin_getClockSource(asclin); /* gets the current clock source */
    IfxAsclin_setClockSource(asclin, IfxAsclin_ClockSource_noClock);      /* turns off the clock for settings */
    IfxAsclin_setPrescaler(asclin, prescaler);                            /* sets the prescaler*/
    IfxAsclin_setNumerator(asclin, numerator);                            /* sets the numerator*/
    IfxAsclin_setDenominator(asclin, denominator);                        /* sets the denominator*/
    IfxAsclin_setOversampling(asclin, oversampling);                      /* sets the oversampling*/
    IfxAsclin_setClockSource(asclin, clockSource);                        /* sets the clock source back on*/
}


boolean IfxAsclin_setBitTiming(Ifx_ASCLIN *asclin, float32 baudrate, IfxAsclin_OversamplingFactor oversampling, IfxAsclin_SamplePointPosition samplepoint, IfxAsclin_SamplesPerBit medianFilter)
{
    IfxAsclin_ClockSource source = IfxAsclin_getClockSource(asclin);
    float32               fOvs;
    uint32                d, n, dBest = 1, nBest = 1;
    float32               f;

    /* Set the PD frequency */
    float32               fpd = IfxAsclin_getPdFrequency(asclin);
    oversampling = __maxu(oversampling, 4);
    samplepoint  = __maxu(samplepoint, 1);
    fOvs         = baudrate * oversampling;
    float32               relError   = fOvs;
    float32               limit      = 0.001 * fOvs;                     // save the error limit

    boolean               terminated = FALSE;
    float32               newRelError;                                   //modified by Hassan
    uint32                adder_facL, adder_facH, adder_facL_min, count; //modified by Hassan

    d              = (uint32)(fpd / fOvs);
    n              = 1;

    dBest          = d;
    nBest          = n;
    adder_facL_min = 0;
    f              = (fpd * n) / d;
    relError       = __absf(fOvs - f);

    if (relError <= limit)
    {
        terminated = TRUE;
    }

    for (n = 2; ((!terminated) && ((n * d) <= 0xFFF)); n++)
    {
        if (n == 2)
        {
            adder_facL = 1;
            adder_facH = 1;
        }
        else
        {
            adder_facL = (adder_facL_min * n) / nBest;
            adder_facH = adder_facL + 1;
        }

        for (count = adder_facL; count <= adder_facH; count++)
        {
            f           = (fpd * n) / (n * d + count);
            newRelError = __absf(fOvs - f);

            if (relError > (newRelError))
            {
                relError       = newRelError;
                nBest          = n;
                dBest          = (n * d + count);
                adder_facL_min = count;
            }
        }

        if (relError <= limit)
        {
            break;
        }
    }

    IfxAsclin_setClockSource(asclin, IfxAsclin_ClockSource_noClock);
    asclin->BRG.B.DENOMINATOR = dBest;
    asclin->BRG.B.NUMERATOR   = nBest;

    /* Set the SHIFT frequency */
    asclin->BITCON.B.OVERSAMPLING = oversampling - 1;

    /* Set the sampling point */
    asclin->BITCON.B.SAMPLEPOINT = samplepoint;

    /* Set the median filter */
    asclin->BITCON.B.SM = medianFilter ? 1 : 0;

    IfxAsclin_setClockSource(asclin, source);

    return TRUE;
}


void IfxAsclin_setClockSource(Ifx_ASCLIN *asclin, IfxAsclin_ClockSource clockSource)
{
    asclin->CSR.B.CLKSEL = clockSource; /* selects the given clock source*/

    /* Waits TW or polls for CSR.CON to change */
    if (clockSource == IfxAsclin_ClockSource_noClock)
    {
        while (IfxAsclin_getClockStatus(asclin) != 0U)
        {}
    }
    else
    {
        while (IfxAsclin_getClockStatus(asclin) != 1U)
        {}
    }
}


uint32 IfxAsclin_write16(Ifx_ASCLIN *asclin, uint16 *data, uint32 count)
{
    volatile Ifx_ASCLIN_TXDATA *txData = (volatile Ifx_ASCLIN_TXDATA *)&asclin->TXDATA.U;

    while ((count > 0))
    {
        txData->U = *data++;
        count--;
    }

    return count;
}


uint32 IfxAsclin_write32(Ifx_ASCLIN *asclin, uint32 *data, uint32 count)
{
    volatile Ifx_ASCLIN_TXDATA *txData = (volatile Ifx_ASCLIN_TXDATA *)&asclin->TXDATA.U;

    while ((count > 0))
    {
        txData->U = *data++;
        count--;
    }

    return count;
}


uint32 IfxAsclin_write8(Ifx_ASCLIN *asclin, uint8 *data, uint32 count)
{
    volatile Ifx_ASCLIN_TXDATA *txData = (volatile Ifx_ASCLIN_TXDATA *)&asclin->TXDATA.U;

    while ((count > 0))
    {
        txData->U = *data++;
        count--;
    }

    return count;
}


void IfxAsclin_resetModule(Ifx_ASCLIN *asclin)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);

    asclin->KRST0.B.RST = 1;            /* Only if both Kernel reset bits are set a reset is executed */
    asclin->KRST1.B.RST = 1;
    IfxScuWdt_setCpuEndinit(passwd);

    while (0 == asclin->KRST0.B.RSTSTAT)    /* Wait until reset is executed */
    {}

    IfxScuWdt_clearCpuEndinit(passwd);
    asclin->KRSTCLR.B.CLR = 1;          /* Clear Kernel reset status bit */

    IfxScuWdt_setCpuEndinit(passwd);
}
