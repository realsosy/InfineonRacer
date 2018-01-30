	.file	"fifo.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.fifo_display_used,"ax",@progbits
	.align 1
	.global	fifo_display_used
	.type	fifo_display_used, @function
fifo_display_used:
.LFB349:
	.file 1 "0_Src/2_CDrv/Tricore/Tft/fifo.c"
	.loc 1 87 0
	.loc 1 89 0
	movh.a	%a15, hi:fifodisplay
	lea	%a15, [%a15] lo:fifodisplay
	ld.w	%d2, [%a15] 8
	ld.w	%d15, [%a15] 12
	sub	%d2, %d15
.LVL0:
	.loc 1 90 0
	jltz	%d2, .L4
	.loc 1 93 0
	ret
.L4:
	.loc 1 91 0
	ld.w	%d15, [%a15] 4
	add	%d2, %d15
.LVL1:
	.loc 1 93 0
	ret
.LFE349:
	.size	fifo_display_used, .-fifo_display_used
.section .text.fifo_max_used,"ax",@progbits
	.align 1
	.global	fifo_max_used
	.type	fifo_max_used, @function
fifo_max_used:
.LFB350:
	.loc 1 96 0
	.loc 1 98 0
	movh.a	%a15, hi:fifodisplay
	lea	%a15, [%a15] lo:fifodisplay
	ld.w	%d2, [%a15] 16
	ret
.LFE350:
	.size	fifo_max_used, .-fifo_max_used
.section .text.fifo_display_init,"ax",@progbits
	.align 1
	.global	fifo_display_init
	.type	fifo_display_init, @function
fifo_display_init:
.LFB351:
	.loc 1 101 0
.LVL2:
	.loc 1 102 0
	mov	%d15, 0
	movh.a	%a2, hi:fifodisplay
	lea	%a15, [%a2] lo:fifodisplay
	st.w	[%a15] 8, %d15
	.loc 1 103 0
	st.w	[%a15] 12, %d15
	.loc 1 104 0
	st.w	[%a15] 4, %d4
	.loc 1 105 0
	st.w	[%a15] 16, %d15
	.loc 1 106 0
	st.a	[%a2] lo:fifodisplay, %a4
	.loc 1 107 0
	ret
.LFE351:
	.size	fifo_display_init, .-fifo_display_init
.section .text.FIFO_DISPLAY_USED,"ax",@progbits
	.align 1
	.global	FIFO_DISPLAY_USED
	.type	FIFO_DISPLAY_USED, @function
FIFO_DISPLAY_USED:
.LFB352:
	.loc 1 110 0
	.loc 1 112 0
	movh.a	%a15, hi:fifodisplay
	lea	%a15, [%a15] lo:fifodisplay
	ld.w	%d2, [%a15] 8
	ld.w	%d15, [%a15] 12
	sub	%d2, %d15
.LVL3:
	.loc 1 113 0
	jltz	%d2, .L10
.L8:
	.loc 1 115 0
	ld.w	%d15, [%a15] 16
	jge.u	%d15, %d2, .L9
	.loc 1 116 0
	st.w	[%a15] 16, %d2
.L9:
	.loc 1 118 0
	ret
.L10:
	.loc 1 114 0
	ld.w	%d15, [%a15] 4
	add	%d2, %d15
.LVL4:
	j	.L8
.LFE352:
	.size	FIFO_DISPLAY_USED, .-FIFO_DISPLAY_USED
.section .text.FIFO_DISPLAY_FREE,"ax",@progbits
	.align 1
	.global	FIFO_DISPLAY_FREE
	.type	FIFO_DISPLAY_FREE, @function
FIFO_DISPLAY_FREE:
.LFB353:
	.loc 1 121 0
	.loc 1 122 0
	movh.a	%a15, hi:fifodisplay
	lea	%a15, [%a15] lo:fifodisplay
.LBB4:
.LBB5:
	.loc 1 112 0
	ld.w	%d2, [%a15] 8
	ld.w	%d15, [%a15] 12
.LBE5:
.LBE4:
	.loc 1 122 0
	ld.w	%d3, [%a15] 4
.LBB7:
.LBB6:
	.loc 1 112 0
	sub	%d2, %d15
.LVL5:
	.loc 1 114 0
	lt	%d15, %d2, 0
	cadd	%d2, %d15, %d2, %d3
.LVL6:
	.loc 1 115 0
	ld.w	%d15, [%a15] 16
	jge.u	%d15, %d2, .L13
	.loc 1 116 0
	st.w	[%a15] 16, %d2
.L13:
.LBE6:
.LBE7:
	.loc 1 123 0
	sub	%d2, %d3, %d2
.LVL7:
	ret
.LFE353:
	.size	FIFO_DISPLAY_FREE, .-FIFO_DISPLAY_FREE
.section .text.PUT_FIFO_DISPLAY,"ax",@progbits
	.align 1
	.global	PUT_FIFO_DISPLAY
	.type	PUT_FIFO_DISPLAY, @function
PUT_FIFO_DISPLAY:
.LFB354:
	.loc 1 127 0
.LVL8:
	.loc 1 129 0
	movh.a	%a2, hi:fifodisplay
	lea	%a15, [%a2] lo:fifodisplay
	ld.w	%d15, [%a15] 8
	.loc 1 130 0
	ld.w	%d2, [%a15] 4
	.loc 1 129 0
	add	%d15, 1
.LVL9:
	.loc 1 131 0
	ne	%d2, %d15, %d2
	.loc 1 132 0
	ld.w	%d3, [%a15] 12
	.loc 1 131 0
	seln	%d15, %d2, %d2, %d15
.LVL10:
	.loc 1 133 0
	mov	%d2, 1
	.loc 1 132 0
	jeq	%d3, %d15, .L16
	.loc 1 134 0
	ld.a	%a2, [%a2] lo:fifodisplay
	.loc 1 136 0
	mov	%d2, 0
	.loc 1 134 0
	addsc.a	%a2, %a2, %d15, 2
	st.w	[%a2]0, %d4
	.loc 1 135 0
	st.w	[%a15] 8, %d15
.L16:
	.loc 1 137 0
	ret
.LFE354:
	.size	PUT_FIFO_DISPLAY, .-PUT_FIFO_DISPLAY
.section .text.GET_FIFO_DISPLAY,"ax",@progbits
	.align 1
	.global	GET_FIFO_DISPLAY
	.type	GET_FIFO_DISPLAY, @function
GET_FIFO_DISPLAY:
.LFB355:
	.loc 1 139 0
.LVL11:
	.loc 1 141 0
	movh.a	%a2, hi:fifodisplay
	lea	%a15, [%a2] lo:fifodisplay
	ld.w	%d15, [%a15] 12
.LVL12:
	.loc 1 142 0
	ld.w	%d3, [%a15] 8
	.loc 1 143 0
	mov	%d2, 1
	.loc 1 142 0
	jeq	%d3, %d15, .L20
	.loc 1 145 0
	ld.w	%d2, [%a15] 4
	.loc 1 144 0
	add	%d15, 1
.LVL13:
	.loc 1 145 0
	jeq	%d15, %d2, .L23
	sh	%d2, %d15, 2
.LVL14:
.L21:
	.loc 1 147 0
	ld.a	%a2, [%a2] lo:fifodisplay
	addsc.a	%a2, %a2, %d2, 0
	ld.w	%d2, [%a2]0
	st.w	[%a4]0, %d2
	.loc 1 148 0
	st.w	[%a15] 12, %d15
	.loc 1 149 0
	mov	%d2, 0
.L20:
	.loc 1 150 0
	ret
.L23:
	.loc 1 145 0
	mov	%d2, 0
	.loc 1 146 0
	mov	%d15, 0
.LVL15:
	j	.L21
.LFE355:
	.size	GET_FIFO_DISPLAY, .-GET_FIFO_DISPLAY
.section .text.GET_FIFO_DISPLAY_NODROP,"ax",@progbits
	.align 1
	.global	GET_FIFO_DISPLAY_NODROP
	.type	GET_FIFO_DISPLAY_NODROP, @function
GET_FIFO_DISPLAY_NODROP:
.LFB356:
	.loc 1 153 0
.LVL16:
	.loc 1 155 0
	movh.a	%a2, hi:fifodisplay
	lea	%a15, [%a2] lo:fifodisplay
	ld.w	%d15, [%a15] 12
.LVL17:
	.loc 1 156 0
	ld.w	%d3, [%a15] 8
	.loc 1 157 0
	mov	%d2, 1
	.loc 1 156 0
	jeq	%d3, %d15, .L25
.LVL18:
	.loc 1 159 0
	ld.a	%a15, [%a15] 4
	.loc 1 158 0
	add	%d15, 1
	.loc 1 159 0
	sh	%d2, %d15, 2
	mov.d	%d3, %a15
	.loc 1 161 0
	ld.a	%a15, [%a2] lo:fifodisplay
	.loc 1 159 0
	ne	%d15, %d15, %d3
	cmov	%d15, %d15, %d2
.LVL19:
	.loc 1 161 0
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 162 0
	mov	%d2, 0
	.loc 1 161 0
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
.L25:
	.loc 1 163 0
	ret
.LFE356:
	.size	GET_FIFO_DISPLAY_NODROP, .-GET_FIFO_DISPLAY_NODROP
	.global	fifodisplay
.section .bss_cpu0,"awc0",@progbits
	.align 2
	.type	fifodisplay, @object
	.size	fifodisplay, 20
fifodisplay:
	.zero	20
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
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/2_CDrv/Tricore/Tft/fifo.h"
	.file 4 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x46d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Tft/fifo.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x30
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
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x95
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0xa1
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
	.string	"tfifodisplay"
	.byte	0x14
	.byte	0x3
	.byte	0x15
	.uaword	0x1f9
	.uleb128 0x5
	.string	"pFIFO_DISPLAY"
	.byte	0x3
	.byte	0x17
	.uaword	0x1f9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"FIFO_DISPLAY_SIZE"
	.byte	0x3
	.byte	0x18
	.uaword	0x10e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"FIFO_DISPLAY_IN"
	.byte	0x3
	.byte	0x19
	.uaword	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"FIFO_DISPLAY_OUT"
	.byte	0x3
	.byte	0x1a
	.uaword	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"FIFO_MAX_USED"
	.byte	0x3
	.byte	0x1b
	.uaword	0x10e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x10e
	.uleb128 0x7
	.uaword	0x100
	.uleb128 0x3
	.string	"TFIFODISPLAY"
	.byte	0x3
	.byte	0x1c
	.uaword	0x162
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x8
	.byte	0x1
	.string	"FIFO_DISPLAY_USED"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	0x100
	.byte	0x3
	.uaword	0x252
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.uaword	0x100
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"fifo_display_used"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	0x100
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x288
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x58
	.uaword	0x100
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"fifo_max_used"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	0x10e
	.uaword	.LFB350
	.uaword	.LFE350
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.string	"fifo_display_init"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	.LFB351
	.uaword	.LFE351
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2ee
	.uleb128 0xe
	.string	"pFIFO"
	.byte	0x1
	.byte	0x64
	.uaword	0x1f9
	.byte	0x1
	.byte	0x64
	.uleb128 0xe
	.string	"size"
	.byte	0x1
	.byte	0x64
	.uaword	0x10e
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xf
	.uaword	0x228
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x30a
	.uleb128 0x10
	.uaword	0x248
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"FIFO_DISPLAY_FREE"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	0x100
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x354
	.uleb128 0x11
	.uaword	0x228
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7a
	.uleb128 0x12
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x13
	.uaword	0x248
	.uaword	.LLST0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"PUT_FIFO_DISPLAY"
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.uaword	0x100
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x39c
	.uleb128 0xe
	.string	"value"
	.byte	0x1
	.byte	0x7e
	.uaword	0x10e
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.string	"index"
	.byte	0x1
	.byte	0x80
	.uaword	0x100
	.byte	0x1
	.byte	0x5f
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"GET_FIFO_DISPLAY"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.uaword	0x100
	.uaword	.LFB355
	.uaword	.LFE355
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3e7
	.uleb128 0xe
	.string	"pvalue"
	.byte	0x1
	.byte	0x8a
	.uaword	0x1f9
	.byte	0x1
	.byte	0x64
	.uleb128 0x14
	.string	"index"
	.byte	0x1
	.byte	0x8c
	.uaword	0x100
	.uaword	.LLST1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"GET_FIFO_DISPLAY_NODROP"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	0x100
	.uaword	.LFB356
	.uaword	.LFE356
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x439
	.uleb128 0xe
	.string	"pvalue"
	.byte	0x1
	.byte	0x98
	.uaword	0x1f9
	.byte	0x1
	.byte	0x64
	.uleb128 0x14
	.string	"index"
	.byte	0x1
	.byte	0x9a
	.uaword	0x100
	.uaword	.LLST2
	.byte	0
	.uleb128 0x15
	.string	"Assert_verboseLevel"
	.byte	0x4
	.byte	0x7b
	.uaword	0x10e
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.string	"fifodisplay"
	.byte	0x1
	.byte	0x41
	.uaword	0x204
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	fifodisplay
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x5
	.byte	0x3
	.uaword	fifodisplay+12
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x5
	.byte	0x3
	.uaword	fifodisplay+12
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x9
	.byte	0x3
	.uaword	fifodisplay+12
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LBB5
	.uaword	.LBE5
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	0
	.uaword	0
	.uaword	.LFB349
	.uaword	.LFE349
	.uaword	.LFB350
	.uaword	.LFE350
	.uaword	.LFB351
	.uaword	.LFE351
	.uaword	.LFB352
	.uaword	.LFE352
	.uaword	.LFB353
	.uaword	.LFE353
	.uaword	.LFB354
	.uaword	.LFE354
	.uaword	.LFB355
	.uaword	.LFE355
	.uaword	.LFB356
	.uaword	.LFE356
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
