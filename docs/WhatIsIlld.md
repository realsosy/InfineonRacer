---
title: What is iLLD.md
author: Wootaik Lee (wootaik@gmail.com)  
date: 2018-01-30

[기술할 내용들 - 기술하고 나면 해당 항목 지우기]
* iLLD 구조
* iLLD help file 읽기
* iLLD example 실행해 보기
* iLLD 활용 방법
EXAMPLE: _MyiLLDFramework_TC23A, MyPort_TC23A
---

# What is iLLD?

## 시작하는 질문

* AURIX를 사용해 보려고 한다.  **무엇을 보아야 하나? 어떤 코드를 참고해야 하나?**
* iLLD라는 것이 있다는데, Low-Level Driver 라고? **이것은 무슨 의미이지? 어떻게 사용하는 것이지?**

## Objectives

* iLLD의 구조를 이해하고
* iLLD의 도움말을 참고해서 이해하는 방법과
* iLLD의 Demo code와 AURIX User Manual을 참고하는 방법을 익힌다.

## References
* iLLD_TC23A 1.0.1.4.0 도움말: IFX Low Level Drivers
* AURIX TC23x Family User's Manual - Toc & Introduction
* iLLD_TC23A_Demos_1_0_1_4_0 - StmDemo

**[Example Code]**

* _MyiLLDFramework_TC23A 
* MyStm_TC23A
* MyPort_TC23A




## 관련 자료 살펴보기

### AURIX User's Manual 참고하는 방법

* User's Manual - 파일을 찾아 열어보니 3435page 라고? 이것을 읽어볼 수는 있는 것인가?
    * 읽어 보아야 하는 것이다.  절대적(?)인 자료이다.
    * 순서대로 읽는 것이 아니라 구조적으로 읽어야 한다.
* 매뉴얼 구조적 읽기
    * 새로운 것이 아니다.  필요한 정보 필요할 때 읽자는 말이다.
    * 구조를 파악하는데 필요한 내용은 찬찬히
    * 사전적인 내용은 필요할 때 찾아보자


**[EXERCISE]**

* AURIX 전체 구조를 파악하는데 필요한 내용은? 다시 말해서 시작하면서 꼭 읽어보아야 하는 내용은?
    * ToC; 약자에 친해지자
    * 1.Introduction
    * 3.On-Chip System Buses and Bus Bridges
    * 4.Memory Maps; Linker의 memory map 이 해결해 준다.
    * 5.BootROM Contents; Debugger로 다운로드 하면 Flash 영역에 들어가고 부팅하면 실행된다.  지금은 고민 말자.
    * 6.CPU Subsystem; Compiler가 해결해 준다.
    * 나머지 챕터는 각 서브시스템별 설명이다.  필요할 때 찾아보면서 이해해 가면 된다.




### iLLD Help 참고하는 방법

* iLLD는 설치했는데 어떻게 사용하는 것이지? 설명서는 어디 있는 것인가?
    * **iLLD_1_0_1_4_0/Doc/TC23A/html/index.html** 파일을 열면 browser 로 확인할 수 있다.
    * 별도의 문서를 따로 만든 것이 아니라 BIFACES의 DoxyGen 기능을 사용하여 생성한 문서이다.
    ![WhatIsIlld_IlldStart](images/WhatIsIlld_IlldStart.png)

* 도움말의 목차를 보니 어마어마 하다.  이것은 어떻게 읽어야 하는 것이지?
	* 매뉴얼과 마찮가지로 구조적 읽기를 해야 한다.
	* iLLD를 기준으로 iLLD 자체에 대한 설명을 하는 부분을 우선적으로 읽고
	* 모듈, 즉 AURIX의 서브시스템과 그 외에 부가적으로 제공하는 함수들을 필요에 따라 찾아보면 된다.




**[EXERCISE]** iLLD의 기본 구조와 활용법을 이해하기 위해서 **[IFX Low Level Drivers]** 부분을 읽고 다음의 질문에 답해 보세요.

* in General Structure of iLLDs

    * Content of Peripheral Drivers ?
    * Configuration Data Structures ?
    * Handles ?

* in iLLD APIs

    * iLLD Module의 초기화 API?

    ```
    <Driver Prefix>_initConfig(<Driver Prefix>_Config *cfg);

    <Driver Prefix>_init(<Driver Prefix>_Handle *handle, <Driver Prefix>_Config *cfg);
    ```

    * iLLD Module의 기능 API?

    ```
    <Driver Prefix>_<functionality>(<Driver Prefix>_Handle *handle)
    ```

* in Naming Conventions (Open MyStm_TC23A Project)
  ````
  // in StmDemo.h
  typedef struct
  {
      Ifx_STM             *stmSfr;            /**< \brief Pointer to Stm register base */
      IfxStm_CompareConfig stmConfig;         /**< \brief Stm Configuration structure */
      volatile uint8       LedBlink;          /**< \brief LED state variable */
      volatile uint32      counter;           /**< \brief interrupt counter */
  } App_Stm;

  // in StmDemo.c
  	App_Stm g_Stm;
  	// 
      IfxStm_initCompareConfig(&g_Stm.stmConfig);
  	//
  	IfxStm_initCompare(g_Stm.stmSfr, &g_Stm.stmConfig);
  ````

    * To find `IfxStm_CompareConfig`  type definition
    * To find `IfxStm_initCompare()` method definition
    * 위의 정의들은 어느 디렉토리의 어느 파일에 되어 있나요?
    * [Hint] 해당하는 definition 을 선택하고 `F3` 혹은 `Open Declaration` menu 선택

  ​

    * Cpu/Std/Platform_Types.h 파일을 열고 다음의 정보들을 확인해 보세요
        * Bit order:  MSB_FIRST or LSB_FIRST
        * Byte order: HIGH_BYTE_FIRST or LOW_BYTE_FIRST
        * sint8 ?
        * uint8 ?

* in Files and Configuration
    * 다음 폴더에 있는 파일들의 용도를 설명하세요.
    * _Reg:
    * _Impl:
    * _PinMap:
    * _Lib:
    * Port: 


**[EXERCISE]** iLLD에서 제공하는 모듈들의 종류와 용도를  **[Modules]** 에서 설명하고 있습니다.  이것을 참고해서 다음의 질문에 답해 보세요.

* Module 은 크게 다음의 두가지로 분류될 수 있습니다.  각각의 차이는 무엇일까요?
  * iLLD
  * Service software
* iLLD/General functionalities/Data handling/Circular buffer 와 FIFO 가 있습니다.  각각의 용도는 무엇일까요?
  * Circular buffer
  * FIFO
* iLLD/Service software/System Engineering/ Board Support package/Board support package/initTime 과 wait 을 선택하고 그 설명을 확인해 보세요.
  * initTime()
  * wait()
* iLLD/Service software/System Engineering/Math/Look-ups/Look-ups float32/ 을 선택하고 어떤 기능을 하는 모듈인가 설명해 보세요.
* iLLD/Service software/System Engineering/Math/Math 32bit floating point/Low-pass Filter/ 를 선택하고 어떤 기능을 하는 모듈인가 설명해 보세요.




### iLLD Demo code를 참고하는 방법

* iLLD Demo는 설치했는데 어떻게 사용하는 것이지? 어떻게 사용하는 것인가?
    * 아래 그림과 같이 iLLD의 모듈명과 일치하는 Demo 밑에 0_Src 라는 폴더와 Doc 이라는 폴더를 각각 가지고 있다.
      ![WhatIsIlld_StmDemoFolder](images/WhatIsIlld_StmDemoFolder.png)
    * 0_Src/AppSw 를 해당하는 BaseFramework 의 폴더에 복사하면 빌드할 수 있다.
    * /Doc 폴더 밑에는 예제에 대한 간단한 설명이 기술되어 있다.  이 폴더를 복사해서 DoxyGen 을 실행하면 해당 내용을 포함하는 문서를 생성할 수도 있다.
* Demo 프로젝트의 특징
  * AURIX의 다양한 Variant 들을 고려하여 하드웨어적인 의존성을 최소화 하여 구성되어 있다.  Multi-core 칩에서도 실행해 볼 수 있다.
  * 모듈간의 의존성을 최소화 하여 해당 모듈만 독립적으로 실행해 볼 수 있다.
  * iLLD의 설정은 Cfg_Illd 폴더에서,
  * iLLD의 전형적인 활용 예는 Demo_Illd 폴더에서
  * 함수의 실행은 Main 폴더의 main 함수에서
  * 기본 iLLD Module 이 아닌 것은 iLLD Library 폴더에서 복사해 와야 한다.



## MyStm\_TC23A 만들기

### Example Description

* StmDemo 예제를 구성해서 실행해 보자
* Stm을 사용하여 Port 출력으로1초마다 토글, 즉 2초 주기로 LED를 점멸해 보자

### \_MyiLLDFramework\_TC23A 만들기

* ​

### MyStm\_TC23A 만들기





## MyPort_TC23A 만들기

### Example Description

* Port 관련 정보를 분석해 보자
  * User's Guide 에서 해당 정보를 찾아보자
  * iLLD의 API를 분석해 보자.
* InfineonRacer 에서 사용할 수 있는 모듈로 설계하고 구현해 보자.

### Hardware

* Port

### iLLD - related
* ​

### Ports in InfineonRacer

* ​

## 

## 

