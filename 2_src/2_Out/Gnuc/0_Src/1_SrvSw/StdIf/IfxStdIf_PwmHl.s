	.file	"IfxStdIf_PwmHl.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxStdIf_PwmHl_initConfig,"ax",@progbits
	.align 1
	.global	IfxStdIf_PwmHl_initConfig
	.type	IfxStdIf_PwmHl_initConfig, @function
IfxStdIf_PwmHl_initConfig:
.LFB203:
	.file 1 "0_Src/1_SrvSw/StdIf/IfxStdIf_PwmHl.c"
	.loc 1 29 0
.LVL0:
	.loc 1 30 0
	mov	%d15, 0
	st.w	[%a4]0, %d15
	.loc 1 31 0
	st.w	[%a4] 4, %d15
	.loc 1 32 0
	mov	%d15, 0
	st.b	[%a4] 8, %d15
	.loc 1 33 0
	st.b	[%a4] 9, %d15
	.loc 1 34 0
	mov	%d15, 128
	st.w	[%a4] 12, %d15
	.loc 1 35 0
	mov	%d15, 0
	st.w	[%a4] 16, %d15
	.loc 1 36 0
	mov	%d15, 1
	st.w	[%a4] 20, %d15
	.loc 1 37 0
	st.w	[%a4] 24, %d15
	.loc 1 38 0
	ret
.LFE203:
	.size	IfxStdIf_PwmHl_initConfig, .-IfxStdIf_PwmHl_initConfig
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
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.file 5 "0_Src/1_SrvSw/StdIf/IfxStdIf_PwmHl.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x493
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/1_SrvSw/StdIf/IfxStdIf_PwmHl.c"
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
	.uaword	0xde
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
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x121
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
	.uaword	0xde
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
	.byte	0x3
	.byte	0x51
	.uaword	0x1ac
	.uleb128 0x5
	.string	"Ifx_ActiveState_low"
	.sleb128 0
	.uleb128 0x5
	.string	"Ifx_ActiveState_high"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ActiveState"
	.byte	0x3
	.byte	0x54
	.uaword	0x176
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x6a
	.uaword	0x21b
	.uleb128 0x5
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x5
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_OutputMode"
	.byte	0x4
	.byte	0x6d
	.uaword	0x1d3
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x74
	.uaword	0x35a
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x5
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0x4
	.byte	0x7d
	.uaword	0x235
	.uleb128 0x6
	.byte	0x1c
	.byte	0x5
	.byte	0x9d
	.uaword	0x434
	.uleb128 0x7
	.string	"deadtime"
	.byte	0x5
	.byte	0x9f
	.uaword	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"minPulse"
	.byte	0x5
	.byte	0xa0
	.uaword	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"channelCount"
	.byte	0x5
	.byte	0xa1
	.uaword	0xd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"emergencyEnabled"
	.byte	0x5
	.byte	0xa2
	.uaword	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x7
	.string	"outputMode"
	.byte	0x5
	.byte	0xa4
	.uaword	0x21b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"outputDriver"
	.byte	0x5
	.byte	0xa5
	.uaword	0x35a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"ccxActiveState"
	.byte	0x5
	.byte	0xa7
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"coutxActiveState"
	.byte	0x5
	.byte	0xa8
	.uaword	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_PwmHl_Config"
	.byte	0x5
	.byte	0xa9
	.uaword	0x373
	.uleb128 0x8
	.byte	0x1
	.string	"IfxStdIf_PwmHl_initConfig"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x490
	.uleb128 0x9
	.string	"config"
	.byte	0x1
	.byte	0x1c
	.uaword	0x490
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x434
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
