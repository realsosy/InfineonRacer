/**
 * \file IfxFlash.c
 * \brief FLASH  basic functionality
 *
 * \version iLLD_1_0_0_11_0
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 *
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxFlash.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void IfxFlash_clearCorrectableErrorTracking(IfxFlash_PortId portId)
{
    MODULE_FLASH0.CBAB[portId].CFG.B.CLR = 1;
}


void IfxFlash_clearStatus(uint32 flash)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0x5554);

    *addr1 = 0xFA;

    __dsync();
}


void IfxFlash_clearUncorrectableErrorTracking(IfxFlash_PortId portId)
{
    MODULE_FLASH0.UBAB[portId].CFG.B.CLR = 1;
}


void IfxFlash_disableCorrectableErrorTracking(IfxFlash_PortId portId, boolean disable)
{
    MODULE_FLASH0.CBAB[portId].CFG.B.DIS = disable;
}


void IfxFlash_disableUncorrectableErrorTracking(IfxFlash_PortId portId, boolean disable)
{
    MODULE_FLASH0.UBAB[portId].CFG.B.DIS = disable;
}


void IfxFlash_disableWriteProtection(uint32 flash, IfxFlash_UcbType ucb, uint32 *password)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0x553c);
    uint32           i;

    *addr1 = ucb;

    for (i = 0; i < 8; i++)
    {
        *addr1 = password[i];
    }

    __dsync();
}


uint8 IfxFlash_enterPageMode(uint32 pageAddr)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0x5554);

    if ((pageAddr & 0xff000000) == 0xa0000000)    // program flash
    {
        *addr1 = 0x50;
        return 0;
    }
    else if ((pageAddr & 0xff000000) == 0xaf000000)       // data flash
    {
        *addr1 = 0x5D;
        return 0;
    }

    __dsync();
    return 1; // invalid flash address
}


void IfxFlash_eraseMultiplePhysicalSectors(uint32 sectorAddr, uint32 numSector)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = sectorAddr;
    *addr2 = numSector;
    *addr3 = 0x80;
    *addr4 = 0x5a;

    __dsync();
}


void IfxFlash_eraseMultipleSectors(uint32 sectorAddr, uint32 numSector)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = sectorAddr;
    *addr2 = numSector;
    *addr3 = 0x80;
    *addr4 = 0x50;

    __dsync();
}


void IfxFlash_erasePhysicalSector(uint32 sectorAddr)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = sectorAddr;
    *addr2 = 1;
    *addr3 = 0x80;
    *addr4 = 0x5a;

    __dsync();
}


void IfxFlash_eraseSector(uint32 sectorAddr)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = sectorAddr;
    *addr2 = 1;
    *addr3 = 0x80;
    *addr4 = 0x50;

    __dsync();
}


void IfxFlash_eraseVerifyMultipleSectors(uint32 sectorAddr, uint32 numSector)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = sectorAddr;
    *addr2 = numSector;
    *addr3 = 0x80;
    *addr4 = 0x5F;

    __dsync();
}


void IfxFlash_eraseVerifySector(uint32 sectorAddr)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = sectorAddr;
    *addr2 = 1;
    *addr3 = 0x80;
    *addr4 = 0x5F;

    __dsync();
}


uint32 IfxFlash_getTrackedCorrectableErrors(IfxFlash_PortId portId, IfxFlash_ErrorTracking_Address *trackedFlashAdresses)
{
    uint32 numErrors    = 0;
    uint32 fillingLevel = MODULE_FLASH0.CBAB[portId].STAT.U;

    int    i;

    for (i = 0;
         i < IFXFLASH_ERROR_TRACKING_MAX_CORRECTABLE_ERRORS &&
         (fillingLevel & (1 << i)) != 0;
         ++i)
    {
        Ifx_FLASH_CBAB_TOP top;
        top.U = MODULE_FLASH0.CBAB[portId].TOP.U;

        if (top.B.VLD)
        {
            trackedFlashAdresses[numErrors].address   = 0xa0000000 | (top.B.ADDR << 5);
            trackedFlashAdresses[numErrors].errorType = top.B.ERR;
            ++numErrors;
        }

        // clear entry
        MODULE_FLASH0.CBAB[portId].TOP.U = (1 << 31);
    }

    return numErrors;
}


uint32 IfxFlash_getTrackedUncorrectableErrors(IfxFlash_PortId portId, IfxFlash_ErrorTracking_Address *trackedFlashAdresses)
{
    uint32 numErrors    = 0;
    uint32 fillingLevel = MODULE_FLASH0.UBAB[portId].STAT.U;

    int    i;

    for (i = 0;
         i < IFXFLASH_ERROR_TRACKING_MAX_UNCORRECTABLE_ERRORS &&
         (fillingLevel & (1 << i)) != 0;
         ++i)
    {
        Ifx_FLASH_UBAB_TOP top;
        top.U = MODULE_FLASH0.UBAB[portId].TOP.U;

        if (top.B.VLD)
        {
            trackedFlashAdresses[numErrors].address   = 0xa0000000 | (top.B.ADDR << 5);
            trackedFlashAdresses[numErrors].errorType = top.B.ERR;
            ++numErrors;
        }

        // clear entry
        MODULE_FLASH0.UBAB[portId].TOP.U = (1 << 31);
    }

    return numErrors;
}


void IfxFlash_loadPage(uint32 pageAddr, uint32 wordL, uint32 wordU)
{
    uint64 *addr1 = (uint64 *)(IFXFLASH_CMD_BASE_ADDRESS | 0x55f0);

    __st64_lu(addr1, wordL, wordU);

    __dsync();
}


void IfxFlash_loadPage2X32(uint32 pageAddr, uint32 wordL, uint32 wordU)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0x55f0);

    *addr1 = wordL;
    addr1++;
    *addr1 = wordU;

    __dsync();
}


void IfxFlash_resetToRead(uint32 flash)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0x5554);
    *addr1 = 0xf0;

    __dsync();
}


void IfxFlash_resumeProtection(uint32 flash)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0x5554);

    *addr1 = 0xF5;

    __dsync();
}


void IfxFlash_selectCorrectableErrorTracking(IfxFlash_PortId portId, IfxFlash_ErrorTracking errorTracking)
{
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR,
        errorTracking == IfxFlash_ErrorTracking_none ||
        errorTracking == IfxFlash_ErrorTracking_correctedSingleBitError ||
        errorTracking == IfxFlash_ErrorTracking_correctedDoubleBitError ||
        errorTracking == IfxFlash_ErrorTracking_correctedSingleOrDoubleBitError);

    MODULE_FLASH0.CBAB[portId].CFG.B.SEL = errorTracking;
}


void IfxFlash_selectUncorrectableErrorTracking(IfxFlash_PortId portId, IfxFlash_ErrorTracking errorTracking)
{
    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR,
        errorTracking == IfxFlash_ErrorTracking_none ||
        errorTracking == IfxFlash_ErrorTracking_uncorrectableMultiBitError);

    MODULE_FLASH0.UBAB[portId].CFG.B.SEL = errorTracking;
}


void IfxFlash_suspendResumeMultipleSectors(uint32 sectorAddr, uint32 numSector)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = sectorAddr;
    *addr2 = numSector;
    *addr3 = 0x70;
    *addr4 = 0xCC;

    __dsync();
}


void IfxFlash_suspendResumeSector(uint32 sectorAddr)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = sectorAddr;
    *addr2 = 1;
    *addr3 = 0x70;
    *addr4 = 0xCC;

    __dsync();
}


uint8 IfxFlash_waitUnbusy(uint32 flash, IfxFlash_FlashType flashType)
{
    if (flash == 0)
    {
        while (FLASH0_FSR.U & (1 << flashType))
        {}
    }

#if IFXFLASH_NUM_FLASH_MODULES > 1
    else if (flash == 1)
    {
        while (FLASH1_FSR.U & (1 << flashType))
        {}
    }
#endif
    else
    {
        return 1; // invalid flash selected
    }
    __dsync();
    return 0;     // finished
}


void IfxFlash_writeBurst(uint32 pageAddr)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = pageAddr;
    *addr2 = 0x00;
    *addr3 = 0xa0;
    *addr4 = 0x7a;

    __dsync();
}


void IfxFlash_writePage(uint32 pageAddr)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = pageAddr;
    *addr2 = 0x00;
    *addr3 = 0xa0;
    *addr4 = 0xaa;

    __dsync();
}


void IfxFlash_writePageOnce(uint32 pageAddr)
{
    volatile uint32 *addr1 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa50);
    volatile uint32 *addr2 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaa58);
    volatile uint32 *addr3 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);
    volatile uint32 *addr4 = (volatile uint32 *)(IFXFLASH_CMD_BASE_ADDRESS | 0xaaa8);

    *addr1 = pageAddr;
    *addr2 = 0x00;
    *addr3 = 0xa0;
    *addr4 = 0x9a;

    __dsync();
}
