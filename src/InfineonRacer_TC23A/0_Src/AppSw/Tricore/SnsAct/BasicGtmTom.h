/**
 * \file GtmTomPwmHl.h
 * \brief Demo GtmTomPwmHl
 *
 */

#ifndef GTMTOMPWMHL_H
#define GTMTOMPWMHL_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Ifx_Types.h>
#include "Configuration.h"
#include "SysSe/Bsp/Bsp.h"

#include "Gtm/Tom/PwmHl/IfxGtm_Tom_PwmHl.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define IR_getMotor0Vol() IR_Motor.Motor0Vol
#define IR_getMotor1Vol() IR_Motor.Motor1Vol

#define IR_getSrvAngle() 	IR_Srv.Angle

#define IR_getBeeperOn() 	IR_Beeper.On
#define IR_getBeeperFreq() 	IR_Beeper.Frequency
#define IR_getBeeperVol()  	IR_Beeper.Volume
/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/



/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct{
	float32 Motor0Vol;
	float32 Motor1Vol;
}IR_Motor_t;

typedef struct{
	float32 Angle;
}IR_Srv_t;

typedef struct{
	boolean On;
	float32 Frequency; /* Hz */
	float32 Volume;   /* 0.0 ~ 1.0 */
}IR_Beeper_t;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN IR_Motor_t IR_Motor;
IFX_EXTERN IR_Srv_t IR_Srv;
IFX_EXTERN IR_Beeper_t IR_Beeper;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void IR_setMotor0Vol(float32 vol);
IFX_EXTERN void IR_setMotor1Vol(float32 vol);

IFX_EXTERN void IR_setSrvAngle(float32 angle);

IFX_EXTERN void IR_setBeeperOn(boolean beeper);
IFX_EXTERN void IR_setBeeperFreq(float32 freq);
IFX_EXTERN void IR_setBeeperVol(float32 volume);

IFX_EXTERN void BasicGtmTom_init(void);
IFX_EXTERN void BasicGtmTom_run(void);

#endif
