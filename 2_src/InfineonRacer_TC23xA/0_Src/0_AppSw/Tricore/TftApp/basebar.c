/*
 * basebar.c
 *
 *  Created on: 27.10.2014
 */
/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include <Tft/conio_tft.h>
#include <Tft/touch.h>
#include "conio_cfg.h"

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void bar_select_menu (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void bar_select_stdio0 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void bar_select_stdio1 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void bar_select_graph (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void bar_select_rsvd (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 bar_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
// *INDENT-OFF*
const TDISPLAYENTRY stdlist[6] = {
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 1, 6, (TERMINAL_MAXY-1), &bar_select_menu, 0, &bar_input, " Main "},
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 9, 14, (TERMINAL_MAXY-1), &bar_select_stdio0, 0, &bar_input, " DIS0 "},
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 17, 22, (TERMINAL_MAXY-1), &bar_select_stdio1, 0, &bar_input, " DIS1 "},
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 25, 30, (TERMINAL_MAXY-1), &bar_select_graph, 0, &bar_input, "GRAPH "},
  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 33, 38, (TERMINAL_MAXY-1), &bar_select_rsvd, 0, &bar_input, " RSVD "},
  {0, 0, 0, 0, 0, 0, 0, 0, " "}
};
// *INDENT-ON*
/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void bar_select_menu (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_BAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_BAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_BAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_MENU;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void bar_select_stdio0 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_BAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_BAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_BAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_IO0;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void bar_select_stdio1 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_BAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_BAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_BAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_IO1;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void bar_select_graph (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_BAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_BAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_BAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_GRAPH;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void bar_select_rsvd (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_BAR, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_BAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_BAR, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        conio_driver.displaymode = DISPLAY_RSVD;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

sint32 bar_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    __debug ();
    return (0);
}
