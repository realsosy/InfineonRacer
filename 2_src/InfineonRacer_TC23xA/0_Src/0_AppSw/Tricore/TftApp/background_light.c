/*
 * Backgound_light.c
 *      set Background Light, dimming an soon
 *  Created on: 02.03.2015
 *      Author: dienst
 */

#include <Cpu/Std/Ifx_Types.h>
#include "Configuration.h"
#include <Tft/touch.h>
#include "background_light.h"
#include <Gtm/Tom/Timer/IfxGtm_Tom_Timer.h>

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
#if ISR_PROVIDER_BACKLIGHT == 0
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
#elif ISR_PROVIDER_BACKLIGHT == 1
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
#elif ISR_PROVIDER_BACKLIGHT == 2
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
#error "Set ISR_PROVIDER_BACKLIGHT to a valid value!"
#endif

IfxGtm_Tom_Timer driverBacklight;

uint32 time_out_bkgrnd;
uint32 backgroundlightmin;
uint32 backgroundlightmax;
uint32 backgroundlightdelta;
uint32 backgroundlightsize;

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

extern TTOUCH_EVENT touch_event;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void background_light_init (void)
{

	time_out_bkgrnd = 0;
	backgroundlightmin = 5;
	backgroundlightmax = 100;
	backgroundlightdelta = 5;
	backgroundlightsize = 50;

	IfxGtm_Tom_Timer_Config driverConfig;

    IfxGtm_Tom_Timer_initConfig(&driverConfig, &MODULE_GTM);
    driverConfig.tom = BACKGROUND_LIGHT.tom;
    driverConfig.timerChannel = BACKGROUND_LIGHT.channel;
    driverConfig.irqModeTimer   = IfxGtm_IrqMode_pulse;
    driverConfig.triggerOut = &BACKGROUND_LIGHT;
    driverConfig.irqModeTrigger = IfxGtm_IrqMode_pulse;
    driverConfig.base.frequency = (float32) (BACKGROUNDLIGHT_PERIOD * 100);
    driverConfig.base.minResolution = 0;
    driverConfig.base.trigger.enabled = TRUE;
    driverConfig.base.trigger.outputEnabled = TRUE;
    driverConfig.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
    driverConfig.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
    driverConfig.base.trigger.triggerPoint = BACKGROUNDLIGHT_PERIOD * backgroundlightsize; // 10ns is the resolution of GTM
    driverConfig.base.trigger.risingEdgeAtPeriod = TRUE;
    driverConfig.base.isrPriority = ISR_PRIORITY_BACKLIGHT;
    driverConfig.base.isrProvider = ISR_PROVIDER_BACKLIGHT;
    IfxGtm_Tom_Timer_init (&driverBacklight, &driverConfig);
    IfxGtm_Tom_Timer_run(&driverBacklight);

}

/*************************************************************/
IFX_INTERRUPT (ISR_BACKLIGHT, 0, ISR_PRIORITY_BACKLIGHT);

void ISR_BACKLIGHT(void)
{

	IfxGtm_Tom_Timer_acknowledgeTimerIrq(&driverBacklight);
	if((touch_event.status != TOUCH_UP) && (touch_event.status != TOUCH_UNINIT))
	{
		IfxGtm_Tom_Timer_setTrigger (&driverBacklight, BACKGROUNDLIGHT_PERIOD * backgroundlightsize); /* load shadow register Duty  */
		time_out_bkgrnd = 0;
	}
	else
	{
		if(time_out_bkgrnd >= 150000 - BACKGROUNDLIGHT_PERIOD * 50)
			IfxGtm_Tom_Timer_setTrigger (&driverBacklight, BACKGROUNDLIGHT_PERIOD * 5); /* load shadow register Duty  */

		else if((time_out_bkgrnd > 150000 - backgroundlightsize*1000) && (time_out_bkgrnd < 150000 - BACKGROUNDLIGHT_PERIOD * 50))
		{
			IfxGtm_Tom_Timer_setTrigger (&driverBacklight, (150000 - time_out_bkgrnd)/10); /* load shadow register Duty  */
			time_out_bkgrnd++;
		}

		else
		{
			IfxGtm_Tom_Timer_setTrigger (&driverBacklight, BACKGROUNDLIGHT_PERIOD * backgroundlightsize); /* load shadow register Duty  */
			time_out_bkgrnd++;
		}
	}
	IfxGtm_Tom_Timer_applyUpdate(&driverBacklight);
}

