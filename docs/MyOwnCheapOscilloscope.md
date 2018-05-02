---
title: My own cheap oscilloscope.md
author: Gildong Hong (gildong@hong.com)  
date: 2018-01-30

[기술할 내용들 - 기술하고 나면 해당 항목 지우기]
* AUTO SCAN의 필요성과 장점
* VADC AUTO SCAN 구조
* iLLD 활용하기
EXAMPLE: 
	MyIlldModule_TC23A - VadcAutoScan
	InfineonRacer_TC23A - 
---

# My own cheap oscilloscope

**Pre-requisite**: [Multi channel voltmeter](./docs/MultiChannelVoltmeter.md)  



## 시작하는 질문

* 여러 채널의 아날로그 전압도 읽어들일 수 있게 되었는데.... 가만히 있어보자... 디지탈 신호처리에서도, 디지탈 제어에서도 **일정한 주기** 을 전제로 모든 설명을 했었는데.... VADC에서 샘플링 주기를 어떻게 결정할 수 있지?



전기전자 공학도가 가장 기본적으로 사용하는 계측기에도 위와 같은 고민이 반영되어 있습니다.  

* 디지탈멀티메터는 현재의 값을 보여주는 것을 목적으로 하고,
* 오실로스코프는 일정한 샘플링 주기를 가지고 트리거 조건을 전후해서 파형을 보여주는 것을 목적으로 하고 있습니다.

앞서 구성하였던 Multi channel voltmeter 예제에서는 주기를 전혀 고려하지 않았습니다.  그러나 디지탈 신호처리를 하려면, 디지탈 제어를 하려면, 샘플링 주기를 고려해야 합니다.  그러므로 ADC 모듈도 샘플링 타임을 고려해서 프로그래밍 할 수 있어야 합니다.

Converter 가 하나의 채널만 변환해야 할 경우에는 이 문제를 좀 쉽게 해결할 수 있습니다.  그러나 여러 채널을 변환해야 하는 경우라면, 그리고 그 채널들의 샘플링 주기가 다르다면 이 문제는 훨씬 복잡해 집니다.  VADC는 이 복잡한 문제를 체계적으로 해결할 수 있는 방안을 가지고 있습니다.   



------



## Objectives

* VADC의 Queue 기능과 Auto Scan 기능을 이해하고,
* 우선순위 결정 방법을 활용할 수 있도록 한다.



## References

* TC23x TC22x Family User's Manual v1.1 - Chap27 VADC
* iLLD_TC23A Help / Modules/ VADC

**[Example Code]**

* MyIlldModule_TC23A - VadcAutoScan
* InfineonRacer_TC23A - X


------



## Example Description

* 4채널의 아날로그 전압값을 0.5초 주기로 읽어들인다.



## Background 정보

### Arbitration (중재)

* 공학용어 중에, 특히 Real-Time System 에서 자주 등장하는 말

* 의미를 전달하며 한글로 번역하기 어려운 단어

* 사전적 의미, 중재: 누가 무엇 때문에 싸움이 일어나서 중재가 필요하다는 말일까?

  * 통신 버스에 연결된 노드들 사이에서
  * ADC 변환을 기다리는 아날로그 채널들 사이에서
  * CPU의 처리를 기다리는 여러 인터럽드들 사이에서
  * OS의 서비스를 기다리는 여러 Task 들 사이에서

* 중재 방안: 중요한 것 먼저하자 (우선순위)

  * 급하다고, 여기 저기서 요청한다고, 공유된 자원(리소스)를 한순간에 두군데 이상에서 동시에 사용할 수는 없다.
  * 순서를 결정해 주어야 하고,
  * 그 순서를 결정하는 메카니즘을 잘 활용해서 효율을 높여주어야 한다.

* 중요하다는 말은 빨리 처리해야 한다는 말?

  * 일반적으로 중요하다는 말과 빨리 처리해야 한다는 말은 다른 말입니다.
  * Rate-Monotonic: 그러나 일반적으로 주기적으로 일어나는 사건들 사이에서는 빨리 처리해야 하는 일이 중요한 일이 됩니다
  * 좀 더 자세한 사항은 Real-Time System, 혹은 Real-Time OS 관련 교재를 참고하시기 바랍니다.

* VADC를 사용하여 여러 채널의 정보를 주기적으로 읽어 들여야 하는 경우에도 

  * 동시에 변환을 요청하는 경우가 발생하고
  * 중재자(Arbiter)는 설계자가 부여한 우선순위에 따라 순차적으로 변환하게 됩니다.

  ​

## AURIX - related

### ADC 동작

* Input channel selection
   * Multiplexer가 여러 개의 아날로그 입력 중 하나를 선택합니다.
   * 세 가지 소스들은 (Request source 1-3) linear sequence, arbitrary sequence, 또는 specific channel 중 선택 가능합니다.
      * 사용자는 소스들의 우선 순위를 결정할 수 있고, 이 우선 순위를 Arbiter가 중재 시 참조하게 됩니다.
 * Conversion control
   * 선택된 아날로그 입력은 conversion control 설정 값에 따라 변환되게 됩니다.
     * Sample phase duration 또는 result resolution 등을 설정합니다.
   * Conversion parameter는 4개의 input classes에 설정됩니다.
     * 2 group-specific classes, 2 global classes
 * Result handling
   * 변환 결과값은 16개의 group-specific result register 중 하나에 저장되고, 1개의 global result register에 저장됩니다.
   * Result register는 channels 그룹에 할당될 수도 있고, 단일 channel에만 할당될 수 도 있습니다.
 * Service request generation
   * 여러 ADC event가 CPU와 DMA에 service request를 알려줍니다.
     * Source events: 해당 request source의 conversion sequence가 완료되었음을 알려줍니다.
     * Channel events: 해당 channel의 conversion이 완료되었음을 알려줍니다.
     * Result events: 해당 result register에 새로운 결과 값이 업데이트 되었음을 알려줍니다.

![MyOwnCheapOscilloscope_ConversionReqUnit](images/MyOwnCheapOscilloscope_ConversionReqUnit.png)

### Modules for ADC

**Conversion request generation**

* Triggers

  * Software triggers
  * External triggers

* Operation modes

  * Single-shot
  * Continuous

* Types of request sources

  * Queued source: 입력 채널을 임의 순서로 변환하는 방식으로, 입력 채널 수 또는 순서는 자유롭게 변경 가능합니다.  채널 설정에 따라 매우 짧은 변환도 가능합니다. 스캔 순서는 queue buffer로 설정합니다.

    * Request source 0와 3가 queued source에 사용될 수 있습니다.

    * 최대 8개의 channel을 할당할 수 있습니다.

      ![QueuedRequestSource](images/MyOwnCheapOscilloscope_QueuedRequestSource.png)


  * Channel scan source: 입력 채널과 동일한 순서로 순차적으로 변환을 수행하는 방식입니다. 

    * Request source 1과 2가 channel scan source에 사용될 수 있습니다.

    * Request source 1은 group scan source로 사용됩니다. Group scan source는 해당 group에 포함된 모든 channel에 대한 scan을 요청할 수 있습니다.

    * Request source 2는 background scan source로 사용됩니다. Background scan source는 모든 group의 모든 channel에 대한 scan을 요청할 수 있습니다.

      ![ScanRequestSource](images/MyOwnCheapOscilloscope_ScanRequestSource.png)




**Request source arbitration**

* Arbiter operation
  * Arbiter는 다수의 request source로부터 동시에 ADC 요청이 왔을 때 중재자 역할을 합니다.
  * Polling 방식으로 중재를 하며 중재 구간을 arbitration round라고 합니다.
  * Arbitration round는 다수 개의 arbitration slot으로 구성되어 있습니다.
  * 하나의 Arbitration slot에는 request source가 할당됩니다.
  * 또한, arbitration round에 몇 개의 arbitration slot이 포함될 지도 설정이 가능합니다. 최소 4개부터 20개까지 slot을 포함시킬 수 있습니다.
  * 사용자는 Arbitration slot은 duration을 설정할 수 있습니다.
  * 사용자는 각각의 request source의 우선순위를 정할 수 있습니다.
  * 아래 그림은 4개의 arbitration slot을 갖는 arbitration round를 나타냅니다.
    * *Synchronized source (manual, p2768) 은 무슨 말인지 이해가 안됩니다.

    ![MyOwnCheapOscilloscope_ArbitrationRoundWith4ArbitrationSlots](images/MyOwnCheapOscilloscope_ArbitrationRoundWith4ArbitrationSlots.png)


  * Conversion start mode
      * Arbitration winner는 현재 converter의 상태에 따라 어떻게 처리될 지 결정됩니다.
    * 만약, converter가 유휴 상태인 경우는 arbitration winner의 변환을 즉시 처리합니다.

    * 만약, converter에 변환 중인 request source의 우선 순위가 arbitration winner의 우선 순위와 같을 경우 변환이 끝날 때까지 대기하고, 변환이 완료되면 arbitration winner의 변환을 처리합니다.

    * 만약, converter에 변환 중인 request source의 우선 순위가 arbitration winner의 우선 순위보다 낮을 경우, 사용자 설정에 따라 다르게 처리됩니다.

      * Wait-for-start mode: 현 낮은 우선순위 ADC 완료 직후 높은 우선순위 ADC 수행
      * Cancel-inject-repeat mode: 현 낮은 우선순위 ADC를 중단하고, 높은 우선순위 ADC를 먼저 수행

![MyOwnCheapOscilloscope_ConversionStartModes](images/MyOwnCheapOscilloscope_ConversionStartModes.png)

=======

  * Channel scan source: 입력 채널과 동일한 순서로 순차적으로 변환을 수행하는 방식입니다. 

    * Request source 1과 2가 channel scan source에 사용될 수 있습니다.

    * Request source 1은 group scan source로 사용됩니다. Group scan source는 해당 group에 포함된 모든 channel에 대한 scan을 요청할 수 있습니다.

    * Request source 2는 background scan source로 사용됩니다. Background scan source는 모든 group의 모든 channel에 대한 scan을 요청할 수 있습니다.

      ![ScanRequestSource](images/MyOwnCheapOscilloscope_ScanRequestSource.png)




**Request source arbitration**

* Arbiter operation
  * Arbiter는 다수의 request source로부터 동시에 ADC 요청이 왔을 때 중재자 역할을 합니다.
  * Polling 방식으로 중재를 하며 중재 구간을 arbitration round라고 합니다.
  * Arbitration round는 다수 개의 arbitration slot으로 구성되어 있습니다.
  * 하나의 Arbitration slot에는 request source가 할당됩니다.
  * 또한, arbitration round에 몇 개의 arbitration slot이 포함될 지도 설정이 가능합니다. 최소 4개부터 20개까지 slot을 포함시킬 수 있습니다.
  * 사용자는 Arbitration slot은 duration을 설정할 수 있습니다.
  * 사용자는 각각의 request source의 우선순위를 정할 수 있습니다.
  * 아래 그림은 4개의 arbitration slot을 갖는 arbitration round를 나타냅니다.
    * *Synchronized source (manual, p2768) 은 무슨 말인지 이해가 안됩니다.

    ![MyOwnCheapOscilloscope_ArbitrationRoundWith4ArbitrationSlots](images/MyOwnCheapOscilloscope_ArbitrationRoundWith4ArbitrationSlots.png)


  * Conversion start mode
      * Arbitration winner는 현재 converter의 상태에 따라 어떻게 처리될 지 결정됩니다.
    * 만약, converter가 유휴 상태인 경우는 arbitration winner의 변환을 즉시 처리합니다.

    * 만약, converter에 변환 중인 request source의 우선 순위가 arbitration winner의 우선 순위와 같을 경우 변환이 끝날 때까지 대기하고, 변환이 완료되면 arbitration winner의 변환을 처리합니다.

    * 만약, converter에 변환 중인 request source의 우선 순위가 arbitration winner의 우선 순위보다 낮을 경우, 사용자 설정에 따라 다르게 처리됩니다.


      * Wait-for-start mode: 현 낮은 우선순위 ADC 완료 직후 높은 우선순위 ADC 수행
      * Cancel-inject-repeat mode: 현 낮은 우선순위 ADC를 중단하고, 높은 우선순위 ADC를 먼저 수행

**Analog input channel configuration**

* Analog 입력 채널을 사용하기 위해서 각 채널 별로 channel control register를 설정을 해 줄 수 있습니다. 

  * Channel parameters: sample time과 result data width 설정 (8/10/12 bits)

  * Reference selection: alternate reference voltage 설정 가능

  * Result target: 변환 결과가 group result register 또는 global result register 중 한 곳에 저장되도록 설정

  * Result position: 결과 값이 left-aligned 또는 right-aligned 되도록 설정


**Conversion Timing and Result Handling**

* ADC 변환에 소요되는 시간은 다양한 사용자 설정에 따라 달라집니다.
  * ADC conversion clock frequency
  * Sample time
  * Operating mode (normal conversion / fast compare mode)
  * Result width (8/10/12 bits)
  * Post calibration time
* 일반적으로 변환 시간은 sample time, conversion steps, synchronization 시간을 모두 합한 시간을 말합니다.
* 변환 된 결과는 16개의 group result register 중 한 곳에서 저장되거나 global result register에 저장됩니다.
* 저장되는 위치는 어플리케이션의 사용 용도에 따라 사용자가 지정할 수 있으며, 보통 CPU load 나 DMA 전송의 성능을 최적화 할 수 있도록  설정합니다.

![MyOwnCheapOscilloscope_ConversionResultStorage](images/MyOwnCheapOscilloscope_ConversionResultStorage.png)

![MyOwnCheapOscilloscope_ConversionStartModes](images/MyOwnCheapOscilloscope_ConversionStartModes.png)



**Analog input channel configuration**


* Analog 입력 채널을 사용하기 위해서 각 채널 별로 channel control register를 설정을 해 줄 수 있습니다. 

  * Channel parameters: sample time과 result data width 설정 (8/10/12 bits)

  * Reference selection: alternate reference voltage 설정 가능

  * Result target: 변환 결과가 group result register 또는 global result register 중 한 곳에 저장되도록 설정

  * Result position: 결과 값이 left-aligned 또는 right-aligned 되도록 설정


**Conversion Timing and Result Handling**

* ADC 변환에 소요되는 시간은 다양한 사용자 설정에 따라 달라집니다.
  * ADC conversion clock frequency
  * Sample time
  * Operating mode (normal conversion / fast compare mode)
  * Result width (8/10/12 bits)
  * Post calibration time
* 일반적으로 변환 시간은 sample time, conversion steps, synchronization 시간을 모두 합한 시간을 말합니다.
* 변환 된 결과는 16개의 group result register 중 한 곳에서 저장되거나 global result register에 저장됩니다.
* 저장되는 위치는 어플리케이션의 사용 용도에 따라 사용자가 지정할 수 있으며, 보통 CPU load 나 DMA 전송의 성능을 최적화 할 수 있도록  설정합니다.

![MyOwnCheapOscilloscope_ConversionResultStorage](images/MyOwnCheapOscilloscope_ConversionResultStorage.png)




## iLLD - related

**Queue request source handling**

*  Queue request source는 활성화된 채널의 고정된 conversion 순서가 있는 scan request source와 달리 임의의 채널의 short conversion sequence 를 지원합니다. (최대 8개)
*  프로그래밍 된 sequence는 queue buffer에 저장됩니다. (FIFO 메커니즘 기반)
*  요청된 채널 번호가 Queue input을 통해 입력되고, Queue stage 0은 다음 변환될 채널을 정의합니다.
*  Arbiter가 priority 가 높은 request로 인해 queued request source에 의해 발생된 conversion을 중단하면, 해당 conversion parameter가 자동으로 백업 단계에 저장됩니다. 이렇게 하면 중단된 conversion이 손실되지 않고 다음 arbitration round(stage 0 이전)에 참여하게 됩니다.
*  Trigger와 gating unit은 선택된 외부 트리거 및 gating signal로부터 이벤트를 생성합니다.
*  Trigger event는 queued sequence를 시작하고 소프트웨어나 선택된 하드웨어를 통해 생성될 수 있습니다.





### Module Configuration

* 상위단에서 하위단까지 단계별 설정이 필요
  1. ADC configuration
  2. Group configuration
  3. Channel configuration
* 설정은 개별적인 구조체와 계측적인 명명법을 사용한 method로 구분하여 구현되어 있다.

```c
void VadcAutoScanDemo_init(void)
{
    /* VADC Configuration */

	// ADC module configuration 생성
    IfxVadc_Adc_Config adcConfig;
    IfxVadc_Adc_initModuleConfig(&adcConfig, &MODULE_VADC);

    // ADC module configuration 초기화
    IfxVadc_Adc_initModule(&g_VadcAutoScan.vadc, &adcConfig);

    // Group configuration 구조체화
    IfxVadc_Adc_GroupConfig adcGroupConfig;
    IfxVadc_Adc_initGroupConfig(&adcGroupConfig, &g_VadcAutoScan.vadc);

    // Group 0에 관련된 세부 설정 세팅
    adcGroupConfig.groupId = IfxVadc_GroupId_0;
    adcGroupConfig.master  = adcGroupConfig.groupId;

    /* enable scan source */
    adcGroupConfig.arbiter.requestSlotScanEnabled = TRUE;

    // Auto scan enable 설정
    adcGroupConfig.scanRequest.autoscanEnabled = TRUE;

    /* enable all gates in "always" mode (no edge detection) */
    adcGroupConfig.scanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;

    // 변경된 설정을 적용하기 위해 다시 초기화
    /*IfxVadc_Adc_Group adcGroup;*/    //declared globally
    IfxVadc_Adc_initGroup(&g_VadcAutoScan.adcGroup, &adcGroupConfig);

    uint32                    chnIx;
    // Channel configuration 생성
    IfxVadc_Adc_ChannelConfig adcChannelConfig[4];

    for (chnIx = 0; chnIx < 4; ++chnIx)
    {
      	// Channel configuration 초기화
        IfxVadc_Adc_initChannelConfig(&adcChannelConfig[chnIx], &g_VadcAutoScan.adcGroup);

      	// Channel configuration 설정
        adcChannelConfig[chnIx].channelId      = (IfxVadc_ChannelId)(chnIx);
        adcChannelConfig[chnIx].resultRegister = (IfxVadc_ChannelResult)(chnIx);  /* use dedicated result register */

        // 변경된 설정을 적용하기 위해 다시 초기화
        IfxVadc_Adc_initChannel(&adcChannel[chnIx], &adcChannelConfig[chnIx]);

        /* add to scan */
        unsigned channels = (1 << adcChannelConfig[chnIx].channelId);
        unsigned mask     = channels;
        IfxVadc_Adc_setScan(&g_VadcAutoScan.adcGroup, channels, mask);
    }

    /* start autoscan */
    IfxVadc_Adc_startScan(&g_VadcAutoScan.adcGroup);

}

```



### Interrupt Configuration

* 모듈 설정을 통해서 ADC 동작을 모두 자동으로 실행하도록 하였습니다.
  * 그러므로 ADC 변환과 관련해서 인터럽트를 발생해서 실행해야 하는 동작은 없습니다.
  * 사용자의 필요에 의해서 추가적으로 인터럽트를 발생시킬 수는 있습니다.



### Module Behavior

```c
void VadcAutoScanDemo_run(void)
{
    printf("VadcAutoScanDemo_run() called\n");

    uint32                    chnIx;

	/* check results */
	for (chnIx = 0; chnIx < 4; ++chnIx)
	{
		volatile unsigned     group   = adcChannel[chnIx].group->groupId;
		volatile unsigned     channel = adcChannel[chnIx].channel;

		/* wait for valid result */
		Ifx_VADC_RES conversionResult;

		do
		{
			conversionResult = IfxVadc_Adc_getResult(&adcChannel[chnIx]);
		} while (!conversionResult.B.VF);	// conversionResult.B.VF; 유효데이터임을 알려주는 valid flag

		volatile uint32 actual = conversionResult.B.RESULT;
		/* print result, check with expected value */
		{
			/* FIXME result verification pending ?? */
			printf("Group %d Channel %d : %u\n", group, channel, actual);
		}
	}
}
```



```c
int core0_main(void)
{
	// ... 중간 생략
    /* Demo init */
    VadcAutoScanDemo_init();

    initTime(); // Initialize time constants
    /* background endless loop */
    while (TRUE)
    {
    	VadcAutoScanDemo_run();
        wait(TimeConst_100ms*5);
    }
}
```

* 주기적 샘플링 방법1 (사용하는 주기 = 샘플링하는 주기,  일반적으로 고속의 신호처리)
  * ADC 변환 자체를 주기적으로 실행하고
  * 변환이 마친후 인터럽트등을 실행하여 그 값을 처리하는 프로그램을 실행
* 주기적 샘플링 방법2 (사용하는 주기 >> 샘플링하는 주기, 일반적으로 제어시스템)
  * 이 예제에서는 ADC 는 자동으로 변환을 반복하도록 (AutoScan) 설정하여 두고
  * 사용자는 훨씬 늦은 주기로 이 값을 읽어 간다.




## 추가적인 설명

### In InfineonRacer; ADC 값 확인

* InfineonRacer에서 아날로그 전압 읽는 채널은 9, 10 으로 설정되어있다. (Configuriation.h)
* Schematics 에서 Analog channel 9, 10은 아래 pin에 mapping 되어 있다.

![ADCLinescanPort](images/ADCInputPortSet.png)

![ADCLinescanPort](images/ADCLinescanPort.jpg)

* Shell 에서 mls 를 이용하여 Analog channel 9, 10의 값을 주기적으로 읽어 올 수 있다.
* 아래 예시는 1000ms 마다 9, 10의 ADC 변환 값을 읽어온 것이다.

![ADCmls](images/ADCmls.jpg)

* SerialPort를 통해서도 주기적으로 읽어올 수 있으며, 시간에 따른 ADC 변환 값을 그래프로 확인할 수 있다.
* 아래 예시는 SerialPort에서 500ms 마다 9, 10의 ADC 변환 값을 읽어온 것이다.

![ADCmlsSerialport](images/ADCmlsSerialport.jpg)

------



## 마치며...

ADC의 성능을 이야기 하면서 숫자에 집착하여 채널이 많고, 변환속도가 빠르고, 분해능이 좋은 것만 중요하게 생각한다.  그러나 하드웨어의 성능을 최대한 내기 위해서는 하드웨어를 잘 이해하고 용도에 맞게 설정하여 사용하는 소프트웨어적인 요소도 못지 않게 중요하다.  

여러 채널의 데이터를 처리하기 위해서는 일반적으로 제어 알고리즘의 수행 주기보다는 훨씬 빈번한 AD 변환을 수행해야 한다.  소프트웨어적으로 좋은 ADC는 CPU의 간섭,  즉 매 AD 변환마다 CPU가 관여해야 하는 부분을, 을 최소화 하고 ADC 가 알아서 스마트(?)하게 동작하여야 한다.  VADC를 이렇게 스마트하게 사용하는 방법을 이해해 가게 되면서 더욱더 발전된 마이크로 컨트롤러 프로그래머로 성장해 갈 수 있을 것이다.

이곳 에서 다루지 않은 내용으로는 하드웨어 타이머를 사용하여 특정 타이밍에  수~수십 usec 주기마다 AD 변환을 수행하는 기법이 있다.  모터 구동에서 전류 샘플링과 같이 PWM신호와 동기화 되어 매 주기마다 연산을 수행해야 하는 경우에 사용된다.  아울러 고속으로 특정 채널의 값을 연속적으로  ADC가 변환해 놓고 일정 주기 마다 이 변환값들을 일괄적으로 처리하는 기법 등이 있다.  이런 모든 경우에 VADC는 효과적으로 사용할 수 있는 쓸만한(?), 그러나 조금은 까탈스러운, ADC 이다.

###### 