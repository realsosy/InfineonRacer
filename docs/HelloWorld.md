---
title: Hello world.md
author: Gildong Hong (gildong@hong.com)  
date: 2018-01-30
[기술할 내용들 - 기술하고 나면 해당 항목 지우기]
* 터미날 프로그램의 필요성
* Asc 모듈 설명
* Asc iLLD 설명
* 예제 설명
EXAMPLE: 
	MyIlldModule_TC23A - AsclinAsc
	InfineonRacer_TC23A - 
---

# Hello world

## 시작하는 질문

* 내가 C 프로그램을 처음 배울 때 짰던 프로그램이 "Hello World !" 였었는데, AURIX에서는 이런 프로그램을 짤 필요가 없나?
* 어 가만히 있어봐라. 프로그램을 디버깅 할 때 필요한 값을 `printf()` 해서 command 창으로 출력해서 봤었는데.... printf 를 사용할 수 없으면 어떻게 되는 거지? 변수값을 어떻게 확인하면서 디버깅하지?



"Hello World!" 너무나도 유명한 프로그램이지요?  C 프로그램을 배우는 대부분의 사람들이 이 프로그램을 다 짜보았을 것으로 생각됩니다.  AURIX 에는 모니터도 키보드도 달려 있지 않아서 C 프로그램에서 콘솔이라 부르는 입출력이 없습니다.  대신 직렬 통신 기능을 가지고 있습니다.  이 직렬 통신으로 우리가 사용하는 컴퓨터와 통신을 할 수 있고 우리는 컴퓨터에서 "Tera Term", "Putty" 와 같은 터미날 프로그램을 실행하여서 콘솔을 대신할 수 있습니다.

통신 자체의 목적으로 보면 Ethernet, USB 등과 같이 훨씬 더 고속의 안정된 프로토콜이 많이 있습니다.  그러나 모든 마이크로컨트롤러들이 내장하고 있는 가장 기본적인 직렬통신 방식이고, 이 예제를 통해서 배우는 것과 같이 터미널 프로그램을 쉽게 붙일 수 있어서 아직까지도 많이 사용되는 통신 방식 입니다. 개인적으로는 [Twinkle twinkle little star](./TwinkleTwinkleLittleStar.md)와 함께 마이크로컨트롤러를 프로그래밍 하면서 기본적으로 구성하는 프로그램 입니다

직렬통신을 통해서 접근할 수 없는 상황에서는 디버거를 사용해서 변수값을 확인하고 변경해 볼 수 있습니다.  물론 printf() 를 사용하는 것과는 용도가 다르지만, 출력을 하는 이유가 디버깅을 위한 변수확인이라면 디버거를 통해서 훨씬 효율적으로 실행할 수 있습니다.  참고로, 우리가 사용하는 _MyBaseFramework_TC23A를 포함한 모든 프로젝트에는 개발의 편의를 위하여 printf() 를 했을 경우 디버거의 Simulated IO 창으로 그 결과를 출력하도록 구성해 놓았습니다.

## Objectives

*

## References
*

**[Example Code]**
* MyIlldModule_TC23A - AsclinAsc

## Example Description 
*

## AURIX -related
* ​

![HelloWorld_AscLinArchitecture](images/HelloWorld_AscLinArchitecture.png)

## iLLD - related

### Module Configuration 

```c
void AsclinAscDemo_init(void)
{
	//...
    /* create module config */
    IfxAsclin_Asc_Config ascConfig;
    IfxAsclin_Asc_initModuleConfig(&ascConfig, &MODULE_ASCLIN0);

    /* set the desired baudrate */
    ascConfig.baudrate.prescaler    = 1;
    ascConfig.baudrate.baudrate     = 115200; /* FDR values will be calculated in initModule */
    ascConfig.baudrate.oversampling = IfxAsclin_OversamplingFactor_4;

    /* ISR priorities and interrupt target */
    ascConfig.interrupt.txPriority    = ISR_PRIORITY_ASC_0_TX;
    ascConfig.interrupt.rxPriority    = ISR_PRIORITY_ASC_0_RX;
    ascConfig.interrupt.erPriority    = ISR_PRIORITY_ASC_0_EX;
    ascConfig.interrupt.typeOfService = (IfxSrc_Tos)IfxCpu_getCoreIndex();

    /* FIFO configuration */
    ascConfig.txBuffer     = g_AsclinAsc.ascBuffer.tx;
    ascConfig.txBufferSize = ASC_TX_BUFFER_SIZE;

    ascConfig.rxBuffer     = g_AsclinAsc.ascBuffer.rx;
    ascConfig.rxBufferSize = ASC_RX_BUFFER_SIZE;

    /* pin configuration */
    const IfxAsclin_Asc_Pins pins = {
        NULL_PTR,                     IfxPort_InputMode_pullUp,        /* CTS pin not used */
        &IfxAsclin0_RXA_P14_1_IN, IfxPort_InputMode_pullUp,        /* Rx pin */
        NULL_PTR,                     IfxPort_OutputMode_pushPull,     /* RTS pin not used */
        &IfxAsclin0_TX_P14_0_OUT, IfxPort_OutputMode_pushPull,     /* Tx pin */
        IfxPort_PadDriver_cmosAutomotiveSpeed1
    };
    ascConfig.pins = &pins;

    /* initialize module */
    IfxAsclin_Asc_initModule(&g_AsclinAsc.drivers.asc0, &ascConfig);
	// ...
}
```



### Interrupt Configuration 

```c
// in ConfigurationIsr.h
#define ISR_PRIORITY_ASC_0_RX 4         
#define ISR_PRIORITY_ASC_0_TX 5         
#define ISR_PRIORITY_ASC_0_EX 6        

#define ISR_PROVIDER_ASC_0    IfxSrc_Tos_cpu0         

#define INTERRUPT_ASC_0_RX    ISR_ASSIGN(ISR_PRIORITY_ASC_0_RX, ISR_PROVIDER_ASC_0)
#define INTERRUPT_ASC_0_TX    ISR_ASSIGN(ISR_PRIORITY_ASC_0_TX, ISR_PROVIDER_ASC_0)
#define INTERRUPT_ASC_0_EX    ISR_ASSIGN(ISR_PRIORITY_ASC_0_EX, ISR_PROVIDER_ASC_0)

// in AsclinAscDemo.c
IFX_INTERRUPT(asclin0TxISR, 0, ISR_PRIORITY_ASC_0_TX)
{
    IfxAsclin_Asc_isrTransmit(&g_AsclinAsc.drivers.asc0);
}

IFX_INTERRUPT(asclin0RxISR, 0, ISR_PRIORITY_ASC_0_RX)
{
    IfxAsclin_Asc_isrReceive(&g_AsclinAsc.drivers.asc0);
}

IFX_INTERRUPT(asclin0ErISR, 0, ISR_PRIORITY_ASC_0_EX)
{
    IfxAsclin_Asc_isrError(&g_AsclinAsc.drivers.asc0);
}
```



### Module 동작

```c
void AsclinAscDemo_run(void)
{
    uint32 i, errors = 0;
    g_AsclinAsc.count = 5;

    for (i = 0; i < g_AsclinAsc.count; ++i)
    {
        g_AsclinAsc.txData[i] = i + '1';    /* {'1', '2', '3' ,'4' ,'5'} */
        g_AsclinAsc.rxData[i] = 0;
    }

    IfxAsclin_Asc_write(&g_AsclinAsc.drivers.asc0, g_AsclinAsc.txData, &g_AsclinAsc.count, TIME_INFINITE);
    IfxAsclin_Asc_read(&g_AsclinAsc.drivers.asc0, g_AsclinAsc.rxData, &g_AsclinAsc.count, TIME_INFINITE);

    /* check received data */
    for (i = 0; i < 5; ++i)
    {
        if (g_AsclinAsc.rxData[i] != g_AsclinAsc.txData[i])
        {
            ++errors;
        }
    }

	//...
}
```



## 추가적인 설명

