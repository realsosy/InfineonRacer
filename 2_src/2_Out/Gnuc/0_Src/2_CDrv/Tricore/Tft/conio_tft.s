	.file	"conio_tft.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.memcpy32,"ax",@progbits
	.align 1
	.global	memcpy32
	.type	memcpy32, @function
memcpy32:
.LFB349:
	.file 1 "0_Src/2_CDrv/Tricore/Tft/conio_tft.c"
	.loc 1 88 0
.LVL0:
	.loc 1 90 0
	jz	%d4, .L1
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL1:
.L3:
	.loc 1 91 0 discriminator 2
	ld.w	%d15, [%a5+]4
	st.w	[%a4+]4, %d15
.LVL2:
	.loc 1 90 0 discriminator 2
	loop	%a15, .L3
.L1:
	ret
.LFE349:
	.size	memcpy32, .-memcpy32
.section .text.bar_display,"ax",@progbits
	.align 1
	.global	bar_display
	.type	bar_display, @function
bar_display:
.LFB351:
	.loc 1 565 0
.LVL3:
	.loc 1 566 0
	ld.bu	%d5, [%a4]0
	mov	%d4, 0
.LVL4:
	.loc 1 565 0
	mov.aa	%a15, %a4
	.loc 1 566 0
	call	conio_ascii_textattr
.LVL5:
	.loc 1 567 0
	ld.b	%d5, [%a15] 2
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
	.loc 1 568 0
	mov	%d4, 0
	lea	%a4, [%a15] 20
	j	conio_ascii_cputs
.LFE351:
	.size	bar_display, .-bar_display
.section .text.conio_periodic,"ax",@progbits
	.align 1
	.global	conio_periodic
	.type	conio_periodic, @function
conio_periodic:
.LFB350:
	.loc 1 95 0
.LVL6:
	.loc 1 98 0
	movh.a	%a12, hi:conio_driver
	lea	%a12, [%a12] lo:conio_driver
	ld.w	%d15, [%a12] 204
	.loc 1 95 0
	mov.aa	%a13, %a4
	sub.a	%SP, 112
.LCFI0:
	.loc 1 95 0
	mov	%e8, %d5, %d4
	mov.aa	%a4, %a5
.LVL7:
	.loc 1 98 0
	jnz	%d15, .L8
.LVL8:
	.loc 1 98 0 is_stmt 0 discriminator 1
	ld.a	%a3, [%a12] 200
	jz.a	%a3, .L8
	.loc 1 98 0
	movh.a	%a6, hi:colortable_ascii
	lea	%a6, [%a6] lo:colortable_ascii
	.loc 1 94 0 is_stmt 1
	mov.aa	%a5, %a3
	mov.a	%a15, 7
.L9:
.LBB49:
.LBB50:
	.loc 1 91 0
	ld.w	%d15, [%a6+]4
	st.w	[%a5+]4, %d15
.LVL9:
	loop	%a15, .L9
.LVL10:
.LBE50:
.LBE49:
	.loc 1 103 0
	ld.a	%a7, [%a12] 8
	lea	%a6, [%a3] 32
.LVL11:
	.loc 1 94 0
	lea	%a5, [%a3] 72
.LVL12:
	mov.a	%a15, 9
.LVL13:
.L10:
.LBB51:
.LBB52:
	.loc 1 91 0
	ld.w	%d15, [%a7+]4
	st.w	[%a6+]4, %d15
.LVL14:
	loop	%a15, .L10
.LVL15:
.LBE52:
.LBE51:
	.loc 1 105 0
	ld.a	%a7, [%a12] 12
	.loc 1 94 0
	lea	%a6, [%a3] 112
.LVL16:
	mov.a	%a15, 9
.LVL17:
.L11:
.LBB53:
.LBB54:
	.loc 1 91 0
	ld.w	%d15, [%a7+]4
	st.w	[%a5+]4, %d15
.LVL18:
	loop	%a15, .L11
.LVL19:
.LBE54:
.LBE53:
	.loc 1 107 0
	ld.w	%d2, [%a12] 216
.LVL20:
	.loc 1 94 0
	lea	%a5, [%a3] 872
.LVL21:
	.loc 1 107 0
	sh	%d3, %d2, 5
	addsc.a	%a2, %a12, %d3, 0
	.loc 1 94 0
	lea	%a15, 189
	.loc 1 107 0
	ld.a	%a2, [%a2] 8
	.loc 1 94 0
	mov.aa	%a3, %a2
.LVL22:
.L12:
.LBB55:
.LBB56:
	.loc 1 91 0
	ld.w	%d15, [%a3+]4
	st.w	[%a6+]4, %d15
.LVL23:
	loop	%a15, .L12
.LVL24:
.LBE56:
.LBE55:
	.loc 1 109 0
	addsc.a	%a15, %a12, %d3, 0
	ld.w	%d15, [%a15] 16
	jeq	%d15, 1, .L89
	.loc 1 116 0
	jeq	%d15, 3, .L90
	.loc 1 121 0
	jeq	%d15, 4, .L91
	.loc 1 126 0
	jne	%d15, 5, .L15
	.loc 1 94 0
	movh.a	%a15, hi:18239
	.loc 1 128 0
	mov.aa	%a3, %a5
.LVL25:
	.loc 1 94 0
	lea	%a15, [%a15] lo:18239
.LVL26:
.L20:
.LBB57:
.LBB58:
	.loc 1 91 0
	ld.w	%d15, [%a2+]4
	st.w	[%a3+]4, %d15
.LVL27:
	loop	%a15, .L20
.LVL28:
.L15:
.LBE58:
.LBE57:
	.loc 1 134 0
	mov	%d15, 1
	.loc 1 133 0
	st.w	[%a12] 208, %d2
	.loc 1 134 0
	st.w	[%a12] 204, %d15
.LVL29:
.L8:
.LBB59:
	.loc 1 138 0
#APP
	# 138 "0_Src/2_CDrv/Tricore/Tft/conio_tft.c" 1
	mfcr %d15, LO:0xFC04
	# 0 "" 2
.LVL30:
#NO_APP
.LBE59:
	movh	%d11, hi:control
	mov.a	%a2, %d11
	st.w	[%a2] lo:control, %d15
	.loc 1 142 0
	ld.w	%d15, [%a12] 220
.LVL31:
	jz	%d15, .L92
.LVL32:
	.loc 1 175 0 discriminator 1
	ld.w	%d2, [%A0] SM:conio_dialog_list
	jeq	%d15, %d2, .L93
.LVL33:
.L28:
	.loc 1 180 0
	jnz	%d15, .L29
	.loc 1 182 0
	ld.w	%d15, [%a12] 216
	jeq	%d15, 1, .L94
	.loc 1 193 0
	ge	%d15, %d9, 19
	jz	%d15, .L95
.L29:
.LBB60:
	.loc 1 200 0
#APP
	# 200 "0_Src/2_CDrv/Tricore/Tft/conio_tft.c" 1
	mfcr %d15, LO:0xFC04
	# 0 "" 2
.LVL34:
#NO_APP
.LBE60:
	mov.a	%a3, %d11
	lea	%a15, [%a3] lo:control
	st.w	[%a15] 128, %d15
.LBB61:
	.loc 1 202 0
#APP
	# 202 "0_Src/2_CDrv/Tricore/Tft/conio_tft.c" 1
	mfcr %d15, LO:0xFC04
	# 0 "" 2
.LVL35:
#NO_APP
.LBE61:
	st.w	[%a15] 24, %d15
.LVL36:
.LBB62:
	.loc 1 207 0
	call	FIFO_DISPLAY_USED
.LVL37:
.LBB63:
	.loc 1 218 0
	movh	%d13, hi:.L53
.LBE63:
	.loc 1 207 0
	mov	%d10, %d2
.LVL38:
	.loc 1 206 0
	mov	%d15, 0
.LVL39:
.LBB88:
	.loc 1 218 0
	addi	%d13, %d13, lo:.L53
.LBB64:
	.loc 1 493 0
	mov	%d9, 0
.LVL40:
.L63:
.LBE64:
	.loc 1 211 0
	lea	%a4, [%SP] 104
	call	GET_FIFO_DISPLAY_NODROP
	jnz	%d2, .L31
	.loc 1 213 0
	ld.hu	%d8, [%SP] 106
	call	FIFO_DISPLAY_USED
	jlt.u	%d2, %d8, .L31
	.loc 1 215 0
	lea	%a4, [%SP] 104
	call	GET_FIFO_DISPLAY
	jz	%d2, .L32
.LBB65:
.LBB66:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L32:
.LBE66:
.LBE65:
	.loc 1 218 0
	ld.hu	%d3, [%SP] 104
	addi	%d3, %d3, 31
	addih	%d3, %d3, 65535
	ge.u	%d4, %d3, 22
	jz	%d4, .L96
.L33:
.LBB67:
.LBB68:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE68:
.LBE67:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
.L31:
.LBE88:
.LBE62:
.LBB91:
	.loc 1 517 0
#APP
	# 517 "0_Src/2_CDrv/Tricore/Tft/conio_tft.c" 1
	mfcr %d15, LO:0xFC04
	# 0 "" 2
.LVL41:
#NO_APP
.LBE91:
	st.w	[%a15] 152, %d15
.LBB92:
	.loc 1 518 0
#APP
	# 518 "0_Src/2_CDrv/Tricore/Tft/conio_tft.c" 1
	mfcr %d15, LO:0xFC04
	# 0 "" 2
.LVL42:
#NO_APP
.LBE92:
	st.w	[%a15] 4, %d15
	.loc 1 519 0
	ld.w	%d15, [%a12] 216
.LVL43:
	.loc 1 522 0
	movh.a	%a13, hi:tft_status
	.loc 1 519 0
	sh	%d2, %d15, 5
	addsc.a	%a2, %a12, %d2, 0
	ld.w	%d15, [%a2] 16
	jeq	%d15, 1, .L97
	.loc 1 539 0
	ld.w	%d15, [%a13] lo:tft_status
	jz	%d15, .L98
.LVL44:
.L65:
.LBB93:
	.loc 1 554 0
#APP
	# 554 "0_Src/2_CDrv/Tricore/Tft/conio_tft.c" 1
	mfcr %d2, LO:0xFC04
	# 0 "" 2
.LVL45:
#NO_APP
.LBE93:
	.loc 1 555 0
	mov.a	%a2, %d11
	ld.w	%d15, [%a15] 128
	ld.w	%d3, [%a2] lo:control
	.loc 1 554 0
	st.w	[%a15] 132, %d2
	.loc 1 555 0
	sub	%d3, %d15, %d3
	.loc 1 556 0
	utof	%d3, %d3
	movh	%d15, 17224
	div.f	%d3, %d3, %d15
	ftouz	%d3, %d3
	st.w	[%a15] 256, %d3
	.loc 1 557 0
	ld.w	%d3, [%a15] 4
	sub	%d2, %d3
.LVL46:
	.loc 1 558 0
	utof	%d2, %d2
	.loc 1 559 0
	ld.w	%d3, [%a15] 152
	.loc 1 558 0
	div.f	%d2, %d2, %d15
	ftouz	%d2, %d2
	st.w	[%a15] 260, %d2
	.loc 1 559 0
	ld.w	%d2, [%a15] 24
	sub	%d2, %d3, %d2
	.loc 1 560 0
	utof	%d2, %d2
	div.f	%d15, %d2, %d15
	ftouz	%d15, %d15
	st.w	[%a15] 280, %d15
	.loc 1 561 0
	ret
.LVL47:
.L96:
.LBB94:
.LBB89:
	.loc 1 218 0
	mov.a	%a3, %d13
	addsc.a	%a2, %a3, %d3, 2
	ji	%a2
	.align 2
	.align 2
.L53:
	.code32
	j	.L34
	.code32
	j	.L35
	.code32
	j	.L36
	.code32
	j	.L37
	.code32
	j	.L38
	.code32
	j	.L39
	.code32
	j	.L40
	.code32
	j	.L41
	.code32
	j	.L42
	.code32
	j	.L43
	.code32
	j	.L44
	.code32
	j	.L45
	.code32
	j	.L46
	.code32
	j	.L47
	.code32
	j	.L48
	.code32
	j	.L49
	.code32
	j	.L39
	.code32
	j	.L33
	.code32
	j	.L50
	.code32
	j	.L51
	.code32
	j	.L52
	.code32
	j	.L52
.LVL48:
.L98:
.LBE89:
.LBE94:
	.loc 1 542 0
	mov	%e4, 0
	call	tft_display_setxy
.LVL49:
	.loc 1 543 0
	ld.a	%a4, [%a12] 8
	ld.a	%a5, [%a12] 12
	call	tft_ascii_bar
	lea	%a2, [%a13] lo:tft_status
.L67:
	.loc 1 546 0 discriminator 1
	ld.w	%d15, [%a2]0
	jnz	%d15, .L67
	.loc 1 547 0
	mov	%d4, 0
	mov	%d5, 12
	call	tft_display_setxy
	.loc 1 548 0
	ld.w	%d15, [%a12] 216
	sh	%d2, %d15, 5
	addsc.a	%a12, %a12, %d2, 0
	ld.a	%a4, [%a12] 8
	ld.a	%a5, [%a12] 12
	ld.w	%d4, [%a12] 16
	call	tft_graphic
	j	.L65
.LVL50:
.L52:
.LBB95:
.LBB90:
.LBB69:
	.loc 1 336 0
	lea	%a4, [%SP] 108
	.loc 1 330 0
	st.w	[%SP] 108, %d9
.LVL51:
	.loc 1 336 0
	call	GET_FIFO_DISPLAY
	.loc 1 339 0
	ld.hu	%d14, [%SP] 106
	.loc 1 337 0
	ld.w	%d3, [%SP] 108
	st.w	[%SP] 12, %d3
.LVL52:
	.loc 1 339 0
	addi	%d12, %d14, -2
.LVL53:
	lea	%a14, [%SP] 24
	.loc 1 341 0
	jlez	%d12, .L61
	.loc 1 338 0
	mov.aa	%a13, %a14
	.loc 1 341 0
	mov	%d8, 0
.LVL54:
.L62:
	.loc 1 343 0 discriminator 2
	lea	%a4, [%SP] 108
	call	GET_FIFO_DISPLAY
	.loc 1 344 0 discriminator 2
	ld.w	%d2, [%SP] 108
	st.w	[%a13+]4, %d2
	.loc 1 341 0 discriminator 2
	add	%d8, 1
.LVL55:
	jlt	%d8, %d12, .L62
.LVL56:
.L61:
	.loc 1 347 0
	ld.w	%d4, [%SP] 12
	.loc 1 346 0
	add	%d15, %d14
.LVL57:
	.loc 1 347 0
	mov.aa	%a4, %a14
	call	conio_graphics_cputs
.LBE69:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.LVL58:
.L51:
.LBB70:
	.loc 1 225 0
	lea	%a4, [%SP] 108
	.loc 1 222 0
	st.w	[%SP] 108, %d9
.LVL59:
	.loc 1 225 0
	call	GET_FIFO_DISPLAY
	.loc 1 227 0
	lea	%a4, [%SP] 108
	.loc 1 226 0
	ld.w	%d8, [%SP] 108
.LVL60:
	.loc 1 227 0
	call	GET_FIFO_DISPLAY
.LVL61:
	.loc 1 228 0
	ld.w	%d6, [%SP] 108
.LVL62:
	.loc 1 230 0
	mov	%d4, %d8
	sh	%d5, %d6, -16
	extr.u	%d6, %d6, 0, 16
	.loc 1 231 0
	add	%d15, 3
.LVL63:
	.loc 1 230 0
	call	conio_graphics_gotoxy
.LVL64:
.LBE70:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.LVL65:
.L34:
.LBB71:
	.loc 1 357 0
	lea	%a4, [%SP] 108
	.loc 1 353 0
	st.w	[%SP] 108, %d9
.LVL66:
	.loc 1 357 0
	call	GET_FIFO_DISPLAY
	.loc 1 360 0
	lea	%a4, [%SP] 108
	.loc 1 358 0
	ld.w	%d12, [%SP] 108
.LVL67:
	.loc 1 360 0
	call	GET_FIFO_DISPLAY
.LVL68:
	.loc 1 363 0
	lea	%a4, [%SP] 108
	.loc 1 361 0
	ld.w	%d8, [%SP] 108
.LVL69:
	.loc 1 363 0
	call	GET_FIFO_DISPLAY
.LVL70:
	.loc 1 364 0
	ld.w	%d7, [%SP] 108
.LVL71:
	.loc 1 366 0
	extr.u	%d4, %d12, 0, 16
	.loc 1 365 0
	sh	%d2, %d7, -16
	.loc 1 366 0
	extr.u	%d5, %d8, 0, 16
	extr.u	%d7, %d7, 0, 16
	st.w	[%SP]0, %d2
	extr.u	%d2, %d12, 16, 8
	sh	%d6, %d8, -16
	.loc 1 367 0
	add	%d15, 4
.LVL72:
	.loc 1 366 0
	st.w	[%SP] 4, %d2
	call	conio_graphics_line
.LVL73:
.LBE71:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.LVL74:
.L50:
.LBB72:
	.loc 1 240 0
	lea	%a4, [%SP] 108
	.loc 1 237 0
	st.w	[%SP] 108, %d9
.LVL75:
	.loc 1 240 0
	call	GET_FIFO_DISPLAY
	.loc 1 242 0
	lea	%a4, [%SP] 108
	.loc 1 241 0
	ld.w	%d8, [%SP] 108
.LVL76:
	.loc 1 242 0
	call	GET_FIFO_DISPLAY
.LVL77:
	.loc 1 243 0
	ld.w	%d6, [%SP] 108
.LVL78:
	.loc 1 245 0
	mov	%d4, %d8
	sh	%d5, %d6, -16
	extr.u	%d6, %d6, 0, 16
	.loc 1 246 0
	add	%d15, 3
.LVL79:
	.loc 1 245 0
	call	conio_ascii_gotoxy
.LVL80:
.LBE72:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.LVL81:
.L49:
.LBB73:
	.loc 1 496 0
	lea	%a4, [%SP] 108
	.loc 1 493 0
	st.w	[%SP] 108, %d9
.LVL82:
	.loc 1 496 0
	call	GET_FIFO_DISPLAY
	.loc 1 497 0
	ld.w	%d5, [%SP] 108
.LVL83:
	.loc 1 500 0
	add	%d15, 2
.LVL84:
	.loc 1 499 0
	sh	%d4, %d5, -16
	extr.u	%d5, %d5, 0, 16
	call	conio_ascii_textchangecolor
.LVL85:
.LBE73:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L48:
.LBB74:
	.loc 1 484 0
	lea	%a4, [%SP] 108
	.loc 1 481 0
	st.w	[%SP] 108, %d9
.LVL86:
	.loc 1 484 0
	call	GET_FIFO_DISPLAY
	.loc 1 485 0
	ld.w	%d5, [%SP] 108
.LVL87:
	.loc 1 488 0
	add	%d15, 2
.LVL88:
	.loc 1 487 0
	sh	%d4, %d5, -16
	extr.u	%d5, %d5, 0, 16
	call	conio_ascii_textchangeforeground
.LVL89:
.LBE74:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L47:
.LBB75:
	.loc 1 472 0
	lea	%a4, [%SP] 108
	.loc 1 469 0
	st.w	[%SP] 108, %d9
.LVL90:
	.loc 1 472 0
	call	GET_FIFO_DISPLAY
	.loc 1 473 0
	ld.w	%d5, [%SP] 108
.LVL91:
	.loc 1 476 0
	add	%d15, 2
.LVL92:
	.loc 1 475 0
	sh	%d4, %d5, -16
	extr.u	%d5, %d5, 0, 16
	call	conio_ascii_textchangebackground
.LVL93:
.LBE75:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L46:
.LBB76:
	.loc 1 460 0
	lea	%a4, [%SP] 108
	.loc 1 457 0
	st.w	[%SP] 108, %d9
.LVL94:
	.loc 1 460 0
	call	GET_FIFO_DISPLAY
	.loc 1 461 0
	ld.w	%d5, [%SP] 108
.LVL95:
	.loc 1 464 0
	add	%d15, 2
.LVL96:
	.loc 1 463 0
	sh	%d4, %d5, -16
	extr.u	%d5, %d5, 0, 16
	call	conio_graphics_textbackground
.LVL97:
.LBE76:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L45:
.LBB77:
	.loc 1 448 0
	lea	%a4, [%SP] 108
	.loc 1 445 0
	st.w	[%SP] 108, %d9
.LVL98:
	.loc 1 448 0
	call	GET_FIFO_DISPLAY
	.loc 1 449 0
	ld.w	%d5, [%SP] 108
.LVL99:
	.loc 1 452 0
	add	%d15, 2
.LVL100:
	.loc 1 451 0
	sh	%d4, %d5, -16
	extr.u	%d5, %d5, 0, 16
	call	conio_graphics_textcolor
.LVL101:
.LBE77:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L44:
.LBB78:
	.loc 1 436 0
	lea	%a4, [%SP] 108
	.loc 1 433 0
	st.w	[%SP] 108, %d9
.LVL102:
	.loc 1 436 0
	call	GET_FIFO_DISPLAY
	.loc 1 437 0
	ld.w	%d5, [%SP] 108
.LVL103:
	.loc 1 440 0
	add	%d15, 2
.LVL104:
	.loc 1 439 0
	sh	%d4, %d5, -16
	extr.u	%d5, %d5, 0, 16
	call	conio_graphics_textattr
.LVL105:
.LBE78:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L43:
.LBB79:
	.loc 1 424 0
	lea	%a4, [%SP] 108
	.loc 1 421 0
	st.w	[%SP] 108, %d9
.LVL106:
	.loc 1 424 0
	call	GET_FIFO_DISPLAY
	.loc 1 425 0
	ld.w	%d5, [%SP] 108
.LVL107:
	.loc 1 428 0
	add	%d15, 2
.LVL108:
	.loc 1 427 0
	sh	%d4, %d5, -16
	extr.u	%d5, %d5, 0, 16
	call	conio_ascii_textbackground
.LVL109:
.LBE79:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L42:
.LBB80:
	.loc 1 412 0
	lea	%a4, [%SP] 108
	.loc 1 409 0
	st.w	[%SP] 108, %d9
.LVL110:
	.loc 1 412 0
	call	GET_FIFO_DISPLAY
	.loc 1 413 0
	ld.w	%d5, [%SP] 108
.LVL111:
	.loc 1 416 0
	add	%d15, 2
.LVL112:
	.loc 1 415 0
	sh	%d4, %d5, -16
	extr.u	%d5, %d5, 0, 16
	call	conio_ascii_textcolor
.LVL113:
.LBE80:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L41:
.LBB81:
	.loc 1 400 0
	lea	%a4, [%SP] 108
	.loc 1 397 0
	st.w	[%SP] 108, %d9
.LVL114:
	.loc 1 400 0
	call	GET_FIFO_DISPLAY
	.loc 1 401 0
	ld.w	%d5, [%SP] 108
.LVL115:
	.loc 1 404 0
	add	%d15, 2
.LVL116:
	.loc 1 403 0
	sh	%d4, %d5, -16
	extr.u	%d5, %d5, 0, 16
	call	conio_ascii_textattr
.LVL117:
.LBE81:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L40:
.LBB82:
	.loc 1 390 0
	lea	%a4, [%SP] 108
	.loc 1 389 0
	st.w	[%SP] 108, %d9
	.loc 1 390 0
	call	GET_FIFO_DISPLAY
	.loc 1 391 0
	ld.w	%d4, [%SP] 108
	.loc 1 392 0
	add	%d15, 2
.LVL118:
	.loc 1 391 0
	call	conio_ascii_clreol
.LVL119:
.LBE82:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L39:
.LBB83:
	.loc 1 313 0
	lea	%a4, [%SP] 108
	.loc 1 307 0
	st.w	[%SP] 108, %d9
.LVL120:
	.loc 1 313 0
	call	GET_FIFO_DISPLAY
	.loc 1 316 0
	ld.hu	%d14, [%SP] 106
	.loc 1 314 0
	ld.w	%d3, [%SP] 108
	st.w	[%SP] 12, %d3
.LVL121:
	.loc 1 316 0
	addi	%d12, %d14, -2
.LVL122:
	lea	%a14, [%SP] 24
.LVL123:
	.loc 1 318 0
	jlez	%d12, .L59
	.loc 1 315 0
	mov.aa	%a13, %a14
	.loc 1 318 0
	mov	%d8, 0
.LVL124:
.L60:
	.loc 1 320 0 discriminator 2
	lea	%a4, [%SP] 108
	call	GET_FIFO_DISPLAY
	.loc 1 321 0 discriminator 2
	ld.w	%d2, [%SP] 108
	st.w	[%a13+]4, %d2
	.loc 1 318 0 discriminator 2
	add	%d8, 1
.LVL125:
	jlt	%d8, %d12, .L60
.LVL126:
.L59:
	.loc 1 324 0
	ld.w	%d4, [%SP] 12
	.loc 1 323 0
	add	%d15, %d14
.LVL127:
	.loc 1 324 0
	mov.aa	%a4, %a14
	call	conio_ascii_cputs
.LBE83:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.LVL128:
.L38:
.LBB84:
	.loc 1 285 0
	lea	%a4, [%SP] 108
	.loc 1 278 0
	st.w	[%SP] 108, %d9
.LVL129:
	.loc 1 285 0
	call	GET_FIFO_DISPLAY
	.loc 1 287 0
	lea	%a4, [%SP] 108
	.loc 1 286 0
	ld.w	%d14, [%SP] 108
.LVL130:
	.loc 1 287 0
	call	GET_FIFO_DISPLAY
.LVL131:
	.loc 1 288 0
	ld.w	%d2, [%SP] 108
	lea	%a14, [%SP] 24
	sh	%d3, %d2, -16
	.loc 1 289 0
	insert	%d2, %d2, 0, 16, 16
	.loc 1 288 0
	st.w	[%SP] 16, %d3
.LVL132:
	.loc 1 291 0
	ld.hu	%d3, [%SP] 106
.LVL133:
	.loc 1 289 0
	st.w	[%SP] 20, %d2
.LVL134:
	.loc 1 291 0
	mov	%d12, %d3
	st.w	[%SP] 12, %d3
	add	%d12, -3
.LVL135:
	.loc 1 293 0
	jlez	%d12, .L57
	.loc 1 290 0
	mov.aa	%a13, %a14
	.loc 1 293 0
	mov	%d8, 0
.LVL136:
.L58:
	.loc 1 295 0 discriminator 2
	lea	%a4, [%SP] 108
	call	GET_FIFO_DISPLAY
	.loc 1 296 0 discriminator 2
	ld.w	%d2, [%SP] 108
	st.w	[%a13+]4, %d2
	.loc 1 293 0 discriminator 2
	add	%d8, 1
.LVL137:
	jlt	%d8, %d12, .L58
.LVL138:
.L57:
	.loc 1 298 0
	ld.w	%d3, [%SP] 12
	.loc 1 299 0
	ld.w	%d5, [%SP] 16
	ld.w	%d6, [%SP] 20
	mov	%d4, %d14
	.loc 1 298 0
	add	%d15, %d3
.LVL139:
	.loc 1 299 0
	call	conio_graphics_gotoxy
	.loc 1 300 0
	mov	%d4, %d14
	mov.aa	%a4, %a14
	call	conio_graphics_cputs
.LBE84:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.LVL140:
.L37:
.LBB85:
	.loc 1 258 0
	lea	%a4, [%SP] 108
	.loc 1 251 0
	st.w	[%SP] 108, %d9
.LVL141:
	.loc 1 258 0
	call	GET_FIFO_DISPLAY
	.loc 1 260 0
	lea	%a4, [%SP] 108
	.loc 1 259 0
	ld.w	%d14, [%SP] 108
.LVL142:
	.loc 1 260 0
	call	GET_FIFO_DISPLAY
.LVL143:
	.loc 1 261 0
	ld.w	%d2, [%SP] 108
	lea	%a14, [%SP] 24
	sh	%d3, %d2, -16
	.loc 1 262 0
	insert	%d2, %d2, 0, 16, 16
	.loc 1 261 0
	st.w	[%SP] 16, %d3
.LVL144:
	.loc 1 264 0
	ld.hu	%d3, [%SP] 106
.LVL145:
	.loc 1 262 0
	st.w	[%SP] 20, %d2
.LVL146:
	.loc 1 264 0
	mov	%d12, %d3
	st.w	[%SP] 12, %d3
	add	%d12, -3
.LVL147:
	.loc 1 266 0
	jlez	%d12, .L55
	.loc 1 263 0
	mov.aa	%a13, %a14
	.loc 1 266 0
	mov	%d8, 0
.LVL148:
.L56:
	.loc 1 268 0 discriminator 2
	lea	%a4, [%SP] 108
	call	GET_FIFO_DISPLAY
	.loc 1 269 0 discriminator 2
	ld.w	%d2, [%SP] 108
	st.w	[%a13+]4, %d2
	.loc 1 266 0 discriminator 2
	add	%d8, 1
.LVL149:
	jlt	%d8, %d12, .L56
.LVL150:
.L55:
	.loc 1 271 0
	ld.w	%d3, [%SP] 12
	.loc 1 272 0
	ld.w	%d5, [%SP] 16
	ld.w	%d6, [%SP] 20
	mov	%d4, %d14
	.loc 1 271 0
	add	%d15, %d3
.LVL151:
	.loc 1 272 0
	call	conio_ascii_gotoxy
	.loc 1 273 0
	mov	%d4, %d14
	mov.aa	%a4, %a14
	call	conio_ascii_cputs
.LBE85:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.LVL152:
.L36:
.LBB86:
	.loc 1 382 0
	lea	%a4, [%SP] 108
	call	GET_FIFO_DISPLAY
	.loc 1 383 0
	ld.w	%d4, [%SP] 108
	.loc 1 384 0
	add	%d15, 2
.LVL153:
	.loc 1 383 0
	call	conio_graphics_clrscr
.LVL154:
.LBE86:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.L35:
.LBB87:
	.loc 1 374 0
	lea	%a4, [%SP] 108
	call	GET_FIFO_DISPLAY
	.loc 1 375 0
	ld.w	%d4, [%SP] 108
	.loc 1 376 0
	add	%d15, 2
.LVL155:
	.loc 1 375 0
	call	conio_ascii_clrscr
.LVL156:
.LBE87:
	.loc 1 512 0
	jlt.u	%d15, %d10, .L63
	j	.L31
.LVL157:
.L92:
.LBE90:
.LBE95:
	.loc 1 144 0
	mov	%d6, 0
	mov	%e4, 0
.LVL158:
	st.a	[%SP] 8, %a4
	call	conio_ascii_gotoxy
.LVL159:
	.loc 1 145 0
	mov	%d5, 5
	mov	%d4, 0
	call	conio_ascii_textbackground
	.loc 1 146 0
	mov	%d4, 0
	call	conio_ascii_clreol
	.loc 1 147 0
	mov	%e4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
.LVL160:
	.loc 1 148 0
	ld.a	%a4, [%SP] 8
	ld.a	%a2, [%a4] 8
	jz.a	%a2, .L22
	.loc 1 94 0
	lea	%a15, [%a4] 64
	j	.L26
.LVL161:
.L25:
	.loc 1 160 0
	calli	%a2
.L24:
	.loc 1 148 0
	mov.aa	%a4, %a15
	lea	%a15, [%a15] 64
	ld.a	%a2, [%a15] -56
	add	%d15, 1
.LVL162:
	jz.a	%a2, .L22
.LVL163:
.L26:
	.loc 1 150 0
	ld.b	%d2, [%a4] 2
	jlt	%d8, %d2, .L23
	.loc 1 150 0 is_stmt 0 discriminator 1
	ld.b	%d2, [%a4] 3
	jlt	%d2, %d8, .L23
	ld.b	%d2, [%a4] 4
	jeq	%d2, %d9, .L99
.L23:
	.loc 1 156 0 is_stmt 1
	ld.a	%a2, [%a4] 12
	.loc 1 157 0
	mov	%d4, %d15
	.loc 1 156 0
	jnz.a	%a2, .L25
	.loc 1 157 0
	call	bar_display
	.loc 1 148 0
	mov.aa	%a4, %a15
	lea	%a15, [%a15] 64
	ld.a	%a2, [%a15] -56
	add	%d15, 1
.LVL164:
	jnz.a	%a2, .L26
.LVL165:
.L22:
	.loc 1 164 0
	eq	%d15, %d9, 19
	jnz	%d15, .L27
.L88:
	.loc 1 167 0
	ld.w	%d15, [%a12] 220
.LVL166:
	.loc 1 175 0
	ld.w	%d2, [%A0] SM:conio_dialog_list
	jne	%d15, %d2, .L28
.L93:
	ld.a	%a15, [%A0] SM:conio_dialog_list+4
	mov	%e4, %d9, %d8
	calli	%a15
	ld.w	%d15, [%a12] 220
	j	.L28
.LVL167:
.L97:
	.loc 1 522 0
	ld.w	%d15, [%a13] lo:tft_status
	jnz	%d15, .L65
	.loc 1 525 0
	mov	%e4, 0
	call	tft_display_setxy
.LVL168:
	.loc 1 526 0
	ld.a	%a4, [%a12] 8
	ld.a	%a5, [%a12] 12
	call	tft_ascii_bar
	lea	%a2, [%a13] lo:tft_status
.L66:
	.loc 1 529 0 discriminator 1
	ld.w	%d15, [%a2]0
	jnz	%d15, .L66
	.loc 1 530 0
	mov	%d4, 0
	mov	%d5, 12
	call	tft_display_setxy
	.loc 1 531 0
	ld.w	%d15, [%a12] 216
	sh	%d3, %d15, 5
	addsc.a	%a12, %a12, %d3, 0
	ld.a	%a4, [%a12] 8
	ld.a	%a5, [%a12] 12
	ld.w	%d4, [%a12] 16
	call	tft_ascii
	j	.L65
.LVL169:
.L95:
	.loc 1 195 0
	mov	%d5, %d8
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
	.loc 1 196 0
	mov	%d4, 0
	mov	%d5, 2
	call	conio_ascii_textchangebackground
	j	.L29
.LVL170:
.L91:
	.loc 1 123 0
	mov.aa	%a3, %a5
.LVL171:
	.loc 1 94 0
	lea	%a15, 9119
.LVL172:
.L19:
.LBB96:
.LBB97:
	.loc 1 91 0
	ld.w	%d15, [%a2+]4
	st.w	[%a3+]4, %d15
.LVL173:
	loop	%a15, .L19
	j	.L15
.LVL174:
.L94:
.LBE97:
.LBE96:
	.loc 1 184 0
	mov	%e4, %d9, %d8
	mov.aa	%a4, %a13
	.loc 1 185 0
	ge	%d15, %d9, 19
	.loc 1 184 0
	call	showmenu
	.loc 1 185 0
	jnz	%d15, .L29
	.loc 1 187 0
	mov	%d5, %d8
	mov	%d4, 1
	mov	%d6, %d9
	call	conio_ascii_gotoxy
	.loc 1 188 0
	mov	%d4, 1
	mov	%d5, 2
	call	conio_ascii_textchangebackground
	j	.L29
.LVL175:
.L89:
	.loc 1 111 0
	ld.a	%a3, [%a15] 12
	mov.aa	%a2, %a5
.LVL176:
	.loc 1 94 0
	lea	%a15, 189
.LVL177:
.L14:
.LBB98:
.LBB99:
	.loc 1 91 0
	ld.w	%d15, [%a3+]4
	st.w	[%a2+]4, %d15
.LVL178:
	loop	%a15, .L14
.LBE99:
.LBE98:
	.loc 1 134 0
	mov	%d15, 1
	.loc 1 133 0
	st.w	[%a12] 208, %d2
	.loc 1 134 0
	st.w	[%a12] 204, %d15
	j	.L8
.LVL179:
.L99:
	.loc 1 152 0
	mov	%d4, %d15
	calli	%a2
	j	.L24
.LVL180:
.L90:
	.loc 1 118 0
	mov.aa	%a3, %a5
.LVL181:
	.loc 1 94 0
	lea	%a15, 4559
.LVL182:
.L17:
.LBB100:
.LBB101:
	.loc 1 91 0
	ld.w	%d15, [%a2+]4
	st.w	[%a3+]4, %d15
.LVL183:
	loop	%a15, .L17
	j	.L15
.LVL184:
.L27:
.LBE101:
.LBE100:
	.loc 1 166 0
	mov	%d5, %d8
	mov	%d4, 0
	mov	%d6, 0
	call	conio_ascii_gotoxy
	.loc 1 167 0
	mov	%d4, 0
	mov	%d5, 2
	call	conio_ascii_textchangebackground
	j	.L88
.LFE350:
	.size	conio_periodic, .-conio_periodic
.section .text.conio_init,"ax",@progbits
	.align 1
	.global	conio_init
	.type	conio_init, @function
conio_init:
.LFB352:
	.loc 1 572 0
.LVL185:
	.loc 1 572 0
	mov.aa	%a12, %a4
	.loc 1 575 0
	mov	%d15, 0
	.loc 1 574 0
	movh.a	%a4, hi:fifo_display
.LVL186:
	lea	%a4, [%a4] lo:fifo_display
	mov	%d4, 2048
	.loc 1 575 0
	movh.a	%a15, hi:conio_driver
	.loc 1 574 0
	call	fifo_display_init
	.loc 1 575 0
	lea	%a15, [%a15] lo:conio_driver
	st.b	[%a15] 224, %d15
	.loc 1 576 0
	st.b	[%a15] 244, %d15
.LVL187:
	mov.aa	%a4, %a12
	.loc 1 577 0
	mov.a	%a3, 5
.LVL188:
.L101:
	.loc 1 579 0 discriminator 2
	ld.w	%d2, [%a4]0
	ld.w	%d15, [%a4] 4
	sh	%d3, %d2, 5
	addsc.a	%a2, %a15, %d3, 0
	st.w	[%a2] 8, %d15
	.loc 1 580 0 discriminator 2
	ld.w	%d15, [%a4] 8
	st.w	[%a2] 12, %d15
	.loc 1 581 0 discriminator 2
	ld.w	%d15, [%a4] 12
	st.w	[%a2] 16, %d15
	.loc 1 582 0 discriminator 2
	ld.bu	%d15, [%a4] 16
	st.b	[%a2] 20, %d15
	.loc 1 583 0 discriminator 2
	ld.w	%d15, [%a4]0
	ld.w	%d2, [%a4] 20
	sh	%d3, %d15, 5
	addsc.a	%a2, %a15, %d3, 0
	st.w	[%a2] 24, %d2
	.loc 1 584 0 discriminator 2
	ld.w	%d2, [%a4] 24
	st.w	[%a2] 28, %d2
	.loc 1 585 0 discriminator 2
	ld.w	%d2, [%a4] 28
	st.w	[%a2] 32, %d2
	.loc 1 586 0 discriminator 2
	ld.w	%d15, [%a4] 32
	st.w	[%a2] 36, %d15
	.loc 1 577 0 discriminator 2
	lea	%a4, [%a4] 36
	loop	%a3, .L101
	.loc 1 588 0
	mov	%d15, 0
	st.w	[%a15] 204, %d15
	.loc 1 589 0
	st.w	[%a15] 200, %d15
.LVL189:
.L102:
.LBB102:
	.loc 1 596 0 discriminator 2
	sh	%d5, %d15, 1
	addi	%d4, %d15, 128
	mov	%e6, %d5, %d5
	call	conio_graphics_setcolortable
	.loc 1 594 0 discriminator 2
	add	%d15, 1
.LVL190:
	ne	%d2, %d15, 128
	jnz	%d2, .L102
.LBE102:
	.loc 1 600 0
	mov	%d15, 1
.LVL191:
	st.w	[%a15] 216, %d15
	.loc 1 601 0
	st.w	[%a15] 208, %d15
	.loc 1 602 0
	mov	%d15, 0
	st.b	[%a15] 273, %d15
	.loc 1 603 0
	ret
.LFE352:
	.size	conio_init, .-conio_init
	.global	fifo_display
.section .bss_cpu0,"awc0",@progbits
	.align 2
	.type	fifo_display, @object
	.size	fifo_display, 8192
fifo_display:
	.zero	8192
	.global	control
	.align 2
	.type	control, @object
	.size	control, 384
control:
	.zero	384
	.global	conio_driver
	.align 2
	.type	conio_driver, @object
	.size	conio_driver, 276
conio_driver:
	.zero	276
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
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.byte	0x4
	.uaword	.LCFI0-.LFB350
	.byte	0xe
	.uleb128 0x70
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 5 "0_Src/2_CDrv/Tricore/Tft/conio_tft.h"
	.file 6 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
	.file 7 "0_Src/2_CDrv/Tricore/Tft/tfthw.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x12a3
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Tft/conio_tft.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x60
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
	.uaword	0xcf
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x59
	.uaword	0xeb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x5a
	.uaword	0x10a
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x125
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x5c
	.uaword	0x9a
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0xa6
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.uaword	0x1cf
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
	.uaword	0x1ad
	.uleb128 0x6
	.string	"CONIO_DLG_ENTRY"
	.byte	0x8
	.byte	0x4
	.byte	0xf
	.uaword	0x223
	.uleb128 0x7
	.string	"dialogMode"
	.byte	0x4
	.byte	0x11
	.uaword	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"function"
	.byte	0x4
	.byte	0x12
	.uaword	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.uaword	0x234
	.uleb128 0x9
	.uaword	0xfc
	.uleb128 0x9
	.uaword	0xfc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x223
	.uleb128 0x3
	.string	"TCONIODLGENTRY"
	.byte	0x4
	.byte	0x13
	.uaword	0x1e2
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x1e
	.uaword	0x2b1
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
	.uaword	0x250
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.uaword	0x33a
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
	.uaword	0x2c5
	.uleb128 0x6
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x4
	.byte	0x34
	.uaword	0x3db
	.uleb128 0x7
	.string	"pdisplay"
	.byte	0x4
	.byte	0x36
	.uaword	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"pdisplaycolor"
	.byte	0x4
	.byte	0x37
	.uaword	0x3db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"mode"
	.byte	0x4
	.byte	0x38
	.uaword	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0x39
	.uaword	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"maxx"
	.byte	0x4
	.byte	0x3a
	.uaword	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"maxy"
	.byte	0x4
	.byte	0x3b
	.uaword	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x"
	.byte	0x4
	.byte	0x3c
	.uaword	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x4
	.byte	0x3d
	.uaword	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0xde
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x4
	.byte	0x3e
	.uaword	0x347
	.uleb128 0x6
	.string	"CONIO_DISPLAYMODE_ENTRY"
	.byte	0x24
	.byte	0x4
	.byte	0x42
	.uaword	0x43b
	.uleb128 0x7
	.string	"displayMode"
	.byte	0x4
	.byte	0x44
	.uaword	0x2b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x4
	.byte	0x45
	.uaword	0x3e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"pTCONIODMENTRY"
	.byte	0x4
	.byte	0x46
	.uaword	0x451
	.uleb128 0xa
	.byte	0x4
	.uaword	0x3f6
	.uleb128 0x3
	.string	"TCOLORTABLEASCII"
	.byte	0x5
	.byte	0x80
	.uaword	0x46f
	.uleb128 0xc
	.uaword	0x117
	.uaword	0x47f
	.uleb128 0xd
	.uaword	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.uaword	0xde
	.uaword	0x48f
	.uleb128 0xd
	.uaword	0xa6
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x5
	.byte	0x8b
	.uaword	0x54d
	.uleb128 0x7
	.string	"color_display"
	.byte	0x5
	.byte	0x8d
	.uaword	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"color_select"
	.byte	0x5
	.byte	0x8f
	.uaword	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"xmin"
	.byte	0x5
	.byte	0x90
	.uaword	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"xmax"
	.byte	0x5
	.byte	0x91
	.uaword	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"y"
	.byte	0x5
	.byte	0x92
	.uaword	0xc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"select"
	.byte	0x5
	.byte	0x93
	.uaword	0x564
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x5
	.byte	0x94
	.uaword	0x564
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0x95
	.uaword	0x57f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"text"
	.byte	0x5
	.byte	0x96
	.uaword	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"symbol"
	.byte	0x5
	.byte	0x97
	.uaword	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.uaword	0x55e
	.uleb128 0x9
	.uaword	0x13b
	.uleb128 0x9
	.uaword	0x55e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x48f
	.uleb128 0xa
	.byte	0x4
	.uaword	0x54d
	.uleb128 0xe
	.byte	0x1
	.uaword	0x13b
	.uaword	0x57f
	.uleb128 0x9
	.uaword	0x13b
	.uleb128 0x9
	.uaword	0x55e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x56a
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x5
	.byte	0x98
	.uaword	0x48f
	.uleb128 0xf
	.string	"CONIO_DRIVER"
	.uahalf	0x114
	.byte	0x5
	.byte	0x9d
	.uaword	0x6d0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x5
	.byte	0x9f
	.uaword	0x6d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x5
	.byte	0xa0
	.uaword	0x6d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x5
	.byte	0xa1
	.uaword	0x6d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"pdasmirror"
	.byte	0x5
	.byte	0xa2
	.uaword	0x6e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"dasstatus"
	.byte	0x5
	.byte	0xa3
	.uaword	0x149
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"dasdisplaymode"
	.byte	0x5
	.byte	0xa4
	.uaword	0x2b1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"cursorstatus"
	.byte	0x5
	.byte	0xa5
	.uaword	0x13b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x5
	.byte	0xa6
	.uaword	0x2b1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x7
	.string	"dialogmode"
	.byte	0x5
	.byte	0xa7
	.uaword	0x1cf
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x7
	.string	"scanfdescr"
	.byte	0x5
	.byte	0xa8
	.uaword	0x6ec
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x7
	.string	"scanftext"
	.byte	0x5
	.byte	0xa9
	.uaword	0x6ec
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0xaa
	.uaword	0x711
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x7
	.string	"inputid"
	.byte	0x5
	.byte	0xab
	.uaword	0x13b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x7
	.string	"scanfx"
	.byte	0x5
	.byte	0xac
	.uaword	0xc2
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x7
	.string	"blinky"
	.byte	0x5
	.byte	0xad
	.uaword	0xde
	.byte	0x3
	.byte	0x23
	.uleb128 0x111
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x585
	.uleb128 0xc
	.uaword	0x3e1
	.uaword	0x6e6
	.uleb128 0xd
	.uaword	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x149
	.uleb128 0xc
	.uaword	0xde
	.uaword	0x6fc
	.uleb128 0xd
	.uaword	0xa6
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	0x13b
	.uaword	0x711
	.uleb128 0x9
	.uaword	0x13b
	.uleb128 0x9
	.uaword	0x6d0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x6fc
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x5
	.byte	0xae
	.uaword	0x59a
	.uleb128 0xf
	.string	"CONTROL"
	.uahalf	0x180
	.byte	0x5
	.byte	0xb2
	.uaword	0x775
	.uleb128 0x7
	.string	"timebeg"
	.byte	0x5
	.byte	0xb4
	.uaword	0x775
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"timeend"
	.byte	0x5
	.byte	0xb5
	.uaword	0x775
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"timeus"
	.byte	0x5
	.byte	0xb6
	.uaword	0x775
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0
	.uleb128 0xc
	.uaword	0x149
	.uaword	0x785
	.uleb128 0xd
	.uaword	0xa6
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"TCONTROL"
	.byte	0x5
	.byte	0xb7
	.uaword	0x72c
	.uleb128 0x10
	.byte	0x1
	.string	"memcpy32"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x3
	.uaword	0x7d5
	.uleb128 0x11
	.string	"pdst"
	.byte	0x1
	.byte	0x57
	.uaword	0x6e6
	.uleb128 0x11
	.string	"psrc"
	.byte	0x1
	.byte	0x57
	.uaword	0x6e6
	.uleb128 0x11
	.string	"cnt"
	.byte	0x1
	.byte	0x57
	.uaword	0x149
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x59
	.uaword	0x149
	.byte	0
	.uleb128 0x13
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.uaword	0x795
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x818
	.uleb128 0x15
	.uaword	0x7a8
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.uaword	0x7b4
	.uaword	.LLST0
	.uleb128 0x15
	.uaword	0x7c0
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.uaword	0x7cb
	.uaword	.LLST1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"bar_display"
	.byte	0x1
	.uahalf	0x234
	.byte	0x1
	.uaword	.LFB351
	.uaword	.LFE351
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x864
	.uleb128 0x19
	.string	"ind"
	.byte	0x1
	.uahalf	0x234
	.uaword	0x13b
	.uaword	.LLST2
	.uleb128 0x19
	.string	"pdisplayentry"
	.byte	0x1
	.uahalf	0x234
	.uaword	0x6d0
	.uaword	.LLST3
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"conio_periodic"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	.LFB350
	.uaword	.LFE350
	.uaword	.LLST4
	.uaword	0x1159
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0x5e
	.uaword	0xfc
	.uaword	.LLST5
	.uleb128 0x1b
	.string	"y"
	.byte	0x1
	.byte	0x5e
	.uaword	0xfc
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x1
	.byte	0x5e
	.uaword	0x6d0
	.uaword	.LLST7
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.byte	0x5e
	.uaword	0x6d0
	.uaword	.LLST8
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x60
	.uaword	0x13b
	.uaword	.LLST9
	.uleb128 0x1e
	.uaword	0x795
	.uaword	.LBB49
	.uaword	.LBE49
	.byte	0x1
	.byte	0x65
	.uaword	0x903
	.uleb128 0x1f
	.uaword	0x7c0
	.uleb128 0x1f
	.uaword	0x7b4
	.uleb128 0x16
	.uaword	0x7a8
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	.LBB50
	.uaword	.LBE50
	.uleb128 0x21
	.uaword	0x7cb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x795
	.uaword	.LBB51
	.uaword	.LBE51
	.byte	0x1
	.byte	0x67
	.uaword	0x945
	.uleb128 0x16
	.uaword	0x7c0
	.uaword	.LLST11
	.uleb128 0x16
	.uaword	0x7b4
	.uaword	.LLST12
	.uleb128 0x16
	.uaword	0x7a8
	.uaword	.LLST13
	.uleb128 0x20
	.uaword	.LBB52
	.uaword	.LBE52
	.uleb128 0x17
	.uaword	0x7cb
	.uaword	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x795
	.uaword	.LBB53
	.uaword	.LBE53
	.byte	0x1
	.byte	0x69
	.uaword	0x987
	.uleb128 0x16
	.uaword	0x7c0
	.uaword	.LLST15
	.uleb128 0x16
	.uaword	0x7b4
	.uaword	.LLST16
	.uleb128 0x16
	.uaword	0x7a8
	.uaword	.LLST17
	.uleb128 0x20
	.uaword	.LBB54
	.uaword	.LBE54
	.uleb128 0x17
	.uaword	0x7cb
	.uaword	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x795
	.uaword	.LBB55
	.uaword	.LBE55
	.byte	0x1
	.byte	0x6b
	.uaword	0x9c9
	.uleb128 0x16
	.uaword	0x7c0
	.uaword	.LLST19
	.uleb128 0x16
	.uaword	0x7b4
	.uaword	.LLST20
	.uleb128 0x16
	.uaword	0x7a8
	.uaword	.LLST21
	.uleb128 0x20
	.uaword	.LBB56
	.uaword	.LBE56
	.uleb128 0x17
	.uaword	0x7cb
	.uaword	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x795
	.uaword	.LBB57
	.uaword	.LBE57
	.byte	0x1
	.byte	0x80
	.uaword	0xa0b
	.uleb128 0x16
	.uaword	0x7c0
	.uaword	.LLST23
	.uleb128 0x16
	.uaword	0x7b4
	.uaword	.LLST24
	.uleb128 0x16
	.uaword	0x7a8
	.uaword	.LLST25
	.uleb128 0x20
	.uaword	.LBB58
	.uaword	.LBE58
	.uleb128 0x17
	.uaword	0x7cb
	.uaword	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0xa28
	.uleb128 0x23
	.uaword	.LASF5
	.byte	0x1
	.byte	0x8a
	.uaword	0x19d
	.uaword	.LLST27
	.byte	0
	.uleb128 0x22
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	0xa45
	.uleb128 0x23
	.uaword	.LASF5
	.byte	0x1
	.byte	0xc8
	.uaword	0x19d
	.uaword	.LLST28
	.byte	0
	.uleb128 0x22
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	0xa62
	.uleb128 0x23
	.uaword	.LASF5
	.byte	0x1
	.byte	0xca
	.uaword	0x19d
	.uaword	.LLST29
	.byte	0
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0
	.uaword	0x103c
	.uleb128 0x1d
	.string	"limit_entries"
	.byte	0x1
	.byte	0xcd
	.uaword	0x149
	.uaword	.LLST30
	.uleb128 0x1d
	.string	"cnt_entries"
	.byte	0x1
	.byte	0xce
	.uaword	0x149
	.uaword	.LLST31
	.uleb128 0x25
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.byte	0xd2
	.uaword	0x149
	.uaword	.LLST32
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x48
	.uaword	0xae9
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1ed
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x2b1
	.uaword	.LLST34
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x13b
	.uaword	.LLST35
	.byte	0
	.uleb128 0x27
	.uaword	0x7d5
	.uaword	.LBB65
	.uaword	.LBE65
	.byte	0x1
	.byte	0xd8
	.uleb128 0x28
	.uaword	0x7d5
	.uaword	.LBB67
	.uaword	.LBE67
	.byte	0x1
	.uahalf	0x1f8
	.uleb128 0x22
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0xb75
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x2b1
	.uaword	.LLST37
	.uleb128 0x29
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x1159
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"pbuf"
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x6e6
	.uaword	.LLST38
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.uahalf	0x14e
	.uaword	0x13b
	.uaword	.LLST39
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x13b
	.uaword	.LLST40
	.byte	0
	.uleb128 0x22
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	0xbbb
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.byte	0xde
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x23
	.uaword	.LASF4
	.byte	0x1
	.byte	0xdf
	.uaword	0x2b1
	.uaword	.LLST42
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0xe0
	.uaword	0x13b
	.uaword	.LLST43
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0xe0
	.uaword	0x13b
	.uaword	.LLST44
	.byte	0
	.uleb128 0x22
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0xc35
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x161
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x162
	.uaword	0x2b1
	.uaword	.LLST46
	.uleb128 0x2a
	.string	"x1"
	.byte	0x1
	.uahalf	0x163
	.uaword	0x13b
	.uaword	.LLST47
	.uleb128 0x2a
	.string	"y1"
	.byte	0x1
	.uahalf	0x163
	.uaword	0x13b
	.uaword	.LLST48
	.uleb128 0x2a
	.string	"x2"
	.byte	0x1
	.uahalf	0x163
	.uaword	0x13b
	.uaword	.LLST49
	.uleb128 0x2a
	.string	"y2"
	.byte	0x1
	.uahalf	0x163
	.uaword	0x13b
	.uaword	.LLST50
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x164
	.uaword	0xde
	.uaword	.LLST51
	.byte	0
	.uleb128 0x22
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0xc7b
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.byte	0xed
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x23
	.uaword	.LASF4
	.byte	0x1
	.byte	0xee
	.uaword	0x2b1
	.uaword	.LLST53
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0xef
	.uaword	0x13b
	.uaword	.LLST54
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0xef
	.uaword	0x13b
	.uaword	.LLST55
	.byte	0
	.uleb128 0x22
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0xcb9
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1e1
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x2b1
	.uaword	.LLST57
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x13b
	.uaword	.LLST58
	.byte	0
	.uleb128 0x22
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0xcf7
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1d6
	.uaword	0x2b1
	.uaword	.LLST60
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x13b
	.uaword	.LLST61
	.byte	0
	.uleb128 0x22
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0xd35
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x2b1
	.uaword	.LLST63
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1cb
	.uaword	0x13b
	.uaword	.LLST64
	.byte	0
	.uleb128 0x22
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0xd73
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1be
	.uaword	0x2b1
	.uaword	.LLST66
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x13b
	.uaword	.LLST67
	.byte	0
	.uleb128 0x22
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	0xdb1
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0x2b1
	.uaword	.LLST69
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x13b
	.uaword	.LLST70
	.byte	0
	.uleb128 0x22
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	0xdef
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0x2b1
	.uaword	.LLST72
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x13b
	.uaword	.LLST73
	.byte	0
	.uleb128 0x22
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	0xe2d
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x199
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x2b1
	.uaword	.LLST75
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x13b
	.uaword	.LLST76
	.byte	0
	.uleb128 0x22
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	0xe6b
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x2b1
	.uaword	.LLST78
	.uleb128 0x26
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x13b
	.uaword	.LLST79
	.byte	0
	.uleb128 0x22
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	0xe89
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x185
	.uaword	0x149
	.uaword	.LLST33
	.byte	0
	.uleb128 0x22
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	0xef6
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x133
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x134
	.uaword	0x2b1
	.uaword	.LLST82
	.uleb128 0x29
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x135
	.uaword	0x1159
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"pbuf"
	.byte	0x1
	.uahalf	0x136
	.uaword	0x6e6
	.uaword	.LLST83
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x13b
	.uaword	.LLST84
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.uahalf	0x138
	.uaword	0x13b
	.uaword	.LLST85
	.byte	0
	.uleb128 0x22
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	0xf7f
	.uleb128 0x26
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x116
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x117
	.uaword	0x2b1
	.uaword	.LLST87
	.uleb128 0x2a
	.string	"x"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x13b
	.uaword	.LLST88
	.uleb128 0x2a
	.string	"y"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x13b
	.uaword	.LLST89
	.uleb128 0x29
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x119
	.uaword	0x1159
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.string	"pbuf"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x6e6
	.uaword	.LLST90
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x13b
	.uaword	.LLST91
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x13b
	.uaword	.LLST92
	.byte	0
	.uleb128 0x22
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0x1002
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.byte	0xfb
	.uaword	0x149
	.uaword	.LLST33
	.uleb128 0x23
	.uaword	.LASF4
	.byte	0x1
	.byte	0xfc
	.uaword	0x2b1
	.uaword	.LLST94
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0xfd
	.uaword	0x13b
	.uaword	.LLST95
	.uleb128 0x1d
	.string	"y"
	.byte	0x1
	.byte	0xfd
	.uaword	0x13b
	.uaword	.LLST96
	.uleb128 0x2b
	.uaword	.LASF7
	.byte	0x1
	.byte	0xfe
	.uaword	0x1159
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.string	"pbuf"
	.byte	0x1
	.byte	0xff
	.uaword	0x6e6
	.uaword	.LLST97
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.uahalf	0x100
	.uaword	0x13b
	.uaword	.LLST98
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x13b
	.uaword	.LLST99
	.byte	0
	.uleb128 0x22
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	0x1020
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x149
	.uaword	.LLST33
	.byte	0
	.uleb128 0x20
	.uaword	.LBB87
	.uaword	.LBE87
	.uleb128 0x26
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x175
	.uaword	0x149
	.uaword	.LLST33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	0x105a
	.uleb128 0x26
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x205
	.uaword	0x19d
	.uaword	.LLST102
	.byte	0
	.uleb128 0x22
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	0x1078
	.uleb128 0x26
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x206
	.uaword	0x19d
	.uaword	.LLST103
	.byte	0
	.uleb128 0x22
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	0x1096
	.uleb128 0x26
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x22a
	.uaword	0x19d
	.uaword	.LLST104
	.byte	0
	.uleb128 0x1e
	.uaword	0x795
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.byte	0x7b
	.uaword	0x10d8
	.uleb128 0x16
	.uaword	0x7c0
	.uaword	.LLST105
	.uleb128 0x16
	.uaword	0x7b4
	.uaword	.LLST106
	.uleb128 0x16
	.uaword	0x7a8
	.uaword	.LLST107
	.uleb128 0x20
	.uaword	.LBB97
	.uaword	.LBE97
	.uleb128 0x17
	.uaword	0x7cb
	.uaword	.LLST108
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x795
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.byte	0x6f
	.uaword	0x111a
	.uleb128 0x16
	.uaword	0x7c0
	.uaword	.LLST109
	.uleb128 0x16
	.uaword	0x7b4
	.uaword	.LLST110
	.uleb128 0x16
	.uaword	0x7a8
	.uaword	.LLST111
	.uleb128 0x20
	.uaword	.LBB99
	.uaword	.LBE99
	.uleb128 0x17
	.uaword	0x7cb
	.uaword	.LLST112
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x795
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.byte	0x76
	.uleb128 0x16
	.uaword	0x7c0
	.uaword	.LLST113
	.uleb128 0x16
	.uaword	0x7b4
	.uaword	.LLST114
	.uleb128 0x16
	.uaword	0x7a8
	.uaword	.LLST115
	.uleb128 0x20
	.uaword	.LBB101
	.uaword	.LBE101
	.uleb128 0x17
	.uaword	0x7cb
	.uaword	.LLST116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xde
	.uaword	0x1169
	.uleb128 0xd
	.uaword	0xa6
	.byte	0x4f
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"conio_init"
	.byte	0x1
	.uahalf	0x23b
	.byte	0x1
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x11c4
	.uleb128 0x19
	.string	"dm_list"
	.byte	0x1
	.uahalf	0x23b
	.uaword	0x11c4
	.uaword	.LLST117
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.uahalf	0x23d
	.uaword	0x149
	.uaword	.LLST118
	.uleb128 0x20
	.uaword	.LBB102
	.uaword	.LBE102
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.uahalf	0x251
	.uaword	0x13b
	.uaword	.LLST119
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x43b
	.uleb128 0x2e
	.string	"Assert_verboseLevel"
	.byte	0x6
	.byte	0x7b
	.uaword	0x149
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x23a
	.uaword	0x11f6
	.uleb128 0xd
	.uaword	0xa6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.string	"conio_dialog_list"
	.byte	0x4
	.byte	0x17
	.uaword	0x1211
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x11e6
	.uleb128 0x2e
	.string	"tft_status"
	.byte	0x7
	.byte	0x18
	.uaword	0x122a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x149
	.uleb128 0x30
	.string	"conio_driver"
	.byte	0x1
	.byte	0x3d
	.uaword	0x717
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	conio_driver
	.uleb128 0x30
	.string	"control"
	.byte	0x1
	.byte	0x3e
	.uaword	0x785
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	control
	.uleb128 0x2e
	.string	"colortable_ascii"
	.byte	0x1
	.byte	0x13
	.uaword	0x457
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0x149
	.uaword	0x128b
	.uleb128 0x31
	.uaword	0xa6
	.uahalf	0x7ff
	.byte	0
	.uleb128 0x30
	.string	"fifo_display"
	.byte	0x1
	.byte	0x3f
	.uaword	0x127a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	fifo_display
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-1
	.uaword	.LFE351
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LFB350
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE350
	.uahalf	0x3
	.byte	0x8a
	.sleb128 112
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL170
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL170
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL157
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL169
	.uaword	.LFE350
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL157
	.uaword	.LVL159-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL170
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x42
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x4c
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL29
	.uahalf	0x3
	.byte	0x8
	.byte	0xda
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL157
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL162
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL164
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL167
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL174
	.uahalf	0x3
	.byte	0x8
	.byte	0xda
	.byte	0x9f
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x3
	.byte	0x8
	.byte	0xda
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x3
	.byte	0x8
	.byte	0xda
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x5
	.byte	0x3
	.uaword	conio_driver+8
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL11
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL15
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x5
	.byte	0x3
	.uaword	conio_driver+12
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL15
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL20
	.uaword	.LVL29
	.uahalf	0x3
	.byte	0x8
	.byte	0xbe
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL174
	.uahalf	0x3
	.byte	0x8
	.byte	0xbe
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x3
	.byte	0x8
	.byte	0xbe
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x3
	.byte	0x8
	.byte	0xbe
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0xe
	.byte	0x3
	.uaword	conio_driver+216
	.byte	0x6
	.byte	0x35
	.byte	0x24
	.byte	0x3
	.uaword	conio_driver+8
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL20
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL170
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x4740
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0xe
	.byte	0x3
	.uaword	conio_driver+216
	.byte	0x6
	.byte	0x35
	.byte	0x24
	.byte	0x3
	.uaword	conio_driver+8
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x5
	.byte	0x3
	.uaword	control
	.uaword	.LVL157
	.uaword	.LVL159-1
	.uahalf	0x5
	.byte	0x3
	.uaword	control
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL37-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 128
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL167
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL36
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL50
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53
	.uaword	.LVL57
	.uahalf	0x3
	.byte	0x7f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -3
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -3
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL93
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL122
	.uaword	.LVL127
	.uahalf	0x3
	.byte	0x7f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL135
	.uaword	.LVL139
	.uahalf	0x3
	.byte	0x7f
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL139
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL147
	.uaword	.LVL151
	.uahalf	0x3
	.byte	0x7f
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL40
	.uaword	.LVL157
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL167
	.uaword	.LVL169
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL40
	.uaword	.LVL157
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL167
	.uaword	.LVL169
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL85-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL83
	.uaword	.LVL85-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL54
	.uaword	.LVL58
	.uahalf	0x3
	.byte	0x91
	.sleb128 -100
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL52
	.uaword	.LVL58
	.uahalf	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL53
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL61-1
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL62
	.uaword	.LVL64-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL62
	.uaword	.LVL64-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68-1
	.uahalf	0x8
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL68-1
	.uaword	.LVL74
	.uahalf	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL69
	.uaword	.LVL70-1
	.uahalf	0x8
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL70-1
	.uaword	.LVL74
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL69
	.uaword	.LVL70-1
	.uahalf	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL70-1
	.uaword	.LVL74
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL71
	.uaword	.LVL73-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL71
	.uaword	.LVL73-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL67
	.uaword	.LVL68-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL68-1
	.uaword	.LVL74
	.uahalf	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL77-1
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL78
	.uaword	.LVL80-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL78
	.uaword	.LVL80-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL93-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL91
	.uaword	.LVL93-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL97-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL95
	.uaword	.LVL97-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL101-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL99
	.uaword	.LVL101-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL105-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL103
	.uaword	.LVL105-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL109-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL107
	.uaword	.LVL109-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL113-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL111
	.uaword	.LVL113-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL117-1
	.uahalf	0x6
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL115
	.uaword	.LVL117-1
	.uahalf	0x8
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL124
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL124
	.uaword	.LVL128
	.uahalf	0x3
	.byte	0x91
	.sleb128 -100
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL122
	.uaword	.LVL124
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL122
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL131-1
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL133
	.uaword	.LVL140
	.uahalf	0x3
	.byte	0x91
	.sleb128 -96
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL136
	.uaword	.LVL140
	.uahalf	0x3
	.byte	0x91
	.sleb128 -92
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL134
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL135
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL143-1
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL145
	.uaword	.LVL152
	.uahalf	0x3
	.byte	0x91
	.sleb128 -96
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL146
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL148
	.uaword	.LVL152
	.uahalf	0x3
	.byte	0x91
	.sleb128 -92
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL146
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL147
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x8f
	.sleb128 152
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 152
	.uaword	.LVL167
	.uaword	.LVL168-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 152
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL167
	.uaword	.LVL168-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x8f
	.sleb128 132
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL171
	.uaword	.LVL174
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x23a0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x3
	.uaword	conio_driver+8
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL172
	.uaword	.LVL174
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL176
	.uaword	.LVL179
	.uahalf	0x3
	.byte	0x8
	.byte	0xbe
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x3
	.uaword	conio_driver+12
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL177
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL181
	.uaword	.LVL184
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x11d0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x3
	.uaword	conio_driver+8
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL182
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL186
	.uaword	.LFE352
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	0
	.uaword	0
	.uaword	.LFB349
	.uaword	.LFE349
	.uaword	.LFB351
	.uaword	.LFE351
	.uaword	.LFB350
	.uaword	.LFE350
	.uaword	.LFB352
	.uaword	.LFE352
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"pstdlist"
.LASF0:
	.string	"color"
.LASF7:
	.string	"buffer"
.LASF5:
	.string	"__res"
.LASF4:
	.string	"displaymode"
.LASF2:
	.string	"pmenulist"
.LASF6:
	.string	"temp"
.LASF1:
	.string	"display"
	.extern	conio_graphics_setcolortable,STT_FUNC,0
	.extern	fifo_display_init,STT_FUNC,0
	.extern	showmenu,STT_FUNC,0
	.extern	tft_ascii,STT_FUNC,0
	.extern	conio_ascii_clrscr,STT_FUNC,0
	.extern	conio_graphics_clrscr,STT_FUNC,0
	.extern	conio_ascii_clreol,STT_FUNC,0
	.extern	conio_ascii_textcolor,STT_FUNC,0
	.extern	conio_ascii_textbackground,STT_FUNC,0
	.extern	conio_graphics_textattr,STT_FUNC,0
	.extern	conio_graphics_textcolor,STT_FUNC,0
	.extern	conio_graphics_textbackground,STT_FUNC,0
	.extern	conio_ascii_textchangebackground,STT_FUNC,0
	.extern	conio_ascii_textchangeforeground,STT_FUNC,0
	.extern	conio_ascii_textchangecolor,STT_FUNC,0
	.extern	conio_graphics_line,STT_FUNC,0
	.extern	conio_graphics_gotoxy,STT_FUNC,0
	.extern	conio_graphics_cputs,STT_FUNC,0
	.extern	tft_graphic,STT_FUNC,0
	.extern	tft_ascii_bar,STT_FUNC,0
	.extern	tft_display_setxy,STT_FUNC,0
	.extern	tft_status,STT_OBJECT,4
	.extern	GET_FIFO_DISPLAY,STT_FUNC,0
	.extern	GET_FIFO_DISPLAY_NODROP,STT_FUNC,0
	.extern	FIFO_DISPLAY_USED,STT_FUNC,0
	.extern	conio_dialog_list,STT_OBJECT,8
	.extern	colortable_ascii,STT_OBJECT,32
	.extern	conio_ascii_cputs,STT_FUNC,0
	.extern	conio_ascii_gotoxy,STT_FUNC,0
	.extern	conio_ascii_textattr,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
