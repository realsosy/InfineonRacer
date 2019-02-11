/*
 * tab_0.c
 *
 *  Created on: 2018. 7. 9.
 *      Author: Sujin
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "tab_0.h"

#include "utils/background_light.h"
#include "tft_app.h"
#include "touch.h"
#include "Tft/conio_tft.h"

#include "Basic.h"
#include "InfineonRacer.h"

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
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
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
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
TDISPLAYENTRY tab0_menulist[20] = {
 // standard display color,  select display color, x_min, x_max, y,                    select->function,               standard display,  input func, "String"
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,	   2,    31, 0,                  &menu_select_title,                  &menu_display,                  &menu_input,"[Infineon Racer with App-Kit XC237]"},

{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 	  30,    39, 1,                 &menu_select_cpusec,           &menu_display_cpusec,                  &menu_input,"cpusec"},
{      (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 	   0,    14, 3,              &menu_select_testbasic,        &menu_display_testbasic,                  &menu_input,"Test Basic: OFF"},

{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,     1,     9, 5,               &menu_select_motor0en,         &menu_display_motor0en,                  &menu_input,"M0En OFF"},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    15,    27, 5,                 &menu_select_motor0,           &menu_display_motor0,           &menu_input_motor0, "M0Vol: "},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    30,    32, 5,           &menu_select_motor0_minus,                  &menu_display,                  &menu_input, "-<<"},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    34,    36, 5,            &menu_select_motor0_plus,                  &menu_display,                  &menu_input, ">>+"},

{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,     1,     9, 7,               &menu_select_motor1en,         &menu_display_motor1en,                  &menu_input,"M1En OFF"},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    15,    27, 7,                 &menu_select_motor1,           &menu_display_motor1,           &menu_input_motor1, "M1Vol: "},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    30,    32, 7,           &menu_select_motor1_minus,                  &menu_display,                  &menu_input, "-<<"},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    34,    36, 7,            &menu_select_motor1_plus,                  &menu_display,                  &menu_input, ">>+"},

{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,     1,     9, 9,                 &menu_select_beeper,           &menu_display_beeper,                  &menu_input,"Beep Off"},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    15,    27, 9,                    &menu_select_srv,              &menu_display_srv,              &menu_input_srv, "Servo: "},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    30,    32, 9,              &menu_select_srv_minus,                  &menu_display,                  &menu_input, "-<<"},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    34,    36, 9,               &menu_select_srv_plus,                  &menu_display,                  &menu_input, ">>+"},

{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,     0,    16, 17,      &menu_select_background_light, &menu_display_background_light, &menu_input_background_light, "Background Light: "},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    30,    32, 17, &menu_select_background_lightminus,                  &menu_display,                  &menu_input, "-<<"},
{	   (CYAN << 4) | BLACK, (BLACK << 4) | YELLOW,    34,    36, 17,  &menu_select_background_lightplus,                  &menu_display,                  &menu_input, ">>+"},

{0, 0, 0, 0, 0, 0, 0, 0, " "}  //LAST ENTRY
};



/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/


/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void tab0_init(void){

}

void tab0_run(void){

}

void menu_display (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, &pdisplayentry->text[0]);
}

void menu_select (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

sint32 menu_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    return (0);
}

void menu_select_title (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "Created in 2018/01/03");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_cpusec (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"%7.1f", getCpuSeconds());
}

void menu_select_cpusec (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "Reset");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
    	setCpuSeconds(0.0);
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_testbasic (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    if(IR_Ctrl.basicTest == FALSE){
    	conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"TEST BASIC: OFF");
    }
    else {
    	conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"TEST BASIC:  ON");
    }
}

void menu_select_testbasic (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    if (IR_Ctrl.basicTest == FALSE){
        conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "TEST BASIC: OFF");
    }
    else{
        conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "TEST BASIC:  ON");
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        if (IR_Ctrl.basicTest == FALSE){
            IR_Ctrl.basicTest = TRUE;
        }
        else{
            IR_Ctrl.basicTest = FALSE;
        }
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_beeper (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    if(IR_getBeeperOn() == FALSE){
    	conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Beep OFF");
    }
    else {
    	conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Beep  ON");
    }
}

void menu_select_beeper (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    if (IR_getBeeperOn() == FALSE){
        conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "Beep OFF");
    }
    else{
        conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "Beep  ON");
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        if (IR_getBeeperOn() == FALSE){
            IR_setBeeperOn(TRUE);
        }
        else{
            IR_setBeeperOn(FALSE);
        }
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_motor0en (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    if(IR_getMotor0En() == FALSE){
    	conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"M0En OFF");
    }
    else {
    	conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"M0En  ON");
    }
}

void menu_select_motor0en (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    if (IR_getMotor0En() == FALSE){
        conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "M0En OFF");
    }
    else{
        conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "M0En  ON");
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        if (IR_getMotor0En() == FALSE){
            IR_setMotor0En(TRUE);
        }
        else{
            IR_setMotor0En(FALSE);
        }
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_motor0 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"M0Vol:  %3.2f", IR_getMotor0Vol());
}

sint32 menu_input_motor0 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    float32 temp;
    sint32 result;
    result = sscanf ((char *) &conio_driver.scanftext[0], "%f", (float32 *) &temp);
    if (result != 1)
        return (-1);
    IR_setMotor0Vol(temp);

    return (0);
}

void menu_select_motor0 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);    //MENUE
    conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"M0Vol:  %3.2f", IR_getMotor0Vol());   //MENUE
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        strcpy ((char *) &conio_driver.scanfdescr[0], "M0Vol:  ");    //PREP of Keyboard Mode
        sprintf ((char *) &conio_driver.scanftext[0], "%3.2f", IR_getMotor0Vol()); //right upper value
        conio_driver.scanfx = 0;    //actual cursor
        conio_driver.dialogmode = KEYBOARDON; //Keyboard input mode
        conio_driver.input = pdisplayentry->input;
        conio_driver.inputid = ind;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_select_motor0_plus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) ">>+");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        IR_setMotor0Vol(IR_getMotor0Vol() + 0.05f);
    }
}

void menu_select_motor0_minus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "-<<");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        IR_setMotor0Vol(IR_getMotor0Vol() - 0.05f);
    }
}

void menu_display_motor1en (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    if(IR_getMotor1En() == FALSE){
    	conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"M1En OFF");
    }
    else {
    	conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"M1En  ON");
    }
}

void menu_select_motor1en (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    if (IR_getMotor1En() == FALSE){
        conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "M1En OFF");
    }
    else{
        conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "M1En  ON");
    }
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        if (IR_getMotor1En() == FALSE){
            IR_setMotor1En(TRUE);
        }
        else{
            IR_setMotor1En(FALSE);
        }
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_display_motor1 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"M1Vol:  %3.2f", IR_getMotor1Vol());
}

sint32 menu_input_motor1 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    float32 temp;
    sint32 result;
    result = sscanf ((char *) &conio_driver.scanftext[0], "%f", (float32 *) &temp);
    if (result != 1)
        return (-1);
    IR_setMotor1Vol(temp);

    return (0);
}

void menu_select_motor1 (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);    //MENUE
    conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"M1Vol:  %3.2f", IR_getMotor1Vol());   //MENUE
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        strcpy ((char *) &conio_driver.scanfdescr[0], "M1Vol:  ");    //PREP of Keyboard Mode
        sprintf ((char *) &conio_driver.scanftext[0], "%3.2f", IR_getMotor1Vol()); //right upper value
        conio_driver.scanfx = 0;    //actual cursor
        conio_driver.dialogmode = KEYBOARDON; //Keyboard input mode
        conio_driver.input = pdisplayentry->input;
        conio_driver.inputid = ind;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_select_motor1_plus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) ">>+");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        IR_setMotor1Vol(IR_getMotor1Vol() + 0.05f);
    }
}

void menu_select_motor1_minus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "-<<");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        IR_setMotor1Vol(IR_getMotor1Vol() - 0.05f);
    }
}

void menu_display_srv (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Servo:  %3.2f", IR_getSrvAngle());
}

sint32 menu_input_srv (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    float32 temp;
    sint32 result;
    result = sscanf ((char *) &conio_driver.scanftext[0], "%f", (float32 *) &temp);
    if (result != 1)
        return (-1);
    IR_setSrvAngle(temp);

    return (0);
}

void menu_select_srv (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);    //MENUE
    conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Servo:  %3.2f", IR_getSrvAngle());   //MENUE
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        strcpy ((char *) &conio_driver.scanfdescr[0], "Servo:  ");    //PREP of Keyboard Mode
        sprintf ((char *) &conio_driver.scanftext[0], "%3.2f", IR_getSrvAngle()); //right upper value
        conio_driver.scanfx = 0;    //actual cursor
        conio_driver.dialogmode = KEYBOARDON; //Keyboard input mode
        conio_driver.input = pdisplayentry->input;
        conio_driver.inputid = ind;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_select_srv_plus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) ">>+");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        IR_setSrvAngle(IR_getSrvAngle() + 0.05f);
    }
}

void menu_select_srv_minus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "-<<");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        IR_setSrvAngle(IR_getSrvAngle() - 0.05f);
    }
}

void menu_display_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_display);
    conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Background Light: %u", (unsigned int) getBackgroundLightSize());
}

sint32 menu_input_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    uint32 temp;
    sint32 result;
    result = sscanf ((char *) &conio_driver.scanftext[0], "%u", (unsigned int *) &temp);
    if (result != 1)
        return (-1);
    if (temp < getBackgroundLightMin())
        temp = getBackgroundLightMin();
    if (temp > getBackgroundLightMax())
        temp = getBackgroundLightMax();

    setBackgroundLightSize(temp);

    return (0);
}

void menu_select_background_light (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);    //MENUE
    conio_ascii_printfxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y, (const uint8 *)"Change Light: %u", (unsigned int) getBackgroundLightSize());   //MENUE
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        strcpy ((char *) &conio_driver.scanfdescr[0], "Light: ");    //PREP of Keyboard Mode
        sprintf ((char *) &conio_driver.scanftext[0], "%u", (unsigned int) getBackgroundLightSize()); //right upper value
        conio_driver.scanfx = 0;    //actual cursor
        conio_driver.dialogmode = KEYBOARDON; //Keyboard input mode
        conio_driver.input = pdisplayentry->input;
        conio_driver.inputid = ind;
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
    }
}

void menu_select_background_lightplus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
	uint32 tmp = 0;
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) ">>+");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (getBackgroundLightSize() < getBackgroundLightMax())
        {
        	tmp = getBackgroundLightSize();
        	tmp = tmp + getBackgroundLightDelta();
        	setBackgroundLightSize(tmp);
        }

    }
}

void menu_select_background_lightminus (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
	uint32 tmp = 0;
    conio_ascii_textattr (DISPLAY_TAB0, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_TAB0, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_TAB0, (uint8 *) "-<<");
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        if (getBackgroundLightSize()  > getBackgroundLightMin())
        {
        	tmp = getBackgroundLightSize();
        	tmp = tmp - getBackgroundLightDelta();
        	setBackgroundLightSize(tmp);
        }
    }
}
