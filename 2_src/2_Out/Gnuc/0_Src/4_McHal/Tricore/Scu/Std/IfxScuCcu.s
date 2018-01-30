	.file	"IfxScuCcu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxScuCcu_calculateSysPllDividers,"ax",@progbits
	.align 1
	.global	IfxScuCcu_calculateSysPllDividers
	.type	IfxScuCcu_calculateSysPllDividers, @function
IfxScuCcu_calculateSysPllDividers:
.LFB216:
	.file 1 "0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.c"
	.loc 1 94 0
.LVL0:
.LBB25:
	.loc 1 131 0
	movh	%d14, 3662
	addi	%d14, %d14, 7169
	.loc 1 129 0
	ge.u	%d14, %d4, %d14
	mov	%d15, 1
	sel	%d14, %d14, %d15, 2
	.loc 1 131 0
	sh	%d7, %d14, 4
	.loc 1 126 0
	movh	%d2, 3052
	.loc 1 140 0
	movh.a	%a12, hi:-8000000
	movh.a	%a7, hi:16000001
	.loc 1 146 0
	movh.a	%a6, hi:-400000000
	movh.a	%a5, hi:400000001
.LBE25:
	.loc 1 97 0
	ld.w	%d1, [%a4] 64
.LVL1:
.LBB28:
	.loc 1 131 0
	mov.a	%a3, %d7
	.loc 1 126 0
	addi	%d2, %d2, -15872
	mov	%d3, 0
	.loc 1 121 0
	mov	%e12, 0
	mov	%d11, 0
	.loc 1 136 0
	mov	%d9, 16
	.loc 1 138 0
	mov.a	%a13, 0
	.loc 1 140 0
	lea	%a12, [%a12] lo:-8000000
	lea	%a7, [%a7] lo:16000001
	.loc 1 146 0
	lea	%a6, [%a6] lo:-400000000
	lea	%a5, [%a5] lo:400000001
	mov.a	%a2, 15
.LVL2:
.L9:
	.loc 1 138 0
	div.u	%e6, %d1, %d9
	.loc 1 140 0
	mov.d	%d15, %a12
	mov.d	%d7, %a13
	addx	%d6, %d6, %d15
	addc	%d5, %d7, -1
	eq	%d15, %d5, 0
	mov.d	%d7, %a7
	and.ge.u	%d15, %d6, %d7
	or.ne	%d15, %d5, 0
	jnz	%d15, .L3
	.loc 1 93 0
	mov	%d8, %d9
	mov	%d10, 1
.L8:
.LVL3:
	.loc 1 144 0
	mul.u	%e6, %d10, %d4
	.loc 1 146 0
	mov.d	%d15, %a6
	addx	%d6, %d6, %d15
	addc	%d5, %d7, -1
	eq	%d15, %d5, 0
	mov.d	%d7, %a5
	and.ge.u	%d15, %d6, %d7
	or.ne	%d15, %d5, 0
	jnz	%d15, .L4
	mov	%d5, 1
	lea	%a15, 127
.L7:
.LBB26:
	.loc 1 151 0
	div.u	%e6, %d5, %d8
	mul	%d6, %d1
	sub	%d6, %d4
	.loc 1 153 0
	jz	%d6, .L12
	.loc 1 163 0
	eq	%d15, %d3, 0
	and.lt.u	%d15, %d6, %d2
	or.ne	%d15, %d3, 0
	jz	%d15, .L6
	mov	%d2, %d6
	mov	%d3, 0
	mov	%e12, %d5, %d9
	mov	%d11, %d10
.L6:
.LVL4:
.LBE26:
	.loc 1 148 0
	add	%d5, 1
.LVL5:
	loop	%a15, .L7
.LVL6:
.L4:
	.loc 1 142 0
	mov.d	%d15, %a3
	add	%d10, %d14
.LVL7:
	add	%d8, %d15
	lt.u	%d15, %d10, 129
	jnz	%d15, .L8
.LVL8:
.L3:
	.loc 1 136 0
	mov.a	%a15, %d14
	add	%d9, -1
.LVL9:
	sub.a	%a3, %a3, %a15
	loop	%a2, .L9
.LVL10:
.L5:
	.loc 1 178 0
	movh	%d15, 20972
	addi	%d15, %d15, -31457
	sh	%d4, 1
.LVL11:
	mul.u	%e4, %d4, %d15
	eq	%d15, %d3, 0
	sh	%d4, %d5, -5
	and.ge.u	%d15, %d2, %d4
	or.ne	%d15, %d3, 0
	.loc 1 188 0
	mov	%d2, 1
.LVL12:
	.loc 1 178 0
	jnz	%d15, .L10
	.loc 1 183 0
	mov	%d2, 0
	.loc 1 180 0
	add	%d13, -1
.LVL13:
	.loc 1 181 0
	add	%d12, -1
.LVL14:
	.loc 1 182 0
	add	%d11, -1
.LVL15:
	.loc 1 183 0
	st.w	[%a4] 12, %d2
	.loc 1 180 0
	st.b	[%a4] 9, %d13
	.loc 1 181 0
	st.b	[%a4] 8, %d12
	.loc 1 182 0
	st.b	[%a4] 10, %d11
	.loc 1 184 0
	st.b	[%a4]0, %d15
	.loc 1 95 0
	mov	%d2, 0
.LVL16:
.L10:
.LBE28:
	.loc 1 193 0
	ret
.LVL17:
.L12:
.LBB29:
.LBB27:
	.loc 1 153 0
	mov	%e12, %d5, %d9
	mov	%d11, %d10
	mov	%e2, 0
	j	.L5
.LBE27:
.LBE29:
.LFE216:
	.size	IfxScuCcu_calculateSysPllDividers, .-IfxScuCcu_calculateSysPllDividers
.section .text.IfxScuCcu_getOsc0Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getOsc0Frequency
	.type	IfxScuCcu_getOsc0Frequency, @function
IfxScuCcu_getOsc0Frequency:
.LFB224:
	.loc 1 393 0
	.loc 1 394 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	.loc 1 395 0
	utof	%d2, %d2
	ret
.LFE224:
	.size	IfxScuCcu_getOsc0Frequency, .-IfxScuCcu_getOsc0Frequency
.section .text.IfxScuCcu_getOscFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getOscFrequency
	.type	IfxScuCcu_getOscFrequency, @function
IfxScuCcu_getOscFrequency:
.LFB225:
	.loc 1 399 0
	.loc 1 402 0
	movh.a	%a15, hi:-268214220
	lea	%a15, [%a15] lo:-268214220
	ld.w	%d2, [%a15]0
	movh	%d15, 12288
	and	%d15, %d2
	.loc 1 404 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 402 0
	jz	%d15, .L21
.LBB32:
.LBB33:
	.loc 1 406 0
	ld.w	%d2, [%a15]0
	movh	%d15, 12288
	and	%d15, %d2
	movh	%d3, 4096
	.loc 1 413 0
	mov	%d2, 0
	.loc 1 406 0
	jeq	%d15, %d3, .L25
.L21:
.LVL18:
.LBE33:
.LBE32:
	.loc 1 417 0
	ret
.LVL19:
.L25:
.LBB35:
.LBB34:
	.loc 1 408 0
	movh.a	%a15, hi:IfxScuCcu_xtalFrequency
	ld.w	%d2, [%a15] lo:IfxScuCcu_xtalFrequency
	utof	%d2, %d2
.LVL20:
.LBE34:
.LBE35:
	.loc 1 417 0
	ret
.LFE225:
	.size	IfxScuCcu_getOscFrequency, .-IfxScuCcu_getOscFrequency
.section .text.IfxScuCcu_getPllErayFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllErayFrequency
	.type	IfxScuCcu_getPllErayFrequency, @function
IfxScuCcu_getPllErayFrequency:
.LFB226:
	.loc 1 421 0
.LVL21:
	.loc 1 428 0
	movh.a	%a15, hi:-268214272
	lea	%a15, [%a15] lo:-268214272
	.loc 1 426 0
	call	IfxScuCcu_getOscFrequency
.LVL22:
	.loc 1 428 0
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 0, .L30
	.loc 1 433 0
	ld.w	%d15, [%a15] 36
	jnz.t	%d15, 3, .L31
	.loc 1 441 0
	ld.w	%d3, [%a15] 40
	ld.w	%d15, [%a15] 44
	extr.u	%d3, %d3, 9, 5
	and	%d15, %d15, 127
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d3, %d2
.LVL23:
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL24:
	.loc 1 445 0
	ret
.LVL25:
.L31:
	.loc 1 436 0
	ld.w	%d2, [%a15] 44
.LVL26:
	movh	%d15, 19647
	and	%d2, %d2, 127
	add	%d2, 1
	itof	%d2, %d2
	addi	%d15, %d15, -17376
	div.f	%d2, %d15, %d2
.LVL27:
	ret
.LVL28:
.L30:
	.loc 1 431 0
	ld.w	%d15, [%a15] 44
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL29:
	ret
.LFE226:
	.size	IfxScuCcu_getPllErayFrequency, .-IfxScuCcu_getPllErayFrequency
.section .text.IfxScuCcu_getPllErayVcoFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllErayVcoFrequency
	.type	IfxScuCcu_getPllErayVcoFrequency, @function
IfxScuCcu_getPllErayVcoFrequency:
.LFB227:
	.loc 1 449 0
	.loc 1 452 0
	movh.a	%a15, hi:-268214236
	lea	%a15, [%a15] lo:-268214236
	ld.w	%d15, [%a15]0
	.loc 1 455 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 452 0
	jz.t	%d15, 3, .L35
.LVL30:
	.loc 1 464 0
	ret
.LVL31:
.L35:
	.loc 1 460 0
	movh.a	%a15, hi:-268214232
	call	IfxScuCcu_getOscFrequency
	lea	%a15, [%a15] lo:-268214232
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 5
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d2, %d3
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL32:
	.loc 1 464 0
	ret
.LFE227:
	.size	IfxScuCcu_getPllErayVcoFrequency, .-IfxScuCcu_getPllErayVcoFrequency
.section .text.IfxScuCcu_getPllFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllFrequency
	.type	IfxScuCcu_getPllFrequency, @function
IfxScuCcu_getPllFrequency:
.LFB228:
	.loc 1 468 0
.LVL33:
	.loc 1 475 0
	movh.a	%a15, hi:-268214272
	lea	%a15, [%a15] lo:-268214272
	.loc 1 473 0
	call	IfxScuCcu_getOscFrequency
.LVL34:
	.loc 1 475 0
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 0, .L40
	.loc 1 480 0
	ld.w	%d15, [%a15] 20
	jnz.t	%d15, 3, .L41
	.loc 1 488 0
	ld.w	%d4, [%a15] 24
	ld.w	%d3, [%a15] 28
	ld.w	%d15, [%a15] 24
	extr.u	%d4, %d4, 9, 7
	extr.u	%d15, %d15, 24, 4
	and	%d3, %d3, 127
	add	%d15, 1
	madd	%d15, %d15, %d3, %d15
	add	%d4, 1
	itof	%d4, %d4
	itof	%d15, %d15
	mul.f	%d2, %d4, %d2
.LVL35:
	div.f	%d2, %d2, %d15
.LVL36:
	.loc 1 492 0
	ret
.LVL37:
.L41:
	.loc 1 483 0
	ld.w	%d2, [%a15] 28
.LVL38:
	movh	%d15, 19647
	and	%d2, %d2, 127
	add	%d2, 1
	itof	%d2, %d2
	addi	%d15, %d15, -17376
	div.f	%d2, %d15, %d2
.LVL39:
	ret
.LVL40:
.L40:
	.loc 1 478 0
	ld.w	%d15, [%a15] 28
	extr.u	%d15, %d15, 16, 7
	add	%d15, 1
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL41:
	ret
.LFE228:
	.size	IfxScuCcu_getPllFrequency, .-IfxScuCcu_getPllFrequency
.section .text.IfxScuCcu_getPllVcoFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getPllVcoFrequency
	.type	IfxScuCcu_getPllVcoFrequency, @function
IfxScuCcu_getPllVcoFrequency:
.LFB229:
	.loc 1 496 0
	.loc 1 499 0
	movh.a	%a15, hi:-268214252
	lea	%a15, [%a15] lo:-268214252
	ld.w	%d15, [%a15]0
	.loc 1 502 0
	movh	%d2, 19647
	addi	%d2, %d2, -17376
	.loc 1 499 0
	jz.t	%d15, 3, .L45
.LVL42:
	.loc 1 511 0
	ret
.LVL43:
.L45:
.LBB38:
.LBB39:
	.loc 1 507 0
	movh.a	%a15, hi:-268214248
	call	IfxScuCcu_getOscFrequency
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d3, [%a15]0
	ld.w	%d15, [%a15]0
	extr.u	%d3, %d3, 9, 7
	extr.u	%d15, %d15, 24, 4
	add	%d3, 1
	itof	%d3, %d3
	add	%d15, 1
	mul.f	%d2, %d2, %d3
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL44:
.LBE39:
.LBE38:
	.loc 1 511 0
	ret
.LFE229:
	.size	IfxScuCcu_getPllVcoFrequency, .-IfxScuCcu_getPllVcoFrequency
.section .text.IfxScuCcu_getSourceFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSourceFrequency
	.type	IfxScuCcu_getSourceFrequency, @function
IfxScuCcu_getSourceFrequency:
.LFB230:
	.loc 1 515 0
	.loc 1 518 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d15, [%a15]0
	.loc 1 521 0
	movh	%d2, 19647
	.loc 1 518 0
	extr.u	%d15, %d15, 28, 2
	.loc 1 521 0
	addi	%d2, %d2, -17376
	.loc 1 518 0
	jz	%d15, .L47
	.loc 1 527 0
	mov	%d2, 0
	.loc 1 518 0
	jeq	%d15, 1, .L52
.L47:
.LVL45:
	.loc 1 532 0
	ret
.LVL46:
.L52:
	.loc 1 524 0
	j	IfxScuCcu_getPllFrequency
.LFE230:
	.size	IfxScuCcu_getSourceFrequency, .-IfxScuCcu_getSourceFrequency
.section .text.IfxScuCcu_wait,"ax",@progbits
	.align 1
	.type	IfxScuCcu_wait, @function
IfxScuCcu_wait:
.LFB244:
	.loc 1 1264 0
.LVL47:
.LBB40:
.LBB41:
	.file 2 "0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
	.loc 2 1073 0
	movh.a	%a15, hi:-268214220
.LBE41:
.LBE40:
	.loc 1 1264 0
	mov	%d15, %d4
.LBB43:
.LBB42:
	.loc 2 1073 0
	lea	%a15, [%a15] lo:-268214220
	call	IfxScuCcu_getSourceFrequency
.LVL48:
	ld.w	%d4, [%a15]0
	extr.u	%d4, %d4, 8, 4
	itof	%d4, %d4
	div.f	%d2, %d2, %d4
.LBE42:
.LBE43:
	.loc 1 1265 0
	mul.f	%d4, %d15, %d2
	.loc 1 1266 0
	ld.w	%d2, 0xf0000010
	.loc 1 1265 0
	ftouz	%d4, %d4
.LVL49:
.L54:
	.loc 1 1268 0 discriminator 1
	ld.w	%d15, 0xf0000010
	sub	%d15, %d2
	jlt.u	%d15, %d4, .L54
	.loc 1 1277 0
	ret
.LFE244:
	.size	IfxScuCcu_wait, .-IfxScuCcu_wait
.section .text.IfxScuCcu_getMaxFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getMaxFrequency
	.type	IfxScuCcu_getMaxFrequency, @function
IfxScuCcu_getMaxFrequency:
.LFB222:
	.loc 1 327 0
	.loc 1 332 0
	movh.a	%a15, hi:-268214224
	.loc 1 330 0
	call	IfxScuCcu_getSourceFrequency
	.loc 1 332 0
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	.loc 1 330 0
	mov	%d15, %d2
.LVL50:
	.loc 1 332 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 359 0
	mov	%d2, 0
.LVL51:
	.loc 1 332 0
	jge.u	%d3, 5, .L57
	movh.a	%a15, hi:.L63
	lea	%a15, [%a15] lo:.L63
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L63:
	.code32
	j	.L58
	.code32
	j	.L59
	.code32
	j	.L60
	.code32
	j	.L61
	.code32
	j	.L62
.L62:
	.loc 1 356 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL52:
.L57:
	.loc 1 364 0
	ret
.LVL53:
.L61:
	.loc 1 353 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL54:
	.loc 1 354 0
	ret
.LVL55:
.L58:
	.loc 1 336 0
	movh.a	%a15, hi:-268214196
	lea	%a15, [%a15] lo:-268214196
	ld.w	%d3, [%a15]0
	.loc 1 338 0
	mov	%d2, %d15
	.loc 1 336 0
	and	%d3, %d3, 15
	jz	%d3, .L57
	.loc 1 342 0
	ld.w	%d15, [%a15]0
.LVL56:
	and	%d15, %d15, 15
	itof	%d15, %d15
	div.f	%d2, %d2, %d15
.LVL57:
	ret
.LVL58:
.L59:
	.loc 1 347 0
	movh	%d2, 16752
	div.f	%d2, %d15, %d2
.LVL59:
	.loc 1 348 0
	ret
.LVL60:
.L60:
	.loc 1 350 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL61:
	.loc 1 351 0
	ret
.LFE222:
	.size	IfxScuCcu_getMaxFrequency, .-IfxScuCcu_getMaxFrequency
.section .text.IfxScuCcu_getBaud2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getBaud2Frequency
	.type	IfxScuCcu_getBaud2Frequency, @function
IfxScuCcu_getBaud2Frequency:
.LFB217:
	.loc 1 197 0
	.loc 1 199 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d15, [%a15]0
.LVL62:
	.loc 1 203 0
	mov	%d2, 0
	.loc 1 199 0
	extr.u	%d8, %d15, 4, 4
.LVL63:
	.loc 1 201 0
	and	%d15, %d15, 240
.LVL64:
	jnz	%d15, .L69
.LVL65:
	.loc 1 211 0
	ret
.LVL66:
.L69:
	.loc 1 207 0
	call	IfxScuCcu_getMaxFrequency
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL67:
	.loc 1 211 0
	ret
.LFE217:
	.size	IfxScuCcu_getBaud2Frequency, .-IfxScuCcu_getBaud2Frequency
.section .text.IfxScuCcu_getBbbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getBbbFrequency
	.type	IfxScuCcu_getBbbFrequency, @function
IfxScuCcu_getBbbFrequency:
.LFB218:
	.loc 1 215 0
	.loc 1 220 0
	movh.a	%a15, hi:-268214224
	.loc 1 218 0
	call	IfxScuCcu_getSourceFrequency
	.loc 1 220 0
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	.loc 1 218 0
	mov	%d15, %d2
.LVL68:
	.loc 1 220 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 247 0
	mov	%d2, 0
.LVL69:
	.loc 1 220 0
	jge.u	%d3, 5, .L71
	movh.a	%a15, hi:.L77
	lea	%a15, [%a15] lo:.L77
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L77:
	.code32
	j	.L72
	.code32
	j	.L73
	.code32
	j	.L74
	.code32
	j	.L75
	.code32
	j	.L76
.L76:
	.loc 1 244 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL70:
.L71:
	.loc 1 252 0
	ret
.LVL71:
.L75:
	.loc 1 241 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL72:
	.loc 1 242 0
	ret
.LVL73:
.L72:
	.loc 1 224 0
	movh.a	%a15, hi:-268214208
	lea	%a15, [%a15] lo:-268214208
	ld.w	%d3, [%a15]0
	.loc 1 226 0
	mov	%d2, 0
	.loc 1 224 0
	and	%d3, %d3, 15
	jz	%d3, .L71
	.loc 1 230 0
	ld.w	%d2, [%a15]0
	and	%d2, %d2, 15
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL74:
	ret
.LVL75:
.L73:
	.loc 1 235 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL76:
	.loc 1 236 0
	ret
.LVL77:
.L74:
	.loc 1 238 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL78:
	.loc 1 239 0
	ret
.LFE218:
	.size	IfxScuCcu_getBbbFrequency, .-IfxScuCcu_getBbbFrequency
.section .text.IfxScuCcu_getSpbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSpbFrequency
	.type	IfxScuCcu_getSpbFrequency, @function
IfxScuCcu_getSpbFrequency:
.LFB231:
	.loc 1 536 0
	.loc 1 541 0
	movh.a	%a15, hi:-268214224
	.loc 1 539 0
	call	IfxScuCcu_getSourceFrequency
	.loc 1 541 0
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	.loc 1 539 0
	mov	%d15, %d2
.LVL79:
	.loc 1 541 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 568 0
	mov	%d2, 0
.LVL80:
	.loc 1 541 0
	jge.u	%d3, 5, .L81
	movh.a	%a15, hi:.L87
	lea	%a15, [%a15] lo:.L87
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L87:
	.code32
	j	.L82
	.code32
	j	.L83
	.code32
	j	.L84
	.code32
	j	.L85
	.code32
	j	.L86
.L86:
	.loc 1 565 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL81:
.L81:
	.loc 1 573 0
	ret
.LVL82:
.L85:
	.loc 1 562 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL83:
	.loc 1 563 0
	ret
.LVL84:
.L82:
	.loc 1 545 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	movh	%d2, 15
	and	%d3, %d2
	.loc 1 547 0
	mov	%d2, 0
	.loc 1 545 0
	jz	%d3, .L81
	.loc 1 551 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 16, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL85:
	ret
.LVL86:
.L83:
	.loc 1 556 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL87:
	.loc 1 557 0
	ret
.LVL88:
.L84:
	.loc 1 559 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL89:
	.loc 1 560 0
	ret
.LFE231:
	.size	IfxScuCcu_getSpbFrequency, .-IfxScuCcu_getSpbFrequency
.section .text.IfxScuCcu_getModuleFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getModuleFrequency
	.type	IfxScuCcu_getModuleFrequency, @function
IfxScuCcu_getModuleFrequency:
.LFB223:
	.loc 1 368 0
	.loc 1 372 0
	movh.a	%a15, hi:-268214216
	lea	%a15, [%a15] lo:-268214216
	ld.w	%d15, [%a15]0
.LVL90:
	.loc 1 373 0
	call	IfxScuCcu_getSpbFrequency
	mov	%d3, %d2
	.loc 1 375 0
	mov.u	%d2, 49152
	.loc 1 372 0
	insert	%d8, %d15, 0, 10, 22
.LVL91:
	.loc 1 375 0
	and	%d15, %d2
.LVL92:
	mov	%d2, 16384
	jeq	%d15, %d2, .L94
	.loc 1 379 0
	mov.u	%d4, 32768
	.loc 1 385 0
	mov	%d2, 0
	.loc 1 379 0
	jeq	%d15, %d4, .L95
.LVL93:
	.loc 1 389 0
	ret
.LVL94:
.L95:
	.loc 1 381 0
	itof	%d2, %d8
	movh	%d15, 14976
	mul.f	%d2, %d2, %d3
	mul.f	%d2, %d2, %d15
.LVL95:
	.loc 1 389 0
	ret
.LVL96:
.L94:
	.loc 1 377 0
	mov	%d2, 1024
	sub	%d2, %d8
	itof	%d2, %d2
	div.f	%d2, %d3, %d2
.LVL97:
	ret
.LFE223:
	.size	IfxScuCcu_getModuleFrequency, .-IfxScuCcu_getModuleFrequency
.section .text.IfxScuCcu_getSriFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getSriFrequency
	.type	IfxScuCcu_getSriFrequency, @function
IfxScuCcu_getSriFrequency:
.LFB232:
	.loc 1 577 0
	.loc 1 582 0
	movh.a	%a15, hi:-268214224
	.loc 1 580 0
	call	IfxScuCcu_getSourceFrequency
	.loc 1 582 0
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	.loc 1 580 0
	mov	%d15, %d2
.LVL98:
	.loc 1 582 0
	extr.u	%d3, %d3, 12, 4
	.loc 1 609 0
	mov	%d2, 0
.LVL99:
	.loc 1 582 0
	jge.u	%d3, 5, .L97
	movh.a	%a15, hi:.L103
	lea	%a15, [%a15] lo:.L103
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L103:
	.code32
	j	.L98
	.code32
	j	.L99
	.code32
	j	.L100
	.code32
	j	.L101
	.code32
	j	.L102
.L102:
	.loc 1 606 0
	movh	%d2, 17264
	div.f	%d2, %d15, %d2
.LVL100:
.L97:
	.loc 1 614 0
	ret
.LVL101:
.L101:
	.loc 1 603 0
	movh	%d2, 17136
	div.f	%d2, %d15, %d2
.LVL102:
	.loc 1 604 0
	ret
.LVL103:
.L98:
	.loc 1 586 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d3, [%a15]0
	mov	%d2, 3840
	and	%d3, %d2
	.loc 1 588 0
	mov	%d2, 0
	.loc 1 586 0
	jz	%d3, .L97
	.loc 1 592 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 8, 4
	itof	%d2, %d2
	div.f	%d2, %d15, %d2
.LVL104:
	ret
.LVL105:
.L99:
	.loc 1 597 0
	movh	%d2, 16880
	div.f	%d2, %d15, %d2
.LVL106:
	.loc 1 598 0
	ret
.LVL107:
.L100:
	.loc 1 600 0
	movh	%d2, 17008
	div.f	%d2, %d15, %d2
.LVL108:
	.loc 1 601 0
	ret
.LFE232:
	.size	IfxScuCcu_getSriFrequency, .-IfxScuCcu_getSriFrequency
.section .text.IfxScuCcu_getFsiFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getFsiFrequency
	.type	IfxScuCcu_getFsiFrequency, @function
IfxScuCcu_getFsiFrequency:
.LFB221:
	.loc 1 304 0
	.loc 1 306 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d15, [%a15]0
.LVL109:
	.loc 1 308 0
	movh	%d3, 768
	and	%d3, %d15
	.loc 1 306 0
	extr.u	%d8, %d15, 24, 2
.LVL110:
	.loc 1 310 0
	mov	%d2, 0
	.loc 1 308 0
	jnz	%d3, .L109
.LVL111:
.L107:
	.loc 1 323 0
	ret
.LVL112:
.L109:
	.loc 1 314 0
	call	IfxScuCcu_getSriFrequency
.LVL113:
	.loc 1 316 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL114:
	mov	%d5, 512
	mov	%d4, 256
	eq	%d3, %d15, %d5
	or.eq	%d3, %d15, %d4
	jz	%d3, .L107
	.loc 1 318 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL115:
	.loc 1 323 0
	ret
.LFE221:
	.size	IfxScuCcu_getFsiFrequency, .-IfxScuCcu_getFsiFrequency
.section .text.IfxScuCcu_getFsi2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getFsi2Frequency
	.type	IfxScuCcu_getFsi2Frequency, @function
IfxScuCcu_getFsi2Frequency:
.LFB220:
	.loc 1 281 0
	.loc 1 283 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d15, [%a15]0
.LVL116:
	.loc 1 285 0
	movh	%d3, 48
	and	%d3, %d15
	.loc 1 283 0
	extr.u	%d8, %d15, 20, 2
.LVL117:
	.loc 1 287 0
	mov	%d2, 0
	.loc 1 285 0
	jnz	%d3, .L113
.LVL118:
.L111:
	.loc 1 300 0
	ret
.LVL119:
.L113:
	.loc 1 291 0
	call	IfxScuCcu_getSriFrequency
.LVL120:
	.loc 1 293 0
	mov	%d3, 3840
	and	%d15, %d3
.LVL121:
	mov	%d5, 512
	mov	%d4, 256
	eq	%d3, %d15, %d5
	or.eq	%d3, %d15, %d4
	jz	%d3, .L111
	.loc 1 295 0
	itof	%d8, %d8
	div.f	%d2, %d2, %d8
.LVL122:
	.loc 1 300 0
	ret
.LFE220:
	.size	IfxScuCcu_getFsi2Frequency, .-IfxScuCcu_getFsi2Frequency
.section .text.IfxScuCcu_getCpuFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_getCpuFrequency
	.type	IfxScuCcu_getCpuFrequency, @function
IfxScuCcu_getCpuFrequency:
.LFB219:
	.loc 1 256 0
.LVL123:
	.loc 1 256 0
	mov	%d15, %d4
	.loc 1 257 0
	call	IfxScuCcu_getSriFrequency
.LVL124:
	.loc 1 260 0
	jnz	%d15, .L118
	.loc 1 263 0
	movh.a	%a15, hi:-268214144
	lea	%a15, [%a15] lo:-268214144
	ld.w	%d15, [%a15]0
.LVL125:
	.loc 1 271 0
	jz	%d15, .L115
	.loc 1 273 0
	sh	%d15, -6
.LVL126:
	utof	%d15, %d15
	mul.f	%d2, %d2, %d15
.LVL127:
	ret
.LVL128:
.L118:
	.loc 1 267 0
	mov	%d2, 0
.LVL129:
.L115:
	.loc 1 277 0
	ret
.LFE219:
	.size	IfxScuCcu_getCpuFrequency, .-IfxScuCcu_getCpuFrequency
.section .text.IfxScuCcu_init,"ax",@progbits
	.align 1
	.global	IfxScuCcu_init
	.type	IfxScuCcu_init, @function
IfxScuCcu_init:
.LFB233:
	.loc 1 618 0
.LVL130:
	.loc 1 623 0
	ld.w	%d15, [%a4] 64
	movh.a	%a13, hi:IfxScuCcu_xtalFrequency
	.loc 1 618 0
	mov.aa	%a12, %a4
	.loc 1 623 0
	st.w	[%a13] lo:IfxScuCcu_xtalFrequency, %d15
	.loc 1 625 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL131:
	mov	%d10, %d2
.LVL132:
	.loc 1 631 0
	movh.a	%a15, hi:-268213968
	.loc 1 626 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL133:
	.loc 1 631 0
	lea	%a15, [%a15] lo:-268213968
	.loc 1 630 0
	mov	%d4, %d10
	.loc 1 626 0
	mov	%d8, %d2
.LVL134:
	.loc 1 630 0
	call	IfxScuWdt_clearCpuEndinit
.LVL135:
	.loc 1 631 0
	ld.w	%d11, [%a15]0
	.loc 1 632 0
	ld.w	%d15, [%a15]0
	.loc 1 633 0
	mov	%d4, %d10
	.loc 1 632 0
	insert	%d15, %d15, 1, 3, 1
	.loc 1 631 0
	extr.u	%d11, %d11, 3, 1
	.loc 1 632 0
	st.w	[%a15]0, %d15
	.loc 1 633 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 638 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 640 0
	movh.a	%a2, hi:-268214224
	lea	%a2, [%a2] lo:-268214224
.L120:
	.loc 1 640 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	jltz	%d15, .L120
	.loc 1 646 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 647 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
	.loc 1 650 0
	movh.a	%a15, hi:-268214248
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 4, 1
	st.w	[%a15]0, %d15
	.loc 1 654 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
.L121:
	.loc 1 654 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L121
	.loc 1 660 0 is_stmt 1
	movh.a	%a15, hi:-268214220
	lea	%a15, [%a15] lo:-268214220
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 661 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
.LVL136:
.LBB44:
.LBB45:
	.loc 1 980 0
	movh.a	%a15, hi:-268214256
	lea	%a15, [%a15] lo:-268214256
	.loc 1 976 0
	call	IfxScuWdt_getCpuWatchdogPassword
	.loc 1 980 0
	ld.w	%d15, [%a15]0
	.loc 1 976 0
	mov	%d9, %d2
.LVL137:
	.loc 1 980 0
	andn	%d15, %d15, ~(-97)
	.loc 1 991 0
	movh.a	%a2, hi:-268214256
	lea	%a2, [%a2] lo:-268214256
	.loc 1 980 0
	st.w	[%a15]0, %d15
	.loc 1 986 0
	ld.w	%d6, [%a13] lo:IfxScuCcu_xtalFrequency
	movh	%d15, 27488
	addi	%d15, %d15, -13717
	mul.u	%e6, %d6, %d15
	ld.w	%d15, [%a15]0
	sh	%d2, %d7, -20
.LVL138:
	add	%d2, -1
	insert	%d15, %d15, %d2, 16, 5
	st.w	[%a15]0, %d15
	.loc 1 988 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 2, 1
	st.w	[%a15]0, %d15
	.loc 1 991 0
	lea	%a15, 639
.LVL139:
.L122:
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L124
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 8, .L152
.L124:
	.loc 1 988 0
	loop	%a15, .L122
.LVL140:
	.loc 1 1005 0
	movh.a	%a15, hi:-268213972
	.loc 1 1004 0
	mov	%d4, %d9
	.loc 1 1005 0
	lea	%a15, [%a15] lo:-268213972
	.loc 1 1004 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 1005 0
	ld.w	%d15, [%a15]0
	.loc 1 1007 0
	mov	%d4, %d9
	.loc 1 1005 0
	insert	%d15, %d15, 1, 3, 1
.LBE45:
.LBE44:
	.loc 1 997 0
	mov	%d9, 1
.LVL141:
.LBB48:
.LBB46:
	.loc 1 1005 0
	st.w	[%a15]0, %d15
	.loc 1 1006 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 1007 0
	call	IfxScuWdt_setCpuEndinit
.LVL142:
.LBE46:
.LBE48:
	.loc 1 665 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
	j	.L126
.LVL143:
.L152:
.LBB49:
.LBB47:
	.loc 1 1005 0
	movh.a	%a15, hi:-268213972
	lea	%a15, [%a15] lo:-268213972
	.loc 1 1004 0
	mov	%d4, %d9
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 1005 0
	ld.w	%d15, [%a15]0
	.loc 1 1007 0
	mov	%d4, %d9
	.loc 1 1005 0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 1006 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 1007 0
	call	IfxScuWdt_setCpuEndinit
.LBE47:
.LBE49:
	.loc 1 665 0
	mov	%d4, %d8
	call	IfxScuWdt_setSafetyEndinit
.LBB50:
	.loc 1 677 0
	mov	%d4, %d8
	.loc 1 679 0
	movh.a	%a15, hi:-268214252
	.loc 1 677 0
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 679 0
	lea	%a15, [%a15] lo:-268214252
.L127:
	.loc 1 679 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L127
	.loc 1 685 0 is_stmt 1
	movh.a	%a15, hi:-268214244
	lea	%a15, [%a15] lo:-268214244
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%a12] 10
	.loc 1 704 0
	movh	%d4, 14418
	.loc 1 685 0
	insert	%d15, %d15, %d2, 0, 7
	.loc 1 704 0
	addi	%d4, %d4, -18665
	.loc 1 685 0
	st.w	[%a15]0, %d15
	.loc 1 689 0
	movh.a	%a15, hi:-268214248
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%a12] 8
	insert	%d15, %d15, %d2, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 690 0
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%a12] 9
	insert	%d15, %d15, %d2, 9, 7
	st.w	[%a15]0, %d15
	.loc 1 694 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 6, 1
	st.w	[%a15]0, %d15
	.loc 1 696 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 698 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 5, 1
	st.w	[%a15]0, %d15
	.loc 1 699 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 702 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 706 0
	movh.a	%a15, hi:-268214252
	.loc 1 704 0
	call	IfxScuCcu_wait
	.loc 1 706 0
	lea	%a15, [%a15] lo:-268214252
.L128:
	.loc 1 706 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 2, .L128
	.loc 1 712 0 is_stmt 1
	movh.a	%a15, hi:-268214248
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 714 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
.L129:
	.loc 1 714 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a2, hi:-268214224
	lea	%a2, [%a2] lo:-268214224
	jltz	%d15, .L129
	.loc 1 720 0 is_stmt 1
	ld.w	%d15, [%a2]0
	.loc 1 723 0
	movh.a	%a15, hi:-268214224
	.loc 1 720 0
	insert	%d15, %d15, 1, 28, 2
	.loc 1 723 0
	lea	%a15, [%a15] lo:-268214224
	.loc 1 720 0
	st.w	[%a2]0, %d15
.L130:
	.loc 1 723 0 discriminator 1
	ld.w	%d15, [%a15]0
	movh.a	%a13, hi:-268214224
	lea	%a13, [%a13] lo:-268214224
	jltz	%d15, .L130
	.loc 1 730 0
	ld.w	%d4, [%a12] 12
	.loc 1 742 0
	movh.a	%a15, hi:-268214220
	.loc 1 730 0
	call	IfxScuCcu_wait
.LBB51:
	.loc 1 734 0
	ld.w	%d2, [%a13]0
	ld.w	%d15, [%a12] 20
	.loc 1 736 0
	ld.w	%d3, [%a12] 16
	.loc 1 734 0
	andn	%d2, %d2, %d15
	.loc 1 736 0
	and	%d15, %d3
	or	%d15, %d2
.LVL144:
	.loc 1 737 0
	insert	%d15, %d15, 1, 28, 2
.LVL145:
.LBE51:
	.loc 1 742 0
	lea	%a15, [%a15] lo:-268214220
.LBB52:
	.loc 1 738 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 739 0
	st.w	[%a13]0, %d15
.L131:
.LBE52:
	.loc 1 742 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL146:
	movh.a	%a2, hi:-268214220
	lea	%a2, [%a2] lo:-268214220
	jltz	%d15, .L131
.LBB53:
	.loc 1 751 0
	ld.w	%d15, [%a12] 28
	ld.w	%d2, [%a2]0
	.loc 1 753 0
	ld.w	%d3, [%a12] 24
	.loc 1 751 0
	andn	%d2, %d2, %d15
	.loc 1 753 0
	and	%d15, %d3
	or	%d15, %d2
.LVL147:
	.loc 1 754 0
	insert	%d15, %d15, 1, 28, 2
.LVL148:
.LBE53:
	.loc 1 759 0
	movh.a	%a15, hi:-268214208
.LBB54:
	.loc 1 755 0
	insert	%d15, %d15, 1, 30, 1
.LBE54:
	.loc 1 759 0
	lea	%a15, [%a15] lo:-268214208
.LBB55:
	.loc 1 756 0
	st.w	[%a2]0, %d15
.L132:
.LBE55:
	.loc 1 759 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL149:
	movh.a	%a2, hi:-268214208
	lea	%a2, [%a2] lo:-268214208
	jltz	%d15, .L132
.LBB56:
	.loc 1 768 0
	ld.w	%d15, [%a12] 36
	ld.w	%d2, [%a2]0
	.loc 1 770 0
	ld.w	%d3, [%a12] 32
	.loc 1 768 0
	andn	%d2, %d2, %d15
	.loc 1 770 0
	and	%d15, %d3
	or	%d15, %d2
.LVL150:
	.loc 1 771 0
	insert	%d15, %d15, 1, 30, 1
.LVL151:
.LBE56:
	.loc 1 775 0
	movh.a	%a15, hi:-268214196
	lea	%a15, [%a15] lo:-268214196
.LBB57:
	.loc 1 772 0
	st.w	[%a2]0, %d15
.L133:
.LBE57:
	.loc 1 775 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL152:
	movh.a	%a2, hi:-268214196
	lea	%a2, [%a2] lo:-268214196
	jltz	%d15, .L133
.LBB58:
	.loc 1 782 0
	ld.w	%d2, [%a2]0
	ld.w	%d15, [%a12] 44
	.loc 1 784 0
	ld.w	%d3, [%a12] 40
	.loc 1 782 0
	andn	%d2, %d2, %d15
	.loc 1 784 0
	and	%d15, %d3
	or	%d15, %d2
.LVL153:
	.loc 1 785 0
	insert	%d15, %d15, 1, 30, 1
.LVL154:
.LBE58:
.LBB59:
	.loc 1 791 0
	movh.a	%a15, hi:-268214144
	lea	%a15, [%a15] lo:-268214144
	.loc 1 793 0
	ld.w	%d3, [%a12] 48
.LBE59:
.LBB60:
	.loc 1 786 0
	st.w	[%a2]0, %d15
.LBE60:
.LBB61:
	.loc 1 791 0
	ld.w	%d2, [%a15]0
	ld.w	%d15, [%a12] 52
.LVL155:
.LBE61:
	.loc 1 798 0
	mov	%d4, %d8
.LBB62:
	.loc 1 791 0
	andn	%d2, %d2, %d15
.LVL156:
	.loc 1 793 0
	and	%d15, %d3
	or	%d15, %d2
.LVL157:
.LBE62:
	.loc 1 975 0
	mov	%d9, 0
.LVL158:
.LBB63:
	.loc 1 794 0
	st.w	[%a15]0, %d15
.LBE63:
.LBB64:
	.loc 1 804 0
	movh.a	%a15, hi:-134209516
.LBE64:
	.loc 1 798 0
	call	IfxScuWdt_setSafetyEndinit
.LBB65:
	.loc 1 804 0
	lea	%a15, [%a15] lo:-134209516
	ld.w	%d15, [%a12] 60
.LVL159:
	.loc 1 808 0
	ld.w	%d3, [%a12] 56
	.loc 1 804 0
	ld.w	%d2, [%a15]0
.LVL160:
	.loc 1 810 0
	mov	%d4, %d10
	.loc 1 807 0
	andn	%d2, %d2, %d15
.LVL161:
	.loc 1 808 0
	and	%d15, %d3
	or	%d15, %d2
.LVL162:
	.loc 1 810 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 812 0
	mov	%d4, %d10
	.loc 1 811 0
	st.w	[%a15]0, %d15
	.loc 1 812 0
	call	IfxScuWdt_setCpuEndinit
.LVL163:
.LBE65:
	.loc 1 817 0
	ld.bu	%d15, [%a12]0
.LVL164:
	jz	%d15, .L126
	.loc 1 823 0
	movh.a	%a15, hi:-268214252
	.loc 1 830 0
	movh.a	%a14, hi:-268214244
	.loc 1 823 0
	lea	%a15, [%a15] lo:-268214252
	.loc 1 830 0
	lea	%a14, [%a14] lo:-268214244
.LVL165:
.L136:
	.loc 1 820 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.L134:
	.loc 1 823 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L134
	.loc 1 830 0
	sh	%d15, %d9, 1
	mov.a	%a2, %d15
	ld.w	%d15, [%a12] 4
	addsc.a	%a13, %a2, %d9, 0
	.loc 1 831 0
	mov	%d4, %d8
	.loc 1 830 0
	add.a	%a13, %a13
	add.a	%a13, %a13
	addsc.a	%a2, %a13, %d15, 0
	ld.w	%d15, [%a14]0
	ld.bu	%d2, [%a2]0
	insert	%d15, %d15, %d2, 0, 7
	st.w	[%a14]0, %d15
	.loc 1 831 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 835 0
	ld.w	%d15, [%a12] 4
	addsc.a	%a2, %a13, %d15, 0
	ld.a	%a3, [%a2] 8
	jz.a	%a3, .L135
	.loc 1 837 0
	calli	%a3
	ld.w	%d15, [%a12] 4
	addsc.a	%a2, %a13, %d15, 0
.L135:
	.loc 1 841 0
	ld.w	%d4, [%a2] 4
	.loc 1 817 0
	add	%d9, 1
	.loc 1 841 0
	call	IfxScuCcu_wait
	.loc 1 817 0
	ld.bu	%d15, [%a12]0
	and	%d9, %d9, 255
.LVL166:
	jlt.u	%d9, %d15, .L136
	.loc 1 975 0
	mov	%d9, 0
.LVL167:
.L126:
.LBE50:
	.loc 1 847 0
	movh.a	%a15, hi:-268214248
	.loc 1 846 0
	mov	%d4, %d8
	.loc 1 847 0
	lea	%a15, [%a15] lo:-268214248
	.loc 1 846 0
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 847 0
	ld.w	%d15, [%a15]0
	.loc 1 848 0
	mov	%d4, %d8
	.loc 1 847 0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 848 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 853 0
	movh.a	%a15, hi:-268213972
	.loc 1 852 0
	mov	%d4, %d10
	.loc 1 853 0
	lea	%a15, [%a15] lo:-268213972
	.loc 1 852 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 853 0
	ld.w	%d15, [%a15]0
	.loc 1 855 0
	mov	%d4, %d10
	.loc 1 853 0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 854 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	ld.w	%d15, [%a15]0
	ins.t	%d15, %d15,3, %d11,0
	st.w	[%a15]0, %d15
	.loc 1 855 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 858 0
	mov	%d2, %d9
	ret
.LFE233:
	.size	IfxScuCcu_init, .-IfxScuCcu_init
.section .text.IfxScuCcu_initConfig,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initConfig
	.type	IfxScuCcu_initConfig, @function
IfxScuCcu_initConfig:
.LFB234:
	.loc 1 862 0
.LVL168:
	.loc 1 863 0
	movh.a	%a15, hi:IfxScuCcu_defaultClockConfig
	lea	%a15, [%a15] lo:IfxScuCcu_defaultClockConfig
		# #chunks=8, chunksize=8, remains=4
	lea	%a2, 8-1
	0:
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	loop	%a2, 0b
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
.LVL169:
	.loc 1 864 0
	ret
.LFE234:
	.size	IfxScuCcu_initConfig, .-IfxScuCcu_initConfig
.section .text.IfxScuCcu_initErayPll,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initErayPll
	.type	IfxScuCcu_initErayPll, @function
IfxScuCcu_initErayPll:
.LFB235:
	.loc 1 868 0
.LVL170:
	.loc 1 868 0
	mov.aa	%a12, %a4
	.loc 1 873 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL171:
	mov	%d8, %d2
.LVL172:
	.loc 1 878 0
	movh.a	%a15, hi:-268213968
	.loc 1 874 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL173:
	.loc 1 878 0
	lea	%a15, [%a15] lo:-268213968
	.loc 1 877 0
	mov	%d4, %d8
	.loc 1 874 0
	mov	%d9, %d2
.LVL174:
	.loc 1 877 0
	call	IfxScuWdt_clearCpuEndinit
.LVL175:
	.loc 1 878 0
	ld.w	%d10, [%a15]0
	.loc 1 879 0
	ld.w	%d15, [%a15]0
	.loc 1 880 0
	mov	%d4, %d8
	.loc 1 879 0
	insert	%d15, %d15, 1, 3, 1
	.loc 1 878 0
	extr.u	%d10, %d10, 3, 1
	.loc 1 879 0
	st.w	[%a15]0, %d15
	.loc 1 880 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 885 0
	movh.a	%a15, hi:-268214232
	.loc 1 882 0
	mov	%d4, %d9
	.loc 1 885 0
	lea	%a15, [%a15] lo:-268214232
	.loc 1 882 0
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 885 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 16, .L155
	.loc 1 885 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L172
.L155:
	.loc 1 888 0 is_stmt 1
	movh.a	%a15, hi:-268214232
	lea	%a15, [%a15] lo:-268214232
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 16, 1
	st.w	[%a15]0, %d15
	.loc 1 889 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.w	[%a15]0, %d15
	.loc 1 891 0
	movh.a	%a15, hi:-268214236
	lea	%a15, [%a15] lo:-268214236
.L157:
	.loc 1 891 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 1, .L157
	.loc 1 895 0 is_stmt 1
	ld.w	%d4, [%a12] 4
	call	IfxScuCcu_wait
.L156:
	.loc 1 900 0
	movh.a	%a15, hi:-268214236
	lea	%a15, [%a15] lo:-268214236
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L166
.L160:
	.loc 1 911 0 discriminator 1
	movh.a	%a15, hi:-268214236
	lea	%a15, [%a15] lo:-268214236
.L165:
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L165
	.loc 1 914 0
	movh.a	%a15, hi:-268214228
	lea	%a15, [%a15] lo:-268214228
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%a12] 2
	.loc 1 927 0
	mov	%d4, %d9
	.loc 1 914 0
	insert	%d15, %d15, %d2, 0, 7
	st.w	[%a15]0, %d15
	.loc 1 915 0
	movh.a	%a15, hi:-268214232
	lea	%a15, [%a15] lo:-268214232
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%a12]0
	insert	%d15, %d15, %d2, 24, 4
	st.w	[%a15]0, %d15
	.loc 1 916 0
	ld.w	%d15, [%a15]0
	ld.bu	%d2, [%a12] 1
	insert	%d15, %d15, %d2, 9, 5
	st.w	[%a15]0, %d15
	.loc 1 924 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 18, 1
	st.w	[%a15]0, %d15
	.loc 1 925 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 5, 1
	st.w	[%a15]0, %d15
	.loc 1 927 0
	call	IfxScuWdt_setSafetyEndinit
.LVL176:
	.loc 1 932 0
	movh.a	%a2, hi:-268214236
	movh.a	%a15, hi:49998
	lea	%a2, [%a2] lo:-268214236
	lea	%a15, [%a15] lo:49998
.LVL177:
.L161:
	.loc 1 932 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a2]0
	jnz.t	%d15, 2, .L162
	.loc 1 927 0 is_stmt 1 discriminator 1
	loop	%a15, .L161
.L162:
	.loc 1 943 0
	movh.a	%a15, hi:-268214232
	lea	%a15, [%a15] lo:-268214232
	.loc 1 941 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 943 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
	.loc 1 946 0
	movh.a	%a15, hi:-268214236
	lea	%a15, [%a15] lo:-268214236
.L164:
	.loc 1 946 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L164
	.loc 1 949 0 is_stmt 1
	movh.a	%a15, hi:-268214236
	.loc 1 954 0
	mov	%d4, %d9
	.loc 1 949 0
	lea	%a15, [%a15] lo:-268214236
	ld.w	%d15, [%a15]0
	.loc 1 954 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 958 0
	movh.a	%a15, hi:-268213972
	.loc 1 957 0
	mov	%d4, %d8
	.loc 1 958 0
	lea	%a15, [%a15] lo:-268213972
	.loc 1 957 0
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 958 0
	ld.w	%d15, [%a15]0
	.loc 1 960 0
	mov	%d4, %d8
	.loc 1 958 0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 959 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	ld.w	%d15, [%a15]0
	ins.t	%d15, %d15,3, %d10,0
	st.w	[%a15]0, %d15
	.loc 1 960 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 963 0
	mov	%d2, 0
	ret
.L166:
	.loc 1 902 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 4, .L166
	.loc 1 905 0
	movh.a	%a15, hi:-268214228
	lea	%a15, [%a15] lo:-268214228
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 3, 16, 7
	st.w	[%a15]0, %d15
	.loc 1 908 0
	movh.a	%a15, hi:-268214232
	lea	%a15, [%a15] lo:-268214232
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15]0, %d15
	j	.L160
.L172:
	.loc 1 885 0 discriminator 1
	movh.a	%a15, hi:-268214236
	lea	%a15, [%a15] lo:-268214236
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L156
	j	.L155
.LFE235:
	.size	IfxScuCcu_initErayPll, .-IfxScuCcu_initErayPll
.section .text.IfxScuCcu_initErayPllConfig,"ax",@progbits
	.align 1
	.global	IfxScuCcu_initErayPllConfig
	.type	IfxScuCcu_initErayPllConfig, @function
IfxScuCcu_initErayPllConfig:
.LFB236:
	.loc 1 967 0
.LVL178:
	.loc 1 968 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	mov	%d15, 23
	st.b	[%a4] 1, %d15
	mov	%d15, 5
	st.b	[%a4] 2, %d15
	mov	%d15, 0
	st.w	[%a4] 4, %d15
	.loc 1 969 0
	ret
.LFE236:
	.size	IfxScuCcu_initErayPllConfig, .-IfxScuCcu_initErayPllConfig
.section .text.IfxScuCcu_setCpuFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setCpuFrequency
	.type	IfxScuCcu_setCpuFrequency, @function
IfxScuCcu_setCpuFrequency:
.LFB238:
	.loc 1 1014 0
.LVL179:
	.loc 1 1014 0
	mov	%e10, %d4, %d5
	.loc 1 1019 0
	call	IfxScuCcu_getSriFrequency
.LVL180:
	.loc 1 1021 0
	cmp.f	%d15, %d10, %d2
	or.t	%d15, %d15,2, %d15,1
	.loc 1 1019 0
	mov	%d8, %d2
.LVL181:
	.loc 1 1023 0
	mov	%d9, 0
	.loc 1 1021 0
	jnz	%d15, .L175
	.loc 1 1027 0
	movh	%d9, 17024
	mul.f	%d9, %d10, %d9
	div.f	%d9, %d9, %d2
	ftouz	%d9, %d9
.LVL182:
.L175:
	.loc 1 1030 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL183:
	.loc 1 1033 0
	mov	%d4, %d2
	.loc 1 1030 0
	mov	%d15, %d2
.LVL184:
	.loc 1 1033 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL185:
	.loc 1 1035 0
	jnz	%d11, .L176
	.loc 1 1038 0
	movh.a	%a15, hi:-268214144
	lea	%a15, [%a15] lo:-268214144
	st.w	[%a15]0, %d9
.L176:
	.loc 1 1044 0
	mov	%d4, %d15
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 1047 0
	jz	%d9, .L178
	.loc 1 1049 0
	sh	%d9, -6
.LVL186:
	utof	%d9, %d9
	mul.f	%d8, %d8, %d9
.LVL187:
.L178:
	.loc 1 1053 0
	mov	%d2, %d8
	ret
.LFE238:
	.size	IfxScuCcu_setCpuFrequency, .-IfxScuCcu_setCpuFrequency
.section .text.IfxScuCcu_setGtmFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setGtmFrequency
	.type	IfxScuCcu_setGtmFrequency, @function
IfxScuCcu_setGtmFrequency:
.LFB239:
	.loc 1 1057 0
.LVL188:
	.loc 1 1059 0
	movh.a	%a15, hi:-268214220
	lea	%a15, [%a15] lo:-268214220
	.loc 1 1057 0
	mov	%d8, %d4
	.loc 1 1059 0
	ld.w	%d15, [%a15]0
.LVL189:
	.loc 1 1061 0
	call	IfxScuCcu_getSourceFrequency
.LVL190:
	.loc 1 1062 0
	div.f	%d2, %d2, %d8
.LVL191:
	ftoiz	%d3, %d2
	itof	%d4, %d3
	sub.f	%d2, %d2, %d4
	movh	%d4, 16128
	cmp.f	%d2, %d2, %d4
	extr.u	%d2, %d2, 2, 1
	add	%d2, %d3
.LVL192:
.LBB66:
.LBB67:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 114 0
	mov	%d3, 1
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d2, %d3
	# 0 "" 2
.LVL193:
#NO_APP
.LBE67:
.LBE66:
	.loc 1 1066 0
	addi	%d3, %d2, -7
	jge.u	%d3, 7, .L184
	.loc 1 1068 0 discriminator 1
	andn	%d2, %d2, ~(-2)
.LVL194:
.L187:
	.loc 1 1071 0
	and	%d9, %d2, 15
.L186:
	.loc 1 1078 0
	insert	%d15, %d15, %d9, 12, 4
	.loc 1 1076 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 1079 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1077 0
	mov	%d4, %d2
	.loc 1 1080 0
	movh.a	%a15, hi:-268214220
	.loc 1 1076 0
	mov	%d8, %d2
.LVL195:
	.loc 1 1080 0
	lea	%a15, [%a15] lo:-268214220
	.loc 1 1077 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL196:
	.loc 1 1082 0
	mov	%d4, %d8
	.loc 1 1080 0
	st.w	[%a15]0, %d15
	.loc 1 1082 0
	call	IfxScuWdt_setSafetyEndinit
.LBB68:
.LBB69:
	.loc 2 1052 0
	call	IfxScuCcu_getSourceFrequency
	ld.w	%d15, [%a15]0
.LVL197:
	extr.u	%d15, %d15, 12, 4
	itof	%d15, %d15
.LBE69:
.LBE68:
	.loc 1 1085 0
	div.f	%d2, %d2, %d15
	ret
.LVL198:
.L184:
	.loc 1 1071 0
	eq	%d3, %d2, 14
	mov	%d9, 12
	jnz	%d3, .L186
	j	.L187
.LFE239:
	.size	IfxScuCcu_setGtmFrequency, .-IfxScuCcu_setGtmFrequency
.section .text.IfxScuCcu_setPll2Frequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setPll2Frequency
	.type	IfxScuCcu_setPll2Frequency, @function
IfxScuCcu_setPll2Frequency:
.LFB240:
	.loc 1 1089 0
.LVL199:
	.loc 1 1089 0
	mov	%d15, %d4
	.loc 1 1090 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL200:
	mov	%d8, %d2
.LVL201:
	.loc 1 1091 0
	call	IfxScuCcu_getPllVcoFrequency
.LVL202:
	.loc 1 1093 0
	mov	%d4, %d8
	.loc 1 1091 0
	mov	%d9, %d2
.LVL203:
	.loc 1 1093 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL204:
	.loc 1 1091 0
	div.f	%d2, %d9, %d15
	movh	%d15, 16256
.LVL205:
	.loc 1 1094 0
	movh.a	%a15, hi:-268214244
	.loc 1 1091 0
	sub.f	%d2, %d2, %d15
	.loc 1 1094 0
	lea	%a15, [%a15] lo:-268214244
	.loc 1 1091 0
	ftouz	%d2, %d2
.LVL206:
	.loc 1 1094 0
	ld.w	%d15, [%a15]0
	.loc 1 1095 0
	mov	%d4, %d8
	.loc 1 1094 0
	insert	%d15, %d15, %d2, 8, 7
	st.w	[%a15]0, %d15
	.loc 1 1095 0
	call	IfxScuWdt_setSafetyEndinit
.LVL207:
.LBB70:
.LBB71:
	.loc 2 1059 0
	call	IfxScuCcu_getPllVcoFrequency
	ld.w	%d15, [%a15]0
	extr.u	%d15, %d15, 8, 7
	add	%d15, 1
	itof	%d15, %d15
.LBE71:
.LBE70:
	.loc 1 1098 0
	div.f	%d2, %d2, %d15
	ret
.LFE240:
	.size	IfxScuCcu_setPll2Frequency, .-IfxScuCcu_setPll2Frequency
.section .text.IfxScuCcu_setSpbFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setSpbFrequency
	.type	IfxScuCcu_setSpbFrequency, @function
IfxScuCcu_setSpbFrequency:
.LFB241:
	.loc 1 1102 0
.LVL208:
	.loc 1 1102 0
	mov	%d15, %d4
	.loc 1 1107 0
	call	IfxScuCcu_getSourceFrequency
.LVL209:
	.loc 1 1108 0
	div.f	%d2, %d2, %d15
.LVL210:
.LBB72:
.LBB73:
	.loc 3 114 0
	mov	%d15, 2
.LVL211:
.LBE73:
.LBE72:
	.loc 1 1108 0
	ftouz	%d2, %d2
.LVL212:
.LBB75:
.LBB74:
	.loc 3 114 0
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d2, %d15
	# 0 "" 2
.LVL213:
#NO_APP
.LBE74:
.LBE75:
	.loc 1 1111 0
	add	%d2, %d15, -7
.LVL214:
	jge.u	%d2, 7, .L192
	.loc 1 1113 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL215:
.L196:
	.loc 1 1116 0
	and	%d10, %d15, 15
.L194:
	.loc 1 1121 0
	call	IfxScuWdt_getCpuWatchdogPassword
	mov	%d8, %d2
.LVL216:
	.loc 1 1122 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL217:
	.loc 1 1124 0
	mov	%d4, %d8
	.loc 1 1125 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	.loc 1 1122 0
	mov	%d9, %d2
.LVL218:
	.loc 1 1124 0
	call	IfxScuWdt_clearCpuEndinit
.LVL219:
	.loc 1 1125 0
	ld.w	%d2, [%a15]0
	mov	%d15, 992
	or	%d15, %d2
	.loc 1 1126 0
	mov	%d4, %d8
	.loc 1 1125 0
	st.w	[%a15]0, %d15
	.loc 1 1126 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 1128 0
	mov	%d4, %d9
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 1129 0
	movh.a	%a2, hi:-268214224
	lea	%a2, [%a2] lo:-268214224
	ld.w	%d15, [%a2]0
	.loc 1 1133 0
	mov	%d4, %d9
	.loc 1 1130 0
	insert	%d15, %d15, %d10, 16, 4
.LVL220:
	.loc 1 1131 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1132 0
	st.w	[%a2]0, %d15
	.loc 1 1133 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 1135 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 1136 0
	ld.w	%d15, [%a15]0
.LVL221:
	.loc 1 1137 0
	mov	%d4, %d8
	.loc 1 1136 0
	insert	%d15, %d15, 0, 5, 5
	st.w	[%a15]0, %d15
	.loc 1 1139 0
	movh.a	%a15, hi:-268214224
	.loc 1 1137 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 1139 0
	lea	%a15, [%a15] lo:-268214224
.L195:
	.loc 1 1139 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L195
	.loc 1 1142 0 is_stmt 1
	j	IfxScuCcu_getSpbFrequency
.LVL222:
.L192:
	.loc 1 1116 0
	eq	%d2, %d15, 14
	mov	%d10, 12
	jnz	%d2, .L194
	j	.L196
.LFE241:
	.size	IfxScuCcu_setSpbFrequency, .-IfxScuCcu_setSpbFrequency
.section .text.IfxScuCcu_setSriFrequency,"ax",@progbits
	.align 1
	.global	IfxScuCcu_setSriFrequency
	.type	IfxScuCcu_setSriFrequency, @function
IfxScuCcu_setSriFrequency:
.LFB242:
	.loc 1 1147 0
.LVL223:
	.loc 1 1147 0
	mov	%d15, %d4
	.loc 1 1149 0
	call	IfxScuCcu_getSourceFrequency
.LVL224:
	.loc 1 1152 0
	div.f	%d2, %d2, %d15
.LVL225:
	ftoiz	%d3, %d2
	itof	%d15, %d3
.LVL226:
	sub.f	%d2, %d2, %d15
	movh	%d15, 16128
	cmp.f	%d15, %d2, %d15
	extr.u	%d15, %d15, 2, 1
.LBB76:
.LBB77:
	.loc 3 114 0
	mov	%d2, 1
.LBE77:
.LBE76:
	.loc 1 1152 0
	add	%d15, %d3
.LVL227:
.LBB79:
.LBB78:
	.loc 3 114 0
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d15, %d2
	# 0 "" 2
.LVL228:
#NO_APP
.LBE78:
.LBE79:
	.loc 1 1155 0
	add	%d2, %d15, -7
	jge.u	%d2, 7, .L203
	.loc 1 1157 0 discriminator 1
	andn	%d15, %d15, ~(-2)
.LVL229:
.L207:
	.loc 1 1160 0
	and	%d9, %d15, 15
.L205:
	.loc 1 1165 0
	call	IfxScuWdt_getSafetyWatchdogPassword
	.loc 1 1168 0
	movh.a	%a15, hi:-268214224
	.loc 1 1166 0
	mov	%d4, %d2
	.loc 1 1168 0
	lea	%a15, [%a15] lo:-268214224
	.loc 1 1165 0
	mov	%d8, %d2
.LVL230:
	.loc 1 1166 0
	call	IfxScuWdt_clearSafetyEndinit
.LVL231:
	.loc 1 1168 0
	ld.w	%d15, [%a15]0
	.loc 1 1173 0
	mov	%d4, %d8
	.loc 1 1169 0
	insert	%d15, %d15, %d9, 8, 4
.LVL232:
	.loc 1 1170 0
	insert	%d15, %d15, 1, 30, 1
	.loc 1 1171 0
	st.w	[%a15]0, %d15
	.loc 1 1173 0
	call	IfxScuWdt_setSafetyEndinit
.L206:
	.loc 1 1175 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL233:
	jltz	%d15, .L206
	.loc 1 1178 0
	j	IfxScuCcu_getSriFrequency
.LVL234:
.L203:
	.loc 1 1160 0
	eq	%d2, %d15, 14
	mov	%d9, 12
	jnz	%d2, .L205
	j	.L207
.LFE242:
	.size	IfxScuCcu_setSriFrequency, .-IfxScuCcu_setSriFrequency
.section .text.IfxScuCcu_switchToBackupClock,"ax",@progbits
	.align 1
	.global	IfxScuCcu_switchToBackupClock
	.type	IfxScuCcu_switchToBackupClock, @function
IfxScuCcu_switchToBackupClock:
.LFB243:
	.loc 1 1184 0
.LVL235:
	.loc 1 1189 0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	ld.w	%d2, [%a15]0
	movh	%d15, 12288
	and	%d15, %d2
	.loc 1 1184 0
	mov.aa	%a12, %a4
	.loc 1 1189 0
	jnz	%d15, .L222
	ret
.L222:
	.loc 1 1194 0
	call	IfxScuWdt_getSafetyWatchdogPassword
.LVL236:
	mov	%d8, %d2
.LVL237:
	.loc 1 1195 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL238:
	.loc 1 1198 0
	ld.bu	%d9, [%a12]0
	.loc 1 1195 0
	mov	%d10, %d2
.LVL239:
	.loc 1 1198 0
	jz	%d9, .L213
	.loc 1 1183 0
	add	%d9, -1
.LVL240:
	.loc 1 1198 0
	mov.a	%a15, %d9
	.loc 1 1211 0
	movh.a	%a14, hi:-268214244
	.loc 1 1198 0
	add.a	%a13, %a15, %a15
	addsc.a	%a13, %a13, %d9, 0
	.loc 1 1204 0
	movh.a	%a15, hi:-268214252
	.loc 1 1198 0
	add.a	%a13, %a13
	add.a	%a13, %a13
	.loc 1 1204 0
	lea	%a15, [%a15] lo:-268214252
	.loc 1 1211 0
	lea	%a14, [%a14] lo:-268214244
.LVL241:
.L215:
	.loc 1 1201 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
.L214:
	.loc 1 1204 0 discriminator 1
	ld.w	%d15, [%a15]0
	jz.t	%d15, 5, .L214
	.loc 1 1211 0
	ld.w	%d15, [%a12] 4
	.loc 1 1212 0
	mov	%d4, %d8
	.loc 1 1211 0
	addsc.a	%a2, %a13, %d15, 0
	ld.w	%d15, [%a14]0
	ld.bu	%d3, [%a2]0
	insert	%d15, %d15, %d3, 0, 7
	st.w	[%a14]0, %d15
	.loc 1 1212 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 1215 0
	ld.w	%d15, [%a12] 4
	addsc.a	%a2, %a13, %d15, 0
	.loc 1 1198 0
	lea	%a13, [%a13] -12
	.loc 1 1215 0
	ld.w	%d4, [%a2] 4
	call	IfxScuCcu_wait
.LVL242:
	.loc 1 1198 0
	jz	%d9, .L213
	add	%d9, -1
.LVL243:
	j	.L215
.LVL244:
.L213:
	.loc 1 1222 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	.loc 1 1221 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 1222 0
	ld.w	%d9, [%a15]0
.LVL245:
	.loc 1 1223 0
	ld.w	%d15, [%a15]0
	.loc 1 1224 0
	mov	%d4, %d10
	.loc 1 1223 0
	insert	%d15, %d15, 1, 3, 1
	.loc 1 1222 0
	extr.u	%d9, %d9, 3, 1
	.loc 1 1223 0
	st.w	[%a15]0, %d15
	.loc 1 1224 0
	call	IfxScuWdt_setCpuEndinit
	.loc 1 1229 0
	mov	%d4, %d8
	call	IfxScuWdt_clearSafetyEndinit
	.loc 1 1231 0
	movh.a	%a2, hi:-268214224
	lea	%a2, [%a2] lo:-268214224
.L216:
	.loc 1 1231 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a2]0
	movh.a	%a15, hi:-268214224
	lea	%a15, [%a15] lo:-268214224
	jltz	%d15, .L216
	.loc 1 1237 0 is_stmt 1
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 0, 28, 2
	st.w	[%a15]0, %d15
	.loc 1 1238 0
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 30, 1
	st.w	[%a15]0, %d15
.L217:
	.loc 1 1240 0 discriminator 1
	ld.w	%d15, [%a15]0
	jltz	%d15, .L217
	.loc 1 1247 0
	movh.a	%a15, hi:-268214248
	lea	%a15, [%a15] lo:-268214248
	ld.w	%d15, [%a15]0
	.loc 1 1251 0
	mov	%d4, %d8
	.loc 1 1247 0
	insert	%d15, %d15, 1, 4, 1
	st.w	[%a15]0, %d15
	.loc 1 1250 0
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-65)
	st.w	[%a15]0, %d15
	.loc 1 1251 0
	call	IfxScuWdt_setSafetyEndinit
	.loc 1 1256 0
	movh.a	%a15, hi:-268213972
	lea	%a15, [%a15] lo:-268213972
	.loc 1 1255 0
	mov	%d4, %d10
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 1256 0
	ld.w	%d15, [%a15]0
	.loc 1 1258 0
	mov	%d4, %d10
	.loc 1 1256 0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
	.loc 1 1257 0
	movh.a	%a15, hi:-268213968
	lea	%a15, [%a15] lo:-268213968
	ld.w	%d15, [%a15]0
	ins.t	%d15, %d15,3, %d9,0
	st.w	[%a15]0, %d15
	.loc 1 1258 0
	j	IfxScuWdt_setCpuEndinit
.LFE243:
	.size	IfxScuCcu_switchToBackupClock, .-IfxScuCcu_switchToBackupClock
	.global	IfxScuCcu_defaultErayPllConfig
.section .srodata.IfxScuCcu_defaultErayPllConfig,"as",@progbits
	.align 2
	.type	IfxScuCcu_defaultErayPllConfig, @object
	.size	IfxScuCcu_defaultErayPllConfig, 8
IfxScuCcu_defaultErayPllConfig:
	.byte	0
	.byte	23
	.byte	5
	.zero	1
	.word	0
	.global	IfxScuCcu_defaultClockConfig
.section .rodata.IfxScuCcu_defaultClockConfig,"a",@progbits
	.align 2
	.type	IfxScuCcu_defaultClockConfig, @object
	.size	IfxScuCcu_defaultClockConfig, 68
IfxScuCcu_defaultClockConfig:
	.byte	3
	.zero	3
	.word	IfxScuCcu_aDefaultPllConfigSteps
	.byte	1
	.byte	59
	.byte	5
	.zero	1
	.word	961656599
	.word	34734352
	.word	54464496
	.word	34873874
	.word	268435455
	.word	2
	.word	15
	.word	1
	.word	15
	.word	0
	.word	63
	.word	5333
	.word	32767
	.word	20000000
.section .data.IfxScuCcu_xtalFrequency,"aw",@progbits
	.align 2
	.type	IfxScuCcu_xtalFrequency, @object
	.size	IfxScuCcu_xtalFrequency, 4
IfxScuCcu_xtalFrequency:
	.word	20000000
.section .rodata.IfxScuCcu_aDefaultPllConfigSteps,"a",@progbits
	.align 2
	.type	IfxScuCcu_aDefaultPllConfigSteps, @object
	.size	IfxScuCcu_aDefaultPllConfigSteps, 36
IfxScuCcu_aDefaultPllConfigSteps:
	.byte	4
	.zero	3
	.word	953267991
	.word	0
	.byte	3
	.zero	3
	.word	953267991
	.word	0
	.byte	2
	.zero	3
	.word	953267991
	.word	0
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
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB234
	.uaword	.LFE234-.LFB234
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB236
	.uaword	.LFE236-.LFB236
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.align 2
.LEFDE54:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
	.file 8 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
	.file 10 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
	.file 11 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7c85
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x1c8
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.uahalf	0x50c
	.uaword	0xe4
	.uleb128 0x3
	.string	"IfxScu_CCUCON0_CLKSEL_fBack"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxScu_CCUCON0_CLKSEL_fPll"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.uahalf	0x513
	.uaword	0x128
	.uleb128 0x3
	.string	"IfxScu_CCUCON1_INSEL_fOsc1"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxScu_CCUCON1_INSEL_fOsc0"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x59
	.uaword	0x16c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x5
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x198
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x5
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x128
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x134
	.uleb128 0x5
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x1d9
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x68
	.uaword	0x16c
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x5
	.string	"uint64"
	.byte	0x6
	.byte	0x25
	.uaword	0x21a
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.string	"_Ifx_SCU_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x490
	.uleb128 0x7
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x23c
	.uleb128 0x6
	.string	"_Ifx_SCU_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x4ea
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x7
	.byte	0x54
	.uaword	0x490
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x4bb
	.uleb128 0x6
	.string	"_Ifx_SCU_ARSTDIS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x574
	.uleb128 0x7
	.string	"STM0DIS"
	.byte	0x7
	.byte	0x5a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STM1DIS"
	.byte	0x7
	.byte	0x5b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STM2DIS"
	.byte	0x7
	.byte	0x5c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x7
	.byte	0x5d
	.uaword	0x490
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_ARSTDIS_Bits"
	.byte	0x7
	.byte	0x5e
	.uaword	0x505
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x61
	.uaword	0x691
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x7
	.byte	0x63
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BAUD2DIV"
	.byte	0x7
	.byte	0x64
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x65
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LPDIV"
	.byte	0x7
	.byte	0x66
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x67
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FSI2DIV"
	.byte	0x7
	.byte	0x68
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x7
	.byte	0x69
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FSIDIV"
	.byte	0x7
	.byte	0x6a
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0x6b
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CLKSEL"
	.byte	0x7
	.byte	0x6c
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x6d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x6e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON0_Bits"
	.byte	0x7
	.byte	0x6f
	.uaword	0x590
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x795
	.uleb128 0x7
	.string	"CANDIV"
	.byte	0x7
	.byte	0x74
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ERAYDIV"
	.byte	0x7
	.byte	0x75
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STMDIV"
	.byte	0x7
	.byte	0x76
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x77
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ETHDIV"
	.byte	0x7
	.byte	0x78
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ASCLINFDIV"
	.byte	0x7
	.byte	0x79
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ASCLINSDIV"
	.byte	0x7
	.byte	0x7a
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INSEL"
	.byte	0x7
	.byte	0x7b
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x7c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x7d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0x7
	.byte	0x7e
	.uaword	0x6ad
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x81
	.uaword	0x816
	.uleb128 0x7
	.string	"BBBDIV"
	.byte	0x7
	.byte	0x83
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0x84
	.uaword	0x490
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x85
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x86
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON2_Bits"
	.byte	0x7
	.byte	0x87
	.uaword	0x7b1
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8a
	.uaword	0x903
	.uleb128 0x7
	.string	"PLLDIV"
	.byte	0x7
	.byte	0x8c
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PLLSEL"
	.byte	0x7
	.byte	0x8d
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PLLERAYDIV"
	.byte	0x7
	.byte	0x8e
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PLLERAYSEL"
	.byte	0x7
	.byte	0x8f
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRIDIV"
	.byte	0x7
	.byte	0x90
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRISEL"
	.byte	0x7
	.byte	0x91
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0x92
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0x93
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0x94
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0x7
	.byte	0x95
	.uaword	0x832
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x98
	.uaword	0x9e8
	.uleb128 0x7
	.string	"SPBDIV"
	.byte	0x7
	.byte	0x9a
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SPBSEL"
	.byte	0x7
	.byte	0x9b
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GTMDIV"
	.byte	0x7
	.byte	0x9c
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GTMSEL"
	.byte	0x7
	.byte	0x9d
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STMDIV"
	.byte	0x7
	.byte	0x9e
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STMSEL"
	.byte	0x7
	.byte	0x9f
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.byte	0xa0
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xa1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xa2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0x7
	.byte	0xa3
	.uaword	0x91f
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON5_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.uaword	0xa69
	.uleb128 0x7
	.string	"MAXDIV"
	.byte	0x7
	.byte	0xa8
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.byte	0xa9
	.uaword	0x490
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UP"
	.byte	0x7
	.byte	0xaa
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCK"
	.byte	0x7
	.byte	0xab
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON5_Bits"
	.byte	0x7
	.byte	0xac
	.uaword	0xa04
	.uleb128 0x6
	.string	"_Ifx_SCU_CCUCON6_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xaf
	.uaword	0xaca
	.uleb128 0x7
	.string	"CPU0DIV"
	.byte	0x7
	.byte	0xb1
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.byte	0xb2
	.uaword	0x490
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CCUCON6_Bits"
	.byte	0x7
	.byte	0xb3
	.uaword	0xa85
	.uleb128 0x6
	.string	"_Ifx_SCU_CHIPID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb6
	.uaword	0xba5
	.uleb128 0x7
	.string	"CHREV"
	.byte	0x7
	.byte	0xb8
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CHTEC"
	.byte	0x7
	.byte	0xb9
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CHID"
	.byte	0x7
	.byte	0xba
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EEA"
	.byte	0x7
	.byte	0xbb
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UCODE"
	.byte	0x7
	.byte	0xbc
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FSIZE"
	.byte	0x7
	.byte	0xbd
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SP"
	.byte	0x7
	.byte	0xbe
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SEC"
	.byte	0x7
	.byte	0xbf
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x7
	.byte	0xc0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_CHIPID_Bits"
	.byte	0x7
	.byte	0xc1
	.uaword	0xae6
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc4
	.uaword	0xc46
	.uleb128 0x7
	.string	"PWD"
	.byte	0x7
	.byte	0xc6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"START"
	.byte	0x7
	.byte	0xc7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0x7
	.byte	0xc8
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CAL"
	.byte	0x7
	.byte	0xc9
	.uaword	0x490
	.byte	0x4
	.byte	0x16
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0xca
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.byte	0xcb
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSCON_Bits"
	.byte	0x7
	.byte	0xcc
	.uaword	0xbc0
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSLIM_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xcf
	.uaword	0xcfa
	.uleb128 0x7
	.string	"LOWER"
	.byte	0x7
	.byte	0xd1
	.uaword	0x490
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.byte	0xd2
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LLU"
	.byte	0x7
	.byte	0xd3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UPPER"
	.byte	0x7
	.byte	0xd4
	.uaword	0x490
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.byte	0xd5
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.byte	0xd6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UOF"
	.byte	0x7
	.byte	0xd7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSLIM_Bits"
	.byte	0x7
	.byte	0xd8
	.uaword	0xc61
	.uleb128 0x6
	.string	"_Ifx_SCU_DTSSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xdb
	.uaword	0xd8d
	.uleb128 0x7
	.string	"RESULT"
	.byte	0x7
	.byte	0xdd
	.uaword	0x490
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.byte	0xde
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RDY"
	.byte	0x7
	.byte	0xdf
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BUSY"
	.byte	0x7
	.byte	0xe0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.byte	0xe1
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_DTSSTAT_Bits"
	.byte	0x7
	.byte	0xe2
	.uaword	0xd15
	.uleb128 0x6
	.string	"_Ifx_SCU_EICR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe5
	.uaword	0xef8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x7
	.byte	0xe7
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EXIS0"
	.byte	0x7
	.byte	0xe8
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.byte	0xe9
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FEN0"
	.byte	0x7
	.byte	0xea
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"REN0"
	.byte	0x7
	.byte	0xeb
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LDEN0"
	.byte	0x7
	.byte	0xec
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EIEN0"
	.byte	0x7
	.byte	0xed
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INP0"
	.byte	0x7
	.byte	0xee
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x7
	.byte	0xef
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EXIS1"
	.byte	0x7
	.byte	0xf0
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x7
	.byte	0xf1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FEN1"
	.byte	0x7
	.byte	0xf2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"REN1"
	.byte	0x7
	.byte	0xf3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LDEN1"
	.byte	0x7
	.byte	0xf4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EIEN1"
	.byte	0x7
	.byte	0xf5
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INP1"
	.byte	0x7
	.byte	0xf6
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x7
	.byte	0xf7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_SCU_EICR_Bits"
	.byte	0x7
	.byte	0xf8
	.uaword	0xda9
	.uleb128 0x6
	.string	"_Ifx_SCU_EIFR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xfb
	.uaword	0xfdc
	.uleb128 0x7
	.string	"INTF0"
	.byte	0x7
	.byte	0xfd
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INTF1"
	.byte	0x7
	.byte	0xfe
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"INTF2"
	.byte	0x7
	.byte	0xff
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF3"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF4"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF5"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF6"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"INTF7"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x105
	.uaword	0x490
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EIFR_Bits"
	.byte	0x7
	.uahalf	0x106
	.uaword	0xf11
	.uleb128 0xc
	.string	"_Ifx_SCU_EMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x109
	.uaword	0x10e4
	.uleb128 0x9
	.string	"POL"
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODE"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ENON"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PSEL"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x490
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EMSF"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEMSF"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x112
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EMSFM"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEMSFM"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x115
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EMSR_Bits"
	.byte	0x7
	.uahalf	0x116
	.uaword	0xff6
	.uleb128 0xc
	.string	"_Ifx_SCU_ESRCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x119
	.uaword	0x1155
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EDCON"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x490
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESRCFG_Bits"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x10fe
	.uleb128 0xc
	.string	"_Ifx_SCU_ESROCFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x121
	.uaword	0x11c7
	.uleb128 0x9
	.string	"ARI"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ARC"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x125
	.uaword	0x490
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESROCFG_Bits"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x1171
	.uleb128 0xc
	.string	"_Ifx_SCU_EVR13CON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x129
	.uaword	0x126b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x490
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR13OFF"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"BPEVR13OFF"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVR13CON_Bits"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x11e4
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x133
	.uaword	0x130d
	.uleb128 0x9
	.string	"ADC13V"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x136
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ADCSWDV"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x138
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VAL"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRADCSTAT_Bits"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x1289
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x141c
	.uleb128 0x9
	.string	"EVR13OVMOD"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x140
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR13UVMOD"
	.byte	0x7
	.uahalf	0x141
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x142
	.uaword	0x490
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWDOVMOD"
	.byte	0x7
	.uahalf	0x143
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x144
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWDUVMOD"
	.byte	0x7
	.uahalf	0x145
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x146
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x147
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x148
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRMONCTRL_Bits"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x132d
	.uleb128 0xc
	.string	"_Ifx_SCU_EVROVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x14d5
	.uleb128 0x9
	.string	"EVR13OVVAL"
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWDOVVAL"
	.byte	0x7
	.uahalf	0x150
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x151
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x152
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x153
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVROVMON_Bits"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x143c
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x157
	.uaword	0x157d
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x159
	.uaword	0x490
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RSTSWDOFF"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"BPRSTSWDOFF"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRRSTCON_Bits"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x14f3
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x161
	.uaword	0x161e
	.uleb128 0x9
	.string	"SD33P"
	.byte	0x7
	.uahalf	0x163
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x164
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SD33I"
	.byte	0x7
	.uahalf	0x165
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x166
	.uaword	0x490
	.byte	0x4
	.byte	0x13
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x167
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCOEFF2_Bits"
	.byte	0x7
	.uahalf	0x168
	.uaword	0x159c
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16b
	.uaword	0x16ef
	.uleb128 0x9
	.string	"SDFREQSPRD"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TON"
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TOFF"
	.byte	0x7
	.uahalf	0x170
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SDSTEP"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SYNCDIV"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL1_Bits"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x163f
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x177
	.uaword	0x1829
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x179
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBS"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STSP"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"NS"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OL"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PIAD"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ADCMODE"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ADCLPF"
	.byte	0x7
	.uahalf	0x180
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ADCLSB"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x182
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SDLUT"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x184
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL2_Bits"
	.byte	0x7
	.uahalf	0x186
	.uaword	0x170f
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x189
	.uaword	0x1912
	.uleb128 0x9
	.string	"SDOLCON"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODSEL"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODLOW"
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SDVOKLVL"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODMAN"
	.byte	0x7
	.uahalf	0x190
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODHIGH"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL3_Bits"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x1849
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x196
	.uaword	0x1a37
	.uleb128 0x9
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x198
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OV13"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVSWD"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"UV13"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"UVSWD"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"BGPROK"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SCMOD"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x490
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSTAT_Bits"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x1932
	.uleb128 0xc
	.string	"_Ifx_SCU_EVRUVMON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x1aed
	.uleb128 0x9
	.string	"EVR13UVVAL"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWDUVVAL"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRUVMON_Bits"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x1a54
	.uleb128 0xc
	.string	"_Ifx_SCU_EXTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x1bd0
	.uleb128 0x9
	.string	"EN0"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x490
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EN1"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"NSEL"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DIV1"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EXTCON_Bits"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x1b0b
	.uleb128 0xc
	.string	"_Ifx_SCU_FDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x1c7a
	.uleb128 0x9
	.string	"STEP"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x490
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DM"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RESULT"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x490
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DISCLK"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FDR_Bits"
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x1bec
	.uleb128 0xc
	.string	"_Ifx_SCU_FMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cb
	.uaword	0x1df3
	.uleb128 0x9
	.string	"FS0"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS1"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS2"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS3"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS4"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS5"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS6"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FS7"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC0"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC1"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC2"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC3"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC4"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC5"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC6"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FC7"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FMR_Bits"
	.byte	0x7
	.uahalf	0x1df
	.uaword	0x1c93
	.uleb128 0xc
	.string	"_Ifx_SCU_ID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0x1e6a
	.uleb128 0x9
	.string	"MODREV"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODTYPE"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODNUMBER"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ID_Bits"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x1e0c
	.uleb128 0xc
	.string	"_Ifx_SCU_IGCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x2061
	.uleb128 0x9
	.string	"IPEN00"
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN01"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN02"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN03"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN04"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN05"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN06"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN07"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"GEEN0"
	.byte	0x7
	.uahalf	0x1f5
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IGP0"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN10"
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN11"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN12"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN13"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN14"
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN15"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN16"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IPEN17"
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"GEEN1"
	.byte	0x7
	.uahalf	0x200
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IGP1"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IGCR_Bits"
	.byte	0x7
	.uahalf	0x202
	.uaword	0x1e82
	.uleb128 0xc
	.string	"_Ifx_SCU_IN_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x205
	.uaword	0x20ca
	.uleb128 0x9
	.string	"P0"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P1"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x209
	.uaword	0x490
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IN_Bits"
	.byte	0x7
	.uahalf	0x20a
	.uaword	0x207b
	.uleb128 0xc
	.string	"_Ifx_SCU_IOCR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x2159
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PC0"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x211
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PC1"
	.byte	0x7
	.uahalf	0x212
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x213
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IOCR_Bits"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x20e2
	.uleb128 0xc
	.string	"_Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x217
	.uaword	0x21ee
	.uleb128 0x9
	.string	"LBISTREQ"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LBISTREQP"
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PATTERNS"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x490
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x2173
	.uleb128 0xc
	.string	"_Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x220
	.uaword	0x2298
	.uleb128 0x9
	.string	"SEED"
	.byte	0x7
	.uahalf	0x222
	.uaword	0x490
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x223
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SPLITSH"
	.byte	0x7
	.uahalf	0x224
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"BODY"
	.byte	0x7
	.uahalf	0x225
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LBISTFREQU"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x220e
	.uleb128 0xc
	.string	"_Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x231d
	.uleb128 0x9
	.string	"SIGNATURE"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x490
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x22d
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LBISTDONE"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x22b8
	.uleb128 0xc
	.string	"_Ifx_SCU_LCLCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x232
	.uaword	0x23a5
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x234
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LS"
	.byte	0x7
	.uahalf	0x235
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x236
	.uaword	0x490
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LSEN"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLCON0_Bits"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x233d
	.uleb128 0xc
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x241c
	.uleb128 0x9
	.string	"LCLT0"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCLT1"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x490
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0x7
	.uahalf	0x240
	.uaword	0x23c2
	.uleb128 0xc
	.string	"_Ifx_SCU_MANID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x243
	.uaword	0x2490
	.uleb128 0x9
	.string	"DEPT"
	.byte	0x7
	.uahalf	0x245
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MANUF"
	.byte	0x7
	.uahalf	0x246
	.uaword	0x490
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x247
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_MANID_Bits"
	.byte	0x7
	.uahalf	0x248
	.uaword	0x2439
	.uleb128 0xc
	.string	"_Ifx_SCU_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x2535
	.uleb128 0x9
	.string	"PS0"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x24f
	.uaword	0x490
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x250
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x251
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x252
	.uaword	0x490
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OMR_Bits"
	.byte	0x7
	.uahalf	0x253
	.uaword	0x24ab
	.uleb128 0xc
	.string	"_Ifx_SCU_OSCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x256
	.uaword	0x268f
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x258
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PLLLV"
	.byte	0x7
	.uahalf	0x259
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OSCRES"
	.byte	0x7
	.uahalf	0x25a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"GAINSEL"
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODE"
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SHBY"
	.byte	0x7
	.uahalf	0x25d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PLLHV"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"X1D"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"X1DEN"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x262
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OSCVAL"
	.byte	0x7
	.uahalf	0x263
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x264
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"APREN"
	.byte	0x7
	.uahalf	0x265
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x266
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OSCCON_Bits"
	.byte	0x7
	.uahalf	0x267
	.uaword	0x254e
	.uleb128 0xc
	.string	"_Ifx_SCU_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x26a
	.uaword	0x26fb
	.uleb128 0x9
	.string	"P0"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P1"
	.byte	0x7
	.uahalf	0x26d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x490
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OUT_Bits"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x26ab
	.uleb128 0xc
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x272
	.uaword	0x280f
	.uleb128 0x9
	.string	"CSEL0"
	.byte	0x7
	.uahalf	0x274
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSEL1"
	.byte	0x7
	.uahalf	0x275
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSEL2"
	.byte	0x7
	.uahalf	0x276
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x277
	.uaword	0x490
	.byte	0x4
	.byte	0xd
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVSTRT"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVSTP"
	.byte	0x7
	.uahalf	0x279
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DCINVAL"
	.byte	0x7
	.uahalf	0x27a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVCONF"
	.byte	0x7
	.uahalf	0x27c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"POVCONF"
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x2714
	.uleb128 0xc
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x282
	.uaword	0x289b
	.uleb128 0x9
	.string	"OVEN0"
	.byte	0x7
	.uahalf	0x284
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVEN1"
	.byte	0x7
	.uahalf	0x285
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OVEN2"
	.byte	0x7
	.uahalf	0x286
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x287
	.uaword	0x490
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0x7
	.uahalf	0x288
	.uaword	0x282b
	.uleb128 0xc
	.string	"_Ifx_SCU_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x28b
	.uaword	0x2912
	.uleb128 0x9
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x28d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x490
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDISC_Bits"
	.byte	0x7
	.uahalf	0x290
	.uaword	0x28ba
	.uleb128 0xc
	.string	"_Ifx_SCU_PDR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x293
	.uaword	0x29a3
	.uleb128 0x9
	.string	"PD0"
	.byte	0x7
	.uahalf	0x295
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL0"
	.byte	0x7
	.uahalf	0x296
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD1"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL1"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x299
	.uaword	0x490
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDR_Bits"
	.byte	0x7
	.uahalf	0x29a
	.uaword	0x292d
	.uleb128 0xc
	.string	"_Ifx_SCU_PDRR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x2a83
	.uleb128 0x9
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR2"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR3"
	.byte	0x7
	.uahalf	0x2a2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR4"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR5"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR6"
	.byte	0x7
	.uahalf	0x2a5
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDR7"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x490
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDRR_Bits"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x29bc
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ab
	.uaword	0x2bda
	.uleb128 0x9
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x2ad
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODEN"
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x2b3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x2b5
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON0_Bits"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x2a9d
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x2c89
	.uleb128 0x9
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2c2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x2c4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x2c5
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x490
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON1_Bits"
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x2bf7
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x2ced
	.uleb128 0x9
	.string	"MODCFG"
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x2cd
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON2_Bits"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x2ca6
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d1
	.uaword	0x2e49
	.uleb128 0x9
	.string	"VCOBYP"
	.byte	0x7
	.uahalf	0x2d3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VCOPWD"
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x2d5
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"NDIV"
	.byte	0x7
	.uahalf	0x2da
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PLLPWD"
	.byte	0x7
	.uahalf	0x2dc
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x2dd
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RESLD"
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIV"
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYCON0_Bits"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x2d0a
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0x2f00
	.uleb128 0x9
	.string	"K2DIV"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K3DIV"
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x2ea
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K1DIV"
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x490
	.byte	0x4
	.byte	0x9
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYCON1_Bits"
	.byte	0x7
	.uahalf	0x2ed
	.uaword	0x2e6a
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x2fd6
	.uleb128 0x9
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PWDSTAT"
	.byte	0x7
	.uahalf	0x2f3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x2f5
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x490
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYSTAT_Bits"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x2f21
	.uleb128 0xc
	.string	"_Ifx_SCU_PLLSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x30cb
	.uleb128 0x9
	.string	"VCOBYST"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VCOLOCK"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FINDIS"
	.byte	0x7
	.uahalf	0x301
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K1RDY"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"K2RDY"
	.byte	0x7
	.uahalf	0x303
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x304
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODRUN"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x306
	.uaword	0x490
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLSTAT_Bits"
	.byte	0x7
	.uahalf	0x307
	.uaword	0x2ff7
	.uleb128 0xc
	.string	"_Ifx_SCU_PMCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x3167
	.uleb128 0x9
	.string	"REQSLP"
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUSLP"
	.byte	0x7
	.uahalf	0x30d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x30e
	.uaword	0x490
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PMST"
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x310
	.uaword	0x490
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR_Bits"
	.byte	0x7
	.uahalf	0x311
	.uaword	0x30e8
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWCR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x314
	.uaword	0x3392
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x316
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x317
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x318
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x319
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR0DFEN"
	.byte	0x7
	.uahalf	0x31a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR0EDCON"
	.byte	0x7
	.uahalf	0x31b
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1DFEN"
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1EDCON"
	.byte	0x7
	.uahalf	0x31d
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINADFEN"
	.byte	0x7
	.uahalf	0x31e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAEDCON"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBDFEN"
	.byte	0x7
	.uahalf	0x320
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBEDCON"
	.byte	0x7
	.uahalf	0x321
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x322
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYRAMSEL"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x324
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTWKEN"
	.byte	0x7
	.uahalf	0x325
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x326
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x327
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x328
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DCDCSYNC"
	.byte	0x7
	.uahalf	0x329
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x32a
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x32b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x32c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x32d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR0_Bits"
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x3182
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWCR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x331
	.uaword	0x344e
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x333
	.uaword	0x490
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IRADIS"
	.byte	0x7
	.uahalf	0x334
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_13"
	.byte	0x7
	.uahalf	0x335
	.uaword	0x490
	.byte	0x4
	.byte	0xe
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYEVEN"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYEV"
	.byte	0x7
	.uahalf	0x337
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x338
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR1_Bits"
	.byte	0x7
	.uahalf	0x339
	.uaword	0x33af
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWCR3_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x3503
	.uleb128 0x9
	.string	"WUTREL"
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x490
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x33f
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTDIV"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTEN"
	.byte	0x7
	.uahalf	0x341
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTMODE"
	.byte	0x7
	.uahalf	0x342
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x343
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR3_Bits"
	.byte	0x7
	.uahalf	0x344
	.uaword	0x346b
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x347
	.uaword	0x3743
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x349
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1WKP"
	.byte	0x7
	.uahalf	0x34a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1OVRUN"
	.byte	0x7
	.uahalf	0x34b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAWKP"
	.byte	0x7
	.uahalf	0x34c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAOVRUN"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBWKP"
	.byte	0x7
	.uahalf	0x34e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBOVRUN"
	.byte	0x7
	.uahalf	0x34f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x350
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PORSTDF"
	.byte	0x7
	.uahalf	0x351
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"HWCFGEVR"
	.byte	0x7
	.uahalf	0x352
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYRAM"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x354
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTWKP"
	.byte	0x7
	.uahalf	0x355
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTOVRUN"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x357
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTWKEN"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x359
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x7
	.uahalf	0x35d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTEN"
	.byte	0x7
	.uahalf	0x35f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTMODE"
	.byte	0x7
	.uahalf	0x360
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTRUN"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWSTAT_Bits"
	.byte	0x7
	.uahalf	0x362
	.uaword	0x3520
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x365
	.uaword	0x3889
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x367
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1WKPCLR"
	.byte	0x7
	.uahalf	0x368
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1OVRUNCLR"
	.byte	0x7
	.uahalf	0x369
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAWKPCLR"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINAOVRUNCLR"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBWKPCLR"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PINBOVRUNCLR"
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTWKPCLR"
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"WUTOVRUNCLR"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x371
	.uaword	0x490
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWSTATCLR_Bits"
	.byte	0x7
	.uahalf	0x372
	.uaword	0x3761
	.uleb128 0xc
	.string	"_Ifx_SCU_PMSWUTCNT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x375
	.uaword	0x3905
	.uleb128 0x9
	.string	"WUTCNT"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x490
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x378
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"VAL"
	.byte	0x7
	.uahalf	0x379
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWUTCNT_Bits"
	.byte	0x7
	.uahalf	0x37a
	.uaword	0x38aa
	.uleb128 0xc
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x37d
	.uaword	0x39dc
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x37f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CLRC"
	.byte	0x7
	.uahalf	0x380
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x381
	.uaword	0x490
	.byte	0x4
	.byte	0xa
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSS0"
	.byte	0x7
	.uahalf	0x382
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSS1"
	.byte	0x7
	.uahalf	0x383
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CSS2"
	.byte	0x7
	.uahalf	0x384
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x385
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"USRINFO"
	.byte	0x7
	.uahalf	0x386
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x7
	.uahalf	0x387
	.uaword	0x3924
	.uleb128 0xc
	.string	"_Ifx_SCU_RSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x38a
	.uaword	0x3abe
	.uleb128 0x9
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x38c
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x38d
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMU"
	.byte	0x7
	.uahalf	0x38f
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SW"
	.byte	0x7
	.uahalf	0x390
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM0"
	.byte	0x7
	.uahalf	0x391
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM1"
	.byte	0x7
	.uahalf	0x392
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM2"
	.byte	0x7
	.uahalf	0x393
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x394
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON_Bits"
	.byte	0x7
	.uahalf	0x395
	.uaword	0x39f9
	.uleb128 0xc
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x398
	.uaword	0x3c88
	.uleb128 0x9
	.string	"ESR0"
	.byte	0x7
	.uahalf	0x39a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ESR1"
	.byte	0x7
	.uahalf	0x39b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x39c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMU"
	.byte	0x7
	.uahalf	0x39d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SW"
	.byte	0x7
	.uahalf	0x39e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM0"
	.byte	0x7
	.uahalf	0x39f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM1"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STM2"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PORST"
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CB0"
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CB1"
	.byte	0x7
	.uahalf	0x3a6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"CB3"
	.byte	0x7
	.uahalf	0x3a7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x3a8
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR13"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"EVR33"
	.byte	0x7
	.uahalf	0x3aa
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWD"
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x3ac
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"STBYR"
	.byte	0x7
	.uahalf	0x3ad
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_29"
	.byte	0x7
	.uahalf	0x3ae
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x7
	.uahalf	0x3af
	.uaword	0x3ada
	.uleb128 0xc
	.string	"_Ifx_SCU_SAFECON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3b2
	.uaword	0x3ce9
	.uleb128 0x9
	.string	"HBT"
	.byte	0x7
	.uahalf	0x3b4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x3b5
	.uaword	0x490
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SAFECON_Bits"
	.byte	0x7
	.uahalf	0x3b6
	.uaword	0x3ca5
	.uleb128 0xc
	.string	"_Ifx_SCU_STSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3b9
	.uaword	0x3e01
	.uleb128 0x9
	.string	"HWCFG"
	.byte	0x7
	.uahalf	0x3bb
	.uaword	0x490
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FTM"
	.byte	0x7
	.uahalf	0x3bc
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"MODE"
	.byte	0x7
	.uahalf	0x3bd
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"FCBAE"
	.byte	0x7
	.uahalf	0x3be
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LUDIS"
	.byte	0x7
	.uahalf	0x3bf
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x3c0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TRSTL"
	.byte	0x7
	.uahalf	0x3c1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SPDEN"
	.byte	0x7
	.uahalf	0x3c2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x3c3
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RAMINT"
	.byte	0x7
	.uahalf	0x3c4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_25"
	.byte	0x7
	.uahalf	0x3c5
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STSTAT_Bits"
	.byte	0x7
	.uahalf	0x3c6
	.uaword	0x3d06
	.uleb128 0xc
	.string	"_Ifx_SCU_SWRSTCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3c9
	.uaword	0x3e79
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x3cb
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SWRSTREQ"
	.byte	0x7
	.uahalf	0x3cc
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3cd
	.uaword	0x490
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SWRSTCON_Bits"
	.byte	0x7
	.uahalf	0x3ce
	.uaword	0x3e1d
	.uleb128 0xc
	.string	"_Ifx_SCU_SYSCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3d1
	.uaword	0x3f49
	.uleb128 0x9
	.string	"CCTRIG0"
	.byte	0x7
	.uahalf	0x3d3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x3d4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"RAMINTM"
	.byte	0x7
	.uahalf	0x3d5
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SETLUDIS"
	.byte	0x7
	.uahalf	0x3d6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_5"
	.byte	0x7
	.uahalf	0x3d7
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DATM"
	.byte	0x7
	.uahalf	0x3d8
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x3d9
	.uaword	0x490
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSCON_Bits"
	.byte	0x7
	.uahalf	0x3da
	.uaword	0x3e97
	.uleb128 0xc
	.string	"_Ifx_SCU_TRAPCLR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3dd
	.uaword	0x3fe0
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3df
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3e0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3e1
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x3e2
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3e3
	.uaword	0x490
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPCLR_Bits"
	.byte	0x7
	.uahalf	0x3e4
	.uaword	0x3f65
	.uleb128 0xc
	.string	"_Ifx_SCU_TRAPDIS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3e7
	.uaword	0x4078
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3e9
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3ea
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3eb
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x3ec
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x490
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPDIS_Bits"
	.byte	0x7
	.uahalf	0x3ee
	.uaword	0x3ffd
	.uleb128 0xc
	.string	"_Ifx_SCU_TRAPSET_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3f1
	.uaword	0x4110
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3f3
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3f4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3f5
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x3f6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x3f7
	.uaword	0x490
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSET_Bits"
	.byte	0x7
	.uahalf	0x3f8
	.uaword	0x4095
	.uleb128 0xc
	.string	"_Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x3fb
	.uaword	0x41a9
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x7
	.uahalf	0x3fd
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x7
	.uahalf	0x3fe
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SMUT"
	.byte	0x7
	.uahalf	0x400
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x401
	.uaword	0x490
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x7
	.uahalf	0x402
	.uaword	0x412d
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x405
	.uaword	0x4236
	.uleb128 0x9
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x407
	.uaword	0x4236
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x408
	.uaword	0x4236
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PW"
	.byte	0x7
	.uahalf	0x409
	.uaword	0x4236
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"REL"
	.byte	0x7
	.uahalf	0x40a
	.uaword	0x4236
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.uaword	0x490
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x7
	.uahalf	0x40b
	.uaword	0x41c7
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x40e
	.uaword	0x4333
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x410
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IR0"
	.byte	0x7
	.uahalf	0x411
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DR"
	.byte	0x7
	.uahalf	0x412
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x413
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IR1"
	.byte	0x7
	.uahalf	0x414
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"UR"
	.byte	0x7
	.uahalf	0x415
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PAR"
	.byte	0x7
	.uahalf	0x416
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCR"
	.byte	0x7
	.uahalf	0x417
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x418
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x419
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x7
	.uahalf	0x41a
	.uaword	0x425c
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x41d
	.uaword	0x4437
	.uleb128 0x9
	.string	"AE"
	.byte	0x7
	.uahalf	0x41f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OE"
	.byte	0x7
	.uahalf	0x420
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IS0"
	.byte	0x7
	.uahalf	0x421
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DS"
	.byte	0x7
	.uahalf	0x422
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TO"
	.byte	0x7
	.uahalf	0x423
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IS1"
	.byte	0x7
	.uahalf	0x424
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"US"
	.byte	0x7
	.uahalf	0x425
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PAS"
	.byte	0x7
	.uahalf	0x426
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCS"
	.byte	0x7
	.uahalf	0x427
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCT"
	.byte	0x7
	.uahalf	0x428
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TIM"
	.byte	0x7
	.uahalf	0x429
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x7
	.uahalf	0x42a
	.uaword	0x4354
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x42d
	.uaword	0x44c3
	.uleb128 0x9
	.string	"ENDINIT"
	.byte	0x7
	.uahalf	0x42f
	.uaword	0x4236
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x7
	.uahalf	0x430
	.uaword	0x4236
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PW"
	.byte	0x7
	.uahalf	0x431
	.uaword	0x4236
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"REL"
	.byte	0x7
	.uahalf	0x432
	.uaword	0x4236
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x7
	.uahalf	0x433
	.uaword	0x4456
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x436
	.uaword	0x45cc
	.uleb128 0x9
	.string	"CLRIRF"
	.byte	0x7
	.uahalf	0x438
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x439
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IR0"
	.byte	0x7
	.uahalf	0x43a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DR"
	.byte	0x7
	.uahalf	0x43b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x43c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IR1"
	.byte	0x7
	.uahalf	0x43d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"UR"
	.byte	0x7
	.uahalf	0x43e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PAR"
	.byte	0x7
	.uahalf	0x43f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCR"
	.byte	0x7
	.uahalf	0x440
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCTR"
	.byte	0x7
	.uahalf	0x441
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x442
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x7
	.uahalf	0x443
	.uaword	0x44e2
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTS_SR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x446
	.uaword	0x46cc
	.uleb128 0x9
	.string	"AE"
	.byte	0x7
	.uahalf	0x448
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"OE"
	.byte	0x7
	.uahalf	0x449
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IS0"
	.byte	0x7
	.uahalf	0x44a
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"DS"
	.byte	0x7
	.uahalf	0x44b
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TO"
	.byte	0x7
	.uahalf	0x44c
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"IS1"
	.byte	0x7
	.uahalf	0x44d
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"US"
	.byte	0x7
	.uahalf	0x44e
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PAS"
	.byte	0x7
	.uahalf	0x44f
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCS"
	.byte	0x7
	.uahalf	0x450
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TCT"
	.byte	0x7
	.uahalf	0x451
	.uaword	0x490
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"TIM"
	.byte	0x7
	.uahalf	0x452
	.uaword	0x490
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_SR_Bits"
	.byte	0x7
	.uahalf	0x453
	.uaword	0x45eb
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x45b
	.uaword	0x4711
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x45d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x45e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x45f
	.uaword	0x4a0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ACCEN0"
	.byte	0x7
	.uahalf	0x460
	.uaword	0x46e9
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x463
	.uaword	0x4750
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x465
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x466
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x467
	.uaword	0x4ea
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ACCEN1"
	.byte	0x7
	.uahalf	0x468
	.uaword	0x4728
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x46b
	.uaword	0x478f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x46d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x46e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x46f
	.uaword	0x574
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ARSTDIS"
	.byte	0x7
	.uahalf	0x470
	.uaword	0x4767
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x473
	.uaword	0x47cf
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x475
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x476
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x477
	.uaword	0x691
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON0"
	.byte	0x7
	.uahalf	0x478
	.uaword	0x47a7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x47b
	.uaword	0x480f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x47d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x47e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x47f
	.uaword	0x795
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON1"
	.byte	0x7
	.uahalf	0x480
	.uaword	0x47e7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x483
	.uaword	0x484f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x485
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x486
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x487
	.uaword	0x816
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON2"
	.byte	0x7
	.uahalf	0x488
	.uaword	0x4827
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x48b
	.uaword	0x488f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x48d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x48e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x48f
	.uaword	0x903
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON3"
	.byte	0x7
	.uahalf	0x490
	.uaword	0x4867
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x493
	.uaword	0x48cf
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x495
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x496
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x497
	.uaword	0x9e8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON4"
	.byte	0x7
	.uahalf	0x498
	.uaword	0x48a7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x49b
	.uaword	0x490f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x49d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x49e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x49f
	.uaword	0xa69
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON5"
	.byte	0x7
	.uahalf	0x4a0
	.uaword	0x48e7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4a3
	.uaword	0x494f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4a5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4a6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4a7
	.uaword	0xaca
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CCUCON6"
	.byte	0x7
	.uahalf	0x4a8
	.uaword	0x4927
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4ab
	.uaword	0x498f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4ad
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4ae
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4af
	.uaword	0xba5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_CHIPID"
	.byte	0x7
	.uahalf	0x4b0
	.uaword	0x4967
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4b3
	.uaword	0x49ce
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4b5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4b6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4b7
	.uaword	0xc46
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSCON"
	.byte	0x7
	.uahalf	0x4b8
	.uaword	0x49a6
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4bb
	.uaword	0x4a0d
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4bd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4be
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4bf
	.uaword	0xcfa
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSLIM"
	.byte	0x7
	.uahalf	0x4c0
	.uaword	0x49e5
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4c3
	.uaword	0x4a4c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4c5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4c6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4c7
	.uaword	0xd8d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_DTSSTAT"
	.byte	0x7
	.uahalf	0x4c8
	.uaword	0x4a24
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4cb
	.uaword	0x4a8c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4cd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4ce
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4cf
	.uaword	0xef8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EICR"
	.byte	0x7
	.uahalf	0x4d0
	.uaword	0x4a64
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4d3
	.uaword	0x4ac9
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4d5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4d6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4d7
	.uaword	0xfdc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EIFR"
	.byte	0x7
	.uahalf	0x4d8
	.uaword	0x4aa1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4db
	.uaword	0x4b06
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4dd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4de
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4df
	.uaword	0x10e4
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EMSR"
	.byte	0x7
	.uahalf	0x4e0
	.uaword	0x4ade
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4e3
	.uaword	0x4b43
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4e5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4e6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4e7
	.uaword	0x1155
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESRCFG"
	.byte	0x7
	.uahalf	0x4e8
	.uaword	0x4b1b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4eb
	.uaword	0x4b82
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4ed
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4ee
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4ef
	.uaword	0x11c7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ESROCFG"
	.byte	0x7
	.uahalf	0x4f0
	.uaword	0x4b5a
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4f3
	.uaword	0x4bc2
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4f5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4f6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4f7
	.uaword	0x126b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVR13CON"
	.byte	0x7
	.uahalf	0x4f8
	.uaword	0x4b9a
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x4fb
	.uaword	0x4c03
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x4fd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x4fe
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x4ff
	.uaword	0x130d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRADCSTAT"
	.byte	0x7
	.uahalf	0x500
	.uaword	0x4bdb
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x503
	.uaword	0x4c46
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x505
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x506
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x507
	.uaword	0x141c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRMONCTRL"
	.byte	0x7
	.uahalf	0x508
	.uaword	0x4c1e
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x50b
	.uaword	0x4c89
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x50d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x50e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x50f
	.uaword	0x14d5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVROVMON"
	.byte	0x7
	.uahalf	0x510
	.uaword	0x4c61
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x513
	.uaword	0x4cca
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x515
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x516
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x517
	.uaword	0x157d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRRSTCON"
	.byte	0x7
	.uahalf	0x518
	.uaword	0x4ca2
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x51b
	.uaword	0x4d0c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x51d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x51e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x51f
	.uaword	0x161e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x520
	.uaword	0x4ce4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x523
	.uaword	0x4d50
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x525
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x526
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x527
	.uaword	0x16ef
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x528
	.uaword	0x4d28
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x52b
	.uaword	0x4d93
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x52d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x52e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x52f
	.uaword	0x1829
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x530
	.uaword	0x4d6b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x533
	.uaword	0x4dd6
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x535
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x536
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x537
	.uaword	0x1912
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x538
	.uaword	0x4dae
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x53b
	.uaword	0x4e19
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x53d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x53e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x53f
	.uaword	0x1a37
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRSTAT"
	.byte	0x7
	.uahalf	0x540
	.uaword	0x4df1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x543
	.uaword	0x4e59
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x545
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x546
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x547
	.uaword	0x1aed
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EVRUVMON"
	.byte	0x7
	.uahalf	0x548
	.uaword	0x4e31
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x54b
	.uaword	0x4e9a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x54d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x54e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x54f
	.uaword	0x1bd0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_EXTCON"
	.byte	0x7
	.uahalf	0x550
	.uaword	0x4e72
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x553
	.uaword	0x4ed9
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x555
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x556
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x557
	.uaword	0x1c7a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FDR"
	.byte	0x7
	.uahalf	0x558
	.uaword	0x4eb1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x55b
	.uaword	0x4f15
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x55d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x55e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x55f
	.uaword	0x1df3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_FMR"
	.byte	0x7
	.uahalf	0x560
	.uaword	0x4eed
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x563
	.uaword	0x4f51
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x565
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x566
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x567
	.uaword	0x1e6a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_ID"
	.byte	0x7
	.uahalf	0x568
	.uaword	0x4f29
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x56b
	.uaword	0x4f8c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x56d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x56e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x56f
	.uaword	0x2061
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IGCR"
	.byte	0x7
	.uahalf	0x570
	.uaword	0x4f64
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x573
	.uaword	0x4fc9
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x575
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x576
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x577
	.uaword	0x20ca
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IN"
	.byte	0x7
	.uahalf	0x578
	.uaword	0x4fa1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x57b
	.uaword	0x5004
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x57d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x57e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x57f
	.uaword	0x2159
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_IOCR"
	.byte	0x7
	.uahalf	0x580
	.uaword	0x4fdc
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x583
	.uaword	0x5041
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x585
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x586
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x587
	.uaword	0x21ee
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL0"
	.byte	0x7
	.uahalf	0x588
	.uaword	0x5019
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x58b
	.uaword	0x5084
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x58d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x58e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x58f
	.uaword	0x2298
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL1"
	.byte	0x7
	.uahalf	0x590
	.uaword	0x505c
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x593
	.uaword	0x50c7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x595
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x596
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x597
	.uaword	0x231d
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LBISTCTRL2"
	.byte	0x7
	.uahalf	0x598
	.uaword	0x509f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x59b
	.uaword	0x510a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x59d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x59e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x59f
	.uaword	0x23a5
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLCON0"
	.byte	0x7
	.uahalf	0x5a0
	.uaword	0x50e2
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5a3
	.uaword	0x514a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5a5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5a6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5a7
	.uaword	0x241c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_LCLTEST"
	.byte	0x7
	.uahalf	0x5a8
	.uaword	0x5122
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5ab
	.uaword	0x518a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5ad
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5ae
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5af
	.uaword	0x2490
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_MANID"
	.byte	0x7
	.uahalf	0x5b0
	.uaword	0x5162
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5b3
	.uaword	0x51c8
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5b5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5b6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5b7
	.uaword	0x2535
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OMR"
	.byte	0x7
	.uahalf	0x5b8
	.uaword	0x51a0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5bb
	.uaword	0x5204
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5bd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5be
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5bf
	.uaword	0x268f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OSCCON"
	.byte	0x7
	.uahalf	0x5c0
	.uaword	0x51dc
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5c3
	.uaword	0x5243
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5c5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5c6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5c7
	.uaword	0x26fb
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OUT"
	.byte	0x7
	.uahalf	0x5c8
	.uaword	0x521b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5cb
	.uaword	0x527f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5cd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5ce
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5cf
	.uaword	0x280f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCCON"
	.byte	0x7
	.uahalf	0x5d0
	.uaword	0x5257
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5d3
	.uaword	0x52be
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5d5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5d6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5d7
	.uaword	0x289b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0x7
	.uahalf	0x5d8
	.uaword	0x5296
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5db
	.uaword	0x5300
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5dd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5de
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5df
	.uaword	0x2912
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDISC"
	.byte	0x7
	.uahalf	0x5e0
	.uaword	0x52d8
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5e3
	.uaword	0x533e
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5e5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5e6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5e7
	.uaword	0x29a3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDR"
	.byte	0x7
	.uahalf	0x5e8
	.uaword	0x5316
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5eb
	.uaword	0x537a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5ed
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5ee
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5ef
	.uaword	0x2a83
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PDRR"
	.byte	0x7
	.uahalf	0x5f0
	.uaword	0x5352
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5f3
	.uaword	0x53b7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5f5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5f6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5f7
	.uaword	0x2bda
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON0"
	.byte	0x7
	.uahalf	0x5f8
	.uaword	0x538f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x5fb
	.uaword	0x53f7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x5fd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x5fe
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x5ff
	.uaword	0x2c89
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON1"
	.byte	0x7
	.uahalf	0x600
	.uaword	0x53cf
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x603
	.uaword	0x5437
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x605
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x606
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x607
	.uaword	0x2ced
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLCON2"
	.byte	0x7
	.uahalf	0x608
	.uaword	0x540f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x60b
	.uaword	0x5477
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x60d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x60e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x60f
	.uaword	0x2e49
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYCON0"
	.byte	0x7
	.uahalf	0x610
	.uaword	0x544f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x613
	.uaword	0x54bb
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x615
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x616
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x617
	.uaword	0x2f00
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYCON1"
	.byte	0x7
	.uahalf	0x618
	.uaword	0x5493
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x61b
	.uaword	0x54ff
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x61d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x61e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x61f
	.uaword	0x2fd6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x620
	.uaword	0x54d7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x623
	.uaword	0x5543
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x625
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x626
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x627
	.uaword	0x30cb
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PLLSTAT"
	.byte	0x7
	.uahalf	0x628
	.uaword	0x551b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x62b
	.uaword	0x5583
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x62d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x62e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x62f
	.uaword	0x3167
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMCSR"
	.byte	0x7
	.uahalf	0x630
	.uaword	0x555b
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x633
	.uaword	0x55c1
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x635
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x636
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x637
	.uaword	0x3392
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR0"
	.byte	0x7
	.uahalf	0x638
	.uaword	0x5599
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x63b
	.uaword	0x5601
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x63d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x63e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x63f
	.uaword	0x344e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR1"
	.byte	0x7
	.uahalf	0x640
	.uaword	0x55d9
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x643
	.uaword	0x5641
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x645
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x646
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x647
	.uaword	0x3503
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWCR3"
	.byte	0x7
	.uahalf	0x648
	.uaword	0x5619
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x64b
	.uaword	0x5681
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x64d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x64e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x64f
	.uaword	0x3743
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWSTAT"
	.byte	0x7
	.uahalf	0x650
	.uaword	0x5659
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x653
	.uaword	0x56c2
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x655
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x656
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x657
	.uaword	0x3889
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x658
	.uaword	0x569a
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x65b
	.uaword	0x5706
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x65d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x65e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x65f
	.uaword	0x3905
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_PMSWUTCNT"
	.byte	0x7
	.uahalf	0x660
	.uaword	0x56de
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x663
	.uaword	0x5748
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x665
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x666
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x667
	.uaword	0x3abe
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON"
	.byte	0x7
	.uahalf	0x668
	.uaword	0x5720
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x66b
	.uaword	0x5787
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x66d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x66e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x66f
	.uaword	0x39dc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x7
	.uahalf	0x670
	.uaword	0x575f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x673
	.uaword	0x57c7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x675
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x676
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x677
	.uaword	0x3c88
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x7
	.uahalf	0x678
	.uaword	0x579f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x67b
	.uaword	0x5807
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x67d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x67e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x67f
	.uaword	0x3ce9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SAFECON"
	.byte	0x7
	.uahalf	0x680
	.uaword	0x57df
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x683
	.uaword	0x5847
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x685
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x686
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x687
	.uaword	0x3e01
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_STSTAT"
	.byte	0x7
	.uahalf	0x688
	.uaword	0x581f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x68b
	.uaword	0x5886
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x68d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x68e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x68f
	.uaword	0x3e79
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SWRSTCON"
	.byte	0x7
	.uahalf	0x690
	.uaword	0x585e
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x693
	.uaword	0x58c7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x695
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x696
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x697
	.uaword	0x3f49
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_SYSCON"
	.byte	0x7
	.uahalf	0x698
	.uaword	0x589f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x69b
	.uaword	0x5906
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x69d
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x69e
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x69f
	.uaword	0x3fe0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPCLR"
	.byte	0x7
	.uahalf	0x6a0
	.uaword	0x58de
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6a3
	.uaword	0x5946
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6a5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6a6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6a7
	.uaword	0x4078
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPDIS"
	.byte	0x7
	.uahalf	0x6a8
	.uaword	0x591e
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6ab
	.uaword	0x5986
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6ad
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6ae
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6af
	.uaword	0x4110
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSET"
	.byte	0x7
	.uahalf	0x6b0
	.uaword	0x595e
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6b3
	.uaword	0x59c6
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6b5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6b6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6b7
	.uaword	0x41a9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_TRAPSTAT"
	.byte	0x7
	.uahalf	0x6b8
	.uaword	0x599e
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6bb
	.uaword	0x5a07
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6bd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6be
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6bf
	.uaword	0x423b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0x7
	.uahalf	0x6c0
	.uaword	0x59df
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6c3
	.uaword	0x5a4b
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6c5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6c6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6c7
	.uaword	0x4333
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_CON1"
	.byte	0x7
	.uahalf	0x6c8
	.uaword	0x5a23
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6cb
	.uaword	0x5a8f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6cd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6ce
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6cf
	.uaword	0x4437
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x7
	.uahalf	0x6d0
	.uaword	0x5a67
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6d3
	.uaword	0x5ad1
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6d5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6d6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6d7
	.uaword	0x44c3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0x7
	.uahalf	0x6d8
	.uaword	0x5aa9
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6db
	.uaword	0x5b13
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6dd
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6de
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6df
	.uaword	0x45cc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0x7
	.uahalf	0x6e0
	.uaword	0x5aeb
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x6e3
	.uaword	0x5b55
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x6e5
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x6e6
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x6e7
	.uaword	0x46cc
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU_WDTS_SR"
	.byte	0x7
	.uahalf	0x6e8
	.uaword	0x5b2d
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTCPU"
	.byte	0xc
	.byte	0x7
	.uahalf	0x6f3
	.uaword	0x5bb5
	.uleb128 0x10
	.string	"CON0"
	.byte	0x7
	.uahalf	0x6f5
	.uaword	0x5a07
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CON1"
	.byte	0x7
	.uahalf	0x6f6
	.uaword	0x5a4b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"SR"
	.byte	0x7
	.uahalf	0x6f7
	.uaword	0x5a8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.string	"_Ifx_SCU_WDTS"
	.byte	0xc
	.byte	0x7
	.uahalf	0x6fb
	.uaword	0x5bfb
	.uleb128 0x10
	.string	"CON0"
	.byte	0x7
	.uahalf	0x6fd
	.uaword	0x5ad1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CON1"
	.byte	0x7
	.uahalf	0x6fe
	.uaword	0x5b13
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"SR"
	.byte	0x7
	.uahalf	0x6ff
	.uaword	0x5b55
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xd
	.uaword	0x5bb5
	.uleb128 0x11
	.string	"_Ifx_SCU"
	.uahalf	0x400
	.byte	0x7
	.uahalf	0x70d
	.uaword	0x642c
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x70f
	.uaword	0x642c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"ID"
	.byte	0x7
	.uahalf	0x710
	.uaword	0x4f51
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"reserved_C"
	.byte	0x7
	.uahalf	0x711
	.uaword	0x643c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"OSCCON"
	.byte	0x7
	.uahalf	0x712
	.uaword	0x5204
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"PLLSTAT"
	.byte	0x7
	.uahalf	0x713
	.uaword	0x5543
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"PLLCON0"
	.byte	0x7
	.uahalf	0x714
	.uaword	0x53b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"PLLCON1"
	.byte	0x7
	.uahalf	0x715
	.uaword	0x53f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.string	"PLLCON2"
	.byte	0x7
	.uahalf	0x716
	.uaword	0x5437
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"PLLERAYSTAT"
	.byte	0x7
	.uahalf	0x717
	.uaword	0x54ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.string	"PLLERAYCON0"
	.byte	0x7
	.uahalf	0x718
	.uaword	0x5477
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"PLLERAYCON1"
	.byte	0x7
	.uahalf	0x719
	.uaword	0x54bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.string	"CCUCON0"
	.byte	0x7
	.uahalf	0x71a
	.uaword	0x47cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.string	"CCUCON1"
	.byte	0x7
	.uahalf	0x71b
	.uaword	0x480f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.string	"FDR"
	.byte	0x7
	.uahalf	0x71c
	.uaword	0x4ed9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"EXTCON"
	.byte	0x7
	.uahalf	0x71d
	.uaword	0x4e9a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.string	"CCUCON2"
	.byte	0x7
	.uahalf	0x71e
	.uaword	0x484f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"CCUCON3"
	.byte	0x7
	.uahalf	0x71f
	.uaword	0x488f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"CCUCON4"
	.byte	0x7
	.uahalf	0x720
	.uaword	0x48cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"CCUCON5"
	.byte	0x7
	.uahalf	0x721
	.uaword	0x490f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.string	"RSTSTAT"
	.byte	0x7
	.uahalf	0x722
	.uaword	0x57c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x723
	.uaword	0x643c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"RSTCON"
	.byte	0x7
	.uahalf	0x724
	.uaword	0x5748
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.string	"ARSTDIS"
	.byte	0x7
	.uahalf	0x725
	.uaword	0x478f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.string	"SWRSTCON"
	.byte	0x7
	.uahalf	0x726
	.uaword	0x5886
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"RSTCON2"
	.byte	0x7
	.uahalf	0x727
	.uaword	0x5787
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x728
	.uaword	0x643c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"EVRRSTCON"
	.byte	0x7
	.uahalf	0x729
	.uaword	0x4cca
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.string	"ESRCFG"
	.byte	0x7
	.uahalf	0x72a
	.uaword	0x644c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.string	"ESROCFG"
	.byte	0x7
	.uahalf	0x72b
	.uaword	0x4b82
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.string	"SYSCON"
	.byte	0x7
	.uahalf	0x72c
	.uaword	0x58c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.string	"CCUCON6"
	.byte	0x7
	.uahalf	0x72d
	.uaword	0x494f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.string	"reserved_84"
	.byte	0x7
	.uahalf	0x72e
	.uaword	0x645c
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.string	"PDR"
	.byte	0x7
	.uahalf	0x72f
	.uaword	0x533e
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x10
	.string	"IOCR"
	.byte	0x7
	.uahalf	0x730
	.uaword	0x5004
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x10
	.string	"OUT"
	.byte	0x7
	.uahalf	0x731
	.uaword	0x5243
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x10
	.string	"OMR"
	.byte	0x7
	.uahalf	0x732
	.uaword	0x51c8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x10
	.string	"IN"
	.byte	0x7
	.uahalf	0x733
	.uaword	0x4fc9
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x10
	.string	"EVRSTAT"
	.byte	0x7
	.uahalf	0x734
	.uaword	0x4e19
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.string	"reserved_B4"
	.byte	0x7
	.uahalf	0x735
	.uaword	0x643c
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x10
	.string	"EVR13CON"
	.byte	0x7
	.uahalf	0x736
	.uaword	0x4bc2
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x10
	.string	"reserved_BC"
	.byte	0x7
	.uahalf	0x737
	.uaword	0x643c
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x10
	.string	"STSTAT"
	.byte	0x7
	.uahalf	0x738
	.uaword	0x5847
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x10
	.string	"reserved_C4"
	.byte	0x7
	.uahalf	0x739
	.uaword	0x643c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x10
	.string	"PMSWCR0"
	.byte	0x7
	.uahalf	0x73a
	.uaword	0x55c1
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x10
	.string	"PMSWSTAT"
	.byte	0x7
	.uahalf	0x73b
	.uaword	0x5681
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x10
	.string	"PMSWSTATCLR"
	.byte	0x7
	.uahalf	0x73c
	.uaword	0x56c2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x10
	.string	"PMCSR"
	.byte	0x7
	.uahalf	0x73d
	.uaword	0x646c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.string	"reserved_D8"
	.byte	0x7
	.uahalf	0x73e
	.uaword	0x642c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.string	"DTSSTAT"
	.byte	0x7
	.uahalf	0x73f
	.uaword	0x4a4c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x10
	.string	"DTSCON"
	.byte	0x7
	.uahalf	0x740
	.uaword	0x49ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x10
	.string	"PMSWCR1"
	.byte	0x7
	.uahalf	0x741
	.uaword	0x5601
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x10
	.string	"reserved_EC"
	.byte	0x7
	.uahalf	0x742
	.uaword	0x643c
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x10
	.string	"WDTS"
	.byte	0x7
	.uahalf	0x743
	.uaword	0x5bfb
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x10
	.string	"EMSR"
	.byte	0x7
	.uahalf	0x744
	.uaword	0x4b06
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x10
	.string	"WDTCPU"
	.byte	0x7
	.uahalf	0x745
	.uaword	0x648c
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x10
	.string	"reserved_10C"
	.byte	0x7
	.uahalf	0x746
	.uaword	0x645c
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x10
	.string	"TRAPSTAT"
	.byte	0x7
	.uahalf	0x747
	.uaword	0x59c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x10
	.string	"TRAPSET"
	.byte	0x7
	.uahalf	0x748
	.uaword	0x5986
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x10
	.string	"TRAPCLR"
	.byte	0x7
	.uahalf	0x749
	.uaword	0x5906
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0x10
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x74a
	.uaword	0x5946
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x10
	.string	"LCLCON0"
	.byte	0x7
	.uahalf	0x74b
	.uaword	0x510a
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0x10
	.string	"reserved_138"
	.byte	0x7
	.uahalf	0x74c
	.uaword	0x643c
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x10
	.string	"LCLTEST"
	.byte	0x7
	.uahalf	0x74d
	.uaword	0x514a
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x10
	.string	"CHIPID"
	.byte	0x7
	.uahalf	0x74e
	.uaword	0x498f
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x10
	.string	"MANID"
	.byte	0x7
	.uahalf	0x74f
	.uaword	0x518a
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x10
	.string	"reserved_148"
	.byte	0x7
	.uahalf	0x750
	.uaword	0x642c
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x10
	.string	"SAFECON"
	.byte	0x7
	.uahalf	0x751
	.uaword	0x5807
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x10
	.string	"reserved_154"
	.byte	0x7
	.uahalf	0x752
	.uaword	0x6491
	.byte	0x3
	.byte	0x23
	.uleb128 0x154
	.uleb128 0x10
	.string	"LBISTCTRL0"
	.byte	0x7
	.uahalf	0x753
	.uaword	0x5041
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x10
	.string	"LBISTCTRL1"
	.byte	0x7
	.uahalf	0x754
	.uaword	0x5084
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x10
	.string	"LBISTCTRL2"
	.byte	0x7
	.uahalf	0x755
	.uaword	0x50c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x10
	.string	"reserved_170"
	.byte	0x7
	.uahalf	0x756
	.uaword	0x64a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x10
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x757
	.uaword	0x5300
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x10
	.string	"reserved_190"
	.byte	0x7
	.uahalf	0x758
	.uaword	0x64b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x10
	.string	"EVRADCSTAT"
	.byte	0x7
	.uahalf	0x759
	.uaword	0x4c03
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x10
	.string	"EVRUVMON"
	.byte	0x7
	.uahalf	0x75a
	.uaword	0x4e59
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0x10
	.string	"EVROVMON"
	.byte	0x7
	.uahalf	0x75b
	.uaword	0x4c89
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0x10
	.string	"EVRMONCTRL"
	.byte	0x7
	.uahalf	0x75c
	.uaword	0x4c46
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0x10
	.string	"reserved_1AC"
	.byte	0x7
	.uahalf	0x75d
	.uaword	0x643c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ac
	.uleb128 0x10
	.string	"EVRSDCTRL1"
	.byte	0x7
	.uahalf	0x75e
	.uaword	0x4d50
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0x10
	.string	"EVRSDCTRL2"
	.byte	0x7
	.uahalf	0x75f
	.uaword	0x4d93
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b4
	.uleb128 0x10
	.string	"EVRSDCTRL3"
	.byte	0x7
	.uahalf	0x760
	.uaword	0x4dd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b8
	.uleb128 0x10
	.string	"reserved_1BC"
	.byte	0x7
	.uahalf	0x761
	.uaword	0x642c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0x10
	.string	"EVRSDCOEFF2"
	.byte	0x7
	.uahalf	0x762
	.uaword	0x4d0c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x10
	.string	"reserved_1C8"
	.byte	0x7
	.uahalf	0x763
	.uaword	0x64c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x10
	.string	"PMSWUTCNT"
	.byte	0x7
	.uahalf	0x764
	.uaword	0x5706
	.byte	0x3
	.byte	0x23
	.uleb128 0x1dc
	.uleb128 0x10
	.string	"OVCENABLE"
	.byte	0x7
	.uahalf	0x765
	.uaword	0x52be
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x10
	.string	"OVCCON"
	.byte	0x7
	.uahalf	0x766
	.uaword	0x527f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x10
	.string	"reserved_1E8"
	.byte	0x7
	.uahalf	0x767
	.uaword	0x64d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x10
	.string	"EICR"
	.byte	0x7
	.uahalf	0x768
	.uaword	0x64e1
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x10
	.string	"EIFR"
	.byte	0x7
	.uahalf	0x769
	.uaword	0x4ac9
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x10
	.string	"FMR"
	.byte	0x7
	.uahalf	0x76a
	.uaword	0x4f15
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x10
	.string	"PDRR"
	.byte	0x7
	.uahalf	0x76b
	.uaword	0x537a
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x10
	.string	"IGCR"
	.byte	0x7
	.uahalf	0x76c
	.uaword	0x64f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x10
	.string	"reserved_23C"
	.byte	0x7
	.uahalf	0x76d
	.uaword	0x643c
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x10
	.string	"DTSLIM"
	.byte	0x7
	.uahalf	0x76e
	.uaword	0x4a0d
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x10
	.string	"reserved_244"
	.byte	0x7
	.uahalf	0x76f
	.uaword	0x6501
	.byte	0x3
	.byte	0x23
	.uleb128 0x244
	.uleb128 0x10
	.string	"PMSWCR3"
	.byte	0x7
	.uahalf	0x770
	.uaword	0x5641
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0x10
	.string	"reserved_304"
	.byte	0x7
	.uahalf	0x771
	.uaword	0x6511
	.byte	0x3
	.byte	0x23
	.uleb128 0x304
	.uleb128 0x10
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x772
	.uaword	0x4750
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f8
	.uleb128 0x10
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x773
	.uaword	0x4711
	.byte	0x3
	.byte	0x23
	.uleb128 0x3fc
	.byte	0
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x643c
	.uleb128 0x14
	.uaword	0x134
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x644c
	.uleb128 0x14
	.uaword	0x134
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x4b43
	.uaword	0x645c
	.uleb128 0x14
	.uaword	0x134
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x646c
	.uleb128 0x14
	.uaword	0x134
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.uaword	0x5583
	.uaword	0x647c
	.uleb128 0x14
	.uaword	0x134
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x5b6d
	.uaword	0x648c
	.uleb128 0x14
	.uaword	0x134
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x647c
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x64a1
	.uleb128 0x14
	.uaword	0x134
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x64b1
	.uleb128 0x14
	.uaword	0x134
	.byte	0x1b
	.byte	0
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x64c1
	.uleb128 0x14
	.uaword	0x134
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x64d1
	.uleb128 0x14
	.uaword	0x134
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x64e1
	.uleb128 0x14
	.uaword	0x134
	.byte	0x27
	.byte	0
	.uleb128 0x13
	.uaword	0x4a8c
	.uaword	0x64f1
	.uleb128 0x14
	.uaword	0x134
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x4f8c
	.uaword	0x6501
	.uleb128 0x14
	.uaword	0x134
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x6511
	.uleb128 0x14
	.uaword	0x134
	.byte	0xbb
	.byte	0
	.uleb128 0x13
	.uaword	0x16c
	.uaword	0x6521
	.uleb128 0x14
	.uaword	0x134
	.byte	0xf3
	.byte	0
	.uleb128 0xb
	.string	"Ifx_SCU"
	.byte	0x7
	.uahalf	0x774
	.uaword	0x6531
	.uleb128 0xd
	.uaword	0x5c00
	.uleb128 0x15
	.byte	0x4
	.byte	0x8
	.byte	0x54
	.uaword	0x6570
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.string	"IfxCpu_ResourceCpu"
	.byte	0x8
	.byte	0x57
	.uaword	0x6536
	.uleb128 0x6
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0xc0
	.uaword	0x65bb
	.uleb128 0x7
	.string	"STM31_0"
	.byte	0x9
	.byte	0xc2
	.uaword	0x490
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x9
	.byte	0xc3
	.uaword	0x658a
	.uleb128 0xe
	.byte	0x4
	.byte	0x9
	.uahalf	0x165
	.uaword	0x65fc
	.uleb128 0xf
	.string	"U"
	.byte	0x9
	.uahalf	0x167
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0x9
	.uahalf	0x168
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0x9
	.uahalf	0x169
	.uaword	0x65bb
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM0"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x65d4
	.uleb128 0x6
	.string	"_Ifx_FLASH_FCON_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0xae
	.uaword	0x6782
	.uleb128 0x7
	.string	"WSPFLASH"
	.byte	0xa
	.byte	0xb0
	.uaword	0x490
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"WSECPF"
	.byte	0xa
	.byte	0xb1
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"WSDFLASH"
	.byte	0xa
	.byte	0xb2
	.uaword	0x490
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"WSECDF"
	.byte	0xa
	.byte	0xb3
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"IDLE"
	.byte	0xa
	.byte	0xb4
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ESLDIS"
	.byte	0xa
	.byte	0xb5
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SLEEP"
	.byte	0xa
	.byte	0xb6
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"NSAFECC"
	.byte	0xa
	.byte	0xb7
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"STALL"
	.byte	0xa
	.byte	0xb8
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RES21"
	.byte	0xa
	.byte	0xb9
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RES23"
	.byte	0xa
	.byte	0xba
	.uaword	0x490
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"VOPERM"
	.byte	0xa
	.byte	0xbb
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SQERM"
	.byte	0xa
	.byte	0xbc
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PROERM"
	.byte	0xa
	.byte	0xbd
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_27"
	.byte	0xa
	.byte	0xbe
	.uaword	0x490
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PR5V"
	.byte	0xa
	.byte	0xbf
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EOBM"
	.byte	0xa
	.byte	0xc0
	.uaword	0x490
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_FLASH_FCON_Bits"
	.byte	0xa
	.byte	0xc1
	.uaword	0x6611
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.uahalf	0x2be
	.uaword	0x67c5
	.uleb128 0xf
	.string	"U"
	.byte	0xa
	.uahalf	0x2c0
	.uaword	0x490
	.uleb128 0xf
	.string	"I"
	.byte	0xa
	.uahalf	0x2c1
	.uaword	0x149
	.uleb128 0xf
	.string	"B"
	.byte	0xa
	.uahalf	0x2c2
	.uaword	0x6782
	.byte	0
	.uleb128 0xb
	.string	"Ifx_FLASH_FCON"
	.byte	0xa
	.uahalf	0x2c3
	.uaword	0x679d
	.uleb128 0x16
	.byte	0x4
	.uaword	0x6531
	.uleb128 0x5
	.string	"IfxScuCcu_PllStepsFunctionHook"
	.byte	0x2
	.byte	0x81
	.uaword	0x6808
	.uleb128 0x16
	.byte	0x4
	.uaword	0x680e
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x18
	.byte	0x8
	.byte	0x2
	.uahalf	0x2c5
	.uaword	0x683b
	.uleb128 0x10
	.string	"value"
	.byte	0x2
	.uahalf	0x2c7
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"mask"
	.byte	0x2
	.uahalf	0x2c8
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_CcuconRegConfig"
	.byte	0x2
	.uahalf	0x2c9
	.uaword	0x6810
	.uleb128 0x18
	.byte	0x8
	.byte	0x2
	.uahalf	0x2ce
	.uaword	0x68b3
	.uleb128 0x10
	.string	"pDivider"
	.byte	0x2
	.uahalf	0x2d0
	.uaword	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"nDivider"
	.byte	0x2
	.uahalf	0x2d1
	.uaword	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.string	"k2Initial"
	.byte	0x2
	.uahalf	0x2d2
	.uaword	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x2d3
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_InitialStepConfig"
	.byte	0x2
	.uahalf	0x2d4
	.uaword	0x685d
	.uleb128 0x18
	.byte	0xc
	.byte	0x2
	.uahalf	0x2d8
	.uaword	0x691a
	.uleb128 0x10
	.string	"k2Step"
	.byte	0x2
	.uahalf	0x2da
	.uaword	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF36
	.byte	0x2
	.uahalf	0x2db
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"hookFunction"
	.byte	0x2
	.uahalf	0x2dc
	.uaword	0x67e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_PllStepsConfig"
	.byte	0x2
	.uahalf	0x2dd
	.uaword	0x68d7
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.uahalf	0x2e5
	.uaword	0x699c
	.uleb128 0x12
	.uaword	.LASF37
	.byte	0x2
	.uahalf	0x2e7
	.uaword	0x683b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.uaword	.LASF38
	.byte	0x2
	.uahalf	0x2e8
	.uaword	0x683b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"ccucon2"
	.byte	0x2
	.uahalf	0x2e9
	.uaword	0x683b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"ccucon5"
	.byte	0x2
	.uahalf	0x2ea
	.uaword	0x683b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"ccucon6"
	.byte	0x2
	.uahalf	0x2eb
	.uaword	0x683b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_ClockDistributionConfig"
	.byte	0x2
	.uahalf	0x2ec
	.uaword	0x693b
	.uleb128 0x18
	.byte	0x8
	.byte	0x2
	.uahalf	0x2f0
	.uaword	0x69f1
	.uleb128 0x10
	.string	"value"
	.byte	0x2
	.uahalf	0x2f2
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"mask"
	.byte	0x2
	.uahalf	0x2f3
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_FlashWaitstateConfig"
	.byte	0x2
	.uahalf	0x2f4
	.uaword	0x69c6
	.uleb128 0x18
	.byte	0x10
	.byte	0x2
	.uahalf	0x2f9
	.uaword	0x6a6b
	.uleb128 0x10
	.string	"numOfPllDividerSteps"
	.byte	0x2
	.uahalf	0x2fb
	.uaword	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"pllDividerStep"
	.byte	0x2
	.uahalf	0x2fc
	.uaword	0x6a6b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x2fd
	.uaword	0x68b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x691a
	.uleb128 0xb
	.string	"IfxScuCcu_SysPllConfig"
	.byte	0x2
	.uahalf	0x2fe
	.uaword	0x6a18
	.uleb128 0x18
	.byte	0x44
	.byte	0x2
	.uahalf	0x306
	.uaword	0x6b06
	.uleb128 0x10
	.string	"sysPll"
	.byte	0x2
	.uahalf	0x308
	.uaword	0x6a71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"clockDistribution"
	.byte	0x2
	.uahalf	0x309
	.uaword	0x699c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"flashFconWaitStateConfig"
	.byte	0x2
	.uahalf	0x30a
	.uaword	0x69f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.string	"xtalFrequency"
	.byte	0x2
	.uahalf	0x30b
	.uaword	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_Config"
	.byte	0x2
	.uahalf	0x30c
	.uaword	0x6a90
	.uleb128 0x18
	.byte	0x8
	.byte	0x2
	.uahalf	0x310
	.uaword	0x6b38
	.uleb128 0x12
	.uaword	.LASF39
	.byte	0x2
	.uahalf	0x312
	.uaword	0x68b3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"IfxScuCcu_ErayPllConfig"
	.byte	0x2
	.uahalf	0x313
	.uaword	0x6b1f
	.uleb128 0x19
	.string	"IfxScuCcu_getStmFrequency"
	.byte	0x2
	.uahalf	0x42f
	.byte	0x1
	.uaword	0x1ca
	.byte	0x3
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxScuCcu_getOscFrequency"
	.byte	0x1
	.uahalf	0x18e
	.byte	0x1
	.uaword	0x1ca
	.byte	0x1
	.uaword	0x6bb3
	.uleb128 0x1b
	.string	"freq"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x1ca
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"IfxScuCcu_getPllVcoFrequency"
	.byte	0x1
	.uahalf	0x1ef
	.byte	0x1
	.uaword	0x1ca
	.byte	0x1
	.uaword	0x6bf0
	.uleb128 0x1b
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x1f1
	.uaword	0x1ca
	.byte	0
	.uleb128 0x19
	.string	"IfxScuCcu_getEvrFrequency"
	.byte	0x2
	.uahalf	0x414
	.byte	0x1
	.uaword	0x1ca
	.byte	0x3
	.uleb128 0x1c
	.string	"IfxScuCcu_isOscillatorStable"
	.byte	0x1
	.uahalf	0x3cc
	.byte	0x1
	.uaword	0x1ec
	.byte	0x1
	.uaword	0x6c71
	.uleb128 0x1b
	.string	"TimeoutCtr"
	.byte	0x1
	.uahalf	0x3ce
	.uaword	0x1ae
	.uleb128 0x1d
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x3cf
	.uaword	0x1ec
	.uleb128 0x1b
	.string	"endinitPw"
	.byte	0x1
	.uahalf	0x3d0
	.uaword	0x18a
	.byte	0
	.uleb128 0x1e
	.string	"__maxu"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x1bc
	.byte	0x3
	.uaword	0x6ca3
	.uleb128 0x1f
	.string	"a"
	.byte	0x3
	.byte	0x6f
	.uaword	0x1bc
	.uleb128 0x1f
	.string	"b"
	.byte	0x3
	.byte	0x6f
	.uaword	0x1bc
	.uleb128 0x20
	.string	"res"
	.byte	0x3
	.byte	0x71
	.uaword	0x1bc
	.byte	0
	.uleb128 0x19
	.string	"IfxScuCcu_getGtmFrequency"
	.byte	0x2
	.uahalf	0x41a
	.byte	0x1
	.uaword	0x1ca
	.byte	0x3
	.uleb128 0x1c
	.string	"IfxScuCcu_getPll2Frequency"
	.byte	0x2
	.uahalf	0x420
	.byte	0x1
	.uaword	0x1ca
	.byte	0x3
	.uaword	0x6d07
	.uleb128 0x1b
	.string	"pll2Frequency"
	.byte	0x2
	.uahalf	0x422
	.uaword	0x1ca
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"IfxScuCcu_calculateSysPllDividers"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	0x1ec
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6f1c
	.uleb128 0x22
	.string	"cfg"
	.byte	0x1
	.byte	0x5d
	.uaword	0x6f1c
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.string	"fPll"
	.byte	0x1
	.byte	0x5d
	.uaword	0x1bc
	.uaword	.LLST0
	.uleb128 0x24
	.string	"retVal"
	.byte	0x1
	.byte	0x5f
	.uaword	0x1ec
	.uaword	.LLST1
	.uleb128 0x25
	.string	"deviationAllowed"
	.byte	0x1
	.byte	0x60
	.uaword	0x15f
	.byte	0x2
	.uleb128 0x26
	.string	"fOsc"
	.byte	0x1
	.byte	0x61
	.uaword	0x1bc
	.byte	0x3
	.byte	0x84
	.sleb128 64
	.uleb128 0x27
	.string	"EXITCALC_LOOP"
	.byte	0x1
	.byte	0xb0
	.uaword	.L5
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x29
	.string	"fPllMax"
	.byte	0x1
	.byte	0x69
	.uaword	0x6f22
	.uaword	0xbebc200
	.uleb128 0x29
	.string	"fRefMax"
	.byte	0x1
	.byte	0x6a
	.uaword	0x6f22
	.uaword	0x16e3600
	.uleb128 0x29
	.string	"fRefMin"
	.byte	0x1
	.byte	0x6b
	.uaword	0x6f22
	.uaword	0x7a1200
	.uleb128 0x29
	.string	"fVcoMin"
	.byte	0x1
	.byte	0x6c
	.uaword	0x6f22
	.uaword	0x17d78400
	.uleb128 0x29
	.string	"fVcoMax"
	.byte	0x1
	.byte	0x6d
	.uaword	0x6f22
	.uaword	0x2faf0800
	.uleb128 0x25
	.string	"pMin"
	.byte	0x1
	.byte	0x6e
	.uaword	0x6f27
	.byte	0x1
	.uleb128 0x25
	.string	"pMax"
	.byte	0x1
	.byte	0x6f
	.uaword	0x6f27
	.byte	0x10
	.uleb128 0x25
	.string	"k2Min"
	.byte	0x1
	.byte	0x70
	.uaword	0x6f27
	.byte	0x1
	.uleb128 0x2a
	.string	"k2Max"
	.byte	0x1
	.byte	0x71
	.uaword	0x6f27
	.sleb128 -128
	.uleb128 0x25
	.string	"nMin"
	.byte	0x1
	.byte	0x72
	.uaword	0x6f27
	.byte	0x1
	.uleb128 0x2a
	.string	"nMax"
	.byte	0x1
	.byte	0x73
	.uaword	0x6f27
	.sleb128 -128
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.byte	0x75
	.uaword	0x1bc
	.uaword	.LLST2
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.byte	0x76
	.uaword	0x1bc
	.uaword	.LLST3
	.uleb128 0x24
	.string	"k2"
	.byte	0x1
	.byte	0x77
	.uaword	0x1bc
	.uaword	.LLST4
	.uleb128 0x26
	.string	"k2Steps"
	.byte	0x1
	.byte	0x78
	.uaword	0x1bc
	.byte	0x1
	.byte	0x5e
	.uleb128 0x24
	.string	"bestK2"
	.byte	0x1
	.byte	0x79
	.uaword	0x1bc
	.uaword	.LLST5
	.uleb128 0x24
	.string	"bestN"
	.byte	0x1
	.byte	0x79
	.uaword	0x1bc
	.uaword	.LLST6
	.uleb128 0x24
	.string	"bestP"
	.byte	0x1
	.byte	0x79
	.uaword	0x1bc
	.uaword	.LLST7
	.uleb128 0x20
	.string	"fRef"
	.byte	0x1
	.byte	0x7b
	.uaword	0x20c
	.uleb128 0x20
	.string	"fVco"
	.byte	0x1
	.byte	0x7b
	.uaword	0x20c
	.uleb128 0x24
	.string	"fPllLeastError"
	.byte	0x1
	.byte	0x7c
	.uaword	0x20c
	.uaword	.LLST8
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x20
	.string	"fPllError"
	.byte	0x1
	.byte	0x96
	.uaword	0x20c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x6b06
	.uleb128 0x2b
	.uaword	0x1bc
	.uleb128 0x2b
	.uaword	0x15f
	.uleb128 0x2c
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0x1
	.uahalf	0x188
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB224
	.uaword	.LFE224
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2d
	.uaword	0x6b7c
	.uaword	.LFB225
	.uaword	.LFE225
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x6f98
	.uleb128 0x2e
	.uaword	0x6ba5
	.uaword	.LLST9
	.uleb128 0x2f
	.uaword	0x6b7c
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x18e
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x30
	.uaword	0x6ba5
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getPllErayFrequency"
	.byte	0x1
	.uahalf	0x1a4
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB226
	.uaword	.LFE226
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7006
	.uleb128 0x32
	.string	"scu"
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0x67dc
	.sleb128 -268214272
	.uleb128 0x33
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1a7
	.uaword	0x1ca
	.uaword	.LLST10
	.uleb128 0x33
	.string	"freq"
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0x1ca
	.uaword	.LLST11
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getPllErayVcoFrequency"
	.byte	0x1
	.uahalf	0x1c0
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB227
	.uaword	.LFE227
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7055
	.uleb128 0x33
	.string	"vcoFreq"
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x1ca
	.uaword	.LLST12
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getPllFrequency"
	.byte	0x1
	.uahalf	0x1d3
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB228
	.uaword	.LFE228
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x70bf
	.uleb128 0x32
	.string	"scu"
	.byte	0x1
	.uahalf	0x1d5
	.uaword	0x67dc
	.sleb128 -268214272
	.uleb128 0x33
	.string	"oscFreq"
	.byte	0x1
	.uahalf	0x1d6
	.uaword	0x1ca
	.uaword	.LLST13
	.uleb128 0x33
	.string	"freq"
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x1ca
	.uaword	.LLST14
	.byte	0
	.uleb128 0x2d
	.uaword	0x6bb3
	.uaword	.LFB229
	.uaword	.LFE229
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x70ff
	.uleb128 0x2e
	.uaword	0x6bdf
	.uaword	.LLST15
	.uleb128 0x34
	.uaword	0x6bb3
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.uahalf	0x1ef
	.uleb128 0x35
	.uaword	.LBB39
	.uaword	.LBE39
	.uleb128 0x30
	.uaword	0x6bdf
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getSourceFrequency"
	.byte	0x1
	.uahalf	0x202
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB230
	.uaword	.LFE230
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x714d
	.uleb128 0x33
	.string	"sourcefreq"
	.byte	0x1
	.uahalf	0x204
	.uaword	0x1ca
	.uaword	.LLST16
	.byte	0
	.uleb128 0x36
	.string	"IfxScuCcu_wait"
	.byte	0x1
	.uahalf	0x4ef
	.byte	0x1
	.uaword	.LFB244
	.uaword	.LFE244
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x71c0
	.uleb128 0x37
	.string	"timeSec"
	.byte	0x1
	.uahalf	0x4ef
	.uaword	0x1ca
	.uaword	.LLST17
	.uleb128 0x38
	.string	"stmCount"
	.byte	0x1
	.uahalf	0x4f1
	.uaword	0x1bc
	.byte	0x1
	.byte	0x54
	.uleb128 0x38
	.string	"stmCountBegin"
	.byte	0x1
	.uahalf	0x4f2
	.uaword	0x1bc
	.byte	0x1
	.byte	0x52
	.uleb128 0x39
	.uaword	0x6b58
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.uahalf	0x4f1
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getMaxFrequency"
	.byte	0x1
	.uahalf	0x146
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB222
	.uaword	.LFE222
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x721d
	.uleb128 0x33
	.string	"maxFrequency"
	.byte	0x1
	.uahalf	0x148
	.uaword	0x1ca
	.uaword	.LLST18
	.uleb128 0x3a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x149
	.uaword	0x1ca
	.uaword	.LLST19
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB217
	.uaword	.LFE217
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7270
	.uleb128 0x3b
	.uaword	.LASF42
	.byte	0x1
	.byte	0xc6
	.uaword	0x1ca
	.uaword	.LLST20
	.uleb128 0x3b
	.uaword	.LASF37
	.byte	0x1
	.byte	0xc7
	.uaword	0x47cf
	.uaword	.LLST21
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"IfxScuCcu_getBbbFrequency"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB218
	.uaword	.LFE218
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x72ca
	.uleb128 0x24
	.string	"bbbFrequency"
	.byte	0x1
	.byte	0xd8
	.uaword	0x1ca
	.uaword	.LLST22
	.uleb128 0x3b
	.uaword	.LASF41
	.byte	0x1
	.byte	0xd9
	.uaword	0x1ca
	.uaword	.LLST23
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0x1
	.uahalf	0x217
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB231
	.uaword	.LFE231
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7327
	.uleb128 0x33
	.string	"spbFrequency"
	.byte	0x1
	.uahalf	0x219
	.uaword	0x1ca
	.uaword	.LLST24
	.uleb128 0x3a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x21a
	.uaword	0x1ca
	.uaword	.LLST25
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getModuleFrequency"
	.byte	0x1
	.uahalf	0x16f
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB223
	.uaword	.LFE223
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x739a
	.uleb128 0x38
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x1ca
	.byte	0x1
	.byte	0x53
	.uleb128 0x33
	.string	"moduleFreq"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x1ca
	.uaword	.LLST26
	.uleb128 0x33
	.string	"scuFdr"
	.byte	0x1
	.uahalf	0x173
	.uaword	0x4ed9
	.uaword	.LLST27
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getSriFrequency"
	.byte	0x1
	.uahalf	0x240
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB232
	.uaword	.LFE232
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x73f7
	.uleb128 0x33
	.string	"sriFrequency"
	.byte	0x1
	.uahalf	0x242
	.uaword	0x1ca
	.uaword	.LLST28
	.uleb128 0x3a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x243
	.uaword	0x1ca
	.uaword	.LLST29
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getFsiFrequency"
	.byte	0x1
	.uahalf	0x12f
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB221
	.uaword	.LFE221
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x744b
	.uleb128 0x3a
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x131
	.uaword	0x1ca
	.uaword	.LLST30
	.uleb128 0x3a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x132
	.uaword	0x47cf
	.uaword	.LLST31
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_getFsi2Frequency"
	.byte	0x1
	.uahalf	0x118
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB220
	.uaword	.LFE220
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x74a0
	.uleb128 0x3a
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x1ca
	.uaword	.LLST32
	.uleb128 0x3a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x47cf
	.uaword	.LLST33
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"IfxScuCcu_getCpuFrequency"
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB219
	.uaword	.LFE219
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7503
	.uleb128 0x23
	.string	"cpu"
	.byte	0x1
	.byte	0xff
	.uaword	0x7503
	.uaword	.LLST34
	.uleb128 0x3c
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x101
	.uaword	0x1ca
	.byte	0x1
	.byte	0x52
	.uleb128 0x33
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x102
	.uaword	0x1bc
	.uaword	.LLST35
	.byte	0
	.uleb128 0x2b
	.uaword	0x6570
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_init"
	.byte	0x1
	.uahalf	0x269
	.byte	0x1
	.uaword	0x1ec
	.uaword	.LFB233
	.uaword	.LFE233
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7672
	.uleb128 0x37
	.string	"cfg"
	.byte	0x1
	.uahalf	0x269
	.uaword	0x7672
	.uaword	.LLST36
	.uleb128 0x1d
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x26b
	.uaword	0x15f
	.uleb128 0x3a
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x26c
	.uaword	0x18a
	.uaword	.LLST37
	.uleb128 0x3a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x26c
	.uaword	0x18a
	.uaword	.LLST38
	.uleb128 0x3a
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x1ec
	.uaword	.LLST39
	.uleb128 0x3d
	.uaword	0x6c14
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.uahalf	0x297
	.uaword	0x75b2
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x2e
	.uaword	0x6c3f
	.uaword	.LLST40
	.uleb128 0x2e
	.uaword	0x6c52
	.uaword	.LLST41
	.uleb128 0x2e
	.uaword	0x6c5e
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	.LBB50
	.uaword	.LBE50
	.uleb128 0x3a
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x29f
	.uaword	0x15f
	.uaword	.LLST43
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0xc0
	.uaword	0x75e5
	.uleb128 0x3a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x2dd
	.uaword	0x47cf
	.uaword	.LLST44
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0xd8
	.uaword	0x75ff
	.uleb128 0x3a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x2ee
	.uaword	0x480f
	.uaword	.LLST45
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0xf8
	.uaword	0x761d
	.uleb128 0x33
	.string	"ccucon2"
	.byte	0x1
	.uahalf	0x2ff
	.uaword	0x484f
	.uaword	.LLST46
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x110
	.uaword	0x763b
	.uleb128 0x33
	.string	"ccucon5"
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x490f
	.uaword	.LLST47
	.byte	0
	.uleb128 0x3e
	.uaword	.Ldebug_ranges0+0x128
	.uaword	0x7659
	.uleb128 0x33
	.string	"ccucon6"
	.byte	0x1
	.uahalf	0x316
	.uaword	0x494f
	.uaword	.LLST48
	.byte	0
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x150
	.uleb128 0x33
	.string	"fcon"
	.byte	0x1
	.uahalf	0x323
	.uaword	0x67c5
	.uaword	.LLST49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x7678
	.uleb128 0x2b
	.uaword	0x6b06
	.uleb128 0x3f
	.byte	0x1
	.string	"IfxScuCcu_initConfig"
	.byte	0x1
	.uahalf	0x35d
	.byte	0x1
	.uaword	.LFB234
	.uaword	.LFE234
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x76b8
	.uleb128 0x37
	.string	"cfg"
	.byte	0x1
	.uahalf	0x35d
	.uaword	0x6f1c
	.uaword	.LLST50
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_initErayPll"
	.byte	0x1
	.uahalf	0x363
	.byte	0x1
	.uaword	0x1ec
	.uaword	.LFB235
	.uaword	.LFE235
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x774a
	.uleb128 0x37
	.string	"cfg"
	.byte	0x1
	.uahalf	0x363
	.uaword	0x774a
	.uaword	.LLST51
	.uleb128 0x1d
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x365
	.uaword	0x15f
	.uleb128 0x3a
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x366
	.uaword	0x18a
	.uaword	.LLST52
	.uleb128 0x3a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x366
	.uaword	0x18a
	.uaword	.LLST53
	.uleb128 0x40
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x367
	.uaword	0x1ec
	.byte	0
	.uleb128 0x33
	.string	"time_out_ctr"
	.byte	0x1
	.uahalf	0x3a2
	.uaword	0x1bc
	.uaword	.LLST54
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x7750
	.uleb128 0x2b
	.uaword	0x6b38
	.uleb128 0x3f
	.byte	0x1
	.string	"IfxScuCcu_initErayPllConfig"
	.byte	0x1
	.uahalf	0x3c6
	.byte	0x1
	.uaword	.LFB236
	.uaword	.LFE236
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7795
	.uleb128 0x41
	.string	"cfg"
	.byte	0x1
	.uahalf	0x3c6
	.uaword	0x7795
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.uaword	0x6b38
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_setCpuFrequency"
	.byte	0x1
	.uahalf	0x3f5
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB238
	.uaword	.LFE238
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x782a
	.uleb128 0x37
	.string	"cpu"
	.byte	0x1
	.uahalf	0x3f5
	.uaword	0x6570
	.uaword	.LLST55
	.uleb128 0x37
	.string	"cpuFreq"
	.byte	0x1
	.uahalf	0x3f5
	.uaword	0x1ca
	.uaword	.LLST56
	.uleb128 0x3a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x3f7
	.uaword	0x18a
	.uaword	.LLST57
	.uleb128 0x33
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x3f8
	.uaword	0x1ca
	.uaword	.LLST58
	.uleb128 0x33
	.string	"cpuDiv"
	.byte	0x1
	.uahalf	0x3f9
	.uaword	0x1bc
	.uaword	.LLST59
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_setGtmFrequency"
	.byte	0x1
	.uahalf	0x420
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB239
	.uaword	.LFE239
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x78fc
	.uleb128 0x37
	.string	"gtmFreq"
	.byte	0x1
	.uahalf	0x420
	.uaword	0x1ca
	.uaword	.LLST60
	.uleb128 0x3a
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x422
	.uaword	0x18a
	.uaword	.LLST61
	.uleb128 0x3a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x423
	.uaword	0x480f
	.uaword	.LLST62
	.uleb128 0x3a
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x425
	.uaword	0x1ca
	.uaword	.LLST63
	.uleb128 0x33
	.string	"gtmDiv"
	.byte	0x1
	.uahalf	0x426
	.uaword	0x1bc
	.uaword	.LLST64
	.uleb128 0x42
	.uaword	0x6c71
	.uaword	.LBB66
	.uaword	.LBE66
	.byte	0x1
	.uahalf	0x427
	.uaword	0x78eb
	.uleb128 0x43
	.uaword	0x6c8e
	.byte	0x1
	.uleb128 0x44
	.uaword	0x6c85
	.uaword	.LLST65
	.uleb128 0x35
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x2e
	.uaword	0x6c97
	.uaword	.LLST66
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x6ca3
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.uahalf	0x43c
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_setPll2Frequency"
	.byte	0x1
	.uahalf	0x440
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB240
	.uaword	.LFE240
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x798a
	.uleb128 0x37
	.string	"pll2Freq"
	.byte	0x1
	.uahalf	0x440
	.uaword	0x1ca
	.uaword	.LLST67
	.uleb128 0x3a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x442
	.uaword	0x18a
	.uaword	.LLST68
	.uleb128 0x33
	.string	"pll2Div"
	.byte	0x1
	.uahalf	0x443
	.uaword	0x1bc
	.uaword	.LLST69
	.uleb128 0x34
	.uaword	0x6cc7
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.uahalf	0x449
	.uleb128 0x35
	.uaword	.LBB71
	.uaword	.LBE71
	.uleb128 0x46
	.uaword	0x6cf0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_setSpbFrequency"
	.byte	0x1
	.uahalf	0x44d
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB241
	.uaword	.LFE241
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7a5c
	.uleb128 0x37
	.string	"spbFreq"
	.byte	0x1
	.uahalf	0x44d
	.uaword	0x1ca
	.uaword	.LLST70
	.uleb128 0x33
	.string	"l_EndInitPW"
	.byte	0x1
	.uahalf	0x450
	.uaword	0x18a
	.uaword	.LLST71
	.uleb128 0x3a
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x451
	.uaword	0x18a
	.uaword	.LLST72
	.uleb128 0x3a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x452
	.uaword	0x47cf
	.uaword	.LLST73
	.uleb128 0x3a
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x453
	.uaword	0x1ca
	.uaword	.LLST74
	.uleb128 0x33
	.string	"spbDiv"
	.byte	0x1
	.uahalf	0x454
	.uaword	0x1bc
	.uaword	.LLST75
	.uleb128 0x2f
	.uaword	0x6c71
	.uaword	.LBB72
	.uaword	.Ldebug_ranges0+0x168
	.byte	0x1
	.uahalf	0x455
	.uleb128 0x43
	.uaword	0x6c8e
	.byte	0x2
	.uleb128 0x44
	.uaword	0x6c85
	.uaword	.LLST76
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x180
	.uleb128 0x2e
	.uaword	0x6c97
	.uaword	.LLST77
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxScuCcu_setSriFrequency"
	.byte	0x1
	.uahalf	0x47a
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB242
	.uaword	.LFE242
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7b2b
	.uleb128 0x37
	.string	"sriFreq"
	.byte	0x1
	.uahalf	0x47a
	.uaword	0x1ca
	.uaword	.LLST78
	.uleb128 0x47
	.string	"freq"
	.byte	0x1
	.uahalf	0x47c
	.uaword	0x1ca
	.byte	0x4
	.uaword	0
	.uleb128 0x33
	.string	"source"
	.byte	0x1
	.uahalf	0x47d
	.uaword	0x1ca
	.uaword	.LLST79
	.uleb128 0x3a
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x47e
	.uaword	0x47cf
	.uaword	.LLST80
	.uleb128 0x3a
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x47f
	.uaword	0x18a
	.uaword	.LLST81
	.uleb128 0x33
	.string	"sriDiv"
	.byte	0x1
	.uahalf	0x480
	.uaword	0x1bc
	.uaword	.LLST82
	.uleb128 0x2f
	.uaword	0x6c71
	.uaword	.LBB76
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.uahalf	0x481
	.uleb128 0x43
	.uaword	0x6c8e
	.byte	0x1
	.uleb128 0x44
	.uaword	0x6c85
	.uaword	.LLST83
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x1b0
	.uleb128 0x2e
	.uaword	0x6c97
	.uaword	.LLST84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.string	"IfxScuCcu_switchToBackupClock"
	.byte	0x1
	.uahalf	0x49f
	.byte	0x1
	.uaword	.LFB243
	.uaword	.LFE243
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x7bab
	.uleb128 0x37
	.string	"cfg"
	.byte	0x1
	.uahalf	0x49f
	.uaword	0x7672
	.uaword	.LLST85
	.uleb128 0x3a
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x4a1
	.uaword	0x18a
	.uaword	.LLST86
	.uleb128 0x3a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x4a1
	.uaword	0x18a
	.uaword	.LLST87
	.uleb128 0x3a
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x4a2
	.uaword	0x149
	.uaword	.LLST88
	.uleb128 0x1d
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x4a3
	.uaword	0x15f
	.byte	0
	.uleb128 0x13
	.uaword	0x691a
	.uaword	0x7bbb
	.uleb128 0x14
	.uaword	0x134
	.byte	0x2
	.byte	0
	.uleb128 0x26
	.string	"IfxScuCcu_aDefaultPllConfigSteps"
	.byte	0x1
	.byte	0x3d
	.uaword	0x7be9
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_aDefaultPllConfigSteps
	.uleb128 0x2b
	.uaword	0x7bab
	.uleb128 0x26
	.string	"IfxScuCcu_xtalFrequency"
	.byte	0x1
	.byte	0x43
	.uaword	0x1bc
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_xtalFrequency
	.uleb128 0x48
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x7b
	.uaword	0x1bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x49
	.string	"IfxScuCcu_defaultClockConfig"
	.byte	0x1
	.byte	0x49
	.uaword	0x7678
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultClockConfig
	.uleb128 0x49
	.string	"IfxScuCcu_defaultErayPllConfig"
	.byte	0x1
	.byte	0x54
	.uaword	0x7750
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxScuCcu_defaultErayPllConfig
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
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
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE216
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LFE216
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0xbebc200
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LFE225
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LFE226
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LFE227
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41
	.uaword	.LFE228
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44
	.uaword	.LFE229
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL47
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48-1
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61
	.uaword	.LFE222
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58
	.uaword	.LFE222
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LFE217
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LFE218
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69
	.uaword	.LFE218
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL89
	.uaword	.LFE231
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LFE231
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL97
	.uaword	.LFE223
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0xd
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x3ff
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0xa
	.uleb128 0
	.byte	0x9d
	.uleb128 0x16
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL108
	.uaword	.LFE232
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL99
	.uaword	.LFE232
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LFE221
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL120
	.uaword	.LFE220
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL123
	.uaword	.LVL124-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL124-1
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL130
	.uaword	.LVL131-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL131-1
	.uaword	.LFE233
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL132
	.uaword	.LVL133-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL133-1
	.uaword	.LFE233
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL134
	.uaword	.LVL135-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL135-1
	.uaword	.LFE233
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL130
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL167
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL136
	.uaword	.LVL139
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x280
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL136
	.uaword	.LVL140
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL140
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL167
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL138
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL141
	.uaword	.LVL142-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL143
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL163
	.uaword	.LVL165
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x12
	.byte	0x8c
	.sleb128 52
	.byte	0x6
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x8c
	.sleb128 48
	.byte	0x6
	.byte	0x8c
	.sleb128 52
	.byte	0x6
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL157
	.uaword	.LVL159
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0xa
	.byte	0x8c
	.sleb128 60
	.byte	0x6
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL161
	.uaword	.LVL162
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL162
	.uaword	.LVL164
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL170
	.uaword	.LVL171-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL171-1
	.uaword	.LFE235
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL172
	.uaword	.LVL173-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL173-1
	.uaword	.LFE235
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL174
	.uaword	.LVL175-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL175-1
	.uaword	.LFE235
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xc34f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL179
	.uaword	.LVL180-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL180-1
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL179
	.uaword	.LVL180-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL180-1
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL184
	.uaword	.LVL185-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL185-1
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL181
	.uaword	.LVL183-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL183-1
	.uaword	.LFE238
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL182
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL188
	.uaword	.LVL190-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL190-1
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL198
	.uaword	.LFE239
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL195
	.uaword	.LVL196-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL196-1
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL189
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL198
	.uaword	.LFE239
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL190
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL198
	.uaword	.LFE239
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL193
	.uaword	.LVL194
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL198
	.uaword	.LFE239
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL199
	.uaword	.LVL200-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL200-1
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL201
	.uaword	.LVL202-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL202-1
	.uaword	.LFE240
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL206
	.uaword	.LVL207-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL208
	.uaword	.LVL209-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL209-1
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL216
	.uaword	.LVL217-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL217-1
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL218
	.uaword	.LVL219-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL219-1
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL212
	.uaword	.LVL213
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL222
	.uaword	.LFE241
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL212
	.uaword	.LVL214
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL213
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL222
	.uaword	.LFE241
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL223
	.uaword	.LVL224-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL224-1
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL230
	.uaword	.LVL231-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL231-1
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL227
	.uaword	.LVL228
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL234
	.uaword	.LFE242
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL227
	.uaword	.LVL228
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL234
	.uaword	.LFE242
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL235
	.uaword	.LVL236-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL236-1
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL239
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL241
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL237
	.uaword	.LVL238-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL238-1
	.uaword	.LFE243
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL243
	.uaword	.LVL244
	.uahalf	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL244
	.uaword	.LVL245
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xf4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	.LFB224
	.uaword	.LFE224-.LFB224
	.uaword	.LFB225
	.uaword	.LFE225-.LFB225
	.uaword	.LFB226
	.uaword	.LFE226-.LFB226
	.uaword	.LFB227
	.uaword	.LFE227-.LFB227
	.uaword	.LFB228
	.uaword	.LFE228-.LFB228
	.uaword	.LFB229
	.uaword	.LFE229-.LFB229
	.uaword	.LFB230
	.uaword	.LFE230-.LFB230
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.uaword	.LFB222
	.uaword	.LFE222-.LFB222
	.uaword	.LFB217
	.uaword	.LFE217-.LFB217
	.uaword	.LFB218
	.uaword	.LFE218-.LFB218
	.uaword	.LFB231
	.uaword	.LFE231-.LFB231
	.uaword	.LFB223
	.uaword	.LFE223-.LFB223
	.uaword	.LFB232
	.uaword	.LFE232-.LFB232
	.uaword	.LFB221
	.uaword	.LFE221-.LFB221
	.uaword	.LFB220
	.uaword	.LFE220-.LFB220
	.uaword	.LFB219
	.uaword	.LFE219-.LFB219
	.uaword	.LFB233
	.uaword	.LFE233-.LFB233
	.uaword	.LFB234
	.uaword	.LFE234-.LFB234
	.uaword	.LFB235
	.uaword	.LFE235-.LFB235
	.uaword	.LFB236
	.uaword	.LFE236-.LFB236
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB29
	.uaword	.LBE29
	.uaword	0
	.uaword	0
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
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
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB51
	.uaword	.LBE51
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	0
	.uaword	0
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	0
	.uaword	0
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	0
	.uaword	0
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	0
	.uaword	0
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	0
	.uaword	0
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0
	.uaword	0
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0
	.uaword	0
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	.LBB79
	.uaword	.LBE79
	.uaword	0
	.uaword	0
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	0
	.uaword	0
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	.LFB224
	.uaword	.LFE224
	.uaword	.LFB225
	.uaword	.LFE225
	.uaword	.LFB226
	.uaword	.LFE226
	.uaword	.LFB227
	.uaword	.LFE227
	.uaword	.LFB228
	.uaword	.LFE228
	.uaword	.LFB229
	.uaword	.LFE229
	.uaword	.LFB230
	.uaword	.LFE230
	.uaword	.LFB244
	.uaword	.LFE244
	.uaword	.LFB222
	.uaword	.LFE222
	.uaword	.LFB217
	.uaword	.LFE217
	.uaword	.LFB218
	.uaword	.LFE218
	.uaword	.LFB231
	.uaword	.LFE231
	.uaword	.LFB223
	.uaword	.LFE223
	.uaword	.LFB232
	.uaword	.LFE232
	.uaword	.LFB221
	.uaword	.LFE221
	.uaword	.LFB220
	.uaword	.LFE220
	.uaword	.LFB219
	.uaword	.LFE219
	.uaword	.LFB233
	.uaword	.LFE233
	.uaword	.LFB234
	.uaword	.LFE234
	.uaword	.LFB235
	.uaword	.LFE235
	.uaword	.LFB236
	.uaword	.LFE236
	.uaword	.LFB238
	.uaword	.LFE238
	.uaword	.LFB239
	.uaword	.LFE239
	.uaword	.LFB240
	.uaword	.LFE240
	.uaword	.LFB241
	.uaword	.LFE241
	.uaword	.LFB242
	.uaword	.LFE242
	.uaword	.LFB243
	.uaword	.LFE243
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF32:
	.string	"PINBWKEN"
.LASF42:
	.string	"frequency"
.LASF37:
	.string	"ccucon0"
.LASF45:
	.string	"endinitSfty_pw"
.LASF30:
	.string	"ESR1WKEN"
.LASF34:
	.string	"ESR0T"
.LASF10:
	.string	"reserved_10"
.LASF21:
	.string	"reserved_11"
.LASF20:
	.string	"reserved_12"
.LASF36:
	.string	"waitTime"
.LASF22:
	.string	"reserved_14"
.LASF13:
	.string	"reserved_15"
.LASF11:
	.string	"reserved_16"
.LASF24:
	.string	"reserved_17"
.LASF16:
	.string	"reserved_18"
.LASF26:
	.string	"reserved_19"
.LASF31:
	.string	"PINAWKEN"
.LASF38:
	.string	"ccucon1"
.LASF43:
	.string	"smuTrapEnable"
.LASF35:
	.string	"ESR1T"
.LASF25:
	.string	"reserved_21"
.LASF2:
	.string	"reserved_22"
.LASF14:
	.string	"reserved_23"
.LASF5:
	.string	"reserved_24"
.LASF3:
	.string	"reserved_26"
.LASF17:
	.string	"reserved_28"
.LASF41:
	.string	"sourceFrequency"
.LASF29:
	.string	"OSCDISCDIS"
.LASF48:
	.string	"inputFreq"
.LASF39:
	.string	"pllInitialStep"
.LASF9:
	.string	"SLCK"
.LASF46:
	.string	"pllStepsCount"
.LASF0:
	.string	"reserved_0"
.LASF23:
	.string	"reserved_1"
.LASF8:
	.string	"reserved_2"
.LASF1:
	.string	"reserved_3"
.LASF4:
	.string	"reserved_4"
.LASF6:
	.string	"reserved_6"
.LASF12:
	.string	"reserved_7"
.LASF15:
	.string	"reserved_8"
.LASF18:
	.string	"reserved_9"
.LASF28:
	.string	"CLRFINDIS"
.LASF19:
	.string	"reserved_30"
.LASF7:
	.string	"reserved_31"
.LASF44:
	.string	"endinit_pw"
.LASF27:
	.string	"SETFINDIS"
.LASF33:
	.string	"ESR0TRIST"
.LASF40:
	.string	"status"
.LASF47:
	.string	"l_SEndInitPW"
	.extern	IfxScuWdt_setSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearSafetyEndinit,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getSafetyWatchdogPassword,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
