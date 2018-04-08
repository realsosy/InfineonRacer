/**
 * \file TriboardLed.c
 * \brief Triboard LED example function definitions.
 *
 * \copyright Copyright (c) 2017 Infineon Technologies AG. All rights reserved.
 *
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

#include "Platform_Types.h"
#include "IfxPort.h"
#include "TriboardLed.h"

static uint32 TriboardLed_sweeper= 0xFCU;
static uint8 TriboardLed_sweeperDir= 0;
static uint8 TriboardLed_blinkSwitch= 0;
static uint8 TriboardLed_blinkCount100ms= 0;

static uint32 TriboardLed_dimmerCount= 0;

//#define IFX_TRIBOARD_TYPE_TC2X2         //This define is required for Triboard Type TC2X2
//#define IFX_TRIBOARD_TYPE_TC2X3         //This define is required for Triboard Type TC2X3
//#define IFX_TRIBOARD_TYPE_TC2X4         //This define is required for Triboard Type TC2X4
//#define IFX_TRIBOARD_TYPE_TC2X9         //This define is required for Triboard Type TC2X9

#define IFX_APPBOARD_TYPE_TC23         //This define is required for Appboard Type TC23

#if defined(IFX_TRIBOARD_TYPE_TC2X2)
//For Triboard type TC2X2
#define IFX_TRIBOARD_LED_PORT_INIT() {																	\
		IfxPort_setPinModeOutput(&MODULE_P02,0,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P02,1,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P02,2,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P02,3,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P02,4,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P02,5,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P11,10,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P11,11,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general); }


#define IFX_TRIBOARD_LED_SWEEP() {									\
			P02_OUT.U &= ~(0x3FU << 0);								\
			P02_OUT.U |= (TriboardLed_sweeper & 0x3FU) << 0;		\
			P11_OUT.U &= ~(0x03U << 10);							\
			P11_OUT.U |= (TriboardLed_sweeper & 0xC0U) << (10-4); }

#define IFX_TRIBOARD_LED_DIM_DUTY_ON() {							\
			P02_OUT.U &= ~(0x3FU << 0);								\
			P11_OUT.U &= ~(0x03U << 10); }

#define IFX_TRIBOARD_LED_DIM_DUTY_OFF() {							\
			P02_OUT.U |= (TriboardLed_sweeper & 0x3FU) << 0;		\
			P11_OUT.U |= (TriboardLed_sweeper & 0xC0U) << (10-4); }

#elif defined(IFX_TRIBOARD_TYPE_TC2X3)
//For Triboard type TC2X3
#define IFX_TRIBOARD_LED_PORT_INIT() {																	\
		IfxPort_setPinModeOutput(&MODULE_P11,8,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P11,9,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P11,10,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P11,11,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P13,0,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P13,1,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P13,2,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P13,3,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general); }


#define IFX_TRIBOARD_LED_SWEEP() {									\
			P11_OUT.U &= ~(0x0FU << 8);								\
			P11_OUT.U |= (TriboardLed_sweeper & 0x0FU) << 8;		\
			P13_OUT.U &= ~(0x0FU << 0);								\
			P13_OUT.U |= (TriboardLed_sweeper & 0xF0U) << 0; }

#define IFX_TRIBOARD_LED_DIM_DUTY_ON() {							\
			P11_OUT.U &= ~(0x0FU << 8);								\
			P13_OUT.U &= ~(0x0FU << 0); }

#define IFX_TRIBOARD_LED_DIM_DUTY_OFF() {							\
			P11_OUT.U |= (TriboardLed_sweeper & 0x0FU) << 8;		\
			P13_OUT.U |= (TriboardLed_sweeper & 0xF0U) << 0; }

#elif defined(IFX_TRIBOARD_TYPE_TC2X4)
//For Triboard type TC2X4
#define IFX_TRIBOARD_LED_PORT_INIT() {																	\
		IfxPort_setPinModeOutput(&MODULE_P33,0,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,1,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,2,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,3,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,8,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,9,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,10,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,11,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general); }

#define IFX_TRIBOARD_LED_SWEEP() {									\
			P33_OUT.U &= ~(0x0FU << 0);								\
			P33_OUT.U |= (TriboardLed_sweeper & 0x0FU) << 0;		\
			P33_OUT.U &= ~(0x0FU << 8);								\
			P33_OUT.U |= (TriboardLed_sweeper & 0xF0U) << (8-4); }

#define IFX_TRIBOARD_LED_DIM_DUTY_ON() {							\
			P33_OUT.U &= ~(0x0FU << 0);								\
			P33_OUT.U &= ~(0x0FU << 8); }

#define IFX_TRIBOARD_LED_DIM_DUTY_OFF() {							\
			P33_OUT.U |= (TriboardLed_sweeper & 0x0FU) << 0;		\
			P33_OUT.U |= (TriboardLed_sweeper & 0xF0U) << (8-4); }

#elif defined(IFX_TRIBOARD_TYPE_TC2X9)
//For Triboard type TC2X9
#define IFX_TRIBOARD_LED_PORT_INIT() {																	\
		IfxPort_setPinModeOutput(&MODULE_P33,4,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,5,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,6,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,7,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P20,11,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P20,12,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P20,13,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P20,14,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general); }

#define IFX_TRIBOARD_LED_SWEEP() {									\
			P33_OUT.U &= ~(0x0FU << 4);								\
			P33_OUT.U |= (TriboardLed_sweeper & 0x0FU) << 4;		\
			P20_OUT.U &= ~(0x0FU << 11);							\
			P20_OUT.U |= (TriboardLed_sweeper & 0xF0U) << (11-4); }

#define IFX_TRIBOARD_LED_DIM_DUTY_ON() {							\
			P33_OUT.U &= ~(0x0FU << 4);								\
			P20_OUT.U &= ~(0x0FU << 11); }

#define IFX_TRIBOARD_LED_DIM_DUTY_OFF() {							\
			P33_OUT.U |= (TriboardLed_sweeper & 0x0FU) << 4;		\
			P20_OUT.U |= (TriboardLed_sweeper & 0xF0U) << (11-4); }

#elif defined(IFX_APPBOARD_TYPE_TC23)
//For Appboard type TC2X3
#define IFX_TRIBOARD_LED_PORT_INIT() {																	\
		IfxPort_setPinModeOutput(&MODULE_P13,0,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P13,1,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P13,2,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P13,3,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);  \
		}




#define IFX_TRIBOARD_LED_SWEEP() {									\
			P13_OUT.U &= ~(0x0FU << 0);								\
			P13_OUT.U |= (TriboardLed_sweeper & 0x0FU) << 0; }

#define IFX_TRIBOARD_LED_DIM_DUTY_ON() {							\
			P13_OUT.U &= ~(0x0FU << 0); }
//			P13_OUT.U &= ~(0x0FU << 0); }

#define IFX_TRIBOARD_LED_DIM_DUTY_OFF() {							\
		P13_OUT.U |= (TriboardLed_sweeper & 0x0FU) << 0; }
//			P13_OUT.U |= (TriboardLed_sweeper & 0xF0U) << 0; }


#else
//For Triboard type TC2X5, TC2X7 and TC2X8
#define IFX_TRIBOARD_LED_PORT_INIT() {																	\
		IfxPort_setPinModeOutput(&MODULE_P33,6,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,7,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,8,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,9,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,10,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,11,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,12,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general);	\
		IfxPort_setPinModeOutput(&MODULE_P33,13,IfxPort_OutputMode_pushPull,IfxPort_OutputIdx_general); }

#define IFX_TRIBOARD_LED_SWEEP() {									\
			P33_OUT.U &= ~(0xFFU << 6); 							\
			P33_OUT.U |= (TriboardLed_sweeper & 0xFFU) << 6; }

#define IFX_TRIBOARD_LED_DIM_DUTY_ON()	{							\
			P33_OUT.U &= ~(0xFFU << 6); }

#define IFX_TRIBOARD_LED_DIM_DUTY_OFF() {							\
			P33_OUT.U |= (TriboardLed_sweeper & 0xFFU) << 6; }

#endif
/** \brief This function initialize the port for the Triboard Leds
 *
 */
void TriboardLed_init(void)
{
	IFX_TRIBOARD_LED_PORT_INIT();
}

/** \brief This function sweeps the LED to glow from left to right
 * The glow of LED sweeps from left to right and then right to left.
 * This function need to be called at every 50ms interval.
 */
void TriboardLed_sweepGlow(void)
{
	IFX_TRIBOARD_LED_SWEEP();

	if(TriboardLed_sweeperDir == 0)
	{
		/* Direction is low to high */
		TriboardLed_sweeper= ((TriboardLed_sweeper << 1) & 0xFF) | 1;
		if(TriboardLed_sweeper == 0x7FU) //Is the highest LED glowing?
		{
			TriboardLed_sweeperDir= 1;
			TriboardLed_sweeper= 0x3FU;
		}
	}
	else
	{
		/* Direction is high to low */
		TriboardLed_sweeper= ((TriboardLed_sweeper >> 1) & 0xFF) | 0x80U;
		if(TriboardLed_sweeper == 0xFEU) //Is the lowest LED glowing?
		{
			TriboardLed_sweeperDir= 0;
			TriboardLed_sweeper= 0xFCU;
		}
	}
}

/** \brief This function is simply for visual effect of dimming all the Leds for every "TriboardLed_blinkSwitch"
 * This function is called at ISR which occurs at 100uS interval
 */
void TriboardLed_serviceDimmer(void)
{
	if(TriboardLed_blinkSwitch)
	{
		if (TriboardLed_dimmerCount++ >= TRIBOARD_LED_DIMMER_PERIOD_COUNT)
		{
			IFX_TRIBOARD_LED_DIM_DUTY_ON();
			TriboardLed_dimmerCount= 0;
		}
		
		if(TriboardLed_dimmerCount == TRIBOARD_LED_DIMMER_DUTY_COUNT)
		{
			IFX_TRIBOARD_LED_DIM_DUTY_OFF();
		}
	}
}

/** \brief This function is simply for visual effect of dimming all the Leds
 * This switches all the LEDs which are dimmed at 2s interval
 * This function need to be called at 100ms interval
 */
void TriboardLed_toggleDimSwitch(void)
{
	if(TriboardLed_blinkCount100ms++ > 20)
	{
		TriboardLed_blinkCount100ms= 0;
		TriboardLed_blinkSwitch ^= 1;
	}
}

