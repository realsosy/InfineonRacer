/*
 * libtft_ascii.c
 *
 *  Created on: 17.04.2014
 *
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include <Cpu/Std/IfxCpu_Intrinsics.h>
#include "Configuration.h"
#include "conio_tft.h"
#include <string.h>
#include <stdio.h>
#include "fifo.h"
/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
#if TFT_DISPLAY_VAR_LOCATION == 0
	#if defined(__GNUC__)
#pragma section ".data_cpu0" awc0
	#endif
	#if defined(__TASKING__)
	#pragma section fardata "data_cpu0"
	#endif
	#if defined(__DCC__)
    #pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
	#endif
#elif TFT_DISPLAY_VAR_LOCATION == 1
	#if defined(__GNUC__)
	#pragma section ".data_cpu1" awc1
	#endif
	#if defined(__TASKING__)
	#pragma section fardata "data_cpu1"
	#endif
	#if defined(__DCC__)
    #pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
	#endif
#elif TFT_DISPLAY_VAR_LOCATION == 2
	#if defined(__GNUC__)
	#pragma section ".data_cpu2" awc2
	#endif
	#if defined(__TASKING__)
	#pragma section fardata "data_cpu2"
	#endif
	#if defined(__DCC__)
    #pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#else
#error "Set TFT_DISPLAY_VAR_LOCATION to a valid value!"
#endif

TCOLORTABLEASCII colortable_ascii =
{
	COLOR_RGB_BLACK, COLOR_RGB_WHITE, COLOR_RGB_RED, COLOR_RGB_GREEN, COLOR_RGB_BROWN, COLOR_RGB_BLUE, COLOR_RGB_MAGENTA, COLOR_RGB_CYAN,
    COLOR_RGB_LIGHTGRAY, COLOR_RGB_DARKGRAY, COLOR_RGB_LIGHTRED, COLOR_RGB_LIGHTGREEN, COLOR_RGB_YELLOW, COLOR_RGB_LIGHTBLUE,
    COLOR_RGB_LIGHTMAGENTA,
    COLOR_RGB_LIGHTCYAN
};

static TMODE cpy_mode;
static uint8 *cpy_pdisplay;
static uint8 *cpy_pdisplaycolor;

static uint32 YROW_cnt;

#if defined(__GNUC__)
#pragma section
#endif
#if defined(__TASKING__)
#pragma section fardata restore
#endif
#if defined(__DCC__)
#pragma section DATA RW
#endif
/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void display_ascii_clrscr (TDISPLAYMODE displaymode)
{
    if (FIFO_DISPLAY_FREE () > 2)
    {
        __disable ();
        PUT_FIFO_DISPLAY (TOKEN_DISPLAY_ASCII_CLRSCR | 0x00020000);
        PUT_FIFO_DISPLAY (displaymode);
        __enable ();

    }
}

void display_ascii_clreol (TDISPLAYMODE displaymode)
{
    if (FIFO_DISPLAY_FREE () > 2)
    {
        __disable ();
        PUT_FIFO_DISPLAY (TOKEN_DISPLAY_ASCII_CLREOL | 0x00020000);
        PUT_FIFO_DISPLAY (displaymode);
        __enable ();
    }
}

void display_ascii_textattr (TDISPLAYMODE displaymode, sint32 color)
{
    if (FIFO_DISPLAY_FREE () > 2)
    {
        __disable ();
        PUT_FIFO_DISPLAY (TOKEN_DISPLAY_ASCII_TEXTATTR | 0x00020000);
        PUT_FIFO_DISPLAY ((displaymode << 16) + color);
        __enable ();

    }
}

void display_ascii_textcolor (TDISPLAYMODE displaymode, sint32 color)
{
    if (FIFO_DISPLAY_FREE () > 2)
    {
        __disable ();
        PUT_FIFO_DISPLAY (TOKEN_DISPLAY_ASCII_TEXTCOLOR | 0x00020000);
        PUT_FIFO_DISPLAY ((displaymode << 16) + color);
        __enable ();
    }
}

void display_ascii_textbackground (TDISPLAYMODE displaymode, sint32 color)
{
    if (FIFO_DISPLAY_FREE () > 2)
    {
        __disable ();
        PUT_FIFO_DISPLAY (TOKEN_DISPLAY_ASCII_TEXTBACKGROUND | 0x00020000);
        PUT_FIFO_DISPLAY ((displaymode << 16) + color);
        __enable ();
    }
}

void display_ascii_textchangebackground (TDISPLAYMODE displaymode, sint32 color)
{
    if (FIFO_DISPLAY_FREE () > 2)
    {
        __disable ();
        PUT_FIFO_DISPLAY (TOKEN_DISPLAY_ASCII_TEXTCHANGEBACKGROUND | 0x00020000);
        PUT_FIFO_DISPLAY ((displaymode << 16) + color);
        __enable ();
    }
}

void display_ascii_textchangeforeground (TDISPLAYMODE displaymode, sint32 color)
{
    if (FIFO_DISPLAY_FREE () > 2)
    {
        __disable ();
        PUT_FIFO_DISPLAY (TOKEN_DISPLAY_ASCII_TEXTCHANGEFOREGROUND | 0x00020000);
        PUT_FIFO_DISPLAY ((displaymode << 16) + color);
        __enable ();
    }
}

void display_ascii_textchangecolor (TDISPLAYMODE displaymode, sint32 color)
{
    if (FIFO_DISPLAY_FREE () > 2)
    {
        __disable ();
        PUT_FIFO_DISPLAY (TOKEN_DISPLAY_ASCII_TEXTCHANGECOLOR | 0x00020000);
        PUT_FIFO_DISPLAY ((displaymode << 16) + color);
        __enable ();
    }
}

void display_ascii_gotoxy (TDISPLAYMODE displaymode, sint32 x, sint32 y)
{
    if (FIFO_DISPLAY_FREE () > 3)
    {
        __disable ();
        PUT_FIFO_DISPLAY (TOKEN_DISPLAY_ASCII_GOTOXY | 0x00030000);
        PUT_FIFO_DISPLAY (displaymode);
        PUT_FIFO_DISPLAY ((x << 16) + y);
        __enable ();
    }
}

void display_ascii_cputs (TDISPLAYMODE displaymode, uint8 * s)
{
    sint32 len;
    sint32 i;
    uint32 *pbuf;
    len = strlen ((char *)s);
    if (len > TERMINAL_MAXX)
        len = TERMINAL_MAXX;               //cut it down
    if ((len & 0x03) != 0)
        len = (len | 0x3) + 1;  //always 4byte granaluraty
    len = len >> 2;
    len += 2;
    if (FIFO_DISPLAY_FREE () > len)
    {
        __disable ();
        PUT_FIFO_DISPLAY ((len << 16) + TOKEN_DISPLAY_ASCII_CPUTS);
        PUT_FIFO_DISPLAY ((displaymode << 16));
        pbuf = (uint32 *) & s[0];
        for (i = 0; i < (len - 2); i += 1)
            PUT_FIFO_DISPLAY (pbuf[i]);
        __enable ();

    }
}

void display_ascii_printfxy (TDISPLAYMODE displaymode, sint32 x, sint32 y, const uint8 * format, ...)
{
    sint32 result, len;
    uint8 buffer[80];
    sint32 i;
    uint32 *pbuf;
    va_list ap;
    va_start (ap, format);
    result = vsprintf ((char *)buffer, (char *)format, ap);
    va_end (ap);
    if (result < 0)
        return;
    len = strlen ((char *)buffer) + 1;
    if (len > TERMINAL_MAXX)
        len = TERMINAL_MAXX;               //cut it down
    if ((len & 0x03) != 0)
        len = (len | 0x3) + 1;  //always 4byte granaluraty
    len = len >> 2;
    len += 3;
    if (FIFO_DISPLAY_FREE () > len)
    {
        __disable ();
        PUT_FIFO_DISPLAY ((len << 16) + TOKEN_DISPLAY_ASCII_PRINTFXY);
        PUT_FIFO_DISPLAY (displaymode);
        PUT_FIFO_DISPLAY ((x << 16) + y);
        pbuf = (uint32 *) & buffer[0];
        for (i = 0; i < (len - 3); i += 1)
        {
            PUT_FIFO_DISPLAY (pbuf[i]);
        }
        __enable ();
    }
}

void display_ascii_printf (TDISPLAYMODE displaymode, const uint8 * format, ...)
{
    sint32 result, len;
    uint8 buffer[80];
    sint32 i;
    uint32 *pbuf;
    va_list ap;
    va_start (ap, format);
    result = vsprintf ((char *)buffer, (char *)format, ap);
    va_end (ap);
    if (result < 0)
        return;
    len = strlen ((char *)buffer) + 1;
    if (len > TERMINAL_MAXX)
        len = TERMINAL_MAXX;               //cut it down
    if ((len & 0x03) != 0)
        len = (len | 0x3) + 1;  //always 4byte granaluraty
    len = len >> 2;
    len += 2;
    if (FIFO_DISPLAY_FREE () > len)
    {
        __disable ();
        PUT_FIFO_DISPLAY ((len << 16) + TOKEN_DISPLAY_ASCII_PRINTF);
        PUT_FIFO_DISPLAY (displaymode);
        pbuf = (uint32 *) & buffer[0];
        for (i = 0; i < (len - 2); i += 1)
        {
            PUT_FIFO_DISPLAY (pbuf[i]);
        }
        __enable ();
    }
}

/******************************************************************************/
void conio_ascii_setcolortable (uint32 ind, uint32 r, uint32 g, uint32 b)
{
    r = r >> 3;                 //r has only 5bit
    g = g >> 2;                 //g has only 6bit
    b = b >> 3;                 //b has only 5bit

    colortable_ascii[ind] = (r << 11) | (g << 5) | b;
}

void conio_ascii_clrscr (TDISPLAYMODE displaymode)
{
    sint32 i, j;

    if (conio_driver.display[displaymode].mode != TEXTMODE)
    {
    	/* This is not a ascii display */
    	__debug();
    }

    for (i = 0; i < (TERMINAL_MAXY - 1); i += 1)
        for (j = 0; j < TERMINAL_MAXX; j += 1)
        {
            conio_driver.display[displaymode].pdisplay[i * TERMINAL_MAXX + j] = 0x20;
            conio_driver.display[displaymode].pdisplaycolor[i * TERMINAL_MAXX + j] =
                conio_driver.display[displaymode].color;
        }
}

void conio_ascii_clreol (TDISPLAYMODE displaymode)
{
    sint32 i;
    if (conio_driver.display[displaymode].mode != TEXTMODE)
    {
    	/* This is not a ascii display */
    	__debug();
    }

    for (i = conio_driver.display[displaymode].x; i < TERMINAL_MAXX; i += 1)
    {
        conio_driver.display[displaymode].pdisplay[TERMINAL_MAXX * conio_driver.display[displaymode].y + i] = 0x20;
        conio_driver.display[displaymode].pdisplaycolor[TERMINAL_MAXX * conio_driver.display[displaymode].y + i] =
            conio_driver.display[displaymode].color;
    }
}


void conio_ascii_textattr (TDISPLAYMODE displaymode, sint32 color)
{
    conio_driver.display[displaymode].color = color;
}

void conio_ascii_textcolor (TDISPLAYMODE displaymode, sint32 color)
{
    conio_driver.display[displaymode].color = (conio_driver.display[displaymode].color & 0xF0) | (color & 0xF);
}

void conio_ascii_textbackground (TDISPLAYMODE displaymode, sint32 color)
{
    conio_driver.display[displaymode].color = (conio_driver.display[displaymode].color & 0xF) | ((color & 0xF) << 4);
}

void conio_ascii_textchangebackground (TDISPLAYMODE displaymode, sint32 color)
{
    if (conio_driver.display[displaymode].mode != TEXTMODE)
    {
    	/* This is not a ascii display */
    	__debug();
    }

    color = (conio_driver.display[displaymode].color & 0xF) | ((color & 0xF) << 4);
    conio_driver.display[displaymode].pdisplaycolor[TERMINAL_MAXX * conio_driver.display[displaymode].y +
                                                    conio_driver.display[displaymode].x] = color;
}

void conio_ascii_textchangeforeground (TDISPLAYMODE displaymode, sint32 color)
{
    if (conio_driver.display[displaymode].mode != TEXTMODE)
    {
    	/* This is not a ascii display */
    	__debug();
    }

    color = (conio_driver.display[displaymode].color & 0xF0) | (color & 0xF);
    conio_driver.display[displaymode].pdisplaycolor[TERMINAL_MAXX * conio_driver.display[displaymode].y +
                                                    conio_driver.display[displaymode].x] = color;
}

void conio_ascii_textchangecolor (TDISPLAYMODE displaymode, sint32 color)
{
    if (conio_driver.display[displaymode].mode != TEXTMODE)
    {
    	/* This is not a ascii display */
    	__debug();
    }

    conio_driver.display[displaymode].pdisplaycolor[TERMINAL_MAXX * conio_driver.display[displaymode].y +
                                                    conio_driver.display[displaymode].x] = color;
}

void conio_ascii_gotoxy (TDISPLAYMODE displaymode, sint32 x, sint32 y)
{
    if (conio_driver.display[displaymode].mode != TEXTMODE)
    {
    	/* This is not a ascii display */
    	__debug();
    }

    if (x >= conio_driver.display[displaymode].maxx || y >= conio_driver.display[displaymode].maxy) return;
    conio_driver.display[displaymode].x = x;
    conio_driver.display[displaymode].y = y;
}

void conio_ascii_cputs (TDISPLAYMODE displaymode, uint8 * s)
{

    sint32 xtmp, ytmp, i;
    if (conio_driver.display[displaymode].mode != TEXTMODE)
    {
    	/* This is not a ascii display */
    	__debug();
    }

    i = 0;
    xtmp = conio_driver.display[displaymode].x;
    ytmp = conio_driver.display[displaymode].y;
    while (s[i] != 0)
    {
        if (s[i] != 0x0A)   // \n character
        {
            conio_driver.display[displaymode].pdisplay[TERMINAL_MAXX * ytmp + xtmp] = s[i];
            conio_driver.display[displaymode].pdisplaycolor[TERMINAL_MAXX * ytmp + xtmp] =
                conio_driver.display[displaymode].color;
            xtmp += 1;
        }
        else
        {
            xtmp = 0;
            ytmp += 1;
        }
        if (xtmp >= TERMINAL_MAXX)
        {
            xtmp = 0;
            ytmp += 1;
        }
        if (ytmp >= (TERMINAL_MAXY - 1))
        {
            //we have to move the content
            uint32 *psrcdisplay, *psrcdisplaycolor;
            uint32 *pdstdisplay, *pdstdisplaycolor;
            uint32 len;
            //len is TERMINAL_MAXX * (TERMINAL_MAXY-2)/4;
            psrcdisplay = (uint32 *) & conio_driver.display[displaymode].pdisplay[TERMINAL_MAXX];
            pdstdisplay = (uint32 *) & conio_driver.display[displaymode].pdisplay[0];
            psrcdisplaycolor = (uint32 *) & conio_driver.display[displaymode].pdisplaycolor[TERMINAL_MAXX];
            pdstdisplaycolor = (uint32 *) & conio_driver.display[displaymode].pdisplaycolor[0];
            for (len = 0; len < ((TERMINAL_MAXX * (TERMINAL_MAXY - 2)) / 4); len += 1)
            {
                *pdstdisplay++ = *psrcdisplay++;
                *pdstdisplaycolor++ = *psrcdisplaycolor++;
            }
            for (len = 0; len < (TERMINAL_MAXX / 4); len += 1)
            {
                *pdstdisplay++ = 0x0;
                *pdstdisplaycolor++ = 0x0;
            }
            ytmp = TERMINAL_MAXY - 2;
        }
        conio_driver.display[displaymode].x = xtmp;
        conio_driver.display[displaymode].y = ytmp;
        i += 1;
    }
}

void conio_ascii_putch (TDISPLAYMODE displaymode, uint8 ch)
{
    if (conio_driver.display[displaymode].mode != TEXTMODE)
    {
    	/* This is not a ascii display */
    	__debug();
    }

    /* Writes a character directly to the console. */
    conio_driver.display[displaymode].pdisplay[TERMINAL_MAXX * conio_driver.display[displaymode].y +
                                               conio_driver.display[displaymode].x] = ch;
    conio_driver.display[displaymode].pdisplaycolor[TERMINAL_MAXX * conio_driver.display[displaymode].y +
                                                    conio_driver.display[displaymode].x] =
        conio_driver.display[displaymode].color;
    conio_driver.display[displaymode].x += 1;
    if (conio_driver.display[displaymode].x == TERMINAL_MAXX)
    {
        conio_driver.display[displaymode].x = 0;
        conio_driver.display[displaymode].y += 1;
        if (conio_driver.display[displaymode].y == TERMINAL_MAXY)
        {
            conio_driver.display[displaymode].y -= 1;
        }
    }
}

uint8 *conio_ascii_cgets (TDISPLAYMODE displaymode, uint8 * s)
{
    __debug ();
    return (0);
}

// ignores special characters like \n or TAB
void conio_ascii_printfxy (TDISPLAYMODE displaymode, sint32 x, sint32 y, const uint8 * format, ...)
{
    sint32 result, len;
    uint8 buffer[80];
    va_list ap;
    va_start (ap, format);
    result = vsprintf ((char *)buffer, (char *)format, ap);
    va_end (ap);
    if (result < 0)
        return;
    len = strlen ((char *)buffer);
    if (len > TERMINAL_MAXX)
        len = TERMINAL_MAXX;               //cut it down
    conio_ascii_gotoxy (displaymode, x, y);
    conio_ascii_cputs (displaymode, &buffer[0]);
}

// based on ascii
void conio_ascii_printf (TDISPLAYMODE displaymode, const uint8 * format, ...)
{
    sint32 result, len;
    uint8 buffer[80];
    va_list ap;
    va_start (ap, format);
    result = vsprintf ((char *)buffer, (char *)format, ap);
    va_end (ap);
    if (result < 0)
        return;
    len = strlen ((char *)buffer);
    if (len > TERMINAL_MAXX)
        len = TERMINAL_MAXX;
    conio_ascii_cputs (displaymode, &buffer[0]);
}

static void tft_prepare_ascii_line (uint8 * pdisplay, uint8 * pdisplaycolor)
{
    sint32 j, k, l, ind;
    uint32 buffer_cnt;
//    uint16 *pRowBuff;
    uint8 mask;
    uint8 color_bgnd, color_fgnd;

    buffer_cnt = 1;
//    pRowBuff = &Row_Buff[0];

    for (k = FONT_YSIZE - 1; k >= 0; k -= 1)    //Height of FONT-1
    {
        for (j = 0; j < TERMINAL_MAXX; j += 1)  //40 characters for 320 Pixel
        {
            ind = pdisplay[j];
            color_bgnd = (pdisplaycolor[j] >> 4) & 0x0F;
            color_fgnd = pdisplaycolor[j] & 0x0F;
            mask = 0x80;
            for (l = 0; l < FONT_XSIZE; l += 1) //each character has 8 x values
            {
                if ((__font_bitmap__8_12[(ind * FONT_YSIZE) + k] & mask) != 0)
                {
                    Row_Buff[buffer_cnt] = colortable_ascii[color_fgnd];
                    if (buffer_cnt & 0x1) buffer_cnt--;
                    else buffer_cnt += 3;
                }
                else
                {
                	Row_Buff[buffer_cnt] = colortable_ascii[color_bgnd];
                    if (buffer_cnt & 0x1) buffer_cnt--;
                    else buffer_cnt += 3;
                }
                mask = mask >> 1;
            }
        }
    }
}

static uint32 tft_ascii_line_written(void)
{
    // we prepare the ascii line
	tft_prepare_ascii_line (&cpy_pdisplay[YROW_cnt*TERMINAL_MAXX], &cpy_pdisplaycolor[YROW_cnt*TERMINAL_MAXX]);

	if (YROW_cnt == 0)
	{
		// this is our last/first ascii line
		// we send the Row_Buff to the display without callback function
	    tft_flush_row_buff( (void *)0, FONT_YSIZE*TERMINAL_MAXX*FONT_XSIZE);
	}
	else
	{
		// this is not our last/first ascii line
		// we send the Row_Buff to the display with callback function
	    YROW_cnt--;
	    tft_flush_row_buff( &tft_ascii_line_written, FONT_YSIZE*TERMINAL_MAXX*FONT_XSIZE);
	}
	return 0;
}

void tft_ascii_bar (uint8 * pdisplay, uint8 * pdisplaycolor)
{
    // we prepare the ascii line
	tft_prepare_ascii_line (pdisplay, pdisplaycolor);
    // we send the Row_Buff to the display
    tft_flush_row_buff( (void *)0, FONT_YSIZE*TERMINAL_MAXX*FONT_XSIZE);
}

void tft_ascii (TMODE mode, uint8 * pdisplay, uint8 * pdisplaycolor)
{
    //copy values in global variables for tft_prepare_ascii_line
    cpy_mode = mode;
    cpy_pdisplay = pdisplay;
    cpy_pdisplaycolor = pdisplaycolor;
	// we remove one line from display which is used by bar
	YROW_cnt = TERMINAL_MAXY-2;
	// send the
	tft_ascii_line_written();
}

