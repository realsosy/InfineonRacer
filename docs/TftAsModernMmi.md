---
title: TFT as modern Man-Machine Interface.md
author: Gildong Hong (gildong@hong.com)  
date: 2018-01-30
[기술할 내용들 - 기술하고 나면 해당 항목 지우기]
* 필요성은 말할 것도 없고
* 활용하는 방법 - Case by case
* Library 활용 방법과 UI 구성 방법에 집중
EXAMPLE: 
	MyIlldModule_TC23A - Tft
	InfineonRacer_TC23A - TftApp

AURIX와 직접적인 연관 하드웨어에 대한 설명은 굳이 필요 없을 듯
	이유는 TFT 구동과 관련된 전용 XILINX 칩을 사용하고- 그 정보는 전혀 공개되지 않고
	이것을 사용하는 SW lib 모듈만 제공하고 있음
	어떤 Resource - SPI 등등을 사용하고 있는지만 인식하고
	SW Lib 활용에만 초첨을 맞추고 설명하시면 될 듯

---



# TFT as modern Man-Machine Interface

## 시작하는 질문

* Application Kit에 TFT 가 부착되어 있네?  이것을 사용해서 필요한 정보를 출력하고, 사용자가 조정하는 정보들을 입력 받으면 폼나겠는 걸?  그런데 관련 정보는 어디서 찾을 수 있지?  AURIX 사용자 메뉴얼에도 TFT 모듈이라는 것은 없는데...

사용자에게 필요한 정보를 보여주고 입력을 받는 장치를 MMI, Man-Machine Interface, 라고 부릅니다.  기존에 스위치와 LED의 조합으로 보여주던 정보들을 그래픽 LCD와 터치 기능으로 MMI를 구성하는 사례들을 점점 많이 볼 수 있습니다.  

보기가 좋다고 개발하는 사람들도 편해지기만 한 것은 아닙니다.  TFT LCD를 구동하기 위해서 전용 하드웨어를 개발해야 하고, 이 하드웨어를 구동하는 소프트웨어도 구성해야 합니다.  Application Kit 의 경우에는 Xilinx의 FPGA를 사용하여 드라이버를 구성하고, SPI 통신으로 AURIX와 인터페이스 하도록 구성되어 있습니다.  그러므로 AURIX 쪽에서는 하드웨어의 구성에 대한 구체적인 정보를 알 필요는 없이 SPI 통신으로 주고 받는 정보의 형태들만 이해하면 됩니다.  이것도 예제 코드로 잘 구성되어 있어서 관련 함수의 호출만 이해하면 TFT를 사용하는 것에는 문제가 없습니다.  하드웨어에 대한 구체적인 정보를 모르더라도, 소프트웨어 라이브러리만 이해 한다면 필요한 기능을 마음껏 사용할 수 있는 것! 이것이 라이브러리의 매력 입니다.  



------



## Objectives

* ​

## References

* TC23x TC22x Family User's Manual v1.1 - Chap
* iLLD_TC23A Help / Modules/ 

**[Example Code]**

* MyIlldModule_TC23A - TftApp
* InfineonRacer_TC23A - TftApp


------



## Example Description

* ​

## Background 정보

> * 어떤 파일들이 추가되어야 하는지
> * 라이브러리의 기능



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



## 추가적인 설명



------



## 마치며...