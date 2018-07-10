/*
 * tab_config.h
 *
 *  Created on: 2018. 7. 9.
 *      Author: Sujin
 */

#ifndef _TAB_CONFIG_H_
#define _TAB_CONFIG_H_

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Tft/conio_tft.h>
#include <Ifx_Types.h>

/******************************************************************************/
/*------------------------Inline Function Prototypes--------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void tab_select_menu (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void tab_select_stdio0 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void tab_select_stdio1 (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void tab_select_graph (sint32 ind, TDISPLAYENTRY * pdisplayentry);
void tab_select_rsvd (sint32 ind, TDISPLAYENTRY * pdisplayentry);
sint32 tab_input (sint32 ind, TDISPLAYENTRY * pdisplayentry);

extern TDISPLAYENTRY tab_config_list[6];

//const TDISPLAYENTRY tab_config_list[6] = {
//  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 1, 6, (TERMINAL_MAXY-1), &tab_select_menu, 0, &tab_input, " Main "},      // tab 0
//  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 9, 14, (TERMINAL_MAXY-1), &tab_select_stdio0, 0, &tab_input, " DIS0 "},   // tab 1
//  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 17, 22, (TERMINAL_MAXY-1), &tab_select_stdio1, 0, &tab_input, " DIS1 "},  // tab 2
//  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 25, 30, (TERMINAL_MAXY-1), &tab_select_graph, 0, &tab_input, "GRAPH "},   // tab 3
//  {(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 33, 38, (TERMINAL_MAXY-1), &tab_select_rsvd, 0, &tab_input, " RSVD "},    // tab 4
//  {0, 0, 0, 0, 0, 0, 0, 0, " "}
//};

#endif /* 0_SRC_APPSW_TRICORE_TFTAPP_TAB_CONFIG_H_ */
