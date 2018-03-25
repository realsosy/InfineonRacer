/*
 * tft_app.h
 *
 *  Created on: 02.02.2013
 *      Author: voigtlae
 */

#ifndef TFTAPP_H_
#define TFTAPP_H_

//a structure to measure the runtime and to handle sdcard
typedef struct CONTROLMENU
{
    float32 cpuseconds;
    float32 cpusecondsdelta;
} TCONTROLMENU;

extern TCONTROLMENU controlmenu;
extern volatile boolean tft_ready;

extern void tft_app_init (uint8 RtcRunning);
extern void tft_app_run(void);
extern void graph_drawInfineonLogo(void);

#endif
