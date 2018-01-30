	.file	"display_io.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.string	"<<DISPLAY INFO 0>>"
.LC1:
	.string	"<<DISPLAY INFO 1>>"
.section .text.display_io_init,"ax",@progbits
	.align 1
	.global	display_io_init
	.type	display_io_init, @function
display_io_init:
.LFB650:
	.file 1 "0_Src/0_AppSw/Tricore/TftApp/display_io.c"
	.loc 1 47 0
	.loc 1 49 0
	movh.a	%a4, hi:.LC0
	mov	%d4, 2
	mov	%d5, 10
	mov	%d6, 0
	lea	%a4, [%a4] lo:.LC0
	call	conio_ascii_printfxy
	.loc 1 51 0
	movh.a	%a4, hi:.LC1
	mov	%d4, 3
	mov	%d5, 10
	mov	%d6, 0
	lea	%a4, [%a4] lo:.LC1
	j	conio_ascii_printfxy
.LFE650:
	.size	display_io_init, .-display_io_init
.section .rodata,"a",@progbits
.LC2:
	.string	" Motor0En : %4d     Motor1En : %4d"
.LC3:
	.string	" Motor0Vol: %4.2f     Motor1En: %4.2f"
	.global	__extendsfdf2
.LC4:
	.string	" SrvAngle : %4.2f"
.LC5:
	.string	" EncSpeed : %4.0f     EncPos   : %4d"
.LC6:
	.string	" AdcChn15 : %4.2f     AdcChn16 : %4.2f"
.LC7:
	.string	" AdcChn20 : %4.2f     AdcChn21 : %4.2f"
.LC8:
	.string	" PORT00_0 : %4d     PORT00_1 : %4d"
.LC9:
	.string	" BP_Freq  : %4.0f     BP_VOL  : %4.2f"
.section .text.display_io_run,"ax",@progbits
	.align 1
	.global	display_io_run
	.type	display_io_run, @function
display_io_run:
.LFB651:
	.loc 1 63 0
	.loc 1 65 0
	movh.a	%a2, hi:IR_MotorEn
	.loc 1 63 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 65 0
	ld.bu	%d15, [%a2] lo:IR_MotorEn
	lea	%a15, [%a2] lo:IR_MotorEn
	st.w	[%SP]0, %d15
	movh.a	%a4, hi:.LC2
	mov	%e4, 3
	ld.bu	%d15, [%a15] 1
	mov	%d6, 4
	lea	%a4, [%a4] lo:.LC2
	st.w	[%SP] 4, %d15
	call	conio_ascii_printfxy
	.loc 1 66 0
	movh.a	%a2, hi:IR_Motor
	ld.w	%d4, [%a2] lo:IR_Motor
	lea	%a15, [%a2] lo:IR_Motor
	call	__extendsfdf2
	st.d	[%SP]0, %e2
	ld.w	%d4, [%a15] 4
	.loc 1 67 0
	movh.a	%a15, hi:IR_Srv
	.loc 1 66 0
	call	__extendsfdf2
	movh.a	%a4, hi:.LC3
	mov	%e4, 3
	mov	%d6, 5
	lea	%a4, [%a4] lo:.LC3
	st.d	[%SP] 8, %e2
	call	conio_ascii_printfxy
	.loc 1 67 0
	ld.w	%d4, [%a15] lo:IR_Srv
	call	__extendsfdf2
	movh.a	%a4, hi:.LC4
	mov	%e4, 3
	mov	%d6, 6
	lea	%a4, [%a4] lo:.LC4
	st.d	[%SP]0, %e2
	call	conio_ascii_printfxy
	.loc 1 69 0
	movh.a	%a2, hi:IR_Encoder
	ld.w	%d4, [%a2] lo:IR_Encoder
	lea	%a15, [%a2] lo:IR_Encoder
	call	__extendsfdf2
	st.d	[%SP]0, %e2
	ld.w	%d4, [%a15] 4
	call	__extendsfdf2
	movh.a	%a4, hi:.LC5
	mov	%e4, 3
	mov	%d6, 8
	lea	%a4, [%a4] lo:.LC5
	st.d	[%SP] 8, %e2
	call	conio_ascii_printfxy
	.loc 1 71 0
	movh.a	%a2, hi:IR_AdcResult
	ld.w	%d4, [%a2] lo:IR_AdcResult
	lea	%a15, [%a2] lo:IR_AdcResult
	call	__extendsfdf2
	st.d	[%SP]0, %e2
	ld.w	%d4, [%a15] 4
	call	__extendsfdf2
	movh.a	%a4, hi:.LC6
	mov	%e4, 3
	mov	%d6, 10
	lea	%a4, [%a4] lo:.LC6
	st.d	[%SP] 8, %e2
	call	conio_ascii_printfxy
	.loc 1 72 0
	ld.w	%d4, [%a15] 8
	call	__extendsfdf2
	st.d	[%SP]0, %e2
	ld.w	%d4, [%a15] 12
	.loc 1 74 0
	movh.a	%a15, hi:IR_Port
	.loc 1 72 0
	call	__extendsfdf2
	movh.a	%a4, hi:.LC7
	mov	%e4, 3
	mov	%d6, 11
	lea	%a4, [%a4] lo:.LC7
	st.d	[%SP] 8, %e2
	call	conio_ascii_printfxy
	.loc 1 74 0
	lea	%a15, [%a15] lo:IR_Port
	movh.a	%a4, hi:.LC8
	ld.bu	%d2, [%a15] 3
	mov	%e4, 3
	ld.bu	%d15, [%a15] 4
	mov	%d6, 13
	lea	%a4, [%a4] lo:.LC8
	.loc 1 76 0
	movh.a	%a15, hi:IR_Beeper
	.loc 1 74 0
	st.w	[%SP]0, %d2
	.loc 1 76 0
	lea	%a15, [%a15] lo:IR_Beeper
	.loc 1 74 0
	st.w	[%SP] 4, %d15
	call	conio_ascii_printfxy
	.loc 1 76 0
	ld.w	%d4, [%a15] 4
	call	__extendsfdf2
	st.d	[%SP]0, %e2
	ld.w	%d4, [%a15] 8
	call	__extendsfdf2
	movh.a	%a4, hi:.LC9
	mov	%e4, 3
	mov	%d6, 15
	lea	%a4, [%a4] lo:.LC9
	st.d	[%SP] 8, %e2
	.loc 1 77 0
	j	conio_ascii_printfxy
.LFE651:
	.size	display_io_run, .-display_io_run
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
	.uaword	.LFB650
	.uaword	.LFE650-.LFB650
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB651
	.uaword	.LFE651-.LFB651
	.byte	0x4
	.uaword	.LCFI0-.LFB651
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/0_AppSw/Tricore/Main/BasicPort.h"
	.file 4 "./0_Src/0_AppSw/Tricore/Main/BasicGtmTom.h"
	.file 5 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 6 "./0_Src/1_SrvSw/StdIf/IfxStdIf_Pos.h"
	.file 7 "./0_Src/0_AppSw/Tricore/Main/BasicGpt12Enc.h"
	.file 8 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
	.file 9 "./0_Src/0_AppSw/Tricore/Main/BasicVadcBgScan.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x573
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/TftApp/display_io.c"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0xe3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0xab
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x134
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0xe3
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
	.byte	0x5
	.byte	0x1e
	.uaword	0x1ea
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x6
	.uaword	0x147
	.uleb128 0x7
	.byte	0xa
	.byte	0x3
	.byte	0x3c
	.uaword	0x2a9
	.uleb128 0x8
	.string	"led108"
	.byte	0x3
	.byte	0x3e
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"led109"
	.byte	0x3
	.byte	0x3f
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"led110"
	.byte	0x3
	.byte	0x40
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"port00_0"
	.byte	0x3
	.byte	0x41
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"port00_1"
	.byte	0x3
	.byte	0x42
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"m11_inh"
	.byte	0x3
	.byte	0x44
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"m12_inh"
	.byte	0x3
	.byte	0x45
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"m21_inh"
	.byte	0x3
	.byte	0x46
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x8
	.string	"m22_inh"
	.byte	0x3
	.byte	0x47
	.uaword	0x1fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"Basic_Port"
	.byte	0x3
	.byte	0x48
	.uaword	0x1ff
	.uleb128 0x7
	.byte	0x2
	.byte	0x3
	.byte	0x4a
	.uaword	0x2f2
	.uleb128 0x8
	.string	"Motor0Enable"
	.byte	0x3
	.byte	0x4b
	.uaword	0x147
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Motor1Enable"
	.byte	0x3
	.byte	0x4c
	.uaword	0x147
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"IR_MotorEn_t"
	.byte	0x3
	.byte	0x4d
	.uaword	0x2bb
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.byte	0x3e
	.uaword	0x337
	.uleb128 0x8
	.string	"Motor0Vol"
	.byte	0x4
	.byte	0x3f
	.uaword	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Motor1Vol"
	.byte	0x4
	.byte	0x40
	.uaword	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IR_Motor_t"
	.byte	0x4
	.byte	0x41
	.uaword	0x306
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x43
	.uaword	0x362
	.uleb128 0x8
	.string	"Angle"
	.byte	0x4
	.byte	0x44
	.uaword	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"IR_Srv_t"
	.byte	0x4
	.byte	0x45
	.uaword	0x349
	.uleb128 0x7
	.byte	0xc
	.byte	0x4
	.byte	0x47
	.uaword	0x3ad
	.uleb128 0x8
	.string	"On"
	.byte	0x4
	.byte	0x48
	.uaword	0x147
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"Frequency"
	.byte	0x4
	.byte	0x49
	.uaword	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"Volume"
	.byte	0x4
	.byte	0x4a
	.uaword	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"IR_Beeper_t"
	.byte	0x4
	.byte	0x4b
	.uaword	0x372
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0x4b
	.uaword	0x41b
	.uleb128 0x5
	.string	"IfxStdIf_Pos_Dir_forward"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxStdIf_Pos_Dir_backward"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxStdIf_Pos_Dir_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Dir"
	.byte	0x6
	.byte	0x4f
	.uaword	0x3c0
	.uleb128 0x7
	.byte	0xc
	.byte	0x7
	.byte	0x20
	.uaword	0x476
	.uleb128 0x8
	.string	"speed"
	.byte	0x7
	.byte	0x21
	.uaword	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"rawPosition"
	.byte	0x7
	.byte	0x22
	.uaword	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"direction"
	.byte	0x7
	.byte	0x23
	.uaword	0x41b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"IR_Encoder_t"
	.byte	0x7
	.byte	0x24
	.uaword	0x433
	.uleb128 0x9
	.byte	0x1
	.string	"display_io_init"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	.LFB650
	.uaword	.LFE650
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xa
	.byte	0x1
	.string	"display_io_run"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.uaword	.LFB651
	.uaword	.LFE651
	.uaword	.LLST0
	.uleb128 0xb
	.string	"Assert_verboseLevel"
	.byte	0x8
	.byte	0x7b
	.uaword	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"IR_Port"
	.byte	0x3
	.byte	0x52
	.uaword	0x2a9
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"IR_MotorEn"
	.byte	0x3
	.byte	0x53
	.uaword	0x2f2
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"IR_Motor"
	.byte	0x4
	.byte	0x50
	.uaword	0x337
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"IR_Srv"
	.byte	0x4
	.byte	0x51
	.uaword	0x362
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"IR_Beeper"
	.byte	0x4
	.byte	0x52
	.uaword	0x3ad
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x125
	.uaword	0x54c
	.uleb128 0xd
	.byte	0
	.uleb128 0xb
	.string	"IR_AdcResult"
	.byte	0x9
	.byte	0x2b
	.uaword	0x541
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.string	"IR_Encoder"
	.byte	0x7
	.byte	0x29
	.uaword	0x476
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB651
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE651
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB650
	.uaword	.LFE650-.LFB650
	.uaword	.LFB651
	.uaword	.LFE651-.LFB651
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB650
	.uaword	.LFE650
	.uaword	.LFB651
	.uaword	.LFE651
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
	.extern	IR_Beeper,STT_OBJECT,12
	.extern	IR_Port,STT_OBJECT,10
	.extern	IR_AdcResult,STT_OBJECT,-1
	.extern	IR_Encoder,STT_OBJECT,12
	.extern	IR_Srv,STT_OBJECT,4
	.extern	IR_Motor,STT_OBJECT,8
	.extern	IR_MotorEn,STT_OBJECT,2
	.extern	conio_ascii_printfxy,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
