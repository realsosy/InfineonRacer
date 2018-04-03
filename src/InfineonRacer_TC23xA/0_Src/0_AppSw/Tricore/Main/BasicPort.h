/**
 * \file BasicPort.h
 * \brief BasicPort
 *
 * \version InfineonRacer 1_0_0
 */

#ifndef BASICPORT_H
#define BASICPORT_H 1
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Ifx_Types.h>
#include <stdio.h>
#include "Bsp.h"
#include "ConfigurationIsr.h"
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "IfxPort.h"
#include "Cpu0_Main.h"
#include "Cpu/Irq/IfxCpu_Irq.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define IR_getLed108() IR_Port.led108
#define IR_getLed109() IR_Port.led109
#define IR_getLed110() IR_Port.led110
#define IR_getPort00_0() IR_Port.port00_0
#define IR_getPort00_1() IR_Port.port00_1

#define IR_getMotor0En() IR_MotorEn.Motor0Enable
#define IR_getMotor1En() IR_MotorEn.Motor1Enable

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct
{
	volatile boolean led108;
	volatile boolean led109;
	volatile boolean led110;
	volatile boolean port00_0;
	volatile boolean port00_1;

	volatile boolean m11_inh; /* port02_0; */
	volatile boolean m12_inh; /* port00_2; */
	volatile boolean m21_inh; /* port02_2; */
	volatile boolean m22_inh; /* port33_5; */
} Basic_Port;

typedef struct{
	boolean Motor0Enable;
	boolean Motor1Enable;
} IR_MotorEn_t;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN Basic_Port IR_Port;
IFX_EXTERN IR_MotorEn_t IR_MotorEn;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void IR_setMotor0En(boolean enable);
IFX_EXTERN void IR_setMotor1En(boolean enable);
IFX_EXTERN void IR_setLed108(boolean led);
IFX_EXTERN void IR_setLed109(boolean led);
IFX_EXTERN void IR_setLed110(boolean led);

IFX_EXTERN void BasicPort_init(void);
IFX_EXTERN void BasicPort_run(void);

#endif
