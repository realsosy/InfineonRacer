	.file	"Ifx_Console.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_Console_init,"ax",@progbits
	.align 1
	.global	Ifx_Console_init
	.type	Ifx_Console_init, @function
Ifx_Console_init:
.LFB169:
	.file 1 "0_Src/1_SrvSw/SysSe/Comm/Ifx_Console.c"
	.loc 1 40 0
.LVL0:
	.loc 1 42 0
	mov	%d15, 0
	.loc 1 41 0
	movh.a	%a2, hi:Ifx_g_console
	lea	%a15, [%a2] lo:Ifx_g_console
	st.a	[%a2] lo:Ifx_g_console, %a4
	.loc 1 42 0
	st.h	[%a15] 4, %d15
	.loc 1 43 0
	ret
.LFE169:
	.size	Ifx_Console_init, .-Ifx_Console_init
.section .rodata,"a",@progbits
.LC0:
	.string	"count < STDIF_DPIPE_MAX_PRINT_SIZE"
.LC1:
	.string	"0_Src/1_SrvSw/SysSe/Comm/Ifx_Console.c"
.section .text.Ifx_Console_print,"ax",@progbits
	.align 1
	.global	Ifx_Console_print
	.type	Ifx_Console_print, @function
Ifx_Console_print:
.LFB170:
	.loc 1 53 0
.LVL1:
	.loc 1 54 0
	movh.a	%a15, hi:Ifx_g_console
	ld.a	%a2, [%a15] lo:Ifx_g_console
	.loc 1 53 0
	lea	%SP, [%SP] -264
.LCFI0:
	.loc 1 53 0
	mov.aa	%a5, %a4
	.loc 1 54 0
	ld.bu	%d15, [%a2] 4
	.loc 1 69 0
	mov	%d2, 1
	.loc 1 54 0
	jz	%d15, .L7
	.loc 1 71 0
	ret
.L7:
.LVL2:
.LBB13:
	.loc 1 60 0
	lea	%a4, [%SP] 6
.LVL3:
	lea	%a6, [%SP] 264
	call	vsprintf
.LVL4:
	.loc 1 62 0
	lea	%a4, [%SP] 6
	call	strlen
	extr	%d2, %d2, 0, 16
.LVL5:
	.loc 1 63 0
	lt	%d15, %d2, 255
.LVL6:
	.loc 1 62 0
	st.h	[%SP] 262, %d2
	.loc 1 63 0
	jnz	%d15, .L4
	.loc 1 63 0 is_stmt 0 discriminator 1
	movh.a	%a2, hi:Assert_verboseLevel
	ld.w	%d15, [%a2] lo:Assert_verboseLevel
	jlt.u	%d15, 2, .L4
	.loc 1 63 0 discriminator 2
	movh.a	%a4, hi:.LC0
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.3213
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC0
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 63
	lea	%a6, [%a6] lo:__func__.3213
	call	Ifx_Assert_doLevel
.LVL7:
.L4:
	.loc 1 65 0 is_stmt 1
	ld.a	%a15, [%a15] lo:Ifx_g_console
.LVL8:
.LBB14:
.LBB15:
	.file 2 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
	.loc 2 247 0
	mov	%e4, -1
	lea	%a5, [%SP] 6
.LVL9:
	ld.a	%a2, [%a15] 8
	ld.a	%a4, [%a15]0
	lea	%a6, [%SP] 262
	sh	%d5, -1
	calli	%a2
.LVL10:
.LBE15:
.LBE14:
.LBE13:
	.loc 1 71 0
	ret
.LFE170:
	.size	Ifx_Console_print, .-Ifx_Console_print
.section .rodata,"a",@progbits
.LC2:
	.string	"                "
.section .text.Ifx_Console_printAlign,"ax",@progbits
	.align 1
	.global	Ifx_Console_printAlign
	.type	Ifx_Console_printAlign, @function
Ifx_Console_printAlign:
.LFB171:
	.loc 1 82 0
.LVL11:
	.loc 1 83 0
	movh.a	%a13, hi:Ifx_g_console
	ld.a	%a15, [%a13] lo:Ifx_g_console
	.loc 1 82 0
	lea	%SP, [%SP] -280
.LCFI1:
	.loc 1 82 0
	mov.aa	%a5, %a4
	.loc 1 83 0
	ld.bu	%d15, [%a15] 4
	.loc 1 108 0
	mov	%d2, 1
	.loc 1 83 0
	jz	%d15, .L15
	.loc 1 110 0
	ret
.L15:
.LBB16:
	.loc 1 87 0
	lea	%a12, [%SP] 259
	movh.a	%a15, hi:.LC2
	mov.aa	%a2, %a12
	lea	%a15, [%a15] lo:.LC2
		# #chunks=17, chunksize=1, remains=0
	lea	%a3, 17-1
	0:
	ld.bu	%d15, [%a15+]1
	st.b	[%a2+]1, %d15
	loop	%a3, 0b
.LVL12:
	.loc 1 90 0
	lea	%a4, [%SP] 3
.LVL13:
	lea	%a6, [%SP] 280
	call	vsprintf
.LVL14:
	.loc 1 92 0
	lea	%a4, [%SP] 3
	call	strlen
	extr	%d2, %d2, 0, 16
.LVL15:
	.loc 1 93 0
	lt	%d15, %d2, 255
.LVL16:
	.loc 1 92 0
	st.h	[%SP] 276, %d2
	.loc 1 93 0
	jz	%d15, .L16
.L10:
	.loc 1 94 0
	lea	%a15, [%a13] lo:Ifx_g_console
	ld.h	%d15, [%a15] 4
.LVL17:
	.loc 1 96 0
	jlez	%d15, .L11
.LBB17:
.LBB18:
.LBB19:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 123 0
	mov	%d8, 10
.LVL18:
.L12:
#APP
	# 123 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min %d2, %d15, %d8
	# 0 "" 2
.LVL19:
#NO_APP
.LBE19:
.LBE18:
	.loc 1 100 0
	ld.a	%a3, [%a15]0
.LVL20:
.LBB20:
.LBB21:
	.loc 2 247 0
	mov	%e4, -1
.LBE21:
.LBE20:
	.loc 1 99 0
	st.h	[%SP] 278, %d2
.LBB23:
.LBB22:
	.loc 2 247 0
	ld.a	%a2, [%a3] 8
	ld.a	%a4, [%a3]0
	mov.aa	%a5, %a12
	lea	%a6, [%SP] 278
	sh	%d5, -1
	calli	%a2
.LVL21:
.LBE22:
.LBE23:
	.loc 1 101 0
	ld.h	%d2, [%SP] 278
	sub	%d15, %d2
.LVL22:
	extr	%d15, %d15, 0, 16
.LVL23:
.LBE17:
	.loc 1 96 0
	jgtz	%d15, .L12
.LVL24:
.L11:
	.loc 1 104 0
	ld.a	%a15, [%a13] lo:Ifx_g_console
.LVL25:
.LBB24:
.LBB25:
	.loc 2 247 0
	mov	%e4, -1
	lea	%a5, [%SP] 3
.LVL26:
	ld.a	%a2, [%a15] 8
	ld.a	%a4, [%a15]0
	lea	%a6, [%SP] 276
	sh	%d5, -1
	calli	%a2
.LVL27:
.LBE25:
.LBE24:
.LBE16:
	.loc 1 110 0
	ret
.LVL28:
.L16:
.LBB26:
	.loc 1 93 0 discriminator 1
	movh.a	%a15, hi:Assert_verboseLevel
	ld.w	%d15, [%a15] lo:Assert_verboseLevel
	jlt.u	%d15, 2, .L10
	.loc 1 93 0 is_stmt 0 discriminator 2
	movh.a	%a4, hi:.LC0
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.3222
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC0
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 93
	lea	%a6, [%a6] lo:__func__.3222
	call	Ifx_Assert_doLevel
	j	.L10
.LBE26:
.LFE171:
	.size	Ifx_Console_printAlign, .-Ifx_Console_printAlign
	.global	Ifx_g_console
.section .bss.Ifx_g_console,"aw",@nobits
	.align 2
	.type	Ifx_g_console, @object
	.size	Ifx_g_console, 8
Ifx_g_console:
	.zero	8
.section .rodata.__func__.3213,"a",@progbits
	.type	__func__.3213, @object
	.size	__func__.3213, 18
__func__.3213:
	.string	"Ifx_Console_print"
.section .rodata.__func__.3222,"a",@progbits
	.type	__func__.3222, @object
	.size	__func__.3222, 23
__func__.3222:
	.string	"Ifx_Console_printAlign"
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
	.uaword	.LFB169
	.uaword	.LFE169-.LFB169
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB170
	.uaword	.LFE170-.LFB170
	.byte	0x4
	.uaword	.LCFI0-.LFB170
	.byte	0xe
	.uleb128 0x108
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB171
	.uaword	.LFE171-.LFB171
	.byte	0x4
	.uaword	.LCFI1-.LFB171
	.byte	0xe
	.uleb128 0x118
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/include/stdarg.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "./0_Src/1_SrvSw/StdIf/IfxStdIf.h"
	.file 8 "0_Src/1_SrvSw/SysSe/Comm/Ifx_Console.h"
	.file 9 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb0d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/1_SrvSw/SysSe/Comm/Ifx_Console.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x30
	.uaword	.Ldebug_line0
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x152
	.uleb128 0x5
	.uaword	0x144
	.uleb128 0x6
	.string	"__gnuc_va_list"
	.byte	0x4
	.byte	0x28
	.uaword	0x16d
	.uleb128 0x7
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x6
	.string	"va_list"
	.byte	0x4
	.byte	0x66
	.uaword	0x157
	.uleb128 0x6
	.string	"sint16"
	.byte	0x5
	.byte	0x5a
	.uaword	0xbc
	.uleb128 0x6
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x121
	.uleb128 0x6
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x12d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x6
	.string	"boolean"
	.byte	0x5
	.byte	0x68
	.uaword	0xab
	.uleb128 0x6
	.string	"sint64"
	.byte	0x6
	.byte	0x24
	.uaword	0xf6
	.uleb128 0x6
	.string	"pchar"
	.byte	0x6
	.byte	0x27
	.uaword	0x14c
	.uleb128 0x6
	.string	"Ifx_TickTime"
	.byte	0x6
	.byte	0x2b
	.uaword	0x1dc
	.uleb128 0x6
	.string	"Ifx_SizeT"
	.byte	0x6
	.byte	0x38
	.uaword	0x190
	.uleb128 0x6
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x7
	.byte	0x61
	.uaword	0x142
	.uleb128 0x6
	.string	"IfxStdIf_DPipe"
	.byte	0x2
	.byte	0x33
	.uaword	0x252
	.uleb128 0x8
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x2
	.byte	0xd8
	.uaword	0x3f7
	.uleb128 0x9
	.string	"driver"
	.byte	0x2
	.byte	0xda
	.uaword	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"txDisabled"
	.byte	0x2
	.byte	0xdb
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"write"
	.byte	0x2
	.byte	0xde
	.uaword	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.string	"read"
	.byte	0x2
	.byte	0xdf
	.uaword	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.string	"getReadCount"
	.byte	0x2
	.byte	0xe0
	.uaword	0x4a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.string	"getReadEvent"
	.byte	0x2
	.byte	0xe1
	.uaword	0x4de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.string	"getWriteCount"
	.byte	0x2
	.byte	0xe2
	.uaword	0x58b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.string	"getWriteEvent"
	.byte	0x2
	.byte	0xe3
	.uaword	0x5af
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.string	"canReadCount"
	.byte	0x2
	.byte	0xe4
	.uaword	0x5e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.string	"canWriteCount"
	.byte	0x2
	.byte	0xe5
	.uaword	0x62c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.string	"flushTx"
	.byte	0x2
	.byte	0xe6
	.uaword	0x650
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.string	"clearTx"
	.byte	0x2
	.byte	0xe7
	.uaword	0x6b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.string	"clearRx"
	.byte	0x2
	.byte	0xe8
	.uaword	0x689
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.string	"onReceive"
	.byte	0x2
	.byte	0xe9
	.uaword	0x6d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.string	"onTransmit"
	.byte	0x2
	.byte	0xea
	.uaword	0x6f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.string	"onError"
	.byte	0x2
	.byte	0xeb
	.uaword	0x718
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.string	"getSendCount"
	.byte	0x2
	.byte	0xed
	.uaword	0x517
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.string	"getTxTimeStamp"
	.byte	0x2
	.byte	0xee
	.uaword	0x550
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.string	"resetSendCount"
	.byte	0x2
	.byte	0xef
	.uaword	0x736
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x2
	.byte	0x35
	.uaword	0x418
	.uleb128 0x4
	.byte	0x4
	.uaword	0x41e
	.uleb128 0xa
	.uaword	0x1cd
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x2
	.byte	0x36
	.uaword	0x418
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x2
	.byte	0x48
	.uaword	0x45f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x465
	.uleb128 0xb
	.byte	0x1
	.uaword	0x1cd
	.uaword	0x484
	.uleb128 0xc
	.uaword	0x21c
	.uleb128 0xc
	.uaword	0x142
	.uleb128 0xc
	.uaword	0x484
	.uleb128 0xc
	.uaword	0x1f7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x20b
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x2
	.byte	0x58
	.uaword	0x45f
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x2
	.byte	0x61
	.uaword	0x4c8
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4ce
	.uleb128 0xb
	.byte	0x1
	.uaword	0x19e
	.uaword	0x4de
	.uleb128 0xc
	.uaword	0x21c
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x2
	.byte	0x69
	.uaword	0x501
	.uleb128 0x4
	.byte	0x4
	.uaword	0x507
	.uleb128 0xb
	.byte	0x1
	.uaword	0x423
	.uaword	0x517
	.uleb128 0xc
	.uaword	0x21c
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x2
	.byte	0x71
	.uaword	0x53a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x540
	.uleb128 0xb
	.byte	0x1
	.uaword	0x1ac
	.uaword	0x550
	.uleb128 0xc
	.uaword	0x21c
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x2
	.byte	0x79
	.uaword	0x575
	.uleb128 0x4
	.byte	0x4
	.uaword	0x57b
	.uleb128 0xb
	.byte	0x1
	.uaword	0x1f7
	.uaword	0x58b
	.uleb128 0xc
	.uaword	0x21c
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x2
	.byte	0x81
	.uaword	0x4c8
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x2
	.byte	0x89
	.uaword	0x5d3
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5d9
	.uleb128 0xb
	.byte	0x1
	.uaword	0x3f7
	.uaword	0x5e9
	.uleb128 0xc
	.uaword	0x21c
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x2
	.byte	0x94
	.uaword	0x60c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x612
	.uleb128 0xb
	.byte	0x1
	.uaword	0x1cd
	.uaword	0x62c
	.uleb128 0xc
	.uaword	0x21c
	.uleb128 0xc
	.uaword	0x20b
	.uleb128 0xc
	.uaword	0x1f7
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x2
	.byte	0x9f
	.uaword	0x60c
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x2
	.byte	0xa9
	.uaword	0x66e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x674
	.uleb128 0xb
	.byte	0x1
	.uaword	0x1cd
	.uaword	0x689
	.uleb128 0xc
	.uaword	0x21c
	.uleb128 0xc
	.uaword	0x1f7
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x2
	.byte	0xb0
	.uaword	0x6a7
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6ad
	.uleb128 0xd
	.byte	0x1
	.uaword	0x6b9
	.uleb128 0xc
	.uaword	0x21c
	.byte	0
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x2
	.byte	0xb7
	.uaword	0x6a7
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x2
	.byte	0xbf
	.uaword	0x6a7
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x2
	.byte	0xc6
	.uaword	0x6a7
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x2
	.byte	0xcd
	.uaword	0x6a7
	.uleb128 0x6
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x2
	.byte	0xd4
	.uaword	0x6a7
	.uleb128 0xe
	.byte	0x8
	.byte	0x8
	.byte	0x26
	.uaword	0x782
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x8
	.byte	0x28
	.uaword	0x782
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"align"
	.byte	0x8
	.byte	0x29
	.uaword	0x190
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23c
	.uleb128 0x6
	.string	"Ifx_Console"
	.byte	0x8
	.byte	0x2a
	.uaword	0x75b
	.uleb128 0x10
	.string	"IfxStdIf_DPipe_write"
	.byte	0x2
	.byte	0xf5
	.byte	0x1
	.uaword	0x1cd
	.byte	0x3
	.uaword	0x7f3
	.uleb128 0x11
	.string	"stdif"
	.byte	0x2
	.byte	0xf5
	.uaword	0x782
	.uleb128 0x11
	.string	"data"
	.byte	0x2
	.byte	0xf5
	.uaword	0x142
	.uleb128 0x11
	.string	"count"
	.byte	0x2
	.byte	0xf5
	.uaword	0x484
	.uleb128 0x11
	.string	"timeout"
	.byte	0x2
	.byte	0xf5
	.uaword	0x1f7
	.byte	0
	.uleb128 0x10
	.string	"__min"
	.byte	0x3
	.byte	0x78
	.byte	0x1
	.uaword	0x19e
	.byte	0x3
	.uaword	0x824
	.uleb128 0x11
	.string	"a"
	.byte	0x3
	.byte	0x78
	.uaword	0x19e
	.uleb128 0x11
	.string	"b"
	.byte	0x3
	.byte	0x78
	.uaword	0x19e
	.uleb128 0x12
	.string	"res"
	.byte	0x3
	.byte	0x7a
	.uaword	0x19e
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Ifx_Console_init"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.uaword	.LFB169
	.uaword	.LFE169
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x857
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x1
	.byte	0x27
	.uaword	0x782
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Ifx_Console_print"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.uaword	0x1cd
	.uaword	.LFB170
	.uaword	.LFE170
	.uaword	.LLST0
	.uaword	0x91c
	.uleb128 0x16
	.string	"format"
	.byte	0x1
	.byte	0x34
	.uaword	0x1ea
	.uaword	.LLST1
	.uleb128 0x17
	.uleb128 0x18
	.uaword	.LASF1
	.uaword	0x92c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.3213
	.uleb128 0x19
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x1a
	.string	"message"
	.byte	0x1
	.byte	0x38
	.uaword	0x931
	.byte	0x3
	.byte	0x91
	.sleb128 -258
	.uleb128 0x1b
	.string	"count"
	.byte	0x1
	.byte	0x39
	.uaword	0x20b
	.uaword	.LLST2
	.uleb128 0x1a
	.string	"args"
	.byte	0x1
	.byte	0x3a
	.uaword	0x181
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uleb128 0x1c
	.uaword	0x79b
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.byte	0x41
	.uleb128 0x1d
	.uaword	0x7e3
	.uaxword	0x7fffffffffffffff
	.uleb128 0x1e
	.uaword	0x7d6
	.byte	0x3
	.byte	0x91
	.sleb128 -2
	.byte	0x9f
	.uleb128 0x1f
	.uaword	0x7ca
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	0x7bd
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x144
	.uaword	0x92c
	.uleb128 0x21
	.uaword	0x12d
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.uaword	0x91c
	.uleb128 0x20
	.uaword	0x144
	.uaword	0x941
	.uleb128 0x21
	.uaword	0x12d
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Ifx_Console_printAlign"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.uaword	0x1cd
	.uaword	.LFB171
	.uaword	.LFE171
	.uaword	.LLST5
	.uaword	0xab2
	.uleb128 0x16
	.string	"format"
	.byte	0x1
	.byte	0x51
	.uaword	0x1ea
	.uaword	.LLST6
	.uleb128 0x17
	.uleb128 0x18
	.uaword	.LASF1
	.uaword	0xac2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.3222
	.uleb128 0x22
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1a
	.string	"message"
	.byte	0x1
	.byte	0x55
	.uaword	0x931
	.byte	0x3
	.byte	0x91
	.sleb128 -277
	.uleb128 0x1b
	.string	"align"
	.byte	0x1
	.byte	0x56
	.uaword	0x20b
	.uaword	.LLST7
	.uleb128 0x1b
	.string	"count"
	.byte	0x1
	.byte	0x56
	.uaword	0x20b
	.uaword	.LLST8
	.uleb128 0x1a
	.string	"spaces"
	.byte	0x1
	.byte	0x57
	.uaword	0xac7
	.byte	0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1a
	.string	"args"
	.byte	0x1
	.byte	0x58
	.uaword	0x181
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uleb128 0x23
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0xa7c
	.uleb128 0x1b
	.string	"scount"
	.byte	0x1
	.byte	0x62
	.uaword	0x20b
	.uaword	.LLST9
	.uleb128 0x24
	.uaword	0x7f3
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.byte	0x63
	.uaword	0xa47
	.uleb128 0x1f
	.uaword	0x80f
	.uaword	.LLST10
	.uleb128 0x1f
	.uaword	0x806
	.uaword	.LLST11
	.uleb128 0x19
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x25
	.uaword	0x818
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x79b
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	0x7e3
	.uaword	.LLST13
	.uleb128 0x1f
	.uaword	0x7d6
	.uaword	.LLST14
	.uleb128 0x1f
	.uaword	0x7ca
	.uaword	.LLST15
	.uleb128 0x1f
	.uaword	0x7bd
	.uaword	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x79b
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0x68
	.uleb128 0x1f
	.uaword	0x7e3
	.uaword	.LLST17
	.uleb128 0x1f
	.uaword	0x7d6
	.uaword	.LLST18
	.uleb128 0x1f
	.uaword	0x7ca
	.uaword	.LLST19
	.uleb128 0x1f
	.uaword	0x7bd
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x144
	.uaword	0xac2
	.uleb128 0x21
	.uaword	0x12d
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.uaword	0xab2
	.uleb128 0x20
	.uaword	0x144
	.uaword	0xad7
	.uleb128 0x21
	.uaword	0x12d
	.byte	0x10
	.byte	0
	.uleb128 0x27
	.string	"Ifx_g_console"
	.byte	0x1
	.byte	0x21
	.uaword	0x788
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Ifx_g_console
	.uleb128 0x28
	.string	"Assert_verboseLevel"
	.byte	0x9
	.byte	0x7b
	.uaword	0x1ac
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB170
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE170
	.uahalf	0x3
	.byte	0x8a
	.sleb128 264
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7-1
	.uaword	.LFE170
	.uahalf	0x2
	.byte	0x91
	.sleb128 -2
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0x91
	.sleb128 -258
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10-1
	.uaword	.LFE170
	.uahalf	0x4
	.byte	0x91
	.sleb128 -258
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x5
	.byte	0x3
	.uaword	Ifx_g_console
	.uaword	.LVL10-1
	.uaword	.LFE170
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB171
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE171
	.uahalf	0x3
	.byte	0x8a
	.sleb128 280
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LFE171
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x91
	.sleb128 -2
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x7fffffffffffffff
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x91
	.sleb128 -2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x5
	.byte	0x3
	.uaword	Ifx_g_console
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0x7fffffffffffffff
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x91
	.sleb128 -4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0x91
	.sleb128 -277
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL27-1
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0x91
	.sleb128 -277
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL25
	.uaword	.LVL27-1
	.uahalf	0x5
	.byte	0x3
	.uaword	Ifx_g_console
	.uaword	.LVL27-1
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6f
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
	.uaword	.LFB169
	.uaword	.LFE169-.LFB169
	.uaword	.LFB170
	.uaword	.LFE170-.LFB170
	.uaword	.LFB171
	.uaword	.LFE171-.LFB171
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LFB169
	.uaword	.LFE169
	.uaword	.LFB170
	.uaword	.LFE170
	.uaword	.LFB171
	.uaword	.LFE171
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"__func__"
.LASF0:
	.string	"standardIo"
	.extern	Ifx_Assert_doLevel,STT_FUNC,0
	.extern	Assert_verboseLevel,STT_OBJECT,4
	.extern	strlen,STT_FUNC,0
	.extern	vsprintf,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
