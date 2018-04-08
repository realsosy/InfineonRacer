/*
* \file
* \brief Include File for TFT Driver
*
*/
#ifndef _CONIO_CFG_H
#define _CONIO_CFG_H

typedef enum
{
    DIALOGOFF=0,                  /*!< \brief No extra dialog open (show menu if display selected) */
    KEYBOARDON                   /*!< \brief Show keyboard */
} TDIALOGMODE;

typedef struct CONIO_DLG_ENTRY
{
    TDIALOGMODE dialogMode;
    void        (*function) (sint16 x, sint16 y);
} TCONIODLGENTRY, *pTCONIODLGENTRY;

#define CONIO_DLG_ENTRIES 1

extern const TCONIODLGENTRY conio_dialog_list[CONIO_DLG_ENTRIES];

/*!< \enum DisplayModes
 * Define the amount of possible Displays
 * More Displays needs more ram memory
 */
typedef enum
{
    DISPLAY_BAR=0,                 //!< DISPLAY_BAR is the bottom character line of the TFT, always needed and must be 0
    DISPLAY_MENU=1,                //!< DISPLAY_MENU is the menu view to make selections and change parameters
    DISPLAY_IO0=2,             //!< DISPLAY_STDIO0 is a standard text output window
    DISPLAY_IO1=3,             //!< DISPLAY_STDIO1 is a standard text output window
    DISPLAY_GRAPH=4,            //!< DISPLAY_GRAPH first graphics window
    DISPLAY_RSVD=5            //!< DISPLAY_RSVD is a standard text output window
} TDISPLAYMODE;

/*!< \enum Mode of TFT */
/*!< \brief Define the Mode of the Output Window */
typedef enum
{
    RAWMODE=0,                    //!< Raw Mode
    TEXTMODE=1,                   //!< Text Mode
    GRAPHICMODE_2COLOR=2,         //!< Graphics with 2 Colors
    GRAPHICMODE_4COLOR=3,         //!< Graphics with 4 Colors
    GRAPHICMODE_16COLOR=4,        //!< Graphics with 16 Colors
    GRAPHICMODE_256COLOR=5        //!< Graphics with 256 Colors
} TMODE;                          //!< Mode of TFT

//the general display structure
typedef struct DISPLAY_INFO
{
    uint8 *pdisplay;            //all functions are related to this pointer
    uint8 *pdisplaycolor;       //all functions are related to this pointer
    TMODE mode;                 // 0 is text, 1.. is graphic
    uint8 color;
    sint32 maxx;                //xsize of the display
    sint32 maxy;                //ysize of the display
    sint32 x;                   //needed to remember where we are for text display scroll, remember x=0,y=0 is upper left
    sint32 y;                   //needed to remember where we are for text display scroll, remember x=0,y=0 is upper left
} TDISPLAY_INFO;

#define CONIO_MAXDISPLAYS 6

typedef struct CONIO_DISPLAYMODE_ENTRY
{
	TDISPLAYMODE   displayMode;
	TDISPLAY_INFO  display;
} TCONIODMENTRY, *pTCONIODMENTRY;

#endif /* _CONIO_CFG_H */
