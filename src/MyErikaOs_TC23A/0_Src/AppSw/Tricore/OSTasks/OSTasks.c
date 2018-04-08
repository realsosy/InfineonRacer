/**
 * \file OSTasks.c
 * \brief OS task definitions.
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

#include "IfxStm.h"
#include "IfxStm_reg.h"
#include "TriboardLed.h"
#include "os.h"

#define OS_TICK_IN_SECONDS (0.0001)

#if (defined(__OO_ECC1__) || defined(__OO_ECC2__))
#define Ifx_OSTask_ClearEvent(x) ClearEvent(x)
#define Ifx_OSTask_WaitEvent(x) WaitEvent(x)
#define Ifx_OSTask_SetEvent(x,y) SetEvent(x,y)
#endif
#if (defined(__OO_BCC1__) || defined(__OO_BCC2__))
#define Ifx_OSTask_ClearEvent(x)
#define Ifx_OSTask_WaitEvent(x)
#define Ifx_OSTask_SetEvent(x,y)
#endif

void Ifx_OSTask_ApplicationInit(void)
{
	StartOS(TRICORE_CPU);
}


/*Define an ISR category 1 to trigger OS ticks
 * Category 2 ISR is not needed here the call
 * CounterTick is not restricted*/
IFX_INTERRUPT(Ifx_OSTask_OSTickIsr,0,10)
{
    uint32 stmTicks;
    stmTicks= (uint32)(OS_TICK_IN_SECONDS * IfxStm_getFrequency (&MODULE_STM0));
    IfxStm_updateCompare (&MODULE_STM0, IfxStm_Comparator_0, IfxStm_getCompare (&MODULE_STM0, IfxStm_Comparator_0) + stmTicks);
    __enable ();
    CounterTick(IFX_OSTASK_COUNTER);

    TriboardLed_serviceDimmer(); //TODO : Application call
}

/*Define an ISR category 2 to trigger events.
 * Category 2 ISR needed here because of the call restriction
 * with SetEvent API*/
IFX_INTERRUPT_CATEGORY2(Ifx_OSTask_BlinkLedIsr,0,11)
{
    uint32 stmTicks;
    stmTicks= (uint32)(TRIBOARD_LED_INTERVAL_SECONDS * IfxStm_getFrequency (&MODULE_STM0));
    IfxStm_updateCompare (&MODULE_STM0, IfxStm_Comparator_1, IfxStm_getCompare (&MODULE_STM0, IfxStm_Comparator_1) + stmTicks);
    __enable ();

    Ifx_OSTask_SetEvent (IFX_OSTASK_EVENT1, 1);
}

/*Initialize theSTM 0 and set the comparator 0 to trigger OS counter*/
void Ifx_OSTask_initStm0Ticks (void)
{
    IfxStm_CompareConfig stmCompareConfig;

    IfxStm_enableOcdsSuspend (&MODULE_STM0);

    //Call the constructor of configuration
    IfxStm_initCompareConfig (&stmCompareConfig);
    //Modify only the number of ticks and enable the trigger output
    stmCompareConfig.ticks = 100;   /*Interrupt after 100 ticks from now */
    stmCompareConfig.triggerPriority = 10;
    stmCompareConfig.typeOfService= IfxSrc_Tos_cpu0;

    //Now Compare functionality is initialized
    IfxStm_initCompare (&MODULE_STM0, &stmCompareConfig);
}

/*Initialize theSTM 0 and set the comparator 1 to trigger an interrupt
 * which will in turn trigger event 1*/
void Ifx_OSTask_initBlinkyLedFunction (void)
{
    IfxStm_CompareConfig stmCompareConfig;

    //Call the constructor of configuration
    IfxStm_initCompareConfig (&stmCompareConfig);
    //Select comparator 1
    stmCompareConfig.comparator=IfxStm_Comparator_1;
    stmCompareConfig.comparatorInterrupt=IfxStm_ComparatorInterrupt_ir1;
    //Modify only the number of ticks and enable the trigger output
    stmCompareConfig.ticks = 100;   /*Interrupt after 100 ticks from now */
    stmCompareConfig.triggerPriority = 11;
    stmCompareConfig.typeOfService= IfxSrc_Tos_cpu0;

    //Now Compare functionality is initialized
    IfxStm_initCompare (&MODULE_STM0, &stmCompareConfig);
}

uint32 Ifx_OSTask_Event1_Count;
TASK(IFX_OSTASK_EVENT1)
{
	while (1)
	{
		Ifx_OSTask_ClearEvent ( 1 );
		Ifx_OSTask_WaitEvent ( 1 );
		{
			/*Call your event 1 related functions here*/
			TriboardLed_sweepGlow(); //TODO : Application call
		}
	}
	TerminateTask();
}

uint32 Ifx_OSTask_Event2_Count;
TASK(IFX_OSTASK_EVENT2)
{
	Ifx_OSTask_Event2_Count++;
	{
		/*Call your event 2 related functions here*/
	}
	TerminateTask();
}

uint32 Ifx_OSTask_Event3_Count;
TASK(IFX_OSTASK_EVENT3)
{
	Ifx_OSTask_Event3_Count++;
	{
		/*Call your event 3 related functions here*/
	}
	TerminateTask();
}

uint32 Ifx_OSTask_1ms_Count;
TASK(IFX_OSTASK_1MS)
{
	Ifx_OSTask_1ms_Count++;
	{
		/*Call your 1ms functions here*/
	}
	TerminateTask();
}

uint32 Ifx_OSTask_5ms_Count;
TASK(IFX_OSTASK_5MS)
{
	Ifx_OSTask_5ms_Count++;
	{
		/*Call your 5ms functions here*/
	}
	TerminateTask();
}

uint32 Ifx_OSTask_10ms_Count;
TASK(IFX_OSTASK_10MS)
{
	Ifx_OSTask_10ms_Count++;
	{
		/*Call your 10ms functions here*/
	}
	TerminateTask();
}

uint32 Ifx_OSTask_20ms_Count;
TASK(IFX_OSTASK_20MS)
{
	Ifx_OSTask_20ms_Count++;
	{
		/*Call your 20ms functions here*/
	}
	TerminateTask();
}

uint32 Ifx_OSTask_50ms_Count;
TASK(IFX_OSTASK_50MS)
{
	Ifx_OSTask_50ms_Count++;
	{
		/*Call your 100ms functions here*/
		//Ifx_OSTask_SetEvent (IFX_OSTASK_EVENT1, 1);
	}
	TerminateTask();
}

uint32 Ifx_OSTask_100ms_Count;
TASK(IFX_OSTASK_100MS)
{
	Ifx_OSTask_100ms_Count++;
	{
		/*Call your 100ms functions here*/

		TriboardLed_toggleDimSwitch(); //TODO : Application call
	}
	TerminateTask();
}

uint32 Ifx_OSTask_Background_Count;
TASK(IFX_OSTASK_BACKGROUND)
{
	Ifx_OSTask_Background_Count++;
	/*Add your code here*/

	while(1)
	{
	}
	TerminateTask();
}

TASK(IFX_OSTASK_INIT)
{
	__enable();

	/*Add your initialization code here*/
	ActivateTask(IFX_OSTASK_BACKGROUND);

/*  Alarms are Auto started with the same parameters as below. Code below is not necessary.
 * You could also implement this if you want to change the parameters of alarms
 *//*
	SetRelAlarm(IFX_OSTASK_ALARM_1MS,5,10);
	SetRelAlarm(IFX_OSTASK_ALARM_5MS,25,50);
	SetRelAlarm(IFX_OSTASK_ALARM_10MS,50,100);
	SetRelAlarm(IFX_OSTASK_ALARM_20MS,100,200);
	SetRelAlarm(IFX_OSTASK_ALARM_50MS,250,500);
	SetRelAlarm(IFX_OSTASK_ALARM_100MS,500,1000);
*/

	Ifx_OSTask_initStm0Ticks ();
	Ifx_OSTask_initBlinkyLedFunction();
	TriboardLed_init(); //TODO : Application call

	ActivateTask(IFX_OSTASK_EVENT1);

	TerminateTask();
}
