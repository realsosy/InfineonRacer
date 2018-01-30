/**
 * \file AsclinShellInterface.h
 * \brief ASCLIN Shell interface demo
 *
 * \version iLLD_Demos_1_0_0_11_0
 */

#ifndef ASCLINSHELLINTERFACE_H
#define ASCLINSHELLINTERFACE_H 1

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "Configuration.h"
#include "SysSe/Bsp/Bsp.h"

#include "SysSe/Comm/Ifx_Console.h"
#include "SysSe/Comm/Ifx_Shell.h"
#include "Asclin/Asc/IfxAsclin_Asc.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define SW_REVISION_DATE    (0x20180130)            // Software date 0xyyyymmdd, with yyyy the year and mm the month and dd the day
#define SW_REVISION         (0x00000100)            // Software version and revision 0x0000vvrr, with vv the version number and rr the revision number
#if defined(__TASKING__)
  #define SW_COMPILER_VERSION ((COMPILER_VERSION / 1000) << 16) | ((COMPILER_VERSION % 10) << 8) | (COMPILER_REVISION)
#else //defined(__GNUC__)
  #define SW_COMPILER_VERSION (__GNUC__<<16) | (__GNUC_MINOR__<<8) | (__GNUC_PATCHLEVEL__)
#endif


/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

typedef struct
{
    uint8 tx[CFG_ASC_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
    uint8 rx[CFG_ASC_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];
} AppAscBuffer;

/** \brief Application information */
typedef struct
{
    struct
    {
        sint32 srcRev;                  /**< \brief Project source code revision number */
        sint32 srcRevDate;              /**< \brief Project source code revision Date */
        sint32 compilerVer;             /**< \brief Compiler version */
    }            info;
    AppAscBuffer ascBuffer;             /**< \brief ASC interface buffer */
    struct
    {
        IfxAsclin_Asc asc;              /**< \brief ASC interface */
    }         drivers;
    Ifx_Shell shell;                    /**< \brief Shell object */
    struct
    {
        IfxStdIf_DPipe asc;
    }stdIf;
} App_AsclinShellInterface;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

IFX_EXTERN App_AsclinShellInterface g_AsclinShellInterface;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

IFX_EXTERN void AsclinShellInterface_init(void);
IFX_EXTERN void AsclinShellInterface_run(void);
IFX_EXTERN void AsclinShellInterface_runLineScan(void);

#endif
