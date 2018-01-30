	.file	"IfxStdIf_Pos.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxStdIf_Pos_initConfig,"ax",@progbits
	.align 1
	.global	IfxStdIf_Pos_initConfig
	.type	IfxStdIf_Pos_initConfig, @function
IfxStdIf_Pos_initConfig:
.LFB24:
	.file 1 "0_Src/1_SrvSw/StdIf/IfxStdIf_Pos.c"
	.loc 1 29 0
.LVL0:
	.loc 1 33 0
	mov	%d2, 1
	.loc 1 38 0
	movh	%d3, 17667
	.loc 1 30 0
	mov	%d15, 0
	.loc 1 33 0
	st.h	[%a4] 12, %d2
	.loc 1 34 0
	mov	%d2, 1
	.loc 1 38 0
	addi	%d3, %d3, -6573
	.loc 1 30 0
	st.w	[%a4]0, %d15
	.loc 1 34 0
	st.w	[%a4] 16, %d2
	.loc 1 35 0
	movh	%d2, 14979
	addi	%d2, %d2, 4719
	.loc 1 31 0
	st.b	[%a4] 4, %d15
	.loc 1 32 0
	st.w	[%a4] 8, %d15
	.loc 1 35 0
	st.w	[%a4] 20, %d2
	.loc 1 36 0
	mov	%d2, 0
	.loc 1 38 0
	st.w	[%a4] 32, %d3
	.loc 1 39 0
	st.b	[%a4] 36, %d15
	.loc 1 36 0
	st.w	[%a4] 24, %d2
	.loc 1 37 0
	st.w	[%a4] 28, %d2
	.loc 1 40 0
	st.w	[%a4] 40, %d2
	.loc 1 42 0
	ret
.LFE24:
	.size	IfxStdIf_Pos_initConfig, .-IfxStdIf_Pos_initConfig
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/1_SrvSw/StdIf/IfxStdIf_Pos.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3a6
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/1_SrvSw/StdIf/IfxStdIf_Pos.c"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0xfb
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x98
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x12e
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
	.uaword	0xcf
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
	.byte	0x38
	.uaword	0x205
	.uleb128 0x5
	.string	"IfxStdIf_Pos_ResolutionFactor_oneFold"
	.sleb128 1
	.uleb128 0x5
	.string	"IfxStdIf_Pos_ResolutionFactor_twoFold"
	.sleb128 2
	.uleb128 0x5
	.string	"IfxStdIf_Pos_ResolutionFactor_fourFold"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_ResolutionFactor"
	.byte	0x3
	.byte	0x3c
	.uaword	0x183
	.uleb128 0x6
	.byte	0x2c
	.byte	0x3
	.uahalf	0x11d
	.uaword	0x34a
	.uleb128 0x7
	.string	"offset"
	.byte	0x3
	.uahalf	0x11f
	.uaword	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reversed"
	.byte	0x3
	.uahalf	0x120
	.uaword	0x141
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"resolution"
	.byte	0x3
	.uahalf	0x121
	.uaword	0x111
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"periodPerRotation"
	.byte	0x3
	.uahalf	0x122
	.uaword	0xed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"resolutionFactor"
	.byte	0x3
	.uahalf	0x123
	.uaword	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"updatePeriod"
	.byte	0x3
	.uahalf	0x124
	.uaword	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"speedModeThreshold"
	.byte	0x3
	.uahalf	0x125
	.uaword	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"minSpeed"
	.byte	0x3
	.uahalf	0x126
	.uaword	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"maxSpeed"
	.byte	0x3
	.uahalf	0x127
	.uaword	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"speedFilterEnabled"
	.byte	0x3
	.uahalf	0x128
	.uaword	0x141
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"speedFilerCutOffFrequency"
	.byte	0x3
	.uahalf	0x129
	.uaword	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x8
	.string	"IfxStdIf_Pos_Config"
	.byte	0x3
	.uahalf	0x12a
	.uaword	0x22a
	.uleb128 0x9
	.byte	0x1
	.string	"IfxStdIf_Pos_initConfig"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3a3
	.uleb128 0xa
	.string	"config"
	.byte	0x1
	.byte	0x1c
	.uaword	0x3a3
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x34a
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
