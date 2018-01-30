	.file	"keyboard.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.keyboard_input,"ax",@progbits
	.align 1
	.global	keyboard_input
	.type	keyboard_input, @function
keyboard_input:
.LFB350:
	.file 1 "0_Src/0_AppSw/Tricore/TftApp/keyboard.c"
	.loc 1 152 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE5:
.LBE4:
	.loc 1 155 0
	mov	%d2, 0
	ret
.LFE350:
	.size	keyboard_input, .-keyboard_input
.section .text.keyboard_display_descr,"ax",@progbits
	.align 1
	.global	keyboard_display_descr
	.type	keyboard_display_descr, @function
keyboard_display_descr:
.LFB356:
	.loc 1 263 0
.LVL1:
	.loc 1 264 0
	movh.a	%a12, hi:conio_driver
	lea	%a12, [%a12] lo:conio_driver
	ld.bu	%d5, [%a4]0
	ld.w	%d4, [%a12] 216
.LVL2:
	.loc 1 263 0
	mov.aa	%a15, %a4
	.loc 1 264 0
	call	conio_ascii_textattr
.LVL3:
	.loc 1 265 0
	ld.w	%d4, [%a12] 216
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	call	conio_ascii_gotoxy
	.loc 1 266 0
	ld.w	%d4, [%a12] 216
	lea	%a4, [%a12] 224
	j	conio_ascii_cputs
.LFE356:
	.size	keyboard_display_descr, .-keyboard_display_descr
.section .text.keyboard_display,"ax",@progbits
	.align 1
	.global	keyboard_display
	.type	keyboard_display, @function
keyboard_display:
.LFB349:
	.loc 1 142 0
.LVL4:
	.loc 1 144 0
	movh	%d15, hi:keyboardlist
	addi	%d15, %d15, lo:keyboardlist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL5:
	ld.b	%d8, [%a15] 3
	jlt	%d8, %d15, .L3
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15]0
	movh.a	%a15, hi:conio_driver
	.loc 1 141 0
	add	%d15, 1
.LVL6:
	lea	%a15, [%a15] lo:conio_driver
	j	.L5
.LVL7:
.L6:
	.loc 1 144 0
	mov	%d15, %d2
.LVL8:
.L5:
	.loc 1 146 0 discriminator 2
	ld.w	%d4, [%a15] 216
	add	%d5, %d15, -1
	mov	%d6, %d9
	call	conio_ascii_gotoxy
	.loc 1 147 0 discriminator 2
	ld.w	%d4, [%a15] 216
	mov	%d5, %d10
	call	conio_ascii_textchangecolor
.LVL9:
	add	%d2, %d15, 1
	.loc 1 144 0 discriminator 2
	jge	%d8, %d15, .L6
.LVL10:
.L3:
	ret
.LFE349:
	.size	keyboard_display, .-keyboard_display
.section .text.keyboard_display_text,"ax",@progbits
	.align 1
	.global	keyboard_display_text
	.type	keyboard_display_text, @function
keyboard_display_text:
.LFB357:
	.loc 1 270 0
.LVL11:
	.loc 1 271 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	ld.bu	%d5, [%a4]0
	ld.w	%d4, [%a15] 216
.LVL12:
	.loc 1 270 0
	mov.aa	%a12, %a4
	.loc 1 271 0
	call	conio_ascii_textattr
.LVL13:
	.loc 1 272 0
	ld.b	%d5, [%a12] 2
	ld.b	%d6, [%a12] 4
	ld.w	%d4, [%a15] 216
	call	conio_ascii_gotoxy
	.loc 1 273 0
	ld.w	%d4, [%a15] 216
	lea	%a4, [%a15] 244
	call	conio_ascii_cputs
	.loc 1 274 0
	ld.b	%d5, [%a15] 272
	ld.b	%d15, [%a12] 2
	ld.w	%d4, [%a15] 216
	ld.b	%d6, [%a12] 4
	add	%d5, %d15
	call	conio_ascii_gotoxy
	.loc 1 275 0
	ld.bu	%d15, [%a15] 273
	jz.t	%d15, 0, .L10
	ret
.L10:
.LVL14:
.LBB8:
.LBB9:
	.loc 1 276 0
	ld.w	%d4, [%a15] 216
	ld.bu	%d5, [%a12] 1
	j	conio_ascii_textchangecolor
.LBE9:
.LBE8:
.LFE357:
	.size	keyboard_display_text, .-keyboard_display_text
.section .text.keyboard_select_right,"ax",@progbits
	.align 1
	.global	keyboard_select_right
	.type	keyboard_select_right, @function
keyboard_select_right:
.LFB355:
	.loc 1 247 0
.LVL15:
	.loc 1 249 0
	ld.b	%d15, [%a4] 2
.LVL16:
	ld.b	%d2, [%a4] 3
	.loc 1 247 0
	mov.aa	%a15, %a4
	.loc 1 249 0
	jlt.u	%d2, %d15, .L12
	movh.a	%a12, hi:conio_driver
	lea	%a12, [%a12] lo:conio_driver
.LVL17:
.L13:
	.loc 1 251 0 discriminator 2
	ld.w	%d4, [%a12] 216
	ld.b	%d6, [%a15] 4
	mov	%d5, %d15
	call	conio_ascii_gotoxy
	.loc 1 252 0 discriminator 2
	ld.w	%d4, [%a12] 216
	ld.bu	%d5, [%a15] 1
	.loc 1 249 0 discriminator 2
	add	%d15, 1
.LVL18:
	.loc 1 252 0 discriminator 2
	call	conio_ascii_textchangecolor
.LVL19:
	.loc 1 249 0 discriminator 2
	ld.b	%d2, [%a15] 3
	jge.u	%d2, %d15, .L13
.L12:
	.loc 1 254 0
	movh.a	%a15, hi:touch_driver
.LVL20:
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL21:
	jz.t	%d15, 3, .L11
	.loc 1 256 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 257 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	ld.b	%d15, [%a15] 272
	ge	%d2, %d15, 19
	jnz	%d2, .L11
.LBB12:
.LBB13:
	.loc 1 258 0
	add	%d15, 1
	st.b	[%a15] 272, %d15
.L11:
	ret
.LBE13:
.LBE12:
.LFE355:
	.size	keyboard_select_right, .-keyboard_select_right
.section .text.keyboard_select_left,"ax",@progbits
	.align 1
	.global	keyboard_select_left
	.type	keyboard_select_left, @function
keyboard_select_left:
.LFB354:
	.loc 1 231 0
.LVL22:
	.loc 1 233 0
	ld.b	%d15, [%a4] 2
.LVL23:
	ld.b	%d2, [%a4] 3
	.loc 1 231 0
	mov.aa	%a15, %a4
	.loc 1 233 0
	jlt.u	%d2, %d15, .L17
	movh.a	%a12, hi:conio_driver
	lea	%a12, [%a12] lo:conio_driver
.LVL24:
.L18:
	.loc 1 235 0 discriminator 2
	ld.w	%d4, [%a12] 216
	ld.b	%d6, [%a15] 4
	mov	%d5, %d15
	call	conio_ascii_gotoxy
	.loc 1 236 0 discriminator 2
	ld.w	%d4, [%a12] 216
	ld.bu	%d5, [%a15] 1
	.loc 1 233 0 discriminator 2
	add	%d15, 1
.LVL25:
	.loc 1 236 0 discriminator 2
	call	conio_ascii_textchangecolor
.LVL26:
	.loc 1 233 0 discriminator 2
	ld.b	%d2, [%a15] 3
	jge.u	%d2, %d15, .L18
.L17:
	.loc 1 238 0
	movh.a	%a15, hi:touch_driver
.LVL27:
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL28:
	jz.t	%d15, 3, .L16
	.loc 1 240 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 241 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	ld.b	%d15, [%a15] 272
	jlez	%d15, .L16
.LBB16:
.LBB17:
	.loc 1 242 0
	add	%d15, -1
	st.b	[%a15] 272, %d15
.L16:
	ret
.LBE17:
.LBE16:
.LFE354:
	.size	keyboard_select_left, .-keyboard_select_left
.section .text.keyboard_select_enter,"ax",@progbits
	.align 1
	.global	keyboard_select_enter
	.type	keyboard_select_enter, @function
keyboard_select_enter:
.LFB352:
	.loc 1 189 0
.LVL29:
	.loc 1 191 0
	movh	%d15, hi:keyboardlist
	addi	%d15, %d15, lo:keyboardlist
	madd	%d2, %d15, %d4, 64
	.loc 1 189 0
	mov.aa	%a12, %a4
	.loc 1 191 0
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL30:
	ld.b	%d8, [%a15] 3
	jlt.u	%d8, %d15, .L22
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
.LVL31:
.L23:
	.loc 1 193 0 discriminator 2
	ld.w	%d4, [%a15] 216
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
	.loc 1 194 0 discriminator 2
	ld.w	%d4, [%a15] 216
	mov	%d5, %d10
	.loc 1 191 0 discriminator 2
	add	%d15, 1
.LVL32:
	.loc 1 194 0 discriminator 2
	call	conio_ascii_textchangecolor
.LVL33:
	.loc 1 191 0 discriminator 2
	jge.u	%d8, %d15, .L23
.L22:
	.loc 1 196 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL34:
	jnz.t	%d15, 3, .L26
.L21:
	ret
.L26:
.LVL35:
.LBB20:
.LBB21:
	.loc 1 198 0
	andn	%d15, %d15, ~(-9)
	.loc 1 199 0
	mov.aa	%a4, %a12
	.loc 1 198 0
	st.w	[%a15] 64, %d15
	.loc 1 199 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	ld.a	%a2, [%a15] 264
	ld.w	%d4, [%a15] 268
	calli	%a2
	jnz	%d2, .L21
	.loc 1 201 0
	st.w	[%a15] 220, %d2
	ret
.LBE21:
.LBE20:
.LFE352:
	.size	keyboard_select_enter, .-keyboard_select_enter
.section .text.keyboard_select_back,"ax",@progbits
	.align 1
	.global	keyboard_select_back
	.type	keyboard_select_back, @function
keyboard_select_back:
.LFB353:
	.loc 1 208 0
.LVL36:
	.loc 1 210 0
	movh	%d15, hi:keyboardlist
	addi	%d15, %d15, lo:keyboardlist
	madd	%d2, %d15, %d4, 64
	mov.a	%a15, %d2
	ld.b	%d15, [%a15] 2
.LVL37:
	ld.b	%d8, [%a15] 3
	jlt.u	%d8, %d15, .L28
	movh.a	%a12, hi:conio_driver
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	lea	%a12, [%a12] lo:conio_driver
.LVL38:
.L29:
	.loc 1 212 0 discriminator 2
	ld.w	%d4, [%a12] 216
	mov	%d5, %d15
	mov	%d6, %d9
	call	conio_ascii_gotoxy
	.loc 1 213 0 discriminator 2
	ld.w	%d4, [%a12] 216
	mov	%d5, %d10
	.loc 1 210 0 discriminator 2
	add	%d15, 1
.LVL39:
	.loc 1 213 0 discriminator 2
	call	conio_ascii_textchangecolor
.LVL40:
	.loc 1 210 0 discriminator 2
	jge.u	%d8, %d15, .L29
.L28:
	.loc 1 215 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
.LVL41:
	jz.t	%d15, 3, .L27
	.loc 1 217 0
	andn	%d15, %d15, ~(-9)
	.loc 1 218 0
	movh.a	%a12, hi:conio_driver
	lea	%a12, [%a12] lo:conio_driver
	.loc 1 217 0
	st.w	[%a15] 64, %d15
	.loc 1 218 0
	ld.b	%d15, [%a12] 272
	jlez	%d15, .L27
.LBB24:
.LBB25:
	.loc 1 220 0
	lea	%a4, [%a12] 244
	call	strlen
.LVL42:
	.loc 1 221 0
	add	%d3, %d15, -1
.LVL43:
	jge.u	%d3, %d2, .L31
	.loc 1 207 0
	addi	%d4, %d15, 243
	addsc.a	%a15, %a12, %d4, 0
	mov.d	%d5, %a12
	rsub	%d4, %d5, -244
	not	%d4
	mov.d	%d5, %a15
	sub	%d4, %d5
	add	%d4, %d2
	ge.u	%d2, %d2, %d15
.LVL44:
	seln	%d2, %d2, %d2, %d4
	mov.a	%a2, %d2
.LVL45:
.L32:
	.loc 1 223 0
	ld.bu	%d15, [%a15] 1
	st.b	[%a15+]1, %d15
	.loc 1 221 0
	loop	%a2, .L32
.L31:
	.loc 1 225 0
	st.b	[%a12] 272, %d3
.L27:
	ret
.LBE25:
.LBE24:
.LFE353:
	.size	keyboard_select_back, .-keyboard_select_back
.section .text.keyboard_select,"ax",@progbits
	.align 1
	.global	keyboard_select
	.type	keyboard_select, @function
keyboard_select:
.LFB351:
	.loc 1 158 0
.LVL46:
	.loc 1 160 0
	movh.a	%a12, hi:keyboardlist
	lea	%a12, [%a12] lo:keyboardlist
	sh	%d11, %d4, 6
	addsc.a	%a15, %a12, %d11, 0
	ld.b	%d15, [%a15] 2
.LVL47:
	ld.b	%d8, [%a15] 3
	jlt	%d8, %d15, .L37
	ld.b	%d9, [%a15] 4
	ld.bu	%d10, [%a15] 1
	movh.a	%a15, hi:conio_driver
	.loc 1 157 0
	add	%d15, 1
.LVL48:
	lea	%a15, [%a15] lo:conio_driver
	j	.L38
.LVL49:
.L43:
	.loc 1 160 0
	mov	%d15, %d2
.LVL50:
.L38:
	.loc 1 162 0 discriminator 2
	ld.w	%d4, [%a15] 216
	add	%d5, %d15, -1
	mov	%d6, %d9
	call	conio_ascii_gotoxy
	.loc 1 163 0 discriminator 2
	ld.w	%d4, [%a15] 216
	mov	%d5, %d10
	call	conio_ascii_textchangecolor
.LVL51:
	add	%d2, %d15, 1
	.loc 1 160 0 discriminator 2
	jge	%d8, %d15, .L43
.LVL52:
.L37:
	.loc 1 165 0
	movh.a	%a15, hi:touch_driver
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L36
	.loc 1 167 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 168 0
	addsc.a	%a15, %a12, %d11, 0
	ld.bu	%d9, [%a15] 60
	jz	%d9, .L36
	.loc 1 170 0
	movh.a	%a15, hi:conio_driver
	lea	%a15, [%a15] lo:conio_driver
	ld.b	%d8, [%a15] 272
	ge	%d15, %d8, 18
	jnz	%d15, .L36
.LBB28:
.LBB29:
	.loc 1 172 0
	lea	%a12, [%a15] 244
	mov.aa	%a4, %a12
	call	strlen
.LVL53:
	.loc 1 173 0
	lt	%d15, %d2, 18
	jz	%d15, .L41
	.loc 1 175 0
	jlt	%d2, %d8, .L41
	.loc 1 157 0
	addi	%d2, %d2, 245
.LVL54:
	addsc.a	%a3, %a15, %d2, 0
	addsc.a	%a12, %a12, %d8, 0
	sub.a	%a12, %a12, %a3
	mov.d	%d15, %a12
	not	%d15
	mov.a	%a2, %d15
.LVL55:
.L42:
	.loc 1 177 0
	ld.bu	%d15, [+%a3]-1
	st.b	[%a3] 1, %d15
	loop	%a2, .L42
.L41:
	.loc 1 181 0
	addsc.a	%a2, %a15, %d8, 0
	.loc 1 182 0
	add	%d8, 1
	.loc 1 181 0
	st.b	[%a2] 244, %d9
	.loc 1 182 0
	st.b	[%a15] 272, %d8
.L36:
	ret
.LBE29:
.LBE28:
.LFE351:
	.size	keyboard_select, .-keyboard_select
.section .text.keyboard,"ax",@progbits
	.align 1
	.global	keyboard
	.type	keyboard, @function
keyboard:
.LFB358:
	.loc 1 281 0
.LVL56:
	.loc 1 281 0
	mov	%d8, %d4
	.loc 1 286 0
	jlt	%d5, 7, .L60
	.loc 1 288 0
	lt	%d2, %d5, 18
	sel	%d11, %d2, %d5, 17
	mov	%d10, %d11
.LVL57:
.L47:
	.loc 1 291 0
	mov	%e4, 1
.LVL58:
	call	conio_ascii_textcolor
	.loc 1 292 0
	mov	%d4, 1
	mov	%d5, 7
	.loc 1 294 0
	movh.a	%a15, hi:conio_driver
	.loc 1 292 0
	call	conio_ascii_textbackground
	.loc 1 294 0
	lea	%a15, [%a15] lo:conio_driver
	ld.w	%d4, [%a15] 216
	mov	%d5, 0
	mov	%d6, 6
	call	conio_ascii_gotoxy
.LVL59:
	movh.a	%a14, hi:keyboard_outline
	.loc 1 295 0
	mov	%d9, 0
	lea	%a14, [%a14] lo:keyboard_outline
.LVL60:
.L48:
	.loc 1 280 0 discriminator 1
	sh	%d15, %d9, 2
	add	%d15, %d9
	addsc.a	%a12, %a14, %d15, 3
	mov	%d15, 0
.LVL61:
.L49:
	.loc 1 298 0 discriminator 2
	ld.w	%d4, [%a15] 216
	ld.bu	%d5, [%a12+]1
	.loc 1 296 0 discriminator 2
	add	%d15, 1
	.loc 1 298 0 discriminator 2
	call	conio_ascii_putch
.LVL62:
	.loc 1 296 0 discriminator 2
	ne	%d2, %d15, 40
	.loc 1 298 0 discriminator 2
	mov.aa	%a13, %a15
	.loc 1 296 0 discriminator 2
	jnz	%d2, .L49
	.loc 1 295 0
	add	%d9, 1
.LVL63:
	eq	%d15, %d9, 13
.LVL64:
	jz	%d15, .L48
	.loc 1 300 0
	ld.w	%d4, [%a15] 216
	mov	%d5, 1
	mov	%d6, 7
	call	conio_ascii_gotoxy
.LVL65:
	lea	%a12, [%a15] 224
	.loc 1 280 0
	lea	%a14, [%a15] 242
	.loc 1 301 0
	mov	%d9, 0
.LVL66:
.L53:
	.loc 1 304 0
	ld.bu	%d15, [%a12+]1
	.loc 1 307 0
	ld.w	%d4, [%a15] 216
	.loc 1 304 0
	jz	%d15, .L51
.LVL67:
	.loc 1 306 0
	jnz	%d9, .L51
	.loc 1 307 0
	ld.bu	%d5, [%a15] 224
	call	conio_ascii_putch
	.loc 1 302 0
	jne.a	%a12, %a14, .L53
.L67:
	.loc 1 311 0
	ld.w	%d4, [%a15] 216
	mov	%d5, 21
	mov	%d6, 7
	call	conio_ascii_gotoxy
.LVL68:
	lea	%a12, [%a15] 244
	.loc 1 280 0
	lea	%a13, [%a13] 262
	.loc 1 312 0
	mov	%d9, 0
.LVL69:
.L56:
	.loc 1 315 0
	ld.bu	%d15, [%a12+]1
	.loc 1 318 0
	ld.w	%d4, [%a15] 216
	.loc 1 315 0
	jz	%d15, .L54
.LVL70:
	.loc 1 317 0
	jnz	%d9, .L54
	.loc 1 318 0
	ld.bu	%d5, [%a15] 244
	call	conio_ascii_putch
	.loc 1 313 0
	jne.a	%a12, %a13, .L56
.L68:
	.loc 1 322 0
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d11
	call	conio_ascii_gotoxy
	.loc 1 323 0
	movh.a	%a15, hi:keyboardlist+2
	mov	%d4, 1
	mov	%d5, 2
	lea	%a15, [%a15] lo:keyboardlist+2
	call	conio_ascii_textchangebackground
.LVL71:
	.loc 1 324 0
	mov	%d15, 0
	lea	%a12, [%a15] -2
	j	.L59
.LVL72:
.L57:
	.loc 1 332 0
	sh	%d2, %d15, 6
	ld.a	%a2, [%a15] 10
	addsc.a	%a4, %a12, %d2, 0
	mov	%d4, %d15
	calli	%a2
	.loc 1 324 0
	add	%d15, 1
.LVL73:
	ne	%d2, %d15, 61
	lea	%a15, [%a15] 64
	jz	%d2, .L66
.LVL74:
.L59:
	.loc 1 326 0
	ld.b	%d2, [%a15]0
	jlt	%d8, %d2, .L57
	.loc 1 326 0 is_stmt 0 discriminator 1
	ld.b	%d2, [%a15] 1
	jlt	%d2, %d8, .L57
	ld.b	%d2, [%a15] 2
	jne	%d2, %d10, .L57
	.loc 1 328 0 is_stmt 1
	sh	%d2, %d15, 6
	ld.a	%a2, [%a15] 6
	addsc.a	%a4, %a12, %d2, 0
	mov	%d4, %d15
	calli	%a2
	.loc 1 324 0
	add	%d15, 1
.LVL75:
	ne	%d2, %d15, 61
	lea	%a15, [%a15] 64
	jnz	%d2, .L59
.L66:
	.loc 1 335 0
	ret
.LVL76:
.L51:
	.loc 1 309 0
	mov	%d5, 32
	call	conio_ascii_putch
	mov	%d9, 1
.LVL77:
	.loc 1 302 0
	jne.a	%a12, %a14, .L53
	j	.L67
.LVL78:
.L54:
	.loc 1 320 0
	mov	%d5, 32
	call	conio_ascii_putch
	mov	%d9, 1
.LVL79:
	.loc 1 313 0
	jne.a	%a12, %a13, .L56
	j	.L68
.LVL80:
.L60:
	.loc 1 286 0
	mov	%d11, 7
	.loc 1 287 0
	mov	%d10, 7
	j	.L47
.LFE358:
	.size	keyboard, .-keyboard
	.global	keyboardlist
.section .rodata.keyboardlist,"a",@progbits
	.align 2
	.type	keyboardlist, @object
	.size	keyboardlist, 3904
keyboardlist:
	.byte	112
	.byte	12
	.byte	1
	.byte	19
	.byte	7
	.zero	3
	.word	keyboard_display_descr
	.word	keyboard_display_descr
	.word	keyboard_input
	.string	"DESCR"
	.zero	34
	.byte	0
	.zero	3
	.byte	112
	.byte	7
	.byte	21
	.byte	39
	.byte	7
	.zero	3
	.word	keyboard_display_text
	.word	keyboard_display_text
	.word	keyboard_input
	.string	"TEXT"
	.zero	35
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	2
	.byte	2
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"^"
	.zero	38
	.byte	94
	.zero	3
	.byte	112
	.byte	12
	.byte	4
	.byte	4
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"1"
	.zero	38
	.byte	49
	.zero	3
	.byte	112
	.byte	12
	.byte	6
	.byte	6
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"2"
	.zero	38
	.byte	50
	.zero	3
	.byte	112
	.byte	12
	.byte	8
	.byte	8
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"3"
	.zero	38
	.byte	51
	.zero	3
	.byte	112
	.byte	12
	.byte	10
	.byte	10
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"4"
	.zero	38
	.byte	52
	.zero	3
	.byte	112
	.byte	12
	.byte	12
	.byte	12
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"5"
	.zero	38
	.byte	53
	.zero	3
	.byte	112
	.byte	12
	.byte	14
	.byte	14
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"6"
	.zero	38
	.byte	54
	.zero	3
	.byte	112
	.byte	12
	.byte	16
	.byte	16
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"7"
	.zero	38
	.byte	55
	.zero	3
	.byte	112
	.byte	12
	.byte	18
	.byte	18
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"8"
	.zero	38
	.byte	56
	.zero	3
	.byte	112
	.byte	12
	.byte	20
	.byte	20
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"9"
	.zero	38
	.byte	57
	.zero	3
	.byte	112
	.byte	12
	.byte	22
	.byte	22
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"0"
	.zero	38
	.byte	48
	.zero	3
	.byte	112
	.byte	12
	.byte	24
	.byte	24
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	""
	.string	""
	.zero	38
	.byte	64
	.zero	3
	.byte	112
	.byte	12
	.byte	26
	.byte	26
	.byte	9
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	""
	.string	""
	.zero	38
	.byte	64
	.zero	3
	.byte	112
	.byte	12
	.byte	28
	.byte	31
	.byte	9
	.zero	3
	.word	keyboard_select_back
	.word	keyboard_display
	.word	keyboard_input
	.string	"BACK"
	.zero	35
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	33
	.byte	33
	.byte	9
	.zero	3
	.word	keyboard_select_left
	.word	keyboard_display
	.word	keyboard_input
	.string	"LEFT"
	.zero	35
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	35
	.byte	35
	.byte	9
	.zero	3
	.word	keyboard_select_right
	.word	keyboard_display
	.word	keyboard_input
	.string	"RIGHT"
	.zero	34
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	1
	.byte	3
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"TAB"
	.zero	36
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	5
	.byte	5
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"Q"
	.zero	38
	.byte	81
	.zero	3
	.byte	112
	.byte	12
	.byte	7
	.byte	7
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"W"
	.zero	38
	.byte	87
	.zero	3
	.byte	112
	.byte	12
	.byte	9
	.byte	9
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"E"
	.zero	38
	.byte	69
	.zero	3
	.byte	112
	.byte	12
	.byte	11
	.byte	11
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"R"
	.zero	38
	.byte	82
	.zero	3
	.byte	112
	.byte	12
	.byte	13
	.byte	13
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"T"
	.zero	38
	.byte	84
	.zero	3
	.byte	112
	.byte	12
	.byte	15
	.byte	15
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"Z"
	.zero	38
	.byte	90
	.zero	3
	.byte	112
	.byte	12
	.byte	17
	.byte	17
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"U"
	.zero	38
	.byte	85
	.zero	3
	.byte	112
	.byte	12
	.byte	19
	.byte	19
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"I"
	.zero	38
	.byte	73
	.zero	3
	.byte	112
	.byte	12
	.byte	21
	.byte	21
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"O"
	.zero	38
	.byte	79
	.zero	3
	.byte	112
	.byte	12
	.byte	23
	.byte	23
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"P"
	.zero	38
	.byte	80
	.zero	3
	.byte	112
	.byte	12
	.byte	25
	.byte	25
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	" "
	.zero	38
	.byte	32
	.zero	3
	.byte	112
	.byte	12
	.byte	27
	.byte	27
	.byte	11
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"+"
	.zero	38
	.byte	43
	.zero	3
	.byte	112
	.byte	12
	.byte	29
	.byte	31
	.byte	11
	.zero	3
	.word	keyboard_select_enter
	.word	keyboard_display
	.word	keyboard_input
	.string	"ENTER"
	.zero	34
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	30
	.byte	31
	.byte	12
	.zero	3
	.word	keyboard_select_enter
	.word	keyboard_display
	.word	keyboard_input
	.string	"ENTER"
	.zero	34
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	1
	.byte	4
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"CAPS"
	.zero	35
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	6
	.byte	6
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"A"
	.zero	38
	.byte	65
	.zero	3
	.byte	112
	.byte	12
	.byte	8
	.byte	8
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"S"
	.zero	38
	.byte	83
	.zero	3
	.byte	112
	.byte	12
	.byte	10
	.byte	10
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"D"
	.zero	38
	.byte	68
	.zero	3
	.byte	112
	.byte	12
	.byte	12
	.byte	12
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"F"
	.zero	38
	.byte	70
	.zero	3
	.byte	112
	.byte	12
	.byte	14
	.byte	14
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"G"
	.zero	38
	.byte	71
	.zero	3
	.byte	112
	.byte	12
	.byte	16
	.byte	16
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"H"
	.zero	38
	.byte	72
	.zero	3
	.byte	112
	.byte	12
	.byte	18
	.byte	18
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"J"
	.zero	38
	.byte	74
	.zero	3
	.byte	112
	.byte	12
	.byte	20
	.byte	20
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"K"
	.zero	38
	.byte	75
	.zero	3
	.byte	112
	.byte	12
	.byte	22
	.byte	22
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"L"
	.zero	38
	.byte	76
	.zero	3
	.byte	112
	.byte	12
	.byte	24
	.byte	24
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	" "
	.zero	38
	.byte	32
	.zero	3
	.byte	112
	.byte	12
	.byte	26
	.byte	26
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	" "
	.zero	38
	.byte	32
	.zero	3
	.byte	112
	.byte	12
	.byte	28
	.byte	28
	.byte	13
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"#"
	.zero	38
	.byte	35
	.zero	3
	.byte	112
	.byte	12
	.byte	30
	.byte	31
	.byte	13
	.zero	3
	.word	keyboard_select_enter
	.word	keyboard_display
	.word	keyboard_input
	.string	"ENTER"
	.zero	34
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	1
	.byte	3
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"SHI"
	.zero	36
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	5
	.byte	5
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"<"
	.zero	38
	.byte	60
	.zero	3
	.byte	112
	.byte	12
	.byte	7
	.byte	7
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"Y"
	.zero	38
	.byte	89
	.zero	3
	.byte	112
	.byte	12
	.byte	9
	.byte	9
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"X"
	.zero	38
	.byte	88
	.zero	3
	.byte	112
	.byte	12
	.byte	11
	.byte	11
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"C"
	.zero	38
	.byte	67
	.zero	3
	.byte	112
	.byte	12
	.byte	13
	.byte	13
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"V"
	.zero	38
	.byte	86
	.zero	3
	.byte	112
	.byte	12
	.byte	15
	.byte	15
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"B"
	.zero	38
	.byte	66
	.zero	3
	.byte	112
	.byte	12
	.byte	17
	.byte	17
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"N"
	.zero	38
	.byte	78
	.zero	3
	.byte	112
	.byte	12
	.byte	19
	.byte	19
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"M"
	.zero	38
	.byte	77
	.zero	3
	.byte	112
	.byte	12
	.byte	21
	.byte	21
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	","
	.zero	38
	.byte	44
	.zero	3
	.byte	112
	.byte	12
	.byte	23
	.byte	23
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"."
	.zero	38
	.byte	46
	.zero	3
	.byte	112
	.byte	12
	.byte	25
	.byte	25
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"-"
	.zero	38
	.byte	45
	.zero	3
	.byte	112
	.byte	12
	.byte	27
	.byte	31
	.byte	15
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"SHI"
	.zero	36
	.byte	0
	.zero	3
	.byte	112
	.byte	12
	.byte	8
	.byte	22
	.byte	17
	.zero	3
	.word	keyboard_select
	.word	keyboard_display
	.word	keyboard_input
	.string	"SPACE"
	.zero	34
	.byte	32
	.zero	3
	.global	keyboard_outline
.section .rodata.keyboard_outline,"a",@progbits
	.type	keyboard_outline, @object
	.size	keyboard_outline, 520
keyboard_outline:
	.byte	-38
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-65
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-61
	.byte	-60
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-62
	.byte	-60
	.byte	-60
	.byte	-76
	.byte	-77
	.byte	32
	.byte	94
	.byte	-77
	.byte	49
	.byte	-77
	.byte	50
	.byte	-77
	.byte	51
	.byte	-77
	.byte	52
	.byte	-77
	.byte	53
	.byte	-77
	.byte	54
	.byte	-77
	.byte	55
	.byte	-77
	.byte	56
	.byte	-77
	.byte	57
	.byte	-77
	.byte	48
	.byte	-77
	.byte	92
	.byte	-77
	.byte	39
	.byte	-77
	.byte	66
	.byte	65
	.byte	67
	.byte	75
	.byte	-77
	.byte	17
	.byte	-77
	.byte	16
	.byte	-77
	.byte	0
	.byte	0
	.byte	-77
	.byte	-61
	.byte	-60
	.byte	-60
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-59
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-60
	.byte	-76
	.byte	-77
	.byte	84
	.byte	65
	.byte	66
	.byte	-77
	.byte	81
	.byte	-77
	.byte	87
	.byte	-77
	.byte	69
	.byte	-77
	.byte	82
	.byte	-77
	.byte	84
	.byte	-77
	.byte	90
	.byte	-77
	.byte	85
	.byte	-77
	.byte	73
	.byte	-77
	.byte	79
	.byte	-77
	.byte	80
	.byte	-77
	.byte	-102
	.byte	-77
	.byte	43
	.byte	-77
	.byte	27
	.byte	-39
	.byte	0
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-61
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-65
	.byte	0
	.byte	0
	.byte	-61
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-76
	.byte	-77
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	65
	.byte	-77
	.byte	83
	.byte	-77
	.byte	68
	.byte	-77
	.byte	70
	.byte	-77
	.byte	71
	.byte	-77
	.byte	72
	.byte	-77
	.byte	74
	.byte	-77
	.byte	75
	.byte	-77
	.byte	76
	.byte	-77
	.byte	-103
	.byte	-77
	.byte	-114
	.byte	-77
	.byte	35
	.byte	-77
	.byte	0
	.byte	0
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-61
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-60
	.byte	-59
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-76
	.byte	-77
	.byte	24
	.byte	0
	.byte	0
	.byte	-77
	.byte	62
	.byte	-77
	.byte	89
	.byte	-77
	.byte	88
	.byte	-77
	.byte	67
	.byte	-77
	.byte	86
	.byte	-77
	.byte	66
	.byte	-77
	.byte	78
	.byte	-77
	.byte	77
	.byte	-77
	.byte	44
	.byte	-77
	.byte	46
	.byte	-77
	.byte	45
	.byte	-77
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-61
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-62
	.byte	-63
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-76
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-37
	.byte	-77
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-77
	.byte	-64
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-63
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-60
	.byte	-39
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
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
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
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
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
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 4 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 5 "./0_Src/2_CDrv/Tricore/Tft/conio_tft.h"
	.file 6 "./0_Src/2_CDrv/Tricore/Tft/touch.h"
	.file 7 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe1a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/TftApp/keyboard.c"
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
	.uleb128 0x3
	.string	"sint16"
	.byte	0x3
	.byte	0x5a
	.uaword	0x10d
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
	.byte	0x3
	.byte	0x5c
	.uaword	0x9d
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x5d
	.uaword	0xa9
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x5e
	.uaword	0x15b
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
	.uaword	0x1d3
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
	.uaword	0x1b1
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x1e
	.uaword	0x247
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
	.uaword	0x1e6
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.uaword	0x2d0
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
	.uaword	0x25b
	.uleb128 0x6
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x4
	.byte	0x34
	.uaword	0x373
	.uleb128 0x7
	.string	"pdisplay"
	.byte	0x4
	.byte	0x36
	.uaword	0x373
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"pdisplaycolor"
	.byte	0x4
	.byte	0x37
	.uaword	0x373
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"mode"
	.byte	0x4
	.byte	0x38
	.uaword	0x2d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"color"
	.byte	0x4
	.byte	0x39
	.uaword	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"maxx"
	.byte	0x4
	.byte	0x3a
	.uaword	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"maxy"
	.byte	0x4
	.byte	0x3b
	.uaword	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x"
	.byte	0x4
	.byte	0x3c
	.uaword	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x4
	.byte	0x3d
	.uaword	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xe1
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x4
	.byte	0x3e
	.uaword	0x2dd
	.uleb128 0x9
	.uaword	0xe1
	.uaword	0x39e
	.uleb128 0xa
	.uaword	0xa9
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x5
	.byte	0x8b
	.uaword	0x460
	.uleb128 0x7
	.string	"color_display"
	.byte	0x5
	.byte	0x8d
	.uaword	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"color_select"
	.byte	0x5
	.byte	0x8f
	.uaword	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"xmin"
	.byte	0x5
	.byte	0x90
	.uaword	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"xmax"
	.byte	0x5
	.byte	0x91
	.uaword	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"y"
	.byte	0x5
	.byte	0x92
	.uaword	0xc5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"select"
	.byte	0x5
	.byte	0x93
	.uaword	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0x94
	.uaword	0x477
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0x95
	.uaword	0x492
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"text"
	.byte	0x5
	.byte	0x96
	.uaword	0x38e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"symbol"
	.byte	0x5
	.byte	0x97
	.uaword	0xe1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.uaword	0x471
	.uleb128 0xc
	.uaword	0x130
	.uleb128 0xc
	.uaword	0x471
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x39e
	.uleb128 0x8
	.byte	0x4
	.uaword	0x460
	.uleb128 0xd
	.byte	0x1
	.uaword	0x130
	.uaword	0x492
	.uleb128 0xc
	.uaword	0x130
	.uleb128 0xc
	.uaword	0x471
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x47d
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x5
	.byte	0x98
	.uaword	0x39e
	.uleb128 0xe
	.string	"CONIO_DRIVER"
	.uahalf	0x114
	.byte	0x5
	.byte	0x9d
	.uaword	0x5fa
	.uleb128 0x7
	.string	"pmenulist"
	.byte	0x5
	.byte	0x9f
	.uaword	0x5fa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"pstdlist"
	.byte	0x5
	.byte	0xa0
	.uaword	0x5fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"display"
	.byte	0x5
	.byte	0xa1
	.uaword	0x600
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"pdasmirror"
	.byte	0x5
	.byte	0xa2
	.uaword	0x610
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"dasstatus"
	.byte	0x5
	.byte	0xa3
	.uaword	0x13e
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"dasdisplaymode"
	.byte	0x5
	.byte	0xa4
	.uaword	0x247
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"cursorstatus"
	.byte	0x5
	.byte	0xa5
	.uaword	0x130
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x7
	.string	"displaymode"
	.byte	0x5
	.byte	0xa6
	.uaword	0x247
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x7
	.string	"dialogmode"
	.byte	0x5
	.byte	0xa7
	.uaword	0x1d3
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x7
	.string	"scanfdescr"
	.byte	0x5
	.byte	0xa8
	.uaword	0x616
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x7
	.string	"scanftext"
	.byte	0x5
	.byte	0xa9
	.uaword	0x616
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x7
	.string	"input"
	.byte	0x5
	.byte	0xaa
	.uaword	0x63b
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x7
	.string	"inputid"
	.byte	0x5
	.byte	0xab
	.uaword	0x130
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x7
	.string	"scanfx"
	.byte	0x5
	.byte	0xac
	.uaword	0xc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x7
	.string	"blinky"
	.byte	0x5
	.byte	0xad
	.uaword	0xe1
	.byte	0x3
	.byte	0x23
	.uleb128 0x111
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x498
	.uleb128 0x9
	.uaword	0x379
	.uaword	0x610
	.uleb128 0xa
	.uaword	0xa9
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x13e
	.uleb128 0x9
	.uaword	0xe1
	.uaword	0x626
	.uleb128 0xa
	.uaword	0xa9
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x130
	.uaword	0x63b
	.uleb128 0xc
	.uaword	0x130
	.uleb128 0xc
	.uaword	0x5fa
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x626
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x5
	.byte	0xae
	.uaword	0x4ad
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.uaword	0x6b2
	.uleb128 0x5
	.string	"TOUCH_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"TOUCH_DOWN"
	.sleb128 1
	.uleb128 0x5
	.string	"TOUCH_MOVE"
	.sleb128 2
	.uleb128 0x5
	.string	"TOUCH_UP"
	.sleb128 3
	.uleb128 0x5
	.string	"TOUCH_DOWN3S"
	.sleb128 4
	.uleb128 0x5
	.string	"TOUCH_DOWN10S"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_STATUS"
	.byte	0x6
	.byte	0x15
	.uaword	0x656
	.uleb128 0x6
	.string	"TOUCH_DRIVER"
	.byte	0x44
	.byte	0x6
	.byte	0x42
	.uaword	0x850
	.uleb128 0x7
	.string	"time"
	.byte	0x6
	.byte	0x44
	.uaword	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"prev_time"
	.byte	0x6
	.byte	0x45
	.uaword	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"prev_time_down"
	.byte	0x6
	.byte	0x46
	.uaword	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bounce_limit"
	.byte	0x6
	.byte	0x47
	.uaword	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"bounce_cnt"
	.byte	0x6
	.byte	0x48
	.uaword	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x"
	.byte	0x6
	.byte	0x49
	.uaword	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"prev_x"
	.byte	0x6
	.byte	0x4a
	.uaword	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x7
	.string	"prev_x_down"
	.byte	0x6
	.byte	0x4b
	.uaword	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x6
	.byte	0x4c
	.uaword	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x7
	.string	"prev_y"
	.byte	0x6
	.byte	0x4d
	.uaword	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"prev_y_down"
	.byte	0x6
	.byte	0x4e
	.uaword	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x7
	.string	"cnt"
	.byte	0x6
	.byte	0x4f
	.uaword	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"xdisp"
	.byte	0x6
	.byte	0x50
	.uaword	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x7
	.string	"ydisp"
	.byte	0x6
	.byte	0x51
	.uaword	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"xmin"
	.byte	0x6
	.byte	0x52
	.uaword	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"xmax"
	.byte	0x6
	.byte	0x53
	.uaword	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"ymin"
	.byte	0x6
	.byte	0x54
	.uaword	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"ymax"
	.byte	0x6
	.byte	0x55
	.uaword	0x14c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"status"
	.byte	0x6
	.byte	0x56
	.uaword	0x6b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"prev_status"
	.byte	0x6
	.byte	0x57
	.uaword	0x6b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"touchmode"
	.byte	0x6
	.byte	0x58
	.uaword	0x13e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_DRIVER"
	.byte	0x6
	.byte	0x59
	.uaword	0x6c7
	.uleb128 0xf
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.byte	0x1
	.string	"keyboard_display_text"
	.byte	0x1
	.uahalf	0x10d
	.byte	0x1
	.byte	0x1
	.uaword	0x8ad
	.uleb128 0x11
	.string	"ind"
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x130
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x5fa
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"keyboard_select_right"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.byte	0x1
	.uaword	0x8ed
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0xf6
	.uaword	0x130
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf6
	.uaword	0x5fa
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xf8
	.uaword	0x13e
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"keyboard_select_left"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.byte	0x1
	.uaword	0x92c
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0xe6
	.uaword	0x130
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0xe6
	.uaword	0x5fa
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xe8
	.uaword	0x13e
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"keyboard_select_enter"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.byte	0x1
	.uaword	0x96c
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0xbc
	.uaword	0x130
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0xbc
	.uaword	0x5fa
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xbe
	.uaword	0x13e
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"keyboard_select_back"
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.byte	0x1
	.uaword	0x9b4
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0xcf
	.uaword	0x130
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0xcf
	.uaword	0x5fa
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xd1
	.uaword	0x13e
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xd1
	.uaword	0x13e
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"keyboard_select"
	.byte	0x1
	.byte	0x9d
	.byte	0x1
	.byte	0x1
	.uaword	0x9ee
	.uleb128 0x14
	.string	"ind"
	.byte	0x1
	.byte	0x9d
	.uaword	0x130
	.uleb128 0x15
	.uaword	.LASF0
	.byte	0x1
	.byte	0x9d
	.uaword	0x5fa
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x9f
	.uaword	0x130
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"keyboard_input"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.uaword	0x130
	.uaword	.LFB350
	.uaword	.LFE350
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xa3f
	.uleb128 0x18
	.string	"ind"
	.byte	0x1
	.byte	0x97
	.uaword	0x130
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.byte	0x97
	.uaword	0x5fa
	.byte	0x1
	.byte	0x64
	.uleb128 0x1a
	.uaword	0x865
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x99
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"keyboard_display_descr"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	.LFB356
	.uaword	.LFE356
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xa8c
	.uleb128 0x1c
	.string	"ind"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x130
	.uaword	.LLST0
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x106
	.uaword	0x5fa
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"keyboard_display"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.uaword	.LFB349
	.uaword	.LFE349
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xadd
	.uleb128 0x1f
	.string	"ind"
	.byte	0x1
	.byte	0x8d
	.uaword	0x130
	.uaword	.LLST2
	.uleb128 0x20
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8d
	.uaword	0x5fa
	.uaword	.LLST3
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.byte	0x8f
	.uaword	0x130
	.uaword	.LLST4
	.byte	0
	.uleb128 0x22
	.uaword	0x873
	.uaword	.LFB357
	.uaword	.LFE357
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xb2b
	.uleb128 0x23
	.uaword	0x894
	.uaword	.LLST5
	.uleb128 0x23
	.uaword	0x8a0
	.uaword	.LLST6
	.uleb128 0x24
	.uaword	0x873
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.uahalf	0x10d
	.uleb128 0x25
	.uaword	0x8a0
	.byte	0x1
	.byte	0x6c
	.uleb128 0x26
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x27
	.uaword	0x894
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x8ad
	.uaword	.LFB355
	.uaword	.LFE355
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xb84
	.uleb128 0x23
	.uaword	0x8cd
	.uaword	.LLST7
	.uleb128 0x23
	.uaword	0x8d8
	.uaword	.LLST8
	.uleb128 0x28
	.uaword	0x8e3
	.uaword	.LLST9
	.uleb128 0x29
	.uaword	0x8ad
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.byte	0xf6
	.uleb128 0x26
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x2a
	.uaword	0x8e3
	.uleb128 0x27
	.uaword	0x8d8
	.uleb128 0x27
	.uaword	0x8cd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x8ed
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xbdd
	.uleb128 0x23
	.uaword	0x90c
	.uaword	.LLST10
	.uleb128 0x23
	.uaword	0x917
	.uaword	.LLST11
	.uleb128 0x28
	.uaword	0x922
	.uaword	.LLST12
	.uleb128 0x29
	.uaword	0x8ed
	.uaword	.LBB16
	.uaword	.LBE16
	.byte	0x1
	.byte	0xe6
	.uleb128 0x26
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x2a
	.uaword	0x922
	.uleb128 0x27
	.uaword	0x917
	.uleb128 0x27
	.uaword	0x90c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x92c
	.uaword	.LFB352
	.uaword	.LFE352
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xc38
	.uleb128 0x23
	.uaword	0x94c
	.uaword	.LLST13
	.uleb128 0x23
	.uaword	0x957
	.uaword	.LLST14
	.uleb128 0x28
	.uaword	0x962
	.uaword	.LLST15
	.uleb128 0x29
	.uaword	0x92c
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.byte	0xbc
	.uleb128 0x25
	.uaword	0x957
	.byte	0x1
	.byte	0x6c
	.uleb128 0x26
	.uaword	.LBB21
	.uaword	.LBE21
	.uleb128 0x2a
	.uaword	0x962
	.uleb128 0x27
	.uaword	0x94c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x96c
	.uaword	.LFB353
	.uaword	.LFE353
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xca3
	.uleb128 0x23
	.uaword	0x98b
	.uaword	.LLST16
	.uleb128 0x23
	.uaword	0x996
	.uaword	.LLST17
	.uleb128 0x2a
	.uaword	0x9a1
	.uleb128 0x28
	.uaword	0x9aa
	.uaword	.LLST18
	.uleb128 0x29
	.uaword	0x96c
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0xcf
	.uleb128 0x26
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x28
	.uaword	0x9a1
	.uaword	.LLST19
	.uleb128 0x28
	.uaword	0x9aa
	.uaword	.LLST20
	.uleb128 0x27
	.uaword	0x996
	.uleb128 0x27
	.uaword	0x98b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x9b4
	.uaword	.LFB351
	.uaword	.LFE351
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd00
	.uleb128 0x23
	.uaword	0x9ce
	.uaword	.LLST21
	.uleb128 0x23
	.uaword	0x9d9
	.uaword	.LLST22
	.uleb128 0x28
	.uaword	0x9e4
	.uaword	.LLST23
	.uleb128 0x29
	.uaword	0x9b4
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.byte	0x9d
	.uleb128 0x27
	.uaword	0x9ce
	.uleb128 0x26
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x28
	.uaword	0x9e4
	.uaword	.LLST24
	.uleb128 0x27
	.uaword	0x9d9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"keyboard"
	.byte	0x1
	.uahalf	0x118
	.byte	0x1
	.uaword	.LFB358
	.uaword	.LFE358
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd6a
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.uahalf	0x118
	.uaword	0xff
	.uaword	.LLST25
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.uahalf	0x118
	.uaword	0xff
	.uaword	.LLST26
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x130
	.uaword	.LLST27
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x130
	.uaword	.LLST28
	.uleb128 0x2b
	.string	"eofstr"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x130
	.uaword	.LLST29
	.byte	0
	.uleb128 0x2c
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x7b
	.uaword	0x13e
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"conio_driver"
	.byte	0x5
	.byte	0xc9
	.uaword	0x641
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.string	"touch_driver"
	.byte	0x6
	.byte	0x5b
	.uaword	0x850
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0xe1
	.uaword	0xdc9
	.uleb128 0xa
	.uaword	0xa9
	.byte	0xc
	.uleb128 0xa
	.uaword	0xa9
	.byte	0x27
	.byte	0
	.uleb128 0x2d
	.string	"keyboard_outline"
	.byte	0x1
	.byte	0x33
	.uaword	0xde8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	keyboard_outline
	.uleb128 0x2e
	.uaword	0xdb3
	.uleb128 0x9
	.uaword	0x498
	.uaword	0xdfd
	.uleb128 0xa
	.uaword	0xa9
	.byte	0x3c
	.byte	0
	.uleb128 0x2d
	.string	"keyboardlist"
	.byte	0x1
	.byte	0x45
	.uaword	0xe18
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	keyboardlist
	.uleb128 0x2e
	.uaword	0xded
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13-1
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31
	.uaword	.LFE352
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x4
	.byte	0x72
	.sleb128 -245
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL80
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL57
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL80
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x64
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB350
	.uaword	.LFE350-.LFB350
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.uaword	.LFB349
	.uaword	.LFE349-.LFB349
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.uaword	.LFB352
	.uaword	.LFE352-.LFB352
	.uaword	.LFB353
	.uaword	.LFE353-.LFB353
	.uaword	.LFB351
	.uaword	.LFE351-.LFB351
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB350
	.uaword	.LFE350
	.uaword	.LFB356
	.uaword	.LFE356
	.uaword	.LFB349
	.uaword	.LFE349
	.uaword	.LFB357
	.uaword	.LFE357
	.uaword	.LFB355
	.uaword	.LFE355
	.uaword	.LFB354
	.uaword	.LFE354
	.uaword	.LFB352
	.uaword	.LFE352
	.uaword	.LFB353
	.uaword	.LFE353
	.uaword	.LFB351
	.uaword	.LFE351
	.uaword	.LFB358
	.uaword	.LFE358
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"pdisplayentry"
	.extern	conio_ascii_textchangebackground,STT_FUNC,0
	.extern	conio_ascii_putch,STT_FUNC,0
	.extern	conio_ascii_textbackground,STT_FUNC,0
	.extern	conio_ascii_textcolor,STT_FUNC,0
	.extern	strlen,STT_FUNC,0
	.extern	touch_driver,STT_OBJECT,68
	.extern	conio_ascii_textchangecolor,STT_FUNC,0
	.extern	conio_ascii_cputs,STT_FUNC,0
	.extern	conio_ascii_gotoxy,STT_FUNC,0
	.extern	conio_ascii_textattr,STT_FUNC,0
	.extern	conio_driver,STT_OBJECT,276
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
