# README

## Purpose & Scope
지능형 모형차 대회에 사용할 수 있는 Software Platform 을 제공하는 것을 목적으로 한다.

특히 다음의 사항을 고려하였다.

*   Infineon AURIX 활용 방법 소개
*   학부생 수준에서 이해하고 활용할 수 있는 코드
*   특별한 하드웨어와 소프트웨어 도구를 사용하지 않음

Software Platform를 분석하면 자연스럽게 Infineon AURIX를 이해할 수 있도록 하고, 
마이크로컨트롤러 전공자로서 성장해 나갈 수 있는 첫 걸음이 될 수 있도록 구성하였다.



**[NOTE]**

* /src 에 있는 프로젝트들은 다운로드 받으셔서 사용하셔도 됩니다.  사소한 오류는 있을 것으로 예상됩니다만 참고용으로 사용할 수 있을 수준의 코드입니다.
* /docs 와 /references 에 있는 파일들은 인터넷을 사용하여 접근하시기 바랍니다. 2018년 6월을 마감시간으로 이곳에 있는 문서들을 작업하는 중입니다.  수시로 지속적인 변경이 발생할 수 있으므로 다운로드 받지 마시고 browser나 git 을 통해서 접근하시기를 바랍니다.
* 각 문서들은 상태에 따라서 (작업중), (수정중) 이라는 표시를 하여 참고하시는 분들의 불편을 최소화 하도록 하겠습니다.



### Definitions, Terminology and Abbreviations

| Abbreviations | Descriptions                                                 |
| ------------- | ------------------------------------------------------------ |
| iLLD          | Infineon Low-Level Driver                                    |
| BIFACES       | Build and Integration Framework for Automotive Controller Embedded Software |

## What we need
* **Application Kit TC2X7 V1.0**; Evaluation board
* **DC Motor Control Kit**; Infineon Released
* **HighTec Free TriCore™ Entry Tool Chain V4.6.6.0-infineon-1.1 (later)**: Compiler & Debugger
* **BIFACES_V1_0_0_Win32.zip**; Build and Integration Framework for Automotive Controller Embedded Software
* **BaseProjects_AURIX1G_V1_0_1_2_0.zip**; BIFACES Base Template Project
* **iLLD_1_0_1_4_0_TC2xx_Release.zip**; iLLD source and doc
* **iLLD_Demos_1_0_1_4_0_TC2xx.zip**; iLLD examples




## ToC

### InfineonRacer Guide

1.  [Getting Started](./docs/GettingStarted.md)  HW Setup & Quick-Start
2.  [InfineonRacer User Guide](./docs/InfineonRacerUserGuide.md)  SW Architecture & API


* [Connection Guide for Infineon Racer](./docs/ConnectionGuide.md)
* [Pins & API](./docs/PinsApi.xlsx)

### Dive into AURIX world using InfineonRacer

1.  [How to study AURIX?](./docs/HowToStudyAurix.md)
2.  [How to use BIFACES? (작성중)](./docs/HowToUseBIFACES.md)  eclipse, make, doxygen, graphviz
3.  [What is iLLD?(작성중)](./docs/WhatIsIlld.md) PORT
4.  [Twinkle twinkle little star(작성중)](./docs/TwinkleTwinkleLittleStar.md)  STM 
5.  [Multiple infinite loops](./docs/MultipleInfiniteLoops.md) Static Cyclic Scheduler
6.  [Hello world(작성중)](./docs/HelloWorld.md)  ASC & Terminal
7.  [My own terminal(작성중)](./docs/MyOwnTerminal.md) Shell
8.  [Multi channel voltmeter(작성중)](./docs/MultiChannelVoltmeter.md)  Vadc Background Scan
9.  [My own cheap oscilloscope(작성중)](./docs/MyOwnCheapOscilloscope.md)  Vadc Auto Scan + Serial Plot
10.  [Line Scan Camera(작성중)](./docs/LineScanCamera.md) TSL1401
11.  [Chronos ruler(작성중)](./docs/ChronosRuler.md) GtmTomTimer + Beeper, Servo
12.  [Synchronized PWM(작성중)](./docs/SynchronizedPwm.md) GtmTomPwmHl + H-Bridge
13.  [Where are you?(작성중)](./docs/WhereAreYou.md) Gpt12 + Encoder
14.  [TFT as modern Man-Machine Interface(작성중)](./docs/TftAsModernMmi.md) 
15.  [OSEK-Certified ErikaOS & RT-Druid(작성중)](./docs/OsekCertificedErikaOsRtDruid.md)


### etc

* [References](./docs/References.md)
* [Source code list](./src/README.md)




## 어느 개발자 아저씨의 이야기

요즈음은 재미있고 생생한 스토리텔링이 각광을 받고 있다.  이는 상대방을 설득하거나 정보를 나눌 때도 필수적인 방법으로 사용되고 있다.  대부분의 사람들은 그 스토리텔링이 그저 말 잘하는 문과 출신들이나, 높은 지위에 있는 사람들이 많이 하는 것으로 생각한다.

 하지만, 내 생각은 다르다. 소프트웨어 엔지니어, 프로그래머의 길을 선택한 사람에게 **소프트웨어 개발이란 스토리텔링, 그 중에도 My Story telling**이다.  내가 만드는 소프트웨어, 프로그램에는 이미 My Story, 즉 나만의 이야기가 녹아 있는 것이다. 

 소프트웨어 엔지니어의 My Story는 사회에서 이미 가치가 증명되고 있다. 소프트웨어는 여러 공학 분야 중에서 가장 역사가 짧지만, 가장 빠른 속도로 성장하고 최근 인공지능등과 함께 모든 것, 모든 곳 안에 스며들고 있다.  미국 직업별 연봉 순위 중 소프트웨어 엔지니어는 항상 높은 순위에 올라 있으며, 미래에는 더욱 전망이 좋을 직업 중 하나이다.  왜냐하면 바로 그 My Story야 말로 각종 정보와 데이터가 넘치는 시대에 구글링을 아무리 해도 절대 찾을 수 없는 가치를 만들어 나가기 때문이다.

 경진대회에 참가한 모든 분들이 이러한 스토리텔러가 되기를, 

My Story를 가꾸어 나가고 협력해서 Our Story로 만들어 나가게 되기를,

그 과정에서 이곳의 자료와 코드들이 거름이 되기를 바란다.

 