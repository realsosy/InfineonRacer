/*
 * TriboardLed.h
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

#ifndef _TRIBOARDLED_H_
#define _TRIBOARDLED_H_


#define TRIBOARD_LED_INTERVAL_SECONDS    (0.05)
#define TRIBOARD_LED_DIMMER_PERIOD_COUNT (10)
#define TRIBOARD_LED_DIMMER_DUTY_COUNT   (3)

void TriboardLed_serviceDimmer(void);
void TriboardLed_toggleDimSwitch(void);
void TriboardLed_sweepGlow(void);
void TriboardLed_init(void);


#endif /* _TRIBOARDLED_H_ */
