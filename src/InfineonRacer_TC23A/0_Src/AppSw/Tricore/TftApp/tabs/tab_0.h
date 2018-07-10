/*
 * tab_0.h
 *
 *  Created on: 2018. 7. 9.
 *      Author: Sujin
 */

#ifndef TAB_0_H_
#define TAB_0_H_

#include <Tft/conio_tft.h>
#include <Ifx_Types.h>

void tab0_init(void);
void tab0_run(void);

void menu_display (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_title (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_cpusec (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_cpusec (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_testbasic (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_testbasic (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_beeper (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_beeper (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_motor0en (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_motor0en (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_motor0 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_motor0 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input_motor0 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_motor0_plus (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_motor0_minus (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_motor1en (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_motor1en (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_motor1 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_motor1 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input_motor1 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_motor1_plus (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_motor1_minus (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_srv (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_srv (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input_srv (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_srv_plus (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_srv_minus (sint32 ind, TDISPLAYENTRY * pdisplayentry);

void menu_select_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_display_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 menu_input_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_background_lightplus (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void menu_select_background_lightminus (sint32 ind, TDISPLAYENTRY * pdisplayentry);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/
// *INDENT-OFF*
const TDISPLAYENTRY tab0_menulist[20] = {
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 2, 31, 0, &menu_select_title, &menu_display, &menu_input,"[Infineon Racer with App-Kit XC237]"},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 39, 1, &menu_select_cpusec, &menu_display_cpusec, &menu_input,"cpusec"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 14, 3, &menu_select_testbasic, &menu_display_testbasic, &menu_input,"Test Basic: OFF"},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 1, 9, 5, &menu_select_motor0en, &menu_display_motor0en, &menu_input,"M0En OFF"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 15, 27, 5, &menu_select_motor0, &menu_display_motor0, &menu_input_motor0, "M0Vol: "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 32, 5, &menu_select_motor0_minus, &menu_display, &menu_input, "-<<"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 34, 36, 5, &menu_select_motor0_plus, &menu_display, &menu_input, ">>+"},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 1, 9, 7, &menu_select_motor1en, &menu_display_motor1en, &menu_input,"M1En OFF"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 15, 27, 7, &menu_select_motor1, &menu_display_motor1, &menu_input_motor1, "M1Vol: "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 32, 7, &menu_select_motor1_minus, &menu_display, &menu_input, "-<<"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 34, 36, 7, &menu_select_motor1_plus, &menu_display, &menu_input, ">>+"},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 1, 9, 9, &menu_select_beeper, &menu_display_beeper, &menu_input,"Beep Off"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 15, 27, 9, &menu_select_srv, &menu_display_srv, &menu_input_srv, "Servo: "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 32, 9, &menu_select_srv_minus, &menu_display, &menu_input, "-<<"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 34, 36, 9, &menu_select_srv_plus, &menu_display, &menu_input, ">>+"},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 16, 17, &menu_select_background_light, &menu_display_background_light, &menu_input_background_light, "Background Light: "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 32, 17, &menu_select_background_lightminus, &menu_display, &menu_input, "-<<"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 34, 36, 17, &menu_select_background_lightplus, &menu_display, &menu_input, ">>+"},

{0, 0, 0, 0, 0, 0, 0, 0, " "}  //LAST ENTRY
};
// *INDENT-ON*

#endif /* 0_SRC_APPSW_TRICORE_TFTAPP_TAB_0_H_ */
