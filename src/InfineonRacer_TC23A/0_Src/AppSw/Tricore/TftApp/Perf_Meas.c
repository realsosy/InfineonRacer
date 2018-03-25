/*
 * Measurement.c
 *      calculate the performance of each CPU
 *  Created on: 02.03.2015
 *      Author: dienst
 */

#include <Cpu/Std/Ifx_Types.h>
#include <_Impl/IfxCpu_cfg.h>
#include "IfxCbs_reg.h"
#include "Configuration.h"
#include <Tft/conio_tft.h>
#include "Perf_Meas.h"
#include <Gtm/Tom/Timer/IfxGtm_Tom_Timer.h>
#include <IfxCpu.h>
#include "Cpu0_Main.h"
#include "conio_cfg.h"


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
#if IFXCPU_NUM_MODULES > 2
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

volatile uint32 cpu2_idle_counter;
volatile uint32 cpu2_last_count_value;
volatile uint32 cpu2_ccnt_diff_min;

#endif

#if IFXCPU_NUM_MODULES > 1
    #if defined(__GNUC__)
    #pragma section
    #pragma section ".bss_cpu1" awc1
    #endif
    #if defined(__TASKING__)
    #pragma section farbss "bss_cpu1"
    #pragma section fardata "data_cpu1"
    #endif
    #if defined(__DCC__)
    #pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
    #endif

volatile uint32 cpu1_idle_counter;
volatile uint32 cpu1_last_count_value;
volatile uint32 cpu1_ccnt_diff_min;

#endif

#if defined(__GNUC__)
#pragma section
#pragma section ".bss_cpu0" awc0
#endif
#if defined(__TASKING__)
#pragma section farbss "bss_cpu0"
#pragma section fardata "data_cpu0"
#endif
#if defined(__DCC__)
#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
#endif

volatile uint32 cpu0_idle_counter;
volatile uint32 cpu0_last_count_value;
volatile uint32 cpu0_ccnt_diff_min;

CpuLoad_t CpuLoad0;
#if IFXCPU_NUM_MODULES > 1
CpuLoad_t CpuLoad1;
#endif
#if IFXCPU_NUM_MODULES > 2
CpuLoad_t CpuLoad2;
#endif

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

/* this is defined in Cpu0_Main.h */
extern volatile boolean tft_ready;
extern App_Cpu g_AppCpu0; /* CPU 0 global data */
extern App_Cpu g_AppCpu1; /* CPU 1 global data if available */
extern App_Cpu g_AppCpu2; /* CPU 2 global data if available */


/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void perf_meas_init(void)
{
    // set the start values
#if IFXCPU_NUM_MODULES > 2
    cpu2_idle_counter = 0;
    cpu2_last_count_value = 0;
    // we set the cpu2_ccnt difference to maximum value
    cpu2_ccnt_diff_min = 0xFFFFFFFF;
#endif
#if IFXCPU_NUM_MODULES > 1
    cpu1_idle_counter = 0;
    cpu1_last_count_value = 0;
    // we set the cpu1_ccnt difference to maximum value
    cpu1_ccnt_diff_min = 0xFFFFFFFF;
#endif
    cpu0_idle_counter = 0;
    cpu0_last_count_value = 0;
    // we set the cpu0_ccnt difference to maximum value
    cpu0_ccnt_diff_min = 0xFFFFFFFF;
    // if the CDC is not enabled, then we enable it to use the performance counter
    // performance counter will be switched on in main...
    if (!(__mfcr(CPU_DBGSR) & 0x1))
    {
        CBS_OEC.U = 0xA1;
        CBS_OEC.U = 0x5E;
        CBS_OEC.U = 0xA1;
        CBS_OEC.U = 0x5E;
    }

    IfxGtm_Tom_Timer driverPerformanceMeasure;
	IfxGtm_Tom_Timer_Config driverConfig;

    IfxGtm_Tom_Timer_initConfig(&driverConfig, &MODULE_GTM);
    driverConfig.tom = PERFORMANCE_MEASURE.tom;
    driverConfig.timerChannel = PERFORMANCE_MEASURE.channel;
    driverConfig.irqModeTimer   = IfxGtm_IrqMode_pulse;
    driverConfig.triggerOut = &BACKGROUND_LIGHT;
    driverConfig.irqModeTrigger = IfxGtm_IrqMode_pulse;
    driverConfig.clock = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk3; // used clock is 100MHz/256
    driverConfig.base.frequency = 1.0f; // we make 1 Hz
    driverConfig.base.minResolution = 0;
    driverConfig.base.trigger.enabled = TRUE;
    driverConfig.base.trigger.outputEnabled = FALSE;
    driverConfig.base.trigger.outputMode = IfxPort_OutputMode_pushPull;
    driverConfig.base.trigger.outputDriver = IfxPort_PadDriver_cmosAutomotiveSpeed1;
    driverConfig.base.trigger.triggerPoint = 1;
    driverConfig.base.trigger.risingEdgeAtPeriod = TRUE;
    driverConfig.base.isrPriority = ISR_PRIORITY_PERF_MEAS;
    driverConfig.base.isrProvider = ISR_PROVIDER_PERF_MEAS;
    IfxGtm_Tom_Timer_init (&driverPerformanceMeasure, &driverConfig);
    IfxGtm_Tom_Timer_run(&driverPerformanceMeasure);

    IfxCpu_resetAndStartCounters(IfxCpu_CounterMode_normal);

}

void perf_meas_idle(void){
	uint32 cpu0_ccnt_actual;
	static uint32 cpu0_ccnt_last = 0x7FFFFFFF;

	cpu0_ccnt_actual = __mfcr(CPU_CCNT);
	// we ignore the overflow bit, not important for us
	cpu0_ccnt_diff_min = __minu(cpu0_ccnt_diff_min, cpu0_ccnt_actual-cpu0_ccnt_last);
	cpu0_ccnt_last = cpu0_ccnt_actual;
	//Idle_counter for cpu load measurement
	cpu0_idle_counter++;
}

IFX_INTERRUPT(ISR_perf_meas_call, 0, ISR_PRIORITY_PERF_MEAS);

void ISR_perf_meas_call(void)
{
    uint32 act_cpu0_idle_counter=cpu0_idle_counter;
#if IFXCPU_NUM_MODULES > 1
    uint32 act_cpu1_idle_counter=cpu1_idle_counter;
#endif
#if IFXCPU_NUM_MODULES > 2
    uint32 act_cpu2_idle_counter=cpu2_idle_counter;
#endif
    uint32 counter_diff;
    float32 cpu_load;

    /* now we go to a lower priotity than our OS_TICK that we don't have an overflow */
    __bisr(ISR_PRIORITY_OS_TICK-1);

    counter_diff = act_cpu0_idle_counter-cpu0_last_count_value;
    cpu0_last_count_value = act_cpu0_idle_counter;
    cpu_load = 100.0f - (float32)counter_diff/(g_AppCpu0.info.cpuFreq/100.0f/(float32)cpu0_ccnt_diff_min);
    // we printout if TFT is ready and conio initialized
    if (tft_ready == TRUE)
    {
        if (cpu_load < 0.0f) cpu_load = 0.0f;
    	conio_ascii_printfxy (DISPLAY_IO1, 1,  2, (uint8 *)"CPU0 Load %.3f %c ", cpu_load, 0x25);
//        conio_ascii_printfxy (DISPLAY_IO1, 1,  3, (uint8 *)"CPU0 Idle Counter-Diff %.10u ", counter_diff);
//        conio_ascii_printfxy (DISPLAY_IO1, 1,  4, (uint8 *)"CPU0 in use for %.3e Cycles/s ", g_AppCpu0.info.cpuFreq/100.0f*cpu_load);
        CpuLoad0.counter_diff = counter_diff;
        CpuLoad0.cpu_load = cpu_load;
    }
#if IFXCPU_NUM_MODULES > 1
    counter_diff = act_cpu1_idle_counter-cpu1_last_count_value;
    cpu1_last_count_value = act_cpu1_idle_counter;
    cpu_load = 100.0f - (float32)counter_diff/(g_AppCpu1.info.cpuFreq/100.0f/(float32)cpu1_ccnt_diff_min);
    // we printout if TFT is ready and conio initialized
    if (tft_ready == TRUE)
    {
    	if (cpu_load < 0.0f) cpu_load = 0.0f;
        conio_ascii_printfxy (DISPLAY_IO1, 1,  6, (uint8 *)"CPU1 Load %.3f %c ", cpu_load, 0x25);
//        conio_ascii_printfxy (DISPLAY_IO1, 1,  7, (uint8 *)"CPU1 Idle Counter-Diff %.10u ", counter_diff);
//        conio_ascii_printfxy (DISPLAY_IO1, 1,  8, (uint8 *)"CPU1 in use for %.3e Cycles/s ", g_AppCpu1.info.cpuFreq/100.0f*cpu_load);
        CpuLoad1.counter_diff = counter_diff;
        CpuLoad1.cpu_load = cpu_load;
    }
#endif
#if IFXCPU_NUM_MODULES > 2
    counter_diff = act_cpu2_idle_counter-cpu2_last_count_value;
    cpu2_last_count_value = act_cpu2_idle_counter;
    cpu_load = 100.0f - (float32)counter_diff/(g_AppCpu2.info.cpuFreq/100.0f/(float32)cpu2_ccnt_diff_min);
    // we printout if TFT is ready and conio initialized
    if (tft_ready == TRUE)
    {
    	if (cpu_load < 0.0f) cpu_load = 0.0f;
        conio_ascii_printfxy (DISPLAY_IO1, 1, 10, (uint8 *)"CPU2 Load %.3f %c ", cpu_load, 0x25);
//        conio_ascii_printfxy (DISPLAY_IO1, 1, 11, (uint8 *)"CPU2 Idle Counter-Diff %.10u ", counter_diff);
//        conio_ascii_printfxy (DISPLAY_IO1, 1, 12, (uint8 *)"CPU2 in use for %.3e Cycles/s ", g_AppCpu2.info.cpuFreq/100.0f*cpu_load);
        CpuLoad2.counter_diff = counter_diff;
        CpuLoad2.cpu_load = cpu_load;
    }
#endif
#if !defined(__DCC__)
    // we need this restore here because we add a bisr instruction manually, Windriver add this automatically
    __rslcx();
#endif
}

