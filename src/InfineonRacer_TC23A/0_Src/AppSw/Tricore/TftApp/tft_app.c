/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/


#include <Tft/conio_tft.h>
#include <Tft/touch.h>

#include "Configuration.h"
#include "conio_cfg.h"

#include "tft_app.h"

//#include "app/background_light.h"
#include "tab_config/tab_config.h"
#include "tabs/tab_0.h"
#include "tabs/tab_1.h"
#include "tabs/tab_2.h"
#include "tabs/tab_3.h"
#include "tabs/tab_4.h"

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

//extern void keyboard (sint16 x, sint16 y);

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

#ifdef TFT_OVER_DAS
uint32 das_buffer[DAS_BUFFER_LEN >> 2];
#endif

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

float32 g_cpuseconds = 0.0;

extern TTOUCH_DRIVER touch_driver;
extern TCONIO_DRIVER conio_driver;

TDISPLAYBAR display_menu_config;
TDISPLAYBARCOLOR displaycolor_menu_config;
TDISPLAY display_tab0;
TDISPLAYCOLOR displaycolor_tab0;
TDISPLAY display_tab1;
TDISPLAYCOLOR displaycolor_tab1;
TDISPLAY display_tab2;
TDISPLAYCOLOR displaycolor_tab2;

TDISPLAY_GRAPHICS0 display_tab3;
TDISPLAY_GRAPHICS0 display_tab4;


volatile boolean tft_ready;
/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
//const TCONIODLGENTRY conio_dialog_list[CONIO_DLG_ENTRIES] =
//{
//    { KEYBOARDON, &keyboard },
//};

const TCONIODMENTRY conio_displaymode_list[CONIO_MAXDISPLAYS] =
{
    { DISPLAY_TAB_CONFIG, {(uint8 *) & display_menu_config, (uint8 *) & displaycolor_menu_config, TEXTMODE, WHITE, TERMINAL_MAXX, 1, 0, 0} },
    { DISPLAY_TAB0, {(uint8 *) & display_tab0, 				(uint8 *) & displaycolor_tab0, 		  TEXTMODE, WHITE, TERMINAL_MAXX, TERMINAL_MAXY-1, 0, 0} },
    { DISPLAY_TAB1, {(uint8 *) & display_tab1, 				(uint8 *) & displaycolor_tab1, 		  TEXTMODE, WHITE, TERMINAL_MAXX, TERMINAL_MAXY-1, 0, 0} },
    { DISPLAY_TAB2, {(uint8 *) & display_tab2, 				(uint8 *) & displaycolor_tab2, 		  TEXTMODE, WHITE, TERMINAL_MAXX, TERMINAL_MAXY-1, 0, 0} },
    { DISPLAY_TAB3, {(uint8 *) & display_tab3, 										    0, 	      GRAPHICMODE_16COLOR, WHITE, TERMINAL_MAXX, TERMINAL_MAXY, 0, 0} },
    { DISPLAY_TAB4, {(uint8 *) & display_tab4,  										0, 	      GRAPHICMODE_16COLOR, WHITE, TERMINAL_MAXX, TERMINAL_MAXY, 0, 0} }
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

	// tab config
    conio_driver.p_tab_config = (TDISPLAYENTRY *)&tab_config_list[0];

    // tab0_init
    conio_driver.p_tab0_menulist = (TDISPLAYENTRY *)&tab0_menulist[0];
    tab0_init();

    // tab1_init
    tab1_init();

    // tab2_init
    tab2_init();

    // tab3_init
    tab3_init();

    // tab4_init
    tab4_init();

    // low-level driver initialization
    tft_init ();                //initializes tft driver
    touch_init ();
    //conio_init ((const pTCONIODMENTRY)conio_displaymode_list);

#ifdef TFT_OVER_DAS
    conio_driver.pdasmirror = &das_buffer[0];   //a buffer is available for PC sharing
    conio_driver.dasstatus = 0; //we can update
#endif

    tft_ready = TRUE;

}

extern void tft_app_run(void){
	// Operating time
	float32 tmp = getCpuSeconds();
	tmp = tmp + REFRESH_TFT*0.1;
	setCpuSeconds(tmp);

	// tab0_run
	tab0_run();

	// tab1_run
	tab1_run();

	// tab2_run
	tab2_run();

	// tab3_run
	tab3_run();

	// tab4_run
	tab4_run();

	IfxSrc_setRequest(&TFT_UPDATE_IRQ);    //trigger the tft lib
}

/******************************************************************************/
/*-------------------------External Interface---------------------------------*/
/******************************************************************************/

float32 getCpuSeconds(void)
{
	return g_cpuseconds;
}

void setCpuSeconds(float32 sec)
{
	g_cpuseconds = sec;
}

/******************************************************************************/
/*-------------------------Interrupt Service Routine--------------------------*/
/******************************************************************************/

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
    //conio_periodic (touch_driver.xdisp, touch_driver.ydisp, conio_driver.p_tab0_menulist, conio_driver.p_tab_config);
    conio_driver.blinky += 1;
}
