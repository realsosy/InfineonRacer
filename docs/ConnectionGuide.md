---
title: Connection Guide for Infineon Racer
author: Wootaik Lee (wootaik@gmail.com)  
date: 2018-01-30
---

# Connection Guide for Infineon Racer

## Components
*   Application Kit TC2X7 V1.0
*   DC Motor Control Kit (Infineon Released)
    *  보조모터 사용을 위한 하드웨어 수정 필요
*   DC Motor
*   Servo motor
*   CCD (TSL1401 X 2)
*   Incremental Encoder 1024(/512/256) PPR
    * E30S4-1024-3-N-5 사용

## Connection Diagram
* *DC Motor Control Kit* 와 *Application Kit TC2X7 V1.0* 의 경우 별도의 하드웨어 작업 없이 커넥터 연결
* USB/Blutooth 모듈은 *Application Kit TC2X7 V1.0* 에 내장되어 있는 Micro-5Pin connector를 이용하여 연결

![ConnectionDiagram](images/ConnectionGuide_Diagram.png)

## Hardware Modification of Motor Driver Kit
* M2_1과 M2_2를 이용해 모터를 구동하기 위해서 Gate driver (U8)의 *IN* 신호로 들어가는 *P33.6* 신호를 *GP1.06(P00.5)* 로 변경하여 사용 해야함 (그림 참조)
* 납땜 시 주변에 깔려있는 구리(GND)와 합선되지 않게 주의 필요

![MotorDriver](images/ConnectionGuide_MotorDriver.png)

