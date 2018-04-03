/**
 * \file BasicPort.c
 * \brief BasicPort
 *
 * \version InfineonRacer 1_0_0
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include <IfxPort_PinMap.h>

#include "BasicPort.h"
#include "InfineonRacer.h"

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

Basic_Port IR_Port;
IR_MotorEn_t IR_MotorEn = {FALSE, FALSE};


/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
static void setOutputPin(Ifx_P *port, uint8 pin, boolean state);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
static void setOutputPin(Ifx_P *port, uint8 pin, boolean state)
{
    if (state)
    {
        IfxPort_setPinState(port, pin, IfxPort_State_high);
    }
    else
    {
        IfxPort_setPinState(port, pin, IfxPort_State_low);
    }
}

/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void BasicPort_init(void)
{
    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    IR_Port.led108 = TRUE;
    IR_Port.led109 = TRUE;
    IR_Port.led110 = TRUE;

    /* LED Port output */
    IfxPort_setPinMode(LED108.port, LED108.pinIndex, IfxPort_Mode_outputPushPullGeneral);
	IfxPort_setPinPadDriver(LED108.port, LED108.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed1);
	setOutputPin(LED108.port, LED108.pinIndex, IR_Port.led108);

	IfxPort_setPinMode(LED109.port, LED109.pinIndex, IfxPort_Mode_outputPushPullGeneral);
	IfxPort_setPinPadDriver(LED109.port, LED109.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed1);
	setOutputPin(LED109.port, LED109.pinIndex, IR_Port.led109);

	IfxPort_setPinMode(LED110.port, LED110.pinIndex, IfxPort_Mode_outputPushPullGeneral);
	IfxPort_setPinPadDriver(LED110.port, LED110.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed1);
	setOutputPin(LED110.port, LED110.pinIndex, IR_Port.led110);

    /* Motor Port output */
    IfxPort_setPinMode(M11_INH.port, M11_INH.pinIndex, IfxPort_Mode_outputPushPullGeneral);
	IfxPort_setPinPadDriver(M11_INH.port, M11_INH.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed1);
	setOutputPin(M11_INH.port, M11_INH.pinIndex, IR_Port.m11_inh);

    IfxPort_setPinMode(M12_INH.port, M12_INH.pinIndex, IfxPort_Mode_outputPushPullGeneral);
	IfxPort_setPinPadDriver(M12_INH.port, M12_INH.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed1);
	setOutputPin(M12_INH.port, M12_INH.pinIndex, IR_Port.m12_inh);

    IfxPort_setPinMode(M21_INH.port, M21_INH.pinIndex, IfxPort_Mode_outputPushPullGeneral);
	IfxPort_setPinPadDriver(M21_INH.port, M21_INH.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed1);
	setOutputPin(M21_INH.port, M21_INH.pinIndex, IR_Port.m21_inh);

    IfxPort_setPinMode(M22_INH.port, M22_INH.pinIndex, IfxPort_Mode_outputPushPullGeneral);
	IfxPort_setPinPadDriver(M22_INH.port, M22_INH.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed1);
	setOutputPin(M22_INH.port, M22_INH.pinIndex, IR_Port.m22_inh);

	/* Digital Input */
	IfxPort_setPinModeInput(PORT00_0.port, PORT00_0.pinIndex, IfxPort_InputMode_noPullDevice);
	IfxPort_setPinModeInput(PORT00_1.port, PORT00_1.pinIndex, IfxPort_InputMode_noPullDevice);

	IR_Port.port00_0 =  IfxPort_getPinState(PORT00_0.port, PORT00_0.pinIndex);
	IR_Port.port00_1 =  IfxPort_getPinState(PORT00_1.port, PORT00_1.pinIndex);

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);
}


/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
void BasicPort_run(void)
{
    /* LED Port output */
	setOutputPin(LED108.port, LED108.pinIndex, IR_Port.led108);
	setOutputPin(LED109.port, LED109.pinIndex, IR_Port.led109);
	setOutputPin(LED110.port, LED110.pinIndex, IR_Port.led110);

    /* LED Port output */
	setOutputPin(M11_INH.port, M11_INH.pinIndex, IR_MotorEn.Motor0Enable);
	setOutputPin(M12_INH.port, M12_INH.pinIndex, IR_MotorEn.Motor0Enable);
	setOutputPin(M21_INH.port, M21_INH.pinIndex, IR_MotorEn.Motor1Enable);
	setOutputPin(M22_INH.port, M22_INH.pinIndex, IR_MotorEn.Motor1Enable);

	/* Digital Input */
	IR_Port.port00_0 =  IfxPort_getPinState(PORT00_0.port, PORT00_0.pinIndex);
	IR_Port.port00_1 =  IfxPort_getPinState(PORT00_1.port, PORT00_1.pinIndex);
}

void IR_setMotor0En(boolean enable){
	if(enable != FALSE){
		enable = TRUE;
	}
	IR_MotorEn.Motor0Enable = enable;
}

void IR_setMotor1En(boolean enable){
	if(enable != FALSE){
		enable = TRUE;
	}
	IR_MotorEn.Motor1Enable = enable;
}

void IR_setLed108(boolean led){
	if(led != FALSE){
		led = TRUE;
	}
	IR_Port.led108 = led;
}

void IR_setLed109(boolean led){
	if(led != FALSE){
		led = TRUE;
	}
	IR_Port.led109 = led;
}

void IR_setLed110(boolean led){
	if(led != FALSE){
		led = TRUE;
	}
	IR_Port.led110 = led;
}
