/*
 * menue.c
 *
 *  Created on: 27.10.2014
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include <stdio.h>
#include <string.h>
#include <Tft/conio_tft.h>
#include <Tft/touch.h>
#include "tft_app.h"
#include <background_light.h>

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void menu_display (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_title (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_cpusec (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_cpusec (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_cpusecdelta (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_cpusecdelta (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input_cpusecdelta (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_background_lightplus (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_background_lightminus (sint32 ind, TDISPLAYENTRY * pdisplayentry);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
// *INDENT-OFF*
const TDISPLAYENTRY menulist[19] = {
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 7, 31, 0, &menu_select, &menu_display, &menu_input,"TFT Demo for App Kit XC237"},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 39, 1, &menu_select_cpusec, &menu_display_cpusec, &menu_input,"cpusec"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 10, 3, &menu_select_cpusecdelta, &menu_display_cpusecdelta, &menu_input_cpusecdelta,"delta: "},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 16, 17, &menu_select_background_light, &menu_display_background_light, &menu_input_background_light, "Background Light: "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 32, 17, &menu_select_background_lightminus, &menu_display, &menu_input, "-<<"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 34, 36, 17, &menu_select_background_lightplus, &menu_display, &menu_input, ">>+"},

{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "}  //LAST ENTRY
};
// *INDENT-ON*
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
extern TCONTROLMENU controlmenu;

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void menu_display (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_display);
    conio_ascii_gotoxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_MENU, &pdisplayentry->text[0]);
}

void menu_select (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_MENU, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

sint32 menu_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    __debug ();
    return (0);
}

void menu_select_title (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_MENU, (uint8 *) "Created in 2018/01/03");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_cpusec (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"%7.3f", controlmenu.cpuseconds);
}

void menu_select_cpusec (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_MENU, (uint8 *) "Reset");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        controlmenu.cpuseconds = 0.0f;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_cpusecdelta (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Delta %1.3f [msec]", controlmenu.cpusecondsdelta);
}

sint32 menu_input_cpusecdelta (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    float32 temp;
    sint32 result;
    result = sscanf ((char *) &conio_driver.scanftext[0], "%f", &temp);
    if (result != 1)
        return (-1);
    	controlmenu.cpusecondsdelta = temp;
    return (0);
}

void menu_select_cpusecdelta (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_select);
    conio_ascii_printfxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Delta %f", controlmenu.cpusecondsdelta);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        strcpy ((char *) &conio_driver.scanfdescr[0], "Delta ");
        sprintf ((char *) &conio_driver.scanftext[0], "%f", controlmenu.cpusecondsdelta);
        //                     control.cpuseconds=0.0f;
        conio_driver.scanfx = 0;    //actual cursor
        conio_driver.dialogmode = KEYBOARDON; //Keyboard input mode
        conio_driver.input = pdisplayentry->input;
        conio_driver.inputid = ind;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Background Light: %u", (unsigned int) backgroundlightsize);
}

sint32 menu_input_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 temp;
    sint32 result;
    result = sscanf ((char *) &conio_driver.scanftext[0], "%u", (unsigned int *) &temp);
    if (result != 1)
        return (-1);
    if (temp < backgroundlightmin)
        temp = backgroundlightmin;
    if (temp > backgroundlightmax)
        temp = backgroundlightmax;

    backgroundlightsize = temp;

    return (0);
}

void menu_select_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_select);    //MENUE
    conio_ascii_printfxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Change Light: %u", (unsigned int) backgroundlightsize);   //MENUE
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        strcpy ((char *) &conio_driver.scanfdescr[0], "Light: ");    //PREP of Keyboard Mode
        sprintf ((char *) &conio_driver.scanftext[0], "%u", (unsigned int) backgroundlightsize); //right upper value
        conio_driver.scanfx = 0;    //actual cursor
        conio_driver.dialogmode = KEYBOARDON; //Keyboard input mode
        conio_driver.input = pdisplayentry->input;
        conio_driver.inputid = ind;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_select_background_lightplus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_MENU, (uint8 *) ">>+");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (backgroundlightsize < backgroundlightmax)
            backgroundlightsize += backgroundlightdelta;
    }
}

void menu_select_background_lightminus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_MENU, (uint8 *) "-<<");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (backgroundlightsize > backgroundlightmin)
            backgroundlightsize -= backgroundlightdelta;
    }
}


void showmenu (sint16 x, sint16 y, TDISPLAYENTRY * pmenulist)
{
    sint32 i;
    conio_ascii_textbackground (DISPLAY_MENU, MENU_BACKGRND);
    conio_ascii_clrscr (DISPLAY_MENU);
    conio_ascii_textcolor (DISPLAY_MENU, BLACK);
    conio_ascii_textbackground (DISPLAY_MENU, CYAN);
    for (i = 0; pmenulist[i].select != 0; i += 1)
    {
        if ((x >= pmenulist[i].xmin) && (x <= pmenulist[i].xmax) && (y == pmenulist[i].y))
        {
            if (conio_driver.dialogmode == DIALOGOFF)
            {
                if (pmenulist[i].display == 0)
                    menu_select (i, (struct DISPLAYENTRY *) &pmenulist[i]);
                else
                {
                    pmenulist[i].select (i, (struct DISPLAYENTRY *) &pmenulist[i]);
                }
            }
        }
        else
        {
            if (pmenulist[i].display == 0)
                menu_display (i, (struct DISPLAYENTRY *) &pmenulist[i]);
            else
            {
                pmenulist[i].display (i, (struct DISPLAYENTRY *) &pmenulist[i]);
            }
        }
    }
}
