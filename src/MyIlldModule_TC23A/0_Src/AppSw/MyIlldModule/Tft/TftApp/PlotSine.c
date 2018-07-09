/*
 * PlotSine.c
 *
 *  Created on: 07.07.2018
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "PlotSine.h"

#include <Cpu/Std/Ifx_Types.h>
#include <Tft/conio_tft.h>



/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define ISR_PRIORITY_PLOT_TIMER 30
/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

App_GtmTomTimer g_GtmTomTimer; /**< \brief Demo information */


/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void graph_drawBackground(void)
{
    uint32 i, j, idx, width, height;
    uint8 color, count;

    uint32 x, y;

    width = 200;
    height = 87;
    x = (320 - width) / 2;
    y = (240 - height) / 2;

    idx = 0;
    color = -1;
    count = 0;

    // set white background
    for(i = 0; i < TFT_YSIZE - FONT_YSIZE; i++)
    {
        for(j = 0; j < TFT_XSIZE; j++)
        {
            conio_graphics_set(DISPLAY_GRAPH, j, i, WHITE);
        }
    }
/*
    // paint the logo
    for(i = 0; i < height; i++)
    {
        for(j = 0; j < width; j++)
        {
            if(count == 0)
            {
                count = infineon_logo[idx++];
                color = infineon_logo[idx++];
            }
            if(color != 255)
            {
                conio_graphics_set(DISPLAY_GRAPH, x + j, y + height - i, color);
            }
            count--;
        }
    }
    */

}


IFX_INTERRUPT(ISR_Timer_1ms, 0, ISR_PRIORITY_TIMER_1MS);


void ISR_Timer_1ms(void)
{
    IfxCpu_enableInterrupts();

    IfxGtm_Tom_Timer_acknowledgeTimerIrq(&g_GtmTomTimer.drivers.timerOneMs);
    g_GtmTomTimer.isrCounter.slotOneMs++;
}


void GtmTomTimer_initTimer(void)
{
    {   /* GTM TOM configuration */
        IfxGtm_Tom_Timer_Config timerConfig;
        IfxGtm_Tom_Timer_initConfig(&timerConfig, &MODULE_GTM);
        timerConfig.base.frequency       = 1000;
        timerConfig.base.isrPriority     = ISR_PRIORITY(INTERRUPT_TIMER_1MS);
        timerConfig.base.isrProvider     = ISR_PROVIDER(INTERRUPT_TIMER_1MS);
        timerConfig.base.minResolution   = (1.0 / timerConfig.base.frequency) / 1000;
        timerConfig.base.trigger.enabled = FALSE;
        timerConfig.tom                  = IfxGtm_Tom_1;
        timerConfig.timerChannel         = IfxGtm_Tom_Ch_0;
        timerConfig.clock                = IfxGtm_Tom_Ch_ClkSrc_cmuFxclk1;
        IfxGtm_Tom_Timer_init(&g_GtmTomTimer.drivers.timerOneMs, &timerConfig);

        IfxGtm_Tom_Timer_run(&g_GtmTomTimer.drivers.timerOneMs);
    }
}

void GtmTomTimerDemo_init(void)
{
    /* disable interrupts */
    boolean  interruptState = IfxCpu_disableInterrupts();

    /** - GTM clocks */
    Ifx_GTM *gtm = &MODULE_GTM;
    g_GtmTomTimer.info.gtmFreq = IfxGtm_Cmu_getModuleFrequency(gtm);
    IfxGtm_enable(gtm);

    /* Set the global clock frequencies */
    IfxGtm_Cmu_setGclkFrequency(gtm, g_GtmTomTimer.info.gtmFreq);
    g_GtmTomTimer.info.gtmGclkFreq = IfxGtm_Cmu_getGclkFrequency(gtm);

    /** - Initialise the GTM part */
    GtmTomTimer_initTimer();

    printf("Gtm Tom Timer is initialised\n");

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

    IfxGtm_Cmu_enableClocks(gtm, IFXGTM_CMU_CLKEN_FXCLK | IFXGTM_CMU_CLKEN_CLK0);
}


