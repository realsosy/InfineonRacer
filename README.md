# README

## Purpose & Scope
지능형 모형차 대회에 사용할 수 있는 Software Platform 을 제공하는 것을 목적으로 한다.

특히 다음의 사항을 고려하였다.

*   Infineon AURIX 활용 방법 소개
*   학부생 수준에서 이해하고 활용할 수 있는 코드
*   특별한 하드웨어와 소프트웨어 도구를 사용하지 않음

Software Platform를 분석하면 자연스럽게 Infineon AURIX를 이해할 수 있도록 하고, 
마이크로컨트롤러 전공자로서 성장해 나갈 수 있는 첫 걸음이 될 수 있도록 구성하였다.

### Definitions, Terminology and Abbreviations

| Abbreviations | Descriptions              |
| ------------- | ------------------------- |
| iLLD          | Infineon Low-Level Driver |
|               |                           |

## What we need
* Application Kit TC2X7 V1.0; Evaluation board
* DC Motor Control Kit; Infineon Released
* HighTec Free TriCore™ Entry Tool Chain V4.6.6.0-infineon-1.1 (later): Compiler & Debugger
* BIFACES_V1_0_0_Win32.zip; Build and Integration Framework for Automotive Controller Embedded Software
* BaseProjects_AURIX1G_V1_0_1_2_0.zip; BIFACES Base Template Project
* iLLD_1_0_1_4_0_TC2xx_Release.zip; iLLD source and doc
* iLLD_Demos_1_0_1_4_0_TC2xx.zip; iLLD examples




## ToC

### InfineonRacer Guide

1.  [Getting Started](./docs/GettingStarted.md)  HW Setup & Quick-Start
2.  [InfineonRacer User Guide](./docs/InfineonRacerUserGuide.md)  SW Architecture & API


* [Connection Guide for Infineon Racer](./docs/ConnectionGuide.md)

### Dive into AURIX world using InfineonRacer

1.  [How to use BIFACES?](./docs/HowToUseBIFACES.md)  eclipse, make, doxygen, graphviz
2.  [How to study AURIX?](./docs/HowToStudyAurix.md)
3.  [What is iLLD](./docs/WhatIsIlld.md) PORT
4.  [Twinkle twinkle little star](./docs/TwinkleTwinkleLittleStar.md)  STM 
5.  [Hello world](./docs/HelloWorld.md)  ASC & Terminal
6.  [My own terminal](./docs/MyOwnTerminal.md) Shell
7.  [Multi channel voltmeter](./docs/MultiChannelVoltmeter.md)  Vadc Background Scan + Bluetooth terminal
8.  [My own cheap oscilloscope](./docs/MyOwnCheapOscilloscope.md)  Vadc Auto Scan + Serial Plot
9.  [Line Scan Camera](./docs/LineScanCamera.md) TSL1401
10.  [Chronos ruler](./docs/ChronosRuler.md) GtmTomTimer + Beeper, Servo
11.  [Synchronized PWM](./docs/SynchronizedPwm.md) GtmTomPwmHl + H-Bridge
12.  [Where are you?](./docs/WhereAreYou.md) Gpt12 + Encoder
13.  [TFT as modern Man-Machine Interface](./docs/TftAsModernMmi.md) 
14.  [Multiple infinite loops](./docs/MultipleInfiniteLoops.md) Static Cyclic Scheduler
15.  [OSEK-Certified ErikaOS & RT-Druid](./docs/OsekCertificedErikaOsRtDruid.md)


### etc

* [References](./docs/References.md)
* [Source code list](./src/README.md)

