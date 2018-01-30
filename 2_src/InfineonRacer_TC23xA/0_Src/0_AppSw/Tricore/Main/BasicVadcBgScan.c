/**
 * \file VadcBackgroundScanDemo.c
 * \brief Demo VadcBackgroundScanDemo
 *
 * \version iLLD_Demos_1_0_0_11_0
 * \copyright Copyright (c) 2014 Infineon Technologies AG. All rights reserved.
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
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <stdio.h>
#include <Cpu/Std/IfxCpu.h>
#include "BasicVadcBgScan.h"
#include "Configuration.h"
/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define  ADC_CHN_MAX  4

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct
{
    IfxVadc_Adc vadc;   /* VADC handle*/
    IfxVadc_Adc_Group adcGroup;
    IfxVadc_Adc_Channel adcChannel[ADC_CHN_MAX];
} Basic_VadcBackgroundScan;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
Basic_VadcBackgroundScan g_VadcBackgroundScan; /**< \brief Demo information */

static uint32 adcChannelNum[ADC_CHN_MAX] = {
		3, 4, 8, 9  /* AN15, AN16, AN20, AN21 */
};

float32 IR_AdcResult[ADC_CHN_MAX];


/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

/** \brief Demo init API
 *
 * This function is called from main during initialization phase
 */
void BasicVadcBgScan_init(void)
{
    /* VADC Configuration */

    /* create configuration */
    IfxVadc_Adc_Config adcConfig;
    IfxVadc_Adc_initModuleConfig(&adcConfig, &MODULE_VADC);

    /* initialize module */
    IfxVadc_Adc_initModule(&g_VadcBackgroundScan.vadc, &adcConfig);

    /* create group config */
    IfxVadc_Adc_GroupConfig adcGroupConfig;
    IfxVadc_Adc_initGroupConfig(&adcGroupConfig, &g_VadcBackgroundScan.vadc);

    /* with group 1 */
    adcGroupConfig.groupId = IfxVadc_GroupId_1;
    adcGroupConfig.master  = adcGroupConfig.groupId;

    /* enable background scan source */
    adcGroupConfig.arbiter.requestSlotBackgroundScanEnabled = TRUE;

    /* enable background auto scan */
    adcGroupConfig.backgroundScanRequest.autoBackgroundScanEnabled = TRUE;

    /* enable all gates in "always" mode (no edge detection) */
    adcGroupConfig.backgroundScanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

    /* initialize the group */
    /*IfxVadc_Adc_Group adcGroup;*/    //declared globally
    IfxVadc_Adc_initGroup(&g_VadcBackgroundScan.adcGroup, &adcGroupConfig);

    /* create channel config */
    uint32                    chnIx;

    IfxVadc_Adc_ChannelConfig adcChannelConfig;

    for (chnIx = 0; chnIx < ADC_CHN_MAX; ++chnIx)
    {
        IfxVadc_Adc_initChannelConfig(&adcChannelConfig, &g_VadcBackgroundScan.adcGroup);

        adcChannelConfig.channelId         = (IfxVadc_ChannelId)(adcChannelNum[chnIx]);
        adcChannelConfig.resultRegister    = (IfxVadc_ChannelResult)(adcChannelNum[chnIx]); // use register #5 and 6 for results
        adcChannelConfig.backgroundChannel = TRUE;

        /* initialize the channel */
        IfxVadc_Adc_initChannel(&g_VadcBackgroundScan.adcChannel[chnIx], &adcChannelConfig);

        /* add to background scan */
        unsigned channels = (1 << adcChannelConfig.channelId);
        unsigned mask     = channels;
        IfxVadc_Adc_setBackgroundScan(&g_VadcBackgroundScan.vadc, &g_VadcBackgroundScan.adcGroup, channels, mask);
    }

    /* start scan */
    IfxVadc_Adc_startBackgroundScan(&g_VadcBackgroundScan.vadc);
}


/** \brief Demo run API
 *
 * This function is called from main, background loop
 */
void BasicVadcBgScan_run(void)
{
    uint32                    chnIx;
    /* wait for valid result */
    volatile Ifx_VADC_RES conversionResult;

        /* check results */
        for (chnIx = 0; chnIx < ADC_CHN_MAX; ++chnIx)
        {


            do
            {
                conversionResult = IfxVadc_Adc_getResult(&g_VadcBackgroundScan.adcChannel[chnIx]);
            } while (!conversionResult.B.VF);

			IR_AdcResult[chnIx] = (float32) conversionResult.B.RESULT / 4095;

        }
}
