#ifndef BG_LIGHT_H
#define BG_LIGHT_H

#include <Cpu/Std/Ifx_Types.h>


#define BACKGROUNDLIGHT_PERIOD (100)  // with 10ns CMU_CLK0 is the period 100*100*10ns

void background_light_init(void);

#if defined(__DCC__)
    #if ISR_PROVIDER_BACKLIGHT == 0
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
    #elif ISR_PROVIDER_BACKLIGHT == 1
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
    #elif ISR_PROVIDER_BACKLIGHT == 2
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#endif

extern uint32 backgroundlightmin;
extern uint32 backgroundlightmax;
extern uint32 backgroundlightdelta;
extern uint32 backgroundlightsize;

#endif
