/*
 * tab_config.c
 *
 *  Created on: 2018. 7. 9.
 *      Author: Sujin
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "tab_config.h"
#include "touch.h"
#include "conio_cfg.h"
#include <Ifx_Types.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

// callback functions by tab_input
void tab_select_tab_0 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void tab_select_tab_1 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void tab_select_tab_2 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void tab_select_tab_3 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void tab_select_tab_4 (sint32 ind, TDISPLAYENTRY * pdisplayentry);

// callback function for text_input
sint32 tab_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

TDISPLAYENTRY tab_config_list[6] = {
  // standard display color,  select display color,    x_min, x_max,				 y,  select->function, 0,  inputfunc, "TABName"
  {		(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,   	   1,     6, (TERMINAL_MAXY-1), &tab_select_tab_0, 0, &tab_input, " Main "},  // tab 0
  {		(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 	   9,    14, (TERMINAL_MAXY-1), &tab_select_tab_1, 0, &tab_input, " DIS0 "},  // tab 1
  {		(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 	  17,    22, (TERMINAL_MAXY-1), &tab_select_tab_2, 0, &tab_input, " DIS1 "},  // tab 2
  {		(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 	  25,    30, (TERMINAL_MAXY-1), &tab_select_tab_3, 0, &tab_input, "GRAPH "},  // tab 3
  {		(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 	  33,    38, (TERMINAL_MAXY-1), &tab_select_tab_4, 0, &tab_input, " RSVD "},  // tab 4
  {                       0,                     0,        0,     0,                 0,                 0, 0,          0, " "}        // Reserved
};

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void tab_select_tab_0 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
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

void tab_select_tab_1 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
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

void tab_select_tab_2 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
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

void tab_select_tab_3 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
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

void tab_select_tab_4 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
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
