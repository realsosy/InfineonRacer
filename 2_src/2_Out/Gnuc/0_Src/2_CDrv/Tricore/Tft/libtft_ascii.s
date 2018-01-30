	.file	"libtft_ascii.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.tft_prepare_ascii_line,"ax",@progbits
	.align 1
	.type	tft_prepare_ascii_line, @function
tft_prepare_ascii_line:
.LFB376:
	.file 1 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c"
	.loc 1 533 0
.LVL0:
	.loc 1 533 0
	mov.d	%d1, %a4
	movh	%d9, hi:__font_bitmap__8_12
	movh.a	%a6, hi:Row_Buff
	movh.a	%a4, hi:colortable_ascii
.LVL1:
	mov.d	%d0, %a5
	.loc 1 543 0
	mov	%d8, 11
	.loc 1 540 0
	mov	%d15, 1
	addi	%d9, %d9, lo:__font_bitmap__8_12
	lea	%a6, [%a6] lo:Row_Buff
	lea	%a4, [%a4] lo:colortable_ascii
	mov	%d7, 11
.LVL2:
.L2:
	.loc 1 553 0 discriminator 1
	mov.a	%a15, %d9
	.loc 1 543 0 discriminator 1
	mov.a	%a14, %d1
	mov.a	%a13, %d0
	.loc 1 553 0 discriminator 1
	addsc.a	%a5, %a15, %d8, 0
	lea	%a12, 39
.LVL3:
.L8:
	.loc 1 548 0
	ld.bu	%d2, [%a13+]1
	.loc 1 547 0
	ld.bu	%d3, [%a14+]1
.LVL4:
	.loc 1 548 0
	sh	%d6, %d2, -4
.LVL5:
	.loc 1 549 0
	and	%d5, %d2, 15
.LVL6:
	sh	%d2, %d3, 1
	add	%d3, %d2
.LVL7:
	.loc 1 553 0
	addsc.a	%a15, %a5, %d3, 2
	.loc 1 561 0
	addsc.a	%a3, %a4, %d6, 1
	.loc 1 555 0
	addsc.a	%a2, %a4, %d5, 1
	.loc 1 553 0
	ld.bu	%d4, [%a15]0
	.loc 1 550 0
	mov	%d2, 128
	.loc 1 555 0
	mov.a	%a15, 7
.LVL8:
.L7:
	.loc 1 553 0
	and	%d3, %d2, %d4
	.loc 1 555 0
	addsc.a	%a7, %a6, %d15, 1
	.loc 1 553 0
	jz	%d3, .L3
	.loc 1 555 0
	ld.h	%d3, [%a2]0
.L14:
	.loc 1 562 0
	and	%d5, %d15, 1
	.loc 1 561 0
	st.h	[%a7]0, %d3
	.loc 1 562 0
	add	%d3, %d15, -1
	add	%d15, 3
.LVL9:
	seln	%d15, %d5, %d15, %d3
.LVL10:
	.loc 1 565 0
	sh	%d2, -1
.LVL11:
	loop	%a15, .L7
	.loc 1 545 0
	loop	%a12, .L8
	.loc 1 543 0
	add	%d8, -1
.LVL12:
	jned	%d7, 0, .L2
	ret
.LVL13:
.L3:
	.loc 1 561 0
	ld.h	%d3, [%a3]0
	j	.L14
.LFE376:
	.size	tft_prepare_ascii_line, .-tft_prepare_ascii_line
.section .text.tft_ascii_line_written,"ax",@progbits
	.align 1
	.type	tft_ascii_line_written, @function
tft_ascii_line_written:
.LFB377:
	.loc 1 572 0
	.loc 1 574 0
	movh.a	%a15, hi:YROW_cnt
	ld.w	%d15, [%a15] lo:YROW_cnt
	movh.a	%a2, hi:cpy_pdisplay
	ld.a	%a4, [%a2] lo:cpy_pdisplay
	movh.a	%a2, hi:cpy_pdisplaycolor
	sh	%d2, %d15, 2
	ld.a	%a5, [%a2] lo:cpy_pdisplaycolor
	add	%d2, %d15
	sh	%d2, 3
	addsc.a	%a4, %a4, %d2, 0
	addsc.a	%a5, %a5, %d2, 0
	call	tft_prepare_ascii_line
	.loc 1 576 0
	jz	%d15, .L19
	.loc 1 586 0
	add	%d15, -1
	.loc 1 587 0
	movh.a	%a4, hi:tft_ascii_line_written
	lea	%a4, [%a4] lo:tft_ascii_line_written
	mov	%d4, 3840
	.loc 1 586 0
	st.w	[%a15] lo:YROW_cnt, %d15
	.loc 1 587 0
	call	tft_flush_row_buff
	.loc 1 590 0
	mov	%d2, 0
	ret
.L19:
.LBB27:
.LBB28:
	.loc 1 580 0
	mov.a	%a4, 0
	mov	%d4, 3840
	call	tft_flush_row_buff
.LBE28:
.LBE27:
	.loc 1 590 0
	mov	%d2, 0
	ret
.LFE377:
	.size	tft_ascii_line_written, .-tft_ascii_line_written
.section .text.display_ascii_clrscr,"ax",@progbits
	.align 1
	.global	display_ascii_clrscr
	.type	display_ascii_clrscr, @function
display_ascii_clrscr:
.LFB349:
	.loc 1 98 0
.LVL14:
	.loc 1 98 0
	mov	%d15, %d4
	.loc 1 99 0
	call	FIFO_DISPLAY_FREE
.LVL15:
	jge	%d2, 3, .L22
	ret
.L22:
	.loc 1 101 0
#APP
	# 101 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 102 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -30
	call	PUT_FIFO_DISPLAY
	.loc 1 103 0
	mov	%d4, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 104 0
#APP
	# 104 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE349:
	.size	display_ascii_clrscr, .-display_ascii_clrscr
.section .text.display_ascii_clreol,"ax",@progbits
	.align 1
	.global	display_ascii_clreol
	.type	display_ascii_clreol, @function
display_ascii_clreol:
.LFB350:
	.loc 1 110 0
.LVL16:
	.loc 1 110 0
	mov	%d15, %d4
	.loc 1 111 0
	call	FIFO_DISPLAY_FREE
.LVL17:
	jge	%d2, 3, .L25
	ret
.L25:
	.loc 1 113 0
#APP
	# 113 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 114 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -25
	call	PUT_FIFO_DISPLAY
	.loc 1 115 0
	mov	%d4, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 116 0
#APP
	# 116 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE350:
	.size	display_ascii_clreol, .-display_ascii_clreol
.section .text.display_ascii_textattr,"ax",@progbits
	.align 1
	.global	display_ascii_textattr
	.type	display_ascii_textattr, @function
display_ascii_textattr:
.LFB351:
	.loc 1 121 0
.LVL18:
	.loc 1 121 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 122 0
	call	FIFO_DISPLAY_FREE
.LVL19:
	jge	%d2, 3, .L28
	ret
.L28:
	.loc 1 124 0
#APP
	# 124 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 125 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -24
	call	PUT_FIFO_DISPLAY
	.loc 1 126 0
	sh	%d15, %d15, 16
.LVL20:
	add	%d4, %d8, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 127 0
#APP
	# 127 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE351:
	.size	display_ascii_textattr, .-display_ascii_textattr
.section .text.display_ascii_textcolor,"ax",@progbits
	.align 1
	.global	display_ascii_textcolor
	.type	display_ascii_textcolor, @function
display_ascii_textcolor:
.LFB352:
	.loc 1 133 0
.LVL21:
	.loc 1 133 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 134 0
	call	FIFO_DISPLAY_FREE
.LVL22:
	jge	%d2, 3, .L31
	ret
.L31:
	.loc 1 136 0
#APP
	# 136 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 137 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -23
	call	PUT_FIFO_DISPLAY
	.loc 1 138 0
	sh	%d15, %d15, 16
.LVL23:
	add	%d4, %d8, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 139 0
#APP
	# 139 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE352:
	.size	display_ascii_textcolor, .-display_ascii_textcolor
.section .text.display_ascii_textbackground,"ax",@progbits
	.align 1
	.global	display_ascii_textbackground
	.type	display_ascii_textbackground, @function
display_ascii_textbackground:
.LFB353:
	.loc 1 144 0
.LVL24:
	.loc 1 144 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 145 0
	call	FIFO_DISPLAY_FREE
.LVL25:
	jge	%d2, 3, .L34
	ret
.L34:
	.loc 1 147 0
#APP
	# 147 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 148 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -22
	call	PUT_FIFO_DISPLAY
	.loc 1 149 0
	sh	%d15, %d15, 16
.LVL26:
	add	%d4, %d8, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 150 0
#APP
	# 150 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE353:
	.size	display_ascii_textbackground, .-display_ascii_textbackground
.section .text.display_ascii_textchangebackground,"ax",@progbits
	.align 1
	.global	display_ascii_textchangebackground
	.type	display_ascii_textchangebackground, @function
display_ascii_textchangebackground:
.LFB354:
	.loc 1 155 0
.LVL27:
	.loc 1 155 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 156 0
	call	FIFO_DISPLAY_FREE
.LVL28:
	jge	%d2, 3, .L37
	ret
.L37:
	.loc 1 158 0
#APP
	# 158 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 159 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -18
	call	PUT_FIFO_DISPLAY
	.loc 1 160 0
	sh	%d15, %d15, 16
.LVL29:
	add	%d4, %d8, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 161 0
#APP
	# 161 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE354:
	.size	display_ascii_textchangebackground, .-display_ascii_textchangebackground
.section .text.display_ascii_textchangeforeground,"ax",@progbits
	.align 1
	.global	display_ascii_textchangeforeground
	.type	display_ascii_textchangeforeground, @function
display_ascii_textchangeforeground:
.LFB355:
	.loc 1 166 0
.LVL30:
	.loc 1 166 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 167 0
	call	FIFO_DISPLAY_FREE
.LVL31:
	jge	%d2, 3, .L40
	ret
.L40:
	.loc 1 169 0
#APP
	# 169 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 170 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -17
	call	PUT_FIFO_DISPLAY
	.loc 1 171 0
	sh	%d15, %d15, 16
.LVL32:
	add	%d4, %d8, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 172 0
#APP
	# 172 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE355:
	.size	display_ascii_textchangeforeground, .-display_ascii_textchangeforeground
.section .text.display_ascii_textchangecolor,"ax",@progbits
	.align 1
	.global	display_ascii_textchangecolor
	.type	display_ascii_textchangecolor, @function
display_ascii_textchangecolor:
.LFB356:
	.loc 1 177 0
.LVL33:
	.loc 1 177 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 178 0
	call	FIFO_DISPLAY_FREE
.LVL34:
	jge	%d2, 3, .L43
	ret
.L43:
	.loc 1 180 0
#APP
	# 180 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 181 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -16
	call	PUT_FIFO_DISPLAY
	.loc 1 182 0
	sh	%d15, %d15, 16
.LVL35:
	add	%d4, %d8, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 183 0
#APP
	# 183 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE356:
	.size	display_ascii_textchangecolor, .-display_ascii_textchangecolor
.section .text.display_ascii_gotoxy,"ax",@progbits
	.align 1
	.global	display_ascii_gotoxy
	.type	display_ascii_gotoxy, @function
display_ascii_gotoxy:
.LFB357:
	.loc 1 188 0
.LVL36:
	.loc 1 188 0
	mov	%d8, %d4
	mov	%d15, %d5
	mov	%d9, %d6
	.loc 1 189 0
	call	FIFO_DISPLAY_FREE
.LVL37:
	jge	%d2, 4, .L46
	ret
.L46:
	.loc 1 191 0
#APP
	# 191 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 192 0
#NO_APP
	movh	%d4, 4
	addi	%d4, %d4, -13
	call	PUT_FIFO_DISPLAY
	.loc 1 193 0
	mov	%d4, %d8
	call	PUT_FIFO_DISPLAY
	.loc 1 194 0
	sh	%d15, %d15, 16
.LVL38:
	add	%d4, %d15, %d9
	call	PUT_FIFO_DISPLAY
	.loc 1 195 0
#APP
	# 195 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE357:
	.size	display_ascii_gotoxy, .-display_ascii_gotoxy
.section .text.display_ascii_cputs,"ax",@progbits
	.align 1
	.global	display_ascii_cputs
	.type	display_ascii_cputs, @function
display_ascii_cputs:
.LFB358:
	.loc 1 200 0
.LVL39:
	.loc 1 200 0
	mov	%d9, %d4
	mov.aa	%a15, %a4
	.loc 1 204 0
	call	strlen
.LVL40:
	.loc 1 205 0
	ge	%d3, %d2, 41
	mov	%d15, 12
	mov	%d8, 10
	jnz	%d3, .L48
	.loc 1 208 0
	or	%d8, %d2, 3
.LVL41:
	add	%d8, 1
.LVL42:
	sha	%d8, -2
.LVL43:
	.loc 1 207 0
	and	%d3, %d2, 3
	.loc 1 208 0
	add	%d15, %d8, 2
	.loc 1 207 0
	jz	%d3, .L55
.L48:
.LVL44:
	.loc 1 211 0
	call	FIFO_DISPLAY_FREE
	jlt	%d15, %d2, .L56
	ret
.L56:
	.loc 1 213 0
#APP
	# 213 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 214 0
#NO_APP
	sh	%d15, %d15, 16
.LVL45:
	addi	%d15, %d15, -15
	addih	%d4, %d15, 1
	call	PUT_FIFO_DISPLAY
	.loc 1 215 0
	sh	%d4, %d9, 16
	call	PUT_FIFO_DISPLAY
.LVL46:
	.loc 1 217 0
	jlez	%d8, .L51
	mov	%d15, 0
.LVL47:
.L52:
	.loc 1 218 0 discriminator 2
	ld.w	%d4, [%a15+]4
	.loc 1 217 0 discriminator 2
	add	%d15, 1
	.loc 1 218 0 discriminator 2
	call	PUT_FIFO_DISPLAY
.LVL48:
	.loc 1 217 0 discriminator 2
	jne	%d15, %d8, .L52
.LVL49:
.L51:
	.loc 1 219 0
#APP
	# 219 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LVL50:
.L55:
	.loc 1 207 0
	sha	%d8, %d2, -2
	add	%d15, %d8, 2
	j	.L48
.LFE358:
	.size	display_ascii_cputs, .-display_ascii_cputs
.section .text.display_ascii_printfxy,"ax",@progbits
	.align 1
	.global	display_ascii_printfxy
	.type	display_ascii_printfxy, @function
display_ascii_printfxy:
.LFB359:
	.loc 1 225 0
.LVL51:
	sub.a	%SP, 80
.LCFI0:
.LVL52:
	.loc 1 225 0
	mov.aa	%a5, %a4
	.loc 1 232 0
	lea	%a6, [%SP] 80
	mov.aa	%a4, %SP
.LVL53:
	.loc 1 225 0
	mov	%d10, %d4
	mov	%d9, %d5
	mov	%d11, %d6
	.loc 1 232 0
	call	vsprintf
.LVL54:
	.loc 1 234 0
	jltz	%d2, .L57
	.loc 1 236 0
	mov.aa	%a4, %SP
	call	strlen
.LVL55:
	add	%d2, 1
.LVL56:
	.loc 1 237 0
	ge	%d3, %d2, 41
	mov	%d15, 13
	mov	%d8, 10
	jz	%d3, .L65
.LVL57:
.L59:
	.loc 1 243 0
	call	FIFO_DISPLAY_FREE
	jlt	%d15, %d2, .L66
.LVL58:
.L57:
	ret
.LVL59:
.L65:
	.loc 1 240 0
	or	%d8, %d2, 3
.LVL60:
	add	%d8, 1
.LVL61:
	sha	%d8, -2
.LVL62:
	.loc 1 239 0
	and	%d3, %d2, 3
	.loc 1 240 0
	add	%d15, %d8, 3
	.loc 1 239 0
	jnz	%d3, .L59
	sha	%d8, %d2, -2
	add	%d15, %d8, 3
	j	.L59
.LVL63:
.L66:
	.loc 1 245 0
#APP
	# 245 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 246 0
#NO_APP
	sh	%d15, %d15, 16
.LVL64:
	addi	%d15, %d15, -28
	addih	%d4, %d15, 1
	call	PUT_FIFO_DISPLAY
	.loc 1 247 0
	mov	%d4, %d10
	call	PUT_FIFO_DISPLAY
	.loc 1 248 0
	sh	%d4, %d9, 16
	add	%d4, %d11
	call	PUT_FIFO_DISPLAY
.LVL65:
	.loc 1 250 0
	jlez	%d8, .L61
	.loc 1 249 0
	mov.aa	%a15, %SP
	.loc 1 250 0
	mov	%d15, 0
.LVL66:
.L62:
	.loc 1 252 0 discriminator 2
	ld.w	%d4, [%a15+]4
	.loc 1 250 0 discriminator 2
	add	%d15, 1
	.loc 1 252 0 discriminator 2
	call	PUT_FIFO_DISPLAY
.LVL67:
	.loc 1 250 0 discriminator 2
	jne	%d15, %d8, .L62
.LVL68:
.L61:
	.loc 1 254 0
#APP
	# 254 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE359:
	.size	display_ascii_printfxy, .-display_ascii_printfxy
.section .text.display_ascii_printf,"ax",@progbits
	.align 1
	.global	display_ascii_printf
	.type	display_ascii_printf, @function
display_ascii_printf:
.LFB360:
	.loc 1 259 0
.LVL69:
	sub.a	%SP, 80
.LCFI1:
.LVL70:
	.loc 1 259 0
	mov.aa	%a5, %a4
	.loc 1 266 0
	lea	%a6, [%SP] 80
	mov.aa	%a4, %SP
.LVL71:
	.loc 1 259 0
	mov	%d9, %d4
	.loc 1 266 0
	call	vsprintf
.LVL72:
	.loc 1 268 0
	jltz	%d2, .L67
	.loc 1 270 0
	mov.aa	%a4, %SP
	call	strlen
.LVL73:
	add	%d2, 1
.LVL74:
	.loc 1 271 0
	ge	%d3, %d2, 41
	mov	%d15, 12
	mov	%d8, 10
	jz	%d3, .L75
.LVL75:
.L69:
	.loc 1 277 0
	call	FIFO_DISPLAY_FREE
	jlt	%d15, %d2, .L76
.LVL76:
.L67:
	ret
.LVL77:
.L75:
	.loc 1 274 0
	or	%d8, %d2, 3
.LVL78:
	add	%d8, 1
.LVL79:
	sha	%d8, -2
.LVL80:
	.loc 1 273 0
	and	%d3, %d2, 3
	.loc 1 274 0
	add	%d15, %d8, 2
	.loc 1 273 0
	jnz	%d3, .L69
	sha	%d8, %d2, -2
	add	%d15, %d8, 2
	j	.L69
.LVL81:
.L76:
	.loc 1 279 0
#APP
	# 279 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	disable
	# 0 "" 2
	.loc 1 280 0
#NO_APP
	sh	%d15, %d15, 16
.LVL82:
	addi	%d15, %d15, -26
	addih	%d4, %d15, 1
	call	PUT_FIFO_DISPLAY
	.loc 1 281 0
	mov	%d4, %d9
	call	PUT_FIFO_DISPLAY
.LVL83:
	.loc 1 283 0
	jlez	%d8, .L71
	.loc 1 282 0
	mov.aa	%a15, %SP
	.loc 1 283 0
	mov	%d15, 0
.LVL84:
.L72:
	.loc 1 285 0 discriminator 2
	ld.w	%d4, [%a15+]4
	.loc 1 283 0 discriminator 2
	add	%d15, 1
	.loc 1 285 0 discriminator 2
	call	PUT_FIFO_DISPLAY
.LVL85:
	.loc 1 283 0 discriminator 2
	jne	%d15, %d8, .L72
.LVL86:
.L71:
	.loc 1 287 0
#APP
	# 287 "0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE360:
	.size	display_ascii_printf, .-display_ascii_printf
.section .text.conio_ascii_setcolortable,"ax",@progbits
	.align 1
	.global	conio_ascii_setcolortable
	.type	conio_ascii_setcolortable, @function
conio_ascii_setcolortable:
.LFB361:
	.loc 1 293 0
.LVL87:
	.loc 1 295 0
	sh	%d6, -2
.LVL88:
	.loc 1 298 0
	sh	%d6, 5
.LVL89:
	.loc 1 296 0
	sh	%d7, -3
.LVL90:
	.loc 1 294 0
	sh	%d5, -3
.LVL91:
	.loc 1 298 0
	movh.a	%a15, hi:colortable_ascii
	or	%d7, %d6
.LVL92:
	sh	%d5, %d5, 11
.LVL93:
	lea	%a15, [%a15] lo:colortable_ascii
	or	%d7, %d5
	addsc.a	%a15, %a15, %d4, 1
	st.h	[%a15]0, %d7
	.loc 1 299 0
	ret
.LFE361:
	.size	conio_ascii_setcolortable, .-conio_ascii_setcolortable
.section .text.conio_ascii_clrscr,"ax",@progbits
	.align 1
	.global	conio_ascii_clrscr
	.type	conio_ascii_clrscr, @function
conio_ascii_clrscr:
.LFB362:
	.loc 1 302 0
.LVL94:
	.loc 1 305 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	sh	%d4, 5
.LVL95:
	addsc.a	%a2, %a15, %d4, 0
	ld.w	%d15, [%a2] 16
	jeq	%d15, 1, .L79
.LBB29:
.LBB30:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L79:
.LVL96:
.LBE30:
.LBE29:
	.loc 1 314 0 discriminator 1
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 302 0 discriminator 1
	mov	%d5, 0
	.loc 1 314 0 discriminator 1
	mov	%d3, 32
	.loc 1 311 0 discriminator 1
	lea	%a5, 18
.LVL97:
.L80:
	.loc 1 302 0 discriminator 1
	mov	%d2, 0
	.loc 1 314 0 discriminator 1
	lea	%a2, 39
.LVL98:
.L81:
.LBB33:
.LBB31:
	.loc 1 301 0 discriminator 2
	mov.a	%a4, %d2
.LBE31:
.LBE33:
	.loc 1 314 0 discriminator 2
	ld.w	%d15, [%a15] 8
.LBB34:
.LBB32:
	.loc 1 301 0 discriminator 2
	addsc.a	%a3, %a4, %d5, 0
.LBE32:
.LBE34:
	.loc 1 312 0 discriminator 2
	add	%d2, 1
.LVL99:
	.loc 1 314 0 discriminator 2
	addsc.a	%a4, %a3, %d15, 0
	st.b	[%a4]0, %d3
	.loc 1 315 0 discriminator 2
	ld.w	%d4, [%a15] 12
	.loc 1 316 0 discriminator 2
	ld.bu	%d15, [%a15] 20
	.loc 1 315 0 discriminator 2
	addsc.a	%a3, %a3, %d4, 0
	st.b	[%a3]0, %d15
	.loc 1 312 0 discriminator 2
	loop	%a2, .L81
	.loc 1 312 0 is_stmt 0
	addi	%d5, %d5, 40
	.loc 1 311 0 is_stmt 1
	loop	%a5, .L80
	ret
.LFE362:
	.size	conio_ascii_clrscr, .-conio_ascii_clrscr
.section .text.conio_ascii_clreol,"ax",@progbits
	.align 1
	.global	conio_ascii_clreol
	.type	conio_ascii_clreol, @function
conio_ascii_clreol:
.LFB363:
	.loc 1 321 0
.LVL100:
	.loc 1 323 0
	movh	%d2, hi:conio_driver
	addi	%d2, %d2, lo:conio_driver
	mov.a	%a2, %d2
	sh	%d5, %d4, 5
	addsc.a	%a15, %a2, %d5, 0
	ld.w	%d15, [%a15] 16
	jeq	%d15, 1, .L87
.LBB35:
.LBB36:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L87:
.LBE36:
.LBE35:
	.loc 1 329 0
	madd	%d15, %d2, %d4, 32
	mov.a	%a2, %d15
	ld.w	%d15, [%a2] 32
.LVL101:
	ge	%d3, %d15, 40
	jnz	%d3, .L86
	.loc 1 331 0 discriminator 2
	mov.a	%a2, %d2
.LVL102:
	rsub	%d2, %d15, 39
	addsc.a	%a15, %a2, %d5, 0
	mov.a	%a2, %d2
	mov	%d4, 32
.LVL103:
.L90:
	ld.w	%d3, [%a15] 36
	mov.a	%a4, %d15
	sh	%d2, %d3, 2
	add	%d2, %d3
	ld.w	%d5, [%a15] 8
	addsc.a	%a3, %a4, %d2, 3
	.loc 1 329 0 discriminator 2
	add	%d15, 1
.LVL104:
	.loc 1 331 0 discriminator 2
	addsc.a	%a3, %a3, %d5, 0
	st.b	[%a3]0, %d4
	.loc 1 332 0 discriminator 2
	ld.w	%d5, [%a15] 36
	ld.w	%d6, [%a15] 12
	sh	%d3, %d5, 2
	add	%d3, %d5
	addsc.a	%a3, %a4, %d3, 3
	.loc 1 333 0 discriminator 2
	ld.bu	%d2, [%a15] 20
	.loc 1 332 0 discriminator 2
	addsc.a	%a3, %a3, %d6, 0
	st.b	[%a3]0, %d2
	.loc 1 329 0 discriminator 2
	loop	%a2, .L90
.L86:
	ret
.LFE363:
	.size	conio_ascii_clreol, .-conio_ascii_clreol
.section .text.conio_ascii_textattr,"ax",@progbits
	.align 1
	.global	conio_ascii_textattr
	.type	conio_ascii_textattr, @function
conio_ascii_textattr:
.LFB364:
	.loc 1 339 0
.LVL105:
	.loc 1 340 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	st.b	[%a15] 20, %d5
	.loc 1 341 0
	ret
.LFE364:
	.size	conio_ascii_textattr, .-conio_ascii_textattr
.section .text.conio_ascii_textcolor,"ax",@progbits
	.align 1
	.global	conio_ascii_textcolor
	.type	conio_ascii_textcolor, @function
conio_ascii_textcolor:
.LFB365:
	.loc 1 344 0
.LVL106:
	.loc 1 345 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 20
	insert	%d5, %d15, %d5, 0, 4
.LVL107:
	st.b	[%a15] 20, %d5
	.loc 1 346 0
	ret
.LFE365:
	.size	conio_ascii_textcolor, .-conio_ascii_textcolor
.section .text.conio_ascii_textbackground,"ax",@progbits
	.align 1
	.global	conio_ascii_textbackground
	.type	conio_ascii_textbackground, @function
conio_ascii_textbackground:
.LFB366:
	.loc 1 349 0
.LVL108:
	.loc 1 350 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 20
	insert	%d5, %d15, %d5, 4, 32-4
.LVL109:
	st.b	[%a15] 20, %d5
	.loc 1 351 0
	ret
.LFE366:
	.size	conio_ascii_textbackground, .-conio_ascii_textbackground
.section .text.conio_ascii_textchangebackground,"ax",@progbits
	.align 1
	.global	conio_ascii_textchangebackground
	.type	conio_ascii_textchangebackground, @function
conio_ascii_textchangebackground:
.LFB367:
	.loc 1 354 0
.LVL110:
	.loc 1 355 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d2, %d4, 5
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L96
.LBB37:
.LBB38:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L96:
.LVL111:
.LBE38:
.LBE37:
	.loc 1 362 0
	mov.a	%a3, %d15
	addsc.a	%a15, %a3, %d2, 0
	.loc 1 363 0
	madd	%d2, %d15, %d4, 32
	.loc 1 362 0
	ld.w	%d3, [%a15] 36
	ld.w	%d4, [%a15] 12
.LVL112:
	.loc 1 363 0
	mov.a	%a3, %d2
	.loc 1 362 0
	sh	%d2, %d3, 2
	ld.w	%d15, [%a3] 32
	add	%d2, %d3
	mov.a	%a3, %d15
	.loc 1 361 0
	ld.bu	%d15, [%a15] 20
	.loc 1 362 0
	addsc.a	%a2, %a3, %d2, 3
	.loc 1 361 0
	and	%d15, %d15, 15
	insert	%d5, %d15, %d5, 4, 4
	.loc 1 362 0
	addsc.a	%a2, %a2, %d4, 0
	.loc 1 363 0
	st.b	[%a2]0, %d5
	.loc 1 364 0
	ret
.LFE367:
	.size	conio_ascii_textchangebackground, .-conio_ascii_textchangebackground
.section .text.conio_ascii_textchangeforeground,"ax",@progbits
	.align 1
	.global	conio_ascii_textchangeforeground
	.type	conio_ascii_textchangeforeground, @function
conio_ascii_textchangeforeground:
.LFB368:
	.loc 1 367 0
.LVL113:
	.loc 1 368 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d2, %d4, 5
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L98
.LBB39:
.LBB40:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L98:
.LBE40:
.LBE39:
	.loc 1 375 0
	mov.a	%a3, %d15
	.loc 1 374 0
	and	%d5, %d5, 15
.LVL114:
	.loc 1 375 0
	addsc.a	%a15, %a3, %d2, 0
	.loc 1 376 0
	madd	%d2, %d15, %d4, 32
	.loc 1 375 0
	ld.w	%d3, [%a15] 36
	ld.w	%d4, [%a15] 12
.LVL115:
	.loc 1 376 0
	mov.a	%a3, %d2
	.loc 1 375 0
	sh	%d2, %d3, 2
	ld.w	%d15, [%a3] 32
	add	%d2, %d3
	mov.a	%a3, %d15
	.loc 1 374 0
	ld.bu	%d15, [%a15] 20
	.loc 1 375 0
	addsc.a	%a2, %a3, %d2, 3
	.loc 1 374 0
	and	%d15, %d15, 240
	or	%d5, %d15
	.loc 1 375 0
	addsc.a	%a2, %a2, %d4, 0
	.loc 1 376 0
	st.b	[%a2]0, %d5
	.loc 1 377 0
	ret
.LFE368:
	.size	conio_ascii_textchangeforeground, .-conio_ascii_textchangeforeground
.section .text.conio_ascii_textchangecolor,"ax",@progbits
	.align 1
	.global	conio_ascii_textchangecolor
	.type	conio_ascii_textchangecolor, @function
conio_ascii_textchangecolor:
.LFB369:
	.loc 1 380 0
.LVL116:
	.loc 1 381 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d2, %d4, 5
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L100
.LBB41:
.LBB42:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L100:
.LBE42:
.LBE41:
	.loc 1 387 0
	mov.a	%a2, %d15
	.loc 1 388 0
	madd	%d3, %d15, %d4, 32
	.loc 1 387 0
	addsc.a	%a15, %a2, %d2, 0
	.loc 1 388 0
	mov.a	%a2, %d3
	.loc 1 387 0
	ld.w	%d2, [%a15] 36
	ld.w	%d15, [%a2] 32
	sh	%d3, %d2, 2
	add	%d2, %d3
	ld.a	%a15, [%a15] 12
	madd	%d2, %d15, %d2, 8
	addsc.a	%a15, %a15, %d2, 0
	.loc 1 388 0
	st.b	[%a15]0, %d5
	.loc 1 389 0
	ret
.LFE369:
	.size	conio_ascii_textchangecolor, .-conio_ascii_textchangecolor
.section .text.conio_ascii_gotoxy,"ax",@progbits
	.align 1
	.global	conio_ascii_gotoxy
	.type	conio_ascii_gotoxy, @function
conio_ascii_gotoxy:
.LFB370:
	.loc 1 392 0
.LVL117:
	.loc 1 393 0
	movh	%d2, hi:conio_driver
	addi	%d2, %d2, lo:conio_driver
	mov.a	%a2, %d2
	sh	%d15, %d4, 5
	addsc.a	%a15, %a2, %d15, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L102
.LBB43:
.LBB44:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L102:
.LBE44:
.LBE43:
	.loc 1 399 0
	mov.a	%a2, %d2
	addsc.a	%a15, %a2, %d15, 0
	ld.w	%d15, [%a15] 24
	jge	%d5, %d15, .L101
	.loc 1 399 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a15] 28
	jge	%d6, %d15, .L101
	.loc 1 400 0 is_stmt 1
	madd	%d15, %d2, %d4, 32
	.loc 1 401 0
	st.w	[%a15] 36, %d6
	.loc 1 400 0
	mov.a	%a2, %d15
	st.w	[%a2] 32, %d5
.L101:
	ret
.LFE370:
	.size	conio_ascii_gotoxy, .-conio_ascii_gotoxy
.section .text.conio_ascii_cputs,"ax",@progbits
	.align 1
	.global	conio_ascii_cputs
	.type	conio_ascii_cputs, @function
conio_ascii_cputs:
.LFB371:
	.loc 1 405 0
.LVL118:
	.loc 1 408 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d3, %d4, 5
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d2, [%a15] 16
	jeq	%d2, 1, .L105
.LBB45:
.LBB46:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L105:
.LVL119:
.LBE46:
.LBE45:
	.loc 1 415 0
	add	%d4, 1
.LVL120:
	madd	%d2, %d15, %d4, 32
	.loc 1 416 0
	mov.a	%a2, %d15
	.loc 1 415 0
	mov.a	%a6, %d2
	.loc 1 416 0
	addsc.a	%a5, %a2, %d3, 0
	.loc 1 417 0
	ld.bu	%d3, [%a4]0
	.loc 1 415 0
	ld.w	%d2, [%a6]0
.LVL121:
	.loc 1 416 0
	ld.w	%d15, [%a5] 36
.LVL122:
	.loc 1 417 0
	jz	%d3, .L104
.LVL123:
.L113:
	.loc 1 419 0
	eq	%d4, %d3, 10
	jnz	%d4, .L108
	.loc 1 421 0
	mov.a	%a2, %d2
	sh	%d4, %d15, 2
	add	%d4, %d15
	addsc.a	%a15, %a2, %d4, 3
	ld.w	%d4, [%a5] 8
	.loc 1 424 0
	add	%d2, 1
.LVL124:
	.loc 1 421 0
	addsc.a	%a2, %a15, %d4, 0
	st.b	[%a2]0, %d3
	.loc 1 422 0
	ld.w	%d4, [%a5] 12
	.loc 1 423 0
	ld.bu	%d3, [%a5] 20
	.loc 1 422 0
	addsc.a	%a15, %a15, %d4, 0
	st.b	[%a15]0, %d3
	.loc 1 431 0
	ge	%d3, %d2, 40
	jz	%d3, .L109
.L108:
.LVL125:
	.loc 1 434 0
	add	%d15, 1
.LVL126:
	.loc 1 433 0
	mov	%d2, 0
.LVL127:
.L109:
	.loc 1 436 0
	lt	%d3, %d15, 19
	jnz	%d3, .L110
.LBB47:
	.loc 1 443 0
	ld.a	%a15, [%a5] 8
.LVL128:
	.loc 1 445 0
	ld.a	%a7, [%a5] 12
.LVL129:
.LBE47:
	.loc 1 444 0
	lea	%a3, 179
.LBB48:
	.loc 1 404 0
	lea	%a12, [%a15] 720
.LBE48:
	.loc 1 446 0
	mov.aa	%a2, %a7
.LVL130:
.L111:
.LBB49:
	.loc 1 449 0 discriminator 2
	ld.w	%d15, [%a15] 40
	st.w	[%a15+]4, %d15
.LVL131:
	.loc 1 450 0 discriminator 2
	ld.w	%d15, [%a2] 40
	st.w	[%a2+]4, %d15
.LVL132:
	loop	%a3, .L111
	.loc 1 447 0
	mov.aa	%a2, %a12
.LVL133:
	lea	%a3, [%a7] 720
	.loc 1 454 0
	mov	%d15, 0
	mov.a	%a15, 9
.LVL134:
.L112:
	.loc 1 454 0 is_stmt 0 discriminator 2
	st.w	[%a2+]4, %d15
.LVL135:
	.loc 1 455 0 is_stmt 1 discriminator 2
	st.w	[%a3+]4, %d15
.LVL136:
	loop	%a15, .L112
	.loc 1 457 0
	mov	%d15, 18
.LVL137:
.L110:
.LBE49:
	.loc 1 459 0
	st.w	[%a6]0, %d2
	.loc 1 460 0
	st.w	[%a5] 36, %d15
	.loc 1 417 0
	ld.bu	%d3, [+%a4]1
	jnz	%d3, .L113
.L104:
	ret
.LFE371:
	.size	conio_ascii_cputs, .-conio_ascii_cputs
.section .text.conio_ascii_putch,"ax",@progbits
	.align 1
	.global	conio_ascii_putch
	.type	conio_ascii_putch, @function
conio_ascii_putch:
.LFB372:
	.loc 1 466 0
.LVL138:
	.loc 1 467 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d2, %d4, 5
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L118
.LBB50:
.LBB51:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L118:
.LBE51:
.LBE50:
	.loc 1 475 0
	add	%d4, 1
.LVL139:
	madd	%d3, %d15, %d4, 32
	.loc 1 474 0
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d2, 0
	.loc 1 475 0
	mov.a	%a2, %d3
	.loc 1 474 0
	ld.w	%d2, [%a15] 36
	ld.a	%a3, [%a2]0
	sh	%d15, %d2, 2
	add	%d15, %d2
	ld.w	%d3, [%a15] 8
	addsc.a	%a3, %a3, %d15, 3
	addsc.a	%a3, %a3, %d3, 0
	.loc 1 475 0
	st.b	[%a3]0, %d5
	.loc 1 476 0
	ld.w	%d3, [%a15] 36
	ld.a	%a3, [%a2]0
	sh	%d2, %d3, 2
	add	%d2, %d3
	ld.w	%d4, [%a15] 12
.LVL140:
	addsc.a	%a3, %a3, %d2, 3
	.loc 1 478 0
	ld.bu	%d15, [%a15] 20
	.loc 1 476 0
	addsc.a	%a3, %a3, %d4, 0
	.loc 1 477 0
	st.b	[%a3]0, %d15
	.loc 1 479 0
	ld.w	%d15, [%a2]0
	add	%d15, 1
	st.w	[%a2]0, %d15
	.loc 1 480 0
	ne	%d15, %d15, 40
	jz	%d15, .L120
.L117:
	ret
.LVL141:
.L120:
	.loc 1 483 0
	ld.w	%d2, [%a15] 36
	.loc 1 482 0
	st.w	[%a2]0, %d15
	.loc 1 483 0
	add	%d15, %d2, 1
	st.w	[%a15] 36, %d15
	.loc 1 484 0
	ne	%d15, %d15, 20
	jnz	%d15, .L117
	.loc 1 486 0
	st.w	[%a15] 36, %d2
	ret
.LFE372:
	.size	conio_ascii_putch, .-conio_ascii_putch
.section .text.conio_ascii_cgets,"ax",@progbits
	.align 1
	.global	conio_ascii_cgets
	.type	conio_ascii_cgets, @function
conio_ascii_cgets:
.LFB373:
	.loc 1 492 0
.LVL142:
.LBB52:
.LBB53:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE53:
.LBE52:
	.loc 1 495 0
	mov.a	%a2, 0
	ret
.LFE373:
	.size	conio_ascii_cgets, .-conio_ascii_cgets
.section .text.conio_ascii_printfxy,"ax",@progbits
	.align 1
	.global	conio_ascii_printfxy
	.type	conio_ascii_printfxy, @function
conio_ascii_printfxy:
.LFB374:
	.loc 1 499 0
.LVL143:
	sub.a	%SP, 80
.LCFI2:
.LVL144:
	.loc 1 499 0
	mov.aa	%a5, %a4
	.loc 1 504 0
	lea	%a6, [%SP] 80
	mov.aa	%a4, %SP
.LVL145:
	.loc 1 499 0
	mov	%d15, %d4
	mov	%e8, %d6, %d5
	.loc 1 504 0
	call	vsprintf
.LVL146:
	.loc 1 506 0
	jltz	%d2, .L122
.LVL147:
.LBB54:
.LBB55:
	.loc 1 393 0
	movh	%d4, hi:conio_driver
	addi	%d4, %d4, lo:conio_driver
	mov.a	%a2, %d4
	sh	%d2, %d15, 5
.LVL148:
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d3, [%a15] 16
	jeq	%d3, 1, .L124
.LBB56:
.LBB57:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L124:
.LBE57:
.LBE56:
	.loc 1 399 0
	mov.a	%a2, %d4
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d2, [%a15] 24
	jge	%d8, %d2, .L125
	ld.w	%d2, [%a15] 28
	jge	%d9, %d2, .L125
	.loc 1 400 0
	madd	%d2, %d4, %d15, 32
	.loc 1 401 0
	st.w	[%a15] 36, %d9
	.loc 1 400 0
	mov.a	%a2, %d2
	st.w	[%a2] 32, %d8
.L125:
.LBE55:
.LBE54:
	.loc 1 512 0
	mov	%d4, %d15
	mov.aa	%a4, %SP
	call	conio_ascii_cputs
.LVL149:
.L122:
	ret
.LFE374:
	.size	conio_ascii_printfxy, .-conio_ascii_printfxy
.section .text.conio_ascii_printf,"ax",@progbits
	.align 1
	.global	conio_ascii_printf
	.type	conio_ascii_printf, @function
conio_ascii_printf:
.LFB375:
	.loc 1 517 0
.LVL150:
	sub.a	%SP, 80
.LCFI3:
.LVL151:
	.loc 1 517 0
	mov.aa	%a5, %a4
	.loc 1 522 0
	lea	%a6, [%SP] 80
	mov.aa	%a4, %SP
.LVL152:
	.loc 1 517 0
	mov	%d15, %d4
	.loc 1 522 0
	call	vsprintf
.LVL153:
	.loc 1 524 0
	jltz	%d2, .L126
	.loc 1 529 0
	mov	%d4, %d15
	mov.aa	%a4, %SP
	call	conio_ascii_cputs
.LVL154:
.L126:
	ret
.LFE375:
	.size	conio_ascii_printf, .-conio_ascii_printf
.section .text.tft_ascii_bar,"ax",@progbits
	.align 1
	.global	tft_ascii_bar
	.type	tft_ascii_bar, @function
tft_ascii_bar:
.LFB378:
	.loc 1 593 0
.LVL155:
	.loc 1 595 0
	call	tft_prepare_ascii_line
.LVL156:
	.loc 1 597 0
	mov.a	%a4, 0
	mov	%d4, 3840
	j	tft_flush_row_buff
.LFE378:
	.size	tft_ascii_bar, .-tft_ascii_bar
.section .text.tft_ascii,"ax",@progbits
	.align 1
	.global	tft_ascii
	.type	tft_ascii, @function
tft_ascii:
.LFB379:
	.loc 1 601 0
.LVL157:
	.loc 1 603 0
	movh.a	%a15, hi:cpy_mode
	st.w	[%a15] lo:cpy_mode, %d4
	.loc 1 607 0
	mov	%d15, 18
	.loc 1 604 0
	movh.a	%a15, hi:cpy_pdisplay
	st.a	[%a15] lo:cpy_pdisplay, %a4
	.loc 1 605 0
	movh.a	%a15, hi:cpy_pdisplaycolor
	st.a	[%a15] lo:cpy_pdisplaycolor, %a5
	.loc 1 607 0
	movh.a	%a15, hi:YROW_cnt
	st.w	[%a15] lo:YROW_cnt, %d15
	.loc 1 609 0
	j	tft_ascii_line_written
.LVL158:
.LVL159:
.LVL160:
.LFE379:
	.size	tft_ascii, .-tft_ascii
	.global	colortable_ascii
.section .data_cpu0,"awc0",@progbits
	.align 1
	.type	colortable_ascii, @object
	.size	colortable_ascii, 32
colortable_ascii:
	.short	0
	.short	-1
	.short	-2048
	.short	2016
	.short	-30174
	.short	31
	.short	-2017
	.short	2047
	.short	-12711
	.short	21130
	.short	-3056
	.short	-30832
	.short	-32
	.short	-31714
	.short	-3042
	.short	-30818
	.align 2
	.type	cpy_mode, @object
	.size	cpy_mode, 4
cpy_mode:
	.zero	4
	.align 2
	.type	cpy_pdisplay, @object
	.size	cpy_pdisplay, 4
cpy_pdisplay:
	.zero	4
	.align 2
	.type	cpy_pdisplaycolor, @object
	.size	cpy_pdisplaycolor, 4
cpy_pdisplaycolor:
	.zero	4
	.align 2
	.type	YROW_cnt, @object
	.size	YROW_cnt, 4
YROW_cnt:
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
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.byte	0x4
	.uaword	.LCFI0-.LFB359
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.byte	0x4
	.uaword	.LCFI1-.LFB360
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.byte	0x4
	.uaword	.LCFI2-.LFB374
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.byte	0x4
	.uaword	.LCFI3-.LFB375
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.align 2
.LEFDE60:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 5 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/include/stdarg.h"
	.file 6 "0_Src/2_CDrv/Tricore/Tft/conio_tft.h"
	.file 7 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
	.file 8 "0_Src/2_CDrv/Tricore/Tft/font_8_12.h"
	.file 9 "0_Src/2_CDrv/Tricore/Tft/tfthw.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x14b0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Tft/libtft_ascii.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x40
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
	.uaword	0xd2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x59
	.uaword	0xee
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x11a
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x5c
	.uaword	0x9d
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0xa9
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
	.uaword	0x1c4
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
	.uaword	0x1a2
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x1e
	.uaword	0x238
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
	.uaword	0x1d7
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.uaword	0x2c1
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
	.uaword	0x24c
	.uleb128 0x6
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x4
	.byte	0x34
	.uaword	0x353
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x4
	.byte	0x36
	.uaword	0x353
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x4
	.byte	0x37
	.uaword	0x353
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"mode"
	.byte	0x4
	.byte	0x38
	.uaword	0x2c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x4
	.byte	0x39
	.uaword	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"maxx"
	.byte	0x4
	.byte	0x3a
	.uaword	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"maxy"
	.byte	0x4
	.byte	0x3b
	.uaword	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"x"
	.byte	0x4
	.byte	0x3c
	.uaword	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"y"
	.byte	0x4
	.byte	0x3d
	.uaword	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xe1
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2ce
	.uleb128 0x3
	.string	"__gnuc_va_list"
	.byte	0x5
	.byte	0x28
	.uaword	0x384
	.uleb128 0xa
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x3
	.string	"va_list"
	.byte	0x5
	.byte	0x66
	.uaword	0x36e
	.uleb128 0x3
	.string	"TCOLORTABLEASCII"
	.byte	0x6
	.byte	0x80
	.uaword	0x3bf
	.uleb128 0xb
	.uaword	0x10c
	.uaword	0x3cf
	.uleb128 0xc
	.uaword	0xa9
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.uaword	0xe1
	.uaword	0x3df
	.uleb128 0xc
	.uaword	0xa9
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x6
	.byte	0x8b
	.uaword	0x4a1
	.uleb128 0x8
	.string	"color_display"
	.byte	0x6
	.byte	0x8d
	.uaword	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"color_select"
	.byte	0x6
	.byte	0x8f
	.uaword	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"xmin"
	.byte	0x6
	.byte	0x90
	.uaword	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"xmax"
	.byte	0x6
	.byte	0x91
	.uaword	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"y"
	.byte	0x6
	.byte	0x92
	.uaword	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"select"
	.byte	0x6
	.byte	0x93
	.uaword	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"display"
	.byte	0x6
	.byte	0x94
	.uaword	0x4b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"input"
	.byte	0x6
	.byte	0x95
	.uaword	0x4d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"text"
	.byte	0x6
	.byte	0x96
	.uaword	0x3cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"symbol"
	.byte	0x6
	.byte	0x97
	.uaword	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x4b2
	.uleb128 0xe
	.uaword	0x130
	.uleb128 0xe
	.uaword	0x4b2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x3df
	.uleb128 0x9
	.byte	0x4
	.uaword	0x4a1
	.uleb128 0xf
	.byte	0x1
	.uaword	0x130
	.uaword	0x4d3
	.uleb128 0xe
	.uaword	0x130
	.uleb128 0xe
	.uaword	0x4b2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x4be
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x6
	.byte	0x98
	.uaword	0x3df
	.uleb128 0x10
	.string	"CONIO_DRIVER"
	.uahalf	0x114
	.byte	0x6
	.byte	0x9d
	.uaword	0x633
	.uleb128 0x8
	.string	"pmenulist"
	.byte	0x6
	.byte	0x9f
	.uaword	0x633
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"pstdlist"
	.byte	0x6
	.byte	0xa0
	.uaword	0x633
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"display"
	.byte	0x6
	.byte	0xa1
	.uaword	0x639
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"pdasmirror"
	.byte	0x6
	.byte	0xa2
	.uaword	0x649
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x8
	.string	"dasstatus"
	.byte	0x6
	.byte	0xa3
	.uaword	0x13e
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x8
	.string	"dasdisplaymode"
	.byte	0x6
	.byte	0xa4
	.uaword	0x238
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x8
	.string	"cursorstatus"
	.byte	0x6
	.byte	0xa5
	.uaword	0x130
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x6
	.byte	0xa6
	.uaword	0x238
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x8
	.string	"dialogmode"
	.byte	0x6
	.byte	0xa7
	.uaword	0x1c4
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x8
	.string	"scanfdescr"
	.byte	0x6
	.byte	0xa8
	.uaword	0x64f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x8
	.string	"scanftext"
	.byte	0x6
	.byte	0xa9
	.uaword	0x64f
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x8
	.string	"input"
	.byte	0x6
	.byte	0xaa
	.uaword	0x674
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x8
	.string	"inputid"
	.byte	0x6
	.byte	0xab
	.uaword	0x130
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x8
	.string	"scanfx"
	.byte	0x6
	.byte	0xac
	.uaword	0xc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x8
	.string	"blinky"
	.byte	0x6
	.byte	0xad
	.uaword	0xe1
	.byte	0x3
	.byte	0x23
	.uleb128 0x111
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x4d9
	.uleb128 0xb
	.uaword	0x359
	.uaword	0x649
	.uleb128 0xc
	.uaword	0xa9
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x13e
	.uleb128 0xb
	.uaword	0xe1
	.uaword	0x65f
	.uleb128 0xc
	.uaword	0xa9
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x130
	.uaword	0x674
	.uleb128 0xe
	.uaword	0x130
	.uleb128 0xe
	.uaword	0x633
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x65f
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x6
	.byte	0xae
	.uaword	0x4ee
	.uleb128 0x11
	.string	"tft_ascii_line_written"
	.byte	0x1
	.uahalf	0x23b
	.byte	0x1
	.uaword	0x13e
	.byte	0x1
	.uleb128 0x12
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x13
	.byte	0x1
	.string	"conio_ascii_gotoxy"
	.byte	0x1
	.uahalf	0x187
	.byte	0x1
	.byte	0x1
	.uaword	0x6fd
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x187
	.uaword	0x238
	.uleb128 0x15
	.string	"x"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x130
	.uleb128 0x15
	.string	"y"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x130
	.byte	0
	.uleb128 0x16
	.string	"tft_prepare_ascii_line"
	.byte	0x1
	.uahalf	0x214
	.byte	0x1
	.uaword	.LFB376
	.uaword	.LFE376
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7d7
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x214
	.uaword	0x353
	.uaword	.LLST0
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x214
	.uaword	0x353
	.uaword	.LLST1
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x130
	.uaword	.LLST2
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x130
	.uaword	.LLST3
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x130
	.uaword	.LLST4
	.uleb128 0x18
	.string	"ind"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x130
	.uaword	.LLST5
	.uleb128 0x18
	.string	"buffer_cnt"
	.byte	0x1
	.uahalf	0x217
	.uaword	0x13e
	.uaword	.LLST6
	.uleb128 0x18
	.string	"mask"
	.byte	0x1
	.uahalf	0x219
	.uaword	0xe1
	.uaword	.LLST7
	.uleb128 0x19
	.string	"color_bgnd"
	.byte	0x1
	.uahalf	0x21a
	.uaword	0xe1
	.byte	0x1
	.byte	0x56
	.uleb128 0x18
	.string	"color_fgnd"
	.byte	0x1
	.uahalf	0x21a
	.uaword	0xe1
	.uaword	.LLST8
	.byte	0
	.uleb128 0x1a
	.uaword	0x68f
	.uaword	.LFB377
	.uaword	.LFE377
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7fc
	.uleb128 0x1b
	.uaword	0x68f
	.uaword	.LBB27
	.uaword	.LBE27
	.byte	0x1
	.uahalf	0x23b
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_clrscr"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x835
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0x61
	.uaword	0x238
	.uaword	.LLST9
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_clreol"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	.LFB350
	.uaword	.LFE350
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x86e
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6d
	.uaword	0x238
	.uaword	.LLST10
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_textattr"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB351
	.uaword	.LFE351
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x8b8
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0x78
	.uaword	0x238
	.uaword	.LLST11
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0x78
	.uaword	0x130
	.uaword	.LLST12
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_textcolor"
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x903
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0x84
	.uaword	0x238
	.uaword	.LLST13
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0x84
	.uaword	0x130
	.uaword	.LLST14
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_textbackground"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x953
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0x8f
	.uaword	0x238
	.uaword	.LLST15
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8f
	.uaword	0x130
	.uaword	.LLST16
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_textchangebackground"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9a9
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0x9a
	.uaword	0x238
	.uaword	.LLST17
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0x9a
	.uaword	0x130
	.uaword	.LLST18
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_textchangeforeground"
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.uaword	.LFB355
	.uaword	.LFE355
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9ff
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa5
	.uaword	0x238
	.uaword	.LLST19
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0xa5
	.uaword	0x130
	.uaword	.LLST20
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_textchangecolor"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	.LFB356
	.uaword	.LFE356
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xa50
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb0
	.uaword	0x238
	.uaword	.LLST21
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0xb0
	.uaword	0x130
	.uaword	.LLST22
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_gotoxy"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.uaword	.LFB357
	.uaword	.LFE357
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xaa3
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0xbb
	.uaword	0x238
	.uaword	.LLST23
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0xbb
	.uaword	0x130
	.uaword	.LLST24
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.byte	0xbb
	.uaword	0x130
	.uaword	.LLST25
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"display_ascii_cputs"
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.uaword	.LFB358
	.uaword	.LFE358
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xb14
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0xc7
	.uaword	0x238
	.uaword	.LLST26
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.byte	0xc7
	.uaword	0x353
	.uaword	.LLST27
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0xc9
	.uaword	0x130
	.uaword	.LLST28
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xca
	.uaword	0x130
	.uaword	.LLST29
	.uleb128 0x1f
	.string	"pbuf"
	.byte	0x1
	.byte	0xcb
	.uaword	0x649
	.uaword	.LLST30
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"display_ascii_printfxy"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.uaword	.LFB359
	.uaword	.LFE359
	.uaword	.LLST31
	.uaword	0xbd0
	.uleb128 0x1d
	.uaword	.LASF3
	.byte	0x1
	.byte	0xe0
	.uaword	0x238
	.uaword	.LLST32
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0xe0
	.uaword	0x130
	.uaword	.LLST33
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.byte	0xe0
	.uaword	0x130
	.uaword	.LLST34
	.uleb128 0x1d
	.uaword	.LASF4
	.byte	0x1
	.byte	0xe0
	.uaword	0xbd0
	.uaword	.LLST35
	.uleb128 0x21
	.uleb128 0x22
	.uaword	.LASF5
	.byte	0x1
	.byte	0xe2
	.uaword	0x130
	.uaword	.LLST36
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.byte	0xe2
	.uaword	0x130
	.uaword	.LLST37
	.uleb128 0x23
	.uaword	.LASF6
	.byte	0x1
	.byte	0xe3
	.uaword	0xbdb
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.uaword	0x130
	.uaword	.LLST38
	.uleb128 0x24
	.string	"pbuf"
	.byte	0x1
	.byte	0xe5
	.uaword	0x649
	.byte	0x1
	.byte	0x6a
	.uleb128 0x24
	.string	"ap"
	.byte	0x1
	.byte	0xe6
	.uaword	0x398
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xbd6
	.uleb128 0x25
	.uaword	0xe1
	.uleb128 0xb
	.uaword	0xe1
	.uaword	0xbeb
	.uleb128 0xc
	.uaword	0xa9
	.byte	0x4f
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"display_ascii_printf"
	.byte	0x1
	.uahalf	0x102
	.byte	0x1
	.uaword	.LFB360
	.uaword	.LFE360
	.uaword	.LLST39
	.uaword	0xc94
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x102
	.uaword	0x238
	.uaword	.LLST40
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x102
	.uaword	0xbd0
	.uaword	.LLST41
	.uleb128 0x21
	.uleb128 0x27
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x104
	.uaword	0x130
	.uaword	.LLST42
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.uahalf	0x104
	.uaword	0x130
	.uaword	.LLST43
	.uleb128 0x28
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x105
	.uaword	0xbdb
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x130
	.uaword	.LLST44
	.uleb128 0x19
	.string	"pbuf"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x649
	.byte	0x1
	.byte	0x6a
	.uleb128 0x19
	.string	"ap"
	.byte	0x1
	.uahalf	0x108
	.uaword	0x398
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_setcolortable"
	.byte	0x1
	.uahalf	0x124
	.byte	0x1
	.uaword	.LFB361
	.uaword	.LFE361
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xcfc
	.uleb128 0x2a
	.string	"ind"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x13e
	.byte	0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x13e
	.uaword	.LLST45
	.uleb128 0x2b
	.string	"g"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x13e
	.uaword	.LLST46
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x13e
	.uaword	.LLST47
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_clrscr"
	.byte	0x1
	.uahalf	0x12d
	.byte	0x1
	.uaword	.LFB362
	.uaword	.LFE362
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd61
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x238
	.uaword	.LLST48
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x130
	.uaword	.LLST49
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x130
	.uaword	.LLST50
	.uleb128 0x2c
	.uaword	0x6b0
	.uaword	.LBB29
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x134
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_clreol"
	.byte	0x1
	.uahalf	0x140
	.byte	0x1
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdb8
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x140
	.uaword	0x238
	.uaword	.LLST51
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x130
	.uaword	.LLST52
	.uleb128 0x1b
	.uaword	0x6b0
	.uaword	.LBB35
	.uaword	.LBE35
	.byte	0x1
	.uahalf	0x146
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_textattr"
	.byte	0x1
	.uahalf	0x152
	.byte	0x1
	.uaword	.LFB364
	.uaword	.LFE364
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdff
	.uleb128 0x2d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x152
	.uaword	0x238
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x152
	.uaword	0x130
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_textcolor"
	.byte	0x1
	.uahalf	0x157
	.byte	0x1
	.uaword	.LFB365
	.uaword	.LFE365
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe49
	.uleb128 0x2d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x157
	.uaword	0x238
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x157
	.uaword	0x130
	.uaword	.LLST53
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_textbackground"
	.byte	0x1
	.uahalf	0x15c
	.byte	0x1
	.uaword	.LFB366
	.uaword	.LFE366
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe98
	.uleb128 0x2d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x238
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x130
	.uaword	.LLST54
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_textchangebackground"
	.byte	0x1
	.uahalf	0x161
	.byte	0x1
	.uaword	.LFB367
	.uaword	.LFE367
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xeff
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x161
	.uaword	0x238
	.uaword	.LLST55
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x161
	.uaword	0x130
	.uaword	.LLST56
	.uleb128 0x1b
	.uaword	0x6b0
	.uaword	.LBB37
	.uaword	.LBE37
	.byte	0x1
	.uahalf	0x166
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_textchangeforeground"
	.byte	0x1
	.uahalf	0x16e
	.byte	0x1
	.uaword	.LFB368
	.uaword	.LFE368
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xf66
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x238
	.uaword	.LLST57
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x130
	.uaword	.LLST58
	.uleb128 0x1b
	.uaword	0x6b0
	.uaword	.LBB39
	.uaword	.LBE39
	.byte	0x1
	.uahalf	0x173
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_textchangecolor"
	.byte	0x1
	.uahalf	0x17b
	.byte	0x1
	.uaword	.LFB369
	.uaword	.LFE369
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xfc4
	.uleb128 0x2d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x238
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x130
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.uaword	0x6b0
	.uaword	.LBB41
	.uaword	.LBE41
	.byte	0x1
	.uahalf	0x180
	.byte	0
	.uleb128 0x1a
	.uaword	0x6be
	.uaword	.LFB370
	.uaword	.LFE370
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xffe
	.uleb128 0x2e
	.uaword	0x6dc
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	0x6e8
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.uaword	0x6f2
	.byte	0x1
	.byte	0x56
	.uleb128 0x1b
	.uaword	0x6b0
	.uaword	.LBB43
	.uaword	.LBE43
	.byte	0x1
	.uahalf	0x18c
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_cputs"
	.byte	0x1
	.uahalf	0x194
	.byte	0x1
	.uaword	.LFB371
	.uaword	.LFE371
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1104
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x194
	.uaword	0x238
	.uaword	.LLST59
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x353
	.uaword	.LLST60
	.uleb128 0x18
	.string	"xtmp"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x130
	.uaword	.LLST61
	.uleb128 0x18
	.string	"ytmp"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x130
	.uaword	.LLST62
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x130
	.uaword	.LLST63
	.uleb128 0x1b
	.uaword	0x6b0
	.uaword	.LBB45
	.uaword	.LBE45
	.byte	0x1
	.uahalf	0x19b
	.uleb128 0x2f
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x18
	.string	"psrcdisplay"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x649
	.uaword	.LLST64
	.uleb128 0x18
	.string	"psrcdisplaycolor"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x649
	.uaword	.LLST65
	.uleb128 0x18
	.string	"pdstdisplay"
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x649
	.uaword	.LLST66
	.uleb128 0x18
	.string	"pdstdisplaycolor"
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x649
	.uaword	.LLST67
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.uahalf	0x1b9
	.uaword	0x13e
	.uaword	.LLST68
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"conio_ascii_putch"
	.byte	0x1
	.uahalf	0x1d1
	.byte	0x1
	.uaword	.LFB372
	.uaword	.LFE372
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x115b
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x238
	.uaword	.LLST69
	.uleb128 0x2b
	.string	"ch"
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0xe1
	.uaword	.LLST70
	.uleb128 0x1b
	.uaword	0x6b0
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x1d6
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"conio_ascii_cgets"
	.byte	0x1
	.uahalf	0x1eb
	.byte	0x1
	.uaword	0x353
	.uaword	.LFB373
	.uaword	.LFE373
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x11b1
	.uleb128 0x2d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x238
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x353
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.uaword	0x6b0
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.uahalf	0x1ed
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"conio_ascii_printfxy"
	.byte	0x1
	.uahalf	0x1f2
	.byte	0x1
	.uaword	.LFB374
	.uaword	.LFE374
	.uaword	.LLST71
	.uaword	0x1291
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x238
	.uaword	.LLST72
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x130
	.uaword	.LLST73
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0x130
	.uaword	.LLST74
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x1f2
	.uaword	0xbd0
	.uaword	.LLST75
	.uleb128 0x21
	.uleb128 0x27
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x130
	.uaword	.LLST76
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x130
	.uleb128 0x28
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x1f5
	.uaword	0xbdb
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"ap"
	.byte	0x1
	.uahalf	0x1f6
	.uaword	0x398
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uleb128 0x32
	.uaword	0x6be
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x1ff
	.uleb128 0x33
	.uaword	0x6f2
	.uaword	.LLST77
	.uleb128 0x33
	.uaword	0x6e8
	.uaword	.LLST78
	.uleb128 0x33
	.uaword	0x6dc
	.uaword	.LLST79
	.uleb128 0x1b
	.uaword	0x6b0
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.uahalf	0x18c
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"conio_ascii_printf"
	.byte	0x1
	.uahalf	0x204
	.byte	0x1
	.uaword	.LFB375
	.uaword	.LFE375
	.uaword	.LLST80
	.uaword	0x1317
	.uleb128 0x17
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x204
	.uaword	0x238
	.uaword	.LLST81
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x204
	.uaword	0xbd0
	.uaword	.LLST82
	.uleb128 0x21
	.uleb128 0x27
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x206
	.uaword	0x130
	.uaword	.LLST83
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.uahalf	0x206
	.uaword	0x130
	.uleb128 0x28
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x207
	.uaword	0xbdb
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"ap"
	.byte	0x1
	.uahalf	0x208
	.uaword	0x398
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"tft_ascii_bar"
	.byte	0x1
	.uahalf	0x250
	.byte	0x1
	.uaword	.LFB378
	.uaword	.LFE378
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x135b
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x250
	.uaword	0x353
	.uaword	.LLST84
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x250
	.uaword	0x353
	.uaword	.LLST85
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"tft_ascii"
	.byte	0x1
	.uahalf	0x258
	.byte	0x1
	.uaword	.LFB379
	.uaword	.LFE379
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x13ac
	.uleb128 0x2b
	.string	"mode"
	.byte	0x1
	.uahalf	0x258
	.uaword	0x2c1
	.uaword	.LLST86
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x258
	.uaword	0x353
	.uaword	.LLST87
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x258
	.uaword	0x353
	.uaword	.LLST88
	.byte	0
	.uleb128 0x24
	.string	"cpy_mode"
	.byte	0x1
	.byte	0x47
	.uaword	0x2c1
	.byte	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uleb128 0x24
	.string	"cpy_pdisplay"
	.byte	0x1
	.byte	0x48
	.uaword	0x353
	.byte	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uleb128 0x24
	.string	"cpy_pdisplaycolor"
	.byte	0x1
	.byte	0x49
	.uaword	0x353
	.byte	0x5
	.byte	0x3
	.uaword	cpy_pdisplaycolor
	.uleb128 0x24
	.string	"YROW_cnt"
	.byte	0x1
	.byte	0x4b
	.uaword	0x13e
	.byte	0x5
	.byte	0x3
	.uaword	YROW_cnt
	.uleb128 0x34
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x7b
	.uaword	0x13e
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0xe1
	.uaword	0x143f
	.uleb128 0x35
	.uaword	0xa9
	.uahalf	0xbff
	.byte	0
	.uleb128 0x34
	.string	"__font_bitmap__8_12"
	.byte	0x8
	.byte	0xe
	.uaword	0x145c
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.uaword	0x142e
	.uleb128 0xb
	.uaword	0x10c
	.uaword	0x146c
	.uleb128 0x36
	.byte	0
	.uleb128 0x34
	.string	"Row_Buff"
	.byte	0x9
	.byte	0x17
	.uaword	0x1461
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"conio_driver"
	.byte	0x6
	.byte	0xc9
	.uaword	0x67a
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.string	"colortable_ascii"
	.byte	0x1
	.byte	0x3f
	.uaword	0x3a7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	colortable_ascii
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15-1
	.uaword	.LFE349
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL16
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17-1
	.uaword	.LFE350
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19-1
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19-1
	.uaword	.LFE351
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22-1
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22-1
	.uaword	.LFE352
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25-1
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL25-1
	.uaword	.LFE353
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28-1
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL28-1
	.uaword	.LFE354
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31-1
	.uaword	.LFE355
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34-1
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL34-1
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37-1
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL37-1
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL37-1
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL39
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40-1
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL39
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40-1
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL50
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LFB359
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE359
	.uahalf	0x3
	.byte	0x8a
	.sleb128 80
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL51
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL54-1
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL51
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL54-1
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL51
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL54-1
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL54
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LFB360
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE360
	.uahalf	0x3
	.byte	0x8a
	.sleb128 80
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL69
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL72-1
	.uaword	.LFE360
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL71
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL72
	.uaword	.LVL73-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL87
	.uaword	.LVL91
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL87
	.uaword	.LVL90
	.uahalf	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LFE362
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL100
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x82
	.sleb128 32
	.uaword	.LVL102
	.uaword	.LFE363
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL110
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x15
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL113
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x94
	.byte	0x1
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL118
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL120
	.uaword	.LVL123
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL118
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x86
	.sleb128 0
	.uaword	.LVL123
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL125
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LFE371
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x85
	.sleb128 36
	.uaword	.LVL123
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL137
	.uaword	.LFE371
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL119
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x6
	.byte	0x85
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x6
	.byte	0x85
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL130
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL135
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x85
	.sleb128 12
	.uaword	.LVL130
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL138
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LFB374
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE374
	.uahalf	0x3
	.byte	0x8a
	.sleb128 80
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL143
	.uaword	.LVL146-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL146-1
	.uaword	.LFE374
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL143
	.uaword	.LVL146-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL146-1
	.uaword	.LFE374
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL143
	.uaword	.LVL146-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL146-1
	.uaword	.LFE374
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL145
	.uaword	.LVL146-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL146
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL147
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL147
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL147
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LFB375
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE375
	.uahalf	0x3
	.byte	0x8a
	.sleb128 80
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL150
	.uaword	.LVL153-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL153-1
	.uaword	.LFE375
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL150
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL152
	.uaword	.LVL153-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL153
	.uaword	.LVL154-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL155
	.uaword	.LVL156-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL155
	.uaword	.LVL156-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL157
	.uaword	.LVL160-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL157
	.uaword	.LVL159-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL157
	.uaword	.LVL158-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x10c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
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
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0
	.uaword	0
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LFB376
	.uaword	.LFE376
	.uaword	.LFB377
	.uaword	.LFE377
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
	.uaword	.LFB357
	.uaword	.LFE357
	.uaword	.LFB358
	.uaword	.LFE358
	.uaword	.LFB359
	.uaword	.LFE359
	.uaword	.LFB360
	.uaword	.LFE360
	.uaword	.LFB361
	.uaword	.LFE361
	.uaword	.LFB362
	.uaword	.LFE362
	.uaword	.LFB363
	.uaword	.LFE363
	.uaword	.LFB364
	.uaword	.LFE364
	.uaword	.LFB365
	.uaword	.LFE365
	.uaword	.LFB366
	.uaword	.LFE366
	.uaword	.LFB367
	.uaword	.LFE367
	.uaword	.LFB368
	.uaword	.LFE368
	.uaword	.LFB369
	.uaword	.LFE369
	.uaword	.LFB370
	.uaword	.LFE370
	.uaword	.LFB371
	.uaword	.LFE371
	.uaword	.LFB372
	.uaword	.LFE372
	.uaword	.LFB373
	.uaword	.LFE373
	.uaword	.LFB374
	.uaword	.LFE374
	.uaword	.LFB375
	.uaword	.LFE375
	.uaword	.LFB378
	.uaword	.LFE378
	.uaword	.LFB379
	.uaword	.LFE379
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"color"
.LASF1:
	.string	"pdisplaycolor"
.LASF5:
	.string	"result"
.LASF4:
	.string	"format"
.LASF0:
	.string	"pdisplay"
.LASF3:
	.string	"displaymode"
.LASF6:
	.string	"buffer"
	.extern	conio_driver,STT_OBJECT,276
	.extern	vsprintf,STT_FUNC,0
	.extern	strlen,STT_FUNC,0
	.extern	PUT_FIFO_DISPLAY,STT_FUNC,0
	.extern	FIFO_DISPLAY_FREE,STT_FUNC,0
	.extern	tft_flush_row_buff,STT_FUNC,0
	.extern	Row_Buff,STT_OBJECT,-1
	.extern	__font_bitmap__8_12,STT_OBJECT,3072
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
