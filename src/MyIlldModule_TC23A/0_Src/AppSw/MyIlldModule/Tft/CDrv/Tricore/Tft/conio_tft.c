
#include <Cpu/Std/Ifx_Types.h>
#include "Configuration.h"
#include "conio_tft.h"
#include "touch.h"
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
extern TCOLORTABLEASCII colortable_ascii;

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

	TCONIO_DRIVER conio_driver;
	TCONTROL control;
	uint32 fifo_display[0x800];


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
void bar_display (sint32 ind, TDISPLAYENTRY * pdisplayentry);

extern void showmenu (sint16 x, sint16 y, TDISPLAYENTRY * pmenulist);

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
inline void memcpy32 (uint32 * pdst, uint32 * psrc, uint32 cnt)
{
    uint32 i;
    for (i = 0; i < cnt; i += 1)
        *pdst++ = *psrc++;
}

void conio_periodic (sint16 x, sint16 y, TDISPLAYENTRY * pmenulist, TDISPLAYENTRY * pstdlist)
{
    sint32 i;
#ifdef TFT_OVER_DAS
    if ((conio_driver.dasstatus == 0) && (conio_driver.pdasmirror != 0))    //make a copy
    {
        i = 0;
        memcpy32 (&conio_driver.pdasmirror[i], (uint32 *) &colortable_ascii, sizeof (TCOLORTABLEASCII) >> 2);
        i += sizeof (TCOLORTABLEASCII) >> 2;
        memcpy32 (&conio_driver.pdasmirror[i], (uint32 *) conio_driver.display[DISPLAY_BAR].pdisplay, sizeof (TDISPLAYBAR) >> 2);
        i += sizeof (TDISPLAYBAR) >> 2;
        memcpy32 (&conio_driver.pdasmirror[i], (uint32 *) conio_driver.display[DISPLAY_BAR].pdisplaycolor, sizeof (TDISPLAYBARCOLOR) >> 2);
        i += sizeof (TDISPLAYBARCOLOR) >> 2;
        memcpy32 (&conio_driver.pdasmirror[i], (uint32 *) conio_driver.display[conio_driver.displaymode].pdisplay, sizeof (TDISPLAY) >> 2);
        i += sizeof (TDISPLAY) >> 2;
        if (conio_driver.display[conio_driver.displaymode].mode == TEXTMODE)
        {
        	memcpy32 (&conio_driver.pdasmirror[i], (uint32 *) conio_driver.display[conio_driver.displaymode].pdisplaycolor, sizeof (TDISPLAYCOLOR) >> 2);
        	i += sizeof (TDISPLAYCOLOR) >> 2;
        }
        else
        {
            if (conio_driver.display[conio_driver.displaymode].mode == GRAPHICMODE_4COLOR)
            {
                memcpy32 (&conio_driver.pdasmirror[i], (uint32 *) &conio_driver.display[conio_driver.displaymode].pdisplay[0],
                          (GRAPHICSWIDTH / 4) >> 2);
            }
            if (conio_driver.display[conio_driver.displaymode].mode == GRAPHICMODE_16COLOR)
            {
                memcpy32 (&conio_driver.pdasmirror[i], (uint32 *) &conio_driver.display[conio_driver.displaymode].pdisplay[0],
                          (GRAPHICSWIDTH / 2) >> 2);
            }
            if (conio_driver.display[conio_driver.displaymode].mode == GRAPHICMODE_256COLOR)
            {
                memcpy32 (&conio_driver.pdasmirror[i], (uint32 *) &conio_driver.display[conio_driver.displaymode].pdisplay[0],
                          (GRAPHICSWIDTH / 1) >> 2);
            }
        }

        conio_driver.dasdisplaymode = conio_driver.displaymode;
        conio_driver.dasstatus = 1;
    }
#endif

    control.timebeg[0] = __mfcr (CPU_CCNT);

    //BAR
    //***********************************************************
    if (conio_driver.dialogmode == DIALOGOFF)
    {
        conio_ascii_gotoxy (DISPLAY_BAR, 0, 0);
        conio_ascii_textbackground (DISPLAY_BAR, BAR_BACKGRND);
        conio_ascii_clreol (DISPLAY_BAR);
        conio_ascii_gotoxy (DISPLAY_BAR, 0, 0);
        for (i = 0; pstdlist[i].select != 0; i += 1)
        {
            if ((x >= pstdlist[i].xmin) && (x <= pstdlist[i].xmax) && (y == pstdlist[i].y))
            {
                pstdlist[i].select (i, (struct DISPLAYENTRY *) &pstdlist[i]);
            }
            else
            {
                if (pstdlist[i].display == 0)
                    bar_display (i, (struct DISPLAYENTRY *) &pstdlist[i]);
                else
                {
                    pstdlist[i].display (i, (struct DISPLAYENTRY *) &pstdlist[i]);
                }
            }
        }
        if (y == (TERMINAL_MAXY-1))
        {
            conio_ascii_gotoxy (DISPLAY_BAR, x, 0);
            conio_ascii_textchangebackground (DISPLAY_BAR, RED);
        }
    }

    //All CONIO entries, dialogs etc
    //***********************************************************
    for (i=0; i<CONIO_DLG_ENTRIES; i++)
    {
    	if (conio_dialog_list[i].dialogMode == conio_driver.dialogmode) conio_dialog_list[i].function(x, y);
    }

    //MENU
    //***********************************************************
    if (conio_driver.dialogmode == DIALOGOFF)
    {
        if ((conio_driver.displaymode) == DISPLAY_MENU)
        {
        	showmenu(x, y, pmenulist);
        	if (y < (TERMINAL_MAXY-1))
             {
                 conio_ascii_gotoxy (DISPLAY_MENU, x, y);
                 conio_ascii_textchangebackground (DISPLAY_MENU, RED);
             }
         }
         else
        {
            if (y < (TERMINAL_MAXY-1))
            {
                conio_ascii_gotoxy (DISPLAY_BAR, x, 0);
                conio_ascii_textchangebackground (DISPLAY_BAR, RED);
            }
        }
    }
    control.timeend[0] = __mfcr (CPU_CCNT);

    control.timebeg[6] = __mfcr (CPU_CCNT);
    //walk over the fifo for displaying information
    {
        uint32 limit_entries = 0;
        uint32 cnt_entries = 0;
        limit_entries = FIFO_DISPLAY_USED ();
        while (1 == 1)
        {
            uint32 val;
            if (GET_FIFO_DISPLAY_NODROP (&val) == 0)    //a value is there
            {
                if ((val >> 16) > FIFO_DISPLAY_USED ())
                    break;      //not all parameters are in the FIFO
                if (GET_FIFO_DISPLAY (&val) != 0)
                    __debug (); //should not happen

                switch (val & 0xFFFF)
                {
                case TOKEN_DISPLAY_GRAPHICS_GOTOXY:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 x, y;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp);
                        GET_FIFO_DISPLAY (&temp);
                        x = temp >> 16;
                        y = (temp & 0xFFFF);
                        conio_graphics_gotoxy (displaymode, x, y);
                        cnt_entries += 3;
                        break;
                    }

                case TOKEN_DISPLAY_ASCII_GOTOXY:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 x, y;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp);
                        GET_FIFO_DISPLAY (&temp);
                        x = temp >> 16;
                        y = (temp & 0xFFFF);
                        conio_ascii_gotoxy (displaymode, x, y);
                        cnt_entries += 3;
                        break;
                    }
                case TOKEN_DISPLAY_ASCII_PRINTFXY:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 x, y;
                        uint8 buffer[80];
                        uint32 *pbuf;
                        sint32 i;
                        sint32 len;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) temp;
                        GET_FIFO_DISPLAY (&temp);
                        x = temp >> 16;
                        y = (temp & 0xFFFF);
                        pbuf = (uint32 *) & buffer[0];
                        len = (val >> 16) - 3;
                        cnt_entries += 3;
                        for (i = 0; i < len; i += 1)
                        {
                            GET_FIFO_DISPLAY (&temp);
                            pbuf[i] = temp;
                        }
                        cnt_entries += len;
                        conio_ascii_gotoxy (displaymode, x, y);
                        conio_ascii_cputs (displaymode, &buffer[0]);
                        break;
                    }
                case TOKEN_DISPLAY_GRAPHICS_PRINTFXY:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 x, y;
                        uint8 buffer[80];
                        uint32 *pbuf;
                        sint32 i;
                        sint32 len;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) temp;
                        GET_FIFO_DISPLAY (&temp);
                        x = temp >> 16;
                        y = (temp & 0xFFFF);
                        pbuf = (uint32 *) & buffer[0];
                        len = (val >> 16) - 3;
                        cnt_entries += 3;
                        for (i = 0; i < len; i += 1)
                        {
                            GET_FIFO_DISPLAY (&temp);
                            pbuf[i] = temp;
                        }
                        cnt_entries += len;
                        conio_graphics_gotoxy (displaymode, x, y);
                        conio_graphics_cputs (displaymode, &buffer[0]);
                        break;
                    }

                case TOKEN_DISPLAY_ASCII_PRINTF:
                case TOKEN_DISPLAY_ASCII_CPUTS:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        uint8 buffer[80];
                        uint32 *pbuf;
                        sint32 i;
                        sint32 len;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp);
                        pbuf = (uint32 *) & buffer[0];
                        len = (val >> 16) - 2;
                        cnt_entries += 2;
                        for (i = 0; i < len; i += 1)
                        {
                            GET_FIFO_DISPLAY (&temp);
                            pbuf[i] = temp;
                        }
                        cnt_entries += len;
                        conio_ascii_cputs (displaymode, &buffer[0]);
                        break;
                    }
                case TOKEN_DISPLAY_GRAPHICS_PRINTF:
                case TOKEN_DISPLAY_GRAPHICS_CPUTS:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        uint8 buffer[80];
                        uint32 *pbuf;
                        sint32 i;
                        sint32 len;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp);
                        pbuf = (uint32 *) & buffer[0];
                        len = (val >> 16) - 2;
                        cnt_entries += 2;
                        for (i = 0; i < len; i += 1)
                        {
                            GET_FIFO_DISPLAY (&temp);
                            pbuf[i] = temp;
                        }
                        cnt_entries += len;
                        conio_graphics_cputs (displaymode, &buffer[0]);
                        break;
                    }
                case TOKEN_DISPLAY_GRAPHICS_LINE:
                    {

                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 x1, y1, x2, y2;
                        uint8 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp & 0xFFFF);
                        color = temp >> 16;
                        GET_FIFO_DISPLAY (&temp);
                        x1 = temp & 0xFFFF;
                        y1 = temp >> 16;
                        GET_FIFO_DISPLAY (&temp);
                        x2 = temp & 0xFFFF;
                        y2 = temp >> 16;
                        conio_graphics_line (displaymode, x1, y1, x2, y2, color);
                        cnt_entries += 4;

                        break;
                    }
                case TOKEN_DISPLAY_ASCII_CLRSCR:
                    {
                        uint32 displaymode;
                        GET_FIFO_DISPLAY (&displaymode);
                        conio_ascii_clrscr ((TDISPLAYMODE) displaymode);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_GRAPHICS_CLRSCR:
                    {
                        uint32 displaymode;
                        GET_FIFO_DISPLAY (&displaymode);
                        conio_graphics_clrscr ((TDISPLAYMODE) displaymode);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_ASCII_CLREOL:
                    {
                        uint32 displaymode = 0;
                        GET_FIFO_DISPLAY (&displaymode);
                        conio_ascii_clreol ((TDISPLAYMODE) displaymode);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_ASCII_TEXTATTR:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp >> 16);
                        color = temp & 0xFFFF;
                        conio_ascii_textattr (displaymode, color);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_ASCII_TEXTCOLOR:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp >> 16);
                        color = temp & 0xFFFF;
                        conio_ascii_textcolor (displaymode, color);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_ASCII_TEXTBACKGROUND:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp >> 16);
                        color = temp & 0xFFFF;
                        conio_ascii_textbackground (displaymode, color);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_GRAPHICS_TEXTATTR:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp >> 16);
                        color = temp & 0xFFFF;
                        conio_graphics_textattr (displaymode, color);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_GRAPHICS_TEXTCOLOR:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp >> 16);
                        color = temp & 0xFFFF;
                        conio_graphics_textcolor (displaymode, color);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_GRAPHICS_TEXTBACKGROUND:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp >> 16);
                        color = temp & 0xFFFF;
                        conio_graphics_textbackground (displaymode, color);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_ASCII_TEXTCHANGEBACKGROUND:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp >> 16);
                        color = temp & 0xFFFF;
                        conio_ascii_textchangebackground (displaymode, color);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_ASCII_TEXTCHANGEFOREGROUND:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp >> 16);
                        color = temp & 0xFFFF;
                        conio_ascii_textchangeforeground (displaymode, color);
                        cnt_entries += 2;
                        break;
                    }
                case TOKEN_DISPLAY_ASCII_TEXTCHANGECOLOR:
                    {
                        uint32 temp = 0;
                        TDISPLAYMODE displaymode = 0;
                        sint32 color;
                        GET_FIFO_DISPLAY (&temp);
                        displaymode = (TDISPLAYMODE) (temp >> 16);
                        color = temp & 0xFFFF;
                        conio_ascii_textchangecolor (displaymode, color);
                        cnt_entries += 2;
                        break;
                    }
                default:
                    __debug ();
                    break;
                }
            }
            else
            {
                break;
            }
            if (cnt_entries >= limit_entries)
                break;
        }
    }

    control.timeend[6] = __mfcr (CPU_CCNT);
    control.timebeg[1] = __mfcr (CPU_CCNT);
    if (conio_driver.display[conio_driver.displaymode].mode == TEXTMODE)
    {
    	/* this is a text display */
        if (tft_status == 0)
        {
            /* we send new data to the display only when the last transfer to display is finished */
        	tft_display_setxy (0, 0);
            tft_ascii_bar (conio_driver.display[DISPLAY_BAR].pdisplay,
            		    conio_driver.display[DISPLAY_BAR].pdisplaycolor);
            /* we wait here until our the bar is transfered to display */
            while (tft_status != 0);
            tft_display_setxy (0, FONT_YSIZE);
            tft_ascii (conio_driver.display[conio_driver.displaymode].mode,
            		    conio_driver.display[conio_driver.displaymode].pdisplay,
                        conio_driver.display[conio_driver.displaymode].pdisplaycolor);
        }
    }
    else
    {
      	/* this is a graphic display */
        if (tft_status == 0)
        {
            /* we send new data to the display only when the last transfer to display is finished */
            tft_display_setxy (0, 0);
            tft_ascii_bar (conio_driver.display[DISPLAY_BAR].pdisplay,
           		           conio_driver.display[DISPLAY_BAR].pdisplaycolor);
            /* we wait here until our the bar is transfered to display */
            while (tft_status != 0);
            tft_display_setxy (0, FONT_YSIZE);
            tft_graphic (conio_driver.display[conio_driver.displaymode].mode,
                         conio_driver.display[conio_driver.displaymode].pdisplay,
                         conio_driver.display[conio_driver.displaymode].pdisplaycolor);
        }
    }

    control.timeend[1] = __mfcr (CPU_CCNT);
    control.timeus[0] = control.timeend[0] - control.timebeg[0];
    control.timeus[0] /= 200.0f;
    control.timeus[1] = control.timeend[1] - control.timebeg[1];
    control.timeus[1] /= 200.0f;
    control.timeus[6] = control.timeend[6] - control.timebeg[6];
    control.timeus[6] /= 200.0f;
}


void bar_display (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_BAR, pdisplayentry->color_display);
    conio_ascii_gotoxy (DISPLAY_BAR, pdisplayentry->xmin, 0);
    conio_ascii_cputs (DISPLAY_BAR, &pdisplayentry->text[0]);
}

void conio_init (const pTCONIODMENTRY dm_list)
{
    uint32 i;
    fifo_display_init (&fifo_display[0], 0x800);
    conio_driver.scanfdescr[0] = 0x0;
    conio_driver.scanftext[0] = 0x0;
    for (i=0; i<CONIO_MAXDISPLAYS; i++)
    {
    	conio_driver.display[dm_list[i].displayMode].pdisplay = dm_list[i].display.pdisplay;
    	conio_driver.display[dm_list[i].displayMode].pdisplaycolor = dm_list[i].display.pdisplaycolor;
    	conio_driver.display[dm_list[i].displayMode].mode = dm_list[i].display.mode;
    	conio_driver.display[dm_list[i].displayMode].color = dm_list[i].display.color;
    	conio_driver.display[dm_list[i].displayMode].maxx = dm_list[i].display.maxx;
    	conio_driver.display[dm_list[i].displayMode].maxy = dm_list[i].display.maxy;
    	conio_driver.display[dm_list[i].displayMode].x = dm_list[i].display.x;
    	conio_driver.display[dm_list[i].displayMode].y = dm_list[i].display.y;
    }
    conio_driver.dasstatus = 0;
    conio_driver.pdasmirror = 0;
    //The first 16 entries of the colortable are preinitialized
    //Generate 128 Gray Entries
    {
        sint32 i;
        for (i = 0; i < 128; i += 1)
        {
            conio_graphics_setcolortable (i + 128, i << 1, i << 1, i << 1);
        }
    }
    //menu is standard start
    conio_driver.displaymode = DISPLAY_MENU;
    conio_driver.dasdisplaymode = DISPLAY_MENU;
    conio_driver.blinky = 0;
}


