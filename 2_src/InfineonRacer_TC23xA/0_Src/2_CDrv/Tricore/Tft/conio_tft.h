/*
* \file
* \brief Include File for TFT Driver
*
*/
//TODO (ARVO) Insert display of special character
//TODO (ARVO) Insert english keyboard layout
//TODO (ARVO) Insert Pos1 End
//TODO (ARVO) Insert Ins Del + Status
//TODO (ARVO) Insert on the fly valid check for input string ->other color
//TODO (ARVO) Insert CAP, SHIFT, ESC
//TODO (ARVO) Insert Status for Display Changes
//TODO (ARVO) Insert Required Input Format HEX,TEXT,FLOAT,BYTE,SHORT,LONG...
//TODO (ARVO) Insert Failure Modes
//TODO (ARVO) Insert Blinky Modes
//TODO (ARVO) Insert pure Overlay from Keyboard
//TODO (ARVO) Potential second Keyboard with only Numbers (Y recognition for bigger buttons)
//TODO (ARVO) Insert Handling of Colors during Scroll Text .... Stdout0, stdout1
//TODO (ARVO) Idea keyboard own flag instead of 0x80 mask
//TODO (ARVO) idea insert function pointers in struct for all default output functions
//TODO (ARVO) Check for unified conio_driver.x and y update


#ifndef CONIO_TFT_H
#define CONIO_TFT_H

#include "conio_cfg.h"
#include "font_8_12.h"
#include "tfthw.h"
#include <stdarg.h>


#define BLACK 0
#define WHITE 1
#define RED 2
#define GREEN 3
#define BROWN 4
#define BLUE 5
#define MAGENTA 6
#define CYAN 7
#define LIGHTGRAY 8
#define DARKGRAY 9
#define LIGHTRED 10
#define LIGHTGREEN 11
#define YELLOW 12
#define LIGHTBLUE 13
#define LIGHTMAGENTA 14
#define LIGHTCYAN 15

#define  MENU_BACKGRND BLUE
#define  BAR_BACKGRND BLUE

//it is not rgb it is bgr, because LSB shifted first
//RGB for DAS and BGR for display

#define COLOR_RGB(r,g,b)		(((r & 0xF8) << 8) | ((g & 0xFC) << 3) | ((b & 0xF8) >> 3))
#define COLOR_BGR(r,g,b)		(((b & 0xF8) << 8) | ((g & 0xFC) << 3) | ((r & 0xF8) >> 3))


#define	COLOR_RGB_BLACK         COLOR_RGB(0,0,0)			//0x0000
#define	COLOR_RGB_RED           COLOR_RGB(255,0,0)			//0xF800
#define	COLOR_RGB_GREEN         COLOR_RGB(0,255,0)			//0x07E0
#define	COLOR_RGB_BROWN         COLOR_RGB(139,69,19)		//0x0 // 139 69 19
#define	COLOR_RGB_BLUE          COLOR_RGB(0,0,255)			//0x001F
#define COLOR_RGB_MAGENTA       COLOR_RGB(255,0,255)		//0xF81F
#define COLOR_RGB_CYAN          COLOR_RGB(0,255,255)		//0x07FF
#define COLOR_RGB_LIGHTGRAY     COLOR_RGB(200,200,200)		//0xCE59  // 200 200 200
#define COLOR_RGB_DARKGRAY      COLOR_RGB(80,80,80)			//0x528A  //  80  80  80
#define COLOR_RGB_LIGHTRED      COLOR_RGB(240,128,128)		//0x0 // 240 128 128
#define COLOR_RGB_LIGHTGREEN    COLOR_RGB(128,240,128)		//0x0 // 128 240 128
#define COLOR_RGB_YELLOW        COLOR_RGB(255,255,0)		//0xFFE0
#define COLOR_RGB_LIGHTBLUE     COLOR_RGB(128,128,240)		//0x0 // 128 128 240
#define COLOR_RGB_LIGHTMAGENTA  COLOR_RGB(240,128,240)		//0x0 // 240 128 240
#define COLOR_RGB_LIGHTCYAN     COLOR_RGB(128,240,240)		//0x0 // 128 240 240
#define COLOR_RGB_WHITE         COLOR_RGB(255,255,255)		//0xFFFF

#define COLOR_RGB_SIMPSONS      COLOR_RGB(255,217,15)		// 255 217 15

#define	COLOR_BGR_BLACK         COLOR_BGR(0,0,0)			//0x0000
#define	COLOR_BGR_RED           COLOR_BGR(255,0,0)			//0xF800
#define	COLOR_BGR_GREEN         COLOR_BGR(0,255,0)			//0x07E0
#define	COLOR_BGR_BROWN         COLOR_BGR(139,69,19)		//0x0 // 139 69 19
#define	COLOR_BGR_BLUE          COLOR_BGR(0,0,255)			//0x001F
#define COLOR_BGR_MAGENTA       COLOR_BGR(255,0,255)		//0xF81F
#define COLOR_BGR_CYAN          COLOR_BGR(0,255,255)		//0x07FF
#define COLOR_BGR_LIGHTGRAY     COLOR_BGR(200,200,200)		//0xCE59  // 200 200 200
#define COLOR_BGR_DARKGRAY      COLOR_BGR(80,80,80)			//0x528A  //  80  80  80
#define COLOR_BGR_LIGHTRED      COLOR_BGR(240,128,128)		//0x0 // 240 128 128
#define COLOR_BGR_LIGHTGREEN    COLOR_BGR(128,240,128)		//0x0 // 128 240 128
#define COLOR_BGR_YELLOW        COLOR_BGR(255,255,0)		//0xFFE0
#define COLOR_BGR_LIGHTBLUE     COLOR_BGR(128,128,240)		//0x0 // 128 128 240
#define COLOR_BGR_LIGHTMAGENTA  COLOR_BGR(240,128,240)		//0x0 // 240 128 240
#define COLOR_BGR_LIGHTCYAN     COLOR_BGR(128,240,240)		//0x0 // 128 240 240
#define COLOR_BGR_WHITE         COLOR_BGR(255,255,255)		//0xFFFF

#define COLOR_BGR_SIMPSONS      COLOR_BGR(255,217,15)		// 255 217 15


/*!< \enum Mode of for single variable display */
/*!< \brief Define the Mode of display */
typedef enum
{
    DISPINT32=0,          //!< Integer32
    DISPUINT32,         //!< Unsigned32
    DISPHEX8,         //!< Hex8
    DISPHEX16,        //!< Hex16
    DISPHEX32         //!< Hex32
} TVARMODE;

/* TMODE is in conio_cfg.h */
/* TDISPLAYMODE is in conio_cfg.h */
/* TDIALOGMODE is in conio_cfg.h */

//The graphicswidth is the amount of pixels used for graphics output
//because the last lines are always characters the array is reduce by one character line
#define GRAPHICSWIDTH (TFT_XSIZE*(TFT_YSIZE-FONT_YSIZE))    //last line is bar
//2 color picture will take 1bit for 72960pixel = 9120bytes
//4 color picture will take 2bit for 72960pixel = 18240bytes
//16 color picture will take 4bit for 72960pixel = 36480bytes
//256 color picture will take 1byte for 72960pixel = 72960bytes

//the pixelvalue is an index to the following color tables
//if 2 color mode is used index 0..1 is used, 4 color mode 0..3 ....
#define TCOLORTABLE_SIZE 256
#define TCOLORTABLEASCII_SIZE 16

typedef uint16 TCOLORTABLE[TCOLORTABLE_SIZE];    //always 256 colors
typedef uint16 TCOLORTABLEASCII[TCOLORTABLEASCII_SIZE];    //always 16 colors

#define TERMINAL_MAXX (TFT_XSIZE/FONT_XSIZE)        //the maximum display width of the tft in characters
#define TERMINAL_MAXY (TFT_YSIZE/FONT_YSIZE)        //the maximum display height of the tft in characters

typedef uint8 TDISPLAY[TERMINAL_MAXX * (TERMINAL_MAXY - 1)];    //the characters of standard text output
typedef uint8 TDISPLAYCOLOR[TERMINAL_MAXX * (TERMINAL_MAXY - 1)];   //the colors of the characters
typedef uint8 TDISPLAYBAR[TERMINAL_MAXX];   //the characters of the bar
typedef uint8 TDISPLAYBARCOLOR[TERMINAL_MAXX];  //the colors of the bar

//this structure is very important to understand the menu handling
typedef struct DISPLAYENTRY
{
    uint8 color_display;        //upper most 4 bits are background colore, lower 4 bits text color
    //if the cursor is not inside the are this color information will be taken to display the text
    uint8 color_select;         //if the cursor is inside the area, the text will be shown in this color
    sint8 xmin;                 //provides the information where the menu entry is starting
    sint8 xmax;                 //and ending
    sint8 y;                    //height information, only one line height is used as menu entry
    void (*select) (sint32 ind, struct DISPLAYENTRY * pdisplayentry);   //this function will be called in case of select, if NULL nothing will happen
    void (*display) (sint32 ind, struct DISPLAYENTRY * pdisplayentry);  //this function will be called to display the text
     sint32 (*input) (sint32 ind, struct DISPLAYENTRY * pdisplayentry); //this function will be called if an text input is required, the keyboard window will be opened
    uint8 text[TERMINAL_MAXX];  //the text
    uint8 symbol;               //the symbol number
} TDISPLAYENTRY, *pTDISPLAYENTRY;

/* TDISPLAY_INFO is in conio_cfg.h */

//the conio driver structure
typedef struct CONIO_DRIVER
{
    TDISPLAYENTRY *pmenulist;
    TDISPLAYENTRY *pstdlist;
    TDISPLAY_INFO display[CONIO_MAXDISPLAYS]; //contains the infos for the different displays, and pointers to buffers
    uint32 *pdasmirror;
    uint32 dasstatus;
    TDISPLAYMODE dasdisplaymode;   //Bits 0...6 is id for mode
    sint32 cursorstatus;        //cursorstatus information, can be also off
    TDISPLAYMODE displaymode;   //Bits 0...6 is id for mode
    TDIALOGMODE dialogmode;     //set to the dialog to show
    uint8 scanfdescr[20];       //text for keyboard entry description
    uint8 scanftext[20];        //text for keyboard entry
    sint32 (*input) (sint32 ind, TDISPLAYENTRY * pdisplayentry);
    sint32 inputid;             //in keyboard mode this id contains the entry selected for input
    sint8 scanfx;               //actual position for keyboard entry
    uint8 blinky;               //blinky cursor, to show where the input marker is
} TCONIO_DRIVER;


//a structure to measure the runtime and to show the actual time
typedef struct CONTROL
{
    uint32 timebeg[32];
    uint32 timeend[32];
    uint32 timeus[32];
} TCONTROL;

#if TFT_DISPLAY_VAR_LOCATION == 0
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
	#endif
#elif TFT_DISPLAY_VAR_LOCATION == 1
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
	#endif
#elif TFT_DISPLAY_VAR_LOCATION == 2
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#else
#error "Set TFT_DISPLAY_VAR_LOCATION to a valid value!"
#endif

extern TCONIO_DRIVER conio_driver;
extern TCONTROL control;

//the function is called with a valid cursor position and processes the commands and also triggers afterwards
//the output to the TFT
void conio_init (const pTCONIODMENTRY dm_list);
void conio_periodic (sint16 x, sint16 y, TDISPLAYENTRY * pmenulist, TDISPLAYENTRY * pstdlist);  //this function is called out of the timer tick
//specific entries libtft.c
void conio_ascii_putch (TDISPLAYMODE displaymode, uint8 ch);    /* Writes a character directly to the console. */
int conio_ascii_getch (TDISPLAYMODE displaymode);   /* Reads a character directly from the console, without echo. */
int conio_ascii_kbhit (TDISPLAYMODE displaymode);   /* Determines if a keyboard key was pressed. */
void conio_ascii_cputs (TDISPLAYMODE displaymode, uint8 * s);   /* Outputs a string directly to the console. */
uint8 *conio_ascii_cgets (TDISPLAYMODE displaymode, uint8 * s); /* Gets a string directly from the console.  */
void conio_ascii_clrscr (TDISPLAYMODE displaymode);
void conio_ascii_clreol (TDISPLAYMODE displaymode);
void conio_ascii_gotoxy (TDISPLAYMODE displaymode, sint32 x, sint32 y);
void conio_ascii_textcolor (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textbackground (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textattr (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textchangebackground (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textchangeforeground (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textchangecolor (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_printfxy (TDISPLAYMODE displaymode, sint32 x, sint32 y, const uint8 * format, ...);
void conio_ascii_printf (TDISPLAYMODE displaymode, const uint8 * format, ...);
void conio_ascii_char (TDISPLAYMODE displaymode, sint32 x, sint32 y, uint8 ch, uint8 color);
void conio_ascii_setcolortable (uint32 ind, uint32 r, uint32 g, uint32 b);
void conio_ascii_printfvalue (TDISPLAYMODE displaymode, TVARMODE varmode, uint32 value);

void conio_graphics_clrscr (TDISPLAYMODE displaymode);
void conio_graphics_textattr (TDISPLAYMODE displaymode, sint32 color);
void conio_graphics_gotoxy (TDISPLAYMODE displaymode, sint32 x, sint32 y);
void conio_graphics_cputs (TDISPLAYMODE displaymode, uint8 * s);
void conio_graphics_textcolor (TDISPLAYMODE displaymode, sint32 color);
void conio_graphics_textbackground (TDISPLAYMODE displaymode, sint32 color);
void conio_graphics_ascii_textattr (TDISPLAYMODE displaymode, sint32 color);
void conio_graphics_printfxy (TDISPLAYMODE displaymode, sint32 x, sint32 y, const uint8 * format, ...);
void conio_graphics_set (TDISPLAYMODE displaymode, sint32 x, sint32 y, uint8 color);
void conio_graphics_line (TDISPLAYMODE displaymode, sint32 x1, sint32 y1, sint32 x2, sint32 y2, uint8 color);
void conio_graphics_setcolortable (uint32 ind, uint32 r, uint32 g, uint32 b);
void conio_graphics_char (TDISPLAYMODE displaymode, sint32 x, sint32 y, uint8 ch, uint8 color);

#define TOKEN_DISPLAY_GRAPHICS_LINE 0x0000FFE1
#define TOKEN_DISPLAY_ASCII_CLRSCR 0x0000FFE2
#define TOKEN_DISPLAY_GRAPHICS_CLRSCR 0x0000FFE3
#define TOKEN_DISPLAY_ASCII_PRINTFXY 0x0000FFE4
#define TOKEN_DISPLAY_GRAPHICS_PRINTFXY 0x0000FFE5
#define TOKEN_DISPLAY_ASCII_PRINTF 0x0000FFE6
#define TOKEN_DISPLAY_ASCII_CLREOL 0x0000FFE7
#define TOKEN_DISPLAY_ASCII_TEXTATTR 0x0000FFE8
#define TOKEN_DISPLAY_ASCII_TEXTCOLOR 0x0000FFE9
#define TOKEN_DISPLAY_ASCII_TEXTBACKGROUND 0x0000FFEA
#define TOKEN_DISPLAY_GRAPHICS_TEXTATTR 0x0000FFEB
#define TOKEN_DISPLAY_GRAPHICS_TEXTCOLOR 0x0000FFEC
#define TOKEN_DISPLAY_GRAPHICS_TEXTBACKGROUND 0x0000FFED
#define TOKEN_DISPLAY_ASCII_TEXTCHANGEBACKGROUND 0x0000FFEE
#define TOKEN_DISPLAY_ASCII_TEXTCHANGEFOREGROUND 0x0000FFEF
#define TOKEN_DISPLAY_ASCII_TEXTCHANGECOLOR 0x0000FFF0
#define TOKEN_DISPLAY_ASCII_CPUTS 0x0000FFF1
#define TOKEN_DISPLAY_ASCII_GRAPHICS_CPUTS 0x0000FFF2
#define TOKEN_DISPLAY_ASCII_GOTOXY 0x0000FFF3
#define TOKEN_DISPLAY_GRAPHICS_GOTOXY 0x0000FFF4
#define TOKEN_DISPLAY_GRAPHICS_PRINTF 0x0000FFF5
#define TOKEN_DISPLAY_GRAPHICS_CPUTS 0x0000FFF6

void display_ascii_clrscr (TDISPLAYMODE displaymode);
void display_ascii_printfxy (TDISPLAYMODE displaymode, sint32 x, sint32 y, const uint8 * format, ...);
void display_ascii_printf (TDISPLAYMODE displaymode, const uint8 * format, ...);
void display_ascii_clreol (TDISPLAYMODE displaymode);
void display_ascii_textattr (TDISPLAYMODE displaymode, sint32 color);
void display_ascii_textcolor (TDISPLAYMODE displaymode, sint32 color);
void display_ascii_textbackground (TDISPLAYMODE displaymode, sint32 color);
void display_ascii_textchangebackground (TDISPLAYMODE displaymode, sint32 color);
void display_ascii_textchangeforeground (TDISPLAYMODE displaymode, sint32 color);
void display_ascii_textchangecolor (TDISPLAYMODE displaymode, sint32 color);
void display_ascii_cputs (TDISPLAYMODE displaymode, uint8 * s);
void display_ascii_gotoxy (TDISPLAYMODE displaymode, sint32 x, sint32 y);

void display_graphics_cputs (TDISPLAYMODE displaymode, uint8 * s);
void display_graphics_printf (TDISPLAYMODE displaymode, const uint8 * format, ...);
void display_graphics_gotoxy (TDISPLAYMODE displaymode, sint32 x, sint32 y);
void display_graphics_printfxy (TDISPLAYMODE displaymode, sint32 x, sint32 y, const uint8 * format, ...);
void display_graphics_clrscr (TDISPLAYMODE displaymode);
void display_graphics_line (TDISPLAYMODE displaymode, sint32 x1, sint32 y1, sint32 x2, sint32 y2, uint8 color);
void display_graphics_textattr (TDISPLAYMODE displaymode, sint32 color);
void display_graphics_textcolor (TDISPLAYMODE displaymode, sint32 color);
void display_graphics_textbackground (TDISPLAYMODE displaymode, sint32 color);

void tft_graphic (TMODE mode, uint8 * pdisplay, uint8 * pdisplaycolor);
void tft_ascii_bar (uint8 * pdisplay, uint8 * pdisplaycolor);
void tft_ascii (TMODE mode, uint8 * pdisplay, uint8 * pdisplaycolor);


#endif /* CONIO_TFT_H */
