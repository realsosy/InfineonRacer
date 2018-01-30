/*
 * fifo.c
 *
 *  Created on: 26.01.2013
 *      Author: voigtlae
 */
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include "fifo.h"
#include "Configuration.h"
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
#if TFT_DISPLAY_VAR_LOCATION == 0
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
#elif TFT_DISPLAY_VAR_LOCATION == 1
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
#elif TFT_DISPLAY_VAR_LOCATION == 2
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
#error "Set TFT_DISPLAY_VAR_LOCATION to a valid value!"
#endif

	TFIFODISPLAY fifodisplay;

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

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

sint32 fifo_display_used (void)
{
    sint32 i;
    i = fifodisplay.FIFO_DISPLAY_IN - fifodisplay.FIFO_DISPLAY_OUT;
    if (i < 0)
        i += fifodisplay.FIFO_DISPLAY_SIZE;
    return (i);
}

uint32 fifo_max_used (void)
{
    return (fifodisplay.FIFO_MAX_USED);
}

void fifo_display_init (uint32 * pFIFO, uint32 size)
{
    fifodisplay.FIFO_DISPLAY_IN = 0;
    fifodisplay.FIFO_DISPLAY_OUT = 0;
    fifodisplay.FIFO_DISPLAY_SIZE = size;
    fifodisplay.FIFO_MAX_USED = 0;
    fifodisplay.pFIFO_DISPLAY = pFIFO;
}

inline sint32 FIFO_DISPLAY_USED (void)
{
    sint32 i;
    i = fifodisplay.FIFO_DISPLAY_IN - fifodisplay.FIFO_DISPLAY_OUT;
    if (i < 0)
        i += fifodisplay.FIFO_DISPLAY_SIZE;
    if (i > fifodisplay.FIFO_MAX_USED)
        fifodisplay.FIFO_MAX_USED = i;
    return (i);
}

inline sint32 FIFO_DISPLAY_FREE (void)
{
    return (fifodisplay.FIFO_DISPLAY_SIZE - FIFO_DISPLAY_USED ());
}


inline sint32 PUT_FIFO_DISPLAY (uint32 value)
{
    sint32 index;
    index = fifodisplay.FIFO_DISPLAY_IN + 1;
    if (index == fifodisplay.FIFO_DISPLAY_SIZE)
        index = 0;
    if (index == fifodisplay.FIFO_DISPLAY_OUT)
        return (1);
    fifodisplay.pFIFO_DISPLAY[index] = value;
    fifodisplay.FIFO_DISPLAY_IN = index;
    return (0);
}
inline sint32 GET_FIFO_DISPLAY (uint32 * pvalue)
{
    sint32 index;
    index = fifodisplay.FIFO_DISPLAY_OUT;
    if (index == fifodisplay.FIFO_DISPLAY_IN)
        return (1);
    index += 1;
    if (index == fifodisplay.FIFO_DISPLAY_SIZE)
        index = 0;
    *pvalue = fifodisplay.pFIFO_DISPLAY[index];
    fifodisplay.FIFO_DISPLAY_OUT = index;
    return (0);
}

inline sint32 GET_FIFO_DISPLAY_NODROP (uint32 * pvalue)
{
    sint32 index;
    index = fifodisplay.FIFO_DISPLAY_OUT;
    if (index == fifodisplay.FIFO_DISPLAY_IN)
        return (1);
    index += 1;
    if (index == fifodisplay.FIFO_DISPLAY_SIZE)
        index = 0;
    *pvalue = fifodisplay.pFIFO_DISPLAY[index];
    return (0);
}
