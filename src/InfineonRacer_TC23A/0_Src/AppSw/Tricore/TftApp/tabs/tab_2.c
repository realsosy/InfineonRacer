/*
 * tab_2.c
 *
 *  Created on: 2018. 7. 9.
 *      Author: Sujin
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "tab_2.h"
#include "utils/Perf_Meas.h"
#include "Basic.h"

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
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
// *INDENT-OFF*
TDISPLAYENTRY tab2_DIS1list[0] = {
// standard display color, select display color, x_min, x_max, y, select->function, standard display, input func, "String"
{0, 0, 0, 0, 0, 0, 0, 0, " "}  // RESERVED ENTRY
};
// *INDENT-ON*

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/


void tab2_init(void){
    conio_ascii_printfxy (DISPLAY_TAB2, 10, 0, (uint8 *)"<<DISPLAY INFO 1>>");
}

void tab2_run(void){

	conio_ascii_printfxy (DISPLAY_TAB2, 1,  2, (uint8 *)"CPU0 Load %.3f %c ", getCpuLoad(), 0x25);

	conio_ascii_printfxy (DISPLAY_TAB2, 0,  4, (uint8 *)" Motor0En : %4d     Motor1En : %4d", IR_getMotor0En(), IR_getMotor1En());
	conio_ascii_printfxy (DISPLAY_TAB2, 0,  5, (uint8 *)" Motor0Vol: %4.2f     Motor1En: %4.2f", IR_getMotor0Vol(), IR_getMotor1Vol());
	conio_ascii_printfxy (DISPLAY_TAB2, 0,  6, (uint8 *)" SrvAngle : %4.2f", IR_getSrvAngle());

	conio_ascii_printfxy (DISPLAY_TAB2, 0,  8, (uint8 *)" EncSpeed : %4.0f     EncPos   : %4d", IR_getEncSpeed(), IR_getEncPosition());

	conio_ascii_printfxy (DISPLAY_TAB2, 0,  10, (uint8 *)" AdcChn15 : %4.2f     AdcChn16 : %4.2f", IR_getChn15(), IR_getChn16());
	conio_ascii_printfxy (DISPLAY_TAB2, 0,  11, (uint8 *)" AdcChn20 : %4.2f     AdcChn21 : %4.2f", IR_getChn20(), IR_getChn21());

	conio_ascii_printfxy (DISPLAY_TAB2, 0,  13, (uint8 *)" PORT00_0 : %4d     PORT00_1 : %4d", IR_getPort00_0(), IR_getPort00_1());

	conio_ascii_printfxy (DISPLAY_TAB2, 0,  15, (uint8 *)" BP_Freq  : %4.0f     BP_VOL  : %4.2f", IR_getBeeperFreq(), IR_getBeeperVol());
}
