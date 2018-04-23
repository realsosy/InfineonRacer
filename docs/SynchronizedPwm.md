---
title: Synchronized PWM.md
author: Gildong Hong (gildong@hong.com)  
date: 2018-01-30
[기술할 내용들 - 기술하고 나면 해당 항목 지우기]
* Synchronized PWM의 필요성
* BT....(인피니어 DC Driver) 의 특징
* GtmTomPwm 설명
* iLLD 활용하기
* 예제 - DC 모터 양방향 구동
EXAMPLE: 
	MyIlldModule_TC23A - GtmTomPwmHl
	InfineonRacer_TC23A - TestGtm
---

# Synchronized PWM

## 시작하는 질문

* Synchronized Swimming 은 들어 보았는데 Synchronized PWM은 뭐지?  무엇이 동기화(Synchnoized) 되었다는 말이지? 어짜피 PWM 신호라는 것이 밖으로 보이는 것도 아닌데 동기화 시켜서 예쁘게 보여야 할 이유가 있을까?

PWM이라는 것에 대해서 개략적인 내용은 이해했습니다.  Pulse Width (도통시간:  on-time)에 필요한 정보를 넣는 방법이지요.  Synchronized 라는 것은 무엇일까요? 왜 필요할까요?  DC 모터의 양방향 구동을 위해서는 H-bridge 라 불리는 전력소자 4개가 붙어있는 회로가 필요합니다.  이 4개의 전력소자를 적절히 켜고 끄고 함으로써, 즉 PWM 신호를 인가 함으로써, 전압를 자유자재로 조정할 수 있고 양방향 구동도 가능해 집니다.  단 이 PWM 신호들이 서로 독립적이지 않고 의존적으로 사용되어져야 합니다.   PWM 신호들 한 주기 내에서 조화롭게 만들어 져야만 H-bridge 가 성능을 낼 수 있습니다.  AURIX는 이를 위해서 Synchnized  PWM 출력기능을 가지고 있습니다.  이 예에서는 DC 모터를 위한 H-bridge의 경우에 대해서 설명하고 있습니다만, 이 내용이 확장되어 3상 모터, 즉 BLDCM(Blush-Less DC Motor)와 PMSM(Permanent Magnet Synchronous Motor),를 위한 인버터 구동신호에 활용될 수 있습니다. 



------



## Objectives

* ​

## References

* TC23x TC22x Family User's Manual v1.1 - Chap
* iLLD_TC23A Help / Modules/ 

**[Example Code]**

* MyIlldModule_TC23A -
* InfineonRacer_TC23A - 


------



## Example Description

* ​

## Background 정보

> * Bipolar PWM 에 대해서 설명하고 넣어 주시는 것이 좋겠네요.
> * DC 모터의 구동을 꼭 이렇게 할 필요는 당연히 없는데 연습삼아 Synchronized PWM 기능을 사용하는 것으로



## AURIX - related

* ​



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



![SPwm_GtmTomPwmHl_Scope_100us](images/SPwm_GtmTomPwmHl_Scope_100us.png)





## 추가적인 설명

> * GtmTomPwmHl 은 원래는 4개의 스위치에 대한 개별적인 Pwm 을 조정하는 것
> * InfineonRacer 에서는 Top 소자와 Bottom 소자가 한 PWM 신호에 묶여서 상보적으로 동작하므로
>   * 좌측과 우측 신호 두개만 필요
>   * dead-time은 0으로 바꿔 주고.



------



## 마치며...





