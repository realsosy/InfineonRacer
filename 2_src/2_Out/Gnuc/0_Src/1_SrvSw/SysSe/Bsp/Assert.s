	.file	"Assert.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_Assert_setStandardIo,"ax",@progbits
	.align 1
	.global	Ifx_Assert_setStandardIo
	.type	Ifx_Assert_setStandardIo, @function
Ifx_Assert_setStandardIo:
.LFB17:
	.file 1 "0_Src/1_SrvSw/SysSe/Bsp/Assert.c"
	.loc 1 38 0
.LVL0:
	.loc 1 39 0
	movh.a	%a15, hi:Assert_io
	st.a	[%a15] lo:Assert_io, %a4
	.loc 1 40 0
	ret
.LFE17:
	.size	Ifx_Assert_setStandardIo, .-Ifx_Assert_setStandardIo
.section .rodata,"a",@progbits
.LC0:
	.string	"ASSERTION %s '%s' in %s:%u (function '%s()')\r\n"
.section .text.Ifx_Assert_doLevel,"ax",@progbits
	.align 1
	.global	Ifx_Assert_doLevel
	.type	Ifx_Assert_doLevel, @function
Ifx_Assert_doLevel:
.LFB18:
	.loc 1 58 0
.LVL1:
	.loc 1 70 0
	movh.a	%a15, hi:Assert_io
	ld.a	%a2, [%a15] lo:Assert_io
	.loc 1 58 0
	sub.a	%SP, 24
.LCFI0:
	.loc 1 70 0
	jz.a	%a2, .L2
	.loc 1 72 0
	movh.a	%a15, hi:Assert_level
	lea	%a15, [%a15] lo:Assert_level
	addsc.a	%a15, %a15, %d4, 2
	st.a	[%SP] 8, %a5
	movh.a	%a5, hi:.LC0
.LVL2:
	ld.w	%d15, [%a15]0
	st.a	[%SP] 4, %a4
	lea	%a5, [%a5] lo:.LC0
	mov.aa	%a4, %a2
.LVL3:
	st.w	[%SP]0, %d15
	st.w	[%SP] 12, %d5
	st.a	[%SP] 16, %a6
	call	IfxStdIf_DPipe_print
.LVL4:
.L2:
	ret
.LFE18:
	.size	Ifx_Assert_doLevel, .-Ifx_Assert_doLevel
.section .rodata,"a",@progbits
.LC1:
	.string	"VALIDATION %s '%s' in %s:%u (function '%s()')\r\n"
.section .text.Ifx_Assert_doValidate,"ax",@progbits
	.align 1
	.global	Ifx_Assert_doValidate
	.type	Ifx_Assert_doValidate, @function
Ifx_Assert_doValidate:
.LFB19:
	.loc 1 82 0
.LVL5:
	sub.a	%SP, 24
.LCFI1:
	.loc 1 82 0
	mov	%d15, %d4
	.loc 1 83 0
	jnz	%d4, .L6
	.loc 1 83 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Assert_verboseLevel
	ld.w	%d2, [%a15] lo:Assert_verboseLevel
	jlt.u	%d2, %d5, .L6
	.loc 1 96 0 is_stmt 1
	movh.a	%a15, hi:Assert_io
	ld.a	%a2, [%a15] lo:Assert_io
	jz.a	%a2, .L6
	.loc 1 98 0
	movh.a	%a15, hi:Assert_level
	lea	%a15, [%a15] lo:Assert_level
	addsc.a	%a15, %a15, %d5, 2
	st.a	[%SP] 8, %a5
	movh.a	%a5, hi:.LC1
.LVL6:
	ld.w	%d2, [%a15]0
	st.a	[%SP] 4, %a4
	lea	%a5, [%a5] lo:.LC1
	mov.aa	%a4, %a2
.LVL7:
	st.w	[%SP]0, %d2
	st.w	[%SP] 12, %d6
	st.a	[%SP] 16, %a6
	call	IfxStdIf_DPipe_print
.LVL8:
.L6:
	.loc 1 109 0
	mov	%d2, %d15
	ret
.LFE19:
	.size	Ifx_Assert_doValidate, .-Ifx_Assert_doValidate
	.global	Assert_level
.section .srodata,"as",@progbits
.LC2:
	.string	"OFF"
.LC3:
	.string	"FAILURE"
.LC4:
	.string	"ERROR"
.LC5:
	.string	"WARNING"
.LC6:
	.string	"INFO"
.LC7:
	.string	"DEBUG"
.section .rodata.Assert_level,"a",@progbits
	.align 2
	.type	Assert_level, @object
	.size	Assert_level, 24
Assert_level:
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.global	Assert_verboseLevel
.section .data.Assert_verboseLevel,"aw",@progbits
	.align 2
	.type	Assert_verboseLevel, @object
	.size	Assert_verboseLevel, 4
Assert_verboseLevel:
	.word	4
	.global	Assert_io
.section .bss.Assert_io,"aw",@nobits
	.align 2
	.type	Assert_io, @object
	.size	Assert_io, 4
Assert_io:
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
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.byte	0x4
	.uaword	.LCFI0-.LFB18
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.byte	0x4
	.uaword	.LCFI1-.LFB19
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "./0_Src/1_SrvSw/StdIf/IfxStdIf.h"
	.file 5 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8e7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/1_SrvSw/SysSe/Bsp/Assert.c"
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
	.uaword	0xda
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0xf9
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
	.byte	0x2
	.byte	0x5c
	.uaword	0x96
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0xa2
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
	.uaword	0xda
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x168
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"pchar"
	.byte	0x3
	.byte	0x27
	.uaword	0x1a0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1a6
	.uleb128 0x5
	.uaword	0x1ab
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x2b
	.uaword	0x15a
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x38
	.uaword	0xeb
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x4
	.byte	0x61
	.uaword	0x1b3
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x210
	.uleb128 0x7
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd8
	.uaword	0x3b5
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xda
	.uaword	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xdb
	.uaword	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xde
	.uaword	0x401
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdf
	.uaword	0x448
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xe0
	.uaword	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xe1
	.uaword	0x49c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x549
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe3
	.uaword	0x56d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe4
	.uaword	0x5a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe5
	.uaword	0x5ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe6
	.uaword	0x60e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe7
	.uaword	0x677
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe8
	.uaword	0x647
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe9
	.uaword	0x695
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xea
	.uaword	0x6b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xeb
	.uaword	0x6d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xed
	.uaword	0x4d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xee
	.uaword	0x50e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xef
	.uaword	0x6f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x3d6
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3dc
	.uleb128 0x9
	.uaword	0x14b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x3d6
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x41d
	.uleb128 0x4
	.byte	0x4
	.uaword	0x423
	.uleb128 0xa
	.byte	0x1
	.uaword	0x14b
	.uaword	0x442
	.uleb128 0xb
	.uaword	0x1da
	.uleb128 0xb
	.uaword	0x1b3
	.uleb128 0xb
	.uaword	0x442
	.uleb128 0xb
	.uaword	0x1b5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1c9
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x58
	.uaword	0x41d
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x61
	.uaword	0x486
	.uleb128 0x4
	.byte	0x4
	.uaword	0x48c
	.uleb128 0xa
	.byte	0x1
	.uaword	0x11c
	.uaword	0x49c
	.uleb128 0xb
	.uaword	0x1da
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x69
	.uaword	0x4bf
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4c5
	.uleb128 0xa
	.byte	0x1
	.uaword	0x3e1
	.uaword	0x4d5
	.uleb128 0xb
	.uaword	0x1da
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x71
	.uaword	0x4f8
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4fe
	.uleb128 0xa
	.byte	0x1
	.uaword	0x12a
	.uaword	0x50e
	.uleb128 0xb
	.uaword	0x1da
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x79
	.uaword	0x533
	.uleb128 0x4
	.byte	0x4
	.uaword	0x539
	.uleb128 0xa
	.byte	0x1
	.uaword	0x1b5
	.uaword	0x549
	.uleb128 0xb
	.uaword	0x1da
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x81
	.uaword	0x486
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x89
	.uaword	0x591
	.uleb128 0x4
	.byte	0x4
	.uaword	0x597
	.uleb128 0xa
	.byte	0x1
	.uaword	0x3b5
	.uaword	0x5a7
	.uleb128 0xb
	.uaword	0x1da
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x94
	.uaword	0x5ca
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5d0
	.uleb128 0xa
	.byte	0x1
	.uaword	0x14b
	.uaword	0x5ea
	.uleb128 0xb
	.uaword	0x1da
	.uleb128 0xb
	.uaword	0x1c9
	.uleb128 0xb
	.uaword	0x1b5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9f
	.uaword	0x5ca
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa9
	.uaword	0x62c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x632
	.uleb128 0xa
	.byte	0x1
	.uaword	0x14b
	.uaword	0x647
	.uleb128 0xb
	.uaword	0x1da
	.uleb128 0xb
	.uaword	0x1b5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xb0
	.uaword	0x665
	.uleb128 0x4
	.byte	0x4
	.uaword	0x66b
	.uleb128 0xc
	.byte	0x1
	.uaword	0x677
	.uleb128 0xb
	.uaword	0x1da
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb7
	.uaword	0x665
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbf
	.uaword	0x665
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc6
	.uaword	0x665
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xcd
	.uaword	0x665
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd4
	.uaword	0x665
	.uleb128 0xd
	.byte	0x1
	.string	"Ifx_Assert_setStandardIo"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x75b
	.uleb128 0xe
	.string	"standardIo"
	.byte	0x1
	.byte	0x25
	.uaword	0x75b
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1fa
	.uleb128 0xf
	.byte	0x1
	.string	"Ifx_Assert_doLevel"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LLST0
	.uaword	0x7dd
	.uleb128 0x10
	.string	"level"
	.byte	0x1
	.byte	0x39
	.uaword	0xcd
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x39
	.uaword	0x193
	.uaword	.LLST2
	.uleb128 0x10
	.string	"__file"
	.byte	0x1
	.byte	0x39
	.uaword	0x193
	.uaword	.LLST3
	.uleb128 0x10
	.string	"__line"
	.byte	0x1
	.byte	0x39
	.uaword	0x7dd
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0x39
	.uaword	0x193
	.uaword	.LLST5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x12
	.byte	0x1
	.string	"Ifx_Assert_doValidate"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x14b
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LLST6
	.uaword	0x880
	.uleb128 0x10
	.string	"expr"
	.byte	0x1
	.byte	0x50
	.uaword	0x14b
	.uaword	.LLST7
	.uleb128 0x10
	.string	"level"
	.byte	0x1
	.byte	0x50
	.uaword	0xcd
	.uaword	.LLST8
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x50
	.uaword	0x193
	.uaword	.LLST9
	.uleb128 0x10
	.string	"__file"
	.byte	0x1
	.byte	0x50
	.uaword	0x193
	.uaword	.LLST10
	.uleb128 0x10
	.string	"__line"
	.byte	0x1
	.byte	0x50
	.uaword	0x7dd
	.uaword	.LLST11
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0x51
	.uaword	0x193
	.uaword	.LLST12
	.byte	0
	.uleb128 0x13
	.string	"Assert_verboseLevel"
	.byte	0x1
	.byte	0x21
	.uaword	0x12a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Assert_verboseLevel
	.uleb128 0x13
	.string	"Assert_io"
	.byte	0x1
	.byte	0x1d
	.uaword	0x75b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Assert_io
	.uleb128 0x14
	.uaword	0x193
	.uaword	0x8ca
	.uleb128 0x15
	.uaword	0xa2
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.string	"Assert_level"
	.byte	0x1
	.byte	0x30
	.uaword	0x8e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Assert_level
	.uleb128 0x5
	.uaword	0x8ba
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB18
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE18
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2
	.uaword	.LVL4-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LFB19
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL5
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -20
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x2
	.byte	0x91
	.sleb128 -16
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL5
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL5
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"__function"
.LASF0:
	.string	"__assertion"
	.extern	IfxStdIf_DPipe_print,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
