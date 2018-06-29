---
title: TFT as modern Man-Machine Interface.md
author: Chulhoon Jang (chulhoonjang@gmail.com) / Sujin Han (sujinhan0905@gmail.com)  
date: 2018-06-08
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

 * SPI 통신 (Serial Peripheral Interface)

   * SPI 통신은 동기화된 시리얼 통신 방법입니다.
   * 주로, 근거리 통신에 사용됩니다.
   * 1980년대 모토롤라에 의해 개발되었습니다.
   * 특징으로는 Master-Slave 구조의 양방향 구조이며, 하나의 Master와 다수 개의 Slave가 존재하게 됩니다.
   * SPI는 four-wire 시리얼 버스라고도 불리는 데, 그 이유는 통신에 총 4개의 선을 사용하기 때문입니다. (SCLK: Serial Clock, MOSI: Master Output Slave Input, MISO: Master Input Slave Output, Slave Select)

   ![TftAsModernMmi](images/TftAsModernMmi_SPI.jpg)

   * 데이터 저장 및 전송을 위해 shift register가 사용됩니다.
   ![TftAsModernMmi_SPI_Register](images/TftAsModernMmi_SPI_Register.png)


* TFT Driver

   * Conio TFT driver
     * 사용자가 구현하기 어려운 Display 기능이나 Touch screen 정보를 받아오는 기능을 손쉽게 이용할 수 있도록 함수가 구현되어 있습니다.

* TFT 구동 방식

   * iLLD 에서는 Conio Interrupt service가 주기적으로 돌면서 Display를 하고 Touch 정보를 받아옵니다.

* TFT를 사용하기 위해 필요한 header

   * <Tft/conio_tft.h>
   * <Tft/touch.h>

* I/O 설정

   * TFT는 SPI 통신을 이용하여 AURIX와 정보를 주고 받습니다. 그러므로, QSPI를 사용하기 위한 PIN 설정이 필요합니다.

     ![TftAsModernMmi_TFT_In](images/TftAsModernMmi_TFT_In.png)

   * Touch 정보는 SPI 통신을 이용하여 받습니다.

     ![TftAsModernMmi_TouchIn](images/TftAsModernMmi_TouchIn.png)

   * Background light는 Gtm TOM을 이용하여 PWM으로 조절합니다.

     ![TftAsModernMmi_BackgroundLight](images/TftAsModernMmi_BackgroundLight.png)




## iLLD - related

* Demo code description
  * Text를 display에 출력하고, 어떤 함수에서 touch 좌표를 받고, 그것을 어떻게 사용하는지 간단히 살펴봅시다.

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

  // 생략
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

    // LCD Background 밝기 초기화, 초기 diplay 설정
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
    // touch periodic 에서 받은 x좌표, y좌표가 conio periodic의 입력이 됨
    conio_periodic (touch_driver.xdisp, touch_driver.ydisp, conio_driver.pmenulist, conio_driver.pstdlist);
    conio_driver.blinky += 1;
}
```



### Module Behavior

```c
// TFT interface 소개

// TFT Input interface
Touch screen 좌표
- touch_driver.xdisp, touch_driver.ydisp

// TFT Output interface
기능
- Text를 display에 출력
예시
	conio_ascii_printfxy (DISPLAY_IO1, 0,  4, (uint8 *)" Motor0En : %4d     Motor1En : %4d", 	IR_getMotor0En(), IR_getMotor1En());
Input
- Displaymode(Bar인지 text인지 graph인지...)
- Text가 입력 될 좌표 x, y
- 실제 출력할 string
- Conversion specifier에 치환 될 인자

기능
- Bar를 display에 출력
예시
	bar_display (i, (struct DISPLAYENTRY *) &pstdlist[i]);
Input
- display 하고자 하는 reference의 index
- display 하고자 하는 reference

// Display 하고자 하는 것의 정보
typedef struct DISPLAYENTRY
{
    uint8 color_display;        //upper most 4 bits are background colore, lower 4 bits text color
    //if the cursor is not inside the are this color information will be taken to display the text
    uint8 color_select;         //if the cursor is inside the area, the text will be shown in this color
    sint8 xmin;                 //provides the information where the menu entry is starting
    sint8 xmax;                 //and ending
    sint8 y;                    //height information, only one line height is used as menu entry
    void (*select) (sint32 ind, struct DISPLAYENTRY * pdisplayentry);   //this function will be called in case of select, if NULL nothing will happen
    void (*display) (sint32 ind, struct DISPLAYENTRY * pdisplayentry);  //this function will be called to display the text
     sint32 (*input) (sint32 ind, struct DISPLAYENTRY * pdisplayentry); //this function will be called if an text input is required, the keyboard window will be opened
    uint8 text[TERMINAL_MAXX];  //the text
    uint8 symbol;               //the symbol number
} TDISPLAYENTRY, *pTDISPLAYENTRY;

기능
- 그림을 display에 출력
예시
void graph_drawInfineonLogo(void)
{
    uint32 i, j, idx, width, height;
    uint8 color, count;

    uint32 x, y;

    width = 200;
    height = 87;
    x = (320 - width) / 2;
    y = (240 - height) / 2;

    idx = 0;
    color = -1;
    count = 0;

    // set blue frame
    for(i = 0; i < TFT_YSIZE - FONT_YSIZE; i++)
    {
        for(j = 0; j < TFT_XSIZE; j++)
        {
            conio_graphics_set(DISPLAY_GRAPH, j, i, RED);
        }
    }
    // set red frame
    for(i = 5; i < TFT_YSIZE - FONT_YSIZE - 5; i++)
    {
        for(j = 5; j < TFT_XSIZE - 5; j++)
        {
            conio_graphics_set(DISPLAY_GRAPH, j, i, BLUE);
        }
    }
    // set white background
    for(i = 10; i < TFT_YSIZE - FONT_YSIZE - 10; i++)
    {
        for(j = 10; j < TFT_XSIZE - 10; j++)
        {
            conio_graphics_set(DISPLAY_GRAPH, j, i, WHITE);
        }
    }
    // paint the logo
    for(i = 0; i < height; i++)
    {
        for(j = 0; j < width; j++)
        {
            if(count == 0)
            {
                count = infineon_logo[idx++];
                color = infineon_logo[idx++];
            }
            if(color != 255)
            {
                conio_graphics_set(DISPLAY_GRAPH, x + j, y + height - i, color);
            }
            count--;
        }
    }
}
Input
- infineon_logo[1962]
```

------



## 마치며...

TFT를 사용해 봄으로써 Man-Machine Interface의 중요성을 조금은 체감했으리라 생각합니다. TFT와 같은 디스플레이 장치는 모니터링하고자 하는 값을 실시간으로 사용자에게 보여줄 수도 있고, 감압 입력을 받아 임베디드 시스템에 직접 입력을 줄 수도 있습니다. 이미지 출력도 가능하기 때문에 사용자가 직관적으로 결과값을 인식하고 인터페이스를 조작하는 데 도움을 줄 수 있습니다.