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

1.  [How to study AURIX?(작성중)](./docs/HowToStudyAurix.md)
2.  [How to use BIFACES? (작성중)](./docs/HowToUseBIFACES.md)  eclipse, make, doxygen, graphviz
3.  [What is iLLD?(작성중)](./docs/WhatIsIlld.md) PORT
4.  [Twinkle twinkle little star(작성중)](./docs/TwinkleTwinkleLittleStar.md)  STM 
5.  [Hello world(작성중)](./docs/HelloWorld.md)  ASC & Terminal
6.  [My own terminal(작성중)](./docs/MyOwnTerminal.md) Shell
7.  [Multi channel voltmeter(작성중)](./docs/MultiChannelVoltmeter.md)  Vadc Background Scan
8.  [My own cheap oscilloscope(작성중)](./docs/MyOwnCheapOscilloscope.md)  Vadc Auto Scan + Serial Plot
9.  [Line Scan Camera(작성중)](./docs/LineScanCamera.md) TSL1401
10.  [Chronos ruler(작성중)](./docs/ChronosRuler.md) GtmTomTimer + Beeper, Servo
11.  [Synchronized PWM(작성중)](./docs/SynchronizedPwm.md) GtmTomPwmHl + H-Bridge
12.  [Where are you?(작성중)](./docs/WhereAreYou.md) Gpt12 + Encoder
13.  [TFT as modern Man-Machine Interface(작성중)](./docs/TftAsModernMmi.md) 
14.  [Multiple infinite loops](./docs/MultipleInfiniteLoops.md) Static Cyclic Scheduler
15.  [OSEK-Certified ErikaOS & RT-Druid(작성중)](./docs/OsekCertificedErikaOsRtDruid.md)


### etc

* [References](./docs/References.md)
* [Source code list](./src/README.md)

