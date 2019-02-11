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
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

void draw_Background(void);
void plot_Axis(void);

void plotFunction(uint32 x_LCD, uint32 y_LCD, uint8 color);
void MeastoLCD(float32 ymin, float32 ymax, float32 measX, float32 measY,
		uint32 *rtLCD_X, uint32 *rtLCD_Y);

// application
float32 calSin(float32 input);
float32 calCos(float32 input);

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

uint32 g_yLCD_old = TFT_YSIZE/2;
uint32 g_xLCD_old = 0;

uint32 g_xLCD_Index = 0;

uint32 g_xLCD_clearIndex = 0;

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

    draw_Background();
    plot_Axis();
}

void tab3_run(void){

	float32 ymin, ymax;
	uint32	LCD_X, LCD_Y;

	float32	measuredX = getCpuSeconds();
	float32 measuredY = calSin(measuredX);
//	float32 measuredY = calCos(measuredX);

	ymin = -1;
	ymax = 1;

	MeastoLCD(ymin, ymax, measuredX, measuredY, &LCD_X, &LCD_Y);
	plotFunction(LCD_X, LCD_Y, RED);
}

void draw_Background(void)
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

void plot_Axis(void)
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

void plotFunction(uint32 x_LCD, uint32 y_LCD, uint8 color)
{
	uint32 	i, j;

	// plot

	// if xLCD > n* TFTXSIZE, LCD clear
	if(floor(x_LCD/TFT_XSIZE) != g_xLCD_clearIndex)
	{
		// LCD clear index update
		g_xLCD_clearIndex = floor(x_LCD/TFT_XSIZE);
		draw_Background();	// clear background
		plot_Axis();
	}

	x_LCD = x_LCD % (TFT_XSIZE);

	if(g_yLCD_old <= y_LCD)
	{
	    for(i = g_yLCD_old; i < y_LCD; i++)
	    {
	        for(j = g_xLCD_old; j < x_LCD; j++)
	        {
	            conio_graphics_set(DISPLAY_TAB3, j, i, color);
	        }
	    }
	}
	else if(g_yLCD_old > y_LCD)
	{
	    for(i = y_LCD; i < g_yLCD_old; i++)
	    {
	        for(j = g_xLCD_old; j < x_LCD; j++)
	        {
	            conio_graphics_set(DISPLAY_TAB3, j, i, color);
	        }
	    }
	}

    g_yLCD_old = y_LCD;
    g_xLCD_old = x_LCD;
}

void MeastoLCD(float32 ymin, float32 ymax, float32 measX, float32 measY,
		uint32 *rtLCD_X, uint32 *rtLCD_Y)
{
	float32 yrange;
	float32 yscale, xscale;

	uint32 	yLCDorgin = TFT_YSIZE / 2;

	//Customize
	uint32 yPlotMargin = 80;
	xscale = 15;

	// coordinate conversion
	yrange = ymax - ymin;
	yscale = (TFT_YSIZE - yPlotMargin) / yrange;

	*rtLCD_X = (uint32) floor(xscale * measX);
	*rtLCD_Y = (uint32) floor(yscale * measY + yLCDorgin);
}

float32 calSin(float32 input)
{
	float32 tmp;
	tmp = sin(input);
	return tmp;
}

float32 calCos(float32 input)
{
	float32 tmp;
	tmp = cos(input);
	return tmp;
}


