---
title: Multi channel voltmeter.md
author: Gildong Hong (gildong@hong.com)  
date: 2018-01-30

[기술할 내용들 - 기술하고 나면 해당 항목 지우기]
* ADC의 일반적인 구조
* VADC의 특징
* iLLD로 VADC활용하기

EXAMPLE: 
	MyIlldModule_TC23A - VadcBackgroundScan
	InfineonRacer_TC23A - TestVadcBgScan
---

# Multi channel voltmeter

## 시작하는 질문

* ADC 라는 것은 알겠는데, AURIX에는 VADC라고 되어 있네? **Versatile** 이라고? 이것은 또 뭐냐?




아날로그 신호를 디지탈 값으로 바꿔주는 장치를 ADC(Analog-to-Digital Converter)라고 부르고 대부분의 마이크로컨트롤러들은 이 모듈을 가지고 있습니다.  ADC를 이야기 할 때 채널의 갯수, 변환속도, 그리고 분해능 등이 중요한 스펙(Specification) 입니다.  아날로그 변환값을 CPU에서 사용하기 위해서는 다음의 몇가지 사항에 대해서 프로그래밍을 해줘야 합니다.

* **언제 샘플링** 할 것인지?
* 변환한 값은 어느 곳에 **어떻게 보관**할 것인지?

ADC 하드웨어에서 이 두가지 사항에 대해서 어떻게 지원해 주는지에 따라서 소프트웨어는 확연하게 다른 방식으로 구성되어 집니다.  하드웨어에서 이 사항을 충실하게 지원해 주면 ADC 모듈의 **설정**에 관심을 가지고 세심하게 프로그래밍 해야 하고, 그렇지 않다면 설정은 간단하지만 샘플링 마다 관련된 동작을 **반복적으로 실행**해야만 합니다.

AURIX의 VADC는 위의 두가지 사항을 충실하게 지원해 주고 있습니다.  그래서 그냥 ADC라고 부르지 않고 **다재다능한(Versatile)** ADC라고 부르는 것입니다.  VADC를 사용하면, 설정할 때는 심사숙고해야 하지만, 사용할 때는 일반 변수를 읽어들이는 것처럼 쉽게 처리할 수 있습니다.  



------

## Objectives

* VADC의 기본 구조를 이해하고,
* VADC의 내부 블럭별 설정 방법을 이해하고,
* Background Scan 모드로 동작시키는 방법을 익힌다.

## References

* TC23x TC22x Family User's Manual v1.1 - Chap27 VADC
* iLLD_TC23A Help / Modules/ VADC/

**[Example Code]**

* MyIlldModule_TC23A - VadcBackgoundScan
* InfineonRacer_TC23A - TestVadcBgScan

-----

## Example Description

* AN0 와 AN1 의 아날로그 전압을 디지탈로 변환하여 읽어들인다.
  * 두채널의 아날로그 전압값을 전압계로 읽어들이는 것과 마찬가지로 동작한다.



> 이 챕터에서는 
>
> * converter는 두개, 채널은 여러개
> * Group이라는 것,
> * 결과값 관리하는 것 
>
> 등에 관련된 이야기만 설명하는 것이 좋을 듯
>
> 변환 Source, Queue, Scan, Backgound, 와 Arbitration 에 관련된 이야기는 다음 챕터에서 중점적으로
>
> 이번 챕터는 변환해서 값을 관리하는 것에 집중.



## Background 정보

> * 한개의 ADC로 여러 채널을 읽어들이는 구조에 대한 이야기
>
> * 필요하다 판단되시면 내용 추가하세요.
>
>   Analog MUX, Sample & Hold, 등등



## AURIX - related

* ​

![MultiChannelVoltmeter_StructureOverview](images/MultiChannelVoltmeter_StructureOverview.png)



![MultiChannelVoltmeter_KernelDiagram](images/MultiChannelVoltmeter_KernelDiagram.png)

## iLLD - related

> * VADC의 모듈이 복잡해서 처음으로 여러 자료구조를 사용하고
> * 모듈별로 categorized 되어 있는 메쏘드를 사용하게 된다.
> * 이 부분이 집중(?) 해서 설명해 보자
> * 그리고 그룹 번호랑 채널 번호와의 관계랑
>



### Module Configuration

* VADC 모듈은 작은 모듈들의 집합: Architecture 그림에서 살펴본 것과 같이 여러 작은 모듈들의 집합
  * ADC 변환과 직접적으로 관련 있는 부분
  * 채널의 모음, Group 관리 부분
  * 개별적인 채널의 속성을 설정하는 부분
* 개별적인 구조체와 계측적인 명명법을 사용한 메쏘드로 구분하여 구현되어 있다.
* 이 구조를 고려하여 구분하며 살펴볼 필요가 있다.  그렇게 하지 않으면, VADC 내부에서 길을 잃을 수도 있습니다.



* [참고] Demo 로 주어진 코드에서는 채널 설정 부분이 설정영역이 아니라 실행영역에 프로그래밍 되어 있다.  

  * 실행하면서 채널의 설정을 바꿔야 하는 경우에는 Demo 코드 처럼 실행영역에서 채널 설정을 실행해야 하지만,
  * 대부분의 제어시스템에서는 초기화 단계에서 모듈과 함께 실행하는 것이 옳다고 판단되어 다음과 같이 수정하였다.

  ​

> 추가적으로 좀 더 상세한 설명 부탁해요~~~~



```c
void VadcBackgroundScanDemo_init(void)
{
    /* ADC Configuration ***************************************************************/
    IfxVadc_Adc_Config adcConfig;
    IfxVadc_Adc_initModuleConfig(&adcConfig, &MODULE_VADC);
    IfxVadc_Adc_initModule(&g_VadcBackgroundScan.vadc, &adcConfig);

    /* group config *******************************************************************/
    IfxVadc_Adc_GroupConfig adcGroupConfig;
    IfxVadc_Adc_initGroupConfig(&adcGroupConfig, &g_VadcBackgroundScan.vadc);

    /* with group 0 */
    adcGroupConfig.groupId = IfxVadc_GroupId_0;
    adcGroupConfig.master  = adcGroupConfig.groupId;

    /* enable background scan source */
    adcGroupConfig.arbiter.requestSlotBackgroundScanEnabled = TRUE;

    /* enable background auto scan */
    adcGroupConfig.backgroundScanRequest.autoBackgroundScanEnabled = TRUE;

    /* enable all gates in "always" mode (no edge detection) */
    adcGroupConfig.backgroundScanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

    /* initialize the group */
    IfxVadc_Adc_initGroup(&g_VadcBackgroundScan.adcGroup, &adcGroupConfig);


    /* channel config *****************************************************************/
    uint32                    chnIx;

	/* create channel config */
	IfxVadc_Adc_ChannelConfig adcChannelConfig[2];

	for (chnIx = 0; chnIx < 2; ++chnIx)
	{
		IfxVadc_Adc_initChannelConfig(&adcChannelConfig[chnIx], &g_VadcBackgroundScan.adcGroup);

		adcChannelConfig[chnIx].channelId         = (IfxVadc_ChannelId)(0 + chnIx);
		adcChannelConfig[chnIx].resultRegister    = (IfxVadc_ChannelResult)(0 + chnIx); // use register #0 and 1 for results
		adcChannelConfig[chnIx].backgroundChannel = TRUE;

		/* initialize the channel */
		IfxVadc_Adc_initChannel(&adcChannel[chnIx], &adcChannelConfig[chnIx]);

		/* add to background scan *******************************************************/
		unsigned channels = (1 << adcChannelConfig[chnIx].channelId);
		unsigned mask     = channels;
		IfxVadc_Adc_setBackgroundScan(&g_VadcBackgroundScan.vadc, &g_VadcBackgroundScan.adcGroup, channels, mask);
	}

	/* start scan ***********************************************************************/
	IfxVadc_Adc_startBackgroundScan(&g_VadcBackgroundScan.vadc);
}

```



### Interrupt Configuration

* 모듈 설정을 통해서 ADC 동작을 모두 자동으로 실행하도록 하였습니다.
  * 그러므로 ADC 변환과 관련해서 인터럽트를 발생해서 실행해야 하는 동작은 없습니다.
  * 사용자의 필요에 의해서 추가적으로 인터럽트를 발생시킬 수는 있습니다.




### Module Behavior

```c
void VadcBackgroundScanDemo_run(void)
{
	uint32                    chnIx;

	/* check results */
	for (chnIx = 0; chnIx < 2; ++chnIx)
	{
		volatile unsigned     group   = adcChannel[chnIx].group->groupId;
		volatile unsigned     channel = adcChannel[chnIx].channel;

		/* wait for valid result */
		volatile Ifx_VADC_RES conversionResult;

		do
		{
			conversionResult = IfxVadc_Adc_getResult(&adcChannel[chnIx]);
		} while (!conversionResult.B.VF);

		uint32 actual = conversionResult.B.RESULT;
	}
}
```



## 추가적인 설명



> InfineonRacer 에서 구현되어 있는 것 확인하고 추가적인 설명 부탁해요.
>
> IR_AdcResult[AdCh15], 16, 20, 21,  IR_getChnXX();



------

## 마치며...

관련 설정을 하면서 무척 놀랐을 것입니다.  '고작 두채널의 정보를 읽어들이는데 이렇게 많은 사항을 고려하고 길게 프로그래밍해야 하나?' 하고 말입니다.  시작하며 이야기 했던 것 처럼, VADC는 뛰어난 기능을 가진 ADC 입니다.  그 기능을 활용하기 위해서 앞서 강조한 바와 같이 섬세하게 설정해 준 것입니다.  일단 이렇게 섬세하게 설정해 주면 VADC는 우리를 배신(?)하지 않습니다.  빠른 속도로 값을 변환하여 언제든지 읽을 수 있게 만들어 줍니다.

이제 여러 채널의 아날로그 전압을 읽어들일 수 있게 되었습니다.  약간 과장하면 Multi Channel Voltmeter를 가지게 되었다고 말할 수 있습니다.  이 전압값을 적절하게 스케일 하면 이 전압을 만들어 냈었던 센서의 측정값으로 변경할 수도 있습니다. 