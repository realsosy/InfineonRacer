	.file	"menu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.menu_input,"ax",@progbits
	.align 1
	.global	menu_input
	.type	menu_input, @function
menu_input:
.LFB652:
	.file 1 "0_Src/0_AppSw/Tricore/TftApp/menu.c"
	.loc 1 145 0
.LVL0:
	.loc 1 147 0
	mov	%d2, 0
	ret
.LFE652:
	.size	menu_input, .-menu_input
.section .text.menu_display,"ax",@progbits
	.align 1
	.global	menu_display
	.type	menu_display, @function
menu_display:
.LFB650:
	.loc 1 127 0
.LVL1:
	.loc 1 128 0
	ld.bu	%d5, [%a4]0
	mov	%d4, 1
.LVL2:
	.loc 1 127 0
	mov.aa	%a15, %a4
	.loc 1 128 0
	call	conio_ascii_textattr
.LVL3:
	.loc 1 129 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 130 0
	mov	%d4, 1
	lea	%a4, [%a15] 20
	j	conio_ascii_cputs
.LFE650:
	.size	menu_display, .-menu_display
.section .rodata,"a",@progbits
.LC0:
	.string	"Background Light: %u"
.section .text.menu_display_background_light,"ax",@progbits
	.align 1
	.global	menu_display_background_light
	.type	menu_display_background_light, @function
menu_display_background_light:
.LFB682:
	.loc 1 519 0
.LVL4:
	.loc 1 520 0
	ld.bu	%d5, [%a4]0
	.loc 1 519 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 520 0
	mov	%d4, 1
.LVL5:
	.loc 1 519 0
	mov.aa	%a15, %a4
	.loc 1 520 0
	call	conio_ascii_textattr
.LVL6:
	.loc 1 521 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	movh.a	%a15, hi:backgroundlightsize
.LVL7:
	ld.w	%d15, [%a15] lo:backgroundlightsize
	movh.a	%a4, hi:.LC0
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC0
	st.w	[%SP]0, %d15
	.loc 1 522 0
	j	conio_ascii_printfxy
.LFE682:
	.size	menu_display_background_light, .-menu_display_background_light
.section .rodata,"a",@progbits
.LC1:
	.string	"Servo:  %3.2f"
	.global	__extendsfdf2
.section .text.menu_display_srv,"ax",@progbits
	.align 1
	.global	menu_display_srv
	.type	menu_display_srv, @function
menu_display_srv:
.LFB677:
	.loc 1 461 0
.LVL8:
	.loc 1 462 0
	ld.bu	%d5, [%a4]0
	.loc 1 461 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI1:
	.loc 1 462 0
	mov	%d4, 1
.LVL9:
	call	conio_ascii_textattr
.LVL10:
	.loc 1 463 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:IR_Srv
.LVL11:
	ld.w	%d4, [%a15] lo:IR_Srv
	call	__extendsfdf2
	movh.a	%a4, hi:.LC1
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%a4] lo:.LC1
	st.d	[%SP]0, %e2
	.loc 1 464 0
	j	conio_ascii_printfxy
.LFE677:
	.size	menu_display_srv, .-menu_display_srv
.section .rodata,"a",@progbits
.LC2:
	.string	"M1Vol:  %3.2f"
.section .text.menu_display_motor1,"ax",@progbits
	.align 1
	.global	menu_display_motor1
	.type	menu_display_motor1, @function
menu_display_motor1:
.LFB672:
	.loc 1 403 0
.LVL12:
	.loc 1 404 0
	ld.bu	%d5, [%a4]0
	.loc 1 403 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI2:
	.loc 1 404 0
	mov	%d4, 1
.LVL13:
	call	conio_ascii_textattr
.LVL14:
	.loc 1 405 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:IR_Motor
.LVL15:
	lea	%a15, [%a15] lo:IR_Motor
	ld.w	%d4, [%a15] 4
	call	__extendsfdf2
	movh.a	%a4, hi:.LC2
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%a4] lo:.LC2
	st.d	[%SP]0, %e2
	.loc 1 406 0
	j	conio_ascii_printfxy
.LFE672:
	.size	menu_display_motor1, .-menu_display_motor1
.section .rodata,"a",@progbits
.LC3:
	.string	"M0Vol:  %3.2f"
.section .text.menu_display_motor0,"ax",@progbits
	.align 1
	.global	menu_display_motor0
	.type	menu_display_motor0, @function
menu_display_motor0:
.LFB665:
	.loc 1 312 0
.LVL16:
	.loc 1 313 0
	ld.bu	%d5, [%a4]0
	.loc 1 312 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI3:
	.loc 1 313 0
	mov	%d4, 1
.LVL17:
	call	conio_ascii_textattr
.LVL18:
	.loc 1 314 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:IR_Motor
.LVL19:
	ld.w	%d4, [%a15] lo:IR_Motor
	call	__extendsfdf2
	movh.a	%a4, hi:.LC3
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%a4] lo:.LC3
	st.d	[%SP]0, %e2
	.loc 1 315 0
	j	conio_ascii_printfxy
.LFE665:
	.size	menu_display_motor0, .-menu_display_motor0
.section .srodata,"as",@progbits
.LC4:
	.string	"%7.1f"
.section .text.menu_display_cpusec,"ax",@progbits
	.align 1
	.global	menu_display_cpusec
	.type	menu_display_cpusec, @function
menu_display_cpusec:
.LFB654:
	.loc 1 161 0
.LVL20:
	.loc 1 162 0
	ld.bu	%d5, [%a4]0
	.loc 1 161 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI4:
	.loc 1 162 0
	mov	%d4, 1
.LVL21:
	call	conio_ascii_textattr
.LVL22:
	.loc 1 163 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:controlmenu
.LVL23:
	ld.w	%d4, [%a15] lo:controlmenu
	call	__extendsfdf2
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%A0] SM:.LC4
	st.d	[%SP]0, %e2
	.loc 1 164 0
	j	conio_ascii_printfxy
.LFE654:
	.size	menu_display_cpusec, .-menu_display_cpusec
.section .srodata,"as",@progbits
.LC5:
	.string	"%u"
.section .text.menu_input_background_light,"ax",@progbits
	.align 1
	.global	menu_input_background_light
	.type	menu_input_background_light, @function
menu_input_background_light:
.LFB683:
	.loc 1 525 0
.LVL24:
	sub.a	%SP, 16
.LCFI5:
	.loc 1 528 0
	movh.a	%a4, hi:conio_driver+244
.LVL25:
	lea	%a15, [%SP] 12
	lea	%a4, [%a4] lo:conio_driver+244
	lea	%a5, [%A0] SM:.LC5
	st.a	[%SP]0, %a15
	call	sscanf
.LVL26:
	.loc 1 530 0
	mov	%d15, -1
	.loc 1 529 0
	jne	%d2, 1, .L9
	.loc 1 531 0
	movh.a	%a15, hi:backgroundlightmin
	ld.w	%d2, [%a15] lo:backgroundlightmin
.LVL27:
	ld.w	%d15, [%SP] 12
	.loc 1 536 0
	movh.a	%a15, hi:backgroundlightmax
	.loc 1 531 0
	max.u	%d15, %d15, %d2
	.loc 1 536 0
	ld.w	%d2, [%a15] lo:backgroundlightmax
	movh.a	%a15, hi:backgroundlightsize
	min.u	%d15, %d15, %d2
	st.w	[%a15] lo:backgroundlightsize, %d15
	.loc 1 538 0
	mov	%d15, 0
.L9:
	.loc 1 539 0
	mov	%d2, %d15
	ret
.LFE683:
	.size	menu_input_background_light, .-menu_input_background_light
.section .srodata,"as",@progbits
.LC6:
	.string	"%f"
.section .text.menu_input_srv,"ax",@progbits
	.align 1
	.global	menu_input_srv
	.type	menu_input_srv, @function
menu_input_srv:
.LFB678:
	.loc 1 467 0
.LVL28:
	sub.a	%SP, 16
.LCFI6:
	.loc 1 470 0
	movh.a	%a4, hi:conio_driver+244
.LVL29:
	lea	%a15, [%SP] 12
	lea	%a4, [%a4] lo:conio_driver+244
	lea	%a5, [%A0] SM:.LC6
	st.a	[%SP]0, %a15
	call	sscanf
.LVL30:
	.loc 1 472 0
	mov	%d15, -1
	.loc 1 471 0
	jne	%d2, 1, .L14
.LVL31:
	.loc 1 473 0
	ld.w	%d4, [%SP] 12
	.loc 1 475 0
	mov	%d15, 0
	.loc 1 473 0
	call	IR_setSrvAngle
.LVL32:
.L14:
	.loc 1 476 0
	mov	%d2, %d15
	ret
.LFE678:
	.size	menu_input_srv, .-menu_input_srv
.section .text.menu_input_motor1,"ax",@progbits
	.align 1
	.global	menu_input_motor1
	.type	menu_input_motor1, @function
menu_input_motor1:
.LFB673:
	.loc 1 409 0
.LVL33:
	sub.a	%SP, 16
.LCFI7:
	.loc 1 412 0
	movh.a	%a4, hi:conio_driver+244
.LVL34:
	lea	%a15, [%SP] 12
	lea	%a4, [%a4] lo:conio_driver+244
	lea	%a5, [%A0] SM:.LC6
	st.a	[%SP]0, %a15
	call	sscanf
.LVL35:
	.loc 1 414 0
	mov	%d15, -1
	.loc 1 413 0
	jne	%d2, 1, .L17
.LVL36:
	.loc 1 415 0
	ld.w	%d4, [%SP] 12
	.loc 1 417 0
	mov	%d15, 0
	.loc 1 415 0
	call	IR_setMotor1Vol
.LVL37:
.L17:
	.loc 1 418 0
	mov	%d2, %d15
	ret
.LFE673:
	.size	menu_input_motor1, .-menu_input_motor1
.section .text.menu_input_motor0,"ax",@progbits
	.align 1
	.global	menu_input_motor0
	.type	menu_input_motor0, @function
menu_input_motor0:
.LFB666:
	.loc 1 318 0
.LVL38:
	sub.a	%SP, 16
.LCFI8:
	.loc 1 321 0
	movh.a	%a4, hi:conio_driver+244
.LVL39:
	lea	%a15, [%SP] 12
	lea	%a4, [%a4] lo:conio_driver+244
	lea	%a5, [%A0] SM:.LC6
	st.a	[%SP]0, %a15
	call	sscanf
.LVL40:
	.loc 1 323 0
	mov	%d15, -1
	.loc 1 322 0
	jne	%d2, 1, .L20
.LVL41:
	.loc 1 324 0
	ld.w	%d4, [%SP] 12
	.loc 1 326 0
	mov	%d15, 0
	.loc 1 324 0
	call	IR_setMotor0Vol
.LVL42:
.L20:
	.loc 1 327 0
	mov	%d2, %d15
	ret
.LFE666:
	.size	menu_input_motor0, .-menu_input_motor0
.section .srodata,"as",@progbits
.LC7:
	.string	"-<<"
.section .text.menu_select_background_lightminus,"ax",@progbits
	.align 1
	.global	menu_select_background_lightminus
	.type	menu_select_background_lightminus, @function
menu_select_background_lightminus:
.LFB686:
	.loc 1 571 0
.LVL43:
	.loc 1 572 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL44:
	.loc 1 571 0
	mov.aa	%a15, %a4
	.loc 1 572 0
	call	conio_ascii_textattr
.LVL45:
	.loc 1 573 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 575 0
	movh.a	%a15, hi:touch_driver
.LVL46:
	.loc 1 574 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC7
	.loc 1 575 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 574 0
	call	conio_ascii_cputs
	.loc 1 575 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L22
	.loc 1 577 0
	andn	%d15, %d15, ~(-9)
	.loc 1 578 0
	movh.a	%a2, hi:backgroundlightmin
	ld.w	%d2, [%a2] lo:backgroundlightmin
	.loc 1 577 0
	st.w	[%a15] 64, %d15
	.loc 1 578 0
	movh.a	%a15, hi:backgroundlightsize
	ld.w	%d15, [%a15] lo:backgroundlightsize
	jge.u	%d2, %d15, .L22
.LBB4:
.LBB5:
	.loc 1 579 0
	movh.a	%a2, hi:backgroundlightdelta
	ld.w	%d2, [%a2] lo:backgroundlightdelta
	sub	%d15, %d2
	st.w	[%a15] lo:backgroundlightsize, %d15
.L22:
	ret
.LBE5:
.LBE4:
.LFE686:
	.size	menu_select_background_lightminus, .-menu_select_background_lightminus
.section .srodata,"as",@progbits
.LC8:
	.string	">>+"
.section .text.menu_select_background_lightplus,"ax",@progbits
	.align 1
	.global	menu_select_background_lightplus
	.type	menu_select_background_lightplus, @function
menu_select_background_lightplus:
.LFB685:
	.loc 1 558 0
.LVL47:
	.loc 1 559 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL48:
	.loc 1 558 0
	mov.aa	%a15, %a4
	.loc 1 559 0
	call	conio_ascii_textattr
.LVL49:
	.loc 1 560 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 562 0
	movh.a	%a15, hi:touch_driver
.LVL50:
	.loc 1 561 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC8
	.loc 1 562 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 561 0
	call	conio_ascii_cputs
	.loc 1 562 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L24
	.loc 1 564 0
	andn	%d15, %d15, ~(-9)
	.loc 1 565 0
	movh.a	%a2, hi:backgroundlightmax
	ld.w	%d2, [%a2] lo:backgroundlightmax
	.loc 1 564 0
	st.w	[%a15] 64, %d15
	.loc 1 565 0
	movh.a	%a15, hi:backgroundlightsize
	ld.w	%d15, [%a15] lo:backgroundlightsize
	jge.u	%d15, %d2, .L24
.LBB8:
.LBB9:
	.loc 1 566 0
	movh.a	%a2, hi:backgroundlightdelta
	ld.w	%d2, [%a2] lo:backgroundlightdelta
	add	%d15, %d2
	st.w	[%a15] lo:backgroundlightsize, %d15
.L24:
	ret
.LBE9:
.LBE8:
.LFE685:
	.size	menu_select_background_lightplus, .-menu_select_background_lightplus
.section .rodata,"a",@progbits
.LC9:
	.string	"TEST BASIC: OFF"
.LC10:
	.string	"TEST BASIC:  ON"
.section .text.menu_select_testbasic,"ax",@progbits
	.align 1
	.global	menu_select_testbasic
	.type	menu_select_testbasic, @function
menu_select_testbasic:
.LFB657:
	.loc 1 190 0
.LVL51:
	.loc 1 191 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL52:
	.loc 1 190 0
	mov.aa	%a15, %a4
	.loc 1 191 0
	call	conio_ascii_textattr
.LVL53:
	.loc 1 192 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	.loc 1 193 0
	movh.a	%a15, hi:IR_Ctrl
.LVL54:
	.loc 1 192 0
	mov	%d4, 1
	.loc 1 193 0
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 192 0
	call	conio_ascii_gotoxy
	.loc 1 193 0
	ld.bu	%d15, [%a15] 4
	.loc 1 194 0
	mov	%d4, 1
	.loc 1 193 0
	jnz	%d15, .L27
	.loc 1 194 0
	movh.a	%a4, hi:.LC9
	lea	%a4, [%a4] lo:.LC9
	call	conio_ascii_cputs
.L28:
	.loc 1 199 0
	movh.a	%a2, hi:touch_driver
	lea	%a2, [%a2] lo:touch_driver
	ld.w	%d15, [%a2] 64
	jz.t	%d15, 3, .L26
	.loc 1 202 0
	ld.bu	%d2, [%a15] 4
.LBB12:
.LBB13:
	.loc 1 207 0
	andn	%d15, %d15, ~(-9)
.LBE13:
.LBE12:
	.loc 1 202 0
	eq	%d2, %d2, 0
.LBB15:
.LBB14:
	.loc 1 207 0
	st.w	[%a2] 64, %d15
.LBE14:
.LBE15:
	.loc 1 202 0
	st.b	[%a15] 4, %d2
.L26:
	ret
.L27:
	.loc 1 197 0
	movh.a	%a4, hi:.LC10
	lea	%a4, [%a4] lo:.LC10
	call	conio_ascii_cputs
	j	.L28
.LFE657:
	.size	menu_select_testbasic, .-menu_select_testbasic
.section .srodata,"as",@progbits
.LC11:
	.string	"Reset"
.section .text.menu_select_cpusec,"ax",@progbits
	.align 1
	.global	menu_select_cpusec
	.type	menu_select_cpusec, @function
menu_select_cpusec:
.LFB655:
	.loc 1 167 0
.LVL55:
	.loc 1 168 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL56:
	.loc 1 167 0
	mov.aa	%a15, %a4
	.loc 1 168 0
	call	conio_ascii_textattr
.LVL57:
	.loc 1 169 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 171 0
	movh.a	%a15, hi:touch_driver
.LVL58:
	.loc 1 170 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC11
	.loc 1 171 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 170 0
	call	conio_ascii_cputs
	.loc 1 171 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L30
.LBB18:
.LBB19:
	.loc 1 173 0
	mov	%d2, 0
	.loc 1 174 0
	andn	%d15, %d15, ~(-9)
	.loc 1 173 0
	movh.a	%a2, hi:controlmenu
	st.w	[%a2] lo:controlmenu, %d2
	.loc 1 174 0
	st.w	[%a15] 64, %d15
.L30:
	ret
.LBE19:
.LBE18:
.LFE655:
	.size	menu_select_cpusec, .-menu_select_cpusec
.section .rodata,"a",@progbits
.LC12:
	.string	"Created in 2018/01/03"
.section .text.menu_select_title,"ax",@progbits
	.align 1
	.global	menu_select_title
	.type	menu_select_title, @function
menu_select_title:
.LFB653:
	.loc 1 150 0
.LVL59:
	.loc 1 151 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL60:
	.loc 1 150 0
	mov.aa	%a15, %a4
	.loc 1 151 0
	call	conio_ascii_textattr
.LVL61:
	.loc 1 152 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 153 0
	movh.a	%a4, hi:.LC12
	.loc 1 154 0
	movh.a	%a15, hi:touch_driver
.LVL62:
	.loc 1 153 0
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC12
	.loc 1 154 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 153 0
	call	conio_ascii_cputs
	.loc 1 154 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L32
.LBB22:
.LBB23:
	.loc 1 156 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L32:
	ret
.LBE23:
.LBE22:
.LFE653:
	.size	menu_select_title, .-menu_select_title
.section .rodata,"a",@progbits
.LC13:
	.string	"M1En OFF"
.LC14:
	.string	"M1En  ON"
.section .text.menu_display_motor1en,"ax",@progbits
	.align 1
	.global	menu_display_motor1en
	.type	menu_display_motor1en, @function
menu_display_motor1en:
.LFB670:
	.loc 1 370 0
.LVL63:
	.loc 1 371 0
	ld.bu	%d5, [%a4]0
	mov	%d4, 1
.LVL64:
	.loc 1 370 0
	mov.aa	%a15, %a4
	.loc 1 371 0
	call	conio_ascii_textattr
.LVL65:
	.loc 1 372 0
	movh.a	%a2, hi:IR_MotorEn
	lea	%a2, [%a2] lo:IR_MotorEn
	ld.bu	%d15, [%a2] 1
.LBB26:
.LBB27:
	.loc 1 373 0
	mov	%d4, 1
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
.LBE27:
.LBE26:
	.loc 1 372 0
	jz	%d15, .L36
	.loc 1 376 0
	movh.a	%a4, hi:.LC14
	lea	%a4, [%a4] lo:.LC14
	j	conio_ascii_printfxy
.L36:
.LBB29:
.LBB28:
	.loc 1 373 0
	movh.a	%a4, hi:.LC13
	lea	%a4, [%a4] lo:.LC13
	j	conio_ascii_printfxy
.LBE28:
.LBE29:
.LFE670:
	.size	menu_display_motor1en, .-menu_display_motor1en
.section .rodata,"a",@progbits
.LC15:
	.string	"M0En OFF"
.LC16:
	.string	"M0En  ON"
.section .text.menu_display_motor0en,"ax",@progbits
	.align 1
	.global	menu_display_motor0en
	.type	menu_display_motor0en, @function
menu_display_motor0en:
.LFB663:
	.loc 1 279 0
.LVL66:
	.loc 1 280 0
	ld.bu	%d5, [%a4]0
	mov	%d4, 1
.LVL67:
	.loc 1 279 0
	mov.aa	%a15, %a4
	.loc 1 280 0
	call	conio_ascii_textattr
.LVL68:
	.loc 1 281 0
	movh.a	%a2, hi:IR_MotorEn
	ld.bu	%d15, [%a2] lo:IR_MotorEn
.LBB32:
.LBB33:
	.loc 1 282 0
	mov	%d4, 1
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
.LBE33:
.LBE32:
	.loc 1 281 0
	jz	%d15, .L39
	.loc 1 285 0
	movh.a	%a4, hi:.LC16
	lea	%a4, [%a4] lo:.LC16
	j	conio_ascii_printfxy
.L39:
.LBB35:
.LBB34:
	.loc 1 282 0
	movh.a	%a4, hi:.LC15
	lea	%a4, [%a4] lo:.LC15
	j	conio_ascii_printfxy
.LBE34:
.LBE35:
.LFE663:
	.size	menu_display_motor0en, .-menu_display_motor0en
.section .rodata,"a",@progbits
.LC17:
	.string	"Beep OFF"
.LC18:
	.string	"Beep  ON"
.section .text.menu_display_beeper,"ax",@progbits
	.align 1
	.global	menu_display_beeper
	.type	menu_display_beeper, @function
menu_display_beeper:
.LFB658:
	.loc 1 212 0
.LVL69:
	.loc 1 213 0
	ld.bu	%d5, [%a4]0
	mov	%d4, 1
.LVL70:
	.loc 1 212 0
	mov.aa	%a15, %a4
	.loc 1 213 0
	call	conio_ascii_textattr
.LVL71:
	.loc 1 214 0
	movh.a	%a2, hi:IR_Beeper
	ld.bu	%d15, [%a2] lo:IR_Beeper
.LBB38:
.LBB39:
	.loc 1 215 0
	mov	%d4, 1
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
.LBE39:
.LBE38:
	.loc 1 214 0
	jz	%d15, .L42
	.loc 1 218 0
	movh.a	%a4, hi:.LC18
	lea	%a4, [%a4] lo:.LC18
	j	conio_ascii_printfxy
.L42:
.LBB41:
.LBB40:
	.loc 1 215 0
	movh.a	%a4, hi:.LC17
	lea	%a4, [%a4] lo:.LC17
	j	conio_ascii_printfxy
.LBE40:
.LBE41:
.LFE658:
	.size	menu_display_beeper, .-menu_display_beeper
.section .text.menu_display_testbasic,"ax",@progbits
	.align 1
	.global	menu_display_testbasic
	.type	menu_display_testbasic, @function
menu_display_testbasic:
.LFB656:
	.loc 1 179 0
.LVL72:
	.loc 1 180 0
	ld.bu	%d5, [%a4]0
	mov	%d4, 1
.LVL73:
	.loc 1 179 0
	mov.aa	%a15, %a4
	.loc 1 180 0
	call	conio_ascii_textattr
.LVL74:
	.loc 1 181 0
	movh.a	%a2, hi:IR_Ctrl
	lea	%a2, [%a2] lo:IR_Ctrl
	ld.bu	%d15, [%a2] 4
.LBB44:
.LBB45:
	.loc 1 182 0
	mov	%d4, 1
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
.LBE45:
.LBE44:
	.loc 1 181 0
	jz	%d15, .L45
	.loc 1 185 0
	movh.a	%a4, hi:.LC10
	lea	%a4, [%a4] lo:.LC10
	j	conio_ascii_printfxy
.L45:
.LBB47:
.LBB46:
	.loc 1 182 0
	movh.a	%a4, hi:.LC9
	lea	%a4, [%a4] lo:.LC9
	j	conio_ascii_printfxy
.LBE46:
.LBE47:
.LFE656:
	.size	menu_display_testbasic, .-menu_display_testbasic
.section .rodata,"a",@progbits
.LC19:
	.string	"Change Light: %u"
.section .text.menu_select_background_light,"ax",@progbits
	.align 1
	.global	menu_select_background_light
	.type	menu_select_background_light, @function
menu_select_background_light:
.LFB684:
	.loc 1 542 0
.LVL75:
	.loc 1 543 0
	ld.bu	%d5, [%a4] 1
	.loc 1 542 0
	sub.a	%SP, 8
.LCFI9:
	.loc 1 542 0
	mov	%d15, %d4
	.loc 1 543 0
	mov	%d4, 1
.LVL76:
	.loc 1 542 0
	mov.aa	%a15, %a4
	.loc 1 543 0
	call	conio_ascii_textattr
.LVL77:
	.loc 1 544 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	movh.a	%a13, hi:backgroundlightsize
	movh.a	%a4, hi:.LC19
	ld.w	%d2, [%a13] lo:backgroundlightsize
	mov	%d4, 1
	lea	%a4, [%a4] lo:.LC19
	.loc 1 545 0
	movh.a	%a12, hi:touch_driver
	.loc 1 544 0
	st.w	[%SP]0, %d2
	.loc 1 545 0
	lea	%a12, [%a12] lo:touch_driver
	.loc 1 544 0
	call	conio_ascii_printfxy
	.loc 1 545 0
	ld.w	%d2, [%a12] 64
	jnz.t	%d2, 3, .L48
	ret
.L48:
.LVL78:
.LBB50:
.LBB51:
	.loc 1 547 0
	movh	%d2, 26727
	addi	%d2, %d2, 26956
	movh.a	%a14, hi:conio_driver+224
	lea	%a14, [%a14] lo:conio_driver+224
	st.w	[%a14]0, %d2
	movh	%d2, 32
	addi	%d2, %d2, 14964
	.loc 1 548 0
	lea	%a4, [%a14] 20
	lea	%a5, [%A0] SM:.LC5
	.loc 1 547 0
	st.w	[%a14] 4, %d2
	.loc 1 548 0
	ld.w	%d2, [%a13] lo:backgroundlightsize
	st.w	[%SP]0, %d2
	call	sprintf
	.loc 1 549 0
	mov	%d2, 0
	st.b	[%a14] 48, %d2
	.loc 1 550 0
	mov	%d2, 1
	st.w	[%a14] -4, %d2
	.loc 1 551 0
	ld.w	%d2, [%a15] 16
	.loc 1 552 0
	st.w	[%a14] 44, %d15
	.loc 1 553 0
	ld.w	%d15, [%a12] 64
.LVL79:
	.loc 1 551 0
	st.w	[%a14] 40, %d2
	.loc 1 553 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a12] 64, %d15
	ret
.LBE51:
.LBE50:
.LFE684:
	.size	menu_select_background_light, .-menu_select_background_light
.section .rodata,"a",@progbits
.LC20:
	.string	"Servo:  "
.section .srodata,"as",@progbits
.LC21:
	.string	"%3.2f"
.section .text.menu_select_srv,"ax",@progbits
	.align 1
	.global	menu_select_srv
	.type	menu_select_srv, @function
menu_select_srv:
.LFB679:
	.loc 1 479 0
.LVL80:
	.loc 1 480 0
	ld.bu	%d5, [%a4] 1
	.loc 1 479 0
	sub.a	%SP, 8
.LCFI10:
	.loc 1 479 0
	mov	%d9, %d4
	.loc 1 480 0
	mov	%d4, 1
.LVL81:
	.loc 1 479 0
	mov.aa	%a15, %a4
	.loc 1 481 0
	movh.a	%a13, hi:IR_Srv
	.loc 1 480 0
	call	conio_ascii_textattr
.LVL82:
	.loc 1 481 0
	ld.w	%d4, [%a13] lo:IR_Srv
	ld.b	%d15, [%a15] 4
	call	__extendsfdf2
	ld.b	%d8, [%a15] 2
	movh.a	%a4, hi:.LC1
	.loc 1 482 0
	movh.a	%a12, hi:touch_driver
	.loc 1 481 0
	mov	%d6, %d15
	mov	%d4, 1
	mov	%d5, %d8
	lea	%a4, [%a4] lo:.LC1
	.loc 1 482 0
	lea	%a12, [%a12] lo:touch_driver
	.loc 1 481 0
	st.d	[%SP]0, %e2
	call	conio_ascii_printfxy
	.loc 1 482 0
	ld.w	%d15, [%a12] 64
	jnz.t	%d15, 3, .L51
	ret
.L51:
.LVL83:
.LBB54:
.LBB55:
	.loc 1 484 0
	movh.a	%a14, hi:conio_driver+224
	lea	%a14, [%a14] lo:conio_driver+224
	movh.a	%a2, hi:.LC20
	lea	%a2, [%a2] lo:.LC20
	mov.aa	%a3, %a14
	.loc 1 485 0
	ld.w	%d4, [%a13] lo:IR_Srv
	.loc 1 484 0
		# #chunks=9, chunksize=1, remains=0
	lea	%a4, 9-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
	.loc 1 485 0
	mov.d	%d2, %a14
	addi	%d15, %d2, 20
	call	__extendsfdf2
	mov.a	%a4, %d15
	.loc 1 486 0
	mov	%d15, 0
	.loc 1 485 0
	lea	%a5, [%A0] SM:.LC21
	st.d	[%SP]0, %e2
	call	sprintf
	.loc 1 486 0
	st.b	[%a14] 48, %d15
	.loc 1 487 0
	mov	%d15, 1
	st.w	[%a14] -4, %d15
	.loc 1 488 0
	ld.w	%d15, [%a15] 16
	st.w	[%a14] 40, %d15
	.loc 1 490 0
	ld.w	%d15, [%a12] 64
	.loc 1 489 0
	st.w	[%a14] 44, %d9
	.loc 1 490 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a12] 64, %d15
	ret
.LBE55:
.LBE54:
.LFE679:
	.size	menu_select_srv, .-menu_select_srv
.section .rodata,"a",@progbits
.LC22:
	.string	"M1Vol:  "
.section .text.menu_select_motor1,"ax",@progbits
	.align 1
	.global	menu_select_motor1
	.type	menu_select_motor1, @function
menu_select_motor1:
.LFB674:
	.loc 1 421 0
.LVL84:
	.loc 1 422 0
	ld.bu	%d5, [%a4] 1
	.loc 1 421 0
	sub.a	%SP, 8
.LCFI11:
	.loc 1 421 0
	mov	%d9, %d4
	.loc 1 423 0
	movh.a	%a13, hi:IR_Motor
	.loc 1 422 0
	mov	%d4, 1
.LVL85:
	.loc 1 421 0
	mov.aa	%a15, %a4
	.loc 1 423 0
	lea	%a13, [%a13] lo:IR_Motor
	.loc 1 422 0
	call	conio_ascii_textattr
.LVL86:
	.loc 1 423 0
	ld.w	%d4, [%a13] 4
	ld.b	%d15, [%a15] 4
	call	__extendsfdf2
	ld.b	%d8, [%a15] 2
	movh.a	%a4, hi:.LC2
	.loc 1 424 0
	movh.a	%a12, hi:touch_driver
	.loc 1 423 0
	mov	%d6, %d15
	mov	%d4, 1
	mov	%d5, %d8
	lea	%a4, [%a4] lo:.LC2
	.loc 1 424 0
	lea	%a12, [%a12] lo:touch_driver
	.loc 1 423 0
	st.d	[%SP]0, %e2
	call	conio_ascii_printfxy
	.loc 1 424 0
	ld.w	%d15, [%a12] 64
	jnz.t	%d15, 3, .L54
	ret
.L54:
.LVL87:
.LBB58:
.LBB59:
	.loc 1 426 0
	movh.a	%a14, hi:conio_driver+224
	lea	%a14, [%a14] lo:conio_driver+224
	movh.a	%a2, hi:.LC22
	lea	%a2, [%a2] lo:.LC22
	mov.aa	%a3, %a14
	.loc 1 427 0
	ld.w	%d4, [%a13] 4
	.loc 1 426 0
		# #chunks=9, chunksize=1, remains=0
	lea	%a4, 9-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
	.loc 1 427 0
	mov.d	%d2, %a14
	addi	%d15, %d2, 20
	call	__extendsfdf2
	mov.a	%a4, %d15
	.loc 1 428 0
	mov	%d15, 0
	.loc 1 427 0
	lea	%a5, [%A0] SM:.LC21
	st.d	[%SP]0, %e2
	call	sprintf
	.loc 1 428 0
	st.b	[%a14] 48, %d15
	.loc 1 429 0
	mov	%d15, 1
	st.w	[%a14] -4, %d15
	.loc 1 430 0
	ld.w	%d15, [%a15] 16
	st.w	[%a14] 40, %d15
	.loc 1 432 0
	ld.w	%d15, [%a12] 64
	.loc 1 431 0
	st.w	[%a14] 44, %d9
	.loc 1 432 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a12] 64, %d15
	ret
.LBE59:
.LBE58:
.LFE674:
	.size	menu_select_motor1, .-menu_select_motor1
.section .rodata,"a",@progbits
.LC23:
	.string	"M0Vol:  "
.section .text.menu_select_motor0,"ax",@progbits
	.align 1
	.global	menu_select_motor0
	.type	menu_select_motor0, @function
menu_select_motor0:
.LFB667:
	.loc 1 330 0
.LVL88:
	.loc 1 331 0
	ld.bu	%d5, [%a4] 1
	.loc 1 330 0
	sub.a	%SP, 8
.LCFI12:
	.loc 1 330 0
	mov	%d9, %d4
	.loc 1 331 0
	mov	%d4, 1
.LVL89:
	.loc 1 330 0
	mov.aa	%a15, %a4
	.loc 1 332 0
	movh.a	%a13, hi:IR_Motor
	.loc 1 331 0
	call	conio_ascii_textattr
.LVL90:
	.loc 1 332 0
	ld.w	%d4, [%a13] lo:IR_Motor
	ld.b	%d15, [%a15] 4
	call	__extendsfdf2
	ld.b	%d8, [%a15] 2
	movh.a	%a4, hi:.LC3
	.loc 1 333 0
	movh.a	%a12, hi:touch_driver
	.loc 1 332 0
	mov	%d6, %d15
	mov	%d4, 1
	mov	%d5, %d8
	lea	%a4, [%a4] lo:.LC3
	.loc 1 333 0
	lea	%a12, [%a12] lo:touch_driver
	.loc 1 332 0
	st.d	[%SP]0, %e2
	call	conio_ascii_printfxy
	.loc 1 333 0
	ld.w	%d15, [%a12] 64
	jnz.t	%d15, 3, .L57
	ret
.L57:
.LVL91:
.LBB62:
.LBB63:
	.loc 1 335 0
	movh.a	%a14, hi:conio_driver+224
	lea	%a14, [%a14] lo:conio_driver+224
	movh.a	%a2, hi:.LC23
	lea	%a2, [%a2] lo:.LC23
	mov.aa	%a3, %a14
	.loc 1 336 0
	ld.w	%d4, [%a13] lo:IR_Motor
	.loc 1 335 0
		# #chunks=9, chunksize=1, remains=0
	lea	%a4, 9-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
	.loc 1 336 0
	mov.d	%d2, %a14
	addi	%d15, %d2, 20
	call	__extendsfdf2
	mov.a	%a4, %d15
	.loc 1 337 0
	mov	%d15, 0
	.loc 1 336 0
	lea	%a5, [%A0] SM:.LC21
	st.d	[%SP]0, %e2
	call	sprintf
	.loc 1 337 0
	st.b	[%a14] 48, %d15
	.loc 1 338 0
	mov	%d15, 1
	st.w	[%a14] -4, %d15
	.loc 1 339 0
	ld.w	%d15, [%a15] 16
	st.w	[%a14] 40, %d15
	.loc 1 341 0
	ld.w	%d15, [%a12] 64
	.loc 1 340 0
	st.w	[%a14] 44, %d9
	.loc 1 341 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a12] 64, %d15
	ret
.LBE63:
.LBE62:
.LFE667:
	.size	menu_select_motor0, .-menu_select_motor0
.section .text.menu_select_srv_minus,"ax",@progbits
	.align 1
	.global	menu_select_srv_minus
	.type	menu_select_srv_minus, @function
menu_select_srv_minus:
.LFB681:
	.loc 1 507 0
.LVL92:
	.loc 1 508 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL93:
	.loc 1 507 0
	mov.aa	%a15, %a4
	.loc 1 508 0
	call	conio_ascii_textattr
.LVL94:
	.loc 1 509 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 511 0
	movh.a	%a15, hi:touch_driver
.LVL95:
	.loc 1 510 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC7
	.loc 1 511 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 510 0
	call	conio_ascii_cputs
	.loc 1 511 0
	ld.w	%d15, [%a15] 64
	jnz.t	%d15, 3, .L60
	ret
.L60:
.LBB66:
.LBB67:
	.loc 1 513 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 514 0
	movh.a	%a15, hi:IR_Srv
	ld.w	%d4, [%a15] lo:IR_Srv
	movh	%d15, 15693
	addi	%d15, %d15, -13107
	sub.f	%d4, %d4, %d15
	j	IR_setSrvAngle
.LBE67:
.LBE66:
.LFE681:
	.size	menu_select_srv_minus, .-menu_select_srv_minus
.section .text.menu_select_srv_plus,"ax",@progbits
	.align 1
	.global	menu_select_srv_plus
	.type	menu_select_srv_plus, @function
menu_select_srv_plus:
.LFB680:
	.loc 1 495 0
.LVL96:
	.loc 1 496 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL97:
	.loc 1 495 0
	mov.aa	%a15, %a4
	.loc 1 496 0
	call	conio_ascii_textattr
.LVL98:
	.loc 1 497 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 499 0
	movh.a	%a15, hi:touch_driver
.LVL99:
	.loc 1 498 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC8
	.loc 1 499 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 498 0
	call	conio_ascii_cputs
	.loc 1 499 0
	ld.w	%d15, [%a15] 64
	jnz.t	%d15, 3, .L63
	ret
.L63:
.LBB70:
.LBB71:
	.loc 1 501 0
	andn	%d15, %d15, ~(-9)
	.loc 1 502 0
	movh	%d4, 15693
	addi	%d4, %d4, -13107
	.loc 1 501 0
	st.w	[%a15] 64, %d15
	.loc 1 502 0
	movh.a	%a15, hi:IR_Srv
	ld.w	%d15, [%a15] lo:IR_Srv
	add.f	%d4, %d4, %d15
	j	IR_setSrvAngle
.LBE71:
.LBE70:
.LFE680:
	.size	menu_select_srv_plus, .-menu_select_srv_plus
.section .text.menu_select_motor1_minus,"ax",@progbits
	.align 1
	.global	menu_select_motor1_minus
	.type	menu_select_motor1_minus, @function
menu_select_motor1_minus:
.LFB676:
	.loc 1 449 0
.LVL100:
	.loc 1 450 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL101:
	.loc 1 449 0
	mov.aa	%a15, %a4
	.loc 1 450 0
	call	conio_ascii_textattr
.LVL102:
	.loc 1 451 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 453 0
	movh.a	%a15, hi:touch_driver
.LVL103:
	.loc 1 452 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC7
	.loc 1 453 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 452 0
	call	conio_ascii_cputs
	.loc 1 453 0
	ld.w	%d15, [%a15] 64
	jnz.t	%d15, 3, .L66
	ret
.L66:
.LBB74:
.LBB75:
	.loc 1 455 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 456 0
	movh.a	%a15, hi:IR_Motor
	lea	%a15, [%a15] lo:IR_Motor
	ld.w	%d4, [%a15] 4
	movh	%d15, 15693
	addi	%d15, %d15, -13107
	sub.f	%d4, %d4, %d15
	j	IR_setMotor1Vol
.LBE75:
.LBE74:
.LFE676:
	.size	menu_select_motor1_minus, .-menu_select_motor1_minus
.section .text.menu_select_motor1_plus,"ax",@progbits
	.align 1
	.global	menu_select_motor1_plus
	.type	menu_select_motor1_plus, @function
menu_select_motor1_plus:
.LFB675:
	.loc 1 437 0
.LVL104:
	.loc 1 438 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL105:
	.loc 1 437 0
	mov.aa	%a15, %a4
	.loc 1 438 0
	call	conio_ascii_textattr
.LVL106:
	.loc 1 439 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 441 0
	movh.a	%a15, hi:touch_driver
.LVL107:
	.loc 1 440 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC8
	.loc 1 441 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 440 0
	call	conio_ascii_cputs
	.loc 1 441 0
	ld.w	%d15, [%a15] 64
	jnz.t	%d15, 3, .L69
	ret
.L69:
.LBB78:
.LBB79:
	.loc 1 443 0
	andn	%d15, %d15, ~(-9)
	.loc 1 444 0
	movh	%d4, 15693
	addi	%d4, %d4, -13107
	.loc 1 443 0
	st.w	[%a15] 64, %d15
	.loc 1 444 0
	movh.a	%a15, hi:IR_Motor
	lea	%a15, [%a15] lo:IR_Motor
	ld.w	%d15, [%a15] 4
	add.f	%d4, %d4, %d15
	j	IR_setMotor1Vol
.LBE79:
.LBE78:
.LFE675:
	.size	menu_select_motor1_plus, .-menu_select_motor1_plus
.section .text.menu_select_motor1en,"ax",@progbits
	.align 1
	.global	menu_select_motor1en
	.type	menu_select_motor1en, @function
menu_select_motor1en:
.LFB671:
	.loc 1 381 0
.LVL108:
	.loc 1 382 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL109:
	.loc 1 381 0
	mov.aa	%a15, %a4
	.loc 1 382 0
	call	conio_ascii_textattr
.LVL110:
	.loc 1 383 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	.loc 1 384 0
	movh.a	%a12, hi:IR_MotorEn
	.loc 1 383 0
	mov	%d4, 1
	.loc 1 384 0
	lea	%a12, [%a12] lo:IR_MotorEn
	.loc 1 383 0
	call	conio_ascii_gotoxy
	.loc 1 384 0
	ld.bu	%d15, [%a12] 1
	.loc 1 385 0
	mov	%d4, 1
	.loc 1 384 0
	jnz	%d15, .L71
	.loc 1 385 0
	movh.a	%a4, hi:.LC13
	lea	%a4, [%a4] lo:.LC13
	call	conio_ascii_cputs
.L72:
	.loc 1 390 0
	movh.a	%a15, hi:touch_driver
.LVL111:
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L70
.LBB82:
.LBB83:
	.loc 1 392 0
	ld.bu	%d15, [%a12] 1
	jz	%d15, .L76
	.loc 1 396 0
	mov	%d4, 0
	call	IR_setMotor1En
.L75:
	.loc 1 398 0
	ld.w	%d15, [%a15] 64
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L70:
	ret
.LVL112:
.L71:
.LBE83:
.LBE82:
	.loc 1 388 0
	movh.a	%a4, hi:.LC14
	lea	%a4, [%a4] lo:.LC14
	call	conio_ascii_cputs
	j	.L72
.LVL113:
.L76:
.LBB85:
.LBB84:
	.loc 1 393 0
	mov	%d4, 1
	call	IR_setMotor1En
	j	.L75
.LBE84:
.LBE85:
.LFE671:
	.size	menu_select_motor1en, .-menu_select_motor1en
.section .text.menu_select_motor0_minus,"ax",@progbits
	.align 1
	.global	menu_select_motor0_minus
	.type	menu_select_motor0_minus, @function
menu_select_motor0_minus:
.LFB669:
	.loc 1 358 0
.LVL114:
	.loc 1 359 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL115:
	.loc 1 358 0
	mov.aa	%a15, %a4
	.loc 1 359 0
	call	conio_ascii_textattr
.LVL116:
	.loc 1 360 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 362 0
	movh.a	%a15, hi:touch_driver
.LVL117:
	.loc 1 361 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC7
	.loc 1 362 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 361 0
	call	conio_ascii_cputs
	.loc 1 362 0
	ld.w	%d15, [%a15] 64
	jnz.t	%d15, 3, .L79
	ret
.L79:
.LBB88:
.LBB89:
	.loc 1 364 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
	.loc 1 365 0
	movh.a	%a15, hi:IR_Motor
	ld.w	%d4, [%a15] lo:IR_Motor
	movh	%d15, 15693
	addi	%d15, %d15, -13107
	sub.f	%d4, %d4, %d15
	j	IR_setMotor0Vol
.LBE89:
.LBE88:
.LFE669:
	.size	menu_select_motor0_minus, .-menu_select_motor0_minus
.section .text.menu_select_motor0_plus,"ax",@progbits
	.align 1
	.global	menu_select_motor0_plus
	.type	menu_select_motor0_plus, @function
menu_select_motor0_plus:
.LFB668:
	.loc 1 346 0
.LVL118:
	.loc 1 347 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL119:
	.loc 1 346 0
	mov.aa	%a15, %a4
	.loc 1 347 0
	call	conio_ascii_textattr
.LVL120:
	.loc 1 348 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 350 0
	movh.a	%a15, hi:touch_driver
.LVL121:
	.loc 1 349 0
	mov	%d4, 1
	lea	%a4, [%A0] SM:.LC8
	.loc 1 350 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 349 0
	call	conio_ascii_cputs
	.loc 1 350 0
	ld.w	%d15, [%a15] 64
	jnz.t	%d15, 3, .L82
	ret
.L82:
.LBB92:
.LBB93:
	.loc 1 352 0
	andn	%d15, %d15, ~(-9)
	.loc 1 353 0
	movh	%d4, 15693
	addi	%d4, %d4, -13107
	.loc 1 352 0
	st.w	[%a15] 64, %d15
	.loc 1 353 0
	movh.a	%a15, hi:IR_Motor
	ld.w	%d15, [%a15] lo:IR_Motor
	add.f	%d4, %d4, %d15
	j	IR_setMotor0Vol
.LBE93:
.LBE92:
.LFE668:
	.size	menu_select_motor0_plus, .-menu_select_motor0_plus
.section .text.menu_select_motor0en,"ax",@progbits
	.align 1
	.global	menu_select_motor0en
	.type	menu_select_motor0en, @function
menu_select_motor0en:
.LFB664:
	.loc 1 290 0
.LVL122:
	.loc 1 291 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL123:
	.loc 1 290 0
	mov.aa	%a15, %a4
	.loc 1 291 0
	call	conio_ascii_textattr
.LVL124:
	.loc 1 292 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	.loc 1 293 0
	movh.a	%a12, hi:IR_MotorEn
	.loc 1 292 0
	call	conio_ascii_gotoxy
	.loc 1 293 0
	ld.bu	%d15, [%a12] lo:IR_MotorEn
	.loc 1 294 0
	mov	%d4, 1
	.loc 1 293 0
	jnz	%d15, .L84
	.loc 1 294 0
	movh.a	%a4, hi:.LC15
	lea	%a4, [%a4] lo:.LC15
	call	conio_ascii_cputs
.L85:
	.loc 1 299 0
	movh.a	%a15, hi:touch_driver
.LVL125:
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L83
.LBB96:
.LBB97:
	.loc 1 301 0
	ld.bu	%d15, [%a12] lo:IR_MotorEn
	jz	%d15, .L89
	.loc 1 305 0
	mov	%d4, 0
	call	IR_setMotor0En
.L88:
	.loc 1 307 0
	ld.w	%d15, [%a15] 64
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L83:
	ret
.LVL126:
.L84:
.LBE97:
.LBE96:
	.loc 1 297 0
	movh.a	%a4, hi:.LC16
	lea	%a4, [%a4] lo:.LC16
	call	conio_ascii_cputs
	j	.L85
.LVL127:
.L89:
.LBB99:
.LBB98:
	.loc 1 302 0
	mov	%d4, 1
	call	IR_setMotor0En
	j	.L88
.LBE98:
.LBE99:
.LFE664:
	.size	menu_select_motor0en, .-menu_select_motor0en
.section .text.menu_select_beeper,"ax",@progbits
	.align 1
	.global	menu_select_beeper
	.type	menu_select_beeper, @function
menu_select_beeper:
.LFB659:
	.loc 1 223 0
.LVL128:
	.loc 1 224 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL129:
	.loc 1 223 0
	mov.aa	%a15, %a4
	.loc 1 224 0
	call	conio_ascii_textattr
.LVL130:
	.loc 1 225 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	.loc 1 226 0
	movh.a	%a12, hi:IR_Beeper
	.loc 1 225 0
	call	conio_ascii_gotoxy
	.loc 1 226 0
	ld.bu	%d15, [%a12] lo:IR_Beeper
	.loc 1 227 0
	mov	%d4, 1
	.loc 1 226 0
	jnz	%d15, .L91
	.loc 1 227 0
	movh.a	%a4, hi:.LC17
	lea	%a4, [%a4] lo:.LC17
	call	conio_ascii_cputs
.L92:
	.loc 1 232 0
	movh.a	%a15, hi:touch_driver
.LVL131:
	lea	%a15, [%a15] lo:touch_driver
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L90
.LBB102:
.LBB103:
	.loc 1 234 0
	ld.bu	%d15, [%a12] lo:IR_Beeper
	jz	%d15, .L96
	.loc 1 238 0
	mov	%d4, 0
	call	IR_setBeeperOn
.L95:
	.loc 1 240 0
	ld.w	%d15, [%a15] 64
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L90:
	ret
.LVL132:
.L91:
.LBE103:
.LBE102:
	.loc 1 230 0
	movh.a	%a4, hi:.LC18
	lea	%a4, [%a4] lo:.LC18
	call	conio_ascii_cputs
	j	.L92
.LVL133:
.L96:
.LBB105:
.LBB104:
	.loc 1 235 0
	mov	%d4, 1
	call	IR_setBeeperOn
	j	.L95
.LBE104:
.LBE105:
.LFE659:
	.size	menu_select_beeper, .-menu_select_beeper
.section .text.menu_select,"ax",@progbits
	.align 1
	.global	menu_select
	.type	menu_select, @function
menu_select:
.LFB651:
	.loc 1 134 0
.LVL134:
	.loc 1 135 0
	ld.bu	%d5, [%a4] 1
	mov	%d4, 1
.LVL135:
	.loc 1 134 0
	mov.aa	%a15, %a4
	.loc 1 135 0
	call	conio_ascii_textattr
.LVL136:
	.loc 1 136 0
	ld.b	%d5, [%a15] 2
	ld.b	%d6, [%a15] 4
	mov	%d4, 1
	call	conio_ascii_gotoxy
	.loc 1 137 0
	lea	%a4, [%a15] 20
	.loc 1 138 0
	movh.a	%a15, hi:touch_driver
.LVL137:
	.loc 1 137 0
	mov	%d4, 1
	.loc 1 138 0
	lea	%a15, [%a15] lo:touch_driver
	.loc 1 137 0
	call	conio_ascii_cputs
.LVL138:
	.loc 1 138 0
	ld.w	%d15, [%a15] 64
	jz.t	%d15, 3, .L97
	.loc 1 140 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 64, %d15
.L97:
	ret
.LFE651:
	.size	menu_select, .-menu_select
.section .rodata,"a",@progbits
.LC24:
	.string	"Delta %1.3f [msec]"
.section .text.menu_display_cpusecdelta,"ax",@progbits
	.align 1
	.global	menu_display_cpusecdelta
	.type	menu_display_cpusecdelta, @function
menu_display_cpusecdelta:
.LFB660:
	.loc 1 245 0
.LVL139:
	.loc 1 246 0
	ld.bu	%d5, [%a4]0
	.loc 1 245 0
	mov.aa	%a15, %a4
	sub.a	%SP, 8
.LCFI13:
	.loc 1 246 0
	mov	%d4, 1
.LVL140:
	call	conio_ascii_textattr
.LVL141:
	.loc 1 247 0
	ld.b	%d8, [%a15] 2
	ld.b	%d15, [%a15] 4
	movh.a	%a15, hi:controlmenu
.LVL142:
	lea	%a15, [%a15] lo:controlmenu
	ld.w	%d4, [%a15] 4
	call	__extendsfdf2
	movh.a	%a4, hi:.LC24
	mov	%d4, 1
	mov	%d5, %d8
	mov	%d6, %d15
	lea	%a4, [%a4] lo:.LC24
	st.d	[%SP]0, %e2
	.loc 1 248 0
	j	conio_ascii_printfxy
.LFE660:
	.size	menu_display_cpusecdelta, .-menu_display_cpusecdelta
.section .text.menu_input_cpusecdelta,"ax",@progbits
	.align 1
	.global	menu_input_cpusecdelta
	.type	menu_input_cpusecdelta, @function
menu_input_cpusecdelta:
.LFB661:
	.loc 1 251 0
.LVL143:
	sub.a	%SP, 16
.LCFI14:
	.loc 1 254 0
	movh.a	%a4, hi:conio_driver+244
.LVL144:
	lea	%a15, [%SP] 12
	lea	%a4, [%a4] lo:conio_driver+244
	lea	%a5, [%A0] SM:.LC6
	st.a	[%SP]0, %a15
	call	sscanf
.LVL145:
	.loc 1 256 0
	mov	%d15, -1
	.loc 1 255 0
	jne	%d2, 1, .L101
	.loc 1 257 0
	movh.a	%a15, hi:controlmenu
.LVL146:
	ld.w	%d15, [%SP] 12
	lea	%a15, [%a15] lo:controlmenu
	st.w	[%a15] 4, %d15
	.loc 1 258 0
	mov	%d15, 0
.L101:
	.loc 1 259 0
	mov	%d2, %d15
.LVL147:
	ret
.LFE661:
	.size	menu_input_cpusecdelta, .-menu_input_cpusecdelta
.section .rodata,"a",@progbits
.LC25:
	.string	"Delta %f"
.section .srodata,"as",@progbits
.LC26:
	.string	"Delta "
.section .text.menu_select_cpusecdelta,"ax",@progbits
	.align 1
	.global	menu_select_cpusecdelta
	.type	menu_select_cpusecdelta, @function
menu_select_cpusecdelta:
.LFB662:
	.loc 1 262 0
.LVL148:
	.loc 1 263 0
	ld.bu	%d5, [%a4] 1
	.loc 1 262 0
	sub.a	%SP, 8
.LCFI15:
	.loc 1 262 0
	mov	%d9, %d4
	.loc 1 264 0
	movh.a	%a13, hi:controlmenu
	.loc 1 263 0
	mov	%d4, 1
.LVL149:
	.loc 1 262 0
	mov.aa	%a15, %a4
	.loc 1 264 0
	lea	%a13, [%a13] lo:controlmenu
	.loc 1 263 0
	call	conio_ascii_textattr
.LVL150:
	.loc 1 264 0
	ld.w	%d4, [%a13] 4
	ld.b	%d15, [%a15] 4
	call	__extendsfdf2
	ld.b	%d8, [%a15] 2
	movh.a	%a4, hi:.LC25
	.loc 1 265 0
	movh.a	%a12, hi:touch_driver
	.loc 1 264 0
	mov	%d6, %d15
	mov	%d4, 1
	mov	%d5, %d8
	lea	%a4, [%a4] lo:.LC25
	.loc 1 265 0
	lea	%a12, [%a12] lo:touch_driver
	.loc 1 264 0
	st.d	[%SP]0, %e2
	call	conio_ascii_printfxy
	.loc 1 265 0
	ld.w	%d15, [%a12] 64
	jnz.t	%d15, 3, .L105
	ret
.L105:
	.loc 1 267 0
	movh.a	%a14, hi:conio_driver+224
	lea	%a14, [%a14] lo:conio_driver+224
	lea	%a2, [%A0] SM:.LC26
	mov.aa	%a3, %a14
	.loc 1 268 0
	ld.w	%d4, [%a13] 4
	.loc 1 267 0
		# #chunks=7, chunksize=1, remains=0
	lea	%a4, 7-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
	.loc 1 268 0
	mov.d	%d2, %a14
	addi	%d15, %d2, 20
	call	__extendsfdf2
	mov.a	%a4, %d15
	.loc 1 270 0
	mov	%d15, 0
	.loc 1 268 0
	lea	%a5, [%A0] SM:.LC6
	st.d	[%SP]0, %e2
	call	sprintf
	.loc 1 270 0
	st.b	[%a14] 48, %d15
	.loc 1 271 0
	mov	%d15, 1
	st.w	[%a14] -4, %d15
	.loc 1 272 0
	ld.w	%d15, [%a15] 16
	st.w	[%a14] 40, %d15
	.loc 1 274 0
	ld.w	%d15, [%a12] 64
	.loc 1 273 0
	st.w	[%a14] 44, %d9
	.loc 1 274 0
	andn	%d15, %d15, ~(-9)
	st.w	[%a12] 64, %d15
	ret
.LFE662:
	.size	menu_select_cpusecdelta, .-menu_select_cpusecdelta
.section .text.showmenu,"ax",@progbits
	.align 1
	.global	showmenu
	.type	showmenu, @function
showmenu:
.LFB687:
	.loc 1 585 0
.LVL151:
	sub.a	%SP, 8
.LCFI16:
	.loc 1 585 0
	mov	%e8, %d5, %d4
	.loc 1 587 0
	mov	%d5, 5
.LVL152:
	mov	%d4, 1
.LVL153:
	st.a	[%SP] 4, %a4
	call	conio_ascii_textbackground
.LVL154:
	.loc 1 588 0
	mov	%d4, 1
	call	conio_ascii_clrscr
	.loc 1 589 0
	mov	%e4, 1
	call	conio_ascii_textcolor
	.loc 1 590 0
	mov	%d4, 1
	mov	%d5, 7
	call	conio_ascii_textbackground
.LVL155:
	.loc 1 591 0
	ld.a	%a4, [%SP] 4
	ld.a	%a2, [%a4] 8
	jz.a	%a2, .L106
	.loc 1 584 0
	lea	%a15, [%a4] 64
	.loc 1 591 0
	mov	%d15, 0
	.loc 1 595 0
	movh	%d10, hi:conio_driver
.LVL156:
.L112:
	.loc 1 593 0
	ld.b	%d2, [%a4] 2
	jlt	%d8, %d2, .L108
	.loc 1 593 0 is_stmt 0 discriminator 1
	ld.b	%d2, [%a4] 3
	jlt	%d2, %d8, .L108
	ld.b	%d2, [%a4] 4
	jeq	%d2, %d9, .L114
.L108:
	.loc 1 607 0 is_stmt 1
	ld.a	%a2, [%a4] 12
	.loc 1 608 0
	mov	%d4, %d15
	.loc 1 607 0
	jz.a	%a2, .L115
.L111:
	.loc 1 611 0
	calli	%a2
.L109:
	.loc 1 591 0
	mov.aa	%a4, %a15
	lea	%a15, [%a15] 64
	ld.a	%a2, [%a15] -56
	add	%d15, 1
.LVL157:
	jnz.a	%a2, .L112
.LVL158:
.L106:
	ret
.L115:
	.loc 1 608 0
	call	menu_display
	j	.L109
.L114:
	.loc 1 595 0
	mov.a	%a5, %d10
	lea	%a3, [%a5] lo:conio_driver
	ld.w	%d2, [%a3] 220
	jnz	%d2, .L109
	.loc 1 597 0
	ld.w	%d2, [%a4] 12
	.loc 1 598 0
	mov	%d4, %d15
	.loc 1 597 0
	jnz	%d2, .L111
	.loc 1 598 0
	call	menu_select
	j	.L109
.LFE687:
	.size	showmenu, .-showmenu
	.global	menulist
.section .rodata.menulist,"a",@progbits
	.align 2
	.type	menulist, @object
	.size	menulist, 1280
menulist:
	.byte	112
	.byte	12
	.byte	2
	.byte	31
	.byte	0
	.zero	3
	.word	menu_select_title
	.word	menu_display
	.word	menu_input
	.string	"[Infineon Racer with App-Kit XC237]"
	.zero	4
	.zero	4
	.byte	112
	.byte	12
	.byte	30
	.byte	39
	.byte	1
	.zero	3
	.word	menu_select_cpusec
	.word	menu_display_cpusec
	.word	menu_input
	.string	"cpusec"
	.zero	33
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	14
	.byte	3
	.zero	3
	.word	menu_select_testbasic
	.word	menu_display_testbasic
	.word	menu_input
	.string	"Test Basic: OFF"
	.zero	24
	.zero	4
	.byte	112
	.byte	12
	.byte	1
	.byte	9
	.byte	5
	.zero	3
	.word	menu_select_motor0en
	.word	menu_display_motor0en
	.word	menu_input
	.string	"M0En OFF"
	.zero	31
	.zero	4
	.byte	112
	.byte	12
	.byte	15
	.byte	27
	.byte	5
	.zero	3
	.word	menu_select_motor0
	.word	menu_display_motor0
	.word	menu_input_motor0
	.string	"M0Vol: "
	.zero	32
	.zero	4
	.byte	112
	.byte	12
	.byte	30
	.byte	32
	.byte	5
	.zero	3
	.word	menu_select_motor0_minus
	.word	menu_display
	.word	menu_input
	.string	"-<<"
	.zero	36
	.zero	4
	.byte	112
	.byte	12
	.byte	34
	.byte	36
	.byte	5
	.zero	3
	.word	menu_select_motor0_plus
	.word	menu_display
	.word	menu_input
	.string	">>+"
	.zero	36
	.zero	4
	.byte	112
	.byte	12
	.byte	1
	.byte	9
	.byte	7
	.zero	3
	.word	menu_select_motor1en
	.word	menu_display_motor1en
	.word	menu_input
	.string	"M1En OFF"
	.zero	31
	.zero	4
	.byte	112
	.byte	12
	.byte	15
	.byte	27
	.byte	7
	.zero	3
	.word	menu_select_motor1
	.word	menu_display_motor1
	.word	menu_input_motor1
	.string	"M1Vol: "
	.zero	32
	.zero	4
	.byte	112
	.byte	12
	.byte	30
	.byte	32
	.byte	7
	.zero	3
	.word	menu_select_motor1_minus
	.word	menu_display
	.word	menu_input
	.string	"-<<"
	.zero	36
	.zero	4
	.byte	112
	.byte	12
	.byte	34
	.byte	36
	.byte	7
	.zero	3
	.word	menu_select_motor1_plus
	.word	menu_display
	.word	menu_input
	.string	">>+"
	.zero	36
	.zero	4
	.byte	112
	.byte	12
	.byte	1
	.byte	9
	.byte	9
	.zero	3
	.word	menu_select_beeper
	.word	menu_display_beeper
	.word	menu_input
	.string	"Beep Off"
	.zero	31
	.zero	4
	.byte	112
	.byte	12
	.byte	15
	.byte	27
	.byte	9
	.zero	3
	.word	menu_select_srv
	.word	menu_display_srv
	.word	menu_input_srv
	.string	"Servo: "
	.zero	32
	.zero	4
	.byte	112
	.byte	12
	.byte	30
	.byte	32
	.byte	9
	.zero	3
	.word	menu_select_srv_minus
	.word	menu_display
	.word	menu_input
	.string	"-<<"
	.zero	36
	.zero	4
	.byte	112
	.byte	12
	.byte	34
	.byte	36
	.byte	9
	.zero	3
	.word	menu_select_srv_plus
	.word	menu_display
	.word	menu_input
	.string	">>+"
	.zero	36
	.zero	4
	.byte	112
	.byte	12
	.byte	0
	.byte	16
	.byte	17
	.zero	3
	.word	menu_select_background_light
	.word	menu_display_background_light
	.word	menu_input_background_light
	.string	"Background Light: "
	.zero	21
	.zero	4
	.byte	112
	.byte	12
	.byte	30
	.byte	32
	.byte	17
	.zero	3
	.word	menu_select_background_lightminus
	.word	menu_display
	.word	menu_input
	.string	"-<<"
	.zero	36
	.zero	4
	.byte	112
	.byte	12
	.byte	34
	.byte	36
	.byte	17
	.zero	3
	.word	menu_select_background_lightplus
	.word	menu_display
	.word	menu_input
	.string	">>+"
	.zero	36
	.zero	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	3
	.word	0
	.word	0
	.word	0
	.string	" "
	.zero	38
	.zero	4
	.zero	64
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
	.uaword	.LFB652
	.uaword	.LFE652-.LFB652
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB650
	.uaword	.LFE650-.LFB650
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB682
	.uaword	.LFE682-.LFB682
	.byte	0x4
	.uaword	.LCFI0-.LFB682
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB677
	.uaword	.LFE677-.LFB677
	.byte	0x4
	.uaword	.LCFI1-.LFB677
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB672
	.uaword	.LFE672-.LFB672
	.byte	0x4
	.uaword	.LCFI2-.LFB672
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB665
	.uaword	.LFE665-.LFB665
	.byte	0x4
	.uaword	.LCFI3-.LFB665
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB654
	.uaword	.LFE654-.LFB654
	.byte	0x4
	.uaword	.LCFI4-.LFB654
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB683
	.uaword	.LFE683-.LFB683
	.byte	0x4
	.uaword	.LCFI5-.LFB683
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB678
	.uaword	.LFE678-.LFB678
	.byte	0x4
	.uaword	.LCFI6-.LFB678
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB673
	.uaword	.LFE673-.LFB673
	.byte	0x4
	.uaword	.LCFI7-.LFB673
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB666
	.uaword	.LFE666-.LFB666
	.byte	0x4
	.uaword	.LCFI8-.LFB666
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB686
	.uaword	.LFE686-.LFB686
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB685
	.uaword	.LFE685-.LFB685
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB657
	.uaword	.LFE657-.LFB657
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB655
	.uaword	.LFE655-.LFB655
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB653
	.uaword	.LFE653-.LFB653
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB670
	.uaword	.LFE670-.LFB670
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB663
	.uaword	.LFE663-.LFB663
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB658
	.uaword	.LFE658-.LFB658
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB656
	.uaword	.LFE656-.LFB656
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB684
	.uaword	.LFE684-.LFB684
	.byte	0x4
	.uaword	.LCFI9-.LFB684
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB679
	.uaword	.LFE679-.LFB679
	.byte	0x4
	.uaword	.LCFI10-.LFB679
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB674
	.uaword	.LFE674-.LFB674
	.byte	0x4
	.uaword	.LCFI11-.LFB674
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB667
	.uaword	.LFE667-.LFB667
	.byte	0x4
	.uaword	.LCFI12-.LFB667
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB681
	.uaword	.LFE681-.LFB681
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB680
	.uaword	.LFE680-.LFB680
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB676
	.uaword	.LFE676-.LFB676
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB675
	.uaword	.LFE675-.LFB675
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB671
	.uaword	.LFE671-.LFB671
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB669
	.uaword	.LFE669-.LFB669
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB668
	.uaword	.LFE668-.LFB668
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB664
	.uaword	.LFE664-.LFB664
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB659
	.uaword	.LFE659-.LFB659
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB651
	.uaword	.LFE651-.LFB651
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB660
	.uaword	.LFE660-.LFB660
	.byte	0x4
	.uaword	.LCFI13-.LFB660
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB661
	.uaword	.LFE661-.LFB661
	.byte	0x4
	.uaword	.LCFI14-.LFB661
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB662
	.uaword	.LFE662-.LFB662
	.byte	0x4
	.uaword	.LCFI15-.LFB662
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB687
	.uaword	.LFE687-.LFB687
	.byte	0x4
	.uaword	.LCFI16-.LFB687
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE74:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/0_AppSw/Config/Common/conio_cfg.h"
	.file 4 "./0_Src/2_CDrv/Tricore/Tft/conio_tft.h"
	.file 5 "./0_Src/2_CDrv/Tricore/Tft/touch.h"
	.file 6 "0_Src/0_AppSw/Tricore/TftApp/tft_app.h"
	.file 7 "./0_Src/0_AppSw/Tricore/Main/BasicPort.h"
	.file 8 "./0_Src/0_AppSw/Tricore/Main/BasicGtmTom.h"
	.file 9 "./0_Src/0_AppSw/Tricore/Main/InfineonRacer.h"
	.file 10 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
	.file 11 "./0_Src/0_AppSw/Tricore/TftApp/background_light.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1bfd
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/TftApp/menu.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x180
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
	.byte	0x2
	.byte	0x58
	.uaword	0xce
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x59
	.uaword	0xea
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x109
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
	.uaword	0x99
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0xa5
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x157
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
	.uaword	0xea
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
	.byte	0x3
	.byte	0xa
	.uaword	0x1de
	.uleb128 0x5
	.string	"DIALOGOFF"
	.sleb128 0
	.uleb128 0x5
	.string	"KEYBOARDON"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"TDIALOGMODE"
	.byte	0x3
	.byte	0xd
	.uaword	0x1bc
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0x1e
	.uaword	0x252
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
	.byte	0x3
	.byte	0x25
	.uaword	0x1f1
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.byte	0x2a
	.uaword	0x2db
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
	.byte	0x3
	.byte	0x31
	.uaword	0x266
	.uleb128 0x6
	.string	"DISPLAY_INFO"
	.byte	0x20
	.byte	0x3
	.byte	0x34
	.uaword	0x37e
	.uleb128 0x7
	.string	"pdisplay"
	.byte	0x3
	.byte	0x36
	.uaword	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"pdisplaycolor"
	.byte	0x3
	.byte	0x37
	.uaword	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"mode"
	.byte	0x3
	.byte	0x38
	.uaword	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"color"
	.byte	0x3
	.byte	0x39
	.uaword	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"maxx"
	.byte	0x3
	.byte	0x3a
	.uaword	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"maxy"
	.byte	0x3
	.byte	0x3b
	.uaword	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"x"
	.byte	0x3
	.byte	0x3c
	.uaword	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x3
	.byte	0x3d
	.uaword	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xdd
	.uleb128 0x3
	.string	"TDISPLAY_INFO"
	.byte	0x3
	.byte	0x3e
	.uaword	0x2e8
	.uleb128 0x9
	.uaword	0xdd
	.uaword	0x3a9
	.uleb128 0xa
	.uaword	0xa5
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.string	"DISPLAYENTRY"
	.byte	0x40
	.byte	0x4
	.byte	0x8b
	.uaword	0x46b
	.uleb128 0x7
	.string	"color_display"
	.byte	0x4
	.byte	0x8d
	.uaword	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"color_select"
	.byte	0x4
	.byte	0x8f
	.uaword	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.string	"xmin"
	.byte	0x4
	.byte	0x90
	.uaword	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"xmax"
	.byte	0x4
	.byte	0x91
	.uaword	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.string	"y"
	.byte	0x4
	.byte	0x92
	.uaword	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"select"
	.byte	0x4
	.byte	0x93
	.uaword	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"display"
	.byte	0x4
	.byte	0x94
	.uaword	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"input"
	.byte	0x4
	.byte	0x95
	.uaword	0x49d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"text"
	.byte	0x4
	.byte	0x96
	.uaword	0x399
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"symbol"
	.byte	0x4
	.byte	0x97
	.uaword	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.uaword	0x47c
	.uleb128 0xc
	.uaword	0x12c
	.uleb128 0xc
	.uaword	0x47c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x3a9
	.uleb128 0x8
	.byte	0x4
	.uaword	0x46b
	.uleb128 0xd
	.byte	0x1
	.uaword	0x12c
	.uaword	0x49d
	.uleb128 0xc
	.uaword	0x12c
	.uleb128 0xc
	.uaword	0x47c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x488
	.uleb128 0x3
	.string	"TDISPLAYENTRY"
	.byte	0x4
	.byte	0x98
	.uaword	0x3a9
	.uleb128 0xe
	.string	"CONIO_DRIVER"
	.uahalf	0x114
	.byte	0x4
	.byte	0x9d
	.uaword	0x5ff
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x4
	.byte	0x9f
	.uaword	0x5ff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"pstdlist"
	.byte	0x4
	.byte	0xa0
	.uaword	0x5ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"display"
	.byte	0x4
	.byte	0xa1
	.uaword	0x605
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"pdasmirror"
	.byte	0x4
	.byte	0xa2
	.uaword	0x615
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x7
	.string	"dasstatus"
	.byte	0x4
	.byte	0xa3
	.uaword	0x13a
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x7
	.string	"dasdisplaymode"
	.byte	0x4
	.byte	0xa4
	.uaword	0x252
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x7
	.string	"cursorstatus"
	.byte	0x4
	.byte	0xa5
	.uaword	0x12c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x7
	.string	"displaymode"
	.byte	0x4
	.byte	0xa6
	.uaword	0x252
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x7
	.string	"dialogmode"
	.byte	0x4
	.byte	0xa7
	.uaword	0x1de
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x7
	.string	"scanfdescr"
	.byte	0x4
	.byte	0xa8
	.uaword	0x61b
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x7
	.string	"scanftext"
	.byte	0x4
	.byte	0xa9
	.uaword	0x61b
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x7
	.string	"input"
	.byte	0x4
	.byte	0xaa
	.uaword	0x640
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x7
	.string	"inputid"
	.byte	0x4
	.byte	0xab
	.uaword	0x12c
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x7
	.string	"scanfx"
	.byte	0x4
	.byte	0xac
	.uaword	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x7
	.string	"blinky"
	.byte	0x4
	.byte	0xad
	.uaword	0xdd
	.byte	0x3
	.byte	0x23
	.uleb128 0x111
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x4a3
	.uleb128 0x9
	.uaword	0x384
	.uaword	0x615
	.uleb128 0xa
	.uaword	0xa5
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x13a
	.uleb128 0x9
	.uaword	0xdd
	.uaword	0x62b
	.uleb128 0xa
	.uaword	0xa5
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x12c
	.uaword	0x640
	.uleb128 0xc
	.uaword	0x12c
	.uleb128 0xc
	.uaword	0x5ff
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x62b
	.uleb128 0x3
	.string	"TCONIO_DRIVER"
	.byte	0x4
	.byte	0xae
	.uaword	0x4b8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.byte	0xe
	.uaword	0x6b7
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
	.byte	0x5
	.byte	0x15
	.uaword	0x65b
	.uleb128 0x6
	.string	"TOUCH_DRIVER"
	.byte	0x44
	.byte	0x5
	.byte	0x42
	.uaword	0x855
	.uleb128 0x7
	.string	"time"
	.byte	0x5
	.byte	0x44
	.uaword	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"prev_time"
	.byte	0x5
	.byte	0x45
	.uaword	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"prev_time_down"
	.byte	0x5
	.byte	0x46
	.uaword	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"bounce_limit"
	.byte	0x5
	.byte	0x47
	.uaword	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"bounce_cnt"
	.byte	0x5
	.byte	0x48
	.uaword	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"x"
	.byte	0x5
	.byte	0x49
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"prev_x"
	.byte	0x5
	.byte	0x4a
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x7
	.string	"prev_x_down"
	.byte	0x5
	.byte	0x4b
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"y"
	.byte	0x5
	.byte	0x4c
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x7
	.string	"prev_y"
	.byte	0x5
	.byte	0x4d
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"prev_y_down"
	.byte	0x5
	.byte	0x4e
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x7
	.string	"cnt"
	.byte	0x5
	.byte	0x4f
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"xdisp"
	.byte	0x5
	.byte	0x50
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x7
	.string	"ydisp"
	.byte	0x5
	.byte	0x51
	.uaword	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"xmin"
	.byte	0x5
	.byte	0x52
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"xmax"
	.byte	0x5
	.byte	0x53
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"ymin"
	.byte	0x5
	.byte	0x54
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"ymax"
	.byte	0x5
	.byte	0x55
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"status"
	.byte	0x5
	.byte	0x56
	.uaword	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"prev_status"
	.byte	0x5
	.byte	0x57
	.uaword	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.string	"touchmode"
	.byte	0x5
	.byte	0x58
	.uaword	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x3
	.string	"TTOUCH_DRIVER"
	.byte	0x5
	.byte	0x59
	.uaword	0x6cc
	.uleb128 0x6
	.string	"CONTROLMENU"
	.byte	0x8
	.byte	0x6
	.byte	0xc
	.uaword	0x8ae
	.uleb128 0x7
	.string	"cpuseconds"
	.byte	0x6
	.byte	0xe
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"cpusecondsdelta"
	.byte	0x6
	.byte	0xf
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"TCONTROLMENU"
	.byte	0x6
	.byte	0x10
	.uaword	0x86a
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.byte	0x4a
	.uaword	0x8f9
	.uleb128 0x7
	.string	"Motor0Enable"
	.byte	0x7
	.byte	0x4b
	.uaword	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Motor1Enable"
	.byte	0x7
	.byte	0x4c
	.uaword	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.string	"IR_MotorEn_t"
	.byte	0x7
	.byte	0x4d
	.uaword	0x8c2
	.uleb128 0x10
	.byte	0x8
	.byte	0x8
	.byte	0x3e
	.uaword	0x93e
	.uleb128 0x7
	.string	"Motor0Vol"
	.byte	0x8
	.byte	0x3f
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Motor1Vol"
	.byte	0x8
	.byte	0x40
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IR_Motor_t"
	.byte	0x8
	.byte	0x41
	.uaword	0x90d
	.uleb128 0x10
	.byte	0x4
	.byte	0x8
	.byte	0x43
	.uaword	0x969
	.uleb128 0x7
	.string	"Angle"
	.byte	0x8
	.byte	0x44
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"IR_Srv_t"
	.byte	0x8
	.byte	0x45
	.uaword	0x950
	.uleb128 0x10
	.byte	0xc
	.byte	0x8
	.byte	0x47
	.uaword	0x9b4
	.uleb128 0x7
	.string	"On"
	.byte	0x8
	.byte	0x48
	.uaword	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Frequency"
	.byte	0x8
	.byte	0x49
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"Volume"
	.byte	0x8
	.byte	0x4a
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.string	"IR_Beeper_t"
	.byte	0x8
	.byte	0x4b
	.uaword	0x979
	.uleb128 0x10
	.byte	0x8
	.byte	0x9
	.byte	0x1a
	.uaword	0x9f4
	.uleb128 0x7
	.string	"dummy"
	.byte	0x9
	.byte	0x1b
	.uaword	0x148
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"basicTest"
	.byte	0x9
	.byte	0x1c
	.uaword	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x9
	.byte	0x1d
	.uaword	0x9c7
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_background_lightminus"
	.byte	0x1
	.uahalf	0x23a
	.byte	0x1
	.byte	0x1
	.uaword	0xa51
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_background_lightplus"
	.byte	0x1
	.uahalf	0x22d
	.byte	0x1
	.byte	0x1
	.uaword	0xa96
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x22d
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x22d
	.uaword	0x5ff
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"menu_select_testbasic"
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.byte	0x1
	.uaword	0xacd
	.uleb128 0x15
	.string	"ind"
	.byte	0x1
	.byte	0xbd
	.uaword	0x12c
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xbd
	.uaword	0x5ff
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"menu_select_cpusec"
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.byte	0x1
	.uaword	0xb01
	.uleb128 0x15
	.string	"ind"
	.byte	0x1
	.byte	0xa6
	.uaword	0x12c
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa6
	.uaword	0x5ff
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"menu_select_title"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.uaword	0xb34
	.uleb128 0x15
	.string	"ind"
	.byte	0x1
	.byte	0x95
	.uaword	0x12c
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0x95
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_display_motor1en"
	.byte	0x1
	.uahalf	0x171
	.byte	0x1
	.byte	0x1
	.uaword	0xb6e
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x171
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_display_motor0en"
	.byte	0x1
	.uahalf	0x116
	.byte	0x1
	.byte	0x1
	.uaword	0xba8
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x116
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x116
	.uaword	0x5ff
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"menu_display_beeper"
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.byte	0x1
	.uaword	0xbdd
	.uleb128 0x15
	.string	"ind"
	.byte	0x1
	.byte	0xd3
	.uaword	0x12c
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xd3
	.uaword	0x5ff
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"menu_display_testbasic"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.byte	0x1
	.uaword	0xc15
	.uleb128 0x15
	.string	"ind"
	.byte	0x1
	.byte	0xb2
	.uaword	0x12c
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb2
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_background_light"
	.byte	0x1
	.uahalf	0x21d
	.byte	0x1
	.byte	0x1
	.uaword	0xc56
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_srv"
	.byte	0x1
	.uahalf	0x1de
	.byte	0x1
	.byte	0x1
	.uaword	0xc8a
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x1de
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1de
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_motor1"
	.byte	0x1
	.uahalf	0x1a4
	.byte	0x1
	.byte	0x1
	.uaword	0xcc1
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x1a4
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1a4
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_motor0"
	.byte	0x1
	.uahalf	0x149
	.byte	0x1
	.byte	0x1
	.uaword	0xcf8
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x149
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x149
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_srv_minus"
	.byte	0x1
	.uahalf	0x1fa
	.byte	0x1
	.byte	0x1
	.uaword	0xd32
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1fa
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_srv_plus"
	.byte	0x1
	.uahalf	0x1ee
	.byte	0x1
	.byte	0x1
	.uaword	0xd6b
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1ee
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_motor1_minus"
	.byte	0x1
	.uahalf	0x1c0
	.byte	0x1
	.byte	0x1
	.uaword	0xda8
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x1c0
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1c0
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_motor1_plus"
	.byte	0x1
	.uahalf	0x1b4
	.byte	0x1
	.byte	0x1
	.uaword	0xde4
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1b4
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_motor1en"
	.byte	0x1
	.uahalf	0x17c
	.byte	0x1
	.byte	0x1
	.uaword	0xe1d
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_motor0_minus"
	.byte	0x1
	.uahalf	0x165
	.byte	0x1
	.byte	0x1
	.uaword	0xe5a
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x165
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x165
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_motor0_plus"
	.byte	0x1
	.uahalf	0x159
	.byte	0x1
	.byte	0x1
	.uaword	0xe96
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x159
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x159
	.uaword	0x5ff
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"menu_select_motor0en"
	.byte	0x1
	.uahalf	0x121
	.byte	0x1
	.byte	0x1
	.uaword	0xecf
	.uleb128 0x12
	.string	"ind"
	.byte	0x1
	.uahalf	0x121
	.uaword	0x12c
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x121
	.uaword	0x5ff
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"menu_select_beeper"
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.byte	0x1
	.uaword	0xf03
	.uleb128 0x15
	.string	"ind"
	.byte	0x1
	.byte	0xde
	.uaword	0x12c
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x1
	.byte	0xde
	.uaword	0x5ff
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"menu_input"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.uaword	0x12c
	.uaword	.LFB652
	.uaword	.LFE652
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xf41
	.uleb128 0x18
	.string	"ind"
	.byte	0x1
	.byte	0x90
	.uaword	0x12c
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.byte	0x90
	.uaword	0x5ff
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"menu_display"
	.byte	0x1
	.byte	0x7e
	.byte	0x1
	.uaword	.LFB650
	.uaword	.LFE650
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xf81
	.uleb128 0x1b
	.string	"ind"
	.byte	0x1
	.byte	0x7e
	.uaword	0x12c
	.uaword	.LLST0
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0x7e
	.uaword	0x5ff
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"menu_display_background_light"
	.byte	0x1
	.uahalf	0x206
	.byte	0x1
	.uaword	.LFB682
	.uaword	.LFE682
	.uaword	.LLST2
	.uaword	0xfd6
	.uleb128 0x1e
	.string	"ind"
	.byte	0x1
	.uahalf	0x206
	.uaword	0x12c
	.uaword	.LLST3
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x206
	.uaword	0x5ff
	.uaword	.LLST4
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"menu_display_srv"
	.byte	0x1
	.uahalf	0x1cc
	.byte	0x1
	.uaword	.LFB677
	.uaword	.LFE677
	.uaword	.LLST5
	.uaword	0x101e
	.uleb128 0x1e
	.string	"ind"
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x12c
	.uaword	.LLST6
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x5ff
	.uaword	.LLST7
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"menu_display_motor1"
	.byte	0x1
	.uahalf	0x192
	.byte	0x1
	.uaword	.LFB672
	.uaword	.LFE672
	.uaword	.LLST8
	.uaword	0x1069
	.uleb128 0x1e
	.string	"ind"
	.byte	0x1
	.uahalf	0x192
	.uaword	0x12c
	.uaword	.LLST9
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x192
	.uaword	0x5ff
	.uaword	.LLST10
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"menu_display_motor0"
	.byte	0x1
	.uahalf	0x137
	.byte	0x1
	.uaword	.LFB665
	.uaword	.LFE665
	.uaword	.LLST11
	.uaword	0x10b4
	.uleb128 0x1e
	.string	"ind"
	.byte	0x1
	.uahalf	0x137
	.uaword	0x12c
	.uaword	.LLST12
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x137
	.uaword	0x5ff
	.uaword	.LLST13
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"menu_display_cpusec"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.uaword	.LFB654
	.uaword	.LFE654
	.uaword	.LLST14
	.uaword	0x10fc
	.uleb128 0x1b
	.string	"ind"
	.byte	0x1
	.byte	0xa0
	.uaword	0x12c
	.uaword	.LLST15
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa0
	.uaword	0x5ff
	.uaword	.LLST16
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"menu_input_background_light"
	.byte	0x1
	.uahalf	0x20c
	.byte	0x1
	.uaword	0x12c
	.uaword	.LFB683
	.uaword	.LFE683
	.uaword	.LLST17
	.uaword	0x1173
	.uleb128 0x1e
	.string	"ind"
	.byte	0x1
	.uahalf	0x20c
	.uaword	0x12c
	.uaword	.LLST18
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x20c
	.uaword	0x5ff
	.uaword	.LLST19
	.uleb128 0x22
	.string	"temp"
	.byte	0x1
	.uahalf	0x20e
	.uaword	0x13a
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x23
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x20f
	.uaword	0x12c
	.uaword	.LLST20
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"menu_input_srv"
	.byte	0x1
	.uahalf	0x1d2
	.byte	0x1
	.uaword	0x12c
	.uaword	.LFB678
	.uaword	.LFE678
	.uaword	.LLST21
	.uaword	0x11dd
	.uleb128 0x1e
	.string	"ind"
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x12c
	.uaword	.LLST22
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1d2
	.uaword	0x5ff
	.uaword	.LLST23
	.uleb128 0x22
	.string	"temp"
	.byte	0x1
	.uahalf	0x1d4
	.uaword	0x148
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x23
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x12c
	.uaword	.LLST24
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"menu_input_motor1"
	.byte	0x1
	.uahalf	0x198
	.byte	0x1
	.uaword	0x12c
	.uaword	.LFB673
	.uaword	.LFE673
	.uaword	.LLST25
	.uaword	0x124a
	.uleb128 0x1e
	.string	"ind"
	.byte	0x1
	.uahalf	0x198
	.uaword	0x12c
	.uaword	.LLST26
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x198
	.uaword	0x5ff
	.uaword	.LLST27
	.uleb128 0x22
	.string	"temp"
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x148
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x23
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x12c
	.uaword	.LLST28
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"menu_input_motor0"
	.byte	0x1
	.uahalf	0x13d
	.byte	0x1
	.uaword	0x12c
	.uaword	.LFB666
	.uaword	.LFE666
	.uaword	.LLST29
	.uaword	0x12b7
	.uleb128 0x1e
	.string	"ind"
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x12c
	.uaword	.LLST30
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x5ff
	.uaword	.LLST31
	.uleb128 0x22
	.string	"temp"
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x148
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x23
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x140
	.uaword	0x12c
	.uaword	.LLST32
	.byte	0
	.uleb128 0x24
	.uaword	0xa0b
	.uaword	.LFB686
	.uaword	.LFE686
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1303
	.uleb128 0x25
	.uaword	0xa38
	.uaword	.LLST33
	.uleb128 0x25
	.uaword	0xa44
	.uaword	.LLST34
	.uleb128 0x26
	.uaword	0xa0b
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.uahalf	0x23a
	.uleb128 0x27
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x28
	.uaword	0xa44
	.uleb128 0x28
	.uaword	0xa38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xa51
	.uaword	.LFB685
	.uaword	.LFE685
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x134f
	.uleb128 0x25
	.uaword	0xa7d
	.uaword	.LLST35
	.uleb128 0x25
	.uaword	0xa89
	.uaword	.LLST36
	.uleb128 0x26
	.uaword	0xa51
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.uahalf	0x22d
	.uleb128 0x27
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x28
	.uaword	0xa89
	.uleb128 0x28
	.uaword	0xa7d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xa96
	.uaword	.LFB657
	.uaword	.LFE657
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1396
	.uleb128 0x25
	.uaword	0xab6
	.uaword	.LLST37
	.uleb128 0x25
	.uaword	0xac1
	.uaword	.LLST38
	.uleb128 0x29
	.uaword	0xa96
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xbd
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x28
	.uaword	0xac1
	.uleb128 0x28
	.uaword	0xab6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xacd
	.uaword	.LFB655
	.uaword	.LFE655
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x13e1
	.uleb128 0x25
	.uaword	0xaea
	.uaword	.LLST39
	.uleb128 0x25
	.uaword	0xaf5
	.uaword	.LLST40
	.uleb128 0x2b
	.uaword	0xacd
	.uaword	.LBB18
	.uaword	.LBE18
	.byte	0x1
	.byte	0xa6
	.uleb128 0x27
	.uaword	.LBB19
	.uaword	.LBE19
	.uleb128 0x28
	.uaword	0xaf5
	.uleb128 0x28
	.uaword	0xaea
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xb01
	.uaword	.LFB653
	.uaword	.LFE653
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x142c
	.uleb128 0x25
	.uaword	0xb1d
	.uaword	.LLST41
	.uleb128 0x25
	.uaword	0xb28
	.uaword	.LLST42
	.uleb128 0x2b
	.uaword	0xb01
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.byte	0x95
	.uleb128 0x27
	.uaword	.LBB23
	.uaword	.LBE23
	.uleb128 0x28
	.uaword	0xb28
	.uleb128 0x28
	.uaword	0xb1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xb34
	.uaword	.LFB670
	.uaword	.LFE670
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1474
	.uleb128 0x25
	.uaword	0xb55
	.uaword	.LLST43
	.uleb128 0x25
	.uaword	0xb61
	.uaword	.LLST44
	.uleb128 0x2c
	.uaword	0xb34
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x171
	.uleb128 0x28
	.uaword	0xb61
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x28
	.uaword	0xb55
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xb6e
	.uaword	.LFB663
	.uaword	.LFE663
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x14bc
	.uleb128 0x25
	.uaword	0xb8f
	.uaword	.LLST45
	.uleb128 0x25
	.uaword	0xb9b
	.uaword	.LLST46
	.uleb128 0x2c
	.uaword	0xb6e
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x116
	.uleb128 0x28
	.uaword	0xb9b
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x28
	.uaword	0xb8f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xba8
	.uaword	.LFB658
	.uaword	.LFE658
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1503
	.uleb128 0x25
	.uaword	0xbc6
	.uaword	.LLST47
	.uleb128 0x25
	.uaword	0xbd1
	.uaword	.LLST48
	.uleb128 0x29
	.uaword	0xba8
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xd3
	.uleb128 0x28
	.uaword	0xbd1
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x28
	.uaword	0xbc6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xbdd
	.uaword	.LFB656
	.uaword	.LFE656
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x154a
	.uleb128 0x25
	.uaword	0xbfe
	.uaword	.LLST49
	.uleb128 0x25
	.uaword	0xc09
	.uaword	.LLST50
	.uleb128 0x29
	.uaword	0xbdd
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0xb2
	.uleb128 0x28
	.uaword	0xc09
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0xd8
	.uleb128 0x28
	.uaword	0xbfe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xc15
	.uaword	.LFB684
	.uaword	.LFE684
	.uaword	.LLST51
	.uaword	0x1593
	.uleb128 0x25
	.uaword	0xc3d
	.uaword	.LLST52
	.uleb128 0x25
	.uaword	0xc49
	.uaword	.LLST53
	.uleb128 0x26
	.uaword	0xc15
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x21d
	.uleb128 0x2e
	.uaword	0xc49
	.byte	0x1
	.byte	0x6f
	.uleb128 0x25
	.uaword	0xc3d
	.uaword	.LLST54
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xc56
	.uaword	.LFB679
	.uaword	.LFE679
	.uaword	.LLST55
	.uaword	0x15da
	.uleb128 0x25
	.uaword	0xc71
	.uaword	.LLST56
	.uleb128 0x25
	.uaword	0xc7d
	.uaword	.LLST57
	.uleb128 0x26
	.uaword	0xc56
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.uahalf	0x1de
	.uleb128 0x2e
	.uaword	0xc7d
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	0xc71
	.byte	0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xc8a
	.uaword	.LFB674
	.uaword	.LFE674
	.uaword	.LLST58
	.uaword	0x1621
	.uleb128 0x25
	.uaword	0xca8
	.uaword	.LLST59
	.uleb128 0x25
	.uaword	0xcb4
	.uaword	.LLST60
	.uleb128 0x26
	.uaword	0xc8a
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x1a4
	.uleb128 0x2e
	.uaword	0xcb4
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	0xca8
	.byte	0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0xcc1
	.uaword	.LFB667
	.uaword	.LFE667
	.uaword	.LLST61
	.uaword	0x1668
	.uleb128 0x25
	.uaword	0xcdf
	.uaword	.LLST62
	.uleb128 0x25
	.uaword	0xceb
	.uaword	.LLST63
	.uleb128 0x26
	.uaword	0xcc1
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.uahalf	0x149
	.uleb128 0x2e
	.uaword	0xceb
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2e
	.uaword	0xcdf
	.byte	0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xcf8
	.uaword	.LFB681
	.uaword	.LFE681
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x16b4
	.uleb128 0x25
	.uaword	0xd19
	.uaword	.LLST64
	.uleb128 0x25
	.uaword	0xd25
	.uaword	.LLST65
	.uleb128 0x26
	.uaword	0xcf8
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.uahalf	0x1fa
	.uleb128 0x27
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x28
	.uaword	0xd25
	.uleb128 0x28
	.uaword	0xd19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xd32
	.uaword	.LFB680
	.uaword	.LFE680
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1700
	.uleb128 0x25
	.uaword	0xd52
	.uaword	.LLST66
	.uleb128 0x25
	.uaword	0xd5e
	.uaword	.LLST67
	.uleb128 0x26
	.uaword	0xd32
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.uahalf	0x1ee
	.uleb128 0x27
	.uaword	.LBB71
	.uaword	.LBE71
	.uleb128 0x28
	.uaword	0xd5e
	.uleb128 0x28
	.uaword	0xd52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xd6b
	.uaword	.LFB676
	.uaword	.LFE676
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x174c
	.uleb128 0x25
	.uaword	0xd8f
	.uaword	.LLST68
	.uleb128 0x25
	.uaword	0xd9b
	.uaword	.LLST69
	.uleb128 0x26
	.uaword	0xd6b
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.uahalf	0x1c0
	.uleb128 0x27
	.uaword	.LBB75
	.uaword	.LBE75
	.uleb128 0x28
	.uaword	0xd9b
	.uleb128 0x28
	.uaword	0xd8f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xda8
	.uaword	.LFB675
	.uaword	.LFE675
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1798
	.uleb128 0x25
	.uaword	0xdcb
	.uaword	.LLST70
	.uleb128 0x25
	.uaword	0xdd7
	.uaword	.LLST71
	.uleb128 0x26
	.uaword	0xda8
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.uahalf	0x1b4
	.uleb128 0x27
	.uaword	.LBB79
	.uaword	.LBE79
	.uleb128 0x28
	.uaword	0xdd7
	.uleb128 0x28
	.uaword	0xdcb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xde4
	.uaword	.LFB671
	.uaword	.LFE671
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x17e0
	.uleb128 0x25
	.uaword	0xe04
	.uaword	.LLST72
	.uleb128 0x25
	.uaword	0xe10
	.uaword	.LLST73
	.uleb128 0x2c
	.uaword	0xde4
	.uaword	.LBB82
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x17c
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x28
	.uaword	0xe10
	.uleb128 0x28
	.uaword	0xe04
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xe1d
	.uaword	.LFB669
	.uaword	.LFE669
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x182c
	.uleb128 0x25
	.uaword	0xe41
	.uaword	.LLST74
	.uleb128 0x25
	.uaword	0xe4d
	.uaword	.LLST75
	.uleb128 0x26
	.uaword	0xe1d
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.uahalf	0x165
	.uleb128 0x27
	.uaword	.LBB89
	.uaword	.LBE89
	.uleb128 0x28
	.uaword	0xe4d
	.uleb128 0x28
	.uaword	0xe41
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xe5a
	.uaword	.LFB668
	.uaword	.LFE668
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1878
	.uleb128 0x25
	.uaword	0xe7d
	.uaword	.LLST76
	.uleb128 0x25
	.uaword	0xe89
	.uaword	.LLST77
	.uleb128 0x26
	.uaword	0xe5a
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.uahalf	0x159
	.uleb128 0x27
	.uaword	.LBB93
	.uaword	.LBE93
	.uleb128 0x28
	.uaword	0xe89
	.uleb128 0x28
	.uaword	0xe7d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xe96
	.uaword	.LFB664
	.uaword	.LFE664
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x18c0
	.uleb128 0x25
	.uaword	0xeb6
	.uaword	.LLST78
	.uleb128 0x25
	.uaword	0xec2
	.uaword	.LLST79
	.uleb128 0x2c
	.uaword	0xe96
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x121
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x138
	.uleb128 0x28
	.uaword	0xec2
	.uleb128 0x28
	.uaword	0xeb6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0xecf
	.uaword	.LFB659
	.uaword	.LFE659
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1907
	.uleb128 0x25
	.uaword	0xeec
	.uaword	.LLST80
	.uleb128 0x25
	.uaword	0xef7
	.uaword	.LLST81
	.uleb128 0x29
	.uaword	0xecf
	.uaword	.LBB102
	.uaword	.Ldebug_ranges0+0x150
	.byte	0x1
	.byte	0xde
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x168
	.uleb128 0x28
	.uaword	0xef7
	.uleb128 0x28
	.uaword	0xeec
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"menu_select"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.uaword	.LFB651
	.uaword	.LFE651
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x1946
	.uleb128 0x1b
	.string	"ind"
	.byte	0x1
	.byte	0x85
	.uaword	0x12c
	.uaword	.LLST82
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0x85
	.uaword	0x5ff
	.uaword	.LLST83
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"menu_display_cpusecdelta"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.uaword	.LFB660
	.uaword	.LFE660
	.uaword	.LLST84
	.uaword	0x1993
	.uleb128 0x1b
	.string	"ind"
	.byte	0x1
	.byte	0xf4
	.uaword	0x12c
	.uaword	.LLST85
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf4
	.uaword	0x5ff
	.uaword	.LLST86
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"menu_input_cpusecdelta"
	.byte	0x1
	.byte	0xfa
	.byte	0x1
	.uaword	0x12c
	.uaword	.LFB661
	.uaword	.LFE661
	.uaword	.LLST87
	.uaword	0x1a00
	.uleb128 0x1b
	.string	"ind"
	.byte	0x1
	.byte	0xfa
	.uaword	0x12c
	.uaword	.LLST88
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.byte	0xfa
	.uaword	0x5ff
	.uaword	.LLST89
	.uleb128 0x30
	.string	"temp"
	.byte	0x1
	.byte	0xfc
	.uaword	0x148
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x31
	.uaword	.LASF2
	.byte	0x1
	.byte	0xfd
	.uaword	0x12c
	.uaword	.LLST90
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"menu_select_cpusecdelta"
	.byte	0x1
	.uahalf	0x105
	.byte	0x1
	.uaword	.LFB662
	.uaword	.LFE662
	.uaword	.LLST91
	.uaword	0x1a4f
	.uleb128 0x1e
	.string	"ind"
	.byte	0x1
	.uahalf	0x105
	.uaword	0x12c
	.uaword	.LLST92
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x105
	.uaword	0x5ff
	.uaword	.LLST93
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"showmenu"
	.byte	0x1
	.uahalf	0x248
	.byte	0x1
	.uaword	.LFB687
	.uaword	.LFE687
	.uaword	.LLST94
	.uaword	0x1aa9
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.uahalf	0x248
	.uaword	0xfb
	.uaword	.LLST95
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.uahalf	0x248
	.uaword	0xfb
	.uaword	.LLST96
	.uleb128 0x1f
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x248
	.uaword	0x5ff
	.uaword	.LLST97
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x12c
	.uaword	.LLST98
	.byte	0
	.uleb128 0x33
	.string	"conio_driver"
	.byte	0x4
	.byte	0xc9
	.uaword	0x646
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"Assert_verboseLevel"
	.byte	0xa
	.byte	0x7b
	.uaword	0x13a
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"touch_driver"
	.byte	0x5
	.byte	0x5b
	.uaword	0x855
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"controlmenu"
	.byte	0x1
	.byte	0x79
	.uaword	0x8ae
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"backgroundlightmin"
	.byte	0xb
	.byte	0x15
	.uaword	0x13a
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"backgroundlightmax"
	.byte	0xb
	.byte	0x16
	.uaword	0x13a
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"backgroundlightdelta"
	.byte	0xb
	.byte	0x17
	.uaword	0x13a
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"backgroundlightsize"
	.byte	0xb
	.byte	0x18
	.uaword	0x13a
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IR_MotorEn"
	.byte	0x7
	.byte	0x53
	.uaword	0x8f9
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IR_Motor"
	.byte	0x8
	.byte	0x50
	.uaword	0x93e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IR_Srv"
	.byte	0x8
	.byte	0x51
	.uaword	0x969
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IR_Beeper"
	.byte	0x8
	.byte	0x52
	.uaword	0x9b4
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IR_Ctrl"
	.byte	0x9
	.byte	0x22
	.uaword	0x9f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x4a3
	.uaword	0x1be4
	.uleb128 0xa
	.uaword	0xa5
	.byte	0x13
	.byte	0
	.uleb128 0x34
	.string	"menulist"
	.byte	0x1
	.byte	0x59
	.uaword	0x1bfb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	menulist
	.uleb128 0x35
	.uaword	0x1bd4
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
	.uleb128 0x11
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uaword	.LFE650
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LFB682
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE682
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-1
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB677
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE677
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LFB672
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE672
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL12
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14-1
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LFB665
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE665
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL16
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18-1
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LFB654
	.uaword	.LCFI4
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI4
	.uaword	.LFE654
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LFB683
	.uaword	.LCFI5
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI5
	.uaword	.LFE683
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LFB678
	.uaword	.LCFI6
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI6
	.uaword	.LFE678
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL28
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL30
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LFB673
	.uaword	.LCFI7
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI7
	.uaword	.LFE673
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL33
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL35
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LFB666
	.uaword	.LCFI8
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI8
	.uaword	.LFE666
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL38
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL40
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL43
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL47
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL49-1
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL51
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53-1
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57-1
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL59
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL61-1
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL63
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-1
	.uaword	.LFE670
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL66
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL68-1
	.uaword	.LFE663
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL69
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL71-1
	.uaword	.LFE658
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL72
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74-1
	.uaword	.LFE656
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LFB684
	.uaword	.LCFI9
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI9
	.uaword	.LFE684
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL76
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LFE684
	.uahalf	0x2
	.byte	0x8e
	.sleb128 44
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL75
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL77-1
	.uaword	.LFE684
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LFE684
	.uahalf	0x2
	.byte	0x8e
	.sleb128 44
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LFB679
	.uaword	.LCFI10
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI10
	.uaword	.LFE679
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL81
	.uaword	.LFE679
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL80
	.uaword	.LVL82-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL82-1
	.uaword	.LFE679
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LFB674
	.uaword	.LCFI11
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI11
	.uaword	.LFE674
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL85
	.uaword	.LFE674
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL84
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL86-1
	.uaword	.LFE674
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LFB667
	.uaword	.LCFI12
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI12
	.uaword	.LFE667
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL89
	.uaword	.LFE667
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL90-1
	.uaword	.LFE667
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL92
	.uaword	.LVL94-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL94-1
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL96
	.uaword	.LVL98-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL98-1
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL100
	.uaword	.LVL102-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL102-1
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL104
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL106-1
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL108
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL108
	.uaword	.LVL110-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL110-1
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL114
	.uaword	.LVL116-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL116-1
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL118
	.uaword	.LVL120-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL120-1
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL122
	.uaword	.LVL124-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL124-1
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL128
	.uaword	.LVL130-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL130-1
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL134
	.uaword	.LVL136-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL136-1
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL137
	.uaword	.LVL138-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 -20
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LFB660
	.uaword	.LCFI13
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI13
	.uaword	.LFE660
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL139
	.uaword	.LVL141-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL141-1
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LFB661
	.uaword	.LCFI14
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI14
	.uaword	.LFE661
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL143
	.uaword	.LVL145-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL145
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LFB662
	.uaword	.LCFI15
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI15
	.uaword	.LFE662
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL149
	.uaword	.LFE662
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL148
	.uaword	.LVL150-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL150-1
	.uaword	.LFE662
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LFB687
	.uaword	.LCFI16
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI16
	.uaword	.LFE687
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL151
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL151
	.uaword	.LVL154-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x144
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB652
	.uaword	.LFE652-.LFB652
	.uaword	.LFB650
	.uaword	.LFE650-.LFB650
	.uaword	.LFB682
	.uaword	.LFE682-.LFB682
	.uaword	.LFB677
	.uaword	.LFE677-.LFB677
	.uaword	.LFB672
	.uaword	.LFE672-.LFB672
	.uaword	.LFB665
	.uaword	.LFE665-.LFB665
	.uaword	.LFB654
	.uaword	.LFE654-.LFB654
	.uaword	.LFB683
	.uaword	.LFE683-.LFB683
	.uaword	.LFB678
	.uaword	.LFE678-.LFB678
	.uaword	.LFB673
	.uaword	.LFE673-.LFB673
	.uaword	.LFB666
	.uaword	.LFE666-.LFB666
	.uaword	.LFB686
	.uaword	.LFE686-.LFB686
	.uaword	.LFB685
	.uaword	.LFE685-.LFB685
	.uaword	.LFB657
	.uaword	.LFE657-.LFB657
	.uaword	.LFB655
	.uaword	.LFE655-.LFB655
	.uaword	.LFB653
	.uaword	.LFE653-.LFB653
	.uaword	.LFB670
	.uaword	.LFE670-.LFB670
	.uaword	.LFB663
	.uaword	.LFE663-.LFB663
	.uaword	.LFB658
	.uaword	.LFE658-.LFB658
	.uaword	.LFB656
	.uaword	.LFE656-.LFB656
	.uaword	.LFB684
	.uaword	.LFE684-.LFB684
	.uaword	.LFB679
	.uaword	.LFE679-.LFB679
	.uaword	.LFB674
	.uaword	.LFE674-.LFB674
	.uaword	.LFB667
	.uaword	.LFE667-.LFB667
	.uaword	.LFB681
	.uaword	.LFE681-.LFB681
	.uaword	.LFB680
	.uaword	.LFE680-.LFB680
	.uaword	.LFB676
	.uaword	.LFE676-.LFB676
	.uaword	.LFB675
	.uaword	.LFE675-.LFB675
	.uaword	.LFB671
	.uaword	.LFE671-.LFB671
	.uaword	.LFB669
	.uaword	.LFE669-.LFB669
	.uaword	.LFB668
	.uaword	.LFE668-.LFB668
	.uaword	.LFB664
	.uaword	.LFE664-.LFB664
	.uaword	.LFB659
	.uaword	.LFE659-.LFB659
	.uaword	.LFB651
	.uaword	.LFE651-.LFB651
	.uaword	.LFB660
	.uaword	.LFE660-.LFB660
	.uaword	.LFB661
	.uaword	.LFE661-.LFB661
	.uaword	.LFB662
	.uaword	.LFE662-.LFB662
	.uaword	.LFB687
	.uaword	.LFE687-.LFB687
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	0
	.uaword	0
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	0
	.uaword	0
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0
	.uaword	0
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	0
	.uaword	0
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0
	.uaword	0
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	0
	.uaword	0
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB105
	.uaword	.LBE105
	.uaword	0
	.uaword	0
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	0
	.uaword	0
	.uaword	.LFB652
	.uaword	.LFE652
	.uaword	.LFB650
	.uaword	.LFE650
	.uaword	.LFB682
	.uaword	.LFE682
	.uaword	.LFB677
	.uaword	.LFE677
	.uaword	.LFB672
	.uaword	.LFE672
	.uaword	.LFB665
	.uaword	.LFE665
	.uaword	.LFB654
	.uaword	.LFE654
	.uaword	.LFB683
	.uaword	.LFE683
	.uaword	.LFB678
	.uaword	.LFE678
	.uaword	.LFB673
	.uaword	.LFE673
	.uaword	.LFB666
	.uaword	.LFE666
	.uaword	.LFB686
	.uaword	.LFE686
	.uaword	.LFB685
	.uaword	.LFE685
	.uaword	.LFB657
	.uaword	.LFE657
	.uaword	.LFB655
	.uaword	.LFE655
	.uaword	.LFB653
	.uaword	.LFE653
	.uaword	.LFB670
	.uaword	.LFE670
	.uaword	.LFB663
	.uaword	.LFE663
	.uaword	.LFB658
	.uaword	.LFE658
	.uaword	.LFB656
	.uaword	.LFE656
	.uaword	.LFB684
	.uaword	.LFE684
	.uaword	.LFB679
	.uaword	.LFE679
	.uaword	.LFB674
	.uaword	.LFE674
	.uaword	.LFB667
	.uaword	.LFE667
	.uaword	.LFB681
	.uaword	.LFE681
	.uaword	.LFB680
	.uaword	.LFE680
	.uaword	.LFB676
	.uaword	.LFE676
	.uaword	.LFB675
	.uaword	.LFE675
	.uaword	.LFB671
	.uaword	.LFE671
	.uaword	.LFB669
	.uaword	.LFE669
	.uaword	.LFB668
	.uaword	.LFE668
	.uaword	.LFB664
	.uaword	.LFE664
	.uaword	.LFB659
	.uaword	.LFE659
	.uaword	.LFB651
	.uaword	.LFE651
	.uaword	.LFB660
	.uaword	.LFE660
	.uaword	.LFB661
	.uaword	.LFE661
	.uaword	.LFB662
	.uaword	.LFE662
	.uaword	.LFB687
	.uaword	.LFE687
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"pdisplayentry"
.LASF2:
	.string	"result"
.LASF0:
	.string	"pmenulist"
	.extern	conio_ascii_textcolor,STT_FUNC,0
	.extern	conio_ascii_clrscr,STT_FUNC,0
	.extern	conio_ascii_textbackground,STT_FUNC,0
	.extern	IR_setBeeperOn,STT_FUNC,0
	.extern	IR_setMotor0En,STT_FUNC,0
	.extern	IR_setMotor1En,STT_FUNC,0
	.extern	sprintf,STT_FUNC,0
	.extern	IR_Beeper,STT_OBJECT,12
	.extern	IR_MotorEn,STT_OBJECT,2
	.extern	IR_Ctrl,STT_OBJECT,8
	.extern	backgroundlightdelta,STT_OBJECT,4
	.extern	touch_driver,STT_OBJECT,68
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	IR_setMotor1Vol,STT_FUNC,0
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	backgroundlightmax,STT_OBJECT,4
	.extern	backgroundlightmin,STT_OBJECT,4
	.extern	sscanf,STT_FUNC,0
	.extern	conio_driver,STT_OBJECT,276
	.extern	controlmenu,STT_OBJECT,8
	.extern	IR_Motor,STT_OBJECT,8
	.extern	IR_Srv,STT_OBJECT,4
	.extern	conio_ascii_printfxy,STT_FUNC,0
	.extern	backgroundlightsize,STT_OBJECT,4
	.extern	conio_ascii_cputs,STT_FUNC,0
	.extern	conio_ascii_gotoxy,STT_FUNC,0
	.extern	conio_ascii_textattr,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
