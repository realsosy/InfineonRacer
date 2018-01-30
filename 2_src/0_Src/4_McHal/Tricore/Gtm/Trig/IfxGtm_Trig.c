/**
 * \file IfxGtm_Trig.c
 * \brief GTM TRIG details
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
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxGtm_Trig.h"
#include "_Utilities/Ifx_Assert.h"
#include "Cpu/Std/IfxCpu_Intrinsics.h"

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \addtogroup IfxLld_Gtm_Trig_Data_Structures
 * \{ */
typedef struct
{
    sint8 config;     /**< \brief Value for SEL0/1. config=0xFF means "not available" */
} IfxGtm_Trig_Channel;

/** \} */

/** \addtogroup IfxLld_Gtm_Trig_Data_Structures
 * \{ */
typedef struct
{
    IfxGtm_Trig_Channel channel[IfxGtm_Trig_AdcTrigChannel_count];
} IfxGtm_Trig_Source;

/** \} */

/** \addtogroup IfxLld_Gtm_Trig_Data_Structures
 * \{ */
typedef struct
{
    IfxGtm_Trig_Source source[IfxGtm_Trig_AdcTrigSource_count];
} IfxGtm_Trig_Trigger;

/** \} */

/** \addtogroup IfxLld_Gtm_Trig_Data_Structures
 * \{ */
typedef struct
{
    IfxGtm_Trig_Trigger trigger[IfxGtm_Trig_AdcTrig_count];
} IfxGtm_Trig_AdcTrig_Table;

/** \} */

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

static const IfxGtm_Trig_AdcTrig_Table IfxGtm_Trig_AdcTrig_tableAdc0_1 = {
    .trigger = {
        {.source = {                                                                                                                                                                //IfxGtm_AdcTrig_0
                               //{.channel = {    {Channel_1     }, {Channel_2     }, {Channel_3     }, {Channel_4     }, {Channel_5     }, {Channel_6     }, {Channel_7     },
                               //                   {Channel_8     }, {Channel_9     }, {Channel_10    }, {Channel_11    }, {Channel_12    }, {Channel_13    }, {Channel_14    }, {Channel_15    }}},

                               {.channel = {     {.config = 0x01}, {.config = 0x02}, {.config = 0x03}, {.config = 0x04}, {.config = 0x05}, {.config = 0x06}, {.config = 0x07},
                                                 {.config = 0x08}, {.config = 0x09}, {.config = 0x0A}, {.config = 0x0B}, {.config = 0x0C}, {.config = 0x0D}, {.config = 0x0E}, {.config = 0x0F}}}, //IfxGtm_AdcTrigSource_tom0

                               {.channel = {     {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF},
                                                 {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}}}, //IfxGtm_AdcTrigSource_tom1
                           }},

        {.source = {                                                                                                                                                                               //IfxGtm_AdcTrig_1
                               //{.channel = {    {Channel_1     }, {Channel_2     }, {Channel_3     }, {Channel_4     }, {Channel_5     }, {Channel_6     }, {Channel_7     },
                               //                   {Channel_8     }, {Channel_9     }, {Channel_10    }, {Channel_11    }, {Channel_12    }, {Channel_13    }, {Channel_14    }, {Channel_15    }}},

                               {.channel = {     {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF},
                                                 {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}}}, //IfxGtm_AdcTrigSource_tom0

                               {.channel = {     {.config = 0x01}, {.config = 0x02}, {.config = 0x03}, {.config = 0x04}, {.config = 0x05}, {.config = 0x06}, {.config = 0x07},
                                                 {.config = 0x08}, {.config = 0x09}, {.config = 0x0A}, {.config = 0x0B}, {.config = 0x0C}, {.config = 0x0D}, {.config = 0x0E}, {.config = 0x0F}}}, //IfxGtm_AdcTrigSource_tom1
                           }},
    }
};

static const IfxGtm_Trig_AdcTrig_Table IfxGtm_Trig_AdcTrig_tableAdc2_3 = {
    .trigger = {
        {.source = {                                                                                                                                                                //IfxGtm_AdcTrig_0
                               //{.channel = {    {Channel_1     }, {Channel_2     }, {Channel_3     }, {Channel_4     }, {Channel_5     }, {Channel_6     }, {Channel_7     },
                               //                 {Channel_8     }, {Channel_9     }, {Channel_10    }, {Channel_11    }, {Channel_12    }, {Channel_13    }, {Channel_14    }, {Channel_15    }}},

                               {.channel = {     {.config = 0x01}, {.config = 0x02}, {.config = 0x03}, {.config = 0x04}, {.config = 0x05}, {.config = 0x06}, {.config = 0x07},
                                                 {.config = 0x08}, {.config = 0x09}, {.config = 0x0A}, {.config = 0x0B}, {.config = 0x0C}, {.config = 0x0D}, {.config = 0x0E}, {.config = 0x0F}}}, //IfxGtm_AdcTrigSource_tom0

                               {.channel = {     {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF},
                                                 {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}}}, //IfxGtm_AdcTrigSource_tom1
                           }},

        {.source = {                                                                                                                                                                               //IfxGtm_AdcTrig_1
                               //{.channel = {    {Channel_1     }, {Channel_2     }, {Channel_3     }, {Channel_4     }, {Channel_5     }, {Channel_6     }, {Channel_7     },
                               //                 {Channel_8     }, {Channel_9     }, {Channel_10    }, {Channel_11    }, {Channel_12    }, {Channel_13    }, {Channel_14    }, {Channel_15    }}},

                               {.channel = {     {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF},
                                                 {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}}}, //IfxGtm_AdcTrigSource_tom0

                               {.channel = {     {.config = 0x01}, {.config = 0x02}, {.config = 0x03}, {.config = 0x04}, {.config = 0x05}, {.config = 0x06}, {.config = 0x07},
                                                 {.config = 0x08}, {.config = 0x09}, {.config = 0x0A}, {.config = 0x0B}, {.config = 0x0C}, {.config = 0x0D}, {.config = 0x0E}, {.config = 0x0F}}}, //IfxGtm_AdcTrigSource_tom1
                           }},
    }
};

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

boolean IfxGtm_Trig_toVadc(Ifx_GTM *gtm, IfxGtm_Trig_AdcGroup adcGroup, IfxGtm_Trig_AdcTrig adcTrig, IfxGtm_Trig_AdcTrigSource source, IfxGtm_Trig_AdcTrigChannel channel)
{
    CONST_CFG IfxGtm_Trig_AdcTrig_Table *table = NULL_PTR;
    uint8                                config;

    boolean                              result = 0;

    switch (adcGroup)
    {
    case IfxGtm_Trig_AdcGroup_0:
    case IfxGtm_Trig_AdcGroup_1:
        table = &IfxGtm_Trig_AdcTrig_tableAdc0_1;
        break;
    case IfxGtm_Trig_AdcGroup_2:
    case IfxGtm_Trig_AdcGroup_3:
        table = &IfxGtm_Trig_AdcTrig_tableAdc2_3;
        break;
    default:
        break;
    }

    if (table != NULL_PTR)
    {
        config = table->trigger[adcTrig].source[source].channel[channel].config;
        result = config != 0xFF;
        uint32 shift = adcGroup * 4;
        uint32 mask  = 0xFU << shift;
        uint32 value = config << shift;

        switch (adcTrig)
        {
        case IfxGtm_Trig_AdcTrig_0:
            __ldmst_c(&(gtm->ADCTRIG0OUT0.U), mask, value);
            break;
        case IfxGtm_Trig_AdcTrig_1:
            __ldmst_c(&(gtm->ADCTRIG1OUT0.U), mask, value);
            break;
        default:
            result = FALSE;
            break;
        }
    }

    IFX_ASSERT(IFX_VERBOSE_LEVEL_ERROR, result);

    return result;
}
