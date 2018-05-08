---
title: Chronos ruler.md
author: Chulhoon Jang (chulhoonjang@gmail.com) / Sujin Han (sujinhan0905@gmail.com) 
date: 2018-05-08

[기술할 내용들 - 기술하고 나면 해당 항목 지우기]
* iLLD 활용하기
* 예제 Beeper, Servo
EXAMPLE: 
	MyIlldModule_TC23A - GtmTomTimer, GtmTomServo
	InfineonRacer_TC23A - TestGtm
	
이 절에서는 총 3개의 예제가 구성될 수 있습니다.
TomTimer: 1msec 주기 인터럽트를 발생시켜 보는, 것은 Stm이랑 중복되는 성격은 있지만 연습을 위해서 한번 해보는 것도 좋을 듯, InfineonRacer 에서는 활용하지 않습니다. 
TomServo: 서보 활용을 위한 예제로 기본 
TestGtm: Beeper 예제를 추가한 것으로 

TomServo 를 이 절의 중심 예제로 사용
Beeper 예제는 Exercise로 만들어 주면 어떨까 싶고 (답은 TestGtm 프로젝트에 들어 있네요.)
TomTimer 는 참고를 위한 정보로 활용 (이 절을 정리하시는 분이 결정하세요)
---

# Chronos ruler

## 시작하는 질문

* Servo의 데이타시트를 찾아보니, on-time 값, 600 (즉, 1500 - 900) ~ 2400(1500 + 900) usec 범위로 디지탈 신호를 입력하여, Servo의 각도를 조정한다고 한다.  주기적으로 동작시켜야 하는데, 어떤 서브시스템으로 이 신호를 발생시키는 것이 좋을까?
* pulse 신호를 발생시키면서, 주기(주파수)와 도통시간(on-time)을 바꿀 수 있느면 Application Kit 보드 위에 있는 Beeper 도 사용할 수 있겠다.  원격으로 동작 시킬 때 소리로 나에게 상태를 알려주는 방법중에 하나로 활용할 수 있겠네!



("Chronos ruler(시간의 지배자)"라는 이번 절의 제목은 같은 이름의 애니메이션 시리즈에서 따왔습니다.  비슷한 성격의 시리즈물 중에 닥터후라는 영국드라마도 있지만, 닥터후는 시간 뿐만 아니라 공간도 이동을 해서 시간의 지배자를 선택했습니다.)

제어공학, 신호처리를 배우면 아날로그 신호를 AD 변환기로 샘플링해서 디지탈로 바꾸고, 이정보를 활용해서 연산을 수행하고 DA 변환을 거쳐서 아날로그 신호로 만들어 출력한다고 배웁니다.  그런데 AURIX 메뉴얼을 열심히 찾아보아도 DA 변환기는 없습니다.  음성신호등을 처리하는 몇몇 경우를 제외하고는 DA 변환기로 아날로그 신호를 복원하는 시스템은 없습니다. 대신 디지탈의 On, Off 상태를 사용하여 아날로그적인 정보를 처리하는 방법을 일반적으로 사용합니다.



## Objectives

* Generic Timer Module (GTM) 이해
* GTM 사용법 습득




## References

* TC23x TC22x Family User's Manual v1.1 - Chap 24 Generic Timer Module (GTM)
* iLLD_TC23A Help / Modules/ GTM

**[Example Code]**

* MyIlldModule_TC23A - GtmTomTimer, GtmTomServo
* InfineonRacer_TC23A - TestGtm


------



## Example Description

* ​




## Background 정보

> * 타이머의 사용법 중에 Output Compare 활용 방법에 대한 일반론 설명은 어떨까?
> * 참고로 input capture 에 대한 일반론 설명은 WhereAreYou 에서 하고



## AURIX - related

* Generic Timer Module은 시간 관리 플랫폼으로 다양한 application에서 필요로 하는 기준 시간을 생성하는 역할을 합니다. 또한, Timer Input Module (TIM), Timer Output Module (TOM), Dead Time Module (DTM) 등 시간을 다루는 서브모듈의 기준 시간을 생성하기도 합니다.
* Clock Management Module (CMU): 13개의 서로 다른 내부 clocks과 3개의 서로 다른 외부 clocks을 생성할 수 있습니다.
* Time Base Unit (TBU): 3개의 독립적인 공용 기준 시간을 생성할 수 있습니다.
* GTM의 output 신호는 DTM 또는 TOM으로 발생될 수 있으며, 일반적으로 TOM channel은 Pulse Width Manipulation (PWM)을 출력할 수 있습니다.

    ![ChronosRuler_GTM_ArchitectureBlockDiagram](images\ChronosRuler_GTM_ArchitectureBlockDiagram.png)

**CMU**

* CMU는 counter와 GTM의 clock을 생성하는 것을 담당합니다.

* CMU는 세가지의 subunits 들로 구성되며 서로 다른 clock을 생성할 수 있습니다.

* **Configurable Clock Generation (CFGU)**

  * 8개의 clocks 을 출력할 수 있습니다.
  * TIM과 TBU에 사용됩니다.
  * 임의의 clock source를 선택할 수 있기 때문에 넓은 범위 내 기준 시간을 설정할 수 있습니다.

* **Fixed Clock Generation (FXU)**

  * 5개의 clocks 을 출력할 수 있습니다.
  * 사전에 정의된 설정으로 clock을 생성합니다.
  * TOM에 사용됩니다.

* **External Clock Generation (EGU)**

  * 3개의 external clocks을 출력할 수 있습니다.

    ![ChronosRuler_CMU_BlockDiagramm](images\ChronosRuler_CMU_BlockDiagramm.png)

**TBU**

* TBU는 GTM을 위한 공용 기준 시간(base timer) 을 생성합니다.
* 3개의 base timer가 있습니다.
* TBU channel 0 time base register (TBU_CH0_BASE)는 27 bits이며 경우에 따라 상위 24 bit 또는 하위 24 bit을 선택적으로 사용가능합니다.
* TBU channel 1, 2 time base register (TBU_CH#_BASE)는 24 bits 입니다.
* 각 base timer는 독립적으로 구동되나, global TBU channel enable을 통해 3개의 base timer를 동기화 할 수도 있습니다.

    ![ChronosRuler_TBU_BlockDiagramm](images\ChronosRuler_TBU_BlockDiagram.png)

**TIM**

* TIM은 GTM의 입력 신호를 filtering 하거나 capturing하는 역할을 합니다.
* 기본적으로 TIM은 입력 신호의 rising edge나 falling edge의 time stamp를 찍는 역할을 합니다. 동시에 signal level, edge 갯수, PWM 신호의 주기 등도 함께 측정 가능합니다.
* 8개의 입력 채널이 있으며, 앞단에 TIM Filter Functionality (FLT)를 통해 rising edge, falling edge, 또는 모든 edge를 counting  할 건지 선택하게 됩니다.
* Filtering 된 신호는 TIM_CH#에 들어가며 Timeout Detection Unit을 통해 time stamp를 찍게 됩니다.

​    ![ChronosRuler_TIM_BlockDiagram](images\ChronosRuler_TIM_BlockDiagram.png)

**TOM**

* PWM을 생성하는 합니다.
* 16개의 독립된 출력을 내보냅니다.
* TGC0와 TGC1는 전체 출력을 제어합니다. PWM을 활성화시킬 지 말지, PWM 주기, DUTY cycle 등을 설정할 수 있습니다.

​    ![ChronosRuler_TOM_BlockDiagramm](images\ChronosRuler_TOM_BlockDiagram.png)

## iLLD - related

* ​



### Module Configuration

```c

```



### Interrupt Configuration

```c

```



### Module Behavior

```c

```


![ChronosRuler_GtmTomServo_Scope10m2m](images/ChronosRuler_GtmTomServo_Scope10m2m.png)



## 추가적인 설명



------



## 마치며...

이처럼 시간과 관련된 신호를 발생해여 정보를 입출력하는 방법은 마이크로컨트롤러에서 가장 일반적으로 사용하는 입출력 방법입니다.   특히 전력전자 분야에서는 PWM 이라 불리는 방법을 적극적으로 활용하고 있습니다 (PWM의 구체적인 활용 및 내용은 [Synchronized PWM](/SynchronizedPwm.md) 절에서 다루겠습니다.)  출력 신호 뿐만 아니라 특정 이벤트의 발생 여부 등을 감지하기 위해서도 시간과 관련되 디지탈 신호를 일반적으로 사용하고 있습니다.  그 전형적인 활용예가 [Where are you?](WhereAreYou.md) 절의 엔코더 신호의 인터페이스와 활용입니다.

**시간과 관련된 디지탈 신호** 를 잘 다룰 수 있게 되면, **마이크로컨트롤러의 지배자** 가 될 수 있습니다. 








