/**
 * \file Gpt12.c
 * \brief Demo Gpt12
 *
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include "BasicGpt12Enc.h"
#include "_Utilities/Ifx_Assert.h"
#include "Port/Std/IfxPort.h"
#include "SysSe/Bsp/Bsp.h"
#include "IfxPort_PinMap.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct
{
    IfxGpt12_IncrEnc incrEnc;
} Basic_Gpt12Enc_t;

typedef struct
{
    struct
    {
        IfxPort_Pin A;            /**< \brief A */
        IfxPort_Pin B;            /**< \brief B */
        IfxPort_Pin Z;            /**< \brief Z */
    } interface;
    struct
    {
        boolean          run;                  /* Status: TRUE: the encoder turn */
        IfxStdIf_Pos_Dir direction;            /* Direction*/
        uint32           step;                 /* Current step */
        sint32           rawPosition;          /* Expected rawPosition */
        sint32           positionMask;         /* Mask for rawPosition value */
        uint32           resolution;           /* Encoder resolution */
        uint32           multiplicationFactor; /* Encoder multiplication factor */
        float32          updatePeriod;         /* Refresh period */
        float32          speed;                /* Requested encoder speed in rad/s */
    } control;
} EncEmul_t;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
EncEmul_t g_EncEmul; /**< \brief Demo information */
Basic_Gpt12Enc_t g_Gpt12Enc;
IR_Encoder_t IR_Encoder;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

void EncoderEmul_step(void);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/** \addtogroup IfxLld_Demo_Gpt12_SrcDoc_Main_Interrupt
 * \{ */

/** \name Interrupts for IncrIncZero
 * \{ */
IFX_INTERRUPT(ISR_IncrIncZero, 0, ISR_PRIORITY_INCRENC_ZERO);
/** \} */

/** \} */

/** \brief Handle IncrIncZero interrupt.
 *
 * \isrProvider \ref ISR_PROVIDER_INCRENC_ZERO
 * \isrPriority \ref ISR_PRIORITY_INCRENC_ZERO
 *
 */
void ISR_IncrIncZero(void)
{
    __enable();
    IfxGpt12_IncrEnc_onZeroIrq(&g_Gpt12Enc.incrEnc);
}


/** Demo init API
 *
 * This function is call from the main, before interrupt enable
 */
void Gpt12Demo_init(void)
{
    BasicGpt12Enc_init();
    EncoderEmul_init();
}
void BasicGpt12Enc_init(void)
{

    /* Initialize global clocks */
    /* FIXME Global prescaller should not be set by the driver as they are global resources */
    IfxGpt12_enableModule(&MODULE_GPT120);
    IfxGpt12_setGpt1BlockPrescaler(&MODULE_GPT120, IfxGpt12_Gpt1BlockPrescaler_8);
    IfxGpt12_setGpt2BlockPrescaler(&MODULE_GPT120, IfxGpt12_Gpt2BlockPrescaler_4);

    IfxGpt12_IncrEnc_Config config;
    IfxGpt12_IncrEnc_initConfig(&config, &MODULE_GPT120);
#if 1
    {
        /* Test implementation with T3 as core */
        config.base.offset                    = 0;
        config.base.reversed                  = FALSE;
        config.base.resolution                = 256; //1024; //2^n 개수만 허용
        config.base.periodPerRotation         = 1;
        config.base.resolutionFactor          = IfxStdIf_Pos_ResolutionFactor_fourFold;
        config.base.updatePeriod              = 1.00e-3;//100e-6;
        config.base.speedModeThreshold        = 200;
        config.base.minSpeed                  = 10;
        config.base.maxSpeed                  = 500;
        config.zeroIsrPriority                = ISR_PRIORITY(INTERRUPT_INCRINC_ZERO);
        config.zeroIsrProvider                = ISR_PROVIDER(INTERRUPT_INCRINC_ZERO);
        config.pinA                           = &IfxGpt120_T3INA_P02_6_IN;
        config.pinB                           = &IfxGpt120_T3EUDA_P02_7_IN;
        config.pinZ                           = &IfxGpt120_T4INA_P02_8_IN;
        config.pinMode                        = IfxPort_InputMode_noPullDevice;

        config.base.speedFilterEnabled        = TRUE;//TRUE;
        config.base.speedFilerCutOffFrequency = config.base.maxSpeed / 2 * IFX_PI * 2;
    }
#else
    {
        /* Test implementation with T2 as core */
        config.base.offset                    = 100;
        config.base.reversed                  = FALSE;
        config.base.resolution                = 2048;
        config.base.periodPerRotation         = 1;
        config.base.resolutionFactor          = IfxStdIf_Pos_ResolutionFactor_fourFold;
        config.base.updatePeriod              = 100e-6;
        config.base.speedModeThreshold        = 200;
        config.base.minSpeed                  = 10;
        config.base.maxSpeed                  = 500;
        config.zeroIsrPriority                = ISR_PRIORITY(INTERRUPT_INCRINC_ZERO);
        config.zeroIsrProvider                = ISR_PROVIDER(INTERRUPT_INCRINC_ZERO);
        config.pinA                           = &IfxGpt120_T2INA_P00_7_IN;
        config.pinB                           = &IfxGpt120_T2EUDA_P00_8_IN;
        config.pinZ                           = &IfxGpt120_T4EUDA_P00_9_IN;
        config.pinMode                        = IfxPort_InputMode_noPullDevice;

        config.base.speedFilterEnabled        = TRUE;
        config.base.speedFilerCutOffFrequency = config.base.maxSpeed / 2 * IFX_PI * 10;
    }
#endif
    IFX_VALIDATE(IFX_VERBOSE_LEVEL_ERROR, IfxGpt12_IncrEnc_init(&g_Gpt12Enc.incrEnc, &config));
}

void EncoderEmul_init(void)
{
    g_EncEmul.control.run                  = TRUE;
    g_EncEmul.control.direction            = IfxStdIf_Pos_Dir_forward;
    g_EncEmul.control.resolution           = 256;
    g_EncEmul.control.step                 = 3;
    g_EncEmul.control.rawPosition          = 0;
    g_EncEmul.control.speed                = IFX_PI * 2.0;
    g_EncEmul.control.multiplicationFactor = IfxStdIf_Pos_ResolutionFactor_fourFold;
    g_EncEmul.control.updatePeriod         = 1.0e-3;
    g_EncEmul.control.positionMask         = g_EncEmul.control.resolution * g_EncEmul.control.multiplicationFactor - 1;

    g_EncEmul.interface.A                  = IfxGpt120_T3INA_P02_6_IN.pin;
    g_EncEmul.interface.B                  = IfxGpt120_T3EUDA_P02_7_IN.pin;
    g_EncEmul.interface.Z                  = IfxGpt120_T4INA_P02_8_IN.pin;

    /* Overwrite port configuration to enable feature check */
    IfxPort_setPinModeOutput(g_EncEmul.interface.A.port, g_EncEmul.interface.A.pinIndex, IfxPort_OutputMode_pushPull,
        IfxPort_OutputIdx_general);
    IfxPort_setPinModeOutput(g_EncEmul.interface.B.port, g_EncEmul.interface.B.pinIndex, IfxPort_OutputMode_pushPull,
        IfxPort_OutputIdx_general);
    IfxPort_setPinModeOutput(g_EncEmul.interface.Z.port, g_EncEmul.interface.Z.pinIndex, IfxPort_OutputMode_pushPull,
        IfxPort_OutputIdx_general);

    initTime();
}

void EncoderEmul_step(void)
{
    if (g_EncEmul.control.run)
    {
        sint32 rawPosition;
        rawPosition = g_EncEmul.control.rawPosition;

        if (g_EncEmul.control.direction == IfxStdIf_Pos_Dir_forward)
        {
            g_EncEmul.control.step++;
            g_EncEmul.control.step &= 0x3;
            rawPosition++;
            if(rawPosition > g_EncEmul.control.positionMask) {
            	rawPosition = 0;
            }
        }
        else
        {
            g_EncEmul.control.step--;
            g_EncEmul.control.step &= 0x3;
            rawPosition--;
            if(rawPosition < 0) {
            	rawPosition = g_EncEmul.control.positionMask;
            }
        }

//        rawPosition                &= g_Gpt12.control.positionMask;
        g_EncEmul.control.rawPosition = rawPosition;

#if 1

        /* Handle zero pin */
        if (g_EncEmul.control.direction == IfxStdIf_Pos_Dir_forward)
        {
            if (rawPosition == 0)
            {
                IfxPort_setPinHigh(g_EncEmul.interface.Z.port, g_EncEmul.interface.Z.pinIndex);
            }
            else if (rawPosition == 1)
            {
                IfxPort_setPinLow(g_EncEmul.interface.Z.port, g_EncEmul.interface.Z.pinIndex);
            }
        }
        else
        {
            if (rawPosition == g_EncEmul.control.positionMask)
            {
                IfxPort_setPinHigh(g_EncEmul.interface.Z.port, g_EncEmul.interface.Z.pinIndex);
            }
            else if (rawPosition == g_EncEmul.control.positionMask - 1)
            {
                IfxPort_setPinLow(g_EncEmul.interface.Z.port, g_EncEmul.interface.Z.pinIndex);
            }
        }

#endif

        switch (g_EncEmul.control.step)
        {
        case 0:
            IfxPort_setPinLow(g_EncEmul.interface.A.port, g_EncEmul.interface.A.pinIndex);
            IfxPort_setPinLow(g_EncEmul.interface.B.port, g_EncEmul.interface.B.pinIndex);
            break;
        case 1:
            IfxPort_setPinLow(g_EncEmul.interface.A.port, g_EncEmul.interface.A.pinIndex);
            IfxPort_setPinHigh(g_EncEmul.interface.B.port, g_EncEmul.interface.B.pinIndex);
            break;
        case 2:
            IfxPort_setPinHigh(g_EncEmul.interface.A.port, g_EncEmul.interface.A.pinIndex);
            IfxPort_setPinHigh(g_EncEmul.interface.B.port, g_EncEmul.interface.B.pinIndex);
            break;
        case 3:
            IfxPort_setPinHigh(g_EncEmul.interface.A.port, g_EncEmul.interface.A.pinIndex);
            IfxPort_setPinLow(g_EncEmul.interface.B.port, g_EncEmul.interface.B.pinIndex);
            break;
        }
    }
}

void BasicGpt12Enc_run(void){
	IfxGpt12_IncrEnc_update(&g_Gpt12Enc.incrEnc);

	IR_Encoder.speed       = IfxGpt12_IncrEnc_getSpeed(&g_Gpt12Enc.incrEnc);
	IR_Encoder.rawPosition = (float32) IfxGpt12_IncrEnc_getRawPosition(&g_Gpt12Enc.incrEnc);
	IR_Encoder.direction   = IfxGpt12_IncrEnc_getDirection(&g_Gpt12Enc.incrEnc);
}

/** Demo run API
 *
 * This function is call from the main, background loop
 */

void EncoderEmul_run(void)
{
    Ifx_TickTime tickPeriod;
    Ifx_TickTime tickDeadLine;

    Ifx_TickTime refreshPeriod;
    Ifx_TickTime refreshDeadLine;

    refreshPeriod     = g_EncEmul.control.updatePeriod * TimeConst_1s;

    refreshDeadLine = now();
    tickDeadLine    = refreshDeadLine;

    while (1)
    {
        g_EncEmul.control.run = g_EncEmul.control.speed != 0.0;

        if (!g_EncEmul.control.run)
        {}
        else
        {
            float32 roundDuration_s = (2.0 * IFX_PI) / g_EncEmul.control.speed;
            float32 tickDuration_s  = roundDuration_s / (g_EncEmul.control.positionMask + 1);

            tickPeriod = tickDuration_s * TimeConst_1s;

            if (isDeadLine(tickDeadLine))
            {
                tickDeadLine = addTTime(tickDeadLine, tickPeriod);
                EncoderEmul_step();
            }
        }

//        if (isDeadLine(refreshDeadLine))
//        {
//            refreshDeadLine = addTTime(refreshDeadLine, refreshPeriod);
//
//            BasicGpt12Enc_run();
//        }

    }
}


