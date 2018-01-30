	.file	"Ifx_CircularBuffer.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Ifx_CircularBuffer_get32,"ax",@progbits
	.align 1
	.global	Ifx_CircularBuffer_get32
	.type	Ifx_CircularBuffer_get32, @function
Ifx_CircularBuffer_get32:
.LFB149:
	.file 1 "0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.c"
	.loc 1 30 0
.LVL0:
	.loc 1 31 0
	ld.a	%a15, [%a4]0
	ld.hu	%d15, [%a4] 4
	.loc 1 35 0
	ld.hu	%d3, [%a4] 6
	.loc 1 31 0
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 33 0
	add	%d15, 4
	extr.u	%d15, %d15, 0, 16
	.loc 1 31 0
	ld.w	%d2, [%a15]0
.LVL1:
	.loc 1 33 0
	st.h	[%a4] 4, %d15
	.loc 1 35 0
	jlt.u	%d15, %d3, .L2
	.loc 1 37 0
	mov	%d15, 0
	st.h	[%a4] 4, %d15
.L2:
	.loc 1 41 0
	ret
.LFE149:
	.size	Ifx_CircularBuffer_get32, .-Ifx_CircularBuffer_get32
.section .text.Ifx_CircularBuffer_get16,"ax",@progbits
	.align 1
	.global	Ifx_CircularBuffer_get16
	.type	Ifx_CircularBuffer_get16, @function
Ifx_CircularBuffer_get16:
.LFB150:
	.loc 1 45 0
.LVL2:
	.loc 1 46 0
	ld.a	%a15, [%a4]0
	ld.hu	%d15, [%a4] 4
	.loc 1 50 0
	ld.hu	%d3, [%a4] 6
	.loc 1 46 0
	addsc.a	%a15, %a15, %d15, 1
	.loc 1 48 0
	add	%d15, 2
	extr.u	%d15, %d15, 0, 16
	.loc 1 46 0
	ld.hu	%d2, [%a15]0
.LVL3:
	.loc 1 48 0
	st.h	[%a4] 4, %d15
	.loc 1 50 0
	jlt.u	%d15, %d3, .L5
	.loc 1 52 0
	mov	%d15, 0
	st.h	[%a4] 4, %d15
.L5:
	.loc 1 56 0
	ret
.LFE150:
	.size	Ifx_CircularBuffer_get16, .-Ifx_CircularBuffer_get16
.section .text.Ifx_CircularBuffer_addDataIncr,"ax",@progbits
	.align 1
	.global	Ifx_CircularBuffer_addDataIncr
	.type	Ifx_CircularBuffer_addDataIncr, @function
Ifx_CircularBuffer_addDataIncr:
.LFB151:
	.loc 1 67 0
.LVL4:
	.loc 1 68 0
	ld.a	%a15, [%a4]0
	ld.hu	%d15, [%a4] 4
	.loc 1 71 0
	ld.hu	%d2, [%a4] 6
	.loc 1 68 0
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 69 0
	add	%d15, 4
	extr.u	%d15, %d15, 0, 16
	.loc 1 68 0
	st.w	[%a15]0, %d4
	.loc 1 69 0
	st.h	[%a4] 4, %d15
	.loc 1 71 0
	jlt.u	%d15, %d2, .L6
	.loc 1 73 0
	mov	%d15, 0
	st.h	[%a4] 4, %d15
.L6:
	ret
.LFE151:
	.size	Ifx_CircularBuffer_addDataIncr, .-Ifx_CircularBuffer_addDataIncr
.section .text.Ifx_CircularBuffer_read8,"ax",@progbits
	.align 1
	.global	Ifx_CircularBuffer_read8
	.type	Ifx_CircularBuffer_read8, @function
Ifx_CircularBuffer_read8:
.LFB152:
	.loc 1 79 0
.LVL5:
	.loc 1 91 0
	add	%d4, -1
.LVL6:
	extr.u	%d15, %d4, 0, 16
	.loc 1 79 0
	mov.aa	%a2, %a5
	.loc 1 91 0
	mov	%d3, 0
	mov.a	%a15, %d15
	jnz.t	%d4, 15, .L13
.LVL7:
.L10:
	.loc 1 85 0
	ld.w	%d2, [%a4]0
	ld.hu	%d15, [%a4] 4
	mov.a	%a5, %d2
	addsc.a	%a3, %a5, %d15, 0
	ld.bu	%d15, [%a3]0
	st.b	[%a2+]1, %d15
.LVL8:
	.loc 1 87 0
	ld.h	%d15, [%a4] 4
	.loc 1 89 0
	ld.hu	%d2, [%a4] 6
	.loc 1 87 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a4] 4, %d15
	.loc 1 89 0
	jlt.u	%d15, %d2, .L9
	.loc 1 91 0
	st.h	[%a4] 4, %d3
.L9:
	loop	%a15, .L10
	.loc 1 96 0
	ret
.LVL9:
.L13:
	mov.a	%a15, 0
	j	.L10
.LFE152:
	.size	Ifx_CircularBuffer_read8, .-Ifx_CircularBuffer_read8
.section .text.Ifx_CircularBuffer_read32,"ax",@progbits
	.align 1
	.global	Ifx_CircularBuffer_read32
	.type	Ifx_CircularBuffer_read32, @function
Ifx_CircularBuffer_read32:
.LFB153:
	.loc 1 100 0
.LVL10:
	.loc 1 112 0
	add	%d4, -1
.LVL11:
	extr.u	%d2, %d4, 0, 16
	.loc 1 102 0
	ld.a	%a6, [%a4]0
.LVL12:
	ld.hu	%d3, [%a4] 6
	.loc 1 106 0
	ld.hu	%d15, [%a4] 4
	.loc 1 102 0
	mov.aa	%a2, %a5
	.loc 1 112 0
	mov.a	%a15, %d2
	jnz.t	%d4, 15, .L19
.LVL13:
.L16:
	.loc 1 106 0
	addsc.a	%a3, %a6, %d15, 0
	.loc 1 108 0
	add	%d15, 4
	extr.u	%d15, %d15, 0, 16
	.loc 1 106 0
	ld.w	%d2, [%a3]0
	st.w	[%a2+]4, %d2
.LVL14:
	.loc 1 112 0
	lt.u	%d2, %d15, %d3
	seln	%d15, %d2, %d2, %d15
	.loc 1 115 0
	loop	%a15, .L16
	.loc 1 116 0
	st.h	[%a4] 4, %d15
	.loc 1 119 0
	ret
.LVL15:
.L19:
	mov.a	%a15, 0
	j	.L16
.LFE153:
	.size	Ifx_CircularBuffer_read32, .-Ifx_CircularBuffer_read32
.section .text.Ifx_CircularBuffer_write8,"ax",@progbits
	.align 1
	.global	Ifx_CircularBuffer_write8
	.type	Ifx_CircularBuffer_write8, @function
Ifx_CircularBuffer_write8:
.LFB154:
	.loc 1 123 0
.LVL16:
	.loc 1 135 0
	add	%d4, -1
.LVL17:
	extr.u	%d15, %d4, 0, 16
	.loc 1 123 0
	mov.aa	%a2, %a5
	.loc 1 135 0
	mov	%d3, 0
	mov.a	%a15, %d15
	jnz.t	%d4, 15, .L25
.LVL18:
.L22:
	.loc 1 129 0
	ld.w	%d4, [%a4]0
	ld.hu	%d15, [%a4] 4
	mov.a	%a5, %d4
	ld.bu	%d2, [%a2+]1
	addsc.a	%a3, %a5, %d15, 0
	st.b	[%a3]0, %d2
.LVL19:
	.loc 1 131 0
	ld.h	%d15, [%a4] 4
	.loc 1 133 0
	ld.hu	%d2, [%a4] 6
	.loc 1 131 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a4] 4, %d15
	.loc 1 133 0
	jlt.u	%d15, %d2, .L21
	.loc 1 135 0
	st.h	[%a4] 4, %d3
.L21:
	loop	%a15, .L22
	.loc 1 140 0
	ret
.LVL20:
.L25:
	mov.a	%a15, 0
	j	.L22
.LFE154:
	.size	Ifx_CircularBuffer_write8, .-Ifx_CircularBuffer_write8
.section .text.Ifx_CircularBuffer_write32,"ax",@progbits
	.align 1
	.global	Ifx_CircularBuffer_write32
	.type	Ifx_CircularBuffer_write32, @function
Ifx_CircularBuffer_write32:
.LFB155:
	.loc 1 144 0
.LVL21:
	.loc 1 156 0
	add	%d4, -1
.LVL22:
	extr.u	%d2, %d4, 0, 16
	.loc 1 146 0
	ld.a	%a6, [%a4]0
.LVL23:
	ld.hu	%d3, [%a4] 6
	.loc 1 150 0
	ld.hu	%d15, [%a4] 4
	.loc 1 146 0
	mov.aa	%a2, %a5
	.loc 1 156 0
	mov.a	%a15, %d2
	jnz.t	%d4, 15, .L31
.LVL24:
.L28:
	.loc 1 150 0
	addsc.a	%a3, %a6, %d15, 0
	.loc 1 152 0
	add	%d15, 4
	extr.u	%d15, %d15, 0, 16
	.loc 1 150 0
	ld.w	%d2, [%a2+]4
	st.w	[%a3]0, %d2
.LVL25:
	.loc 1 156 0
	lt.u	%d2, %d15, %d3
	seln	%d15, %d2, %d2, %d15
	.loc 1 159 0
	loop	%a15, .L28
	.loc 1 160 0
	st.h	[%a4] 4, %d15
	.loc 1 163 0
	ret
.LVL26:
.L31:
	mov.a	%a15, 0
	j	.L28
.LFE155:
	.size	Ifx_CircularBuffer_write32, .-Ifx_CircularBuffer_write32
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB150
	.uaword	.LFE150-.LFB150
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB151
	.uaword	.LFE151-.LFB151
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB152
	.uaword	.LFE152-.LFB152
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB153
	.uaword	.LFE153-.LFB153
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB154
	.uaword	.LFE154-.LFB154
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB155
	.uaword	.LFE155-.LFB155
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4e9
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/_Lib/DataHandling/Ifx_CircularBuffer.c"
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
	.uaword	0xf6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x115
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x130
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0xbe
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
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x38
	.uaword	0x107
	.uleb128 0x5
	.byte	0x8
	.byte	0x3
	.byte	0x3c
	.uaword	0x1e6
	.uleb128 0x6
	.string	"base"
	.byte	0x3
	.byte	0x3e
	.uaword	0x19a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"index"
	.byte	0x3
	.byte	0x3f
	.uaword	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"length"
	.byte	0x3
	.byte	0x40
	.uaword	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CircularBuffer"
	.byte	0x3
	.byte	0x41
	.uaword	0x1ad
	.uleb128 0x7
	.byte	0x1
	.string	"Ifx_CircularBuffer_get32"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.uaword	0x146
	.uaword	.LFB149
	.uaword	.LFE149
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x24d
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1d
	.uaword	0x24d
	.byte	0x1
	.byte	0x64
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x1f
	.uaword	0x146
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x1e6
	.uleb128 0x7
	.byte	0x1
	.string	"Ifx_CircularBuffer_get16"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.uaword	0x122
	.uaword	.LFB150
	.uaword	.LFE150
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x29f
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2c
	.uaword	0x24d
	.byte	0x1
	.byte	0x64
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2e
	.uaword	0x122
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"Ifx_CircularBuffer_addDataIncr"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	.LFB151
	.uaword	.LFE151
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2ed
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x42
	.uaword	0x24d
	.byte	0x1
	.byte	0x64
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x42
	.uaword	0x146
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"Ifx_CircularBuffer_read8"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	0x19a
	.uaword	.LFB152
	.uaword	.LFE152
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x35a
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4e
	.uaword	0x24d
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4e
	.uaword	0x19a
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x4e
	.uaword	0x19c
	.uaword	.LLST1
	.uleb128 0xd
	.string	"Dest"
	.byte	0x1
	.byte	0x50
	.uaword	0x35a
	.uaword	.LLST2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xe9
	.uleb128 0x7
	.byte	0x1
	.string	"Ifx_CircularBuffer_read32"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	0x19a
	.uaword	.LFB153
	.uaword	.LFE153
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3db
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x63
	.uaword	0x24d
	.byte	0x1
	.byte	0x64
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x63
	.uaword	0x19a
	.byte	0x1
	.byte	0x65
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x63
	.uaword	0x19c
	.uaword	.LLST3
	.uleb128 0xd
	.string	"Dest"
	.byte	0x1
	.byte	0x65
	.uaword	0x3db
	.uaword	.LLST4
	.uleb128 0xe
	.string	"base"
	.byte	0x1
	.byte	0x66
	.uaword	0x35a
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x146
	.uleb128 0x7
	.byte	0x1
	.string	"Ifx_CircularBuffer_write8"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	0x451
	.uaword	.LFB154
	.uaword	.LFE154
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x451
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x7a
	.uaword	0x24d
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x7a
	.uaword	0x451
	.uaword	.LLST5
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x7a
	.uaword	0x19c
	.uaword	.LLST6
	.uleb128 0xd
	.string	"source"
	.byte	0x1
	.byte	0x7c
	.uaword	0x458
	.uaword	.LLST7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x457
	.uleb128 0xf
	.uleb128 0xa
	.byte	0x4
	.uaword	0x45e
	.uleb128 0x10
	.uaword	0xe9
	.uleb128 0x7
	.byte	0x1
	.string	"Ifx_CircularBuffer_write32"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x451
	.uaword	.LFB155
	.uaword	.LFE155
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4e1
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8f
	.uaword	0x24d
	.byte	0x1
	.byte	0x64
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8f
	.uaword	0x451
	.byte	0x1
	.byte	0x65
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8f
	.uaword	0x19c
	.uaword	.LLST8
	.uleb128 0xd
	.string	"source"
	.byte	0x1
	.byte	0x91
	.uaword	0x4e1
	.uaword	.LLST9
	.uleb128 0xe
	.string	"base"
	.byte	0x1
	.byte	0x92
	.uaword	0x35a
	.byte	0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x4e7
	.uleb128 0x10
	.uaword	0x146
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x34
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
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
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9
	.uaword	.LFE152
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8
	.uaword	.LFE152
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL15
	.uaword	.LFE153
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL20
	.uaword	.LFE154
	.uahalf	0x1
	.byte	0x62
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
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL19
	.uaword	.LFE154
	.uahalf	0x1
	.byte	0x62
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
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL26
	.uaword	.LFE155
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.uaword	.LFB150
	.uaword	.LFE150-.LFB150
	.uaword	.LFB151
	.uaword	.LFE151-.LFB151
	.uaword	.LFB152
	.uaword	.LFE152-.LFB152
	.uaword	.LFB153
	.uaword	.LFE153-.LFB153
	.uaword	.LFB154
	.uaword	.LFE154-.LFB154
	.uaword	.LFB155
	.uaword	.LFE155-.LFB155
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB149
	.uaword	.LFE149
	.uaword	.LFB150
	.uaword	.LFE150
	.uaword	.LFB151
	.uaword	.LFE151
	.uaword	.LFB152
	.uaword	.LFE152
	.uaword	.LFB153
	.uaword	.LFE153
	.uaword	.LFB154
	.uaword	.LFE154
	.uaword	.LFB155
	.uaword	.LFE155
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"data"
.LASF2:
	.string	"count"
.LASF0:
	.string	"buffer"
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
