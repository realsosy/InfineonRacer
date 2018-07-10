/*
 * tab_3.c
 *
 *  Created on: 2018. 7. 9.
 *      Author: Sujin
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "tab_3.h"

#include "tft_app.h"
#include "conio_tft.h"
#include <Cpu/Std/Ifx_Types.h>
#include <math.h>

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define LINEWIDTH 2

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

uint32 g_yLCD_old = TFT_YSIZE/2;
uint32 g_xLCD_old = 0;

uint32 g_xLCD_Index = 0;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void tab3_init(void){
	g_xLCD_old = 0;
	g_yLCD_old = TFT_YSIZE/2;

    g_xLCD_Index = 0;

    drawPlot_Background();
	drawPlot_Axis();
}

void tab3_run(void){
	drawPlot_Function();
}

void drawPlot_Background(void)
{
    uint32 i, j;

    // set white background
    for(i = 0; i < TFT_YSIZE - FONT_YSIZE; i++)
    {
        for(j = 0; j < TFT_XSIZE; j++)
        {
            conio_graphics_set(DISPLAY_TAB3, j, i, WHITE);
        }
    }
}

void drawPlot_Axis(void)
{
    uint32 i, j;
    uint32 centerY;

    centerY = TFT_YSIZE/ 2;

    // XAxis
    for(i = centerY-(LINEWIDTH/2); i < centerY+(LINEWIDTH/2); i++)
    {
        for(j = 0; j < TFT_XSIZE; j++)
        {
            conio_graphics_set(DISPLAY_TAB3, j, i, BLACK);
        }
    }

    // YAxis
    for(i = 0; i < TFT_YSIZE - FONT_YSIZE; i++)
    {
        for(j = 0; j < 0 + LINEWIDTH; j++)
        {
            conio_graphics_set(DISPLAY_TAB3, j, i, BLACK);
        }
    }
}

void drawPlot_Function(void)
{
	// origin setup
	// configuration parameters
	// - x_min, x_max
	// - y_min, y_max

	uint32 i, j;

	float32 amplitude, yscale, xscale;
	uint32 y_LCD;
	uint32 x_LCD;
	float32 ysine;

	amplitude = 1;
	yscale = ((TFT_YSIZE / 2) - 40) / amplitude;
	xscale = 10;

	ysine = sin(getCpuSeconds());

	// coordinate conversion
	y_LCD = (uint32) floor(yscale * ysine + TFT_YSIZE/2);
	x_LCD = (uint32) floor(xscale * getCpuSeconds());

	if(floor(x_LCD/TFT_XSIZE) != g_xLCD_Index)
	{
		g_xLCD_Index = floor(x_LCD/TFT_XSIZE);
		drawPlot_Background();
		drawPlot_Axis();
	}

	x_LCD = x_LCD % (TFT_XSIZE);

	if(g_yLCD_old <= y_LCD)
	{
	    for(i = g_yLCD_old; i < y_LCD; i++)
	    {
	        for(j = g_xLCD_old; j < x_LCD; j++)
	        {
	            conio_graphics_set(DISPLAY_TAB3, j, i, RED);
	        }
	    }
	}
	else if(g_yLCD_old > y_LCD)
	{
	    for(i = y_LCD; i < g_yLCD_old; i++)
	    {
	        for(j = g_xLCD_old; j < x_LCD; j++)
	        {
	            conio_graphics_set(DISPLAY_TAB3, j, i, RED);
	        }
	    }
	}
    g_yLCD_old = y_LCD;
    g_xLCD_old = x_LCD;
}


