/*
 * KEYBOARD.c
 *
 *  Created on: 07.01.2012
 *      Author: voigtlae
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Cpu/Std/Ifx_Types.h>
#include <Cpu/Std/IfxCpu_Intrinsics.h>
#include "Configuration.h"
#include <Tft/conio_tft.h>
#include <Tft/touch.h>
#include <string.h>
#include <stdio.h>

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
//specific entries, contains the amount of entries for keyboard selection, e.g letters, space ...
#define MAX_DISPLAYKEYBENTRY 61
//the keyboard window is a window, which will be shown if scanf is exececuted
#define TERMINAL_KEYBOARD_MAXX TERMINAL_MAXX    //the maximum keyboard width
#define TERMINAL_KEYBOARD_MAXY 13   //the maximum keyboard height

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void keyboard_select_enter (sint32 ind, TDISPLAYENTRY * pdisplayentry); //special call backs for enter
void keyboard_select_left (sint32 ind, TDISPLAYENTRY * pdisplayentry);  //special call backs for left
void keyboard_select_right (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void keyboard_select_back (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void keyboard_display_descr (sint32 ind, TDISPLAYENTRY * pdisplayentry);    //shows the descr of the keyboard
void keyboard_display_text (sint32 ind, TDISPLAYENTRY * pdisplayentry); //shows the text for input modification
void keyboard_display (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 keyboard_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void keyboard_select (sint32 ind, TDISPLAYENTRY * pdisplayentry);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
// *INDENT-OFF*
//const uint8 keyboard_outline[1][1];
const uint8 keyboard_outline[TERMINAL_KEYBOARD_MAXY][TERMINAL_KEYBOARD_MAXX] = {
{0xDA,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC2,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xBF},
{0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xB3},
{0xC3,0xC4,0xC4,0xC2,0xC4,0xC2,0xC4,0xC2,0xC4,0xC2,0xC4,0xC2,0xC4,0xC2,0xC4,0xC2,0xC4,0xC2,0xC4,0xC2,0xC1,0xC2,0xC4,0xC2,0xC4,0xC2,0xC4,0xC2,0xC4,0xC4,0xC4,0xC4,0xC2,0xC4,0xC2,0xC4,0xC2,0xC4,0xC4,0xB4},
{0xB3,0x20, '^',0xB3, '1',0xB3, '2',0xB3, '3',0xB3, '4',0xB3, '5',0xB3, '6',0xB3, '7',0xB3, '8',0xB3, '9',0xB3, '0',0xB3,0x5C,0xB3,0x27,0xB3, 'B', 'A', 'C', 'K',0xB3,0x11,0xB3,0x10,0xB3,0x00,0x00,0xB3},
{0xC3,0xC4,0xC4,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC4,0xC4,0xC4,0xC5,0xC4,0xC1,0xC4,0xC1,0xC4,0xC4,0xB4},
{0xB3, 'T', 'A', 'B',0xB3, 'Q',0xB3, 'W',0xB3, 'E',0xB3, 'R',0xB3, 'T',0xB3, 'Z',0xB3, 'U',0xB3, 'I',0xB3, 'O',0xB3, 'P',0xB3,0x9A,0xB3, '+',0xB3,0x1B,0xD9,0x00,0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0xB3},
{0xC3,0xC4,0xC4,0xC4,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xBF,0x00,0x00,0xC3,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xB4},
{0xB3,0x19,0x00,0x00,0x00,0xB3, 'A',0xB3, 'S',0xB3, 'D',0xB3, 'F',0xB3, 'G',0xB3, 'H',0xB3, 'J',0xB3, 'K',0xB3, 'L',0xB3,0x99,0xB3,0x8E,0xB3, '#',0xB3,0x00,0x00,0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0xB3},
{0xC3,0xC4,0xC4,0xC4,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC2,0xC1,0xC4,0xC1,0xC4,0xC4,0xC5,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xB4},
{0xB3,0x18,0x00,0x00,0xB3, '>',0xB3, 'Y',0xB3, 'X',0xB3, 'C',0xB3, 'V',0xB3, 'B',0xB3, 'N',0xB3, 'M',0xB3, ',',0xB3, '.',0xB3, '-',0xB3,0x18,0x00,0x00,0x00,0x00,0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0xB3},
{0xC3,0xC4,0xC4,0xC4,0xC1,0xC4,0xC1,0xC2,0xC1,0xC4,0xC1,0xC4,0xC1,0xC4,0xC1,0xC4,0xC1,0xC4,0xC1,0xC4,0xC1,0xC4,0xC1,0xC2,0xC1,0xC4,0xC1,0xC4,0xC4,0xC4,0xC4,0xC4,0xC1,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xB4},
{0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0xB3,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xDB,0xB3,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xB3},
{0xC0,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC1,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC1,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xC4,0xD9}
};


//const TDISPLAYENTRY keyboardlist[1];
const TDISPLAYENTRY keyboardlist[MAX_DISPLAYKEYBENTRY] = {
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 1, 19, 7, &keyboard_display_descr, &keyboard_display_descr,&keyboard_input, "DESCR", 0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | CYAN, 21, 39, 7, &keyboard_display_text, &keyboard_display_text, &keyboard_input, "TEXT", 0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 2, 2, 9, &keyboard_select, &keyboard_display, &keyboard_input, "^", '^'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 4, 4, 9, &keyboard_select, &keyboard_display, &keyboard_input, "1", '1'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 6, 6, 9, &keyboard_select, &keyboard_display, &keyboard_input, "2", '2'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 8, 8, 9, &keyboard_select, &keyboard_display, &keyboard_input, "3", '3'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 10, 10, 9, &keyboard_select, &keyboard_display, &keyboard_input, "4",'4'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 12, 12, 9, &keyboard_select, &keyboard_display, &keyboard_input, "5",'5'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 14, 14, 9, &keyboard_select, &keyboard_display, &keyboard_input, "6",'6'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 16, 16, 9, &keyboard_select, &keyboard_display, &keyboard_input, "7",'7'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 18, 18, 9, &keyboard_select, &keyboard_display, &keyboard_input, "8",'8'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 20, 20, 9, &keyboard_select, &keyboard_display, &keyboard_input, "9",'9'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 22, 22, 9, &keyboard_select, &keyboard_display, &keyboard_input, "0",'0'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 24, 24, 9, &keyboard_select, &keyboard_display, &keyboard_input, "\x0",0x40},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 26, 26, 9, &keyboard_select, &keyboard_display, &keyboard_input, "\x0",0x40},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 28, 31, 9, &keyboard_select_back, &keyboard_display, &keyboard_input,"BACK", 0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 33, 33, 9, &keyboard_select_left, &keyboard_display, &keyboard_input,"LEFT", 0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 35, 35, 9, &keyboard_select_right, &keyboard_display, &keyboard_input,"RIGHT", 0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 1, 3, 11, &keyboard_select, &keyboard_display, &keyboard_input, "TAB",0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 5, 5, 11, &keyboard_select, &keyboard_display, &keyboard_input, "Q",'Q'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 7, 7, 11, &keyboard_select, &keyboard_display, &keyboard_input, "W",'W'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 9, 9, 11, &keyboard_select, &keyboard_display, &keyboard_input, "E",'E'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 11, 11, 11, &keyboard_select, &keyboard_display, &keyboard_input, "R",'R'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 13, 13, 11, &keyboard_select, &keyboard_display, &keyboard_input, "T",'T'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 15, 15, 11, &keyboard_select, &keyboard_display, &keyboard_input, "Z",'Z'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 17, 17, 11, &keyboard_select, &keyboard_display, &keyboard_input, "U",'U'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 19, 19, 11, &keyboard_select, &keyboard_display, &keyboard_input, "I",'I'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 21, 21, 11, &keyboard_select, &keyboard_display, &keyboard_input, "O",'O'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 23, 23, 11, &keyboard_select, &keyboard_display, &keyboard_input, "P",'P'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 25, 25, 11, &keyboard_select, &keyboard_display, &keyboard_input, " ",' '},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 27, 27, 11, &keyboard_select, &keyboard_display, &keyboard_input, "+",'+'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 29, 31, 11, &keyboard_select_enter, &keyboard_display, &keyboard_input,"ENTER", 0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 31, 12, &keyboard_select_enter, &keyboard_display, &keyboard_input,"ENTER", 0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 1, 4, 13, &keyboard_select, &keyboard_display, &keyboard_input, "CAPS",0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 6, 6, 13, &keyboard_select, &keyboard_display, &keyboard_input, "A",'A'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 8, 8, 13, &keyboard_select, &keyboard_display, &keyboard_input, "S",'S'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 10, 10, 13, &keyboard_select, &keyboard_display, &keyboard_input, "D",'D'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 12, 12, 13, &keyboard_select, &keyboard_display, &keyboard_input, "F",'F'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 14, 14, 13, &keyboard_select, &keyboard_display, &keyboard_input, "G",'G'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 16, 16, 13, &keyboard_select, &keyboard_display, &keyboard_input, "H",'H'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 18, 18, 13, &keyboard_select, &keyboard_display, &keyboard_input, "J",'J'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 20, 20, 13, &keyboard_select, &keyboard_display, &keyboard_input, "K",'K'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 22, 22, 13, &keyboard_select, &keyboard_display, &keyboard_input, "L",'L'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 24, 24, 13, &keyboard_select, &keyboard_display, &keyboard_input, " ",' '},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 26, 26, 13, &keyboard_select, &keyboard_display, &keyboard_input, " ",' '},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 28, 28, 13, &keyboard_select, &keyboard_display, &keyboard_input, "#",'#'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 31, 13, &keyboard_select_enter, &keyboard_display, &keyboard_input,"ENTER", 0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 1, 3, 15, &keyboard_select, &keyboard_display, &keyboard_input, "SHI",0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 5, 5, 15, &keyboard_select, &keyboard_display, &keyboard_input, "<",'<'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 7, 7, 15, &keyboard_select, &keyboard_display, &keyboard_input, "Y",'Y'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 9, 9, 15, &keyboard_select, &keyboard_display, &keyboard_input, "X",'X'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 11, 11, 15, &keyboard_select, &keyboard_display, &keyboard_input, "C",'C'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 13, 13, 15, &keyboard_select, &keyboard_display, &keyboard_input, "V",'V'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 15, 15, 15, &keyboard_select, &keyboard_display, &keyboard_input, "B",'B'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 17, 17, 15, &keyboard_select, &keyboard_display, &keyboard_input, "N",'N'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 19, 19, 15, &keyboard_select, &keyboard_display, &keyboard_input, "M",'M'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 21, 21, 15, &keyboard_select, &keyboard_display, &keyboard_input, ",",','},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 23, 23, 15, &keyboard_select, &keyboard_display, &keyboard_input, ".",'.'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 25, 25, 15, &keyboard_select, &keyboard_display, &keyboard_input, "-",'-'},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 27, 31, 15, &keyboard_select, &keyboard_display, &keyboard_input, "SHI",0x0},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 8, 22, 17, &keyboard_select, &keyboard_display, &keyboard_input, "SPACE",' '}
};
// *INDENT-ON*
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void keyboard_display (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    sint32 j;
    for (j = keyboardlist[ind].xmin; j <= keyboardlist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, keyboardlist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, keyboardlist[ind].color_display);
    }
}

sint32 keyboard_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    __debug ();
    return (0);
}

void keyboard_select (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    sint32 j;
    for (j = keyboardlist[ind].xmin; j <= keyboardlist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, keyboardlist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, keyboardlist[ind].color_select);
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (keyboardlist[ind].symbol != 0)
        {
            if (conio_driver.scanfx < 18)
            {
                j = strlen ((char *)conio_driver.scanftext);
                if (j < 18)
                {
                    while (j >= conio_driver.scanfx)
                    {
                        conio_driver.scanftext[j + 1] = conio_driver.scanftext[j];
                        j -= 1;
                    }
                }
                conio_driver.scanftext[conio_driver.scanfx] = keyboardlist[ind].symbol;
                conio_driver.scanfx += 1;
            }
        }
    }
}

void keyboard_select_enter (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 j;
    for (j = keyboardlist[ind].xmin; j <= keyboardlist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, keyboardlist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, keyboardlist[ind].color_select);
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (conio_driver.input (conio_driver.inputid, pdisplayentry) == 0)
        {
            conio_driver.dialogmode = DIALOGOFF;

        }
    }
}

void keyboard_select_back (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 i, j;
    for (j = keyboardlist[ind].xmin; j <= keyboardlist[ind].xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, keyboardlist[ind].y);
        conio_ascii_textchangecolor (conio_driver.displaymode, keyboardlist[ind].color_select);
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (conio_driver.scanfx > 0)
        {
            i = strlen ((char *)conio_driver.scanftext);
            for (j = conio_driver.scanfx - 1; j < i; j += 1)
            {
                conio_driver.scanftext[j] = conio_driver.scanftext[j + 1];
            }
            conio_driver.scanfx -= 1;
        }
    }
}

void keyboard_select_left (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 j;
    for (j = pdisplayentry->xmin; j <= pdisplayentry->xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, pdisplayentry->y);
        conio_ascii_textchangecolor (conio_driver.displaymode, pdisplayentry->color_select);
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (conio_driver.scanfx > 0)
            conio_driver.scanfx -= 1;
    }
}

void keyboard_select_right (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 j;
    for (j = pdisplayentry->xmin; j <= pdisplayentry->xmax; j += 1)
    {
        conio_ascii_gotoxy (conio_driver.displaymode, j, pdisplayentry->y);
        conio_ascii_textchangecolor (conio_driver.displaymode, pdisplayentry->color_select);
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (conio_driver.scanfx < 19)
            conio_driver.scanfx += 1;
    }
}

void keyboard_display_descr (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (conio_driver.displaymode, pdisplayentry->color_display);
    conio_ascii_gotoxy (conio_driver.displaymode, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (conio_driver.displaymode, conio_driver.scanfdescr);
}

void keyboard_display_text (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (conio_driver.displaymode, pdisplayentry->color_display);
    conio_ascii_gotoxy (conio_driver.displaymode, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (conio_driver.displaymode, conio_driver.scanftext);
    conio_ascii_gotoxy (conio_driver.displaymode, conio_driver.scanfx + pdisplayentry->xmin, pdisplayentry->y);
    if ((conio_driver.blinky & 1) == 0)
        conio_ascii_textchangecolor (conio_driver.displaymode, pdisplayentry->color_select);
}


void keyboard (sint16 x, sint16 y)
{
    sint32 i, j;
    sint32 eofstr;

    //KEYBOARD x,y alignment
    if (y < 7)
        y = 7;
    if (y > 17)
        y = 17;

    conio_ascii_textcolor (DISPLAY_MENU, BLACK);
    conio_ascii_textbackground (DISPLAY_MENU, CYAN);

    conio_ascii_gotoxy (conio_driver.displaymode, 0, 6);
    for (j = 0; j < 13; j += 1)
        for (i = 0; i < 40; i += 1)
        {
            conio_ascii_putch (conio_driver.displaymode, keyboard_outline[j][i]);
        }
    conio_ascii_gotoxy (conio_driver.displaymode, 1, 7);
    eofstr = 0;
    for (j = 0; j < 18; j += 1)
    {
        if (conio_driver.scanfdescr[j] == 0)
            eofstr = 1;
        if (eofstr == 0)
            conio_ascii_putch (conio_driver.displaymode, conio_driver.scanfdescr[0]);
        else
            conio_ascii_putch (conio_driver.displaymode, 0x20);
    }
    conio_ascii_gotoxy (conio_driver.displaymode, 21, 7);
    eofstr = 0;
    for (j = 0; j < 18; j += 1)
    {
        if (conio_driver.scanftext[j] == 0)
            eofstr = 1;
        if (eofstr == 0)
            conio_ascii_putch (conio_driver.displaymode, conio_driver.scanftext[0]);
        else
            conio_ascii_putch (conio_driver.displaymode, 0x20);
    }
    conio_ascii_gotoxy (DISPLAY_MENU, x, y);
    conio_ascii_textchangebackground (DISPLAY_MENU, RED);
    for (i = 0; i < MAX_DISPLAYKEYBENTRY; i += 1)
    {
        if ((x >= keyboardlist[i].xmin) && (x <= keyboardlist[i].xmax) && (y == keyboardlist[i].y))
        {
            keyboardlist[i].select (i, (struct DISPLAYENTRY *) &keyboardlist[i]);
        }
        else
        {
            keyboardlist[i].display (i, (struct DISPLAYENTRY *) &keyboardlist[i]);
        }
    }
}
