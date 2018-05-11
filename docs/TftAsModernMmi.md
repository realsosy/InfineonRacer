---
![TftAsModernMmi_Touch_INT](C:\AurixWorkspace\Git_InineonRacer\docs\images\TftAsModernMmi_Touch_INT.png)title: TFT as modern Man-Machine Interface.md
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

* TFT 드라이버를 이용하여 LCD 와 터치 기능을 이용할 수 있는 Man-Machine Interface를 구현할 수 있습니다.

## References

* TC23x TC22x Family User's Manual v1.1 - Chap 20 QSPI

**[Example Code]**

* InfineonRacer_TC23A - TftApp

------



## Example Description

* TFT 드라이버를 이용하여 Text, Bar, Menu, Graph 등을 LCD에 출력하고, Touch screen으로 정보를 입력할 수 있습니다.

## Background 정보

> * 어떤 파일들이 추가되어야 하는지
> * 라이브러리의 기능

* TFT Driver

  * Conio TFT driver 
  * 사용자가 구현하기 어려운 Display 기능이나 Touch screen 정보를 받아오는 기능을 손쉽게 이용할 수 있도록 함수가 구현되어 있습니다.

* TFT 구동 방식

  * iLLD 에서는 Cunio Interrupt service가 주기적으로 돌면서 Display를 하고 Touch 정보를 받아옵니다.

* I/O

  * TFT는 SPI 통신을 이용하여 AURIX와 정보를 주고 받습니다. 그러므로, QSPI를 사용하기 위한 PIN 설정이 필요합니다.

  ![TftAsModernMmi_TFT_In](images/TftAsModernMmi_TFT_In.png)

  * Touch 정보 역시 SPI 통신을 이용하여 받습니다.

  ![TftAsModernMmi_TouchIn](images/TftAsModernMmi_TouchIn.png)

  * Background light는 Gtm TOM을 이용하여 PWM으로 조절합니다.![TftAsModernMmi_BackgroundLight](images/TftAsModernMmi_BackgroundLight.png)

  

## AURIX - related

## iLLD - related

### Module Configuration

```c
int core0_main(void)
{
	// 기타 기능 Configuration 생략
    
    // TFT를 사용하기 위한 Port 설정
    // CS to touch
    IfxPort_setPinModeInput(TOUCH_USE_CHIPSELECT.pin.port, TOUCH_USE_CHIPSELECT.pin.pinIndex, IfxPort_Mode_inputPullUp);
    // CS to tft
    IfxPort_setPinModeInput(TFT_USE_CHIPSELECT.pin.port, TFT_USE_CHIPSELECT.pin.pinIndex, IfxPort_Mode_inputPullUp);
    // INT from touch
    IfxPort_setPinModeInput(TOUCH_USE_INT.port, TOUCH_USE_INT.pinIndex, IfxPort_Mode_inputPullUp);
    // Background light는 Gtm TOM을 이용하여 조절한다
    // PWM Port Out 설정이 필요
    IfxPort_setPinModeOutput(BACKGROUND_LIGHT.pin.port, BACKGROUND_LIGHT.pin.pinIndex, IfxPort_OutputMode_pushPull, IfxPort_OutputIdx_alt1);

    /* Enable the global interrupts of this CPU */
    IfxCpu_enableInterrupts();

    // Static Scheduler Initialization
    BasicStm_init();

    // Static Scheduler Run
    while (TRUE)
    {
        BasicStm_run();
    }
    return 0;
}

void tft_app_init (uint8 RtcRunning)
{
    // TFT Interrupt service 를 주기적으로 부르기 위한 설정
    IfxSrc_init(&TFT_UPDATE_IRQ, ISR_PROVIDER_CPUSRV0, ISR_PRIORITY_CPUSRV0);
    IfxSrc_enable(&TFT_UPDATE_IRQ);

    conio_driver.pmenulist = (TDISPLAYENTRY *)&menulist[0];
    conio_driver.pstdlist = (TDISPLAYENTRY *)&stdlist[0];

    // TFT driver를 초기화한다
    tft_init ();                
    touch_init ();
    conio_init ((const pTCONIODMENTRY)conio_displaymode_list);
#ifdef TFT_OVER_DAS
    conio_driver.pdasmirror = &das_buffer[0];   //a buffer is available for PC sharing
    conio_driver.dasstatus = 0; //we can update
#endif

    controlmenu.cpusecondsdelta = 0.1f;
    tft_ready = TRUE;
    
    background_light_init();
    graph_drawInfineonLogo();
    display_io_init();
}
```



### Interrupt Configuration

```c
void cpu_service0Irq(void)
{

	__enable();
	if (tft_ready == 0) return;
    touch_periodic ();
    conio_periodic (touch_driver.xdisp, touch_driver.ydisp, conio_driver.pmenulist, conio_driver.pstdlist);
    conio_driver.blinky += 1;
}
```



### Module Behavior

```c
cunio_tft.h

//the output to the TFT
void conio_init (const pTCONIODMENTRY dm_list); // Driver init
void conio_periodic (sint16 x, sint16 y, TDISPLAYENTRY * pmenulist, TDISPLAYENTRY * pstdlist); 
// 실제로 TFT routine이 주기적으로 돌 때 실행되는 함수
// 아래 세부 함수들을 이용하여 MMI를 만든다

// TFT 에서 사용할 수 있는 특정 세부 기능에 대한 함수
void conio_ascii_putch (TDISPLAYMODE displaymode, uint8 ch);    /* Writes a character directly to the console. */
int conio_ascii_getch (TDISPLAYMODE displaymode);   /* Reads a character directly from the console, without echo. */
int conio_ascii_kbhit (TDISPLAYMODE displaymode);   /* Determines if a keyboard key was pressed. */
void conio_ascii_cputs (TDISPLAYMODE displaymode, uint8 * s);   /* Outputs a string directly to the console. */
uint8 *conio_ascii_cgets (TDISPLAYMODE displaymode, uint8 * s); /* Gets a string directly from the console.  */
void conio_ascii_clrscr (TDISPLAYMODE displaymode);
void conio_ascii_clreol (TDISPLAYMODE displaymode);
void conio_ascii_gotoxy (TDISPLAYMODE displaymode, sint32 x, sint32 y);
void conio_ascii_textcolor (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textbackground (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textattr (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textchangebackground (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textchangeforeground (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_textchangecolor (TDISPLAYMODE displaymode, sint32 color);
void conio_ascii_printfxy (TDISPLAYMODE displaymode, sint32 x, sint32 y, const uint8 * format, ...);
void conio_ascii_printf (TDISPLAYMODE displaymode, const uint8 * format, ...);
void conio_ascii_char (TDISPLAYMODE displaymode, sint32 x, sint32 y, uint8 ch, uint8 color);
void conio_ascii_setcolortable (uint32 ind, uint32 r, uint32 g, uint32 b);
void conio_ascii_printfvalue (TDISPLAYMODE displaymode, TVARMODE varmode, uint32 value);

void conio_graphics_clrscr (TDISPLAYMODE displaymode);
void conio_graphics_textattr (TDISPLAYMODE displaymode, sint32 color);
void conio_graphics_gotoxy (TDISPLAYMODE displaymode, sint32 x, sint32 y);
void conio_graphics_cputs (TDISPLAYMODE displaymode, uint8 * s);
void conio_graphics_textcolor (TDISPLAYMODE displaymode, sint32 color);
void conio_graphics_textbackground (TDISPLAYMODE displaymode, sint32 color);
void conio_graphics_ascii_textattr (TDISPLAYMODE displaymode, sint32 color);
void conio_graphics_printfxy (TDISPLAYMODE displaymode, sint32 x, sint32 y, const uint8 * format, ...);
void conio_graphics_set (TDISPLAYMODE displaymode, sint32 x, sint32 y, uint8 color);
void conio_graphics_line (TDISPLAYMODE displaymode, sint32 x1, sint32 y1, sint32 x2, sint32 y2, uint8 color);
void conio_graphics_setcolortable (uint32 ind, uint32 r, uint32 g, uint32 b);
void conio_graphics_char (TDISPLAYMODE displaymode, sint32 x, sint32 y, uint8 ch, uint8 color);


touch.h

void touch_periodic (void); // 실제로 TFT routine이 주기적으로 돌 때 실행되는 함수
void touch_init (void); 
```



## 추가적인 설명



------



## 마치며...