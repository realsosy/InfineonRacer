	.file	"Ifx_InternalMux.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_InternalMux_init,"ax",@progbits
	.align 1
	.global	Ifx_InternalMux_init
	.type	Ifx_InternalMux_init, @function
Ifx_InternalMux_init:
.LFB149:
	.file 1 "0_Src/4_McHal/Tricore/_Lib/InternalMux/Ifx_InternalMux.c"
	.loc 1 37 0
.LVL0:
	.loc 1 40 0
	ld.a	%a15, [%a4]0
	jz.a	%a15, .L1
	ld.a	%a4, [%a4] 4
.LVL1:
	mov	%d15, 0
	mov	%d4, 0
	add.a	%a15, -1
.LVL2:
.L3:
.LBB5:
	.loc 1 42 0 discriminator 2
	sh	%d2, %d15, 1
	add	%d15, %d2
	addsc.a	%a2, %a4, %d15, 2
.LVL3:
.LBB6:
.LBB7:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1362 0 discriminator 2
	mov	%d3, 0
	.loc 2 1360 0 discriminator 2
	ld.a	%a3, [%a2]0
	ld.w	%d15, [%a2] 4
	.loc 2 1362 0 discriminator 2
	ld.w	%d2, [%a2] 8
	.loc 2 1360 0 discriminator 2
#APP
	# 1360 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov %d3,%d15 
                  ldmst [%a3]0,%e2
	# 0 "" 2
#NO_APP
.LBE7:
.LBE6:
.LBE5:
	.loc 1 40 0 discriminator 2
	add	%d4, 1
.LVL4:
	mov	%d15, %d4
	loop	%a15, .L3
.LVL5:
.L1:
	ret
.LFE149:
	.size	Ifx_InternalMux_init, .-Ifx_InternalMux_init
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
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "0_Src/4_McHal/Tricore/_Lib/InternalMux/Ifx_InternalMux.h"
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2f2
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/_Lib/InternalMux/Ifx_InternalMux.c"
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0xba
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
	.uaword	0x173
	.uleb128 0x5
	.uleb128 0x6
	.byte	0xc
	.byte	0x3
	.byte	0x2d
	.uaword	0x1ae
	.uleb128 0x7
	.string	"regAddr"
	.byte	0x3
	.byte	0x2f
	.uaword	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"mask"
	.byte	0x3
	.byte	0x30
	.uaword	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"value"
	.byte	0x3
	.byte	0x31
	.uaword	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_InternalMux_MuxConfig"
	.byte	0x3
	.byte	0x32
	.uaword	0x174
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x37
	.uaword	0x1fb
	.uleb128 0x7
	.string	"size"
	.byte	0x3
	.byte	0x39
	.uaword	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"muxConfig"
	.byte	0x3
	.byte	0x3a
	.uaword	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1ae
	.uleb128 0x3
	.string	"Ifx_InternalMux_Config"
	.byte	0x3
	.byte	0x3b
	.uaword	0x1cf
	.uleb128 0x8
	.string	"__ldmst"
	.byte	0x2
	.uahalf	0x54e
	.byte	0x1
	.byte	0x3
	.uaword	0x25d
	.uleb128 0x9
	.string	"address"
	.byte	0x2
	.uahalf	0x54e
	.uaword	0x16d
	.uleb128 0x9
	.string	"mask"
	.byte	0x2
	.uahalf	0x54e
	.uaword	0x119
	.uleb128 0x9
	.string	"value"
	.byte	0x2
	.uahalf	0x54e
	.uaword	0x119
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Ifx_InternalMux_init"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	.LFB149
	.uaword	.LFE149
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2ea
	.uleb128 0xb
	.string	"cfg"
	.byte	0x1
	.byte	0x24
	.uaword	0x2ea
	.uaword	.LLST0
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x26
	.uaword	0xcf
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0xc
	.string	"muxCfg"
	.byte	0x1
	.byte	0x2a
	.uaword	0x1ae
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	0x21f
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x2d
	.uleb128 0xf
	.uaword	0x24e
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	0x241
	.uaword	.LLST4
	.uleb128 0xf
	.uaword	0x231
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2f0
	.uleb128 0x10
	.uaword	0x201
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0xc
	.byte	0x82
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x82
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x82
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x82
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB149
	.uaword	.LFE149
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
