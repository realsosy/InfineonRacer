	.file	"libtft_graphics.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.tft_graphics_lines_written,"ax",@progbits
	.align 1
	.type	tft_graphics_lines_written, @function
tft_graphics_lines_written:
.LFB372:
	.file 1 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c"
	.loc 1 709 0
	.loc 1 711 0
	movh.a	%a15, hi:cpy_pdisplay
.LBB28:
.LBB29:
	.loc 1 625 0
	movh.a	%a7, hi:YSIZE_cnt
	ld.w	%d6, [%a7] lo:YSIZE_cnt
.LBE29:
.LBE28:
	.loc 1 711 0
	ld.a	%a3, [%a15] lo:cpy_pdisplay
.LVL0:
.LBB50:
.LBB47:
	.loc 1 627 0
	movh.a	%a15, hi:cpy_mode
	ld.w	%d15, [%a15] lo:cpy_mode
	.loc 1 625 0
	sh	%d5, %d6, 2
	add	%d5, %d6
	.loc 1 627 0
	add	%d15, -2
	.loc 1 625 0
	sh	%d5, 6
.LVL1:
	.loc 1 627 0
	jge.u	%d15, 4, .L2
	movh.a	%a15, hi:.L7
	lea	%a15, [%a15] lo:.L7
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L7:
	.code32
	j	.L3
	.code32
	j	.L4
	.code32
	j	.L5
	.code32
	j	.L6
.L4:
	.loc 1 631 0
	movh.a	%a5, hi:Row_Buff
	movh.a	%a15, hi:colortable_graphics
	lea	%a5, [%a5] lo:Row_Buff
	.loc 1 627 0
	mov	%d2, 0
	lea	%a15, [%a15] lo:colortable_graphics
	.loc 1 658 0
	lea	%a2, 3839
.LVL2:
.L21:
	.loc 1 708 0
	add	%d3, %d2, %d5
.LVL3:
.LBB30:
	.loc 1 662 0
	sha	%d3, -2
	.loc 1 661 0
	and	%d15, %d2, 3
	.loc 1 662 0
	addsc.a	%a4, %a3, %d3, 0
	.loc 1 661 0
	jnz	%d15, .L17
	.loc 1 662 0
	ld.bu	%d15, [%a4]0
	and	%d15, %d15, 3
.LVL4:
.L18:
	.loc 1 670 0
	addsc.a	%a6, %a15, %d15, 1
.LBE30:
	.loc 1 658 0
	add	%d2, 1
.LBB31:
	.loc 1 670 0
	ld.h	%d15, [%a6]0
.LVL5:
	st.h	[%a5+]2, %d15
.LVL6:
.LBE31:
	.loc 1 658 0
	loop	%a2, .L21
.LVL7:
.L2:
.LBE47:
.LBE50:
	.loc 1 713 0
	addi	%d6, %d6, 12
	st.w	[%a7] lo:YSIZE_cnt, %d6
	.loc 1 715 0
	lt.u	%d6, %d6, 217
	jz	%d6, .L36
.L28:
	.loc 1 725 0
	movh.a	%a4, hi:tft_graphics_lines_written
	lea	%a4, [%a4] lo:tft_graphics_lines_written
	mov	%d4, 3840
	call	tft_flush_row_buff
.LVL8:
	.loc 1 728 0
	mov	%d2, 0
	ret
.LVL9:
.L5:
.LBB51:
.LBB48:
	.loc 1 658 0
	movh.a	%a5, hi:Row_Buff
	movh.a	%a15, hi:colortable_graphics
	lea	%a5, [%a5] lo:Row_Buff
	.loc 1 627 0
	mov	%d15, 0
	lea	%a15, [%a15] lo:colortable_graphics
	.loc 1 676 0
	lea	%a2, 3839
.LVL10:
.L24:
	.loc 1 708 0
	add	%d2, %d15, %d5
.LVL11:
.LBB32:
	.loc 1 680 0
	sha	%d2, -1
	addsc.a	%a4, %a3, %d2, 0
	ld.bu	%d2, [%a4]0
	.loc 1 679 0
	jz.t	%d15, 0, .L22
	.loc 1 680 0
	and	%d2, %d2, 15
.LVL12:
.L23:
	.loc 1 684 0
	addsc.a	%a6, %a15, %d2, 1
.LBE32:
	.loc 1 676 0
	add	%d15, 1
.LBB33:
	.loc 1 684 0
	ld.h	%d2, [%a6]0
.LVL13:
	st.h	[%a5+]2, %d2
.LVL14:
.LBE33:
	.loc 1 676 0
	loop	%a2, .L24
.LBE48:
.LBE51:
	.loc 1 713 0
	addi	%d6, %d6, 12
	st.w	[%a7] lo:YSIZE_cnt, %d6
	.loc 1 715 0
	lt.u	%d6, %d6, 217
	jnz	%d6, .L28
.LVL15:
.L36:
.LBB52:
.LBB53:
	.loc 1 719 0
	mov.a	%a4, 0
	mov	%d4, 3840
	call	tft_flush_row_buff
.LVL16:
.LBE53:
.LBE52:
	.loc 1 728 0
	mov	%d2, 0
	ret
.LVL17:
.L6:
.LBB54:
.LBB49:
	.loc 1 708 0
	addsc.a	%a4, %a3, %d5, 0
	movh.a	%a15, hi:colortable_graphics
	.loc 1 676 0
	movh.a	%a3, hi:Row_Buff-2
.LVL18:
	lea	%a3, [%a3] lo:Row_Buff-2
	.loc 1 708 0
	mov	%d15, 0
	lea	%a15, [%a15] lo:colortable_graphics
	.loc 1 692 0
	lea	%a2, 3839
.LVL19:
.L27:
.LBB34:
	.loc 1 695 0
	ld.bu	%d3, [%a4+]1
.LBE34:
	.loc 1 676 0
	mov	%d2, %d15
.LVL20:
.LBB35:
	.loc 1 697 0
	addsc.a	%a5, %a15, %d3, 1
	.loc 1 695 0
	add	%d15, 1
.LVL21:
	.loc 1 696 0
	jz.t	%d2, 0, .L25
	.loc 1 697 0
	ld.h	%d2, [%a5]0
	st.h	[%a3]0, %d2
.L26:
	.loc 1 699 0
	add.a	%a3, 2
.LBE35:
	.loc 1 692 0
	loop	%a2, .L27
	j	.L2
.LVL22:
.L3:
	.loc 1 627 0
	movh.a	%a5, hi:Row_Buff
	movh.a	%a15, hi:colortable_graphics
	lea	%a5, [%a5] lo:Row_Buff
	mov	%d2, 0
	lea	%a15, [%a15] lo:colortable_graphics
	.loc 1 631 0
	lea	%a2, 3839
.LVL23:
.L16:
.LBB36:
	.loc 1 634 0
	and	%d15, %d2, 15
.LBE36:
	.loc 1 708 0
	add	%d4, %d2, %d5
.LVL24:
.LBB37:
	.loc 1 634 0
	jnz	%d15, .L8
.LVL25:
	.loc 1 635 0
	sha	%d4, -1
.LVL26:
	addsc.a	%a4, %a3, %d4, 0
.LVL27:
	ld.bu	%d3, [%a4]0
	.loc 1 634 0
	and	%d3, %d3, 1
.LVL28:
.L9:
	.loc 1 651 0
	addsc.a	%a6, %a15, %d3, 1
.LBE37:
	.loc 1 631 0
	add	%d2, 1
.LBB38:
	.loc 1 651 0
	ld.h	%d15, [%a6]0
	st.h	[%a5+]2, %d15
.LVL29:
.LBE38:
	.loc 1 631 0
	loop	%a2, .L16
	j	.L2
.LVL30:
.L17:
.LBB39:
	.loc 1 663 0
	jeq	%d15, 1, .L37
	.loc 1 665 0
	jeq	%d15, 2, .L38
	.loc 1 668 0
	ld.bu	%d15, [%a4]0
	sh	%d15, -6
.LVL31:
	j	.L18
.LVL32:
.L22:
.LBE39:
.LBB40:
	.loc 1 682 0
	sh	%d2, -4
.LVL33:
	j	.L23
.LVL34:
.L25:
.LBE40:
.LBB41:
	.loc 1 699 0
	ld.h	%d2, [%a5]0
	st.h	[%a3] 4, %d2
	j	.L26
.LVL35:
.L8:
.LBE41:
.LBB42:
	.loc 1 636 0
	jeq	%d15, 1, .L39
	.loc 1 638 0
	jeq	%d15, 2, .L40
	.loc 1 640 0
	jeq	%d15, 3, .L41
	.loc 1 642 0
	jeq	%d15, 4, .L42
	.loc 1 644 0
	jeq	%d15, 5, .L43
	.loc 1 646 0
	jeq	%d15, 6, .L44
	.loc 1 648 0
	mov	%d3, 0
	jne	%d15, 7, .L9
.LVL36:
	.loc 1 649 0
	sha	%d4, -1
.LVL37:
	addsc.a	%a4, %a3, %d4, 0
.LVL38:
	ld.bu	%d3, [%a4]0
	.loc 1 648 0
	sh	%d3, -7
	j	.L9
.LVL39:
.L37:
.LBE42:
.LBB43:
	.loc 1 664 0
	ld.bu	%d15, [%a4]0
	extr.u	%d15, %d15, 2, 2
.LVL40:
	j	.L18
.LVL41:
.L39:
.LBE43:
.LBB44:
	.loc 1 637 0
	sha	%d4, -1
.LVL42:
	addsc.a	%a4, %a3, %d4, 0
.LVL43:
	ld.bu	%d3, [%a4]0
	.loc 1 636 0
	extr.u	%d3, %d3, 1, 1
	j	.L9
.LVL44:
.L40:
	.loc 1 639 0
	sha	%d4, -1
.LVL45:
	addsc.a	%a4, %a3, %d4, 0
.LVL46:
	ld.bu	%d3, [%a4]0
	.loc 1 638 0
	extr.u	%d3, %d3, 2, 1
	j	.L9
.LVL47:
.L38:
.LBE44:
.LBB45:
	.loc 1 666 0
	ld.bu	%d15, [%a4]0
	extr.u	%d15, %d15, 4, 2
.LVL48:
	j	.L18
.LVL49:
.L41:
.LBE45:
.LBB46:
	.loc 1 641 0
	sha	%d4, -1
.LVL50:
	addsc.a	%a4, %a3, %d4, 0
.LVL51:
	ld.bu	%d3, [%a4]0
	.loc 1 640 0
	extr.u	%d3, %d3, 3, 1
	j	.L9
.LVL52:
.L42:
	.loc 1 643 0
	sha	%d4, -1
.LVL53:
	addsc.a	%a4, %a3, %d4, 0
.LVL54:
	ld.bu	%d3, [%a4]0
	.loc 1 642 0
	extr.u	%d3, %d3, 4, 1
	j	.L9
.LVL55:
.L43:
	.loc 1 645 0
	sha	%d4, -1
.LVL56:
	addsc.a	%a4, %a3, %d4, 0
.LVL57:
	ld.bu	%d3, [%a4]0
	.loc 1 644 0
	extr.u	%d3, %d3, 5, 1
	j	.L9
.LVL58:
.L44:
	.loc 1 647 0
	sha	%d4, -1
.LVL59:
	addsc.a	%a4, %a3, %d4, 0
.LVL60:
	ld.bu	%d3, [%a4]0
	.loc 1 646 0
	extr.u	%d3, %d3, 6, 1
	j	.L9
.LBE46:
.LBE49:
.LBE54:
.LFE372:
	.size	tft_graphics_lines_written, .-tft_graphics_lines_written
.section .text.display_graphics_clrscr,"ax",@progbits
	.align 1
	.global	display_graphics_clrscr
	.type	display_graphics_clrscr, @function
display_graphics_clrscr:
.LFB349:
	.loc 1 112 0
.LVL61:
	.loc 1 112 0
	mov	%d15, %d4
	.loc 1 113 0
	call	FIFO_DISPLAY_FREE
.LVL62:
	jge	%d2, 3, .L47
	ret
.L47:
	.loc 1 115 0
#APP
	# 115 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 116 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -29
	call	PUT_FIFO_DISPLAY
	.loc 1 117 0
	mov	%d4, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 118 0
#APP
	# 118 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE349:
	.size	display_graphics_clrscr, .-display_graphics_clrscr
.section .text.display_graphics_textattr,"ax",@progbits
	.align 1
	.global	display_graphics_textattr
	.type	display_graphics_textattr, @function
display_graphics_textattr:
.LFB350:
	.loc 1 124 0
.LVL63:
	.loc 1 124 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 125 0
	call	FIFO_DISPLAY_FREE
.LVL64:
	jge	%d2, 3, .L50
	ret
.L50:
	.loc 1 127 0
#APP
	# 127 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 128 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -21
	call	PUT_FIFO_DISPLAY
	.loc 1 129 0
	sh	%d15, %d15, 16
.LVL65:
	add	%d4, %d8, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 130 0
#APP
	# 130 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE350:
	.size	display_graphics_textattr, .-display_graphics_textattr
.section .text.display_graphics_textcolor,"ax",@progbits
	.align 1
	.global	display_graphics_textcolor
	.type	display_graphics_textcolor, @function
display_graphics_textcolor:
.LFB351:
	.loc 1 136 0
.LVL66:
	.loc 1 136 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 137 0
	call	FIFO_DISPLAY_FREE
.LVL67:
	jge	%d2, 3, .L53
	ret
.L53:
	.loc 1 139 0
#APP
	# 139 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 140 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -20
	call	PUT_FIFO_DISPLAY
	.loc 1 141 0
	sh	%d15, %d15, 16
.LVL68:
	add	%d4, %d8, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 142 0
#APP
	# 142 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE351:
	.size	display_graphics_textcolor, .-display_graphics_textcolor
.section .text.display_graphics_textbackground,"ax",@progbits
	.align 1
	.global	display_graphics_textbackground
	.type	display_graphics_textbackground, @function
display_graphics_textbackground:
.LFB352:
	.loc 1 147 0
.LVL69:
	.loc 1 147 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 148 0
	call	FIFO_DISPLAY_FREE
.LVL70:
	jge	%d2, 3, .L56
	ret
.L56:
	.loc 1 150 0
#APP
	# 150 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 151 0
#NO_APP
	movh	%d4, 3
	addi	%d4, %d4, -19
	call	PUT_FIFO_DISPLAY
	.loc 1 152 0
	sh	%d15, %d15, 16
.LVL71:
	add	%d4, %d8, %d15
	call	PUT_FIFO_DISPLAY
	.loc 1 153 0
#APP
	# 153 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE352:
	.size	display_graphics_textbackground, .-display_graphics_textbackground
.section .text.display_graphics_gotoxy,"ax",@progbits
	.align 1
	.global	display_graphics_gotoxy
	.type	display_graphics_gotoxy, @function
display_graphics_gotoxy:
.LFB353:
	.loc 1 158 0
.LVL72:
	.loc 1 158 0
	mov	%d8, %d4
	mov	%d15, %d5
	mov	%d9, %d6
	.loc 1 159 0
	call	FIFO_DISPLAY_FREE
.LVL73:
	jge	%d2, 4, .L59
	ret
.L59:
	.loc 1 161 0
#APP
	# 161 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 162 0
#NO_APP
	movh	%d4, 4
	addi	%d4, %d4, -12
	call	PUT_FIFO_DISPLAY
	.loc 1 163 0
	mov	%d4, %d8
	call	PUT_FIFO_DISPLAY
	.loc 1 164 0
	sh	%d15, %d15, 16
.LVL74:
	add	%d4, %d15, %d9
	call	PUT_FIFO_DISPLAY
	.loc 1 165 0
#APP
	# 165 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE353:
	.size	display_graphics_gotoxy, .-display_graphics_gotoxy
.section .text.display_graphics_cputs,"ax",@progbits
	.align 1
	.global	display_graphics_cputs
	.type	display_graphics_cputs, @function
display_graphics_cputs:
.LFB354:
	.loc 1 170 0
.LVL75:
	.loc 1 170 0
	mov	%d9, %d4
	mov.aa	%a15, %a4
	.loc 1 174 0
	call	strlen
.LVL76:
	.loc 1 175 0
	ge	%d3, %d2, 41
	mov	%d15, 12
	mov	%d8, 10
	jnz	%d3, .L61
	.loc 1 178 0
	or	%d8, %d2, 3
.LVL77:
	add	%d8, 1
.LVL78:
	sha	%d8, -2
.LVL79:
	.loc 1 177 0
	and	%d3, %d2, 3
	.loc 1 178 0
	add	%d15, %d8, 2
	.loc 1 177 0
	jz	%d3, .L68
.L61:
.LVL80:
	.loc 1 181 0
	call	FIFO_DISPLAY_FREE
	jlt	%d15, %d2, .L69
	ret
.L69:
	.loc 1 183 0
#APP
	# 183 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 184 0
#NO_APP
	sh	%d15, %d15, 16
.LVL81:
	addi	%d15, %d15, -10
	addih	%d4, %d15, 1
	call	PUT_FIFO_DISPLAY
	.loc 1 185 0
	sh	%d4, %d9, 16
	call	PUT_FIFO_DISPLAY
.LVL82:
	.loc 1 187 0
	jlez	%d8, .L64
	mov	%d15, 0
.LVL83:
.L65:
	.loc 1 188 0 discriminator 2
	ld.w	%d4, [%a15+]4
	.loc 1 187 0 discriminator 2
	add	%d15, 1
	.loc 1 188 0 discriminator 2
	call	PUT_FIFO_DISPLAY
.LVL84:
	.loc 1 187 0 discriminator 2
	jne	%d15, %d8, .L65
.LVL85:
.L64:
	.loc 1 189 0
#APP
	# 189 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LVL86:
.L68:
	.loc 1 177 0
	sha	%d8, %d2, -2
	add	%d15, %d8, 2
	j	.L61
.LFE354:
	.size	display_graphics_cputs, .-display_graphics_cputs
.section .text.display_graphics_printfxy,"ax",@progbits
	.align 1
	.global	display_graphics_printfxy
	.type	display_graphics_printfxy, @function
display_graphics_printfxy:
.LFB355:
	.loc 1 195 0
.LVL87:
	sub.a	%SP, 80
.LCFI0:
.LVL88:
	.loc 1 195 0
	mov.aa	%a5, %a4
	.loc 1 202 0
	lea	%a6, [%SP] 80
	mov.aa	%a4, %SP
.LVL89:
	.loc 1 195 0
	mov	%d10, %d4
	mov	%d9, %d5
	mov	%d11, %d6
	.loc 1 202 0
	call	vsprintf
.LVL90:
	.loc 1 204 0
	jltz	%d2, .L70
	.loc 1 206 0
	mov.aa	%a4, %SP
	call	strlen
.LVL91:
	add	%d2, 1
.LVL92:
	.loc 1 207 0
	ge	%d3, %d2, 41
	mov	%d15, 13
	mov	%d8, 10
	jz	%d3, .L78
.LVL93:
.L72:
	.loc 1 213 0
	call	FIFO_DISPLAY_FREE
	jlt	%d15, %d2, .L79
.LVL94:
.L70:
	ret
.LVL95:
.L78:
	.loc 1 210 0
	or	%d8, %d2, 3
.LVL96:
	add	%d8, 1
.LVL97:
	sha	%d8, -2
.LVL98:
	.loc 1 209 0
	and	%d3, %d2, 3
	.loc 1 210 0
	add	%d15, %d8, 3
	.loc 1 209 0
	jnz	%d3, .L72
	sha	%d8, %d2, -2
	add	%d15, %d8, 3
	j	.L72
.LVL99:
.L79:
	.loc 1 215 0
#APP
	# 215 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 216 0
#NO_APP
	sh	%d15, %d15, 16
.LVL100:
	addi	%d15, %d15, -27
	addih	%d4, %d15, 1
	call	PUT_FIFO_DISPLAY
	.loc 1 217 0
	mov	%d4, %d10
	call	PUT_FIFO_DISPLAY
	.loc 1 218 0
	sh	%d4, %d9, 16
	add	%d4, %d11
	call	PUT_FIFO_DISPLAY
.LVL101:
	.loc 1 220 0
	jlez	%d8, .L74
	.loc 1 219 0
	mov.aa	%a15, %SP
	.loc 1 220 0
	mov	%d15, 0
.LVL102:
.L75:
	.loc 1 221 0 discriminator 2
	ld.w	%d4, [%a15+]4
	.loc 1 220 0 discriminator 2
	add	%d15, 1
	.loc 1 221 0 discriminator 2
	call	PUT_FIFO_DISPLAY
.LVL103:
	.loc 1 220 0 discriminator 2
	jne	%d15, %d8, .L75
.LVL104:
.L74:
	.loc 1 222 0
#APP
	# 222 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE355:
	.size	display_graphics_printfxy, .-display_graphics_printfxy
.section .text.display_graphics_printf,"ax",@progbits
	.align 1
	.global	display_graphics_printf
	.type	display_graphics_printf, @function
display_graphics_printf:
.LFB356:
	.loc 1 227 0
.LVL105:
	sub.a	%SP, 80
.LCFI1:
.LVL106:
	.loc 1 227 0
	mov.aa	%a5, %a4
	.loc 1 234 0
	lea	%a6, [%SP] 80
	mov.aa	%a4, %SP
.LVL107:
	.loc 1 227 0
	mov	%d9, %d4
	.loc 1 234 0
	call	vsprintf
.LVL108:
	.loc 1 236 0
	jltz	%d2, .L80
	.loc 1 238 0
	mov.aa	%a4, %SP
	call	strlen
.LVL109:
	.loc 1 239 0
	ge	%d3, %d2, 41
	mov	%d15, 12
	mov	%d8, 10
	jz	%d3, .L88
.LVL110:
.L82:
	.loc 1 245 0
	call	FIFO_DISPLAY_FREE
	jlt	%d15, %d2, .L89
.LVL111:
.L80:
	ret
.LVL112:
.L88:
	.loc 1 242 0
	or	%d8, %d2, 3
.LVL113:
	add	%d8, 1
.LVL114:
	sha	%d8, -2
.LVL115:
	.loc 1 241 0
	and	%d3, %d2, 3
	.loc 1 242 0
	add	%d15, %d8, 2
	.loc 1 241 0
	jnz	%d3, .L82
	sha	%d8, %d2, -2
	add	%d15, %d8, 2
	j	.L82
.LVL116:
.L89:
	.loc 1 247 0
#APP
	# 247 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 248 0
#NO_APP
	sh	%d15, %d15, 16
.LVL117:
	addi	%d15, %d15, -11
	addih	%d4, %d15, 1
	call	PUT_FIFO_DISPLAY
	.loc 1 249 0
	mov	%d4, %d9
	call	PUT_FIFO_DISPLAY
.LVL118:
	.loc 1 251 0
	jlez	%d8, .L84
	.loc 1 250 0
	mov.aa	%a15, %SP
	.loc 1 251 0
	mov	%d15, 0
.LVL119:
.L85:
	.loc 1 252 0 discriminator 2
	ld.w	%d4, [%a15+]4
	.loc 1 251 0 discriminator 2
	add	%d15, 1
	.loc 1 252 0 discriminator 2
	call	PUT_FIFO_DISPLAY
.LVL120:
	.loc 1 251 0 discriminator 2
	jne	%d15, %d8, .L85
.LVL121:
.L84:
	.loc 1 253 0
#APP
	# 253 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE356:
	.size	display_graphics_printf, .-display_graphics_printf
.section .text.display_graphics_line,"ax",@progbits
	.align 1
	.global	display_graphics_line
	.type	display_graphics_line, @function
display_graphics_line:
.LFB357:
	.loc 1 258 0
.LVL122:
	.loc 1 258 0
	mov	%d10, %d4
	mov	%e8, %d6, %d5
	mov	%d15, %d7
	.loc 1 259 0
	call	FIFO_DISPLAY_FREE
.LVL123:
	jge	%d2, 5, .L92
	ret
.L92:
	.loc 1 261 0
#APP
	# 261 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	disable
	# 0 "" 2
	.loc 1 262 0
#NO_APP
	movh	%d4, 5
	addi	%d4, %d4, -31
	call	PUT_FIFO_DISPLAY
	.loc 1 263 0
	ld.bu	%d4, [%SP] 4
	insert	%d4, %d10, %d4, 16, 16
	call	PUT_FIFO_DISPLAY
	.loc 1 264 0
	insert	%d4, %d8, %d9, 16, 16
	call	PUT_FIFO_DISPLAY
	.loc 1 265 0
	ld.w	%d4, [%SP]0
	insert	%d4, %d15, %d4, 16, 16
	call	PUT_FIFO_DISPLAY
	.loc 1 266 0
#APP
	# 266 "0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c" 1
	enable
	# 0 "" 2
#NO_APP
	ret
.LFE357:
	.size	display_graphics_line, .-display_graphics_line
.section .text.conio_graphics_setcolortable,"ax",@progbits
	.align 1
	.global	conio_graphics_setcolortable
	.type	conio_graphics_setcolortable, @function
conio_graphics_setcolortable:
.LFB358:
	.loc 1 272 0
.LVL124:
	.loc 1 274 0
	sh	%d6, -2
.LVL125:
	.loc 1 277 0
	sh	%d6, 5
.LVL126:
	.loc 1 275 0
	sh	%d7, -3
.LVL127:
	.loc 1 273 0
	sh	%d5, -3
.LVL128:
	.loc 1 277 0
	movh.a	%a15, hi:colortable_graphics
	or	%d7, %d6
.LVL129:
	sh	%d5, %d5, 11
.LVL130:
	lea	%a15, [%a15] lo:colortable_graphics
	or	%d7, %d5
	addsc.a	%a15, %a15, %d4, 1
	st.h	[%a15]0, %d7
	.loc 1 278 0
	ret
.LFE358:
	.size	conio_graphics_setcolortable, .-conio_graphics_setcolortable
.section .text.conio_graphics_clrscr,"ax",@progbits
	.align 1
	.global	conio_graphics_clrscr
	.type	conio_graphics_clrscr, @function
conio_graphics_clrscr:
.LFB359:
	.loc 1 281 0
.LVL131:
	.loc 1 284 0
	movh.a	%a3, hi:conio_driver
	lea	%a3, [%a3] lo:conio_driver
	sh	%d4, 5
.LVL132:
	addsc.a	%a15, %a3, %d4, 0
	ld.w	%d15, [%a15] 16
	add	%d15, -2
	jlt.u	%d15, 4, .L110
.LBB55:
.LBB56:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	ret
.L110:
.LBE56:
.LBE55:
	.loc 1 284 0
	movh.a	%a15, hi:.L100
	lea	%a15, [%a15] lo:.L100
	addsc.a	%a15, %a15, %d15, 2
	mov.a	%a2, 0
	.loc 1 310 0
	addsc.a	%a3, %a3, %d4, 0
	mov	%d15, 0
	.loc 1 284 0
	ji	%a15
	.align 2
	.align 2
.L100:
	.code32
	j	.L102
	.code32
	j	.L103
	.code32
	j	.L104
	.code32
	j	.L105
.L104:
	.loc 1 301 0
	movh.a	%a15, hi:36479
	lea	%a15, [%a15] lo:36479
.L98:
	.loc 1 303 0 discriminator 2
	ld.w	%d2, [%a3] 8
	addsc.a	%a4, %a2, %d2, 0
	.loc 1 301 0 discriminator 2
	add.a	%a2, 1
.LVL133:
	.loc 1 303 0 discriminator 2
	st.b	[%a4]0, %d15
	.loc 1 301 0 discriminator 2
	loop	%a15, .L98
	ret
.LVL134:
.L103:
	.loc 1 294 0
	movh.a	%a15, hi:18239
	lea	%a15, [%a15] lo:18239
.L97:
	.loc 1 296 0 discriminator 2
	ld.w	%d2, [%a3] 8
	addsc.a	%a4, %a2, %d2, 0
	.loc 1 294 0 discriminator 2
	add.a	%a2, 1
.LVL135:
	.loc 1 296 0 discriminator 2
	st.b	[%a4]0, %d15
	.loc 1 294 0 discriminator 2
	loop	%a15, .L97
	ret
.LVL136:
.L102:
	.loc 1 288 0
	lea	%a15, 9119
.L96:
	.loc 1 290 0 discriminator 2
	ld.w	%d2, [%a3] 8
	addsc.a	%a4, %a2, %d2, 0
	.loc 1 288 0 discriminator 2
	add.a	%a2, 1
.LVL137:
	.loc 1 290 0 discriminator 2
	st.b	[%a4]0, %d15
	.loc 1 288 0 discriminator 2
	loop	%a15, .L96
	ret
.LVL138:
.L105:
	.loc 1 308 0
	movh.a	%a15, hi:72959
	lea	%a15, [%a15] lo:72959
.L99:
	.loc 1 310 0 discriminator 2
	ld.w	%d2, [%a3] 8
	addsc.a	%a4, %a2, %d2, 0
	.loc 1 308 0 discriminator 2
	add.a	%a2, 1
.LVL139:
	.loc 1 310 0 discriminator 2
	st.b	[%a4]0, %d15
	.loc 1 308 0 discriminator 2
	loop	%a15, .L99
	ret
.LFE359:
	.size	conio_graphics_clrscr, .-conio_graphics_clrscr
.section .text.conio_graphics_textattr,"ax",@progbits
	.align 1
	.global	conio_graphics_textattr
	.type	conio_graphics_textattr, @function
conio_graphics_textattr:
.LFB360:
	.loc 1 321 0
.LVL140:
	.loc 1 322 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	st.b	[%a15] 20, %d5
	.loc 1 323 0
	ret
.LFE360:
	.size	conio_graphics_textattr, .-conio_graphics_textattr
.section .text.conio_graphics_textcolor,"ax",@progbits
	.align 1
	.global	conio_graphics_textcolor
	.type	conio_graphics_textcolor, @function
conio_graphics_textcolor:
.LFB361:
	.loc 1 327 0
.LVL141:
	.loc 1 328 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 20
	insert	%d5, %d15, %d5, 0, 4
.LVL142:
	st.b	[%a15] 20, %d5
	.loc 1 329 0
	ret
.LFE361:
	.size	conio_graphics_textcolor, .-conio_graphics_textcolor
.section .text.conio_graphics_textbackground,"ax",@progbits
	.align 1
	.global	conio_graphics_textbackground
	.type	conio_graphics_textbackground, @function
conio_graphics_textbackground:
.LFB362:
	.loc 1 332 0
.LVL143:
	.loc 1 333 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	mov.a	%a15, %d2
	ld.bu	%d15, [%a15] 20
	insert	%d5, %d15, %d5, 4, 32-4
.LVL144:
	st.b	[%a15] 20, %d5
	.loc 1 334 0
	ret
.LFE362:
	.size	conio_graphics_textbackground, .-conio_graphics_textbackground
.section .text.conio_graphics_gotoxy,"ax",@progbits
	.align 1
	.global	conio_graphics_gotoxy
	.type	conio_graphics_gotoxy, @function
conio_graphics_gotoxy:
.LFB363:
	.loc 1 337 0
.LVL145:
	.loc 1 338 0
	movh	%d2, hi:conio_driver
	addi	%d2, %d2, lo:conio_driver
	mov.a	%a2, %d2
	sh	%d3, %d4, 5
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d15, [%a15] 16
	jlt.u	%d15, 2, .L117
.L115:
	.loc 1 343 0
	mov	%d15, 320
	ge	%d15, %d5, %d15
	or.ge	%d15, %d6, 228
	jnz	%d15, .L114
	.loc 1 345 0
	madd	%d15, %d2, %d4, 32
	.loc 1 346 0
	mov.a	%a2, %d2
	.loc 1 345 0
	mov.a	%a15, %d15
	st.w	[%a15] 32, %d5
	.loc 1 346 0
	addsc.a	%a15, %a2, %d3, 0
	st.w	[%a15] 36, %d6
.L114:
	ret
.L117:
.LBB57:
.LBB58:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	j	.L115
.LBE58:
.LBE57:
.LFE363:
	.size	conio_graphics_gotoxy, .-conio_graphics_gotoxy
.section .text.conio_graphics_set_opt,"ax",@progbits
	.align 1
	.global	conio_graphics_set_opt
	.type	conio_graphics_set_opt, @function
conio_graphics_set_opt:
.LFB367:
	.loc 1 414 0
.LVL146:
	.loc 1 417 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	.loc 1 418 0
	ge.u	%d15, %d5, 321
	.loc 1 417 0
	mov.a	%a15, %d2
	ld.a	%a2, [%a15] 8
.LVL147:
	.loc 1 418 0
	jnz	%d15, .L118
	.loc 1 421 0
	ge.u	%d15, %d6, 229
	jnz	%d15, .L118
	.loc 1 424 0
	ld.w	%d15, [%a15] 16
	add	%d15, -2
	jlt.u	%d15, 4, .L131
.LBB61:
.LBB62:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
.LVL148:
#NO_APP
.L118:
	ret
.LVL149:
.L131:
.LBE62:
.LBE61:
	.loc 1 424 0
	movh.a	%a15, hi:.L125
	lea	%a15, [%a15] lo:.L125
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 453 0
	sh	%d15, %d6, 2
	add	%d6, %d15
.LVL150:
	madd	%d5, %d5, %d6, 64
.LVL151:
	.loc 1 424 0
	ji	%a15
	.align 2
	.align 2
.L125:
	.code32
	j	.L121
	.code32
	j	.L122
	.code32
	j	.L123
	.code32
	j	.L124
.L123:
.LVL152:
	.loc 1 446 0
	jnz.t	%d5, 0, .L130
	.loc 1 447 0
	sha	%d5, -1
.LVL153:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 0, 4
.LVL154:
	st.b	[%a2]0, %d7
	ret
.LVL155:
.L122:
	.loc 1 435 0
	and	%d15, %d5, 3
	jz	%d15, .L132
	.loc 1 437 0
	jne	%d15, 1, .L128
	.loc 1 438 0
	sha	%d5, -2
.LVL156:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 2, 2
.LVL157:
	st.b	[%a2]0, %d7
	ret
.LVL158:
.L121:
	.loc 1 429 0
	sha	%d15, %d5, -3
	addsc.a	%a2, %a2, %d15, 0
	and	%d5, %d5, 15
.LVL159:
	ld.bu	%d15, [%a2]0
	.loc 1 428 0
	jnz	%d7, .L126
	.loc 1 429 0
	insert	%d5, %d15, 0, %d5, 1
	st.b	[%a2]0, %d5
	ret
.L124:
	.loc 1 453 0
	addsc.a	%a2, %a2, %d5, 0
	st.b	[%a2]0, %d7
	.loc 1 454 0
	ret
.L126:
	.loc 1 431 0
	insert	%d5, %d15, 1, %d5, 1
	st.b	[%a2]0, %d5
	ret
.LVL160:
.L132:
	.loc 1 436 0
	sha	%d5, -2
.LVL161:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 0, 2
.LVL162:
	st.b	[%a2]0, %d7
	ret
.LVL163:
.L130:
	.loc 1 449 0
	sha	%d5, -1
.LVL164:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 4, 32-4
.LVL165:
	st.b	[%a2]0, %d7
	ret
.LVL166:
.L128:
	.loc 1 439 0
	jne	%d15, 2, .L129
	.loc 1 440 0
	sha	%d5, -2
.LVL167:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 4, 2
.LVL168:
	st.b	[%a2]0, %d7
	ret
.LVL169:
.L129:
	.loc 1 441 0
	jne	%d15, 3, .L118
	.loc 1 442 0
	sha	%d5, -2
.LVL170:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 6, 32-6
.LVL171:
	st.b	[%a2]0, %d7
	ret
.LFE367:
	.size	conio_graphics_set_opt, .-conio_graphics_set_opt
.section .text.conio_graphics_line,"ax",@progbits
	.align 1
	.global	conio_graphics_line
	.type	conio_graphics_line, @function
conio_graphics_line:
.LFB368:
	.loc 1 465 0
.LVL172:
	.loc 1 476 0
	ld.w	%d15, [%SP]0
	.loc 1 475 0
	sub	%d7, %d5
.LVL173:
	.loc 1 465 0
	ld.bu	%d2, [%SP] 4
	.loc 1 476 0
	sub	%d15, %d6
.LVL174:
	.loc 1 482 0
	mov	%d14, 1
	jltz	%d7, .L171
.LVL175:
.L134:
	.loc 1 492 0
	mov	%d11, 1
	jltz	%d15, .L172
.LVL176:
.L135:
.LBB71:
.LBB72:
	.loc 1 440 0
	sh	%d13, %d2, 4
	.loc 1 438 0
	sh	%d0, %d2, 2
	.loc 1 440 0
	extr	%d13, %d13, 0, 8
	.loc 1 438 0
	and	%d0, %d0, 12
	mov.a	%a7, %d0
	.loc 1 440 0
	and	%d0, %d13, 48
	mov.a	%a6, %d0
	.loc 1 442 0
	sh	%d0, %d2, 6
	extr	%d0, %d0, 0, 8
	sh	%d4, 5
.LVL177:
	mov.a	%a5, %d0
	.loc 1 464 0
	sh	%d0, %d11, 2
	mov.a	%a4, %d4
	add	%d0, %d11
	.loc 1 447 0
	and	%d4, %d2, 15
	.loc 1 464 0
	sh	%d10, %d6, 2
	movh.a	%a2, hi:conio_driver
	sh	%d0, 6
.LBE72:
.LBE71:
	.loc 1 500 0
	sh	%d8, %d7, 1
.LVL178:
.LBB83:
.LBB75:
	.loc 1 464 0
	add	%d10, %d6
	lea	%a2, [%a2] lo:conio_driver
	.loc 1 424 0
	movh.a	%a14, hi:.L158
	.loc 1 447 0
	mov.a	%a13, %d4
	.loc 1 436 0
	and	%d4, %d2, 3
	.loc 1 464 0
	mov.a	%a3, %d0
.LBE75:
.LBE83:
	.loc 1 501 0
	sh	%d9, %d15, 1
.LVL179:
	.loc 1 526 0
	sub	%d3, %d8, %d15
.LVL180:
.LBB84:
.LBB76:
	.loc 1 464 0
	mov	%d1, %d6
	sh	%d10, 6
.LBE76:
.LBE84:
	.loc 1 528 0
	mov	%d0, 0
	.loc 1 502 0
	mov	%d12, 0
.LBB85:
.LBB77:
	.loc 1 417 0
	add.a	%a15, %a2, %a4
	.loc 1 424 0
	lea	%a14, [%a14] lo:.L158
	.loc 1 436 0
	mov.a	%a12, %d4
.LBE77:
.LBE85:
	.loc 1 504 0
	jge	%d15, %d7, .L168
.LBB86:
.LBB87:
	.loc 1 424 0
	movh.a	%a4, hi:.L143
	.loc 1 440 0
	mov.a	%a12, %d13
.LBE87:
.LBE86:
	.loc 1 507 0
	sub	%d15, %d9, %d7
.LVL181:
	.loc 1 509 0
	mov	%d3, 0
	.loc 1 503 0
	mov	%d10, 0
.LBB95:
.LBB90:
	.loc 1 424 0
	lea	%a4, [%a4] lo:.L143
	.loc 1 447 0
	and	%d13, %d2, 15
	.loc 1 436 0
	mov	%d12, %d4
.LVL182:
.L150:
	.loc 1 418 0
	ge.u	%d1, %d5, 321
	.loc 1 417 0
	ld.a	%a2, [%a15] 8
.LVL183:
	.loc 1 418 0
	jnz	%d1, .L137
.LBE90:
.LBE95:
	.loc 1 511 0
	add	%d0, %d6, %d10
.LBB96:
.LBB91:
	.loc 1 421 0
	ge.u	%d4, %d0, 229
	jnz	%d4, .L137
	.loc 1 424 0
	ld.w	%d4, [%a15] 16
	add	%d4, -2
	jlt.u	%d4, 4, .L173
.LBB88:
.LBB89:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L137:
.LBE89:
.LBE88:
.LBE91:
.LBE96:
	.loc 1 512 0
	jltz	%d15, .L149
	.loc 1 514 0
	sub	%d15, %d8
.LVL184:
	.loc 1 516 0
	add	%d10, %d11
.LVL185:
.L149:
	.loc 1 509 0
	add	%d3, 1
	.loc 1 518 0
	add	%d15, %d9
.LVL186:
	.loc 1 509 0
	add	%d5, %d14
.LVL187:
	jge	%d7, %d3, .L150
	ret
.LVL188:
.L162:
.LBB97:
.LBB78:
	.loc 1 441 0
	jne	%d4, 3, .L152
	.loc 1 442 0
	sha	%d6, -2
.LVL189:
	addsc.a	%a2, %a2, %d6, 0
.LVL190:
	mov.d	%d6, %a5
	ld.bu	%d4, [%a2]0
	and	%d4, %d4, 63
	or	%d4, %d6
	st.b	[%a2]0, %d4
.L152:
.LBE78:
.LBE97:
	.loc 1 531 0
	jltz	%d3, .L164
	.loc 1 533 0
	sub	%d3, %d9
.LVL191:
	.loc 1 534 0
	add	%d12, %d14
.LVL192:
.L164:
	.loc 1 528 0
	mov.d	%d4, %a3
	add	%d0, 1
	.loc 1 536 0
	add	%d3, %d8
.LVL193:
	.loc 1 528 0
	add	%d1, %d11
	add	%d10, %d4
	jlt	%d15, %d0, .L174
.LVL194:
.L168:
	.loc 1 530 0
	add	%d6, %d5, %d12
.LVL195:
.LBB98:
.LBB79:
	.loc 1 418 0
	ge.u	%d4, %d6, 321
	.loc 1 417 0
	ld.a	%a2, [%a15] 8
.LVL196:
	.loc 1 418 0
	jnz	%d4, .L152
	.loc 1 421 0
	ge.u	%d4, %d1, 229
	jnz	%d4, .L152
	.loc 1 424 0
	ld.w	%d4, [%a15] 16
	add	%d4, -2
	jlt.u	%d4, 4, .L175
.LBB73:
.LBB74:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	j	.L152
.LVL197:
.L174:
	ret
.LVL198:
.L175:
.LBE74:
.LBE73:
	.loc 1 424 0
	addsc.a	%a4, %a14, %d4, 2
	ji	%a4
	.align 2
	.align 2
.L158:
	.code32
	j	.L154
	.code32
	j	.L155
	.code32
	j	.L156
	.code32
	j	.L157
.LVL199:
.L173:
.LBE79:
.LBE98:
.LBB99:
.LBB92:
	addsc.a	%a3, %a4, %d4, 2
	.loc 1 453 0
	sh	%d4, %d0, 2
	add	%d0, %d4
	.loc 1 424 0
	ji	%a3
	.align 2
	.align 2
.L143:
	.code32
	j	.L139
	.code32
	j	.L140
	.code32
	j	.L141
	.code32
	j	.L142
.L141:
	.loc 1 445 0
	madd	%d4, %d5, %d0, 64
.LVL200:
	.loc 1 446 0
	jnz.t	%d4, 0, .L148
	.loc 1 447 0
	sha	%d4, -1
.LVL201:
	addsc.a	%a2, %a2, %d4, 0
.LVL202:
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-16)
	or	%d4, %d13
	st.b	[%a2]0, %d4
	j	.L137
.L140:
	.loc 1 434 0
	madd	%d4, %d5, %d0, 64
.LVL203:
	.loc 1 435 0
	and	%d1, %d4, 3
	jz	%d1, .L176
	.loc 1 437 0
	jne	%d1, 1, .L146
	.loc 1 438 0
	sha	%d4, -2
.LVL204:
	addsc.a	%a2, %a2, %d4, 0
	mov.d	%d0, %a7
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-13)
	or	%d4, %d0
	st.b	[%a2]0, %d4
	j	.L137
.L139:
	.loc 1 427 0
	madd	%d4, %d5, %d0, 64
.LVL205:
	.loc 1 429 0
	sha	%d0, %d4, -3
	addsc.a	%a2, %a2, %d0, 0
	and	%d4, %d4, 15
.LVL206:
	ld.bu	%d0, [%a2]0
	.loc 1 428 0
	jnz	%d2, .L144
	.loc 1 429 0
	insert	%d4, %d0, 0, %d4, 1
	st.b	[%a2]0, %d4
	j	.L137
.L142:
.LVL207:
	.loc 1 453 0
	madd	%d0, %d5, %d0, 64
.LVL208:
	addsc.a	%a2, %a2, %d0, 0
	st.b	[%a2]0, %d2
	j	.L137
.LVL209:
.L156:
.LBE92:
.LBE99:
.LBB100:
.LBB80:
	.loc 1 445 0
	add	%d6, %d10
.LVL210:
	.loc 1 446 0
	jnz.t	%d6, 0, .L163
	.loc 1 447 0
	sha	%d6, -1
.LVL211:
	addsc.a	%a2, %a2, %d6, 0
.LVL212:
	mov.d	%d6, %a13
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-16)
	or	%d4, %d6
	st.b	[%a2]0, %d4
	j	.L152
.LVL213:
.L155:
	.loc 1 434 0
	add	%d6, %d10
.LVL214:
	.loc 1 435 0
	and	%d4, %d6, 3
	jz	%d4, .L177
	.loc 1 437 0
	jne	%d4, 1, .L161
	.loc 1 438 0
	sha	%d6, -2
.LVL215:
	addsc.a	%a2, %a2, %d6, 0
	mov.d	%d6, %a7
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-13)
	or	%d4, %d6
	st.b	[%a2]0, %d4
	j	.L152
.LVL216:
.L154:
	.loc 1 427 0
	add	%d6, %d10
.LVL217:
	.loc 1 429 0
	sha	%d4, %d6, -3
	addsc.a	%a2, %a2, %d4, 0
	and	%d6, %d6, 15
.LVL218:
	ld.bu	%d4, [%a2]0
	.loc 1 428 0
	jnz	%d2, .L159
	.loc 1 429 0
	insert	%d6, %d4, 0, %d6, 1
	st.b	[%a2]0, %d6
	j	.L152
.LVL219:
.L157:
	.loc 1 453 0
	addsc.a	%a2, %a2, %d6, 0
	addsc.a	%a2, %a2, %d10, 0
	st.b	[%a2]0, %d2
	j	.L152
.LVL220:
.L172:
.LBE80:
.LBE100:
	.loc 1 496 0
	rsub	%d15
.LVL221:
	.loc 1 495 0
	mov	%d11, -1
	j	.L135
.LVL222:
.L171:
	.loc 1 485 0
	rsub	%d7
.LVL223:
	.loc 1 484 0
	mov	%d14, -1
	j	.L134
.LVL224:
.L159:
.LBB101:
.LBB81:
	.loc 1 431 0
	insert	%d6, %d4, 1, %d6, 1
	st.b	[%a2]0, %d6
	j	.L152
.LVL225:
.L177:
	.loc 1 436 0
	sha	%d6, -2
.LVL226:
	addsc.a	%a2, %a2, %d6, 0
	mov.d	%d6, %a12
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-4)
	or	%d4, %d6
	st.b	[%a2]0, %d4
	j	.L152
.LVL227:
.L163:
	.loc 1 449 0
	sha	%d6, -1
.LVL228:
	addsc.a	%a2, %a2, %d6, 0
	ld.bu	%d4, [%a2]0
	and	%d4, %d4, 15
	or	%d4, %d13
	st.b	[%a2]0, %d4
	j	.L152
.LVL229:
.L144:
.LBE81:
.LBE101:
.LBB102:
.LBB93:
	.loc 1 431 0
	insert	%d4, %d0, 1, %d4, 1
	st.b	[%a2]0, %d4
	j	.L137
.LVL230:
.L176:
	.loc 1 436 0
	sha	%d4, -2
.LVL231:
	addsc.a	%a2, %a2, %d4, 0
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-4)
	or	%d4, %d12
	st.b	[%a2]0, %d4
	j	.L137
.LVL232:
.L148:
	.loc 1 449 0
	sha	%d4, -1
.LVL233:
	addsc.a	%a2, %a2, %d4, 0
	mov.d	%d0, %a12
	ld.bu	%d4, [%a2]0
	and	%d4, %d4, 15
	or	%d4, %d0
	st.b	[%a2]0, %d4
	j	.L137
.LVL234:
.L161:
.LBE93:
.LBE102:
.LBB103:
.LBB82:
	.loc 1 439 0
	jne	%d4, 2, .L162
	.loc 1 440 0
	sha	%d6, -2
.LVL235:
	addsc.a	%a2, %a2, %d6, 0
.LVL236:
	mov.d	%d6, %a6
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-49)
	or	%d4, %d6
	st.b	[%a2]0, %d4
	j	.L152
.LVL237:
.L146:
.LBE82:
.LBE103:
.LBB104:
.LBB94:
	.loc 1 439 0
	jne	%d1, 2, .L147
	.loc 1 440 0
	sha	%d4, -2
.LVL238:
	addsc.a	%a2, %a2, %d4, 0
.LVL239:
	mov.d	%d0, %a6
	ld.bu	%d4, [%a2]0
	andn	%d4, %d4, ~(-49)
	or	%d4, %d0
	st.b	[%a2]0, %d4
	j	.L137
.LVL240:
.L147:
	.loc 1 441 0
	jne	%d1, 3, .L137
	.loc 1 442 0
	sha	%d4, -2
.LVL241:
	addsc.a	%a2, %a2, %d4, 0
	mov.d	%d0, %a5
	ld.bu	%d4, [%a2]0
	and	%d4, %d4, 63
	or	%d4, %d0
	st.b	[%a2]0, %d4
	j	.L137
.LBE94:
.LBE104:
.LFE368:
	.size	conio_graphics_line, .-conio_graphics_line
.section .text.conio_graphics_set,"ax",@progbits
	.align 1
	.global	conio_graphics_set
	.type	conio_graphics_set, @function
conio_graphics_set:
.LFB369:
	.loc 1 545 0
.LVL242:
	.loc 1 548 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	madd	%d2, %d15, %d4, 32
	.loc 1 549 0
	ge.u	%d15, %d5, 321
	.loc 1 548 0
	mov.a	%a15, %d2
	ld.a	%a2, [%a15] 8
.LVL243:
	.loc 1 549 0
	jnz	%d15, .L178
	.loc 1 552 0
	ge.u	%d15, %d6, 229
	jnz	%d15, .L178
	.loc 1 555 0
	ld.w	%d15, [%a15] 16
	add	%d15, -2
	jlt.u	%d15, 4, .L191
.LBB105:
.LBB106:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
.LVL244:
#NO_APP
.L178:
	ret
.LVL245:
.L191:
.LBE106:
.LBE105:
	.loc 1 555 0
	movh.a	%a15, hi:.L185
	lea	%a15, [%a15] lo:.L185
	addsc.a	%a15, %a15, %d15, 2
	.loc 1 584 0
	sh	%d15, %d6, 2
	add	%d6, %d15
.LVL246:
	madd	%d5, %d5, %d6, 64
.LVL247:
	.loc 1 555 0
	ji	%a15
	.align 2
	.align 2
.L185:
	.code32
	j	.L181
	.code32
	j	.L182
	.code32
	j	.L183
	.code32
	j	.L184
.L183:
.LVL248:
	.loc 1 577 0
	jnz.t	%d5, 0, .L190
	.loc 1 578 0
	sha	%d5, -1
.LVL249:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 0, 4
.LVL250:
	st.b	[%a2]0, %d7
	ret
.LVL251:
.L182:
	.loc 1 566 0
	and	%d15, %d5, 3
	jz	%d15, .L192
	.loc 1 568 0
	jne	%d15, 1, .L188
	.loc 1 569 0
	sha	%d5, -2
.LVL252:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 2, 2
.LVL253:
	st.b	[%a2]0, %d7
	ret
.LVL254:
.L181:
	.loc 1 560 0
	sha	%d15, %d5, -3
	addsc.a	%a2, %a2, %d15, 0
	and	%d5, %d5, 15
.LVL255:
	ld.bu	%d15, [%a2]0
	.loc 1 559 0
	jnz	%d7, .L186
	.loc 1 560 0
	insert	%d5, %d15, 0, %d5, 1
	st.b	[%a2]0, %d5
	ret
.L184:
	.loc 1 584 0
	addsc.a	%a2, %a2, %d5, 0
	st.b	[%a2]0, %d7
	.loc 1 585 0
	ret
.L186:
	.loc 1 562 0
	insert	%d5, %d15, 1, %d5, 1
	st.b	[%a2]0, %d5
	ret
.LVL256:
.L192:
	.loc 1 567 0
	sha	%d5, -2
.LVL257:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 0, 2
.LVL258:
	st.b	[%a2]0, %d7
	ret
.LVL259:
.L190:
	.loc 1 580 0
	sha	%d5, -1
.LVL260:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 4, 32-4
.LVL261:
	st.b	[%a2]0, %d7
	ret
.LVL262:
.L188:
	.loc 1 570 0
	jne	%d15, 2, .L189
	.loc 1 571 0
	sha	%d5, -2
.LVL263:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 4, 2
.LVL264:
	st.b	[%a2]0, %d7
	ret
.LVL265:
.L189:
	.loc 1 572 0
	jne	%d15, 3, .L178
	.loc 1 573 0
	sha	%d5, -2
.LVL266:
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	insert	%d7, %d15, %d7, 6, 32-6
.LVL267:
	st.b	[%a2]0, %d7
	ret
.LFE369:
	.size	conio_graphics_set, .-conio_graphics_set
.section .text.conio_graphics_char,"ax",@progbits
	.align 1
	.global	conio_graphics_char
	.type	conio_graphics_char, @function
conio_graphics_char:
.LFB370:
	.loc 1 597 0
.LVL268:
	sub.a	%SP, 24
.LCFI2:
	.loc 1 597 0
	ld.bu	%d15, [%SP] 24
	.loc 1 602 0
	sh	%d2, %d7, 1
	.loc 1 609 0
	and	%d8, %d15, 15
	.loc 1 602 0
	add	%d7, %d2
.LVL269:
.LBB115:
.LBB116:
	.loc 1 438 0
	sh	%d2, %d8, 2
	and	%d2, %d2, 12
.LBE116:
.LBE115:
	.loc 1 613 0
	sh	%d9, %d15, -4
.LBB132:
.LBB133:
	.loc 1 436 0
	extr	%d15, %d9, 0, 8
.LBE133:
.LBE132:
.LBB148:
.LBB117:
	.loc 1 438 0
	st.w	[%SP]0, %d2
	.loc 1 440 0
	sh	%d2, %d8, 4
	extr	%d13, %d2, 0, 8
.LBE117:
.LBE148:
	.loc 1 596 0
	movh	%d0, hi:__font_bitmap__8_12
.LBB149:
.LBB118:
	.loc 1 440 0
	and	%d2, %d13, 48
.LBE118:
.LBE149:
	.loc 1 596 0
	addi	%d0, %d0, lo:__font_bitmap__8_12
	madd	%d11, %d0, %d7, 4
.LBB150:
.LBB119:
	.loc 1 440 0
	st.w	[%SP] 4, %d2
	.loc 1 442 0
	sh	%d2, %d8, 6
	extr	%d2, %d2, 0, 8
.LBE119:
.LBE150:
.LBB151:
.LBB136:
	.loc 1 417 0
	movh	%d0, hi:conio_driver
	addi	%d0, %d0, lo:conio_driver
	.loc 1 447 0
	mov	%d14, %d15
.LBE136:
.LBE151:
.LBB152:
.LBB120:
	.loc 1 442 0
	st.w	[%SP] 8, %d2
.LBE120:
.LBE152:
.LBB153:
.LBB137:
	.loc 1 436 0
	and	%d2, %d15, 3
	mov.a	%a13, %d2
	.loc 1 438 0
	sh	%d2, %d9, 2
	and	%d2, %d2, 12
	.loc 1 417 0
	madd	%d15, %d0, %d4, 32
	.loc 1 596 0
	addi	%d6, %d6, 12
.LVL270:
	.loc 1 438 0
	st.w	[%SP] 12, %d2
	.loc 1 440 0
	sh	%d2, %d9, 4
	extr	%d12, %d2, 0, 8
	.loc 1 596 0
	sh	%d3, %d6, 2
	.loc 1 440 0
	and	%d2, %d12, 48
.LBE137:
.LBE153:
.LBB154:
.LBB121:
	.loc 1 436 0
	and	%d4, %d8, 3
.LVL271:
.LBE121:
.LBE154:
.LBB155:
.LBB138:
	.loc 1 596 0
	add	%d3, %d6
	.loc 1 440 0
	st.w	[%SP] 16, %d2
	.loc 1 442 0
	sh	%d2, %d9, 6
	extr	%d2, %d2, 0, 8
	.loc 1 424 0
	movh.a	%a12, hi:.L213
.LBE138:
.LBE155:
.LBB156:
.LBB122:
	movh.a	%a7, hi:.L202
.LBE122:
.LBE156:
.LBB157:
.LBB139:
	.loc 1 417 0
	mov.a	%a5, %d15
	mov.a	%a14, %d4
	.loc 1 596 0
	sh	%d1, %d3, 6
.LBE139:
.LBE157:
	.loc 1 602 0
	mov	%d10, 0
.LBB158:
.LBB140:
	.loc 1 424 0
	lea	%a12, [%a12] lo:.L213
.LBE140:
.LBE158:
.LBB159:
.LBB123:
	lea	%a7, [%a7] lo:.L202
	.loc 1 436 0
	mov.a	%a6, 11
	st.w	[%SP] 20, %d2
.LVL272:
.L194:
.LBE123:
.LBE159:
	.loc 1 596 0 discriminator 1
	mov.a	%a15, %d11
	.loc 1 602 0 discriminator 1
	mov	%d0, %d5
	.loc 1 596 0 discriminator 1
	addsc.a	%a4, %a15, %d10, 0
	.loc 1 597 0 discriminator 1
	mov	%d7, 128
.LBB160:
.LBB141:
	.loc 1 421 0 discriminator 1
	ge.u	%d4, %d6, 229
.LBE141:
.LBE160:
.LBB161:
.LBB124:
	.loc 1 436 0 discriminator 1
	mov.a	%a3, 7
.LVL273:
.L219:
.LBE124:
.LBE161:
	.loc 1 607 0
	ld.bu	%d15, [%a4]0
.LBB162:
.LBB125:
	.loc 1 417 0
	ld.a	%a2, [%a5] 8
.LBE125:
.LBE162:
	.loc 1 607 0
	and	%d15, %d7
	jz	%d15, .L195
.LVL274:
.LBB163:
.LBB126:
	.loc 1 418 0
	ge.u	%d15, %d0, 321
	jnz	%d15, .L196
	.loc 1 421 0
	jnz	%d4, .L196
	.loc 1 424 0
	ld.w	%d3, [%a5] 16
	add	%d3, -2
	jlt.u	%d3, 4, .L225
.LVL275:
.L208:
.LBE126:
.LBE163:
.LBB164:
.LBB142:
.LBB134:
.LBB135:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.L196:
.LBE135:
.LBE134:
.LBE142:
.LBE164:
	.loc 1 615 0
	sh	%d7, -1
.LVL276:
	.loc 1 605 0
	add	%d0, 1
	loop	%a3, .L219
	.loc 1 602 0
	add	%d10, 1
.LVL277:
	add	%d6, -1
	addi	%d1, %d1, -320
	loop	%a6, .L194
	ret
.LVL278:
.L225:
.LBB165:
.LBB127:
	.loc 1 424 0
	addsc.a	%a15, %a7, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L202:
	.code32
	j	.L198
	.code32
	j	.L199
	.code32
	j	.L200
	.code32
	j	.L201
.L198:
	.loc 1 596 0
	add	%d15, %d0, %d1
.LVL279:
	.loc 1 428 0
	jnz	%d8, .L214
.LVL280:
.L224:
.LBE127:
.LBE165:
.LBB166:
.LBB143:
	.loc 1 429 0
	sha	%d2, %d15, -3
	addsc.a	%a15, %a2, %d2, 0
	and	%d15, %d15, 15
	ld.bu	%d3, [%a15]0
	insert	%d15, %d3, 0, %d15, 1
	st.b	[%a15]0, %d15
	j	.L196
.LVL281:
.L200:
.LBE143:
.LBE166:
.LBB167:
.LBB128:
	.loc 1 596 0
	add	%d15, %d0, %d1
.LVL282:
	.loc 1 446 0
	jnz.t	%d15, 0, .L207
	.loc 1 447 0
	sha	%d15, -1
.LVL283:
	addsc.a	%a15, %a2, %d15, 0
	ld.bu	%d3, [%a15]0
	andn	%d15, %d3, ~(-16)
	or	%d15, %d8
	st.b	[%a15]0, %d15
	j	.L196
.L201:
	.loc 1 453 0
	addsc.a	%a15, %a2, %d1, 0
	addsc.a	%a15, %a15, %d0, 0
	st.b	[%a15]0, %d8
	j	.L196
.L199:
	.loc 1 596 0
	add	%d3, %d0, %d1
.LVL284:
	.loc 1 435 0
	and	%d2, %d3, 3
	jnz	%d2, .L204
	.loc 1 436 0
	sha	%d2, %d3, -2
	addsc.a	%a15, %a2, %d2, 0
	mov.d	%d2, %a14
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-4)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L196
.LVL285:
.L195:
.LBE128:
.LBE167:
.LBB168:
.LBB144:
	.loc 1 418 0
	ge.u	%d15, %d0, 321
	jnz	%d15, .L196
	.loc 1 421 0
	jnz	%d4, .L196
	.loc 1 424 0
	ld.w	%d3, [%a5] 16
	add	%d3, -2
	jge.u	%d3, 4, .L208
	addsc.a	%a15, %a12, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L213:
	.code32
	j	.L209
	.code32
	j	.L210
	.code32
	j	.L211
	.code32
	j	.L212
.L211:
	.loc 1 596 0
	add	%d15, %d0, %d1
.LVL286:
	.loc 1 446 0
	jnz.t	%d15, 0, .L218
	.loc 1 447 0
	sha	%d15, -1
.LVL287:
	addsc.a	%a15, %a2, %d15, 0
	ld.bu	%d3, [%a15]0
	andn	%d15, %d3, ~(-16)
	or	%d15, %d14
	st.b	[%a15]0, %d15
	j	.L196
.L210:
	.loc 1 596 0
	add	%d3, %d0, %d1
.LVL288:
	.loc 1 435 0
	and	%d2, %d3, 3
	jnz	%d2, .L215
	.loc 1 436 0
	sha	%d2, %d3, -2
	addsc.a	%a15, %a2, %d2, 0
	mov.d	%d2, %a13
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-4)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L196
.LVL289:
.L209:
	.loc 1 596 0
	add	%d15, %d0, %d1
.LVL290:
	.loc 1 428 0
	jz	%d9, .L224
.LVL291:
.L214:
	.loc 1 431 0
	sha	%d3, %d15, -3
	addsc.a	%a15, %a2, %d3, 0
	and	%d15, %d15, 15
	ld.bu	%d2, [%a15]0
	insert	%d15, %d2, 1, %d15, 1
	st.b	[%a15]0, %d15
	j	.L196
.LVL292:
.L212:
	.loc 1 453 0
	addsc.a	%a15, %a2, %d1, 0
	addsc.a	%a15, %a15, %d0, 0
	st.b	[%a15]0, %d9
	j	.L196
.LVL293:
.L215:
	.loc 1 437 0
	jne	%d2, 1, .L216
	.loc 1 438 0
	sha	%d3, -2
.LVL294:
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d2, [%SP] 12
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-13)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L196
.LVL295:
.L204:
.LBE144:
.LBE168:
.LBB169:
.LBB129:
	.loc 1 437 0
	jne	%d2, 1, .L205
	.loc 1 438 0
	sha	%d3, -2
.LVL296:
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d2, [%SP]0
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-13)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L196
.LVL297:
.L218:
.LBE129:
.LBE169:
.LBB170:
.LBB145:
	.loc 1 449 0
	sha	%d15, -1
.LVL298:
	addsc.a	%a15, %a2, %d15, 0
	ld.bu	%d3, [%a15]0
	and	%d15, %d3, 15
	or	%d15, %d12
	st.b	[%a15]0, %d15
	j	.L196
.LVL299:
.L207:
.LBE145:
.LBE170:
.LBB171:
.LBB130:
	sha	%d15, -1
.LVL300:
	addsc.a	%a15, %a2, %d15, 0
	ld.bu	%d3, [%a15]0
	and	%d15, %d3, 15
	or	%d15, %d13
	st.b	[%a15]0, %d15
	j	.L196
.LVL301:
.L205:
	.loc 1 439 0
	jne	%d2, 2, .L206
	.loc 1 440 0
	sha	%d3, -2
.LVL302:
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d2, [%SP] 4
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-49)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L196
.LVL303:
.L216:
.LBE130:
.LBE171:
.LBB172:
.LBB146:
	.loc 1 439 0
	jne	%d2, 2, .L217
	.loc 1 440 0
	sha	%d3, -2
.LVL304:
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d2, [%SP] 16
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-49)
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L196
.LVL305:
.L206:
.LBE146:
.LBE172:
.LBB173:
.LBB131:
	.loc 1 441 0
	jne	%d2, 3, .L196
	.loc 1 442 0
	sha	%d3, -2
.LVL306:
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d2, [%SP] 8
	ld.bu	%d15, [%a15]0
	and	%d15, %d15, 63
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L196
.LVL307:
.L217:
.LBE131:
.LBE173:
.LBB174:
.LBB147:
	.loc 1 441 0
	jne	%d2, 3, .L196
	.loc 1 442 0
	sha	%d3, -2
.LVL308:
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d2, [%SP] 20
	ld.bu	%d15, [%a15]0
	and	%d15, %d15, 63
	or	%d15, %d2
	st.b	[%a15]0, %d15
	j	.L196
.LBE147:
.LBE174:
.LFE370:
	.size	conio_graphics_char, .-conio_graphics_char
.section .text.conio_graphics_cputs,"ax",@progbits
	.align 1
	.global	conio_graphics_cputs
	.type	conio_graphics_cputs, @function
conio_graphics_cputs:
.LFB364:
	.loc 1 350 0
.LVL309:
	.loc 1 353 0
	movh	%d15, hi:conio_driver
	addi	%d15, %d15, lo:conio_driver
	mov.a	%a2, %d15
	sh	%d2, %d4, 5
	addsc.a	%a15, %a2, %d2, 0
	.loc 1 350 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 353 0
	ld.w	%d3, [%a15] 16
	.loc 1 350 0
	mov	%d8, %d4
	.loc 1 353 0
	jlt.u	%d3, 2, .L234
.L227:
	.loc 1 362 0 discriminator 1
	addi	%d3, %d8, 1
	madd	%d4, %d15, %d3, 32
.LVL310:
	mov.a	%a2, %d15
.LBB175:
.LBB176:
	.loc 2 1339 0 discriminator 1
	mov.aa	%a12, %a4
.LBE176:
.LBE175:
	.loc 1 362 0 discriminator 1
	mov.a	%a15, %d4
	addsc.a	%a13, %a2, %d2, 0
	.loc 1 366 0 discriminator 1
	mov	%d9, 320
	.loc 1 368 0 discriminator 1
	mov	%d10, 0
.LVL311:
.L233:
	.loc 1 358 0 discriminator 1
	ld.bu	%d7, [%a12+]1
	jz	%d7, .L235
.L230:
	.loc 1 360 0
	jlt.u	%d7, 14, .L233
.LVL312:
	.loc 1 362 0
	ld.bu	%d15, [%a13] 20
	st.w	[%SP]0, %d15
	ld.w	%d5, [%a15]0
	ld.w	%d6, [%a13] 36
	mov	%d4, %d8
	call	conio_graphics_char
	.loc 1 365 0
	ld.w	%d15, [%a15]0
	addi	%d15, %d15, 8
	.loc 1 368 0
	ne	%d2, %d15, %d9
	sel	%d15, %d2, %d15, %d10
	st.w	[%a15]0, %d15
.LVL313:
	.loc 1 358 0
	ld.bu	%d7, [%a12+]1
	jnz	%d7, .L230
.L235:
	.loc 1 376 0
	ret
.LVL314:
.L234:
.LBB178:
.LBB177:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	j	.L227
.LBE177:
.LBE178:
.LFE364:
	.size	conio_graphics_cputs, .-conio_graphics_cputs
.section .text.conio_graphics_printf,"ax",@progbits
	.align 1
	.global	conio_graphics_printf
	.type	conio_graphics_printf, @function
conio_graphics_printf:
.LFB366:
	.loc 1 397 0
.LVL315:
	sub.a	%SP, 80
.LCFI4:
.LVL316:
	.loc 1 397 0
	mov.aa	%a5, %a4
	.loc 1 402 0
	lea	%a6, [%SP] 80
	mov.aa	%a4, %SP
.LVL317:
	.loc 1 397 0
	mov	%d15, %d4
	.loc 1 402 0
	call	vsprintf
.LVL318:
	.loc 1 404 0
	jltz	%d2, .L236
	.loc 1 409 0
	mov	%d4, %d15
	mov.aa	%a4, %SP
	call	conio_graphics_cputs
.LVL319:
.L236:
	ret
.LFE366:
	.size	conio_graphics_printf, .-conio_graphics_printf
.section .text.conio_graphics_printfxy,"ax",@progbits
	.align 1
	.global	conio_graphics_printfxy
	.type	conio_graphics_printfxy, @function
conio_graphics_printfxy:
.LFB365:
	.loc 1 379 0
.LVL320:
	sub.a	%SP, 80
.LCFI5:
.LVL321:
	.loc 1 379 0
	mov.aa	%a5, %a4
	.loc 1 384 0
	lea	%a6, [%SP] 80
	mov.aa	%a4, %SP
.LVL322:
	.loc 1 379 0
	mov	%d8, %d4
	mov	%d10, %d5
	mov	%d9, %d6
	.loc 1 384 0
	call	vsprintf
.LVL323:
	.loc 1 386 0
	jltz	%d2, .L238
.LVL324:
.LBB179:
.LBB180:
	.loc 1 338 0
	movh	%d3, hi:conio_driver
	addi	%d3, %d3, lo:conio_driver
	mov.a	%a2, %d3
	sh	%d2, %d8, 5
.LVL325:
	addsc.a	%a15, %a2, %d2, 0
	ld.w	%d15, [%a15] 16
	jlt.u	%d15, 2, .L242
.L240:
	.loc 1 343 0
	mov	%d15, 320
	ge	%d15, %d10, %d15
	or.ge	%d15, %d9, 228
	jz	%d15, .L243
.LBE180:
.LBE179:
	.loc 1 393 0
	mov	%d4, %d8
	mov.aa	%a4, %SP
	call	conio_graphics_cputs
.LVL326:
.L238:
	ret
.LVL327:
.L243:
.LBB187:
.LBB183:
	.loc 1 345 0
	madd	%d15, %d3, %d8, 32
	.loc 1 346 0
	mov.a	%a2, %d3
.LBE183:
.LBE187:
	.loc 1 393 0
	mov	%d4, %d8
.LBB188:
.LBB184:
	.loc 1 345 0
	mov.a	%a15, %d15
.LBE184:
.LBE188:
	.loc 1 393 0
	mov.aa	%a4, %SP
.LBB189:
.LBB185:
	.loc 1 345 0
	st.w	[%a15] 32, %d10
	.loc 1 346 0
	addsc.a	%a15, %a2, %d2, 0
	st.w	[%a15] 36, %d9
.LBE185:
.LBE189:
	.loc 1 393 0
	call	conio_graphics_cputs
	j	.L238
.L242:
.LBB190:
.LBB186:
.LBB181:
.LBB182:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
	j	.L240
.LBE182:
.LBE181:
.LBE186:
.LBE190:
.LFE365:
	.size	conio_graphics_printfxy, .-conio_graphics_printfxy
.section .text.tft_graphic,"ax",@progbits
	.align 1
	.global	tft_graphic
	.type	tft_graphic, @function
tft_graphic:
.LFB373:
	.loc 1 731 0
.LVL328:
	.loc 1 733 0
	movh.a	%a15, hi:cpy_mode
	st.w	[%a15] lo:cpy_mode, %d4
	.loc 1 737 0
	mov	%d15, 0
	.loc 1 734 0
	movh.a	%a15, hi:cpy_pdisplay
	st.a	[%a15] lo:cpy_pdisplay, %a4
	.loc 1 735 0
	movh.a	%a15, hi:cpy_pdisplaycolor
	st.a	[%a15] lo:cpy_pdisplaycolor, %a5
	.loc 1 737 0
	movh.a	%a15, hi:YSIZE_cnt
	st.w	[%a15] lo:YSIZE_cnt, %d15
	.loc 1 739 0
	j	tft_graphics_lines_written
.LVL329:
.LVL330:
.LVL331:
.LFE373:
	.size	tft_graphic, .-tft_graphic
	.global	colortable_graphics
.section .data_cpu0,"awc0",@progbits
	.align 1
	.type	colortable_graphics, @object
	.size	colortable_graphics, 512
colortable_graphics:
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
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.zero	32
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
	.type	YSIZE_cnt, @object
	.size	YSIZE_cnt, 4
YSIZE_cnt:
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
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.byte	0x4
	.uaword	.LCFI0-.LFB355
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.byte	0x4
	.uaword	.LCFI1-.LFB356
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.byte	0x4
	.uaword	.LCFI2-.LFB370
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.byte	0x4
	.uaword	.LCFI3-.LFB364
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.byte	0x4
	.uaword	.LCFI4-.LFB366
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.byte	0x4
	.uaword	.LCFI5-.LFB365
	.byte	0xe
	.uleb128 0x50
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.align 2
.LEFDE46:
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
	.uaword	0x15b7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/2_CDrv/Tricore/Tft/libtft_graphics.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x440
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
	.uaword	0xd5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x59
	.uaword	0xf1
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
	.uaword	0x11d
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x5c
	.uaword	0xa0
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0xac
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
	.uaword	0x1c7
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
	.uaword	0x1a5
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x1e
	.uaword	0x23b
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
	.uaword	0x1da
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.uaword	0x2c4
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
	.uaword	0x24f
	.uleb128 0x6
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x4
	.byte	0x34
	.uaword	0x356
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x4
	.byte	0x36
	.uaword	0x356
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x4
	.byte	0x37
	.uaword	0x356
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"mode"
	.byte	0x4
	.byte	0x38
	.uaword	0x2c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x4
	.byte	0x39
	.uaword	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"maxx"
	.byte	0x4
	.byte	0x3a
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"maxy"
	.byte	0x4
	.byte	0x3b
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"x"
	.byte	0x4
	.byte	0x3c
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"y"
	.byte	0x4
	.byte	0x3d
	.uaword	0x133
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xe4
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2d1
	.uleb128 0x3
	.string	"__gnuc_va_list"
	.byte	0x5
	.byte	0x28
	.uaword	0x387
	.uleb128 0xa
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x3
	.string	"va_list"
	.byte	0x5
	.byte	0x66
	.uaword	0x371
	.uleb128 0x3
	.string	"TCOLORTABLE"
	.byte	0x6
	.byte	0x7f
	.uaword	0x3bd
	.uleb128 0xb
	.uaword	0x10f
	.uaword	0x3cd
	.uleb128 0xc
	.uaword	0xac
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.uaword	0xe4
	.uaword	0x3dd
	.uleb128 0xc
	.uaword	0xac
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x6
	.byte	0x8b
	.uaword	0x49f
	.uleb128 0x8
	.string	"color_display"
	.byte	0x6
	.byte	0x8d
	.uaword	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"color_select"
	.byte	0x6
	.byte	0x8f
	.uaword	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"xmin"
	.byte	0x6
	.byte	0x90
	.uaword	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"xmax"
	.byte	0x6
	.byte	0x91
	.uaword	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"y"
	.byte	0x6
	.byte	0x92
	.uaword	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"select"
	.byte	0x6
	.byte	0x93
	.uaword	0x4b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"display"
	.byte	0x6
	.byte	0x94
	.uaword	0x4b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"input"
	.byte	0x6
	.byte	0x95
	.uaword	0x4d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"text"
	.byte	0x6
	.byte	0x96
	.uaword	0x3cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"symbol"
	.byte	0x6
	.byte	0x97
	.uaword	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x4b0
	.uleb128 0xe
	.uaword	0x133
	.uleb128 0xe
	.uaword	0x4b0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x3dd
	.uleb128 0x9
	.byte	0x4
	.uaword	0x49f
	.uleb128 0xf
	.byte	0x1
	.uaword	0x133
	.uaword	0x4d1
	.uleb128 0xe
	.uaword	0x133
	.uleb128 0xe
	.uaword	0x4b0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x4bc
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x6
	.byte	0x98
	.uaword	0x3dd
	.uleb128 0x10
	.string	"CONIO_DRIVER"
	.uahalf	0x114
	.byte	0x6
	.byte	0x9d
	.uaword	0x631
	.uleb128 0x8
	.string	"pmenulist"
	.byte	0x6
	.byte	0x9f
	.uaword	0x631
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"pstdlist"
	.byte	0x6
	.byte	0xa0
	.uaword	0x631
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"display"
	.byte	0x6
	.byte	0xa1
	.uaword	0x637
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"pdasmirror"
	.byte	0x6
	.byte	0xa2
	.uaword	0x647
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x8
	.string	"dasstatus"
	.byte	0x6
	.byte	0xa3
	.uaword	0x141
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x8
	.string	"dasdisplaymode"
	.byte	0x6
	.byte	0xa4
	.uaword	0x23b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x8
	.string	"cursorstatus"
	.byte	0x6
	.byte	0xa5
	.uaword	0x133
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x6
	.byte	0xa6
	.uaword	0x23b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x8
	.string	"dialogmode"
	.byte	0x6
	.byte	0xa7
	.uaword	0x1c7
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x8
	.string	"scanfdescr"
	.byte	0x6
	.byte	0xa8
	.uaword	0x64d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x8
	.string	"scanftext"
	.byte	0x6
	.byte	0xa9
	.uaword	0x64d
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x8
	.string	"input"
	.byte	0x6
	.byte	0xaa
	.uaword	0x672
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x8
	.string	"inputid"
	.byte	0x6
	.byte	0xab
	.uaword	0x133
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x8
	.string	"scanfx"
	.byte	0x6
	.byte	0xac
	.uaword	0xc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x8
	.string	"blinky"
	.byte	0x6
	.byte	0xad
	.uaword	0xe4
	.byte	0x3
	.byte	0x23
	.uleb128 0x111
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x4d7
	.uleb128 0xb
	.uaword	0x35c
	.uaword	0x647
	.uleb128 0xc
	.uaword	0xac
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x141
	.uleb128 0xb
	.uaword	0xe4
	.uaword	0x65d
	.uleb128 0xc
	.uaword	0xac
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x133
	.uaword	0x672
	.uleb128 0xe
	.uaword	0x133
	.uleb128 0xe
	.uaword	0x631
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x65d
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x6
	.byte	0xae
	.uaword	0x4ec
	.uleb128 0x11
	.string	"tft_prepare_graphics_lines"
	.byte	0x1
	.uahalf	0x26d
	.byte	0x1
	.byte	0x1
	.uaword	0x736
	.uleb128 0x12
	.string	"mode"
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x2c4
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x356
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x356
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.uahalf	0x26f
	.uaword	0x133
	.uleb128 0x14
	.string	"cnt"
	.byte	0x1
	.uahalf	0x26f
	.uaword	0x133
	.uleb128 0x15
	.uaword	0x700
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.uahalf	0x279
	.uaword	0xe4
	.byte	0
	.uleb128 0x15
	.uaword	0x713
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.uahalf	0x294
	.uaword	0xe4
	.byte	0
	.uleb128 0x15
	.uaword	0x726
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0xe4
	.byte	0
	.uleb128 0x16
	.uleb128 0x14
	.string	"temp"
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0xe4
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"tft_graphics_lines_written"
	.byte	0x1
	.uahalf	0x2c4
	.byte	0x1
	.uaword	0x141
	.byte	0x1
	.uleb128 0x18
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.byte	0x1
	.string	"conio_graphics_gotoxy"
	.byte	0x1
	.uahalf	0x150
	.byte	0x1
	.byte	0x1
	.uaword	0x7ab
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x150
	.uaword	0x23b
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x133
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x133
	.byte	0
	.uleb128 0x1a
	.uaword	0x736
	.uaword	.LFB372
	.uaword	.LFE372
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x857
	.uleb128 0x1b
	.uaword	0x68d
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0x846
	.uleb128 0x1c
	.uaword	0x6bf
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	0x6b2
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x28
	.uleb128 0x1e
	.uaword	0x6d7
	.uaword	.LLST2
	.uleb128 0x1e
	.uaword	0x6e1
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0x80f
	.uleb128 0x1e
	.uaword	0x705
	.uaword	.LLST4
	.byte	0
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x80
	.uaword	0x822
	.uleb128 0x1e
	.uaword	0x718
	.uaword	.LLST5
	.byte	0
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0xa0
	.uaword	0x835
	.uleb128 0x1e
	.uaword	0x727
	.uaword	.LLST6
	.byte	0
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x1e
	.uaword	0x6f2
	.uaword	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x736
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.uahalf	0x2c4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"display_graphics_clrscr"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x893
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.byte	0x6f
	.uaword	0x23b
	.uaword	.LLST8
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"display_graphics_textattr"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	.LFB350
	.uaword	.LFE350
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x8e0
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.byte	0x7b
	.uaword	0x23b
	.uaword	.LLST9
	.uleb128 0x22
	.uaword	.LASF2
	.byte	0x1
	.byte	0x7b
	.uaword	0x133
	.uaword	.LLST10
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"display_graphics_textcolor"
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.uaword	.LFB351
	.uaword	.LFE351
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x92e
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.byte	0x87
	.uaword	0x23b
	.uaword	.LLST11
	.uleb128 0x22
	.uaword	.LASF2
	.byte	0x1
	.byte	0x87
	.uaword	0x133
	.uaword	.LLST12
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"display_graphics_textbackground"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x981
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.byte	0x92
	.uaword	0x23b
	.uaword	.LLST13
	.uleb128 0x22
	.uaword	.LASF2
	.byte	0x1
	.byte	0x92
	.uaword	0x133
	.uaword	.LLST14
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"display_graphics_gotoxy"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9d7
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.byte	0x9d
	.uaword	0x23b
	.uaword	.LLST15
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0x9d
	.uaword	0x133
	.uaword	.LLST16
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.byte	0x9d
	.uaword	0x133
	.uaword	.LLST17
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"display_graphics_cputs"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xa4b
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa9
	.uaword	0x23b
	.uaword	.LLST18
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.byte	0xa9
	.uaword	0x356
	.uaword	.LLST19
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0xab
	.uaword	0x133
	.uaword	.LLST20
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xac
	.uaword	0x133
	.uaword	.LLST21
	.uleb128 0x24
	.string	"pbuf"
	.byte	0x1
	.byte	0xad
	.uaword	0x647
	.uaword	.LLST22
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"display_graphics_printfxy"
	.byte	0x1
	.byte	0xc2
	.byte	0x1
	.uaword	.LFB355
	.uaword	.LFE355
	.uaword	.LLST23
	.uaword	0xb0a
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.byte	0xc2
	.uaword	0x23b
	.uaword	.LLST24
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0xc2
	.uaword	0x133
	.uaword	.LLST25
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.byte	0xc2
	.uaword	0x133
	.uaword	.LLST26
	.uleb128 0x22
	.uaword	.LASF4
	.byte	0x1
	.byte	0xc2
	.uaword	0xb0a
	.uaword	.LLST27
	.uleb128 0x26
	.uleb128 0x27
	.uaword	.LASF5
	.byte	0x1
	.byte	0xc4
	.uaword	0x133
	.uaword	.LLST28
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0xc4
	.uaword	0x133
	.uaword	.LLST29
	.uleb128 0x28
	.uaword	.LASF6
	.byte	0x1
	.byte	0xc5
	.uaword	0xb15
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.uaword	0x133
	.uaword	.LLST30
	.uleb128 0x29
	.string	"pbuf"
	.byte	0x1
	.byte	0xc7
	.uaword	0x647
	.byte	0x1
	.byte	0x6a
	.uleb128 0x29
	.string	"ap"
	.byte	0x1
	.byte	0xc8
	.uaword	0x39b
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0xb10
	.uleb128 0x2a
	.uaword	0xe4
	.uleb128 0xb
	.uaword	0xe4
	.uaword	0xb25
	.uleb128 0xc
	.uaword	0xac
	.byte	0x4f
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"display_graphics_printf"
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.uaword	.LFB356
	.uaword	.LFE356
	.uaword	.LLST31
	.uaword	0xbc8
	.uleb128 0x22
	.uaword	.LASF3
	.byte	0x1
	.byte	0xe2
	.uaword	0x23b
	.uaword	.LLST32
	.uleb128 0x22
	.uaword	.LASF4
	.byte	0x1
	.byte	0xe2
	.uaword	0xb0a
	.uaword	.LLST33
	.uleb128 0x26
	.uleb128 0x27
	.uaword	.LASF5
	.byte	0x1
	.byte	0xe4
	.uaword	0x133
	.uaword	.LLST34
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0xe4
	.uaword	0x133
	.uaword	.LLST35
	.uleb128 0x28
	.uaword	.LASF6
	.byte	0x1
	.byte	0xe5
	.uaword	0xb15
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xe6
	.uaword	0x133
	.uaword	.LLST36
	.uleb128 0x29
	.string	"pbuf"
	.byte	0x1
	.byte	0xe7
	.uaword	0x647
	.byte	0x1
	.byte	0x6a
	.uleb128 0x29
	.string	"ap"
	.byte	0x1
	.byte	0xe8
	.uaword	0x39b
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"display_graphics_line"
	.byte	0x1
	.uahalf	0x101
	.byte	0x1
	.uaword	.LFB357
	.uaword	.LFE357
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xc4e
	.uleb128 0x2c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x101
	.uaword	0x23b
	.uaword	.LLST37
	.uleb128 0x2d
	.string	"x1"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x133
	.uaword	.LLST38
	.uleb128 0x2d
	.string	"y1"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x133
	.uaword	.LLST39
	.uleb128 0x2d
	.string	"x2"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x133
	.uaword	.LLST40
	.uleb128 0x2e
	.string	"y2"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x101
	.uaword	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"conio_graphics_setcolortable"
	.byte	0x1
	.uahalf	0x10f
	.byte	0x1
	.uaword	.LFB358
	.uaword	.LFE358
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xcb9
	.uleb128 0x2e
	.string	"ind"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x141
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"r"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x141
	.uaword	.LLST41
	.uleb128 0x2d
	.string	"g"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x141
	.uaword	.LLST42
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x141
	.uaword	.LLST43
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"conio_graphics_clrscr"
	.byte	0x1
	.uahalf	0x118
	.byte	0x1
	.uaword	.LFB359
	.uaword	.LFE359
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd13
	.uleb128 0x2c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x118
	.uaword	0x23b
	.uaword	.LLST44
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x133
	.uaword	.LLST45
	.uleb128 0x20
	.uaword	0x75b
	.uaword	.LBB55
	.uaword	.LBE55
	.byte	0x1
	.uahalf	0x13b
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"conio_graphics_textattr"
	.byte	0x1
	.uahalf	0x140
	.byte	0x1
	.uaword	.LFB360
	.uaword	.LFE360
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd5d
	.uleb128 0x2f
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x140
	.uaword	0x23b
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x140
	.uaword	0x133
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"conio_graphics_textcolor"
	.byte	0x1
	.uahalf	0x146
	.byte	0x1
	.uaword	.LFB361
	.uaword	.LFE361
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdaa
	.uleb128 0x2f
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x146
	.uaword	0x23b
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x146
	.uaword	0x133
	.uaword	.LLST46
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"conio_graphics_textbackground"
	.byte	0x1
	.uahalf	0x14b
	.byte	0x1
	.uaword	.LFB362
	.uaword	.LFE362
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdfc
	.uleb128 0x2f
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x23b
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x133
	.uaword	.LLST47
	.byte	0
	.uleb128 0x1a
	.uaword	0x769
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe36
	.uleb128 0x31
	.uaword	0x78a
	.byte	0x1
	.byte	0x54
	.uleb128 0x31
	.uaword	0x796
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.uaword	0x7a0
	.byte	0x1
	.byte	0x56
	.uleb128 0x20
	.uaword	0x75b
	.uaword	.LBB57
	.uaword	.LBE57
	.byte	0x1
	.uahalf	0x155
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"conio_graphics_set_opt"
	.byte	0x1
	.uahalf	0x19d
	.byte	0x1
	.byte	0x3
	.uaword	0xe9e
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x23b
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x133
	.uleb128 0x12
	.string	"y"
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x133
	.uleb128 0x13
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19d
	.uaword	0xe4
	.uleb128 0x32
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x356
	.uleb128 0x14
	.string	"offs"
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x133
	.byte	0
	.uleb128 0x1a
	.uaword	0xe36
	.uaword	.LFB367
	.uaword	.LFE367
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xef6
	.uleb128 0x31
	.uaword	0xe58
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.uaword	0xe64
	.uaword	.LLST48
	.uleb128 0x1c
	.uaword	0xe6e
	.uaword	.LLST49
	.uleb128 0x1c
	.uaword	0xe78
	.uaword	.LLST50
	.uleb128 0x33
	.uaword	0xe84
	.byte	0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x1e
	.uaword	0xe90
	.uaword	.LLST51
	.uleb128 0x20
	.uaword	0x75b
	.uaword	.LBB61
	.uaword	.LBE61
	.byte	0x1
	.uahalf	0x1c9
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"conio_graphics_line"
	.byte	0x1
	.uahalf	0x1d0
	.byte	0x1
	.uaword	.LFB368
	.uaword	.LFE368
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x10ba
	.uleb128 0x2c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x23b
	.uaword	.LLST52
	.uleb128 0x2d
	.string	"x1"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x133
	.uaword	.LLST53
	.uleb128 0x2d
	.string	"y1"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x133
	.uaword	.LLST54
	.uleb128 0x2d
	.string	"x2"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x133
	.uaword	.LLST55
	.uleb128 0x2e
	.string	"y2"
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x133
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"xofs"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0xc1
	.uaword	.LLST56
	.uleb128 0x30
	.string	"yofs"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0xc1
	.uaword	.LLST57
	.uleb128 0x34
	.string	"dx"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0xc1
	.byte	0x1
	.byte	0x57
	.uleb128 0x30
	.string	"dy"
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0xc1
	.uaword	.LLST58
	.uleb128 0x30
	.string	"dx2"
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0xc1
	.uaword	.LLST59
	.uleb128 0x30
	.string	"dy2"
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0xc1
	.uaword	.LLST60
	.uleb128 0x30
	.string	"ix"
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0xc1
	.uaword	.LLST61
	.uleb128 0x30
	.string	"iy"
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0xc1
	.uaword	.LLST62
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.uahalf	0x1d6
	.uaword	0xc1
	.uaword	.LLST63
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0xc1
	.uaword	.LLST64
	.uleb128 0x1b
	.uaword	0xe36
	.uaword	.LBB71
	.uaword	.Ldebug_ranges0+0xf8
	.byte	0x1
	.uahalf	0x212
	.uaword	0x1068
	.uleb128 0x35
	.uaword	0xe78
	.uleb128 0x35
	.uaword	0xe6e
	.uleb128 0x1c
	.uaword	0xe64
	.uaword	.LLST65
	.uleb128 0x35
	.uaword	0xe58
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x148
	.uleb128 0x1e
	.uaword	0xe84
	.uaword	.LLST66
	.uleb128 0x1e
	.uaword	0xe90
	.uaword	.LLST67
	.uleb128 0x20
	.uaword	0x75b
	.uaword	.LBB73
	.uaword	.LBE73
	.byte	0x1
	.uahalf	0x1c9
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0xe36
	.uaword	.LBB86
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.uahalf	0x1ff
	.uleb128 0x35
	.uaword	0xe78
	.uleb128 0x35
	.uaword	0xe6e
	.uleb128 0x1c
	.uaword	0xe64
	.uaword	.LLST68
	.uleb128 0x35
	.uaword	0xe58
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x1d0
	.uleb128 0x1e
	.uaword	0xe84
	.uaword	.LLST69
	.uleb128 0x1e
	.uaword	0xe90
	.uaword	.LLST70
	.uleb128 0x20
	.uaword	0x75b
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.uahalf	0x1c9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"conio_graphics_set"
	.byte	0x1
	.uahalf	0x220
	.byte	0x1
	.uaword	.LFB369
	.uaword	.LFE369
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x114d
	.uleb128 0x2f
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x220
	.uaword	0x23b
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.uahalf	0x220
	.uaword	0x133
	.uaword	.LLST71
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.uahalf	0x220
	.uaword	0x133
	.uaword	.LLST72
	.uleb128 0x2c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x220
	.uaword	0xe4
	.uaword	.LLST73
	.uleb128 0x37
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x222
	.uaword	0x356
	.byte	0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x30
	.string	"offs"
	.byte	0x1
	.uahalf	0x223
	.uaword	0x133
	.uaword	.LLST74
	.uleb128 0x20
	.uaword	0x75b
	.uaword	.LBB105
	.uaword	.LBE105
	.byte	0x1
	.uahalf	0x24c
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"conio_graphics_char"
	.byte	0x1
	.uahalf	0x254
	.byte	0x1
	.uaword	.LFB370
	.uaword	.LFE370
	.uaword	.LLST75
	.uaword	0x128b
	.uleb128 0x2c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x254
	.uaword	0x23b
	.uaword	.LLST76
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x133
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.uahalf	0x254
	.uaword	0x133
	.uaword	.LLST77
	.uleb128 0x2d
	.string	"ch"
	.byte	0x1
	.uahalf	0x254
	.uaword	0xe4
	.uaword	.LLST78
	.uleb128 0x2f
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x254
	.uaword	0xe4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.uahalf	0x256
	.uaword	0xc1
	.uaword	.LLST79
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.uahalf	0x256
	.uaword	0xc1
	.uaword	.LLST80
	.uleb128 0x30
	.string	"ind"
	.byte	0x1
	.uahalf	0x256
	.uaword	0xc1
	.uaword	.LLST81
	.uleb128 0x30
	.string	"mask"
	.byte	0x1
	.uahalf	0x257
	.uaword	0xe4
	.uaword	.LLST82
	.uleb128 0x1b
	.uaword	0xe36
	.uaword	.LBB115
	.uaword	.Ldebug_ranges0+0x208
	.byte	0x1
	.uahalf	0x261
	.uaword	0x123d
	.uleb128 0x35
	.uaword	0xe78
	.uleb128 0x35
	.uaword	0xe6e
	.uleb128 0x35
	.uaword	0xe64
	.uleb128 0x35
	.uaword	0xe58
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x290
	.uleb128 0x1e
	.uaword	0xe84
	.uaword	.LLST83
	.uleb128 0x1e
	.uaword	0xe90
	.uaword	.LLST84
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0xe36
	.uaword	.LBB132
	.uaword	.Ldebug_ranges0+0x318
	.byte	0x1
	.uahalf	0x265
	.uleb128 0x35
	.uaword	0xe78
	.uleb128 0x35
	.uaword	0xe6e
	.uleb128 0x35
	.uaword	0xe64
	.uleb128 0x35
	.uaword	0xe58
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x388
	.uleb128 0x1e
	.uaword	0xe84
	.uaword	.LLST85
	.uleb128 0x1e
	.uaword	0xe90
	.uaword	.LLST86
	.uleb128 0x20
	.uaword	0x75b
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.uahalf	0x1c9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"conio_graphics_cputs"
	.byte	0x1
	.uahalf	0x15d
	.byte	0x1
	.uaword	.LFB364
	.uaword	.LFE364
	.uaword	.LLST87
	.uaword	0x12f0
	.uleb128 0x2c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x23b
	.uaword	.LLST88
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x356
	.uaword	.LLST89
	.uleb128 0x39
	.string	"i"
	.byte	0x1
	.uahalf	0x160
	.uaword	0x133
	.byte	0
	.uleb128 0x3a
	.uaword	0x75b
	.uaword	.LBB175
	.uaword	.Ldebug_ranges0+0x3f8
	.byte	0x1
	.uahalf	0x164
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"conio_graphics_printf"
	.byte	0x1
	.uahalf	0x18c
	.byte	0x1
	.uaword	.LFB366
	.uaword	.LFE366
	.uaword	.LLST90
	.uaword	0x1379
	.uleb128 0x2c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x23b
	.uaword	.LLST91
	.uleb128 0x2c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x18c
	.uaword	0xb0a
	.uaword	.LLST92
	.uleb128 0x26
	.uleb128 0x3b
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x133
	.uaword	.LLST93
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x133
	.uleb128 0x37
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x18f
	.uaword	0xb15
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.string	"ap"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x39b
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"conio_graphics_printfxy"
	.byte	0x1
	.uahalf	0x17a
	.byte	0x1
	.uaword	.LFB365
	.uaword	.LFE365
	.uaword	.LLST94
	.uaword	0x145c
	.uleb128 0x2c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x23b
	.uaword	.LLST95
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x133
	.uaword	.LLST96
	.uleb128 0x2d
	.string	"y"
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x133
	.uaword	.LLST97
	.uleb128 0x2c
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x17a
	.uaword	0xb0a
	.uaword	.LLST98
	.uleb128 0x26
	.uleb128 0x3b
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x133
	.uaword	.LLST99
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x133
	.uleb128 0x37
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x17d
	.uaword	0xb15
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x34
	.string	"ap"
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x39b
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uleb128 0x36
	.uaword	0x769
	.uaword	.LBB179
	.uaword	.Ldebug_ranges0+0x410
	.byte	0x1
	.uahalf	0x188
	.uleb128 0x1c
	.uaword	0x7a0
	.uaword	.LLST100
	.uleb128 0x1c
	.uaword	0x796
	.uaword	.LLST101
	.uleb128 0x1c
	.uaword	0x78a
	.uaword	.LLST102
	.uleb128 0x20
	.uaword	0x75b
	.uaword	.LBB181
	.uaword	.LBE181
	.byte	0x1
	.uahalf	0x155
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"tft_graphic"
	.byte	0x1
	.uahalf	0x2da
	.byte	0x1
	.uaword	.LFB373
	.uaword	.LFE373
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x14af
	.uleb128 0x2d
	.string	"mode"
	.byte	0x1
	.uahalf	0x2da
	.uaword	0x2c4
	.uaword	.LLST103
	.uleb128 0x2c
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2da
	.uaword	0x356
	.uaword	.LLST104
	.uleb128 0x2c
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2da
	.uaword	0x356
	.uaword	.LLST105
	.byte	0
	.uleb128 0x29
	.string	"cpy_mode"
	.byte	0x1
	.byte	0x55
	.uaword	0x2c4
	.byte	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uleb128 0x29
	.string	"cpy_pdisplay"
	.byte	0x1
	.byte	0x56
	.uaword	0x356
	.byte	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uleb128 0x29
	.string	"cpy_pdisplaycolor"
	.byte	0x1
	.byte	0x57
	.uaword	0x356
	.byte	0x5
	.byte	0x3
	.uaword	cpy_pdisplaycolor
	.uleb128 0x29
	.string	"YSIZE_cnt"
	.byte	0x1
	.byte	0x59
	.uaword	0x141
	.byte	0x5
	.byte	0x3
	.uaword	YSIZE_cnt
	.uleb128 0x3c
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x7b
	.uaword	0x141
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0xe4
	.uaword	0x1543
	.uleb128 0x3d
	.uaword	0xac
	.uahalf	0xbff
	.byte	0
	.uleb128 0x3c
	.string	"__font_bitmap__8_12"
	.byte	0x8
	.byte	0xe
	.uaword	0x1560
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.uaword	0x1532
	.uleb128 0xb
	.uaword	0x10f
	.uaword	0x1570
	.uleb128 0x3e
	.byte	0
	.uleb128 0x3c
	.string	"Row_Buff"
	.byte	0x9
	.byte	0x17
	.uaword	0x1565
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.string	"conio_driver"
	.byte	0x6
	.byte	0xc9
	.uaword	0x678
	.byte	0x1
	.byte	0x1
	.uleb128 0x3f
	.string	"colortable_graphics"
	.byte	0x1
	.byte	0x3f
	.uaword	0x3aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	colortable_graphics
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uaword	.LVL8-1
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL18
	.uaword	.LFE372
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_pdisplay
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL8-1
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uaword	.LVL9
	.uaword	.LVL16-1
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uaword	.LVL17
	.uaword	.LFE372
	.uahalf	0x5
	.byte	0x3
	.uaword	cpy_mode
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
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
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x3
	.uaword	cpy_pdisplay
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x3
	.uaword	cpy_pdisplay
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x37
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x37
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x3
	.uaword	cpy_pdisplay
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x32
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x32
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x3
	.uaword	cpy_pdisplay
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x1a
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x34
	.byte	0x1a
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x3
	.uaword	cpy_pdisplay
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x38
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x38
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x12
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x3
	.uaword	cpy_pdisplay
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x40
	.byte	0x1a
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x40
	.byte	0x1a
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x13
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x3
	.uaword	cpy_pdisplay
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0xa
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x13
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x3
	.uaword	cpy_pdisplay
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x40
	.byte	0x1a
	.byte	0x36
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LFE372
	.uahalf	0xa
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x40
	.byte	0x1a
	.byte	0x36
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL62-1
	.uaword	.LFE349
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL63
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL64-1
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL63
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL64-1
	.uaword	.LFE350
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67-1
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL66
	.uaword	.LVL67-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL67-1
	.uaword	.LFE351
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL69
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70-1
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL69
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL70-1
	.uaword	.LFE352
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL72
	.uaword	.LVL73-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL73-1
	.uaword	.LFE353
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL72
	.uaword	.LVL73-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL73-1
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL72
	.uaword	.LVL73-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL73-1
	.uaword	.LFE353
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL76-1
	.uaword	.LFE354
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL76-1
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL86
	.uaword	.LFE354
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LFB355
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE355
	.uahalf	0x3
	.byte	0x8a
	.sleb128 80
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL87
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL90-1
	.uaword	.LFE355
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL87
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL90-1
	.uaword	.LFE355
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL87
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL90-1
	.uaword	.LFE355
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL89
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL90
	.uaword	.LVL91-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LFB356
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE356
	.uahalf	0x3
	.byte	0x8a
	.sleb128 80
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL105
	.uaword	.LVL108-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL108-1
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL107
	.uaword	.LVL108-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL122
	.uaword	.LVL123-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL123-1
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL122
	.uaword	.LVL123-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL123-1
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL122
	.uaword	.LVL123-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL123-1
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL122
	.uaword	.LVL123-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL123-1
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL124
	.uaword	.LVL128
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL124
	.uaword	.LVL127
	.uahalf	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL139
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL146
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL149
	.uaword	.LVL151
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL146
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL149
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL146
	.uaword	.LVL154
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL155
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL158
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL163
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL166
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL172
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL220
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL172
	.uaword	.LVL182
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL188
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL209
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL234
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL172
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL199
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL220
	.uaword	.LVL224
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL229
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL237
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL172
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL179
	.uaword	.LVL182
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL192
	.uaword	.LVL194
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL179
	.uaword	.LVL182
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL185
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL174
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL188
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL209
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL234
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL178
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL224
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL179
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL224
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL222
	.uaword	.LVL224
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL176
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL220
	.uaword	.LVL222
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL181
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL188
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL199
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL209
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL224
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL229
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL234
	.uaword	.LVL237
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL237
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL180
	.uaword	.LVL182
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL186
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL193
	.uaword	.LVL194
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL195
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL216
	.uaword	.LVL217
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL219
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL188
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL190
	.uaword	.LVL194
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL196
	.uaword	.LVL199
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL209
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL212
	.uaword	.LVL220
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL224
	.uaword	.LVL229
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL234
	.uaword	.LVL236
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL217
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL219
	.uaword	.LVL220
	.uahalf	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL227
	.uaword	.LVL228
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL182
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL199
	.uaword	.LVL209
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL229
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL237
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL183
	.uaword	.LVL188
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL199
	.uaword	.LVL202
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL202
	.uaword	.LVL209
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL229
	.uaword	.LVL234
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL237
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL239
	.uaword	.LFE368
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL200
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0xa
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.uahalf	0x140
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL230
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL242
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL245
	.uaword	.LVL247
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL242
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL245
	.uaword	.LVL246
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL242
	.uaword	.LVL250
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL251
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL254
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL259
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL262
	.uaword	.LVL264
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL265
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL248
	.uaword	.LVL249
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL251
	.uaword	.LVL252
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL259
	.uaword	.LVL260
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL262
	.uaword	.LVL263
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL265
	.uaword	.LVL266
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LFB370
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE370
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL268
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL268
	.uaword	.LVL270
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL270
	.uaword	.LVL272
	.uahalf	0x3
	.byte	0x76
	.sleb128 -12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL268
	.uaword	.LVL269
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL268
	.uaword	.LVL272
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL277
	.uaword	.LVL278
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL272
	.uaword	.LVL273
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL268
	.uaword	.LVL269
	.uahalf	0x7
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL272
	.uaword	.LVL273
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL276
	.uaword	.LVL278
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL278
	.uaword	.LVL280
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL281
	.uaword	.LVL285
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL295
	.uaword	.LVL297
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL299
	.uaword	.LVL303
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL305
	.uaword	.LVL307
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL279
	.uaword	.LVL280
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL282
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL284
	.uaword	.LVL285
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL299
	.uaword	.LVL300
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL301
	.uaword	.LVL302
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL305
	.uaword	.LVL306
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL285
	.uaword	.LVL291
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL292
	.uaword	.LVL295
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL297
	.uaword	.LVL299
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL303
	.uaword	.LVL305
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	.LVL307
	.uaword	.LFE370
	.uahalf	0x2
	.byte	0x85
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL286
	.uaword	.LVL287
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL290
	.uaword	.LVL291
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL293
	.uaword	.LVL294
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL297
	.uaword	.LVL298
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL303
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL307
	.uaword	.LVL308
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LFB364
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE364
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL309
	.uaword	.LVL310
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL310
	.uaword	.LFE364
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL309
	.uaword	.LVL311
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL312
	.uaword	.LVL313
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL314
	.uaword	.LFE364
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LFB366
	.uaword	.LCFI4
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI4
	.uaword	.LFE366
	.uahalf	0x3
	.byte	0x8a
	.sleb128 80
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL315
	.uaword	.LVL318-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL318-1
	.uaword	.LFE366
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL315
	.uaword	.LVL317
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL317
	.uaword	.LVL318-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL318
	.uaword	.LVL319-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LFB365
	.uaword	.LCFI5
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI5
	.uaword	.LFE365
	.uahalf	0x3
	.byte	0x8a
	.sleb128 80
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL320
	.uaword	.LVL323-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL323-1
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL320
	.uaword	.LVL323-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL323-1
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL320
	.uaword	.LVL323-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL323-1
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL320
	.uaword	.LVL322
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL322
	.uaword	.LVL323-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL323
	.uaword	.LVL325
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL324
	.uaword	.LVL326
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL327
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL324
	.uaword	.LVL326
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL327
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL324
	.uaword	.LVL326
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL327
	.uaword	.LFE365
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL328
	.uaword	.LVL331-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL328
	.uaword	.LVL330-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL328
	.uaword	.LVL329-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xd4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
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
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	0
	.uaword	0
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB42
	.uaword	.LBE42
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	0
	.uaword	0
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB101
	.uaword	.LBE101
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	0
	.uaword	0
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	0
	.uaword	0
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	0
	.uaword	0
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	0
	.uaword	0
	.uaword	.LBB115
	.uaword	.LBE115
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	.LBB149
	.uaword	.LBE149
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	.LBB154
	.uaword	.LBE154
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	.LBB173
	.uaword	.LBE173
	.uaword	0
	.uaword	0
	.uaword	.LBB116
	.uaword	.LBE116
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	.LBB119
	.uaword	.LBE119
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	.LBB121
	.uaword	.LBE121
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB125
	.uaword	.LBE125
	.uaword	.LBB126
	.uaword	.LBE126
	.uaword	.LBB127
	.uaword	.LBE127
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	0
	.uaword	0
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	.LBB153
	.uaword	.LBE153
	.uaword	.LBB155
	.uaword	.LBE155
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	.LBB160
	.uaword	.LBE160
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB168
	.uaword	.LBE168
	.uaword	.LBB170
	.uaword	.LBE170
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	.LBB174
	.uaword	.LBE174
	.uaword	0
	.uaword	0
	.uaword	.LBB133
	.uaword	.LBE133
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	.LBB137
	.uaword	.LBE137
	.uaword	.LBB138
	.uaword	.LBE138
	.uaword	.LBB139
	.uaword	.LBE139
	.uaword	.LBB140
	.uaword	.LBE140
	.uaword	.LBB141
	.uaword	.LBE141
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	.LBB143
	.uaword	.LBE143
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB145
	.uaword	.LBE145
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	.LBB147
	.uaword	.LBE147
	.uaword	0
	.uaword	0
	.uaword	.LBB175
	.uaword	.LBE175
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	0
	.uaword	0
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	.LBB189
	.uaword	.LBE189
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	0
	.uaword	0
	.uaword	.LFB372
	.uaword	.LFE372
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
	.uaword	.LFB367
	.uaword	.LFE367
	.uaword	.LFB368
	.uaword	.LFE368
	.uaword	.LFB369
	.uaword	.LFE369
	.uaword	.LFB370
	.uaword	.LFE370
	.uaword	.LFB364
	.uaword	.LFE364
	.uaword	.LFB366
	.uaword	.LFE366
	.uaword	.LFB365
	.uaword	.LFE365
	.uaword	.LFB373
	.uaword	.LFE373
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
.LASF7:
	.string	"video_data"
.LASF0:
	.string	"pdisplay"
.LASF3:
	.string	"displaymode"
.LASF6:
	.string	"buffer"
	.extern	__font_bitmap__8_12,STT_OBJECT,3072
	.extern	conio_driver,STT_OBJECT,276
	.extern	vsprintf,STT_FUNC,0
	.extern	strlen,STT_FUNC,0
	.extern	PUT_FIFO_DISPLAY,STT_FUNC,0
	.extern	FIFO_DISPLAY_FREE,STT_FUNC,0
	.extern	tft_flush_row_buff,STT_FUNC,0
	.extern	Row_Buff,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
