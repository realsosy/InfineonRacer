/*
 * PlotSine.h
 *
 *  Created on: 2018. 7. 7.
 *      Author: Sujin
 */

#ifndef PLOTSINE_H_
#define PLOTSINE_H_

#include <Ifx_Types.h>
#include "Configuration.h"
#include "ConfigurationIsr.h"
#include "SysSe/Bsp/Bsp.h"

#include "Gtm/Tom/Timer/IfxGtm_Tom_Timer.h"

/** \brief Application information */
typedef struct
{
    struct
    {
        float32 gtmFreq;
        float32 gtmGclkFreq;
    }info;
    struct
    {
        IfxGtm_Tom_Timer timerOneMs;        /**< \brief Timer driver */
    }drivers;
    struct
    {
        uint32 slotOneMs;
    }isrCounter;
} App_GtmTomTimer;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

IFX_EXTERN App_GtmTomTimer g_GtmTomTimer;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

IFX_EXTERN void GtmTomTimerDemo_init(void);
IFX_EXTERN void GtmTomTimerDemo_run(void);


void graph_drawBackground(void);

#endif /* PLOTSINE_H_ */
