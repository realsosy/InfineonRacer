/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Cpu/Std/Ifx_Types.h>
#include <Tft/conio_tft.h>
#include <Tft/touch.h>
#include "tft_app.h"
#include "Configuration.h"
#include "conio_cfg.h"
#include "background_light.h"
#include "Perf_Meas.h"
#include "display_io.h"


/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
//typedef uint8 TDISPLAY_GRAPHICS0[GRAPHICSWIDTH/4];    //4 color
typedef uint8 TDISPLAY_GRAPHICS0[GRAPHICSWIDTH/2];      //16 color
//typedef uint8 TDISPLAY_GRAPHICS0[GRAPHICSWIDTH];        //256 color
//typedef uint8 TDISPLAY_GRAPHICS1[GRAPHICSWIDTH];        //256 color

#ifdef TFT_OVER_DAS
#if (!defined(DAS_BUFFER_LEN))
//#define DAS_BUFFER_LEN (TCOLORTABLEASCII_SIZE * 2 + 2* TERMINAL_MAXX + TCOLORTABLE_SIZE * 2+ (GRAPHICSWIDTH / 1))   //maximum information
#define DAS_BUFFER_LEN (TCOLORTABLEASCII_SIZE * 2 + 2* TERMINAL_MAXX + TCOLORTABLE_SIZE * 2 + (GRAPHICSWIDTH / 2))  //maximum information
//#define DAS_BUFFER_LEN (TCOLORTABLEASCII_SIZE * 2 + 2* TERMINAL_MAXX + TCOLORTABLE_SIZE * 2+ (GRAPHICSWIDTH / 4))   //maximum information
#endif
#endif

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

extern void keyboard (sint16 x, sint16 y);

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

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

TCONTROLMENU controlmenu;

extern TTOUCH_DRIVER touch_driver;
extern TCONIO_DRIVER conio_driver;

extern const TDISPLAYENTRY menulist[];
extern const TDISPLAYENTRY stdlist[];

TDISPLAY_GRAPHICS0 display_graph;

#ifdef TFT_OVER_DAS
uint32 das_buffer[DAS_BUFFER_LEN >> 2];
#endif

TDISPLAYBAR display_bar;
TDISPLAYBARCOLOR displaycolor_bar;
TDISPLAY display_menu;
TDISPLAYCOLOR displaycolor_menu;
TDISPLAY display_stdio0;
TDISPLAYCOLOR displaycolor_stdio0;
TDISPLAY display_stdio1;
TDISPLAYCOLOR displaycolor_stdio1;
TDISPLAY display_rsvd;
TDISPLAYCOLOR displaycolor_rsvd;

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

volatile boolean tft_ready;
/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
const TCONIODLGENTRY conio_dialog_list[CONIO_DLG_ENTRIES] =
{
    { KEYBOARDON, &keyboard },
};

const TCONIODMENTRY conio_displaymode_list[CONIO_MAXDISPLAYS] =
{
    { DISPLAY_BAR, {(uint8 *) & display_bar, (uint8 *) & displaycolor_bar, TEXTMODE, WHITE, TERMINAL_MAXX, 1, 0, 0} },
    { DISPLAY_MENU, {(uint8 *) & display_menu, (uint8 *) & displaycolor_menu, TEXTMODE, WHITE, TERMINAL_MAXX, TERMINAL_MAXY-1, 0, 0} },
    { DISPLAY_IO0, {(uint8 *) & display_stdio0, (uint8 *) & displaycolor_stdio0, TEXTMODE, WHITE, TERMINAL_MAXX, TERMINAL_MAXY-1, 0, 0} },
    { DISPLAY_IO1, {(uint8 *) & display_stdio1, (uint8 *) & displaycolor_stdio1, TEXTMODE, WHITE, TERMINAL_MAXX, TERMINAL_MAXY-1, 0, 0} },
    { DISPLAY_GRAPH, {(uint8 *) & display_graph, 0, GRAPHICMODE_16COLOR, WHITE, TERMINAL_MAXX, TERMINAL_MAXY, 0, 0} },
    { DISPLAY_RSVD, {(uint8 *) & display_rsvd, (uint8 *) & displaycolor_rsvd, TEXTMODE, WHITE, TERMINAL_MAXX, TERMINAL_MAXY-1, 0, 0} }
};


/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
/** \brief TFT application init
 *
 * This function initialises the TFT display via QSPI0 in master mode.
 */
void tft_app_init (uint8 RtcRunning)
{
    /* setup our general interrupt to call the tft routines periodically */
    IfxSrc_init(&TFT_UPDATE_IRQ, ISR_PROVIDER_CPUSRV0, ISR_PRIORITY_CPUSRV0);
    IfxSrc_enable(&TFT_UPDATE_IRQ);

    conio_driver.pmenulist = (TDISPLAYENTRY *)&menulist[0];
    conio_driver.pstdlist = (TDISPLAYENTRY *)&stdlist[0];

    tft_init ();                //initializes tft driver
    touch_init ();
    conio_init ((const pTCONIODMENTRY)conio_displaymode_list);
#ifdef TFT_OVER_DAS
    conio_driver.pdasmirror = &das_buffer[0];   //a buffer is available for PC sharing
    conio_driver.dasstatus = 0; //we can update
#endif

    controlmenu.cpusecondsdelta = 0.1f;
    tft_ready = TRUE;

    background_light_init();
    graph_drawInfineonLogo();
    display_io_init();

}

extern void tft_app_run(void){
	display_io_run();
	controlmenu.cpuseconds = controlmenu.cpuseconds + REFRESH_TFT*0.1;
	IfxSrc_setRequest(&TFT_UPDATE_IRQ);    //trigger the tft lib
}

/** \brief periodic function to get touch values and to change the conio displays
 *
 * This function calls the receive of the actual touch values and change the conio displays.
 */
IFX_INTERRUPT (cpu_service0Irq, 0, ISR_PRIORITY_CPUSRV0);
void cpu_service0Irq(void)
{

	__enable();
	if (tft_ready == 0) return;
    touch_periodic ();
    conio_periodic (touch_driver.xdisp, touch_driver.ydisp, conio_driver.pmenulist, conio_driver.pstdlist);
    conio_driver.blinky += 1;
}
