	.file	"IfxAsclin.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxAsclin_enableAscErrorFlags,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableAscErrorFlags
	.type	IfxAsclin_enableAscErrorFlags, @function
IfxAsclin_enableAscErrorFlags:
.LFB362:
	.file 1 "0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.c"
	.loc 1 36 0
.LVL0:
.LBB60:
.LBB61:
	.file 2 "0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.h"
	.loc 2 1762 0
	ld.w	%d15, [%a4] 64
	ne	%d4, %d4, 0
.LVL1:
	ins.t	%d15, %d15,16, %d4,0
.LBE61:
.LBE60:
.LBB63:
.LBB64:
	.loc 2 1792 0
	ne	%d5, %d5, 0
.LVL2:
.LBE64:
.LBE63:
.LBB66:
.LBB62:
	.loc 2 1762 0
	st.w	[%a4] 64, %d15
.LVL3:
.LBE62:
.LBE66:
.LBB67:
.LBB65:
	.loc 2 1792 0
	ld.w	%d15, [%a4] 64
	ins.t	%d15, %d15,26, %d5,0
	st.w	[%a4] 64, %d15
.LBE65:
.LBE67:
	.loc 1 39 0
	ret
.LFE362:
	.size	IfxAsclin_enableAscErrorFlags, .-IfxAsclin_enableAscErrorFlags
.section .text.IfxAsclin_enableModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableModule
	.type	IfxAsclin_enableModule, @function
IfxAsclin_enableModule:
.LFB363:
	.loc 1 43 0
.LVL4:
	.loc 1 43 0
	mov.aa	%a15, %a4
	.loc 1 44 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL5:
	.loc 1 45 0
	mov	%d4, %d2
	.loc 1 44 0
	mov	%d8, %d2
.LVL6:
	.loc 1 45 0
	call	IfxScuWdt_clearCpuEndinit
.LVL7:
.LBB68:
.LBB69:
	.loc 2 2159 0
	ld.w	%d15, [%a15]0
.LBE69:
.LBE68:
	.loc 1 47 0
	mov	%d4, %d8
.LBB71:
.LBB70:
	.loc 2 2159 0
	andn	%d15, %d15, ~(-2)
	st.w	[%a15]0, %d15
.LBE70:
.LBE71:
	.loc 1 47 0
	j	IfxScuWdt_setCpuEndinit
.LFE363:
	.size	IfxAsclin_enableModule, .-IfxAsclin_enableModule
.section .text.IfxAsclin_getFaFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getFaFrequency
	.type	IfxAsclin_getFaFrequency, @function
IfxAsclin_getFaFrequency:
.LFB364:
	.loc 1 52 0
.LVL8:
.LBB72:
.LBB73:
	.loc 2 1870 0
	ld.w	%d15, [%a4] 76
	and	%d15, %d15, 31
.LBE73:
.LBE72:
	.loc 1 56 0
	add	%d15, -1
	jlt.u	%d15, 8, .L11
.L4:
.LVL9:
	.loc 1 79 0
	mov	%d2, 0
	ret
.LVL10:
.L11:
	.loc 1 56 0
	movh.a	%a15, hi:.L9
	lea	%a15, [%a15] lo:.L9
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L9:
	.code32
	j	.L5
	.code32
	j	.L6
	.code32
	j	.L4
	.code32
	j	.L7
	.code32
	j	.L4
	.code32
	j	.L4
	.code32
	j	.L4
	.code32
	j	.L8
.L7:
	.loc 1 68 0
	j	IfxScuCcu_getPllErayFrequency
.LVL11:
.L6:
	.loc 1 65 0
	j	IfxScuCcu_getOsc0Frequency
.LVL12:
.L5:
	.loc 1 62 0
	j	IfxScuCcu_getSpbFrequency
.LVL13:
.L8:
	.loc 1 71 0
	j	IfxScuCcu_getBaud2Frequency
.LVL14:
.LVL15:
.LFE364:
	.size	IfxAsclin_getFaFrequency, .-IfxAsclin_getFaFrequency
.section .text.IfxAsclin_getIndex,"ax",@progbits
	.align 1
	.global	IfxAsclin_getIndex
	.type	IfxAsclin_getIndex, @function
IfxAsclin_getIndex:
.LFB365:
	.loc 1 83 0
.LVL16:
	.loc 1 86 0
	mov.d	%d15, %a4
	addi	%d2, %d15, -1536
	addih	%d2, %d2, 4096
	.loc 1 89 0
	sh	%d2, -8
	ret
.LFE365:
	.size	IfxAsclin_getIndex, .-IfxAsclin_getIndex
.section .text.IfxAsclin_getPdFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getPdFrequency
	.type	IfxAsclin_getPdFrequency, @function
IfxAsclin_getPdFrequency:
.LFB367:
	.loc 1 99 0
.LVL17:
	.loc 1 99 0
	mov.aa	%a15, %a4
	.loc 1 100 0
	call	IfxAsclin_getFaFrequency
.LVL18:
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 12, 20
	add	%d15, 1
	itof	%d15, %d15
	.loc 1 101 0
	div.f	%d2, %d2, %d15
	ret
.LFE367:
	.size	IfxAsclin_getPdFrequency, .-IfxAsclin_getPdFrequency
.section .text.IfxAsclin_getOvsFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getOvsFrequency
	.type	IfxAsclin_getOvsFrequency, @function
IfxAsclin_getOvsFrequency:
.LFB366:
	.loc 1 93 0
.LVL19:
	.loc 1 93 0
	mov.aa	%a15, %a4
	.loc 1 94 0
	call	IfxAsclin_getPdFrequency
.LVL20:
	ld.w	%d3, [%a15] 32
	ld.w	%d15, [%a15] 32
	extr.u	%d3, %d3, 16, 12
	insert	%d15, %d15, 0, 12, 20
	itof	%d3, %d3
	itof	%d15, %d15
	mul.f	%d2, %d2, %d3
	.loc 1 95 0
	div.f	%d2, %d2, %d15
	ret
.LFE366:
	.size	IfxAsclin_getOvsFrequency, .-IfxAsclin_getOvsFrequency
.section .text.IfxAsclin_getShiftFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getShiftFrequency
	.type	IfxAsclin_getShiftFrequency, @function
IfxAsclin_getShiftFrequency:
.LFB368:
	.loc 1 105 0
.LVL21:
	.loc 1 105 0
	mov.aa	%a15, %a4
	.loc 1 106 0
	call	IfxAsclin_getOvsFrequency
.LVL22:
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 16, 4
	itof	%d15, %d15
	.loc 1 107 0
	div.f	%d2, %d2, %d15
	ret
.LFE368:
	.size	IfxAsclin_getShiftFrequency, .-IfxAsclin_getShiftFrequency
.section .text.IfxAsclin_getSrcPointerEr,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerEr
	.type	IfxAsclin_getSrcPointerEr, @function
IfxAsclin_getSrcPointerEr:
.LFB369:
	.loc 1 111 0
.LVL23:
.LBB74:
.LBB75:
	.loc 1 86 0
	lea	%a4, [%a4] -1536
.LVL24:
	addih.a	%a4, %a4, 4096
.LVL25:
	.loc 1 87 0
	mov.d	%d15, %a4
	sh	%d15, -8
.LBE75:
.LBE74:
	.loc 1 112 0
	sh	%d2, %d15, 1
	mov.a	%a15, %d2
	addsc.a	%a4, %a15, %d15, 0
.LVL26:
	add.a	%a4, %a4
	add.a	%a4, %a4
	lea	%a4, [%a4] -32632
	.loc 1 113 0
	addih.a	%a2, %a4, 61444
	ret
.LFE369:
	.size	IfxAsclin_getSrcPointerEr, .-IfxAsclin_getSrcPointerEr
.section .text.IfxAsclin_getSrcPointerRx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerRx
	.type	IfxAsclin_getSrcPointerRx, @function
IfxAsclin_getSrcPointerRx:
.LFB370:
	.loc 1 117 0
.LVL27:
.LBB76:
.LBB77:
	.loc 1 86 0
	lea	%a4, [%a4] -1536
.LVL28:
	addih.a	%a4, %a4, 4096
.LVL29:
	.loc 1 87 0
	mov.d	%d15, %a4
	sh	%d15, -8
.LBE77:
.LBE76:
	.loc 1 118 0
	sh	%d2, %d15, 1
	mov.a	%a15, %d2
	addsc.a	%a4, %a15, %d15, 0
.LVL30:
	add.a	%a4, %a4
	add.a	%a4, %a4
	lea	%a4, [%a4] -32636
	.loc 1 119 0
	addih.a	%a2, %a4, 61444
	ret
.LFE370:
	.size	IfxAsclin_getSrcPointerRx, .-IfxAsclin_getSrcPointerRx
.section .text.IfxAsclin_getSrcPointerTx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerTx
	.type	IfxAsclin_getSrcPointerTx, @function
IfxAsclin_getSrcPointerTx:
.LFB371:
	.loc 1 123 0
.LVL31:
.LBB78:
.LBB79:
	.loc 1 86 0
	lea	%a4, [%a4] -1536
.LVL32:
	addih.a	%a4, %a4, 4096
.LVL33:
	.loc 1 87 0
	mov.d	%d15, %a4
	sh	%d15, -8
.LBE79:
.LBE78:
	.loc 1 124 0
	sh	%d2, %d15, 1
	mov.a	%a15, %d2
	addsc.a	%a4, %a15, %d15, 0
.LVL34:
	add.a	%a4, %a4
	add.a	%a4, %a4
	lea	%a4, [%a4] -32640
	.loc 1 125 0
	addih.a	%a2, %a4, 61444
	ret
.LFE371:
	.size	IfxAsclin_getSrcPointerTx, .-IfxAsclin_getSrcPointerTx
.section .text.IfxAsclin_read16,"ax",@progbits
	.align 1
	.global	IfxAsclin_read16
	.type	IfxAsclin_read16, @function
IfxAsclin_read16:
.LFB372:
	.loc 1 129 0
.LVL35:
	.loc 1 132 0
	jz	%d4, .L20
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL36:
.L22:
	.loc 1 134 0
	ld.w	%d15, [%a4] 72
	st.h	[%a5+]2, %d15
.LVL37:
	.loc 1 135 0
	loop	%a15, .L22
.L20:
	.loc 1 139 0
	mov	%d2, 0
	ret
.LFE372:
	.size	IfxAsclin_read16, .-IfxAsclin_read16
.section .text.IfxAsclin_read32,"ax",@progbits
	.align 1
	.global	IfxAsclin_read32
	.type	IfxAsclin_read32, @function
IfxAsclin_read32:
.LFB373:
	.loc 1 143 0
.LVL38:
	.loc 1 146 0
	jz	%d4, .L25
.LVL39:
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL40:
.L27:
	.loc 1 148 0
	ld.w	%d15, [%a4] 72
	st.w	[%a5+]4, %d15
.LVL41:
	.loc 1 149 0
	loop	%a15, .L27
.L25:
	.loc 1 153 0
	mov	%d2, 0
	ret
.LFE373:
	.size	IfxAsclin_read32, .-IfxAsclin_read32
.section .text.IfxAsclin_read8,"ax",@progbits
	.align 1
	.global	IfxAsclin_read8
	.type	IfxAsclin_read8, @function
IfxAsclin_read8:
.LFB374:
	.loc 1 157 0
.LVL42:
	.loc 1 160 0
	jz	%d4, .L30
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL43:
.L32:
	.loc 1 162 0
	ld.w	%d15, [%a4] 72
	st.b	[%a5+]1, %d15
.LVL44:
	.loc 1 163 0
	loop	%a15, .L32
.L30:
	.loc 1 167 0
	mov	%d2, 0
	ret
.LFE374:
	.size	IfxAsclin_read8, .-IfxAsclin_read8
.section .text.IfxAsclin_setBaudrateBitFields,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBaudrateBitFields
	.type	IfxAsclin_setBaudrateBitFields, @function
IfxAsclin_setBaudrateBitFields:
.LFB375:
	.loc 1 171 0
.LVL45:
.LBB80:
.LBB81:
	.loc 2 1870 0
	ld.w	%d2, [%a4] 76
.LBE81:
.LBE80:
.LBB83:
.LBB84:
	.loc 1 269 0
	ld.w	%d15, [%a4] 76
.LBE84:
.LBE83:
.LBB88:
.LBB82:
	.loc 2 1870 0
	and	%d2, %d2, 31
.LVL46:
.LBE82:
.LBE88:
.LBB89:
.LBB87:
	.loc 1 269 0
	andn	%d15, %d15, ~(-32)
	st.w	[%a4] 76, %d15
.L35:
.LVL47:
.LBB85:
.LBB86:
	.loc 2 1876 0
	ld.w	%d15, [%a4] 76
.LBE86:
.LBE85:
	.loc 1 274 0
	jltz	%d15, .L35
.LVL48:
.LBE87:
.LBE89:
.LBB90:
.LBB91:
	.loc 2 2255 0
	ld.w	%d15, [%a4] 20
	add	%d4, -1
.LVL49:
	insert	%d15, %d15, %d4, 0, 12
	st.w	[%a4] 20, %d15
.LVL50:
.LBE91:
.LBE90:
.LBB92:
.LBB93:
	.loc 2 2237 0
	ld.w	%d15, [%a4] 32
	insert	%d15, %d15, %d5, 16, 12
	st.w	[%a4] 32, %d15
.LVL51:
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	.loc 2 2147 0
	ld.w	%d15, [%a4] 32
	insert	%d15, %d15, %d6, 0, 12
	st.w	[%a4] 32, %d15
.LVL52:
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	.loc 2 2243 0
	ld.w	%d15, [%a4] 20
	insert	%d15, %d15, %d7, 16, 4
	st.w	[%a4] 20, %d15
.LVL53:
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	.loc 1 269 0
	ld.w	%d15, [%a4] 76
	insert	%d15, %d15, %d2, 0, 5
	st.w	[%a4] 76, %d15
	.loc 1 272 0
	jnz	%d2, .L40
.L39:
.LBB100:
.LBB101:
	.loc 2 1876 0
	ld.w	%d15, [%a4] 76
.LBE101:
.LBE100:
	.loc 1 274 0
	jltz	%d15, .L39
	ret
.L40:
.LVL54:
.LBB102:
.LBB103:
	.loc 2 1876 0
	ld.w	%d15, [%a4] 76
.LBE103:
.LBE102:
	.loc 1 279 0
	jgez	%d15, .L40
	ret
.LBE99:
.LBE98:
.LFE375:
	.size	IfxAsclin_setBaudrateBitFields, .-IfxAsclin_setBaudrateBitFields
.section .text.IfxAsclin_setBitTiming,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBitTiming
	.type	IfxAsclin_setBitTiming, @function
IfxAsclin_setBitTiming:
.LFB376:
	.loc 1 183 0
.LVL55:
.LBB104:
.LBB105:
	.loc 2 1870 0
	ld.w	%d2, [%a4] 76
.LBE105:
.LBE104:
	.loc 1 183 0
	mov.aa	%a15, %a4
.LBB108:
.LBB106:
	.loc 2 1870 0
	and	%d2, %d2, 31
.LBE106:
.LBE108:
	.loc 1 183 0
	mov	%d15, %d4
	mov	%e8, %d5, %d6
	mov.a	%a13, %d7
.LBB109:
.LBB107:
	.loc 2 1870 0
	mov.a	%a12, %d2
.LVL56:
.LBE107:
.LBE109:
	.loc 1 190 0
	call	IfxAsclin_getPdFrequency
.LVL57:
	mov.a	%a2, %d2
.LVL58:
.LBB110:
.LBB111:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 114 0
	mov	%d2, 4
.LVL59:
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d3, %d9, %d2
	# 0 "" 2
#NO_APP
.LBE111:
.LBE110:
.LBB113:
.LBB114:
	mov	%d5, 1
.LBE114:
.LBE113:
.LBB117:
.LBB112:
	mov.a	%a6, %d3
.LVL60:
.LBE112:
.LBE117:
.LBB118:
.LBB115:
#APP
	# 114 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d8, %d5
	# 0 "" 2
#NO_APP
.LBE115:
.LBE118:
	.loc 1 193 0
	utof	%d4, %d3
	.loc 1 201 0
	mov.d	%d3, %a2
.LVL61:
	.loc 1 193 0
	mul.f	%d4, %d4, %d15
	.loc 1 195 0
	movh	%d15, 14979
.LVL62:
	addi	%d15, %d15, 4719
	mul.f	%d15, %d4, %d15
	.loc 1 208 0
	mov	%d6, 0
	.loc 1 195 0
	mov.a	%a4, %d15
	.loc 1 201 0
	div.f	%d15, %d3, %d4
.LBB119:
.LBB116:
	.loc 3 114 0
	mov.a	%a7, %d2
.LVL63:
.LBE116:
.LBE119:
	.loc 1 215 0
	mov	%d8, 1
.LVL64:
	.loc 1 201 0
	ftouz	%d15, %d15
	.loc 1 207 0
	utof	%d3, %d15
	.loc 1 201 0
	mov.a	%a3, %d15
.LVL65:
	.loc 1 207 0
	mov.d	%d15, %a2
.LVL66:
	div.f	%d3, %d15, %d3
	.loc 1 204 0
	mov.d	%d10, %a3
	.loc 1 208 0
	sub.f	%d3, %d4, %d3
	cmp.f	%d15, %d3, %d6
	extr.u	%d15, %d15, 0, 1
	addih	%d2, %d3, 0x8000
.LVL67:
	cmov	%d3, %d15, %d2
.LVL68:
	.loc 1 197 0
	mov.d	%d2, %a4
	cmp.f	%d15, %d3, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L47
	.loc 1 215 0 discriminator 3
	mov.d	%d2, %a3
	sh	%d2, 1
	mov.d	%d7, %a3
	mov	%d15, 4096
	add	%d7, %d2
	.loc 1 206 0 discriminator 3
	mov	%d9, 0
.LVL69:
	.loc 1 215 0 discriminator 3
	mov	%d13, 2
	lea	%a5, 4096
	jge.u	%d2, %d15, .L47
	.loc 1 217 0
	jeq	%d13, 2, .L81
.LVL70:
.L49:
	.loc 1 224 0
	mul	%d0, %d9, %d13
	div.u	%e0, %d0, %d8
	mov	%d14, %d0
.LVL71:
	.loc 1 225 0
	add	%d14, 1
.LVL72:
	.loc 1 228 0
	mov	%d1, %d0
	jlt.u	%d14, %d0, .L52
.LVL73:
.L51:
	.loc 1 217 0
	utof	%d5, %d13
	mov.d	%d15, %a2
	mul.f	%d5, %d15, %d5
.L50:
	.loc 1 230 0
	add	%d11, %d1, %d2
.LVL74:
	utof	%d15, %d11
	div.f	%d15, %d5, %d15
	.loc 1 231 0
	sub.f	%d15, %d4, %d15
	cmp.f	%d0, %d15, %d6
	extr.u	%d0, %d0, 0, 1
	addih	%d12, %d15, 0x8000
	sel	%d15, %d0, %d12, %d15
.LVL75:
	.loc 1 233 0
	cmp.f	%d0, %d3, %d15
	extr.u	%d0, %d0, 2, 1
	seln	%d9, %d0, %d9, %d1
	.loc 1 228 0
	add	%d1, 1
	.loc 1 233 0
	seln	%d3, %d0, %d3, %d15
.LVL76:
	seln	%d8, %d0, %d8, %d13
	seln	%d10, %d0, %d10, %d11
.LVL77:
	.loc 1 228 0
	jge.u	%d14, %d1, .L50
.LVL78:
.L52:
	.loc 1 242 0
	mov.d	%d2, %a4
	cmp.f	%d15, %d3, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L79
	.loc 1 215 0
	mov.d	%d15, %a3
	mov.d	%d2, %a5
	add	%d13, 1
.LVL79:
	add	%d15, %d7
	jge.u	%d7, %d2, .L79
	mov	%d2, %d7
	mov	%d7, %d15
	.loc 1 217 0
	jne	%d13, 2, .L49
.LVL80:
.L81:
	.loc 1 220 0
	mov	%d14, 1
	.loc 1 219 0
	mov	%d1, 1
	j	.L51
.LVL81:
.L79:
	.loc 1 215 0
	insert	%d8, %d8, 0, 12, 20
.LVL82:
.L47:
.LBB120:
.LBB121:
	.loc 1 269 0
	ld.w	%d15, [%a15] 76
	andn	%d15, %d15, ~(-32)
	st.w	[%a15] 76, %d15
.L59:
.LVL83:
.LBB122:
.LBB123:
	.loc 2 1876 0
	ld.w	%d15, [%a15] 76
.LBE123:
.LBE122:
	.loc 1 274 0
	jltz	%d15, .L59
.LBE121:
.LBE120:
	.loc 1 249 0
	ld.w	%d15, [%a15] 32
	.loc 1 253 0
	mov.d	%d2, %a6
	.loc 1 249 0
	insert	%d15, %d15, %d10, 0, 12
	.loc 1 253 0
	add	%d2, -1
	.loc 1 256 0
	mov.d	%d3, %a7
.LVL84:
	.loc 1 249 0
	st.w	[%a15] 32, %d15
	.loc 1 250 0
	ld.w	%d15, [%a15] 32
	insert	%d15, %d15, %d8, 16, 12
	st.w	[%a15] 32, %d15
	.loc 1 253 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, %d2, 16, 4
	.loc 1 259 0
	nez.a	%d2, %a13
	.loc 1 253 0
	st.w	[%a15] 20, %d15
	.loc 1 256 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, %d3, 24, 4
	st.w	[%a15] 20, %d15
	.loc 1 259 0
	ld.w	%d15, [%a15] 20
	ins.t	%d15, %d15,31, %d2,0
.LBB124:
.LBB125:
	.loc 1 269 0
	mov.d	%d2, %a12
.LBE125:
.LBE124:
	.loc 1 259 0
	st.w	[%a15] 20, %d15
.LVL85:
.LBB134:
.LBB132:
	.loc 1 269 0
	ld.w	%d15, [%a15] 76
	insert	%d15, %d15, %d2, 0, 5
	st.w	[%a15] 76, %d15
	.loc 1 272 0
	jnz.a	%a12, .L73
.L72:
.LBB126:
.LBB127:
	.loc 2 1876 0
	ld.w	%d15, [%a15] 76
.LBE127:
.LBE126:
	.loc 1 274 0
	jltz	%d15, .L72
.L62:
.LBE132:
.LBE134:
	.loc 1 264 0
	mov	%d2, 1
	ret
.L73:
.LVL86:
.LBB135:
.LBB133:
.LBB128:
.LBB129:
	.loc 2 1876 0
	ld.w	%d15, [%a15] 76
.LBE129:
.LBE128:
	.loc 1 279 0
	jltz	%d15, .L62
.LBB131:
.LBB130:
	.loc 2 1876 0
	ld.w	%d15, [%a15] 76
.LBE130:
.LBE131:
	.loc 1 279 0
	jgez	%d15, .L73
	j	.L62
.LBE133:
.LBE135:
.LFE376:
	.size	IfxAsclin_setBitTiming, .-IfxAsclin_setBitTiming
.section .text.IfxAsclin_setClockSource,"ax",@progbits
	.align 1
	.global	IfxAsclin_setClockSource
	.type	IfxAsclin_setClockSource, @function
IfxAsclin_setClockSource:
.LFB377:
	.loc 1 268 0
.LVL87:
	.loc 1 269 0
	ld.w	%d15, [%a4] 76
	insert	%d15, %d15, %d4, 0, 5
	st.w	[%a4] 76, %d15
	.loc 1 272 0
	jnz	%d4, .L87
.L86:
.LVL88:
.LBB136:
.LBB137:
	.loc 2 1876 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE137:
.LBE136:
	.loc 1 274 0 discriminator 1
	jltz	%d15, .L86
	ret
.LVL89:
.L87:
.LBB138:
.LBB139:
	.loc 2 1876 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE139:
.LBE138:
	.loc 1 279 0 discriminator 1
	jgez	%d15, .L87
	ret
.LFE377:
	.size	IfxAsclin_setClockSource, .-IfxAsclin_setClockSource
.section .text.IfxAsclin_write16,"ax",@progbits
	.align 1
	.global	IfxAsclin_write16
	.type	IfxAsclin_write16, @function
IfxAsclin_write16:
.LFB378:
	.loc 1 286 0
.LVL90:
	.loc 1 289 0
	jz	%d4, .L91
.LVL91:
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL92:
.L93:
	.loc 1 291 0
	ld.hu	%d15, [%a5+]2
.LVL93:
	st.w	[%a4] 68, %d15
.LVL94:
	.loc 1 292 0
	loop	%a15, .L93
.L91:
	.loc 1 296 0
	mov	%d2, 0
	ret
.LFE378:
	.size	IfxAsclin_write16, .-IfxAsclin_write16
.section .text.IfxAsclin_write32,"ax",@progbits
	.align 1
	.global	IfxAsclin_write32
	.type	IfxAsclin_write32, @function
IfxAsclin_write32:
.LFB379:
	.loc 1 300 0
.LVL95:
	.loc 1 303 0
	jz	%d4, .L96
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL96:
.L98:
	.loc 1 305 0
	ld.w	%d15, [%a5+]4
.LVL97:
	st.w	[%a4] 68, %d15
.LVL98:
	.loc 1 306 0
	loop	%a15, .L98
.L96:
	.loc 1 310 0
	mov	%d2, 0
	ret
.LFE379:
	.size	IfxAsclin_write32, .-IfxAsclin_write32
.section .text.IfxAsclin_write8,"ax",@progbits
	.align 1
	.global	IfxAsclin_write8
	.type	IfxAsclin_write8, @function
IfxAsclin_write8:
.LFB380:
	.loc 1 314 0
.LVL99:
	.loc 1 317 0
	jz	%d4, .L101
	mov.a	%a15, %d4
	add.a	%a15, -1
.LVL100:
.L103:
	.loc 1 319 0
	ld.bu	%d15, [%a5+]1
.LVL101:
	st.w	[%a4] 68, %d15
.LVL102:
	.loc 1 320 0
	loop	%a15, .L103
.L101:
	.loc 1 324 0
	mov	%d2, 0
	ret
.LFE380:
	.size	IfxAsclin_write8, .-IfxAsclin_write8
.section .text.IfxAsclin_resetModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_resetModule
	.type	IfxAsclin_resetModule, @function
IfxAsclin_resetModule:
.LFB381:
	.loc 1 328 0
.LVL103:
	.loc 1 328 0
	mov.aa	%a15, %a4
	.loc 1 329 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL104:
	.loc 1 330 0
	mov	%d4, %d2
	.loc 1 329 0
	mov	%d8, %d2
.LVL105:
	.loc 1 330 0
	call	IfxScuWdt_clearCpuEndinit
.LVL106:
	.loc 1 332 0
	ld.w	%d15, [%a15] 244
	.loc 1 334 0
	mov	%d4, %d8
	.loc 1 332 0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 244, %d15
	.loc 1 333 0
	ld.w	%d15, [%a15] 240
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 240, %d15
	.loc 1 334 0
	call	IfxScuWdt_setCpuEndinit
.L106:
	.loc 1 336 0 discriminator 1
	ld.w	%d15, [%a15] 244
	jz.t	%d15, 1, .L106
	.loc 1 339 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 340 0
	ld.w	%d15, [%a15] 236
	.loc 1 342 0
	mov	%d4, %d8
	.loc 1 340 0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 236, %d15
	.loc 1 342 0
	j	IfxScuWdt_setCpuEndinit
.LFE381:
	.size	IfxAsclin_resetModule, .-IfxAsclin_resetModule
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
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB381
	.uaword	.LFE381-.LFB381
	.align 2
.LEFDE38:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
	.file 6 "./0_Src/4_McHal/Tricore/_Reg/IfxAsclin_regdef.h"
	.file 7 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4b91
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Asclin/Std/IfxAsclin.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x140
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
	.byte	0x4
	.byte	0x59
	.uaword	0xe6
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x112
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0xa2
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0xae
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x153
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
	.byte	0x4
	.byte	0x68
	.uaword	0xe6
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
	.uaword	0xe6
	.uaword	0x1c8
	.uleb128 0x5
	.uaword	0xae
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x1d8
	.uleb128 0x5
	.uaword	0xae
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x1e8
	.uleb128 0x5
	.uaword	0xae
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x1f8
	.uleb128 0x5
	.uaword	0xae
	.byte	0x1b
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x208
	.uleb128 0x5
	.uaword	0xae
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x218
	.uleb128 0x5
	.uaword	0xae
	.byte	0x27
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x228
	.uleb128 0x5
	.uaword	0xae
	.byte	0xf7
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x2d
	.uaword	0x354
	.uleb128 0x7
	.string	"SRPN"
	.byte	0x5
	.byte	0x2f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x5
	.byte	0x30
	.uaword	0x1a8
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRE"
	.byte	0x5
	.byte	0x31
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TOS"
	.byte	0x5
	.byte	0x32
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x5
	.byte	0x33
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ECC"
	.byte	0x5
	.byte	0x34
	.uaword	0x1a8
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x5
	.byte	0x35
	.uaword	0x1a8
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRR"
	.byte	0x5
	.byte	0x36
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CLRR"
	.byte	0x5
	.byte	0x37
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SETR"
	.byte	0x5
	.byte	0x38
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"IOV"
	.byte	0x5
	.byte	0x39
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"IOVCLR"
	.byte	0x5
	.byte	0x3a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SWS"
	.byte	0x5
	.byte	0x3b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SWSCLR"
	.byte	0x5
	.byte	0x3c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_31"
	.byte	0x5
	.byte	0x3d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x5
	.byte	0x3e
	.uaword	0x228
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x46
	.uaword	0x391
	.uleb128 0xa
	.string	"U"
	.byte	0x5
	.byte	0x48
	.uaword	0x1a8
	.uleb128 0xa
	.string	"I"
	.byte	0x5
	.byte	0x49
	.uaword	0xc3
	.uleb128 0xa
	.string	"B"
	.byte	0x5
	.byte	0x4a
	.uaword	0x354
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x5
	.byte	0x4b
	.uaword	0x36d
	.uleb128 0x6
	.string	"_Ifx_SRC_ASCLIN"
	.byte	0xc
	.byte	0x5
	.byte	0x56
	.uaword	0x3e6
	.uleb128 0xb
	.string	"TX"
	.byte	0x5
	.byte	0x58
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RX"
	.byte	0x5
	.byte	0x59
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"ERR"
	.byte	0x5
	.byte	0x5a
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_BCUSPB"
	.byte	0x4
	.byte	0x5
	.byte	0x5e
	.uaword	0x40f
	.uleb128 0xb
	.string	"SBSRC"
	.byte	0x5
	.byte	0x60
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	0x3e6
	.uleb128 0x6
	.string	"_Ifx_SRC_CAN"
	.byte	0x40
	.byte	0x5
	.byte	0x64
	.uaword	0x438
	.uleb128 0xb
	.string	"INT"
	.byte	0x5
	.byte	0x66
	.uaword	0x438
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x391
	.uaword	0x448
	.uleb128 0x5
	.uaword	0xae
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_CAN1"
	.byte	0x20
	.byte	0x5
	.byte	0x6a
	.uaword	0x46d
	.uleb128 0xb
	.string	"INT"
	.byte	0x5
	.byte	0x6c
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x391
	.uaword	0x47d
	.uleb128 0x5
	.uaword	0xae
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_CCU6"
	.byte	0x10
	.byte	0x5
	.byte	0x70
	.uaword	0x4cc
	.uleb128 0xb
	.string	"SR0"
	.byte	0x5
	.byte	0x72
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SR1"
	.byte	0x5
	.byte	0x73
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"SR2"
	.byte	0x5
	.byte	0x74
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"SR3"
	.byte	0x5
	.byte	0x75
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x5
	.byte	0x79
	.uaword	0x4f4
	.uleb128 0xb
	.string	"SR"
	.byte	0x5
	.byte	0x7b
	.uaword	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x391
	.uaword	0x504
	.uleb128 0x5
	.uaword	0xae
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.uaword	0x4cc
	.uleb128 0x6
	.string	"_Ifx_SRC_CPU"
	.byte	0x20
	.byte	0x5
	.byte	0x7f
	.uaword	0x53d
	.uleb128 0xb
	.string	"SBSRC"
	.byte	0x5
	.byte	0x81
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x5
	.byte	0x82
	.uaword	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_DMA"
	.byte	0x50
	.byte	0x5
	.byte	0x86
	.uaword	0x57c
	.uleb128 0xb
	.string	"ERR"
	.byte	0x5
	.byte	0x88
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x5
	.byte	0x89
	.uaword	0x1f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"CH"
	.byte	0x5
	.byte	0x8a
	.uaword	0x438
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_EMEM"
	.byte	0x4
	.byte	0x5
	.byte	0x8e
	.uaword	0x5a0
	.uleb128 0xb
	.string	"SR"
	.byte	0x5
	.byte	0x90
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_ERAY"
	.byte	0x50
	.byte	0x5
	.byte	0x94
	.uaword	0x620
	.uleb128 0xb
	.string	"INT"
	.byte	0x5
	.byte	0x96
	.uaword	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TINT"
	.byte	0x5
	.byte	0x97
	.uaword	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"NDAT"
	.byte	0x5
	.byte	0x98
	.uaword	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"MBSC"
	.byte	0x5
	.byte	0x99
	.uaword	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"OBUSY"
	.byte	0x5
	.byte	0x9a
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"IBUSY"
	.byte	0x5
	.byte	0x9b
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x5
	.byte	0x9c
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_ETH"
	.byte	0x4
	.byte	0x5
	.byte	0xa0
	.uaword	0x643
	.uleb128 0xb
	.string	"SR"
	.byte	0x5
	.byte	0xa2
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_EVR"
	.byte	0x8
	.byte	0x5
	.byte	0xa6
	.uaword	0x676
	.uleb128 0xb
	.string	"WUT"
	.byte	0x5
	.byte	0xa8
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SCDC"
	.byte	0x5
	.byte	0xa9
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_FFT"
	.byte	0xc
	.byte	0x5
	.byte	0xad
	.uaword	0x6b7
	.uleb128 0xb
	.string	"DONE"
	.byte	0x5
	.byte	0xaf
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ERR"
	.byte	0x5
	.byte	0xb0
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"RFS"
	.byte	0x5
	.byte	0xb1
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.string	"_Ifx_SRC_GPSR"
	.uahalf	0x600
	.byte	0x5
	.byte	0xb5
	.uaword	0x715
	.uleb128 0xb
	.string	"SR0"
	.byte	0x5
	.byte	0xb7
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SR1"
	.byte	0x5
	.byte	0xb8
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"SR2"
	.byte	0x5
	.byte	0xb9
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"SR3"
	.byte	0x5
	.byte	0xba
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x5
	.byte	0xbb
	.uaword	0x715
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x726
	.uleb128 0xf
	.uaword	0xae
	.uahalf	0x5ef
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_GPT12"
	.byte	0x30
	.byte	0x5
	.byte	0xbf
	.uaword	0x79c
	.uleb128 0xb
	.string	"CIRQ"
	.byte	0x5
	.byte	0xc1
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"T2"
	.byte	0x5
	.byte	0xc2
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"T3"
	.byte	0x5
	.byte	0xc3
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"T4"
	.byte	0x5
	.byte	0xc4
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"T5"
	.byte	0x5
	.byte	0xc5
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"T6"
	.byte	0x5
	.byte	0xc6
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x5
	.byte	0xc7
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xe
	.string	"_Ifx_SRC_GTM"
	.uahalf	0x5c0
	.byte	0x5
	.byte	0xcb
	.uaword	0x82f
	.uleb128 0xb
	.string	"AEIIRQ"
	.byte	0x5
	.byte	0xcd
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x5
	.byte	0xce
	.uaword	0x82f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"ERR"
	.byte	0x5
	.byte	0xcf
	.uaword	0x391
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0xb
	.string	"reserved_174"
	.byte	0x5
	.byte	0xd0
	.uaword	0x1f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0xb
	.string	"TIM"
	.byte	0x5
	.byte	0xd1
	.uaword	0x840
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xb
	.string	"reserved_1A0"
	.byte	0x5
	.byte	0xd2
	.uaword	0x856
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0xb
	.string	"TOM"
	.byte	0x5
	.byte	0xd3
	.uaword	0x867
	.byte	0x3
	.byte	0x23
	.uleb128 0x580
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x840
	.uleb128 0xf
	.uaword	0xae
	.uahalf	0x16b
	.byte	0
	.uleb128 0x4
	.uaword	0x391
	.uaword	0x856
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.uleb128 0x5
	.uaword	0xae
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x867
	.uleb128 0xf
	.uaword	0xae
	.uahalf	0x3df
	.byte	0
	.uleb128 0x4
	.uaword	0x391
	.uaword	0x87d
	.uleb128 0x5
	.uaword	0xae
	.byte	0x1
	.uleb128 0x5
	.uaword	0xae
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_HSM"
	.byte	0x8
	.byte	0x5
	.byte	0xd7
	.uaword	0x8a1
	.uleb128 0xb
	.string	"HSM"
	.byte	0x5
	.byte	0xd9
	.uaword	0x4f4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_LMU"
	.byte	0x4
	.byte	0x5
	.byte	0xdd
	.uaword	0x8c4
	.uleb128 0xb
	.string	"SR"
	.byte	0x5
	.byte	0xdf
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_PMU"
	.byte	0x4
	.byte	0x5
	.byte	0xe3
	.uaword	0x8e7
	.uleb128 0xb
	.string	"SR"
	.byte	0x5
	.byte	0xe5
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_QSPI"
	.byte	0x18
	.byte	0x5
	.byte	0xe9
	.uaword	0x94c
	.uleb128 0xb
	.string	"TX"
	.byte	0x5
	.byte	0xeb
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RX"
	.byte	0x5
	.byte	0xec
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"ERR"
	.byte	0x5
	.byte	0xed
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"PT"
	.byte	0x5
	.byte	0xee
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"HC"
	.byte	0x5
	.byte	0xef
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"U"
	.byte	0x5
	.byte	0xf0
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.string	"_Ifx_SRC_SCU"
	.byte	0x14
	.byte	0x5
	.byte	0xf4
	.uaword	0x97e
	.uleb128 0xb
	.string	"DTS"
	.byte	0x5
	.byte	0xf6
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ERU"
	.byte	0x5
	.byte	0xf7
	.uaword	0x97e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.uaword	0x391
	.uaword	0x98e
	.uleb128 0x5
	.uaword	0xae
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.uaword	0x94c
	.uleb128 0x6
	.string	"_Ifx_SRC_SENT"
	.byte	0x10
	.byte	0x5
	.byte	0xfb
	.uaword	0x9b7
	.uleb128 0xb
	.string	"SR"
	.byte	0x5
	.byte	0xfd
	.uaword	0x97e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x10
	.string	"_Ifx_SRC_SMU"
	.byte	0xc
	.byte	0x5
	.uahalf	0x101
	.uaword	0x9dc
	.uleb128 0x11
	.string	"SR"
	.byte	0x5
	.uahalf	0x103
	.uaword	0x9dc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x391
	.uaword	0x9ec
	.uleb128 0x5
	.uaword	0xae
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.string	"_Ifx_SRC_STM"
	.byte	0x60
	.byte	0x5
	.uahalf	0x107
	.uaword	0xa30
	.uleb128 0x11
	.string	"SR0"
	.byte	0x5
	.uahalf	0x109
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x5
	.uahalf	0x10a
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x10b
	.uaword	0xa30
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0xa40
	.uleb128 0x5
	.uaword	0xae
	.byte	0x57
	.byte	0
	.uleb128 0x13
	.string	"_Ifx_SRC_VADCCG"
	.uahalf	0x140
	.byte	0x5
	.uahalf	0x10f
	.uaword	0xaa6
	.uleb128 0x11
	.string	"SR0"
	.byte	0x5
	.uahalf	0x111
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x5
	.uahalf	0x112
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"SR2"
	.byte	0x5
	.uahalf	0x113
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"SR3"
	.byte	0x5
	.uahalf	0x114
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.uaword	.LASF5
	.byte	0x5
	.uahalf	0x115
	.uaword	0xaa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0xab7
	.uleb128 0xf
	.uaword	0xae
	.uahalf	0x12f
	.byte	0
	.uleb128 0x10
	.string	"_Ifx_SRC_VADCG"
	.byte	0x10
	.byte	0x5
	.uahalf	0x119
	.uaword	0xb0c
	.uleb128 0x11
	.string	"SR0"
	.byte	0x5
	.uahalf	0x11b
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x5
	.uahalf	0x11c
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"SR2"
	.byte	0x5
	.uahalf	0x11d
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"SR3"
	.byte	0x5
	.uahalf	0x11e
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x10
	.string	"_Ifx_SRC_XBAR"
	.byte	0x4
	.byte	0x5
	.uahalf	0x122
	.uaword	0xb33
	.uleb128 0x11
	.string	"SRC"
	.byte	0x5
	.uahalf	0x124
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	0xb0c
	.uleb128 0x10
	.string	"_Ifx_SRC_GASCLIN"
	.byte	0x18
	.byte	0x5
	.uahalf	0x132
	.uaword	0xb65
	.uleb128 0x11
	.string	"ASCLIN"
	.byte	0x5
	.uahalf	0x134
	.uaword	0xb75
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x3a5
	.uaword	0xb75
	.uleb128 0x5
	.uaword	0xae
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.uaword	0xb65
	.uleb128 0xc
	.uaword	0xb38
	.uleb128 0x10
	.string	"_Ifx_SRC_GBCU"
	.byte	0x4
	.byte	0x5
	.uahalf	0x138
	.uaword	0xba6
	.uleb128 0x11
	.string	"SPB"
	.byte	0x5
	.uahalf	0x13a
	.uaword	0x40f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	0xb7f
	.uleb128 0x10
	.string	"_Ifx_SRC_GCAN"
	.byte	0x60
	.byte	0x5
	.uahalf	0x13e
	.uaword	0xbe2
	.uleb128 0x11
	.string	"CAN"
	.byte	0x5
	.uahalf	0x140
	.uaword	0xbf2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"CAN1"
	.byte	0x5
	.uahalf	0x141
	.uaword	0xc07
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x4
	.uaword	0x414
	.uaword	0xbf2
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xbe2
	.uleb128 0x4
	.uaword	0x448
	.uaword	0xc07
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xbf7
	.uleb128 0xc
	.uaword	0xbab
	.uleb128 0x10
	.string	"_Ifx_SRC_GCCU6"
	.byte	0x20
	.byte	0x5
	.uahalf	0x145
	.uaword	0xc3a
	.uleb128 0x11
	.string	"CCU6"
	.byte	0x5
	.uahalf	0x147
	.uaword	0xc4a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x47d
	.uaword	0xc4a
	.uleb128 0x5
	.uaword	0xae
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.uaword	0xc3a
	.uleb128 0xc
	.uaword	0xc11
	.uleb128 0x10
	.string	"_Ifx_SRC_GCERBERUS"
	.byte	0x8
	.byte	0x5
	.uahalf	0x14b
	.uaword	0xc80
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x5
	.uahalf	0x14d
	.uaword	0x504
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	0xc54
	.uleb128 0x10
	.string	"_Ifx_SRC_GCPU"
	.byte	0x20
	.byte	0x5
	.uahalf	0x151
	.uaword	0xcac
	.uleb128 0x11
	.string	"CPU"
	.byte	0x5
	.uahalf	0x153
	.uaword	0xcbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x509
	.uaword	0xcbc
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xcac
	.uleb128 0xc
	.uaword	0xc85
	.uleb128 0x10
	.string	"_Ifx_SRC_GDMA"
	.byte	0x50
	.byte	0x5
	.uahalf	0x157
	.uaword	0xced
	.uleb128 0x11
	.string	"DMA"
	.byte	0x5
	.uahalf	0x159
	.uaword	0xcfd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x53d
	.uaword	0xcfd
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xced
	.uleb128 0xc
	.uaword	0xcc6
	.uleb128 0x10
	.string	"_Ifx_SRC_GEMEM"
	.byte	0x4
	.byte	0x5
	.uahalf	0x15d
	.uaword	0xd30
	.uleb128 0x11
	.string	"EMEM"
	.byte	0x5
	.uahalf	0x15f
	.uaword	0xd40
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x57c
	.uaword	0xd40
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xd30
	.uleb128 0xc
	.uaword	0xd07
	.uleb128 0x10
	.string	"_Ifx_SRC_GERAY"
	.byte	0x50
	.byte	0x5
	.uahalf	0x163
	.uaword	0xd73
	.uleb128 0x11
	.string	"ERAY"
	.byte	0x5
	.uahalf	0x165
	.uaword	0xd83
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x5a0
	.uaword	0xd83
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xd73
	.uleb128 0xc
	.uaword	0xd4a
	.uleb128 0x10
	.string	"_Ifx_SRC_GETH"
	.byte	0x4
	.byte	0x5
	.uahalf	0x169
	.uaword	0xdb4
	.uleb128 0x11
	.string	"ETH"
	.byte	0x5
	.uahalf	0x16b
	.uaword	0xdc4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x620
	.uaword	0xdc4
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xdb4
	.uleb128 0xc
	.uaword	0xd8d
	.uleb128 0x10
	.string	"_Ifx_SRC_GEVR"
	.byte	0x8
	.byte	0x5
	.uahalf	0x16f
	.uaword	0xdf5
	.uleb128 0x11
	.string	"EVR"
	.byte	0x5
	.uahalf	0x171
	.uaword	0xe05
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x643
	.uaword	0xe05
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xdf5
	.uleb128 0xc
	.uaword	0xdce
	.uleb128 0x10
	.string	"_Ifx_SRC_GFFT"
	.byte	0xc
	.byte	0x5
	.uahalf	0x175
	.uaword	0xe36
	.uleb128 0x11
	.string	"FFT"
	.byte	0x5
	.uahalf	0x177
	.uaword	0xe46
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x676
	.uaword	0xe46
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xe36
	.uleb128 0xc
	.uaword	0xe0f
	.uleb128 0x13
	.string	"_Ifx_SRC_GGPSR"
	.uahalf	0x600
	.byte	0x5
	.uahalf	0x17b
	.uaword	0xe7a
	.uleb128 0x11
	.string	"GPSR"
	.byte	0x5
	.uahalf	0x17d
	.uaword	0xe8a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x6b7
	.uaword	0xe8a
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xe7a
	.uleb128 0xc
	.uaword	0xe50
	.uleb128 0x10
	.string	"_Ifx_SRC_GGPT12"
	.byte	0x30
	.byte	0x5
	.uahalf	0x181
	.uaword	0xebf
	.uleb128 0x11
	.string	"GPT12"
	.byte	0x5
	.uahalf	0x183
	.uaword	0xecf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x726
	.uaword	0xecf
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xebf
	.uleb128 0xc
	.uaword	0xe94
	.uleb128 0x13
	.string	"_Ifx_SRC_GGTM"
	.uahalf	0x5c0
	.byte	0x5
	.uahalf	0x187
	.uaword	0xf01
	.uleb128 0x11
	.string	"GTM"
	.byte	0x5
	.uahalf	0x189
	.uaword	0xf11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x79c
	.uaword	0xf11
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xf01
	.uleb128 0xc
	.uaword	0xed9
	.uleb128 0x10
	.string	"_Ifx_SRC_GHSM"
	.byte	0x8
	.byte	0x5
	.uahalf	0x18d
	.uaword	0xf42
	.uleb128 0x11
	.string	"HSM"
	.byte	0x5
	.uahalf	0x18f
	.uaword	0xf52
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x87d
	.uaword	0xf52
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xf42
	.uleb128 0xc
	.uaword	0xf1b
	.uleb128 0x10
	.string	"_Ifx_SRC_GLMU"
	.byte	0x4
	.byte	0x5
	.uahalf	0x193
	.uaword	0xf83
	.uleb128 0x11
	.string	"LMU"
	.byte	0x5
	.uahalf	0x195
	.uaword	0xf93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x8a1
	.uaword	0xf93
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0xf83
	.uleb128 0xc
	.uaword	0xf5c
	.uleb128 0x10
	.string	"_Ifx_SRC_GPMU"
	.byte	0x8
	.byte	0x5
	.uahalf	0x199
	.uaword	0xfc4
	.uleb128 0x11
	.string	"PMU"
	.byte	0x5
	.uahalf	0x19b
	.uaword	0xfd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x8c4
	.uaword	0xfd4
	.uleb128 0x5
	.uaword	0xae
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.uaword	0xfc4
	.uleb128 0xc
	.uaword	0xf9d
	.uleb128 0x10
	.string	"_Ifx_SRC_GQSPI"
	.byte	0x60
	.byte	0x5
	.uahalf	0x19f
	.uaword	0x1007
	.uleb128 0x11
	.string	"QSPI"
	.byte	0x5
	.uahalf	0x1a1
	.uaword	0x1017
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x8e7
	.uaword	0x1017
	.uleb128 0x5
	.uaword	0xae
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.uaword	0x1007
	.uleb128 0xc
	.uaword	0xfde
	.uleb128 0x10
	.string	"_Ifx_SRC_GSCU"
	.byte	0x14
	.byte	0x5
	.uahalf	0x1a5
	.uaword	0x1048
	.uleb128 0x11
	.string	"SCU"
	.byte	0x5
	.uahalf	0x1a7
	.uaword	0x98e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	0x1021
	.uleb128 0x10
	.string	"_Ifx_SRC_GSENT"
	.byte	0x10
	.byte	0x5
	.uahalf	0x1ab
	.uaword	0x1076
	.uleb128 0x11
	.string	"SENT"
	.byte	0x5
	.uahalf	0x1ad
	.uaword	0x1086
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x993
	.uaword	0x1086
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0x1076
	.uleb128 0xc
	.uaword	0x104d
	.uleb128 0x10
	.string	"_Ifx_SRC_GSMU"
	.byte	0xc
	.byte	0x5
	.uahalf	0x1b1
	.uaword	0x10b7
	.uleb128 0x11
	.string	"SMU"
	.byte	0x5
	.uahalf	0x1b3
	.uaword	0x10c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x9b7
	.uaword	0x10c7
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0x10b7
	.uleb128 0xc
	.uaword	0x1090
	.uleb128 0x10
	.string	"_Ifx_SRC_GSTM"
	.byte	0x60
	.byte	0x5
	.uahalf	0x1b7
	.uaword	0x10f8
	.uleb128 0x11
	.string	"STM"
	.byte	0x5
	.uahalf	0x1b9
	.uaword	0x1108
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.uaword	0x9ec
	.uaword	0x1108
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0x10f8
	.uleb128 0xc
	.uaword	0x10d1
	.uleb128 0x13
	.string	"_Ifx_SRC_GVADC"
	.uahalf	0x260
	.byte	0x5
	.uahalf	0x1bd
	.uaword	0x115f
	.uleb128 0x11
	.string	"G"
	.byte	0x5
	.uahalf	0x1bf
	.uaword	0x116f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_40"
	.byte	0x5
	.uahalf	0x1c0
	.uaword	0x1174
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.string	"CG"
	.byte	0x5
	.uahalf	0x1c1
	.uaword	0x1194
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.byte	0
	.uleb128 0x4
	.uaword	0xab7
	.uaword	0x116f
	.uleb128 0x5
	.uaword	0xae
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.uaword	0x115f
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x1184
	.uleb128 0x5
	.uaword	0xae
	.byte	0xdf
	.byte	0
	.uleb128 0x4
	.uaword	0xa40
	.uaword	0x1194
	.uleb128 0x5
	.uaword	0xae
	.byte	0
	.byte	0
	.uleb128 0xc
	.uaword	0x1184
	.uleb128 0xc
	.uaword	0x1112
	.uleb128 0x10
	.string	"_Ifx_SRC_GXBAR"
	.byte	0x4
	.byte	0x5
	.uahalf	0x1c5
	.uaword	0x11c7
	.uleb128 0x11
	.string	"XBAR"
	.byte	0x5
	.uahalf	0x1c7
	.uaword	0xb33
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	0x119e
	.uleb128 0x13
	.string	"_Ifx_SRC"
	.uahalf	0x2000
	.byte	0x5
	.uahalf	0x1d5
	.uaword	0x1543
	.uleb128 0x11
	.string	"CPU"
	.byte	0x5
	.uahalf	0x1d7
	.uaword	0xcc1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"EMEM"
	.byte	0x5
	.uahalf	0x1d8
	.uaword	0xd45
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.uaword	.LASF8
	.byte	0x5
	.uahalf	0x1d9
	.uaword	0x1e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"BCU"
	.byte	0x5
	.uahalf	0x1da
	.uaword	0xba6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.string	"reserved_44"
	.byte	0x5
	.uahalf	0x1db
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.string	"XBAR"
	.byte	0x5
	.uahalf	0x1dc
	.uaword	0x11c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"reserved_4C"
	.byte	0x5
	.uahalf	0x1dd
	.uaword	0x1c8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.uaword	.LASF7
	.byte	0x5
	.uahalf	0x1de
	.uaword	0xc80
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.string	"reserved_58"
	.byte	0x5
	.uahalf	0x1df
	.uaword	0x208
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.string	"ASCLIN"
	.byte	0x5
	.uahalf	0x1e0
	.uaword	0xb7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.string	"reserved_98"
	.byte	0x5
	.uahalf	0x1e1
	.uaword	0x218
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.string	"QSPI"
	.byte	0x5
	.uahalf	0x1e2
	.uaword	0x101c
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.string	"reserved_1F0"
	.byte	0x5
	.uahalf	0x1e3
	.uaword	0x1543
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f0
	.uleb128 0x11
	.string	"SENT"
	.byte	0x5
	.uahalf	0x1e4
	.uaword	0x108b
	.byte	0x3
	.byte	0x23
	.uleb128 0x350
	.uleb128 0x11
	.string	"reserved_360"
	.byte	0x5
	.uahalf	0x1e5
	.uaword	0x1554
	.byte	0x3
	.byte	0x23
	.uleb128 0x360
	.uleb128 0x11
	.string	"CCU6"
	.byte	0x5
	.uahalf	0x1e6
	.uaword	0xc4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x420
	.uleb128 0x11
	.string	"reserved_440"
	.byte	0x5
	.uahalf	0x1e7
	.uaword	0x1564
	.byte	0x3
	.byte	0x23
	.uleb128 0x440
	.uleb128 0x11
	.string	"GPT12"
	.byte	0x5
	.uahalf	0x1e8
	.uaword	0xed4
	.byte	0x3
	.byte	0x23
	.uleb128 0x460
	.uleb128 0x11
	.string	"STM"
	.byte	0x5
	.uahalf	0x1e9
	.uaword	0x110d
	.byte	0x3
	.byte	0x23
	.uleb128 0x490
	.uleb128 0x11
	.string	"DMA"
	.byte	0x5
	.uahalf	0x1ea
	.uaword	0xd02
	.byte	0x3
	.byte	0x23
	.uleb128 0x4f0
	.uleb128 0x11
	.string	"reserved_540"
	.byte	0x5
	.uahalf	0x1eb
	.uaword	0x1574
	.byte	0x3
	.byte	0x23
	.uleb128 0x540
	.uleb128 0x11
	.string	"ETH"
	.byte	0x5
	.uahalf	0x1ec
	.uaword	0xdc9
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f0
	.uleb128 0x11
	.string	"reserved_8F4"
	.byte	0x5
	.uahalf	0x1ed
	.uaword	0x1f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x8f4
	.uleb128 0x11
	.string	"CAN"
	.byte	0x5
	.uahalf	0x1ee
	.uaword	0xc0c
	.byte	0x3
	.byte	0x23
	.uleb128 0x900
	.uleb128 0x11
	.string	"reserved_960"
	.byte	0x5
	.uahalf	0x1ef
	.uaword	0x1564
	.byte	0x3
	.byte	0x23
	.uleb128 0x960
	.uleb128 0x11
	.string	"VADC"
	.byte	0x5
	.uahalf	0x1f0
	.uaword	0x1199
	.byte	0x3
	.byte	0x23
	.uleb128 0x980
	.uleb128 0x11
	.string	"ERAY"
	.byte	0x5
	.uahalf	0x1f1
	.uaword	0xd88
	.byte	0x3
	.byte	0x23
	.uleb128 0xbe0
	.uleb128 0x11
	.string	"PMU"
	.byte	0x5
	.uahalf	0x1f2
	.uaword	0xfd9
	.byte	0x3
	.byte	0x23
	.uleb128 0xc30
	.uleb128 0x11
	.string	"reserved_C38"
	.byte	0x5
	.uahalf	0x1f3
	.uaword	0x1585
	.byte	0x3
	.byte	0x23
	.uleb128 0xc38
	.uleb128 0x11
	.string	"HSM"
	.byte	0x5
	.uahalf	0x1f4
	.uaword	0xf57
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc0
	.uleb128 0x11
	.string	"reserved_CC8"
	.byte	0x5
	.uahalf	0x1f5
	.uaword	0x1b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc8
	.uleb128 0x11
	.string	"SCU"
	.byte	0x5
	.uahalf	0x1f6
	.uaword	0x1048
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd0
	.uleb128 0x11
	.string	"reserved_CE4"
	.byte	0x5
	.uahalf	0x1f7
	.uaword	0x1595
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.uleb128 0x11
	.string	"SMU"
	.byte	0x5
	.uahalf	0x1f8
	.uaword	0x10cc
	.byte	0x3
	.byte	0x23
	.uleb128 0xd10
	.uleb128 0x11
	.string	"reserved_D1C"
	.byte	0x5
	.uahalf	0x1f9
	.uaword	0x15a5
	.byte	0x3
	.byte	0x23
	.uleb128 0xd1c
	.uleb128 0x11
	.string	"LMU"
	.byte	0x5
	.uahalf	0x1fa
	.uaword	0xf98
	.byte	0x3
	.byte	0x23
	.uleb128 0xde0
	.uleb128 0x11
	.string	"reserved_DE4"
	.byte	0x5
	.uahalf	0x1fb
	.uaword	0x15b5
	.byte	0x3
	.byte	0x23
	.uleb128 0xde4
	.uleb128 0x11
	.string	"EVR"
	.byte	0x5
	.uahalf	0x1fc
	.uaword	0xe0a
	.byte	0x3
	.byte	0x23
	.uleb128 0xfb0
	.uleb128 0x11
	.string	"reserved_FB8"
	.byte	0x5
	.uahalf	0x1fd
	.uaword	0x1b8
	.byte	0x3
	.byte	0x23
	.uleb128 0xfb8
	.uleb128 0x11
	.string	"FFT"
	.byte	0x5
	.uahalf	0x1fe
	.uaword	0xe4b
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc0
	.uleb128 0x11
	.string	"reserved_FCC"
	.byte	0x5
	.uahalf	0x1ff
	.uaword	0x15c6
	.byte	0x3
	.byte	0x23
	.uleb128 0xfcc
	.uleb128 0x11
	.string	"GPSR"
	.byte	0x5
	.uahalf	0x200
	.uaword	0xe8f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1000
	.uleb128 0x11
	.string	"GTM"
	.byte	0x5
	.uahalf	0x201
	.uaword	0xf16
	.byte	0x3
	.byte	0x23
	.uleb128 0x1600
	.uleb128 0x11
	.string	"reserved_1BC0"
	.byte	0x5
	.uahalf	0x202
	.uaword	0x15d6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc0
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x1554
	.uleb128 0xf
	.uaword	0xae
	.uahalf	0x15f
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x1564
	.uleb128 0x5
	.uaword	0xae
	.byte	0xbf
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x1574
	.uleb128 0x5
	.uaword	0xae
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x1585
	.uleb128 0xf
	.uaword	0xae
	.uahalf	0x3af
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x1595
	.uleb128 0x5
	.uaword	0xae
	.byte	0x87
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x15a5
	.uleb128 0x5
	.uaword	0xae
	.byte	0x2b
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x15b5
	.uleb128 0x5
	.uaword	0xae
	.byte	0xc3
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x15c6
	.uleb128 0xf
	.uaword	0xae
	.uahalf	0x1cb
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x15d6
	.uleb128 0x5
	.uaword	0xae
	.byte	0x33
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x15e7
	.uleb128 0xf
	.uaword	0xae
	.uahalf	0x43f
	.byte	0
	.uleb128 0x14
	.string	"Ifx_SRC"
	.byte	0x5
	.uahalf	0x203
	.uaword	0x15f7
	.uleb128 0xc
	.uaword	0x11cc
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x1853
	.uleb128 0x7
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x15fc
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x18a3
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x6
	.byte	0x54
	.uaword	0x1a8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x1871
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_BITCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x1977
	.uleb128 0x7
	.string	"PRESCALER"
	.byte	0x6
	.byte	0x5a
	.uaword	0x1a8
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x5b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"OVERSAMPLING"
	.byte	0x6
	.byte	0x5c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_20"
	.byte	0x6
	.byte	0x5d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SAMPLEPOINT"
	.byte	0x6
	.byte	0x5e
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.byte	0x5f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SM"
	.byte	0x6
	.byte	0x60
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BITCON_Bits"
	.byte	0x6
	.byte	0x61
	.uaword	0x18c1
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_BRD_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x64
	.uaword	0x1a0a
	.uleb128 0x7
	.string	"LOWERLIMIT"
	.byte	0x6
	.byte	0x66
	.uaword	0x1a8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"UPPERLIMIT"
	.byte	0x6
	.byte	0x67
	.uaword	0x1a8
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"MEASURED"
	.byte	0x6
	.byte	0x68
	.uaword	0x1a8
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.byte	0x69
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRD_Bits"
	.byte	0x6
	.byte	0x6a
	.uaword	0x1995
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_BRG_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6d
	.uaword	0x1a95
	.uleb128 0x7
	.string	"DENOMINATOR"
	.byte	0x6
	.byte	0x6f
	.uaword	0x1a8
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x70
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"NUMERATOR"
	.byte	0x6
	.byte	0x71
	.uaword	0x1a8
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.byte	0x72
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRG_Bits"
	.byte	0x6
	.byte	0x73
	.uaword	0x1a25
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x76
	.uaword	0x1b26
	.uleb128 0x7
	.string	"DISR"
	.byte	0x6
	.byte	0x78
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"DISS"
	.byte	0x6
	.byte	0x79
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x6
	.byte	0x7a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EDIS"
	.byte	0x6
	.byte	0x7b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0x7c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CLC_Bits"
	.byte	0x6
	.byte	0x7d
	.uaword	0x1ab0
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_CSR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x80
	.uaword	0x1b9c
	.uleb128 0x7
	.string	"CLKSEL"
	.byte	0x6
	.byte	0x82
	.uaword	0x1a8
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_5"
	.byte	0x6
	.byte	0x83
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CON"
	.byte	0x6
	.byte	0x84
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CSR_Bits"
	.byte	0x6
	.byte	0x85
	.uaword	0x1b41
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_DATCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x88
	.uaword	0x1c55
	.uleb128 0x7
	.string	"DATLEN"
	.byte	0x6
	.byte	0x8a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0x8b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"HO"
	.byte	0x6
	.byte	0x8c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RM"
	.byte	0x6
	.byte	0x8d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CSM"
	.byte	0x6
	.byte	0x8e
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RESPONSE"
	.byte	0x6
	.byte	0x8f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0x6
	.byte	0x90
	.uaword	0x1a8
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_DATCON_Bits"
	.byte	0x6
	.byte	0x91
	.uaword	0x1bb7
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x94
	.uaword	0x1e53
	.uleb128 0x7
	.string	"TH"
	.byte	0x6
	.byte	0x96
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TR"
	.byte	0x6
	.byte	0x97
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RH"
	.byte	0x6
	.byte	0x98
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RR"
	.byte	0x6
	.byte	0x99
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0x9a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FED"
	.byte	0x6
	.byte	0x9b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RED"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x6
	.byte	0x9d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TWRQ"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"THRQ"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TRRQ"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PE"
	.byte	0x6
	.byte	0xa1
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TC"
	.byte	0x6
	.byte	0xa2
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FE"
	.byte	0x6
	.byte	0xa3
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"HT"
	.byte	0x6
	.byte	0xa4
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RT"
	.byte	0x6
	.byte	0xa5
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BD"
	.byte	0x6
	.byte	0xa6
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LP"
	.byte	0x6
	.byte	0xa7
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LA"
	.byte	0x6
	.byte	0xa8
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LC"
	.byte	0x6
	.byte	0xa9
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CE"
	.byte	0x6
	.byte	0xaa
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RFO"
	.byte	0x6
	.byte	0xab
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RFU"
	.byte	0x6
	.byte	0xac
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RFL"
	.byte	0x6
	.byte	0xad
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x6
	.byte	0xae
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TFO"
	.byte	0x6
	.byte	0xaf
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TFL"
	.byte	0x6
	.byte	0xb0
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x6
	.byte	0xb1
	.uaword	0x1c73
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb4
	.uaword	0x206d
	.uleb128 0x7
	.string	"THC"
	.byte	0x6
	.byte	0xb6
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TRC"
	.byte	0x6
	.byte	0xb7
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RHC"
	.byte	0x6
	.byte	0xb8
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RRC"
	.byte	0x6
	.byte	0xb9
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xba
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FEDC"
	.byte	0x6
	.byte	0xbb
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"REDC"
	.byte	0x6
	.byte	0xbc
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x6
	.byte	0xbd
	.uaword	0x1a8
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TWRQC"
	.byte	0x6
	.byte	0xbe
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"THRQC"
	.byte	0x6
	.byte	0xbf
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TRRQC"
	.byte	0x6
	.byte	0xc0
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PEC"
	.byte	0x6
	.byte	0xc1
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TCC"
	.byte	0x6
	.byte	0xc2
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FEC"
	.byte	0x6
	.byte	0xc3
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"HTC"
	.byte	0x6
	.byte	0xc4
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RTC"
	.byte	0x6
	.byte	0xc5
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BDC"
	.byte	0x6
	.byte	0xc6
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LPC"
	.byte	0x6
	.byte	0xc7
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LAC"
	.byte	0x6
	.byte	0xc8
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCC"
	.byte	0x6
	.byte	0xc9
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CEC"
	.byte	0x6
	.byte	0xca
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RFOC"
	.byte	0x6
	.byte	0xcb
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RFUC"
	.byte	0x6
	.byte	0xcc
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RFLC"
	.byte	0x6
	.byte	0xcd
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x6
	.byte	0xce
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TFOC"
	.byte	0x6
	.byte	0xcf
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TFLC"
	.byte	0x6
	.byte	0xd0
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x6
	.byte	0xd1
	.uaword	0x1e70
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd4
	.uaword	0x2254
	.uleb128 0x7
	.string	"THE"
	.byte	0x6
	.byte	0xd6
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TRE"
	.byte	0x6
	.byte	0xd7
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RHE"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RRE"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xda
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FEDE"
	.byte	0x6
	.byte	0xdb
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"REDE"
	.byte	0x6
	.byte	0xdc
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x6
	.byte	0xdd
	.uaword	0x1a8
	.byte	0x4
	.byte	0x9
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PEE"
	.byte	0x6
	.byte	0xde
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TCE"
	.byte	0x6
	.byte	0xdf
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FEE"
	.byte	0x6
	.byte	0xe0
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"HTE"
	.byte	0x6
	.byte	0xe1
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RTE"
	.byte	0x6
	.byte	0xe2
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BDE"
	.byte	0x6
	.byte	0xe3
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LPE"
	.byte	0x6
	.byte	0xe4
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ABE"
	.byte	0x6
	.byte	0xe5
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LCE"
	.byte	0x6
	.byte	0xe6
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CEE"
	.byte	0x6
	.byte	0xe7
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RFOE"
	.byte	0x6
	.byte	0xe8
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RFUE"
	.byte	0x6
	.byte	0xe9
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RFLE"
	.byte	0x6
	.byte	0xea
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x6
	.byte	0xeb
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TFOE"
	.byte	0x6
	.byte	0xec
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TFLE"
	.byte	0x6
	.byte	0xed
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x6
	.byte	0xee
	.uaword	0x208f
	.uleb128 0x6
	.string	"_Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf1
	.uaword	0x2480
	.uleb128 0x7
	.string	"THS"
	.byte	0x6
	.byte	0xf3
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TRS"
	.byte	0x6
	.byte	0xf4
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RHS"
	.byte	0x6
	.byte	0xf5
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"RRS"
	.byte	0x6
	.byte	0xf6
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xf7
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"FEDS"
	.byte	0x6
	.byte	0xf8
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"REDS"
	.byte	0x6
	.byte	0xf9
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x6
	.byte	0xfa
	.uaword	0x1a8
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TWRQS"
	.byte	0x6
	.byte	0xfb
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"THRQS"
	.byte	0x6
	.byte	0xfc
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TRRQS"
	.byte	0x6
	.byte	0xfd
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PES"
	.byte	0x6
	.byte	0xfe
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TCS"
	.byte	0x6
	.byte	0xff
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FES"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"HTS"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RTS"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BDS"
	.byte	0x6
	.uahalf	0x103
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LPS"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LAS"
	.byte	0x6
	.uahalf	0x105
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LCS"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CES"
	.byte	0x6
	.uahalf	0x107
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RFOS"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RFUS"
	.byte	0x6
	.uahalf	0x109
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RFLS"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TFOS"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TFLS"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0x2277
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x111
	.uaword	0x2597
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x113
	.uaword	0x1a8
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"IDLE"
	.byte	0x6
	.uahalf	0x114
	.uaword	0x1a8
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"STOP"
	.byte	0x6
	.uahalf	0x115
	.uaword	0x1a8
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LEAD"
	.byte	0x6
	.uahalf	0x116
	.uaword	0x1a8
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"reserved_15"
	.byte	0x6
	.uahalf	0x117
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODE"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x1a8
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x119
	.uaword	0x1a8
	.byte	0x4
	.byte	0xa
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MSB"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CEN"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PEN"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ODD"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x24a1
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_ID_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x121
	.uaword	0x2619
	.uleb128 0x15
	.string	"MODREV"
	.byte	0x6
	.uahalf	0x123
	.uaword	0x1a8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODTYPE"
	.byte	0x6
	.uahalf	0x124
	.uaword	0x1a8
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MODNUMBER"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x1a8
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_ID_Bits"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x25b8
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_IOCR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x129
	.uaword	0x274d
	.uleb128 0x15
	.string	"ALTI"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"reserved_3"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"DEPTH"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x6
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x1a8
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CTS"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1a8
	.byte	0x4
	.byte	0x7
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RCPOL"
	.byte	0x6
	.uahalf	0x131
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CPOL"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SPOL"
	.byte	0x6
	.uahalf	0x133
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"LB"
	.byte	0x6
	.uahalf	0x134
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CTSEN"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RXM"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TXM"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_IOCR_Bits"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x2634
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x27c5
	.uleb128 0x15
	.string	"RST"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RSTSTAT"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_KRST0_Bits"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x276a
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x143
	.uaword	0x2828
	.uleb128 0x15
	.string	"RST"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_KRST1_Bits"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x27e3
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x288d
	.uleb128 0x15
	.string	"CLR"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x14d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x2846
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x151
	.uaword	0x2900
	.uleb128 0x15
	.string	"BREAK"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x1a8
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"reserved_6"
	.byte	0x6
	.uahalf	0x154
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x28ad
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x158
	.uaword	0x29c4
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSI"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"CSEN"
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"MS"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ABD"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x160
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x6
	.uahalf	0x161
	.uaword	0x2923
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x164
	.uaword	0x2a31
	.uleb128 0x15
	.string	"HEADER"
	.byte	0x6
	.uahalf	0x166
	.uaword	0x1a8
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x167
	.uaword	0x1a8
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x6
	.uahalf	0x168
	.uaword	0x29e4
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_OCS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x2ada
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SUS"
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SUS_P"
	.byte	0x6
	.uahalf	0x16f
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SUSSTA"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"reserved_30"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x1a8
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_OCS_Bits"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x2a54
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x175
	.uaword	0x2b2b
	.uleb128 0x15
	.string	"DATA"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x1a8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x6
	.uahalf	0x178
	.uaword	0x2af6
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x2b80
	.uleb128 0x15
	.string	"DATA"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x6
	.uahalf	0x17e
	.uaword	0x2b4a
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x181
	.uaword	0x2c6b
	.uleb128 0x15
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ENI"
	.byte	0x6
	.uahalf	0x184
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x185
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OUTW"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x1a8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF14
	.byte	0x6
	.uahalf	0x187
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x188
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILL"
	.byte	0x6
	.uahalf	0x189
	.uaword	0x1a8
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1a8
	.byte	0x4
	.byte	0xa
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BUF"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x2ba0
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x2cc2
	.uleb128 0x15
	.string	"DATA"
	.byte	0x6
	.uahalf	0x191
	.uaword	0x1a8
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x6
	.uahalf	0x192
	.uaword	0x2c8d
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x195
	.uaword	0x2d99
	.uleb128 0x15
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x197
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"ENO"
	.byte	0x6
	.uahalf	0x198
	.uaword	0x1a8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x199
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"INW"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x1a8
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF14
	.byte	0x6
	.uahalf	0x19b
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x1a8
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"FILL"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x1a8
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x1a8
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x2ce1
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x2de3
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1853
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_ACCEN0"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x2dbb
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x2e25
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1b1
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1b3
	.uaword	0x18a3
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_ACCEN1"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0x2dfd
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x2e67
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1b9
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x1977
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_BITCON"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x2e3f
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x2ea9
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0x1a0a
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_BRD"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0x2e81
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x2ee8
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1cb
	.uaword	0x1a95
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_BRG"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x2ec0
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x2f27
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1d1
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x1b26
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_CLC"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x2eff
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x2f66
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x1b9c
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_CSR"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0x2f3e
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1df
	.uaword	0x2fa5
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x1c55
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_DATCON"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0x2f7d
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x2fe7
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x1e53
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_FLAGS"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0x2fbf
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x3028
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0x206d
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0x3000
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x306e
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0x2254
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_FLAGSENABLE"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x3046
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x30b5
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x202
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x203
	.uaword	0x2480
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_FLAGSSET"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x308d
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x207
	.uaword	0x30f9
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x2597
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_FRAMECON"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x30d1
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x313d
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x212
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x2619
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_ID"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x3115
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x217
	.uaword	0x317b
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x21a
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x21b
	.uaword	0x274d
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_IOCR"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x3153
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x31bb
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x221
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x222
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x223
	.uaword	0x27c5
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_KRST0"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x3193
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x227
	.uaword	0x31fc
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x229
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x2828
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_KRST1"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0x31d4
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x323d
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x231
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x232
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x233
	.uaword	0x288d
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_KRSTCLR"
	.byte	0x6
	.uahalf	0x234
	.uaword	0x3215
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x237
	.uaword	0x3280
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x23a
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0x2900
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_LIN_BTIMER"
	.byte	0x6
	.uahalf	0x23c
	.uaword	0x3258
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x23f
	.uaword	0x32c6
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x241
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x242
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x29c4
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_LIN_CON"
	.byte	0x6
	.uahalf	0x244
	.uaword	0x329e
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x247
	.uaword	0x3309
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x249
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x24a
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x24b
	.uaword	0x2a31
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_LIN_HTIMER"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x32e1
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x24f
	.uaword	0x334f
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x251
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x252
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x253
	.uaword	0x2ada
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_OCS"
	.byte	0x6
	.uahalf	0x254
	.uaword	0x3327
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x257
	.uaword	0x338e
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x259
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x25a
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x25b
	.uaword	0x2b2b
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_RXDATA"
	.byte	0x6
	.uahalf	0x25c
	.uaword	0x3366
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x25f
	.uaword	0x33d0
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x262
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x263
	.uaword	0x2b80
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_RXDATAD"
	.byte	0x6
	.uahalf	0x264
	.uaword	0x33a8
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x267
	.uaword	0x3413
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x269
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x26a
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x2c6b
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_RXFIFOCON"
	.byte	0x6
	.uahalf	0x26c
	.uaword	0x33eb
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x26f
	.uaword	0x3458
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x271
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x272
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x273
	.uaword	0x2cc2
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_TXDATA"
	.byte	0x6
	.uahalf	0x274
	.uaword	0x3430
	.uleb128 0x17
	.byte	0x4
	.byte	0x6
	.uahalf	0x277
	.uaword	0x349a
	.uleb128 0x18
	.string	"U"
	.byte	0x6
	.uahalf	0x279
	.uaword	0x1a8
	.uleb128 0x18
	.string	"I"
	.byte	0x6
	.uahalf	0x27a
	.uaword	0xc3
	.uleb128 0x18
	.string	"B"
	.byte	0x6
	.uahalf	0x27b
	.uaword	0x2d99
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN_TXFIFOCON"
	.byte	0x6
	.uahalf	0x27c
	.uaword	0x3472
	.uleb128 0x10
	.string	"_Ifx_ASCLIN_LIN"
	.byte	0xc
	.byte	0x6
	.uahalf	0x287
	.uaword	0x3504
	.uleb128 0x11
	.string	"CON"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x32c6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BTIMER"
	.byte	0x6
	.uahalf	0x28a
	.uaword	0x3280
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"HTIMER"
	.byte	0x6
	.uahalf	0x28b
	.uaword	0x3309
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.uaword	0x34b7
	.uleb128 0x13
	.string	"_Ifx_ASCLIN"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x299
	.uaword	0x36f9
	.uleb128 0x11
	.string	"CLC"
	.byte	0x6
	.uahalf	0x29b
	.uaword	0x2f27
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IOCR"
	.byte	0x6
	.uahalf	0x29c
	.uaword	0x317b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"ID"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x313d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"TXFIFOCON"
	.byte	0x6
	.uahalf	0x29e
	.uaword	0x349a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.string	"RXFIFOCON"
	.byte	0x6
	.uahalf	0x29f
	.uaword	0x3413
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.string	"BITCON"
	.byte	0x6
	.uahalf	0x2a0
	.uaword	0x2e67
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.string	"FRAMECON"
	.byte	0x6
	.uahalf	0x2a1
	.uaword	0x30f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.string	"DATCON"
	.byte	0x6
	.uahalf	0x2a2
	.uaword	0x2fa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.string	"BRG"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x2ee8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.string	"BRD"
	.byte	0x6
	.uahalf	0x2a4
	.uaword	0x2ea9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.string	"LIN"
	.byte	0x6
	.uahalf	0x2a5
	.uaword	0x3504
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.string	"FLAGS"
	.byte	0x6
	.uahalf	0x2a6
	.uaword	0x2fe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.string	"FLAGSSET"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x30b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.string	"FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x2a8
	.uaword	0x3028
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.string	"FLAGSENABLE"
	.byte	0x6
	.uahalf	0x2a9
	.uaword	0x306e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.string	"TXDATA"
	.byte	0x6
	.uahalf	0x2aa
	.uaword	0x3458
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.string	"RXDATA"
	.byte	0x6
	.uahalf	0x2ab
	.uaword	0x338e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.string	"CSR"
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x2f66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.string	"RXDATAD"
	.byte	0x6
	.uahalf	0x2ad
	.uaword	0x33d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.string	"reserved_54"
	.byte	0x6
	.uahalf	0x2ae
	.uaword	0x36f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.string	"OCS"
	.byte	0x6
	.uahalf	0x2af
	.uaword	0x334f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x2b0
	.uaword	0x323d
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x2b1
	.uaword	0x31fc
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x11
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x31bb
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x11
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x2b3
	.uaword	0x2e25
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x11
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x2b4
	.uaword	0x2de3
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0x4
	.uaword	0xe6
	.uaword	0x3709
	.uleb128 0x5
	.uaword	0xae
	.byte	0x93
	.byte	0
	.uleb128 0x14
	.string	"Ifx_ASCLIN"
	.byte	0x6
	.uahalf	0x2b5
	.uaword	0x371c
	.uleb128 0xc
	.uaword	0x3509
	.uleb128 0x19
	.byte	0x4
	.uaword	0x371c
	.uleb128 0x1a
	.byte	0x4
	.byte	0x2
	.byte	0x5b
	.uaword	0x380b
	.uleb128 0x1b
	.string	"IfxAsclin_ClockSource_noClock"
	.sleb128 0
	.uleb128 0x1b
	.string	"IfxAsclin_ClockSource_kernelClock"
	.sleb128 1
	.uleb128 0x1b
	.string	"IfxAsclin_ClockSource_oscillatorClock"
	.sleb128 2
	.uleb128 0x1b
	.string	"IfxAsclin_ClockSource_flexRayClock"
	.sleb128 4
	.uleb128 0x1b
	.string	"IfxAsclin_ClockSource_ascFastClock"
	.sleb128 8
	.uleb128 0x1b
	.string	"IfxAsclin_ClockSource_ascSlowClock"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_ClockSource"
	.byte	0x2
	.byte	0x62
	.uaword	0x3727
	.uleb128 0x1a
	.byte	0x4
	.byte	0x2
	.byte	0xd1
	.uaword	0x39e5
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_4"
	.sleb128 3
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_5"
	.sleb128 4
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_6"
	.sleb128 5
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_7"
	.sleb128 6
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_8"
	.sleb128 7
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_9"
	.sleb128 8
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_10"
	.sleb128 9
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_11"
	.sleb128 10
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_12"
	.sleb128 11
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_13"
	.sleb128 12
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_14"
	.sleb128 13
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_15"
	.sleb128 14
	.uleb128 0x1b
	.string	"IfxAsclin_OversamplingFactor_16"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_OversamplingFactor"
	.byte	0x2
	.byte	0xdf
	.uaword	0x3828
	.uleb128 0x1c
	.byte	0x4
	.byte	0x2
	.uahalf	0x131
	.uaword	0x3c17
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_1"
	.sleb128 1
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_2"
	.sleb128 2
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_3"
	.sleb128 3
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_4"
	.sleb128 4
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_5"
	.sleb128 5
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_6"
	.sleb128 6
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_7"
	.sleb128 7
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_8"
	.sleb128 8
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_9"
	.sleb128 9
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_10"
	.sleb128 10
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_11"
	.sleb128 11
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_12"
	.sleb128 12
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_13"
	.sleb128 13
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_14"
	.sleb128 14
	.uleb128 0x1b
	.string	"IfxAsclin_SamplePointPosition_15"
	.sleb128 15
	.byte	0
	.uleb128 0x14
	.string	"IfxAsclin_SamplePointPosition"
	.byte	0x2
	.uahalf	0x141
	.uaword	0x3a09
	.uleb128 0x1c
	.byte	0x4
	.byte	0x2
	.uahalf	0x147
	.uaword	0x3c85
	.uleb128 0x1b
	.string	"IfxAsclin_SamplesPerBit_one"
	.sleb128 0
	.uleb128 0x1b
	.string	"IfxAsclin_SamplesPerBit_three"
	.sleb128 1
	.byte	0
	.uleb128 0x14
	.string	"IfxAsclin_SamplesPerBit"
	.byte	0x2
	.uahalf	0x14a
	.uaword	0x3c3d
	.uleb128 0x1d
	.string	"IfxAsclin_enableParityErrorFlag"
	.byte	0x2
	.uahalf	0x6e0
	.byte	0x1
	.byte	0x3
	.uaword	0x3ceb
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x6e0
	.uaword	0x3721
	.uleb128 0x1f
	.string	"enable"
	.byte	0x2
	.uahalf	0x6e0
	.uaword	0x166
	.byte	0
	.uleb128 0x1d
	.string	"IfxAsclin_enableRxFifoOverflowFlag"
	.byte	0x2
	.uahalf	0x6fe
	.byte	0x1
	.byte	0x3
	.uaword	0x3d34
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x6fe
	.uaword	0x3721
	.uleb128 0x1f
	.string	"enable"
	.byte	0x2
	.uahalf	0x6fe
	.uaword	0x166
	.byte	0
	.uleb128 0x1d
	.string	"IfxAsclin_setEnableModuleRequest"
	.byte	0x2
	.uahalf	0x86d
	.byte	0x1
	.byte	0x3
	.uaword	0x3d6c
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x86d
	.uaword	0x3721
	.byte	0
	.uleb128 0x20
	.string	"IfxAsclin_getClockSource"
	.byte	0x2
	.uahalf	0x74c
	.byte	0x1
	.uaword	0xd9
	.byte	0x3
	.uaword	0x3da0
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x74c
	.uaword	0x3721
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"IfxAsclin_getIndex"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	0x128
	.byte	0x1
	.uaword	0x3e0c
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x1
	.byte	0x52
	.uaword	0x3721
	.uleb128 0x23
	.string	"base"
	.byte	0x1
	.byte	0x54
	.uaword	0x136
	.uleb128 0x23
	.string	"singleDistance"
	.byte	0x1
	.byte	0x55
	.uaword	0x136
	.uleb128 0x23
	.string	"distance"
	.byte	0x1
	.byte	0x56
	.uaword	0x136
	.uleb128 0x23
	.string	"index"
	.byte	0x1
	.byte	0x57
	.uaword	0x136
	.byte	0
	.uleb128 0x20
	.string	"IfxAsclin_getClockStatus"
	.byte	0x2
	.uahalf	0x752
	.byte	0x1
	.uaword	0x166
	.byte	0x3
	.uaword	0x3e40
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x752
	.uaword	0x3721
	.byte	0
	.uleb128 0x24
	.string	"__maxu"
	.byte	0x3
	.byte	0x6f
	.byte	0x1
	.uaword	0x136
	.byte	0x3
	.uaword	0x3e72
	.uleb128 0x25
	.string	"a"
	.byte	0x3
	.byte	0x6f
	.uaword	0x136
	.uleb128 0x25
	.string	"b"
	.byte	0x3
	.byte	0x6f
	.uaword	0x136
	.uleb128 0x23
	.string	"res"
	.byte	0x3
	.byte	0x71
	.uaword	0x136
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxAsclin_setClockSource"
	.byte	0x1
	.uahalf	0x10b
	.byte	0x1
	.byte	0x1
	.uaword	0x3eaf
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x3721
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x380b
	.byte	0
	.uleb128 0x1d
	.string	"IfxAsclin_setPrescaler"
	.byte	0x2
	.uahalf	0x8cd
	.byte	0x1
	.byte	0x3
	.uaword	0x3ee9
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8cd
	.uaword	0x3721
	.uleb128 0x1e
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x8cd
	.uaword	0x104
	.byte	0
	.uleb128 0x1d
	.string	"IfxAsclin_setNumerator"
	.byte	0x2
	.uahalf	0x8bb
	.byte	0x1
	.byte	0x3
	.uaword	0x3f23
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8bb
	.uaword	0x3721
	.uleb128 0x1e
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x8bb
	.uaword	0x104
	.byte	0
	.uleb128 0x1d
	.string	"IfxAsclin_setDenominator"
	.byte	0x2
	.uahalf	0x861
	.byte	0x1
	.byte	0x3
	.uaword	0x3f5f
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x861
	.uaword	0x3721
	.uleb128 0x1e
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x861
	.uaword	0x104
	.byte	0
	.uleb128 0x1d
	.string	"IfxAsclin_setOversampling"
	.byte	0x2
	.uahalf	0x8c1
	.byte	0x1
	.byte	0x3
	.uaword	0x3fa2
	.uleb128 0x1e
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8c1
	.uaword	0x3721
	.uleb128 0x1f
	.string	"ovsFactor"
	.byte	0x2
	.uahalf	0x8c1
	.uaword	0x39e5
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"IfxAsclin_enableAscErrorFlags"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	.LFB362
	.uaword	.LFE362
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x404c
	.uleb128 0x28
	.uaword	.LASF15
	.byte	0x1
	.byte	0x23
	.uaword	0x3721
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.string	"parEnable"
	.byte	0x1
	.byte	0x23
	.uaword	0x166
	.uaword	.LLST0
	.uleb128 0x29
	.string	"rfoEnable"
	.byte	0x1
	.byte	0x23
	.uaword	0x166
	.uaword	.LLST1
	.uleb128 0x2a
	.uaword	0x3ca5
	.uaword	.LBB60
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x25
	.uaword	0x402f
	.uleb128 0x2b
	.uaword	0x3cdb
	.uaword	.LLST0
	.uleb128 0x2c
	.uaword	0x3ccf
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2d
	.uaword	0x3ceb
	.uaword	.LBB63
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x26
	.uleb128 0x2e
	.uaword	0x3d24
	.uleb128 0x2c
	.uaword	0x3d18
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"IfxAsclin_enableModule"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x40ad
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0x2a
	.uaword	0x3721
	.uaword	.LLST3
	.uleb128 0x30
	.string	"psw"
	.byte	0x1
	.byte	0x2c
	.uaword	0x104
	.uaword	.LLST4
	.uleb128 0x2d
	.uaword	0x3d34
	.uaword	.LBB68
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x2e
	.uleb128 0x2c
	.uaword	0x3d5f
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_getFaFrequency"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	0x144
	.uaword	.LFB364
	.uaword	.LFE364
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4127
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0x33
	.uaword	0x3721
	.uaword	.LLST5
	.uleb128 0x30
	.string	"frequency"
	.byte	0x1
	.byte	0x35
	.uaword	0x144
	.uaword	.LLST6
	.uleb128 0x32
	.uaword	.LASF16
	.byte	0x1
	.byte	0x36
	.uaword	0x380b
	.uleb128 0x33
	.uaword	0x3d6c
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.byte	0x36
	.uleb128 0x2b
	.uaword	0x3d93
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x3da0
	.uaword	.LFB365
	.uaword	.LFE365
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4170
	.uleb128 0x2c
	.uaword	0x3dc1
	.byte	0x1
	.byte	0x64
	.uleb128 0x35
	.uaword	0x3dcc
	.sleb128 -268433920
	.uleb128 0x36
	.uaword	0x3dd8
	.uahalf	0x100
	.uleb128 0x37
	.uaword	0x3dee
	.byte	0x7
	.byte	0x84
	.sleb128 268433920
	.byte	0x9f
	.uleb128 0x37
	.uaword	0x3dfe
	.byte	0x9
	.byte	0x84
	.sleb128 268433920
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_getPdFrequency"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	0x144
	.uaword	.LFB367
	.uaword	.LFE367
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x41b1
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0x62
	.uaword	0x3721
	.uaword	.LLST8
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_getOvsFrequency"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.uaword	0x144
	.uaword	.LFB366
	.uaword	.LFE366
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x41f3
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0x5c
	.uaword	0x3721
	.uaword	.LLST9
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_getShiftFrequency"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	0x144
	.uaword	.LFB368
	.uaword	.LFE368
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4237
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0x68
	.uaword	0x3721
	.uaword	.LLST10
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerEr"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uaword	0x42bf
	.uaword	.LFB369
	.uaword	.LFE369
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x42bf
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0x6e
	.uaword	0x3721
	.uaword	.LLST11
	.uleb128 0x33
	.uaword	0x3da0
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.byte	0x70
	.uleb128 0x2b
	.uaword	0x3dc1
	.uaword	.LLST12
	.uleb128 0x38
	.uaword	.LBB75
	.uaword	.LBE75
	.uleb128 0x35
	.uaword	0x3dcc
	.sleb128 -268433920
	.uleb128 0x39
	.uaword	0x3dee
	.uaword	.LLST13
	.uleb128 0x39
	.uaword	0x3dfe
	.uaword	.LLST14
	.uleb128 0x36
	.uaword	0x3dd8
	.uahalf	0x100
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x42c5
	.uleb128 0xc
	.uaword	0x391
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerRx"
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.uaword	0x42bf
	.uaword	.LFB370
	.uaword	.LFE370
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4352
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0x74
	.uaword	0x3721
	.uaword	.LLST15
	.uleb128 0x33
	.uaword	0x3da0
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.byte	0x76
	.uleb128 0x2b
	.uaword	0x3dc1
	.uaword	.LLST15
	.uleb128 0x38
	.uaword	.LBB77
	.uaword	.LBE77
	.uleb128 0x35
	.uaword	0x3dcc
	.sleb128 -268433920
	.uleb128 0x39
	.uaword	0x3dee
	.uaword	.LLST17
	.uleb128 0x39
	.uaword	0x3dfe
	.uaword	.LLST18
	.uleb128 0x36
	.uaword	0x3dd8
	.uahalf	0x100
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerTx"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	0x42bf
	.uaword	.LFB371
	.uaword	.LFE371
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x43da
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0x7a
	.uaword	0x3721
	.uaword	.LLST19
	.uleb128 0x33
	.uaword	0x3da0
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.byte	0x7c
	.uleb128 0x2b
	.uaword	0x3dc1
	.uaword	.LLST20
	.uleb128 0x38
	.uaword	.LBB79
	.uaword	.LBE79
	.uleb128 0x35
	.uaword	0x3dcc
	.sleb128 -268433920
	.uleb128 0x39
	.uaword	0x3dee
	.uaword	.LLST21
	.uleb128 0x39
	.uaword	0x3dfe
	.uaword	.LLST22
	.uleb128 0x36
	.uaword	0x3dd8
	.uahalf	0x100
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_read16"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	0x136
	.uaword	.LFB372
	.uaword	.LFE372
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x443d
	.uleb128 0x28
	.uaword	.LASF15
	.byte	0x1
	.byte	0x80
	.uaword	0x3721
	.byte	0x1
	.byte	0x64
	.uleb128 0x28
	.uaword	.LASF20
	.byte	0x1
	.byte	0x80
	.uaword	0x443d
	.byte	0x1
	.byte	0x65
	.uleb128 0x2f
	.uaword	.LASF21
	.byte	0x1
	.byte	0x80
	.uaword	0x136
	.uaword	.LLST23
	.uleb128 0x3a
	.uaword	.LASF22
	.byte	0x1
	.byte	0x82
	.uaword	0x4443
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x104
	.uleb128 0x19
	.byte	0x4
	.uaword	0x4449
	.uleb128 0xc
	.uaword	0x338e
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_read32"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	0x136
	.uaword	.LFB373
	.uaword	.LFE373
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x44b3
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0x8e
	.uaword	0x3721
	.uaword	.LLST24
	.uleb128 0x28
	.uaword	.LASF20
	.byte	0x1
	.byte	0x8e
	.uaword	0x44b3
	.byte	0x1
	.byte	0x65
	.uleb128 0x2f
	.uaword	.LASF21
	.byte	0x1
	.byte	0x8e
	.uaword	0x136
	.uaword	.LLST25
	.uleb128 0x3a
	.uaword	.LASF22
	.byte	0x1
	.byte	0x90
	.uaword	0x4443
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x136
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_read8"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x136
	.uaword	.LFB374
	.uaword	.LFE374
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x451b
	.uleb128 0x28
	.uaword	.LASF15
	.byte	0x1
	.byte	0x9c
	.uaword	0x3721
	.byte	0x1
	.byte	0x64
	.uleb128 0x28
	.uaword	.LASF20
	.byte	0x1
	.byte	0x9c
	.uaword	0x451b
	.byte	0x1
	.byte	0x65
	.uleb128 0x2f
	.uaword	.LASF21
	.byte	0x1
	.byte	0x9c
	.uaword	0x136
	.uaword	.LLST26
	.uleb128 0x3a
	.uaword	.LASF22
	.byte	0x1
	.byte	0x9e
	.uaword	0x4443
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xd9
	.uleb128 0x27
	.byte	0x1
	.string	"IfxAsclin_setBaudrateBitFields"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.uaword	.LFB375
	.uaword	.LFE375
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x46d1
	.uleb128 0x28
	.uaword	.LASF15
	.byte	0x1
	.byte	0xaa
	.uaword	0x3721
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.uaword	.LASF17
	.byte	0x1
	.byte	0xaa
	.uaword	0x104
	.uaword	.LLST27
	.uleb128 0x28
	.uaword	.LASF18
	.byte	0x1
	.byte	0xaa
	.uaword	0x104
	.byte	0x1
	.byte	0x55
	.uleb128 0x28
	.uaword	.LASF19
	.byte	0x1
	.byte	0xaa
	.uaword	0x104
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.uaword	.LASF23
	.byte	0x1
	.byte	0xaa
	.uaword	0x39e5
	.byte	0x1
	.byte	0x57
	.uleb128 0x32
	.uaword	.LASF16
	.byte	0x1
	.byte	0xac
	.uaword	0x380b
	.uleb128 0x2a
	.uaword	0x3d6c
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xac
	.uaword	0x45bd
	.uleb128 0x2c
	.uaword	0x3d93
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2a
	.uaword	0x3e72
	.uaword	.LBB83
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xad
	.uaword	0x45f6
	.uleb128 0x3b
	.uaword	0x3ea2
	.byte	0
	.uleb128 0x2c
	.uaword	0x3e96
	.byte	0x1
	.byte	0x64
	.uleb128 0x3c
	.uaword	0x3e0c
	.uaword	.LBB85
	.uaword	.LBE85
	.byte	0x1
	.uahalf	0x112
	.uleb128 0x2c
	.uaword	0x3e33
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x3eaf
	.uaword	.LBB90
	.uaword	.LBE90
	.byte	0x1
	.byte	0xae
	.uaword	0x461a
	.uleb128 0x2b
	.uaword	0x3edc
	.uaword	.LLST28
	.uleb128 0x2c
	.uaword	0x3ed0
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3d
	.uaword	0x3ee9
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.byte	0xaf
	.uaword	0x463c
	.uleb128 0x2c
	.uaword	0x3f16
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.uaword	0x3f0a
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3d
	.uaword	0x3f23
	.uaword	.LBB94
	.uaword	.LBE94
	.byte	0x1
	.byte	0xb0
	.uaword	0x465e
	.uleb128 0x2c
	.uaword	0x3f52
	.byte	0x1
	.byte	0x56
	.uleb128 0x2c
	.uaword	0x3f46
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3d
	.uaword	0x3f5f
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.byte	0xb1
	.uaword	0x4680
	.uleb128 0x2c
	.uaword	0x3f8f
	.byte	0x1
	.byte	0x57
	.uleb128 0x2c
	.uaword	0x3f83
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x33
	.uaword	0x3e72
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.byte	0xb2
	.uleb128 0x2e
	.uaword	0x3ea2
	.uleb128 0x2c
	.uaword	0x3e96
	.byte	0x1
	.byte	0x64
	.uleb128 0x3e
	.uaword	0x3e0c
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.uahalf	0x112
	.uaword	0x46b7
	.uleb128 0x2c
	.uaword	0x3e33
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3c
	.uaword	0x3e0c
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.uahalf	0x117
	.uleb128 0x2c
	.uaword	0x3e33
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxAsclin_setBitTiming"
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.uaword	0x166
	.uaword	.LFB376
	.uaword	.LFE376
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4982
	.uleb128 0x2f
	.uaword	.LASF15
	.byte	0x1
	.byte	0xb6
	.uaword	0x3721
	.uaword	.LLST29
	.uleb128 0x29
	.string	"baudrate"
	.byte	0x1
	.byte	0xb6
	.uaword	0x144
	.uaword	.LLST30
	.uleb128 0x2f
	.uaword	.LASF23
	.byte	0x1
	.byte	0xb6
	.uaword	0x39e5
	.uaword	.LLST31
	.uleb128 0x29
	.string	"samplepoint"
	.byte	0x1
	.byte	0xb6
	.uaword	0x3c17
	.uaword	.LLST32
	.uleb128 0x29
	.string	"medianFilter"
	.byte	0x1
	.byte	0xb6
	.uaword	0x3c85
	.uaword	.LLST33
	.uleb128 0x23
	.string	"source"
	.byte	0x1
	.byte	0xb8
	.uaword	0x380b
	.uleb128 0x3f
	.string	"fOvs"
	.byte	0x1
	.byte	0xb9
	.uaword	0x144
	.byte	0x1
	.byte	0x54
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.byte	0xba
	.uaword	0x136
	.uaword	.LLST34
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.byte	0xba
	.uaword	0x136
	.uaword	.LLST35
	.uleb128 0x30
	.string	"dBest"
	.byte	0x1
	.byte	0xba
	.uaword	0x136
	.uaword	.LLST36
	.uleb128 0x30
	.string	"nBest"
	.byte	0x1
	.byte	0xba
	.uaword	0x136
	.uaword	.LLST37
	.uleb128 0x23
	.string	"f"
	.byte	0x1
	.byte	0xbb
	.uaword	0x144
	.uleb128 0x30
	.string	"fpd"
	.byte	0x1
	.byte	0xbe
	.uaword	0x144
	.uaword	.LLST38
	.uleb128 0x30
	.string	"relError"
	.byte	0x1
	.byte	0xc2
	.uaword	0x144
	.uaword	.LLST39
	.uleb128 0x3f
	.string	"limit"
	.byte	0x1
	.byte	0xc3
	.uaword	0x144
	.byte	0x1
	.byte	0x64
	.uleb128 0x30
	.string	"terminated"
	.byte	0x1
	.byte	0xc5
	.uaword	0x166
	.uaword	.LLST40
	.uleb128 0x30
	.string	"newRelError"
	.byte	0x1
	.byte	0xc6
	.uaword	0x144
	.uaword	.LLST41
	.uleb128 0x30
	.string	"adder_facL"
	.byte	0x1
	.byte	0xc7
	.uaword	0x136
	.uaword	.LLST42
	.uleb128 0x30
	.string	"adder_facH"
	.byte	0x1
	.byte	0xc7
	.uaword	0x136
	.uaword	.LLST43
	.uleb128 0x30
	.string	"adder_facL_min"
	.byte	0x1
	.byte	0xc7
	.uaword	0x136
	.uaword	.LLST44
	.uleb128 0x40
	.uaword	.LASF21
	.byte	0x1
	.byte	0xc7
	.uaword	0x136
	.uaword	.LLST45
	.uleb128 0x2a
	.uaword	0x3d6c
	.uaword	.LBB104
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xb8
	.uaword	0x4893
	.uleb128 0x2b
	.uaword	0x3d93
	.uaword	.LLST46
	.byte	0
	.uleb128 0x2a
	.uaword	0x3e40
	.uaword	.LBB110
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.byte	0xbf
	.uaword	0x48c5
	.uleb128 0x3b
	.uaword	0x3e5d
	.byte	0x4
	.uleb128 0x2b
	.uaword	0x3e54
	.uaword	.LLST47
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x39
	.uaword	0x3e66
	.uaword	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x3e40
	.uaword	.LBB113
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0xc0
	.uaword	0x48f7
	.uleb128 0x3b
	.uaword	0x3e5d
	.byte	0x1
	.uleb128 0x2b
	.uaword	0x3e54
	.uaword	.LLST49
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x39
	.uaword	0x3e66
	.uaword	.LLST50
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x3e72
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.byte	0xf8
	.uaword	0x4930
	.uleb128 0x3b
	.uaword	0x3ea2
	.byte	0
	.uleb128 0x2c
	.uaword	0x3e96
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3c
	.uaword	0x3e0c
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.uahalf	0x112
	.uleb128 0x2c
	.uaword	0x3e33
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x42
	.uaword	0x3e72
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x105
	.uleb128 0x2e
	.uaword	0x3ea2
	.uleb128 0x2c
	.uaword	0x3e96
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3e
	.uaword	0x3e0c
	.uaword	.LBB126
	.uaword	.LBE126
	.byte	0x1
	.uahalf	0x112
	.uaword	0x4968
	.uleb128 0x2c
	.uaword	0x3e33
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x42
	.uaword	0x3e0c
	.uaword	.LBB128
	.uaword	.Ldebug_ranges0+0x128
	.byte	0x1
	.uahalf	0x117
	.uleb128 0x2c
	.uaword	0x3e33
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x3e72
	.uaword	.LFB377
	.uaword	.LFE377
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x49db
	.uleb128 0x2c
	.uaword	0x3e96
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	0x3ea2
	.byte	0x1
	.byte	0x54
	.uleb128 0x3e
	.uaword	0x3e0c
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.uahalf	0x112
	.uaword	0x49c2
	.uleb128 0x2b
	.uaword	0x3e33
	.uaword	.LLST51
	.byte	0
	.uleb128 0x3c
	.uaword	0x3e0c
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.uahalf	0x117
	.uleb128 0x2c
	.uaword	0x3e33
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"IfxAsclin_write16"
	.byte	0x1
	.uahalf	0x11d
	.byte	0x1
	.uaword	0x136
	.uaword	.LFB378
	.uaword	.LFE378
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4a48
	.uleb128 0x44
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x3721
	.uaword	.LLST52
	.uleb128 0x44
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x443d
	.uaword	.LLST53
	.uleb128 0x44
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x11d
	.uaword	0x136
	.uaword	.LLST54
	.uleb128 0x45
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x4a48
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x4a4e
	.uleb128 0xc
	.uaword	0x3458
	.uleb128 0x43
	.byte	0x1
	.string	"IfxAsclin_write32"
	.byte	0x1
	.uahalf	0x12b
	.byte	0x1
	.uaword	0x136
	.uaword	.LFB379
	.uaword	.LFE379
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4abe
	.uleb128 0x46
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x3721
	.byte	0x1
	.byte	0x64
	.uleb128 0x44
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x44b3
	.uaword	.LLST55
	.uleb128 0x44
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x136
	.uaword	.LLST56
	.uleb128 0x45
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x4a48
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x43
	.byte	0x1
	.string	"IfxAsclin_write8"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.uaword	0x136
	.uaword	.LFB380
	.uaword	.LFE380
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4b28
	.uleb128 0x46
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x139
	.uaword	0x3721
	.byte	0x1
	.byte	0x64
	.uleb128 0x44
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x139
	.uaword	0x451b
	.uaword	.LLST57
	.uleb128 0x44
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x139
	.uaword	0x136
	.uaword	.LLST58
	.uleb128 0x45
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x4a48
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxAsclin_resetModule"
	.byte	0x1
	.uahalf	0x147
	.byte	0x1
	.uaword	.LFB381
	.uaword	.LFE381
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4b77
	.uleb128 0x44
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x147
	.uaword	0x3721
	.uaword	.LLST59
	.uleb128 0x48
	.string	"passwd"
	.byte	0x1
	.uahalf	0x149
	.uaword	0x104
	.uaword	.LLST60
	.byte	0
	.uleb128 0x49
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x7b
	.uaword	0x136
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x6
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
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-1
	.uaword	.LFE363
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7-1
	.uaword	.LFE363
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL18-1
	.uaword	.LFE367
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LFE366
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x7
	.byte	0x84
	.sleb128 -268433920
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0x84
	.sleb128 1536
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x7
	.byte	0x84
	.sleb128 -268433920
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x7
	.byte	0x84
	.sleb128 268433920
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x7
	.byte	0x84
	.sleb128 268435456
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x9
	.byte	0x84
	.sleb128 268433920
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x9
	.byte	0x84
	.sleb128 268435456
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x5
	.byte	0x84
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0x84
	.sleb128 1536
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x7
	.byte	0x84
	.sleb128 -268433920
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x7
	.byte	0x84
	.sleb128 268433920
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x7
	.byte	0x84
	.sleb128 268435456
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x9
	.byte	0x84
	.sleb128 268433920
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x9
	.byte	0x84
	.sleb128 268435456
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x5
	.byte	0x84
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x7
	.byte	0x84
	.sleb128 -268433920
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0x84
	.sleb128 1536
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x7
	.byte	0x84
	.sleb128 -268433920
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x7
	.byte	0x84
	.sleb128 268433920
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x7
	.byte	0x84
	.sleb128 268435456
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x9
	.byte	0x84
	.sleb128 268433920
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x9
	.byte	0x84
	.sleb128 268435456
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x5
	.byte	0x84
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LFE373
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL45
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49
	.uaword	.LFE375
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL70
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57-1
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL57-1
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL57-1
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL57-1
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL65
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL56
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL70
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL56
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL63
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL68
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL77
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL63
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL65
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL77
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57-1
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL58
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL61
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL60
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL63
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL92
	.uaword	.LFE378
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL90
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x3
	.byte	0x85
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LFE378
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x3
	.byte	0x85
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LFE379
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL99
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x3
	.byte	0x85
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL103
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL104-1
	.uaword	.LFE381
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL105
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106-1
	.uaword	.LFE381
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xb4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
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
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.uaword	.LFB381
	.uaword	.LFE381-.LFB381
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	0
	.uaword	0
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	0
	.uaword	0
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	0
	.uaword	0
	.uaword	.LBB83
	.uaword	.LBE83
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	0
	.uaword	0
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	0
	.uaword	0
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	0
	.uaword	0
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	0
	.uaword	0
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	.LBB119
	.uaword	.LBE119
	.uaword	0
	.uaword	0
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB115
	.uaword	.LBE115
	.uaword	.LBB116
	.uaword	.LBE116
	.uaword	0
	.uaword	0
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	0
	.uaword	0
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	0
	.uaword	0
	.uaword	.LFB362
	.uaword	.LFE362
	.uaword	.LFB363
	.uaword	.LFE363
	.uaword	.LFB364
	.uaword	.LFE364
	.uaword	.LFB365
	.uaword	.LFE365
	.uaword	.LFB367
	.uaword	.LFE367
	.uaword	.LFB366
	.uaword	.LFE366
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
	.uaword	.LFB376
	.uaword	.LFE376
	.uaword	.LFB377
	.uaword	.LFE377
	.uaword	.LFB378
	.uaword	.LFE378
	.uaword	.LFB379
	.uaword	.LFE379
	.uaword	.LFB380
	.uaword	.LFE380
	.uaword	.LFB381
	.uaword	.LFE381
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF12:
	.string	"reserved_29"
.LASF23:
	.string	"oversampling"
.LASF9:
	.string	"reserved_0"
.LASF13:
	.string	"reserved_1"
.LASF10:
	.string	"reserved_2"
.LASF11:
	.string	"reserved_7"
.LASF0:
	.string	"reserved_8"
.LASF14:
	.string	"INTLEVEL"
.LASF18:
	.string	"numerator"
.LASF3:
	.string	"reserved_4"
.LASF17:
	.string	"prescaler"
.LASF15:
	.string	"asclin"
.LASF7:
	.string	"CERBERUS"
.LASF5:
	.string	"reserved_10"
.LASF1:
	.string	"reserved_12"
.LASF20:
	.string	"data"
.LASF6:
	.string	"reserved_18"
.LASF21:
	.string	"count"
.LASF16:
	.string	"clockSource"
.LASF24:
	.string	"txData"
.LASF22:
	.string	"rxData"
.LASF19:
	.string	"denominator"
.LASF2:
	.string	"reserved_21"
.LASF8:
	.string	"reserved_24"
.LASF4:
	.string	"reserved_28"
	.extern	IfxScuCcu_getBaud2Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getSpbFrequency,STT_FUNC,0
	.extern	IfxScuCcu_getOsc0Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getPllErayFrequency,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
