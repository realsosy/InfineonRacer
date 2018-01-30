/*
 * tfthw.h
 *
 *  Created on: 06.02.2015
 *      Author: dienst
 */
#ifndef TFTHW_H
#define TFTHW_H

#define TFT_XSIZE 320             //!< x dimension of tft display
#define TFT_YSIZE 240             //!< y dimension of tft display

#if defined(__DCC__)
    #if TFT_DISPLAY_VAR_LOCATION == 0
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
    #elif TFT_DISPLAY_VAR_LOCATION == 1
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
    #elif TFT_DISPLAY_VAR_LOCATION == 2
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#endif

extern uint16 Row_Buff[];
extern volatile uint32 tft_status;

//specific entries tfthw.c
void tft_drvinit (void);
void tft_init (void);
// flush the actual row buff and callback pFunc if finished
void tft_flush_row_buff(void *pFunc, uint32 numberOfPixel);
// set the pixel datapointer to x,y location
void tft_display_setxy (uint32 x, uint32 y);

#endif /* TFTHW_H */
