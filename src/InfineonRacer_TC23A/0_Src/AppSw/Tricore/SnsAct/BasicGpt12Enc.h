/**
 * \file BasicGpt12Enc.h
 * \brief Demo BasicGpt12Enc
 *
 */

#ifndef BASICGPT12ENC_H
#define BASICGPT12ENC_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include "Configuration.h"
#include "ConfigurationIsr.h"
#include "Gpt12/IncrEnc/IfxGpt12_IncrEnc.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define IR_getEncSpeed() IR_Encoder.speed
#define IR_getEncPosition() IR_Encoder.rawPosition
#define IR_getEncDirection() IR_Encoder.direction

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct{
        float32          speed;  /* rad/sec */
        float32          rawPosition;  /* pulse position */
        IfxStdIf_Pos_Dir direction;  /* IfxStdIf_Pos_Dir_forward or IfxStdIf_Pos_Dir_backward */
}IR_Encoder_t;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN IR_Encoder_t IR_Encoder;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void BasicGpt12Enc_init(void);
IFX_EXTERN void BasicGpt12Enc_run(void);

#ifdef ENCODER_EMUL
IFX_EXTERN void EncoderEmul_init(void);
IFX_EXTERN void EncoderEmul_run(void);
#endif

#endif
