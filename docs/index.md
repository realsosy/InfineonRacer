---
title: index.md
author: Wootaik Lee (wootaik@gmail.com)  
date: 2018-01-30
---

## Purpose & Scope
지능형 모형차 대회에 사용할 수 있는 Software Platform 을 제공하는 것을 목적으로 합니다.

특히 다음의 사항을 고려하였습니다.

*   Infineon AURIX 활용 방법 소개
*   학부생 수준에서 이해하고 활용할 수 있는 코드
*   특별한 하드웨어와 소프트웨어 도구를 사용하지 않음

Software Platform를 분석하면 자연스럽게 Infineon AURIX를 이해할 수 있도록 하고,
마이크로컨트롤러 전공자로서 성장해 나갈 수 있는 첫 걸음이 될 수 있도록 구성하였습니다.

## Links
* [Github](https://github.com/realsosy/InfineonRacer): 문서와 프로그램 소스
* [ReadTheDocs](http://infineonracer.readthedocs.io/ko/latest/) : 메뉴얼 스타일로 열람

**[NOTE]**

* /src 에 있는 프로젝트들은 다운로드 받으셔서 사용하셔도 됩니다.  사소한 오류는 있을 것으로 예상됩니다만 참고용으로 사용할 수 있을 수준의 코드입니다.
* /docs 와 /references 에 있는 파일들은 인터넷을 사용하여 접근하시기 바랍니다. 수시로 지속적인 변경이 발생할 수 있으므로 다운로드 받지 마시고 browser나 git 을 통해서 접근하시기를 바랍니다.
* 각 문서들은 상태에 따라서 (작성중), (수정중) 이라는 표시를 하여 참고하시는 분들의 불편을 최소화 하도록 하겠습니다.
* (작성중) 표시가 없는 챕터들은 [ReadTheDocs](http://infineonracer.readthedocs.io/ko/latest/)에서 좀 더 편하게 보실 수 있습니다.



### Definitions, Terminology and Abbreviations

| Abbreviations | Descriptions                                                 |
| ------------- | ------------------------------------------------------------ |
| iLLD          | Infineon Low-Level Driver                                    |
| BIFACES       | Build and Integration Framework for Automotive Controller Embedded Software |

## What we need
* **Application Kit TC2X7 V1.0**; Evaluation board
* **DC Motor Control Kit**; Infineon Released
* [**HighTec Free TriCore™ Entry Tool Chain V4.9.1.0-infineon-1.1 (later)**](https://free-entry-toolchain.hightec-edv.com/index.php): Compiler & Debugger
* [**BIFACES_V1_0_0_Win32.zip**](https://drive.google.com/open?id=1tYg7DDeB-HNf8ZCV7toeD5UtMwiLin4A); Build and Integration Framework for Automotive Controller Embedded Software
* [**BaseProjects_AURIX1G_V1_0_1_2_0.zip**](https://drive.google.com/open?id=1Lz3eHBS7BILysJJKFyYaDNGYYkTbJ7jg); BIFACES Base Template Project
* [**iLLD_1_0_1_4_0_TC2xx_Release.zip**](https://drive.google.com/open?id=1c_0dBZk6qQFeWFwpmISwJcjg9llLFcN8); iLLD source and doc
* [**iLLD_Demos_1_0_1_4_0_TC2xx.zip**](https://drive.google.com/file/d/143MTFcHteeId-dcKe6ITDmq456WDAMXF/view?usp=sharing); iLLD examples




## ToC

### InfineonRacer Guide

* InfineonRacer의 코드만 참고하실 것이라면 이 파트만 살펴보면 됩니다.
* 활용에 필요한 필수적인 정보들만 모아 놓았습니다.

1.  [Getting Started](./GettingStarted.md)  HW Setup & Quick-Start
2.  [InfineonRacer User Guide](./InfineonRacerUserGuide.md)  SW Architecture & API


* [Connection Guide for Infineon Racer](./ConnectionGuide.md)
* [Pins & API](./PinsApi.xlsx)

### Dive into AURIX world using InfineonRacer

* AURIX, 마이크로컨트롤러를 심도있게 공부해 보고 싶으시다면 이 부분을 단계별로 학습하시기 바랍니다.
* **How to stduy AURIX** 부터 **Twinkle twinkle little start** 까지는 순서대로 보셔야 합니다.  그 이후는 독립적으로 구성되어 있어서 순서에 관계없이 관심있는 챕터를 보시면 됩니다.

1.  [How to study AURIX?](./HowToStudyAurix.md) MCU 학습 방법 제안
2.  [How to use BIFACES? (작성중)](./HowToUseBIFACES.md)  eclipse, make, doxygen, graphviz
3.  [What is iLLD?](./WhatIsIlld.md) PORT
4.  [Do ma a favor?](./DoMeAFavor.md) Config, Init, ISR in iLLD
5.  [Twinkle twinkle little star](./TwinkleTwinkleLittleStar.md)  STM
6.  [Multiple infinite loops](./MultipleInfiniteLoops.md) Static Cyclic Scheduler
7.  [Hello world](./HelloWorld.md)  ASC & Terminal
8.  [My own terminal](./MyOwnTerminal.md) Shell
9.  [Multi channel voltmeter](./MultiChannelVoltmeter.md)  Vadc Background Scan
10.  [My own cheap oscilloscope](./MyOwnCheapOscilloscope.md)  Vadc Auto Scan + Serial Plot
11.  [Line Scan Camera](./LineScanCamera.md) TSL1401
12.  [Chronos ruler(수정중)](./ChronosRuler.md) GtmTomTimer + Beeper, Servo
13.  [Synchronized PWM(수정중)](./SynchronizedPwm.md) GtmTomPwmHl + H-Bridge
14.  [Where are you?(수정중)](./WhereAreYou.md) Gpt12 + Encoder
15.  [TFT as modern Man-Machine Interface(중)](./TftAsModernMmi.md)
16.  [Simulink as a programming language](./SimulinkAsAProgrammingLanguage.md)
17.  [OSEK-Certified ErikaOS & RT-Druid(작성중)](./OsekCertificedErikaOsRtDruid.md)


### etc

* [References](./References.md)
* [Source code list](./src/README.md)




## 어느 개발자 아저씨의 이야기

  요즈음은 재미있고 생생한 스토리텔링이 각광을 받고 있습니다.  상대방을 설득하거나 정보를 나눌 때도 효과적인 방법으로 사용되고 있지요.  많은 사람들은 스토리텔링이 말 잘하는 문과 출신들이나, 전문적인 훈련을 받은 사람들만의 전유물로 생각합니다.

  소프트웨어 엔지니어, 프로그래머의 길을 선택한 사람에게도 스토리텔링은 꼭 필요한 것입니다.  **소프트웨어 개발이란 스토리텔링, 그 중에도 My Story telling**입니다.  내가 만드는 소프트웨어, 프로그램에는 이미 My Story, 즉 나만의 이야기가 녹아 있는 것이기 때문입니다.

 소프트웨어 엔지니어의 My Story는 사회에서 이미 가치가 증명되고 있습니다. 소프트웨어는 여러 공학 분야 중에서 가장 역사가 짧지만, 가장 빠른 속도로 성장하고 있습니다.  최근 인공지능등과 함께 모든 것, 모든 곳 안에 스며들고 있지요.  소프트웨어 엔지니어는 미국 직업별 연봉 순위 중 항상 높은 순위에 올라 있으며, 미래에는 더욱 전망이 좋을 직업 중 하나입니다.  바로 우리가 만들어 내는 My Story야 말로 각종 정보와 데이터가 넘치는 시대에 구글링을 아무리 해도 절대 찾을 수 없는 가치를 만들어 내기 때문입니다.

 경진대회에 참가한 모든 분들이 이러한 스토리텔러가 되기를,

 My Story를 가꾸어 나가고 협력해서 Our Story로 만들어 나가게 되기를,

 그 과정에서 이곳의 자료와 코드들이 거름이 되기를 바랍니다.
