/*
 * tft_app.h
 *
 *  Created on: 02.02.2013
 *      Author: voigtlae
 */

#ifndef TFTAPP_H_
#define TFTAPP_H_

#include <Cpu/Std/Ifx_Types.h>

//a structure to measure the runtime and to handle sdcard

extern volatile boolean tft_ready;

void tft_app_init (uint8 RtcRunning);
void tft_app_run(void);

float32 getCpuSeconds(void);
void setCpuSeconds(float32 sec);


#endif
