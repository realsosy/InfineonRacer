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

* MyIlldModule_TC23A - Tft

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
* TFT를 사용하기 위해 필요한 기본적인 driver

   * InfineonRacer_TC23A 기준
     * 0_Src/CDrv/Tricore/Qspi
     * 0_Src/CDrv/Tricore/Tft
* TFT를 활용하기 위해 필요한 application files

   * InfineonRacer_TC23A 기준

      * 0_Src/AppSw/Tricore/TftApp
* I/O 설정

   * TFT는 SPI 통신을 이용하여 AURIX와 정보를 주고 받습니다. 그러므로, QSPI를 사용하기 위한 PIN 설정이 필요합니다.

   * Touch 정보는 SPI 통신을 이용하여 받습니다.

   * Background light는 Gtm TOM을 이용하여 PWM으로 조절합니다.





## iLLD - related

* Demo code description
  * 5개의 Display 화면을 출력하고, 각 창에서 touch screen을 통해 사용자에게 입력을 받는다.
    * Main -> Operating time, background light 표시
    * DIS0 -> String <<DISPLAY0>>
    * DIS1 -> String <<DISPLAY0>>, CPU load
    * GRAPH -> Infineon logo 그림
    * RSVD(빈화면)

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
    
    /* Init TFT-display */
    tft_appl_init(1);	// Menu	창을 display하고 input을 받음

    /* Init the backroundlight */
    background_light_init();	// Background 의 밝기변화

    graph_drawInfineonLogo();	//인피니온 로고를 그리는 함수

   
    perf_meas_init();	// CPU load measurement를 위한 초기화

    display_io_init();	

    /* background endless loop */
    while (TRUE)
    {
    	perf_meas_idle();		// CPU load measurement를 위한 idle counter
    }

    return 0;
}

void tft_app_init (uint8 RtcRunning)
{
    // TFT Interrupt service 를 주기적으로 부르기 위한 설정
    IfxSrc_init(&TFT_UPDATE_IRQ, ISR_PROVIDER_CPUSRV0, ISR_PRIORITY_CPUSRV0);
    IfxSrc_enable(&TFT_UPDATE_IRQ);

    conio_driver.pmenulist = (TDISPLAYENTRY *)&menulist[0];	// Menu에 들어갈 entry
    conio_driver.pstdlist = (TDISPLAYENTRY *)&stdlist[0];   // Base bar에 들어갈 entry

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
// menu.c
// Description: Menu창 설정

const TDISPLAYENTRY menulist[19] = {
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 7, 31, 0, &menu_select, &menu_display, &menu_input,"TFT Demo for App Kit XC237"},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 39, 1, &menu_select_cpusec, &menu_display_cpusec, &menu_input,"cpusec"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 10, 3, &menu_select_cpusecdelta, &menu_display_cpusecdelta, &menu_input_cpusecdelta,"delta: "},

{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 0, 16, 17, &menu_select_background_light, &menu_display_background_light, &menu_input_background_light, "Background Light: "},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 30, 32, 17, &menu_select_background_lightminus, &menu_display, &menu_input, "-<<"},
{(CYAN << 4) | BLACK, (BLACK << 4) | YELLOW, 34, 36, 17, &menu_select_background_lightplus, &menu_display, &menu_input, ">>+"},

{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "},
{0, 0, 0, 0, 0, 0, 0, 0, " "}  //LAST ENTRY
};
// DISPLAYENTRY구조체의 구조
// {Display color, 터치되었을 때 color, entry의 x위치 시작점, entry의 x위치 끝점, entry의 y위치.
//  터치되었을 때 동작하는 함수, 기본 display할 함수, input 함수, 출력할 test, symbol}

// 아래는 Menu 창의 맨 첫 번째 줄인 "TFT Demo for App Kit XC237"을 출력하기 위한 3개의 함수
void menu_display (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_display);
    conio_ascii_gotoxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_MENU, &pdisplayentry->text[0]);
}// 기본 display할 함수

void menu_select (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    conio_ascii_textattr (DISPLAY_MENU, pdisplayentry->color_select);
    conio_ascii_gotoxy (DISPLAY_MENU, pdisplayentry->xmin, pdisplayentry->y);
    conio_ascii_cputs (DISPLAY_MENU, &pdisplayentry->text[0]);
    if ((touch_driver.touchmode & MASK_TOUCH_UP) != 0)
    {
        touch_driver.touchmode &= ~MASK_TOUCH_UP;   //clear
        // 현 entry는 touch되었을 때 특별한 동작이 없다
    }
}// 터치되었을 때 동작하는 함수

sint32 menu_input (sint32 ind, TDISPLAYENTRY * pdisplayentry)
{
    __debug ();	// input 받는 것이 없다
    return (0);
}// input 함수

// display_io.c
// Description: Display IO 0, 1창 설정
void display_io_init(void)
{
	// Display IO 0,1 에 기본적으로 출력되는 string 설정
    conio_ascii_printfxy (DISPLAY_IO0, 10, 0, (uint8 *)"<<DISPLAY 0>>");
    conio_ascii_printfxy (DISPLAY_IO1, 10, 0, (uint8 *)"<<DISPLAY 1>>");
}

// DrawLogo.c
// Description: Infineon logo를 GRAPH 창에 그려줌
void graph_drawInfineonLogo(void)
{
    uint32 i, j, idx, width, height;
    uint8 color, count;

    uint32 x, y;

    width = 200;		// Infineon logo width
    height = 87;		// Infineon logo height
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
                // Drawlogo.c 에서 미리 RGB 배열 형식으로 입력해둔 infineon logo 출력한다
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
```

------



## 마치며...

TFT를 사용해 봄으로써 Man-Machine Interface의 중요성을 조금은 체감했으리라 생각합니다. TFT와 같은 디스플레이 장치는 모니터링하고자 하는 값을 실시간으로 사용자에게 보여줄 수도 있고, 감압 입력을 받아 임베디드 시스템에 직접 입력을 줄 수도 있습니다. 이미지 출력도 가능하기 때문에 사용자가 직관적으로 결과값을 인식하고 인터페이스를 조작하는 데 도움을 줄 수 있습니다.