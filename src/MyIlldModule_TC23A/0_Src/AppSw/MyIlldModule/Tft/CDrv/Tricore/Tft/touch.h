/*
 * touch.h
 *
 *  Created on: 07.01.2012
 *      Author: voigtlae
 */

#ifndef TOUCH_H_
#define TOUCH_H_

#include "Configuration.h"

typedef enum
{
    TOUCH_UNINIT,               /*!< \brief Not used */
    TOUCH_DOWN,                 /*!< \brief Not used */
    TOUCH_MOVE,                 /*!< \brief Not used */
    TOUCH_UP,                   /*!< \brief Normal Operation */
    TOUCH_DOWN3S,               /*!< \brief Failure Buffer Full */
    TOUCH_DOWN10S               /*!< \brief Failure Buffer Erased */
} TTOUCH_STATUS;
#define MASK_TOUCH_UNINIT 0x1
#define MASK_TOUCH_DOWN 0x2
#define MASK_TOUCH_MOVE 0x4
#define MASK_TOUCH_UP 0x8
#define MASK_TOUCH_DOWN3S 0x10
#define MASK_TOUCH_DOWN10S 0x20

typedef struct TTOUCHCOMMAND
{
    uint32 bacon;
    uint32 command;
} TTOUCHCOMMAND;

typedef struct TTOUCHCRX
{
    uint32 data;
    uint32 status;
} TTOUCHRX;

typedef struct TOUCH_EVENT
{
    uint32 time;
    sint32 dtime;
    sint16 x;
    sint16 y;
    sint16 dx;
    sint16 dy;
    sint16 xdisp;
    sint16 ydisp;
    TTOUCH_STATUS status;
} TTOUCH_EVENT;

typedef struct TOUCH_DASINFO
{
uint32 event;
uint32 button;
uint32 x;
uint32 y;
float32 xmin;               // is equal to coordinate 0
float32 xmax;               // is equal to coordinate TERMINAL_MAXX-1
float32 ymin;               // is equal to coordinate 0
float32 ymax;               // is equal to coordinate TERMINAL_MAXY-1
} TTOUCH_DASINFO;

typedef struct TOUCH_DRIVER
{
	uint32 time;
    uint32 prev_time;
    uint32 prev_time_down;
    uint32 bounce_limit;
    uint32 bounce_cnt;
    sint16 x;
    sint16 prev_x;
    sint16 prev_x_down;
    sint16 y;
    sint16 prev_y;
    sint16 prev_y_down;
    sint16 cnt;
    sint16 xdisp;
    sint16 ydisp;
    float32 xmin;               // is equal to coordinate 0
    float32 xmax;               // is equal to coordinate TERMINAL_MAXX-1
    float32 ymin;               // is equal to coordinate 0
    float32 ymax;               // is equal to coordinate TERMINAL_MAXY-1
    TTOUCH_STATUS status;
    TTOUCH_STATUS prev_status;
    uint32 touchmode;
} TTOUCH_DRIVER;

extern TTOUCH_DRIVER touch_driver;
extern TTOUCH_EVENT touch_event;

#ifdef TFT_OVER_DAS
extern TTOUCH_DASINFO das_touch_info;
#endif

void touch_periodic (void);
void touch_init (void);



#endif /* TOUCH_H_ */
