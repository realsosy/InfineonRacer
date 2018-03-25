/*
 * Perf_Meas.h
 *
 *  Created on: 21.08.2014
 *      Author: hailer
 */

#ifndef PERF_MEAS_H_
#define PERF_MEAS_H_

typedef struct{
    uint32 counter_diff;
    float32 cpu_load;
}CpuLoad_t;

IFX_EXTERN CpuLoad_t CpuLoad0;
#if IFXCPU_NUM_MODULES > 1
IFX_EXTERN CpuLoad_t CpuLoad1;
#endif
#if IFXCPU_NUM_MODULES > 2
IFX_EXTERN CpuLoad_t CpuLoad2;
#endif

extern volatile uint32 cpu0_idle_counter;
extern volatile uint32 cpu0_last_count_value;
extern volatile uint32 cpu0_ccnt_diff_min;

void perf_meas_init(void);
void perf_meas_idle(void);

#endif /* PERF_MEAS_H_ */
