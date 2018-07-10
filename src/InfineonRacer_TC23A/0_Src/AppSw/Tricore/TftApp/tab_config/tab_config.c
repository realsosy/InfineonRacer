/*
 * tab_config.c
 *
 *  Created on: 2018. 7. 9.
 *      Author: Sujin
 */

#include "tab_config.h"
#include "touch.h"
#include "conio_cfg.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void tab_select_menu (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB_CONFIG, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB_CONFIG, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_TAB_CONFIG, &pdisplayentry->text[0]);

    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_TAB0;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void tab_select_stdio0 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB_CONFIG, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB_CONFIG, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_TAB_CONFIG, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_TAB1;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear

    }
}

void tab_select_stdio1 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB_CONFIG, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB_CONFIG, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_TAB_CONFIG, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_TAB2;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear

    }
}

void tab_select_graph (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB_CONFIG, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB_CONFIG, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_TAB_CONFIG, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_TAB3;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void tab_select_rsvd (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB_CONFIG, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB_CONFIG, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_TAB_CONFIG, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_TAB4;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

sint32 tab_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    __debug ();
    return (0);
}
