	.file	"basebar.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.bar_input,"ax",@progbits
	.align 1
	.global	bar_input
	.type	bar_input, @function
bar_input:
.LFB354:
	.file 1 "0_Src/0_AppSw/Tricore/TftApp/basebar.c"
	.loc 1 113 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE5:
.LBE4:
	.loc 1 116 0
	mov	%d2, 0
	ret
.LFE354:
	.size	bar_input, .-bar_input
.section .text.bar_select_rsvd,"ax",@progbits
	.align 1
	.global	bar_select_rsvd
	.type	bar_select_rsvd, @function
bar_select_rsvd:
.LFB353:
	.loc 1 101 0
.LVL1:
	.loc 1 102 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL2:
	.loc 1 101 0
	mov.aa	%a15, %a4
	.loc 1 102 0
	call	conio_ascii_textattr
.LVL3:
	.loc 1 103 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
	.loc 1 104 0
	lea	%a4, [%a15] 20
	.loc 1 105 0
	movh.a	%a15, hi:touch_driver
.LVL4:
	.loc 1 104 0
	mov	%d4, 0
	.loc 1 105 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 104 0
	call	conio_ascii_cputs
.LVL5:
	.loc 1 105 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L2
.LBB8:
.LBB9:
	.loc 1 107 0
	mov	%d2, 5
	.loc 1 108 0
	andn	%d15, %d15, ~(-9)
	.loc 1 107 0
	movh.a	%a2, hi:conio_driver
	lea	%a2, [%a2] lo:conio_driver
	st.w	[%a2] 216, %d2
	.loc 1 108 0
	st.w	[%a15] 64, %d15
.L2:
	ret
.LBE9:
.LBE8:
.LFE353:
	.size	bar_select_rsvd, .-bar_select_rsvd
.section .text.bar_select_graph,"ax",@progbits
	.align 1
	.global	bar_select_graph
	.type	bar_select_graph, @function
bar_select_graph:
.LFB352:
	.loc 1 89 0
.LVL6:
	.loc 1 90 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL7:
	.loc 1 89 0
	mov.aa	%a15, %a4
	.loc 1 90 0
	call	conio_ascii_textattr
.LVL8:
	.loc 1 91 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
	.loc 1 92 0
	lea	%a4, [%a15] 20
	.loc 1 93 0
	movh.a	%a15, hi:touch_driver
.LVL9:
	.loc 1 92 0
	mov	%d4, 0
	.loc 1 93 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 92 0
	call	conio_ascii_cputs
.LVL10:
	.loc 1 93 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L5
.LBB12:
.LBB13:
	.loc 1 95 0
	mov	%d2, 4
	.loc 1 96 0
	andn	%d15, %d15, ~(-9)
	.loc 1 95 0
	movh.a	%a2, hi:conio_driver
	lea	%a2, [%a2] lo:conio_driver
	st.w	[%a2] 216, %d2
	.loc 1 96 0
	st.w	[%a15] 64, %d15
.L5:
	ret
.LBE13:
.LBE12:
.LFE352:
	.size	bar_select_graph, .-bar_select_graph
.section .text.bar_select_stdio1,"ax",@progbits
	.align 1
	.global	bar_select_stdio1
	.type	bar_select_stdio1, @function
bar_select_stdio1:
.LFB351:
	.loc 1 77 0
.LVL11:
	.loc 1 78 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL12:
	.loc 1 77 0
	mov.aa	%a15, %a4
	.loc 1 78 0
	call	conio_ascii_textattr
.LVL13:
	.loc 1 79 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
	.loc 1 80 0
	lea	%a4, [%a15] 20
	.loc 1 81 0
	movh.a	%a15, hi:touch_driver
.LVL14:
	.loc 1 80 0
	mov	%d4, 0
	.loc 1 81 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 80 0
	call	conio_ascii_cputs
.LVL15:
	.loc 1 81 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L7
.LBB16:
.LBB17:
	.loc 1 83 0
	mov	%d2, 3
	.loc 1 84 0
	andn	%d15, %d15, ~(-9)
	.loc 1 83 0
	movh.a	%a2, hi:conio_driver
	lea	%a2, [%a2] lo:conio_driver
	st.w	[%a2] 216, %d2
	.loc 1 84 0
	st.w	[%a15] 64, %d15
.L7:
	ret
.LBE17:
.LBE16:
.LFE351:
	.size	bar_select_stdio1, .-bar_select_stdio1
.section .text.bar_select_stdio0,"ax",@progbits
	.align 1
	.global	bar_select_stdio0
	.type	bar_select_stdio0, @function
bar_select_stdio0:
.LFB350:
	.loc 1 65 0
.LVL16:
	.loc 1 66 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL17:
	.loc 1 65 0
	mov.aa	%a15, %a4
	.loc 1 66 0
	call	conio_ascii_textattr
.LVL18:
	.loc 1 67 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
	.loc 1 68 0
	lea	%a4, [%a15] 20
	.loc 1 69 0
	movh.a	%a15, hi:touch_driver
.LVL19:
	.loc 1 68 0
	mov	%d4, 0
	.loc 1 69 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 68 0
	call	conio_ascii_cputs
.LVL20:
	.loc 1 69 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L9
.LBB20:
.LBB21:
	.loc 1 71 0
	mov	%d2, 2
	.loc 1 72 0
	andn	%d15, %d15, ~(-9)
	.loc 1 71 0
	movh.a	%a2, hi:conio_driver
	lea	%a2, [%a2] lo:conio_driver
	st.w	[%a2] 216, %d2
	.loc 1 72 0
	st.w	[%a15] 64, %d15
.L9:
	ret
.LBE21:
.LBE20:
.LFE350:
	.size	bar_select_stdio0, .-bar_select_stdio0
.section .text.bar_select_menu,"ax",@progbits
	.align 1
	.global	bar_select_menu
	.type	bar_select_menu, @function
bar_select_menu:
.LFB349:
	.loc 1 53 0
.LVL21:
	.loc 1 54 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 0
.LVL22:
	.loc 1 53 0
	mov.aa	%a15, %a4
	.loc 1 54 0
	call	conio_ascii_textattr
.LVL23:
	.loc 1 55 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
	.loc 1 56 0
	lea	%a4, [%a15] 20
	.loc 1 57 0
	movh.a	%a15, hi:touch_driver
.LVL24:
	.loc 1 56 0
	mov	%d4, 0
	.loc 1 57 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 56 0
	call	conio_ascii_cputs
.LVL25:
	.loc 1 57 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L11
.LBB24:
.LBB25:
	.loc 1 59 0
	mov	%d2, 1
	.loc 1 60 0
	andn	%d15, %d15, ~(-9)
	.loc 1 59 0
	movh.a	%a2, hi:conio_driver
	lea	%a2, [%a2] lo:conio_driver
	st.w	[%a2] 216, %d2
	.loc 1 60 0
	st.w	[%a15] 64, %d15
.L11:
	ret
.LBE25:
.LBE24:
.LFE349:
	.size	bar_select_menu, .-bar_select_menu
	.global	stdlist
.section .rodata.stdlist,"a",@progbits
	.align 2
	.type	stdlist, @object
	.size	stdlist, 384
stdlist:
	.byte	112
	.byte	12
	.byte	1
	.byte	6
	.byte	19
	.zero	3
	.word	bar_select_menu
	.word	0
	.word	bar_input
	.string	" Main "
	.zero	33
	.zero	4
	.byte	112
	.byte	12
	.byte	9
	.byte	14
	.byte	19
	.zero	3
	.word	bar_select_stdio0
	.word	0
	.word	bar_input
	.string	" DIS0 "
	.zero	33
	.zero	4
	.byte	112
	.byte	12
	.byte	17
	.byte	22
	.byte	19
	.zero	3
	.word	bar_select_stdio1
	.word	0
	.word	bar_input
	.string	" DIS1 "
	.zero	33
	.zero	4
	.byte	112
	.byte	12
	.byte	25
	.byte	30
	.byte	19
	.zero	3
	.word	bar_select_graph
	.word	0
	.word	bar_input
	.string	"GRAPH "
	.zero	33
	.zero	4
	.byte	112
	.byte	12
	.byte	33
	.byte	38
	.byte	19
	.zero	3
	.word	bar_select_rsvd
	.word	0
	.word	bar_input
	.string	" RSVD "
	.zero	33
	.zero	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
	.word	0
	.word	0
	.word	0
	.string	" "
	.zero	38
	.zero	4
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 1
	.byte	0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 5 "./0_Src/2_CDrv/Tricore/Tft/conio_tft.h"
	.file 6 "./0_Src/2_CDrv/Tricore/Tft/touch.h"
	.file 7 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xba0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/TftApp/basebar.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"sint8"
	.byte	0x3
	.byte	0x58
	.uaword	0xd1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x59
	.uaword	0xed
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x5a
	.uaword	0x10c
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x5c
	.uaword	0x9c
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0xa8
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x5e
	.uaword	0x15a
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.uaword	0x1c2
	.uleb128 0x5
	.string	"DIALOGOFF"
	.sleb128 0
	.uleb128 0x5
	.string	"KEYBOARDON"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"TDIALOGMODE"
	.byte	0x4
	.byte	0xd
	.uaword	0x1a0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x1e
	.uaword	0x236
	.uleb128 0x5
	.string	"DISPLAY_BAR"
	.sleb128 0
	.uleb128 0x5
	.string	"DISPLAY_MENU"
	.sleb128 1
	.uleb128 0x5
	.string	"DISPLAY_IO0"
	.sleb128 2
	.uleb128 0x5
	.string	"DISPLAY_IO1"
	.sleb128 3
	.uleb128 0x5
	.string	"DISPLAY_GRAPH"
	.sleb128 4
	.uleb128 0x5
	.string	"DISPLAY_RSVD"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"TDISPLAYMODE"
	.byte	0x4
	.byte	0x25
	.uaword	0x1d5
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.uaword	0x2bf
	.uleb128 0x5
	.string	"RAWMODE"
	.sleb128 0
	.uleb128 0x5
	.string	"TEXTMODE"
	.sleb128 1
	.uleb128 0x5
	.string	"GRAPHICMODE_2COLOR"
	.sleb128 2
	.uleb128 0x5
	.string	"GRAPHICMODE_4COLOR"
	.sleb128 3
	.uleb128 0x5
	.string	"GRAPHICMODE_16COLOR"
	.sleb128 4
	.uleb128 0x5
	.string	"GRAPHICMODE_256COLOR"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"TMODE"
	.byte	0x4
	.byte	0x31
	.uaword	0x24a
	.uleb128 0x6
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x4
	.byte	0x34
	.uaword	0x362
	.uleb128 0x7
	.string	"pdisplay"
	.byte	0x4
	.byte	0x36
	.uaword	0x362
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"pdisplaycolor"
	.byte	0x4
	.byte	0x37
	.uaword	0x362
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"mode"
	.byte	0x4
	.byte	0x38
	.uaword	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"color"
	.byte	0x4
	.byte	0x39
	.uaword	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"maxx"
	.byte	0x4
	.byte	0x3a
	.uaword	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"maxy"
	.byte	0x4
	.byte	0x3b
	.uaword	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x"
	.byte	0x4
	.byte	0x3c
	.uaword	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x4
	.byte	0x3d
	.uaword	0x12f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xe0
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2cc
	.uleb128 0x9
	.uaword	0xe0
	.uaword	0x38d
	.uleb128 0xa
	.uaword	0xa8
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x5
	.byte	0x8b
	.uaword	0x44f
	.uleb128 0x7
	.string	"color_display"
	.byte	0x5
	.byte	0x8d
	.uaword	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"color_select"
	.byte	0x5
	.byte	0x8f
	.uaword	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"xmin"
	.byte	0x5
	.byte	0x90
	.uaword	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"xmax"
	.byte	0x5
	.byte	0x91
	.uaword	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"y"
	.byte	0x5
	.byte	0x92
	.uaword	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"select"
	.byte	0x5
	.byte	0x93
	.uaword	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0x94
	.uaword	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0x95
	.uaword	0x481
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"text"
	.byte	0x5
	.byte	0x96
	.uaword	0x37d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"symbol"
	.byte	0x5
	.byte	0x97
	.uaword	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.uaword	0x460
	.uleb128 0xc
	.uaword	0x12f
	.uleb128 0xc
	.uaword	0x460
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x38d
	.uleb128 0x8
	.byte	0x4
	.uaword	0x44f
	.uleb128 0xd
	.byte	0x1
	.uaword	0x12f
	.uaword	0x481
	.uleb128 0xc
	.uaword	0x12f
	.uleb128 0xc
	.uaword	0x460
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x46c
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x5
	.byte	0x98
	.uaword	0x38d
	.uleb128 0xe
	.string	"CONIO_DRIVER"
	.uahalf	0x114
	.byte	0x5
	.byte	0x9d
	.uaword	0x5e9
	.uleb128 0x7
	.string	"pmenulist"
	.byte	0x5
	.byte	0x9f
	.uaword	0x5e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"pstdlist"
	.byte	0x5
	.byte	0xa0
	.uaword	0x5e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0xa1
	.uaword	0x5ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"pdasmirror"
	.byte	0x5
	.byte	0xa2
	.uaword	0x5ff
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"dasstatus"
	.byte	0x5
	.byte	0xa3
	.uaword	0x13d
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"dasdisplaymode"
	.byte	0x5
	.byte	0xa4
	.uaword	0x236
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"cursorstatus"
	.byte	0x5
	.byte	0xa5
	.uaword	0x12f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x7
	.string	"displaymode"
	.byte	0x5
	.byte	0xa6
	.uaword	0x236
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x7
	.string	"dialogmode"
	.byte	0x5
	.byte	0xa7
	.uaword	0x1c2
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x7
	.string	"scanfdescr"
	.byte	0x5
	.byte	0xa8
	.uaword	0x605
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x7
	.string	"scanftext"
	.byte	0x5
	.byte	0xa9
	.uaword	0x605
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0xaa
	.uaword	0x62a
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x7
	.string	"inputid"
	.byte	0x5
	.byte	0xab
	.uaword	0x12f
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x7
	.string	"scanfx"
	.byte	0x5
	.byte	0xac
	.uaword	0xc4
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x7
	.string	"blinky"
	.byte	0x5
	.byte	0xad
	.uaword	0xe0
	.byte	0x3
	.byte	0x23
	.uleb128 0x111
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x487
	.uleb128 0x9
	.uaword	0x368
	.uaword	0x5ff
	.uleb128 0xa
	.uaword	0xa8
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x13d
	.uleb128 0x9
	.uaword	0xe0
	.uaword	0x615
	.uleb128 0xa
	.uaword	0xa8
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x12f
	.uaword	0x62a
	.uleb128 0xc
	.uaword	0x12f
	.uleb128 0xc
	.uaword	0x5e9
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x615
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x5
	.byte	0xae
	.uaword	0x49c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.uaword	0x6b1
	.uleb128 0x5
	.string	"TOUCH_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"TOUCH_DOWN"
	.sleb128 1
	.uleb128 0x5
	.string	"TOUCH_MOVE"
	.sleb128 2
	.uleb128 0x5
	.string	"TOUCH_UP"
	.sleb128 3
	.uleb128 0x5
	.string	"TOUCH_DOWN3S"
	.sleb128 4
	.uleb128 0x5
	.string	"TOUCH_DOWN10S"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_STATUS"
	.byte	0x6
	.byte	0x15
	.uaword	0x655
	.uleb128 0x6
	.string	"TOUCH_DRIVER"
	.byte	0x44
	.byte	0x6
	.byte	0x42
	.uaword	0x84f
	.uleb128 0x7
	.string	"time"
	.byte	0x6
	.byte	0x44
	.uaword	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"prev_time"
	.byte	0x6
	.byte	0x45
	.uaword	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"prev_time_down"
	.byte	0x6
	.byte	0x46
	.uaword	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bounce_limit"
	.byte	0x6
	.byte	0x47
	.uaword	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"bounce_cnt"
	.byte	0x6
	.byte	0x48
	.uaword	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x"
	.byte	0x6
	.byte	0x49
	.uaword	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"prev_x"
	.byte	0x6
	.byte	0x4a
	.uaword	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x7
	.string	"prev_x_down"
	.byte	0x6
	.byte	0x4b
	.uaword	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x6
	.byte	0x4c
	.uaword	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x7
	.string	"prev_y"
	.byte	0x6
	.byte	0x4d
	.uaword	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"prev_y_down"
	.byte	0x6
	.byte	0x4e
	.uaword	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x7
	.string	"cnt"
	.byte	0x6
	.byte	0x4f
	.uaword	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"xdisp"
	.byte	0x6
	.byte	0x50
	.uaword	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x7
	.string	"ydisp"
	.byte	0x6
	.byte	0x51
	.uaword	0xfe
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"xmin"
	.byte	0x6
	.byte	0x52
	.uaword	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"xmax"
	.byte	0x6
	.byte	0x53
	.uaword	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"ymin"
	.byte	0x6
	.byte	0x54
	.uaword	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"ymax"
	.byte	0x6
	.byte	0x55
	.uaword	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"status"
	.byte	0x6
	.byte	0x56
	.uaword	0x6b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"prev_status"
	.byte	0x6
	.byte	0x57
	.uaword	0x6b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"touchmode"
	.byte	0x6
	.byte	0x58
	.uaword	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_DRIVER"
	.byte	0x6
	.byte	0x59
	.uaword	0x6c6
	.uleb128 0xf
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.byte	0x1
	.string	"bar_select_rsvd"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x1
	.uaword	0x8a3
	.uleb128 0x11
	.string	"ind"
	.byte	0x1
	.byte	0x64
	.uaword	0x12f
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.byte	0x64
	.uaword	0x5e9
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"bar_select_graph"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uaword	0x8d5
	.uleb128 0x11
	.string	"ind"
	.byte	0x1
	.byte	0x58
	.uaword	0x12f
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.byte	0x58
	.uaword	0x5e9
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"bar_select_stdio1"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.byte	0x1
	.uaword	0x908
	.uleb128 0x11
	.string	"ind"
	.byte	0x1
	.byte	0x4c
	.uaword	0x12f
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4c
	.uaword	0x5e9
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"bar_select_stdio0"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.byte	0x1
	.uaword	0x93b
	.uleb128 0x11
	.string	"ind"
	.byte	0x1
	.byte	0x40
	.uaword	0x12f
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.byte	0x40
	.uaword	0x5e9
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"bar_select_menu"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uaword	0x96c
	.uleb128 0x11
	.string	"ind"
	.byte	0x1
	.byte	0x34
	.uaword	0x12f
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.byte	0x34
	.uaword	0x5e9
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"bar_input"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	0x12f
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9b8
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x70
	.uaword	0x12f
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x70
	.uaword	0x5e9
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.uaword	0x864
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x72
	.byte	0
	.uleb128 0x17
	.uaword	0x872
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xa03
	.uleb128 0x18
	.uaword	0x88c
	.uaword	.LLST0
	.uleb128 0x18
	.uaword	0x897
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	0x872
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0x64
	.uleb128 0x1a
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x1b
	.uaword	0x897
	.uleb128 0x1b
	.uaword	0x88c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x8a3
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xa4e
	.uleb128 0x18
	.uaword	0x8be
	.uaword	.LLST2
	.uleb128 0x18
	.uaword	0x8c9
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	0x8a3
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.byte	0x58
	.uleb128 0x1a
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x1b
	.uaword	0x8c9
	.uleb128 0x1b
	.uaword	0x8be
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x8d5
	.uaword	.LFB351
	.uaword	.LFE351
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xa99
	.uleb128 0x18
	.uaword	0x8f1
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	0x8fc
	.uaword	.LLST5
	.uleb128 0x19
	.uaword	0x8d5
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.byte	0x4c
	.uleb128 0x1a
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x1b
	.uaword	0x8fc
	.uleb128 0x1b
	.uaword	0x8f1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x908
	.uaword	.LFB350
	.uaword	.LFE350
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xae4
	.uleb128 0x18
	.uaword	0x924
	.uaword	.LLST6
	.uleb128 0x18
	.uaword	0x92f
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	0x908
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.byte	0x40
	.uleb128 0x1a
	.uaword	.LBB21
	.uaword	.LBE21
	.uleb128 0x1b
	.uaword	0x92f
	.uleb128 0x1b
	.uaword	0x924
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x93b
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xb2f
	.uleb128 0x18
	.uaword	0x955
	.uaword	.LLST8
	.uleb128 0x18
	.uaword	0x960
	.uaword	.LLST9
	.uleb128 0x19
	.uaword	0x93b
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0x34
	.uleb128 0x1a
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x1b
	.uaword	0x960
	.uleb128 0x1b
	.uaword	0x955
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"conio_driver"
	.byte	0x5
	.byte	0xc9
	.uaword	0x630
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x7b
	.uaword	0x13d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"touch_driver"
	.byte	0x6
	.byte	0x5b
	.uaword	0x84f
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x487
	.uaword	0xb88
	.uleb128 0xa
	.uaword	0xa8
	.byte	0x5
	.byte	0
	.uleb128 0x1d
	.string	"stdlist"
	.byte	0x1
	.byte	0x28
	.uaword	0xb9e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	stdlist
	.uleb128 0x1e
	.uaword	0xb78
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13-1
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18-1
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL21
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB354
	.uaword	.LFE354
	.uaword	.LFB353
	.uaword	.LFE353
	.uaword	.LFB352
	.uaword	.LFE352
	.uaword	.LFB351
	.uaword	.LFE351
	.uaword	.LFB350
	.uaword	.LFE350
	.uaword	.LFB349
	.uaword	.LFE349
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"pdisplayentry"
	.extern	conio_driver,STT_OBJECT,276
	.extern	conio_ascii_cputs,STT_FUNC,0
	.extern	touch_driver,STT_OBJECT,68
	.extern	conio_ascii_gotoxy,STT_FUNC,0
	.extern	conio_ascii_textattr,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
