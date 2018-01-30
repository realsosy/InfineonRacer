	.file	"IfxQspi.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxQspi_calcRealBaudrate,"ax",@progbits
	.align 1
	.global	IfxQspi_calcRealBaudrate
	.type	IfxQspi_calcRealBaudrate, @function
IfxQspi_calcRealBaudrate:
.LFB275:
	.file 1 "0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.c"
	.loc 1 36 0
.LVL0:
	.loc 1 37 0
	and	%d8, %d4, 7
.LVL1:
	.loc 1 36 0
	sub.a	%SP, 32
.LCFI0:
	.loc 1 36 0
	mov.aa	%a15, %a4
	.loc 1 40 0
	addi	%d15, %d8, 8
	.loc 1 38 0
	call	IfxScuCcu_getMaxFrequency
.LVL2:
	.loc 1 40 0
	addsc.a	%a3, %a15, %d15, 2
	ld.w	%d15, [%a3]0
	lea	%a3, [%SP] 32
	addsc.a	%a2, %a3, %d8, 2
	st.w	[%a2] -32, %d15
	.loc 1 41 0
	ld.w	%d3, [%a15] 16
	and	%d3, %d3, 255
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d2, %d2, %d3
.LVL3:
	.loc 1 42 0
	and	%d3, %d15, 63
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d2, %d2, %d3
.LVL4:
	.loc 1 43 0
	extr.u	%d3, %d15, 6, 2
	addi	%d4, %d3, 1
	extr.u	%d3, %d15, 8, 2
	extr.u	%d15, %d15, 10, 2
	add	%d3, %d4
	add	%d15, %d3
	itof	%d15, %d15
	.loc 1 45 0
	div.f	%d2, %d2, %d15
	ret
.LFE275:
	.size	IfxQspi_calcRealBaudrate, .-IfxQspi_calcRealBaudrate
.section .text.IfxQspi_calculateExtendedConfigurationValue,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateExtendedConfigurationValue
	.type	IfxQspi_calculateExtendedConfigurationValue, @function
IfxQspi_calculateExtendedConfigurationValue:
.LFB277:
	.loc 1 74 0
.LVL5:
	.loc 1 74 0
	mov.aa	%a15, %a4
	mov.aa	%a12, %a5
.LBB15:
.LBB16:
.LBB17:
.LBB18:
	.file 2 "0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.h"
	.loc 2 849 0
	call	IfxScuCcu_getMaxFrequency
.LVL6:
.LBE18:
.LBE17:
	.loc 2 874 0
	ld.w	%d3, [%a15] 16
.LBE16:
.LBE15:
	.loc 1 79 0
	ld.w	%d8, [%a12] 4
.LBB21:
.LBB19:
	.loc 2 874 0
	and	%d3, %d3, 255
	add	%d3, 1
	itof	%d3, %d3
.LBE19:
.LBE21:
	.loc 1 87 0
	movh	%d6, 18804
.LBB22:
.LBB20:
	.loc 2 874 0
	div.f	%d2, %d2, %d3
.LBE20:
.LBE22:
	.loc 1 78 0
	movh	%d3, 16256
	.loc 1 79 0
	div.f	%d8, %d3, %d8
	.loc 1 78 0
	div.f	%d2, %d3, %d2
	.loc 1 76 0
	mov	%d15, 0
.LVL7:
	.loc 1 87 0
	addi	%d6, %d6, 9216
	.loc 1 82 0
	mov	%d1, 8
	.loc 1 89 0
	mov	%d7, 8
	.loc 1 82 0
	mov	%d11, 0
	.loc 1 92 0
	movh	%d10, 16128
	.loc 1 105 0
	mov	%d0, 0
	mov.a	%a15, 3
.LVL8:
.L12:
	.loc 1 91 0
	itof	%d3, %d7
	mul.f	%d3, %d3, %d2
.LVL9:
	.loc 1 92 0
	div.f	%d4, %d8, %d3
	add.f	%d4, %d4, %d10
	ftoiz	%d4, %d4
.LVL10:
	.loc 1 94 0
	ge	%d5, %d4, 65
	jnz	%d5, .L13
	.loc 1 99 0
	jge	%d4, 2, .L25
	movh	%d5, 16384
	.loc 1 101 0
	mov	%d4, 2
.LVL11:
.L4:
	.loc 1 105 0
	msub.f	%d3, %d8, %d3, %d5
.LVL12:
	addih	%d3, %d3, 0x8000
	cmp.f	%d5, %d3, %d0
	extr.u	%d5, %d5, 0, 1
	addih	%d9, %d3, 0x8000
	sel	%d3, %d5, %d9, %d3
.LVL13:
	.loc 1 107 0
	cmp.f	%d5, %d6, %d3
	jnz.t	%d5, 0, .L7
.LVL14:
	.loc 1 109 0 discriminator 3
	mov	%d6, %d3
	.loc 1 113 0 discriminator 3
	mov	%d1, %d7
	mov	%d11, %d4
	jlt	%d7, 6, .L7
	.loc 1 115 0
	cmp.f	%d3, %d3, %d0
.LVL15:
	jz.t	%d3, 2, .L26
.LVL16:
.L7:
	.loc 1 89 0
	add	%d7, -2
.LVL17:
	loop	%a15, .L12
.LVL18:
.L10:
	.loc 1 126 0
	sh	%d3, %d1, -31
	add	%d3, %d1
	.loc 1 125 0
	add	%d11, -1
.LVL19:
	.loc 1 126 0
	sha	%d3, -1
	.loc 1 125 0
	insert	%d15, %d15, %d11, 0, 6
.LVL20:
	.loc 1 126 0
	addi	%d2, %d3, -1
.LVL21:
	and	%d2, %d2, 3
	insert	%d15, %d15, %d2, 6, 2
.LVL22:
.LBB23:
.LBB24:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 123 0
	mov	%d4, 3
.LVL23:
#APP
	# 123 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min %d3, %d3, %d4
	# 0 "" 2
.LVL24:
#NO_APP
.LBE24:
.LBE23:
	.loc 1 127 0
	and	%d3, %d3, 3
.LVL25:
	insert	%d15, %d15, %d3, 10, 2
	.loc 1 128 0
	sub	%d1, %d3
.LVL26:
	not	%d2
	add	%d2, %d1
	insert	%d15, %d15, %d2, 8, 2
	.loc 1 129 0
	ld.w	%d2, [%a12] 8
	insn.t	%d15, %d15,12, %d2,4
	.loc 1 130 0
	ins.t	%d15, %d15,13, %d2,3
	.loc 1 134 0
	ins.t	%d2, %d15,14, %d2,14+8
	ret
.LVL27:
.L13:
	.loc 1 94 0
	movh	%d5, 17024
	.loc 1 96 0
	mov	%d4, 64
.LVL28:
	j	.L4
.LVL29:
.L25:
	.loc 1 99 0
	itof	%d5, %d4
	j	.L4
.LVL30:
.L26:
	.loc 1 115 0
	jz.t	%d3, 0, .L10
.LVL31:
	.loc 1 89 0
	add	%d7, -2
.LVL32:
	loop	%a15, .L12
	j	.L10
.LFE277:
	.size	IfxQspi_calculateExtendedConfigurationValue, .-IfxQspi_calculateExtendedConfigurationValue
.section .text.IfxQspi_calculatePrescaler,"ax",@progbits
	.align 1
	.global	IfxQspi_calculatePrescaler
	.type	IfxQspi_calculatePrescaler, @function
IfxQspi_calculatePrescaler:
.LFB278:
	.loc 1 138 0
.LVL33:
	.loc 1 140 0
	movh	%d8, 16128
	mul.f	%d8, %d4, %d8
.LVL34:
.LBB25:
	.loc 1 148 0
	mov.a	%a15, 7
.LBE25:
.LBB26:
.LBB27:
	.loc 2 849 0
	call	IfxScuCcu_getMaxFrequency
.LVL35:
	.loc 1 142 0
	movh	%d5, 19225
	.loc 2 849 0
	mov	%d0, %d2
.LVL36:
	.loc 1 145 0
	mov	%d6, 0
	.loc 1 143 0
	mov	%d2, 0
	.loc 1 142 0
	addi	%d5, %d5, -27008
.LBE27:
.LBE26:
.LBB28:
	.loc 1 148 0
	mov	%d1, 0
.LVL37:
.L32:
	.loc 1 137 0
	sh	%d3, %d6, 2
	.loc 1 147 0
	mov	%d15, 1
	sh	%d15, %d15, %d3
	utof	%d15, %d15
	div.f	%d15, %d0, %d15
	.loc 1 148 0
	sub.f	%d15, %d15, %d8
	cmp.f	%d3, %d15, %d1
	extr.u	%d3, %d3, 0, 1
	addih	%d7, %d15, 0x8000
	sel	%d15, %d3, %d7, %d15
.LVL38:
	.loc 1 150 0
	cmp.f	%d3, %d5, %d15
	extr.u	%d3, %d3, 0, 1
	sel	%d2, %d3, %d2, %d6
	sel	%d5, %d3, %d5, %d15
.LVL39:
.LBE28:
	.loc 1 145 0
	add	%d6, 1
.LVL40:
	loop	%a15, .L32
	.loc 1 158 0
	ret
.LFE278:
	.size	IfxQspi_calculatePrescaler, .-IfxQspi_calculatePrescaler
.section .text.IfxQspi_calculateBasicConfigurationValue,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateBasicConfigurationValue
	.type	IfxQspi_calculateBasicConfigurationValue, @function
IfxQspi_calculateBasicConfigurationValue:
.LFB276:
	.loc 1 49 0
.LVL41:
	.loc 1 49 0
	mov	%d8, %d4
	.loc 1 53 0
	mov	%d4, %d5
.LVL42:
	.loc 1 49 0
	mov.aa	%a15, %a5
	.loc 1 53 0
	call	IfxQspi_calculatePrescaler
.LVL43:
	.loc 1 57 0
	ld.h	%d5, [%a15] 2
	.loc 1 56 0
	and	%d2, %d2, 7
.LVL44:
	.loc 1 55 0
	mov	%d15, 0
.LVL45:
	.loc 1 57 0
	extr.u	%d3, %d5, 3, 3
	.loc 1 56 0
	insert	%d15, %d15, %d2, 1, 3
.LVL46:
	.loc 1 57 0
	insert	%d15, %d15, %d3, 4, 3
	.loc 1 59 0
	ld.h	%d3, [%a15]0
	.loc 1 58 0
	insert	%d15, %d15, %d2, 7, 3
	.loc 1 59 0
	extr.u	%d4, %d3, 13, 3
	insert	%d15, %d15, %d4, 10, 3
	.loc 1 60 0
	insert	%d15, %d15, %d2, 13, 3
	.loc 1 61 0
	insert	%d15, %d15, %d5, 16, 3
	.loc 1 62 0
	ins.t	%d15, %d15,19, %d5,7
	.loc 1 63 0
	insert	%d15, %d15, 0, 20, 1
.LVL47:
	.loc 1 64 0
	ins.t	%d15, %d15,21, %d3,5
.LVL48:
	.loc 1 66 0
	extr.u	%d3, %d3, 6, 6
	.loc 1 65 0
	insert	%d15, %d15, 0, 22, 1
.LVL49:
	.loc 1 66 0
	add	%d3, -1
	insert	%d15, %d15, %d3, 23, 5
.LVL50:
	.loc 1 70 0
	insert	%d2, %d15, %d8, 28, 32-28
	ret
.LFE276:
	.size	IfxQspi_calculateBasicConfigurationValue, .-IfxQspi_calculateBasicConfigurationValue
.section .text.IfxQspi_calculateTimeQuantumLength,"ax",@progbits
	.align 1
	.global	IfxQspi_calculateTimeQuantumLength
	.type	IfxQspi_calculateTimeQuantumLength, @function
IfxQspi_calculateTimeQuantumLength:
.LFB279:
	.loc 1 162 0
.LVL51:
	.loc 1 162 0
	mov	%d8, %d4
	.loc 1 163 0
	movh	%d15, 16512
	call	IfxScuCcu_getMaxFrequency
.LVL52:
	mul.f	%d4, %d8, %d15
	div.f	%d2, %d2, %d4
.LVL53:
	.loc 1 164 0
	ftoiz	%d15, %d2
	itof	%d4, %d15
	sub.f	%d2, %d2, %d4
.LVL54:
	movh	%d4, 16128
	cmp.f	%d4, %d2, %d4
	extr.u	%d4, %d4, 2, 1
	.loc 1 166 0
	mov	%d2, 0
	.loc 1 164 0
	caddn	%d15, %d4, %d15, -1
.LVL55:
	.loc 1 166 0
#APP
	# 97 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max %d2, %d15, %d2
	# 0 "" 2
#NO_APP
	ret
.LFE279:
	.size	IfxQspi_calculateTimeQuantumLength, .-IfxQspi_calculateTimeQuantumLength
.section .text.IfxQspi_read16,"ax",@progbits
	.align 1
	.global	IfxQspi_read16
	.type	IfxQspi_read16, @function
IfxQspi_read16:
.LFB280:
	.loc 1 170 0
.LVL56:
	.loc 1 173 0
	jlez	%d4, .L40
	.loc 1 169 0
	add	%d4, -1
.LVL57:
	extr.u	%d4, %d4, 0, 16
.LVL58:
	lea	%a2, [%a5] 2
	mov.a	%a15, %d4
.L42:
	.loc 1 175 0
	ld.w	%d15, [%a4] 144
	st.h	[%a5]0, %d15
	mov.aa	%a5, %a2
.LVL59:
	loop	%a15, .L43
	ret
.L43:
	add.a	%a2, 2
.LVL60:
	j	.L42
.LVL61:
.L40:
	ret
.LFE280:
	.size	IfxQspi_read16, .-IfxQspi_read16
.section .text.IfxQspi_read32,"ax",@progbits
	.align 1
	.global	IfxQspi_read32
	.type	IfxQspi_read32, @function
IfxQspi_read32:
.LFB281:
	.loc 1 182 0
.LVL62:
	.loc 1 185 0
	jlez	%d4, .L44
	.loc 1 181 0
	add	%d4, -1
.LVL63:
	extr.u	%d4, %d4, 0, 16
.LVL64:
	lea	%a2, [%a5] 4
	mov.a	%a15, %d4
.L46:
	.loc 1 187 0
	ld.w	%d15, [%a4] 144
	st.w	[%a5]0, %d15
	mov.aa	%a5, %a2
.LVL65:
	loop	%a15, .L47
	ret
.L47:
	add.a	%a2, 4
.LVL66:
	j	.L46
.LVL67:
.L44:
	ret
.LFE281:
	.size	IfxQspi_read32, .-IfxQspi_read32
.section .text.IfxQspi_read8,"ax",@progbits
	.align 1
	.global	IfxQspi_read8
	.type	IfxQspi_read8, @function
IfxQspi_read8:
.LFB282:
	.loc 1 194 0
.LVL68:
	.loc 1 197 0
	jlez	%d4, .L48
.LVL69:
	.loc 1 193 0
	add	%d4, -1
.LVL70:
	extr.u	%d4, %d4, 0, 16
.LVL71:
	lea	%a2, [%a5] 1
	mov.a	%a15, %d4
.LVL72:
.L50:
	.loc 1 199 0
	ld.w	%d15, [%a4] 144
	st.b	[%a5]0, %d15
	mov.aa	%a5, %a2
.LVL73:
	loop	%a15, .L51
	ret
.L51:
	add.a	%a2, 1
.LVL74:
	j	.L50
.LVL75:
.L48:
	ret
.LFE282:
	.size	IfxQspi_read8, .-IfxQspi_read8
.section .text.IfxQspi_recalcBasicConfiguration,"ax",@progbits
	.align 1
	.global	IfxQspi_recalcBasicConfiguration
	.type	IfxQspi_recalcBasicConfiguration, @function
IfxQspi_recalcBasicConfiguration:
.LFB283:
	.loc 1 206 0
.LVL76:
	.loc 1 210 0
	jnz	%d6, .L53
	.loc 1 212 0
	insert	%d4, %d4, %d5, 23, 5
.LVL77:
	.loc 1 213 0
	insert	%d4, %d4, 1, 22, 1
.L53:
	.loc 1 218 0
	insert	%d2, %d4, %d7, 0, 1
	ret
.LFE283:
	.size	IfxQspi_recalcBasicConfiguration, .-IfxQspi_recalcBasicConfiguration
.section .text.IfxQspi_resetModule,"ax",@progbits
	.align 1
	.global	IfxQspi_resetModule
	.type	IfxQspi_resetModule, @function
IfxQspi_resetModule:
.LFB284:
	.loc 1 222 0
.LVL78:
	.loc 1 222 0
	mov.aa	%a15, %a4
	.loc 1 223 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL79:
	.loc 1 224 0
	mov	%d4, %d2
	.loc 1 223 0
	mov	%d8, %d2
.LVL80:
	.loc 1 224 0
	call	IfxScuWdt_clearCpuEndinit
.LVL81:
	.loc 1 225 0
	ld.w	%d15, [%a15] 244
	.loc 1 227 0
	mov	%d4, %d8
	.loc 1 225 0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 244, %d15
	.loc 1 226 0
	ld.w	%d15, [%a15] 240
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 240, %d15
	.loc 1 227 0
	call	IfxScuWdt_setCpuEndinit
.L55:
	.loc 1 229 0 discriminator 1
	ld.w	%d15, [%a15] 244
	jz.t	%d15, 1, .L55
	.loc 1 233 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
	.loc 1 234 0
	ld.w	%d15, [%a15] 236
	.loc 1 235 0
	mov	%d4, %d8
	.loc 1 234 0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15] 236, %d15
	.loc 1 235 0
	j	IfxScuWdt_setCpuEndinit
.LFE284:
	.size	IfxQspi_resetModule, .-IfxQspi_resetModule
.section .text.IfxQspi_setSlaveSelectOutputControl,"ax",@progbits
	.align 1
	.global	IfxQspi_setSlaveSelectOutputControl
	.type	IfxQspi_setSlaveSelectOutputControl, @function
IfxQspi_setSlaveSelectOutputControl:
.LFB285:
	.loc 1 240 0
.LVL82:
	.loc 1 241 0
	mov	%d15, 1
	sh	%d4, %d15, %d4
.LVL83:
	.loc 1 244 0
	ld.w	%d15, [%a4] 72
.LVL84:
	.loc 1 241 0
	extr.u	%d4, %d4, 0, 16
.LVL85:
	.loc 1 248 0
	extr.u	%d2, %d15, 16, 16
	.loc 1 246 0
	jz	%d5, .L58
	.loc 1 248 0
	or	%d2, %d4
	insert	%d15, %d15, %d2, 16, 32-16
.LVL86:
	.loc 1 255 0
	jnz	%d6, .L62
.L60:
.LVL87:
	.loc 1 261 0
	andn	%d4, %d15, %d4
.LVL88:
	insert	%d15, %d15, %d4, 0, 16
.LVL89:
	.loc 1 264 0
	st.w	[%a4] 72, %d15
.LVL90:
	.loc 1 265 0
	ret
.LVL91:
.L58:
	.loc 1 252 0
	andn	%d2, %d2, %d4
	insert	%d15, %d15, %d2, 16, 32-16
.LVL92:
	.loc 1 255 0
	jz	%d6, .L60
.L62:
.LVL93:
	.loc 1 257 0
	or	%d4, %d15
.LVL94:
	insert	%d15, %d15, %d4, 0, 16
.LVL95:
	.loc 1 264 0
	st.w	[%a4] 72, %d15
.LVL96:
	.loc 1 265 0
	ret
.LFE285:
	.size	IfxQspi_setSlaveSelectOutputControl, .-IfxQspi_setSlaveSelectOutputControl
.section .text.IfxQspi_write16,"ax",@progbits
	.align 1
	.global	IfxQspi_write16
	.type	IfxQspi_write16, @function
IfxQspi_write16:
.LFB286:
	.loc 1 269 0
.LVL97:
	.loc 1 270 0
	and	%d4, %d4, 7
.LVL98:
	.loc 1 271 0
	addi	%d4, %d4, 25
.LVL99:
	addsc.a	%a4, %a4, %d4, 2
.LVL100:
	.loc 1 273 0
	jlez	%d5, .L63
	.loc 1 268 0
	add	%d5, -1
.LVL101:
	extr.u	%d5, %d5, 0, 16
.LVL102:
	lea	%a2, [%a5] 2
	mov.a	%a15, %d5
.L65:
	.loc 1 275 0
	ld.hu	%d15, [%a5]0
	st.w	[%a4]0, %d15
	mov.aa	%a5, %a2
.LVL103:
	loop	%a15, .L66
	ret
.L66:
	add.a	%a2, 2
.LVL104:
	j	.L65
.LVL105:
.L63:
	ret
.LFE286:
	.size	IfxQspi_write16, .-IfxQspi_write16
.section .text.IfxQspi_write32,"ax",@progbits
	.align 1
	.global	IfxQspi_write32
	.type	IfxQspi_write32, @function
IfxQspi_write32:
.LFB287:
	.loc 1 282 0
.LVL106:
	.loc 1 283 0
	and	%d4, %d4, 7
.LVL107:
	.loc 1 284 0
	addi	%d4, %d4, 25
.LVL108:
	addsc.a	%a4, %a4, %d4, 2
.LVL109:
	.loc 1 286 0
	jlez	%d5, .L67
	.loc 1 281 0
	add	%d5, -1
.LVL110:
	extr.u	%d5, %d5, 0, 16
.LVL111:
	lea	%a2, [%a5] 4
	mov.a	%a15, %d5
.L69:
	.loc 1 288 0
	ld.w	%d15, [%a5]0
	st.w	[%a4]0, %d15
	mov.aa	%a5, %a2
.LVL112:
	loop	%a15, .L70
	ret
.L70:
	add.a	%a2, 4
.LVL113:
	j	.L69
.LVL114:
.L67:
	ret
.LFE287:
	.size	IfxQspi_write32, .-IfxQspi_write32
.section .text.IfxQspi_write8,"ax",@progbits
	.align 1
	.global	IfxQspi_write8
	.type	IfxQspi_write8, @function
IfxQspi_write8:
.LFB288:
	.loc 1 295 0
.LVL115:
	.loc 1 296 0
	and	%d4, %d4, 7
.LVL116:
	.loc 1 297 0
	addi	%d4, %d4, 25
.LVL117:
	addsc.a	%a4, %a4, %d4, 2
.LVL118:
	.loc 1 299 0
	jlez	%d5, .L71
	.loc 1 294 0
	add	%d5, -1
.LVL119:
	extr.u	%d5, %d5, 0, 16
.LVL120:
	lea	%a2, [%a5] 1
	mov.a	%a15, %d5
.L73:
	.loc 1 301 0
	ld.bu	%d15, [%a5]0
	st.w	[%a4]0, %d15
	mov.aa	%a5, %a2
.LVL121:
	loop	%a15, .L74
	ret
.L74:
	add.a	%a2, 1
.LVL122:
	j	.L73
.LVL123:
.L71:
	ret
.LFE288:
	.size	IfxQspi_write8, .-IfxQspi_write8
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
	.uaword	.LFB275
	.uaword	.LFE275-.LFB275
	.byte	0x4
	.uaword	.LCFI0-.LFB275
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB277
	.uaword	.LFE277-.LFB277
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB278
	.uaword	.LFE278-.LFB278
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB276
	.uaword	.LFE276-.LFB276
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB279
	.uaword	.LFE279-.LFB279
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB280
	.uaword	.LFE280-.LFB280
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB281
	.uaword	.LFE281-.LFB281
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB282
	.uaword	.LFE282-.LFB282
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB283
	.uaword	.LFE283-.LFB283
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB284
	.uaword	.LFE284-.LFB284
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.align 2
.LEFDE26:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "./0_Src/1_SrvSw/If/SpiIf.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxQspi_regdef.h"
	.file 8 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2da6
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Qspi/Std/IfxQspi.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x38
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
	.uaword	0xe2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x4
	.byte	0x5a
	.uaword	0x101
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x11c
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x9e
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0xaa
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x15d
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
	.uaword	0xe2
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
	.uleb128 0x3
	.string	"pvoid"
	.byte	0x5
	.byte	0x28
	.uaword	0x1bf
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x5
	.byte	0x38
	.uaword	0xf3
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x57
	.uaword	0x206
	.uleb128 0x6
	.string	"Ifx_ParityMode_even"
	.sleb128 0
	.uleb128 0x6
	.string	"Ifx_ParityMode_odd"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x7
	.uaword	0xe2
	.uaword	0x226
	.uleb128 0x8
	.uaword	0xaa
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.uaword	0xe2
	.uaword	0x236
	.uleb128 0x8
	.uaword	0xaa
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.uaword	0xe2
	.uaword	0x246
	.uleb128 0x8
	.uaword	0xaa
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x3c
	.uaword	0x28c
	.uleb128 0x6
	.string	"SpiIf_Status_ok"
	.sleb128 0
	.uleb128 0x6
	.string	"SpiIf_Status_busy"
	.sleb128 1
	.uleb128 0x6
	.string	"SpiIf_Status_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Status"
	.byte	0x6
	.byte	0x40
	.uaword	0x246
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x51
	.uaword	0x2e3
	.uleb128 0x6
	.string	"SpiIf_DataHeading_lsbFirst"
	.sleb128 0
	.uleb128 0x6
	.string	"SpiIf_DataHeading_msbFirst"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x351
	.uleb128 0x6
	.string	"SpiIf_ShiftClock_shiftTransmitDataOnLeadingEdge"
	.sleb128 0
	.uleb128 0x6
	.string	"SpiIf_ShiftClock_shiftTransmitDataOnTrailingEdge"
	.sleb128 1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x5f
	.uaword	0x397
	.uleb128 0x6
	.string	"SpiIf_ClockPolarity_idleLow"
	.sleb128 0
	.uleb128 0x6
	.string	"SpiIf_ClockPolarity_idleHigh"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Ch"
	.byte	0x6
	.byte	0x68
	.uaword	0x3a7
	.uleb128 0x9
	.string	"SpiIf_Ch_"
	.byte	0x30
	.byte	0x6
	.byte	0xc7
	.uaword	0x465
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x6
	.byte	0xc9
	.uaword	0x670
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"flags"
	.byte	0x6
	.byte	0xca
	.uaword	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.byte	0xcb
	.uaword	0x757
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0xcc
	.uaword	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"tx"
	.byte	0x6
	.byte	0xcd
	.uaword	0x5c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"rx"
	.byte	0x6
	.byte	0xce
	.uaword	0x5c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.string	"onExchangeEnd"
	.byte	0x6
	.byte	0xcf
	.uaword	0x8c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.string	"callbackData"
	.byte	0x6
	.byte	0xd0
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.string	"txHandler"
	.byte	0x6
	.byte	0xd1
	.uaword	0x8ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.string	"rxHandler"
	.byte	0x6
	.byte	0xd2
	.uaword	0x8ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_ChConfig"
	.byte	0x6
	.byte	0x69
	.uaword	0x47b
	.uleb128 0x9
	.string	"SpiIf_ChConfig_"
	.byte	0x10
	.byte	0x6
	.byte	0xd5
	.uaword	0x4cd
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x6
	.byte	0xd7
	.uaword	0x670
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0xd8
	.uaword	0x14e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"mode"
	.byte	0x6
	.byte	0xd9
	.uaword	0x8b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.byte	0xda
	.uaword	0x757
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"SpiIf"
	.byte	0x6
	.byte	0x6a
	.uaword	0x4da
	.uleb128 0x9
	.string	"SpiIf_"
	.byte	0x28
	.byte	0x6
	.byte	0x8d
	.uaword	0x55a
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x6
	.byte	0x8f
	.uaword	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"sending"
	.byte	0x6
	.byte	0x90
	.uaword	0x140
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"activeChannel"
	.byte	0x6
	.byte	0x91
	.uaword	0x60f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"txCount"
	.byte	0x6
	.byte	0x92
	.uaword	0x140
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"rxCount"
	.byte	0x6
	.byte	0x93
	.uaword	0x140
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.string	"functions"
	.byte	0x6
	.byte	0x94
	.uaword	0x6d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.byte	0x6c
	.uaword	0x593
	.uleb128 0xd
	.string	"onTransfer"
	.byte	0x6
	.byte	0x6e
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"byteAccess"
	.byte	0x6
	.byte	0x6f
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xe
	.uaword	0x55a
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.byte	0x72
	.uaword	0x5c3
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x6
	.byte	0x74
	.uaword	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"remaining"
	.byte	0x6
	.byte	0x75
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_Job"
	.byte	0x6
	.byte	0x76
	.uaword	0x598
	.uleb128 0x3
	.string	"SpiIf_Exchange"
	.byte	0x6
	.byte	0x80
	.uaword	0x5ea
	.uleb128 0xf
	.byte	0x4
	.uaword	0x5f0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x28c
	.uaword	0x60f
	.uleb128 0x11
	.uaword	0x60f
	.uleb128 0x11
	.uaword	0x615
	.uleb128 0x11
	.uaword	0x1bf
	.uleb128 0x11
	.uaword	0x1c1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x397
	.uleb128 0xf
	.byte	0x4
	.uaword	0x61b
	.uleb128 0x12
	.uleb128 0x3
	.string	"SpiIf_GetStatus"
	.byte	0x6
	.byte	0x81
	.uaword	0x633
	.uleb128 0xf
	.byte	0x4
	.uaword	0x639
	.uleb128 0x10
	.byte	0x1
	.uaword	0x28c
	.uaword	0x649
	.uleb128 0x11
	.uaword	0x60f
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_OnEvent"
	.byte	0x6
	.byte	0x82
	.uaword	0x65e
	.uleb128 0xf
	.byte	0x4
	.uaword	0x664
	.uleb128 0x13
	.byte	0x1
	.uaword	0x670
	.uleb128 0x11
	.uaword	0x670
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x4cd
	.uleb128 0xc
	.byte	0x14
	.byte	0x6
	.byte	0x84
	.uaword	0x6d6
	.uleb128 0xb
	.string	"exchange"
	.byte	0x6
	.byte	0x86
	.uaword	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"getStatus"
	.byte	0x6
	.byte	0x87
	.uaword	0x61c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.string	"onTx"
	.byte	0x6
	.byte	0x88
	.uaword	0x649
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.string	"onRx"
	.byte	0x6
	.byte	0x89
	.uaword	0x649
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.string	"onError"
	.byte	0x6
	.byte	0x8a
	.uaword	0x649
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_funcs"
	.byte	0x6
	.byte	0x8b
	.uaword	0x676
	.uleb128 0xc
	.byte	0x4
	.byte	0x6
	.byte	0xa7
	.uaword	0x757
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x6
	.byte	0xa9
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"phase"
	.byte	0x6
	.byte	0xaa
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"receive"
	.byte	0x6
	.byte	0xab
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"transmit"
	.byte	0x6
	.byte	0xac
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved"
	.byte	0x6
	.byte	0xad
	.uaword	0x140
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Spi_ErrorChecks"
	.byte	0x6
	.byte	0xae
	.uaword	0x6e9
	.uleb128 0xc
	.byte	0x4
	.byte	0x6
	.byte	0xb1
	.uaword	0x8b5
	.uleb128 0xd
	.string	"enabled"
	.byte	0x6
	.byte	0xb3
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"autoCS"
	.byte	0x6
	.byte	0xb4
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"loopback"
	.byte	0x6
	.byte	0xb5
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"clockPolarity"
	.byte	0x6
	.byte	0xb6
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"shiftClock"
	.byte	0x6
	.byte	0xb7
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"dataHeading"
	.byte	0x6
	.byte	0xb8
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"dataWidth"
	.byte	0x6
	.byte	0xb9
	.uaword	0x140
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"csActiveLevel"
	.byte	0x6
	.byte	0xbb
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"csLeadDelay"
	.byte	0x6
	.byte	0xbc
	.uaword	0x140
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"csTrailDelay"
	.byte	0x6
	.byte	0xbd
	.uaword	0x140
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"csInactiveDelay"
	.byte	0x6
	.byte	0xbe
	.uaword	0x140
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"parityCheck"
	.byte	0x6
	.byte	0xbf
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"parityMode"
	.byte	0x6
	.byte	0xc0
	.uaword	0x140
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"SpiIf_ChMode"
	.byte	0x6
	.byte	0xc1
	.uaword	0x76e
	.uleb128 0x3
	.string	"SpiIf_Cbk"
	.byte	0x6
	.byte	0xc4
	.uaword	0x8da
	.uleb128 0xf
	.byte	0x4
	.uaword	0x8e0
	.uleb128 0x13
	.byte	0x1
	.uaword	0x8ec
	.uleb128 0x11
	.uaword	0x1bf
	.byte	0
	.uleb128 0x3
	.string	"TxRxHandler"
	.byte	0x6
	.byte	0xc5
	.uaword	0x8ff
	.uleb128 0xf
	.byte	0x4
	.uaword	0x905
	.uleb128 0x13
	.byte	0x1
	.uaword	0x911
	.uleb128 0x11
	.uaword	0x60f
	.byte	0
	.uleb128 0x9
	.string	"_Ifx_QSPI_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0xb66
	.uleb128 0xd
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x911
	.uleb128 0x9
	.string	"_Ifx_QSPI_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0xbb2
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x7
	.byte	0x54
	.uaword	0x206
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0xb82
	.uleb128 0x9
	.string	"_Ifx_QSPI_BACON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0xcd4
	.uleb128 0xd
	.string	"LAST"
	.byte	0x7
	.byte	0x5a
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IPRE"
	.byte	0x7
	.byte	0x5b
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"IDLE"
	.byte	0x7
	.byte	0x5c
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LPRE"
	.byte	0x7
	.byte	0x5d
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LEAD"
	.byte	0x7
	.byte	0x5e
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TPRE"
	.byte	0x7
	.byte	0x5f
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TRAIL"
	.byte	0x7
	.byte	0x60
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PARTYP"
	.byte	0x7
	.byte	0x61
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"UINT"
	.byte	0x7
	.byte	0x62
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MSB"
	.byte	0x7
	.byte	0x63
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BYTE"
	.byte	0x7
	.byte	0x64
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DL"
	.byte	0x7
	.byte	0x65
	.uaword	0x206
	.byte	0x4
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CS"
	.byte	0x7
	.byte	0x66
	.uaword	0x206
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACON_Bits"
	.byte	0x7
	.byte	0x67
	.uaword	0xbce
	.uleb128 0x9
	.string	"_Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x6a
	.uaword	0xd21
	.uleb128 0xd
	.string	"E"
	.byte	0x7
	.byte	0x6c
	.uaword	0x206
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x7
	.byte	0x6d
	.uaword	0xcef
	.uleb128 0x9
	.string	"_Ifx_QSPI_CAPCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x70
	.uaword	0xe1b
	.uleb128 0xd
	.string	"CAP"
	.byte	0x7
	.byte	0x72
	.uaword	0x206
	.byte	0x4
	.byte	0xf
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OVF"
	.byte	0x7
	.byte	0x73
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EDGECON"
	.byte	0x7
	.byte	0x74
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"INS"
	.byte	0x7
	.byte	0x75
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN"
	.byte	0x7
	.byte	0x76
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_21"
	.byte	0x7
	.byte	0x77
	.uaword	0x206
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CAPC"
	.byte	0x7
	.byte	0x78
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CAPS"
	.byte	0x7
	.byte	0x79
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CAPF"
	.byte	0x7
	.byte	0x7a
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CAPSEL"
	.byte	0x7
	.byte	0x7b
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_CAPCON_Bits"
	.byte	0x7
	.byte	0x7c
	.uaword	0xd41
	.uleb128 0x9
	.string	"_Ifx_QSPI_CLC_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x7f
	.uaword	0xeb2
	.uleb128 0xd
	.string	"DISR"
	.byte	0x7
	.byte	0x81
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DISS"
	.byte	0x7
	.byte	0x82
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x7
	.byte	0x83
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EDIS"
	.byte	0x7
	.byte	0x84
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_4"
	.byte	0x7
	.byte	0x85
	.uaword	0x206
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_CLC_Bits"
	.byte	0x7
	.byte	0x86
	.uaword	0xe37
	.uleb128 0x9
	.string	"_Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x89
	.uaword	0xefc
	.uleb128 0xd
	.string	"E"
	.byte	0x7
	.byte	0x8b
	.uaword	0x206
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x7
	.byte	0x8c
	.uaword	0xecb
	.uleb128 0x9
	.string	"_Ifx_QSPI_ECON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8f
	.uaword	0xfcb
	.uleb128 0xd
	.string	"Q"
	.byte	0x7
	.byte	0x91
	.uaword	0x206
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"A"
	.byte	0x7
	.byte	0x92
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"B"
	.byte	0x7
	.byte	0x93
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"C"
	.byte	0x7
	.byte	0x94
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPH"
	.byte	0x7
	.byte	0x95
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CPOL"
	.byte	0x7
	.byte	0x96
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PAREN"
	.byte	0x7
	.byte	0x97
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x7
	.byte	0x98
	.uaword	0x206
	.byte	0x4
	.byte	0xf
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BE"
	.byte	0x7
	.byte	0x99
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ECON_Bits"
	.byte	0x7
	.byte	0x9a
	.uaword	0xf1b
	.uleb128 0x9
	.string	"_Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x9d
	.uaword	0x10a3
	.uleb128 0xd
	.string	"ERRORCLEARS"
	.byte	0x7
	.byte	0x9f
	.uaword	0x206
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TXC"
	.byte	0x7
	.byte	0xa0
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RXC"
	.byte	0x7
	.byte	0xa1
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PT1C"
	.byte	0x7
	.byte	0xa2
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PT2C"
	.byte	0x7
	.byte	0xa3
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x7
	.byte	0xa4
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"USRC"
	.byte	0x7
	.byte	0xa5
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_16"
	.byte	0x7
	.byte	0xa6
	.uaword	0x206
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x7
	.byte	0xa7
	.uaword	0xfe5
	.uleb128 0x9
	.string	"_Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xaa
	.uaword	0x11ef
	.uleb128 0xd
	.string	"ERRORENS"
	.byte	0x7
	.byte	0xac
	.uaword	0x206
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TXEN"
	.byte	0x7
	.byte	0xad
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RXEN"
	.byte	0x7
	.byte	0xae
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PT1EN"
	.byte	0x7
	.byte	0xaf
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PT2EN"
	.byte	0x7
	.byte	0xb0
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x7
	.byte	0xb1
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"USREN"
	.byte	0x7
	.byte	0xb2
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TXFIFOINT"
	.byte	0x7
	.byte	0xb3
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RXFIFOINT"
	.byte	0x7
	.byte	0xb4
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PT1"
	.byte	0x7
	.byte	0xb5
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PT2"
	.byte	0x7
	.byte	0xb6
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TXFM"
	.byte	0x7
	.byte	0xb7
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RXFM"
	.byte	0x7
	.byte	0xb8
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x7
	.byte	0xb9
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x7
	.byte	0xba
	.uaword	0x10c3
	.uleb128 0x9
	.string	"_Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xbd
	.uaword	0x132e
	.uleb128 0xd
	.string	"TQ"
	.byte	0x7
	.byte	0xbf
	.uaword	0x206
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x7
	.byte	0xc0
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SI"
	.byte	0x7
	.byte	0xc1
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EXPECT"
	.byte	0x7
	.byte	0xc2
	.uaword	0x206
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LB"
	.byte	0x7
	.byte	0xc3
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DEL0"
	.byte	0x7
	.byte	0xc4
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STROBE"
	.byte	0x7
	.byte	0xc5
	.uaword	0x206
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SRF"
	.byte	0x7
	.byte	0xc6
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STIP"
	.byte	0x7
	.byte	0xc7
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_23"
	.byte	0x7
	.byte	0xc8
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EN"
	.byte	0x7
	.byte	0xc9
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MS"
	.byte	0x7
	.byte	0xca
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"AREN"
	.byte	0x7
	.byte	0xcb
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RESETS"
	.byte	0x7
	.byte	0xcc
	.uaword	0x206
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x7
	.byte	0xcd
	.uaword	0x120f
	.uleb128 0x9
	.string	"_Ifx_QSPI_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd0
	.uaword	0x13a8
	.uleb128 0xd
	.string	"MODREV"
	.byte	0x7
	.byte	0xd2
	.uaword	0x206
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODTYPE"
	.byte	0x7
	.byte	0xd3
	.uaword	0x206
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODNUMBER"
	.byte	0x7
	.byte	0xd4
	.uaword	0x206
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ID_Bits"
	.byte	0x7
	.byte	0xd5
	.uaword	0x134d
	.uleb128 0x9
	.string	"_Ifx_QSPI_KRST0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd8
	.uaword	0x1415
	.uleb128 0xd
	.string	"RST"
	.byte	0x7
	.byte	0xda
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RSTSTAT"
	.byte	0x7
	.byte	0xdb
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x7
	.byte	0xdc
	.uaword	0x206
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRST0_Bits"
	.byte	0x7
	.byte	0xdd
	.uaword	0x13c0
	.uleb128 0x9
	.string	"_Ifx_QSPI_KRST1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe0
	.uaword	0x1470
	.uleb128 0xd
	.string	"RST"
	.byte	0x7
	.byte	0xe2
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x7
	.byte	0xe3
	.uaword	0x206
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRST1_Bits"
	.byte	0x7
	.byte	0xe4
	.uaword	0x1430
	.uleb128 0x9
	.string	"_Ifx_QSPI_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xe7
	.uaword	0x14cd
	.uleb128 0xd
	.string	"CLR"
	.byte	0x7
	.byte	0xe9
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x7
	.byte	0xea
	.uaword	0x206
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRSTCLR_Bits"
	.byte	0x7
	.byte	0xeb
	.uaword	0x148b
	.uleb128 0x9
	.string	"_Ifx_QSPI_MIXENTRY_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xee
	.uaword	0x151a
	.uleb128 0xd
	.string	"E"
	.byte	0x7
	.byte	0xf0
	.uaword	0x206
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_MIXENTRY_Bits"
	.byte	0x7
	.byte	0xf1
	.uaword	0x14ea
	.uleb128 0x9
	.string	"_Ifx_QSPI_OCS_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xf4
	.uaword	0x15ae
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x7
	.byte	0xf6
	.uaword	0x206
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SUS"
	.byte	0x7
	.byte	0xf7
	.uaword	0x206
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SUS_P"
	.byte	0x7
	.byte	0xf8
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SUSSTA"
	.byte	0x7
	.byte	0xf9
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x7
	.byte	0xfa
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_OCS_Bits"
	.byte	0x7
	.byte	0xfb
	.uaword	0x1538
	.uleb128 0x9
	.string	"_Ifx_QSPI_PISEL_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xfe
	.uaword	0x1690
	.uleb128 0x15
	.string	"MRIS"
	.byte	0x7
	.uahalf	0x100
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"reserved_3"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SRIS"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"reserved_7"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SCIS"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"reserved_11"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SLSIS"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x107
	.uaword	0x206
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_PISEL_Bits"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x15c7
	.uleb128 0x18
	.string	"_Ifx_QSPI_RXEXIT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x16dc
	.uleb128 0x15
	.string	"E"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x206
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_RXEXIT_Bits"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x16ac
	.uleb128 0x18
	.string	"_Ifx_QSPI_RXEXITD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x111
	.uaword	0x172a
	.uleb128 0x15
	.string	"E"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x206
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_RXEXITD_Bits"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x16f9
	.uleb128 0x18
	.string	"_Ifx_QSPI_SSOC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x117
	.uaword	0x178a
	.uleb128 0x15
	.string	"AOL"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x206
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"OEN"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x206
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_SSOC_Bits"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x1748
	.uleb128 0x18
	.string	"_Ifx_QSPI_STATUS1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x11e
	.uaword	0x183b
	.uleb128 0x15
	.string	"BITCOUNT"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x206
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x121
	.uaword	0x206
	.byte	0x4
	.byte	0x14
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BRDEN"
	.byte	0x7
	.uahalf	0x122
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BRD"
	.byte	0x7
	.uahalf	0x123
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SPDEN"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SPD"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_STATUS1_Bits"
	.byte	0x7
	.uahalf	0x126
	.uaword	0x17a5
	.uleb128 0x18
	.string	"_Ifx_QSPI_STATUS_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1984
	.uleb128 0x15
	.string	"ERRORFLAGS"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x206
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TXF"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RXF"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PT1F"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PT2F"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x130
	.uaword	0x206
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"USRF"
	.byte	0x7
	.uahalf	0x131
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TXFIFOLEVEL"
	.byte	0x7
	.uahalf	0x132
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RXFIFOLEVEL"
	.byte	0x7
	.uahalf	0x133
	.uaword	0x206
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"SLAVESEL"
	.byte	0x7
	.uahalf	0x134
	.uaword	0x206
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"RPV"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"TPV"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x206
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"PHASE"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x206
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_STATUS_Bits"
	.byte	0x7
	.uahalf	0x138
	.uaword	0x1859
	.uleb128 0x18
	.string	"_Ifx_QSPI_XXLCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x19eb
	.uleb128 0x15
	.string	"XDL"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x206
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.string	"BYTECOUNT"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x206
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_XXLCON_Bits"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x19a1
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x147
	.uaword	0x1a30
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x149
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x14b
	.uaword	0xb66
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_ACCEN0"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1a08
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x1a70
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x151
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x152
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x153
	.uaword	0xbb2
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_ACCEN1"
	.byte	0x7
	.uahalf	0x154
	.uaword	0x1a48
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x157
	.uaword	0x1ab0
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x159
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0xcd4
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_BACON"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x1a88
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x1aef
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x161
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x162
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x163
	.uaword	0xd21
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_BACONENTRY"
	.byte	0x7
	.uahalf	0x164
	.uaword	0x1ac7
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x167
	.uaword	0x1b33
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x16a
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x16b
	.uaword	0xe1b
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_CAPCON"
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x1b0b
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x1b73
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x172
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x173
	.uaword	0xeb2
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_CLC"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x1b4b
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x177
	.uaword	0x1bb0
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x179
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0xefc
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_DATAENTRY"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x1b88
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x1bf3
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x181
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x182
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x183
	.uaword	0xfcb
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_ECON"
	.byte	0x7
	.uahalf	0x184
	.uaword	0x1bcb
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x187
	.uaword	0x1c31
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x18a
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0x10a3
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_FLAGSCLEAR"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x1c09
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x1c75
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x191
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x192
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x193
	.uaword	0x132e
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_GLOBALCON"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x1c4d
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x197
	.uaword	0x1cb8
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x11ef
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_GLOBALCON1"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x1c90
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x1cfc
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x13a8
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_ID"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x1cd4
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x1d38
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x1415
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_KRST0"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x1d10
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x1d77
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x1470
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_KRST1"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x1d4f
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x1db6
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x14cd
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_KRSTCLR"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1d8e
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x1df7
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x151a
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_MIXENTRY"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x1dcf
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x1e39
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1cb
	.uaword	0x15ae
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_OCS"
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x1e11
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x1e76
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x1690
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_PISEL"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x1e4e
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x1eb5
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x16dc
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_RXEXIT"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x1e8d
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1df
	.uaword	0x1ef5
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0x172a
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_RXEXITD"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x1ecd
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x1f36
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x178a
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_SSOC"
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0x1f0e
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0x1f74
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1984
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_STATUS"
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x1f4c
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0x1fb4
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x183b
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_STATUS1"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x1f8c
	.uleb128 0x19
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x1ff5
	.uleb128 0x1a
	.string	"U"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x206
	.uleb128 0x1a
	.string	"I"
	.byte	0x7
	.uahalf	0x202
	.uaword	0xbf
	.uleb128 0x1a
	.string	"B"
	.byte	0x7
	.uahalf	0x203
	.uaword	0x19eb
	.byte	0
	.uleb128 0x17
	.string	"Ifx_QSPI_XXLCON"
	.byte	0x7
	.uahalf	0x204
	.uaword	0x1fcd
	.uleb128 0x1b
	.string	"_Ifx_QSPI"
	.uahalf	0x100
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x226c
	.uleb128 0x1c
	.string	"CLC"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x1b73
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1c
	.string	"PISEL"
	.byte	0x7
	.uahalf	0x212
	.uaword	0x1e76
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1c
	.string	"ID"
	.byte	0x7
	.uahalf	0x213
	.uaword	0x1cfc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x1c
	.string	"reserved_C"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1c
	.string	"GLOBALCON"
	.byte	0x7
	.uahalf	0x215
	.uaword	0x1c75
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x1c
	.string	"GLOBALCON1"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x1cb8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1c
	.string	"BACON"
	.byte	0x7
	.uahalf	0x217
	.uaword	0x1ab0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x1c
	.string	"reserved_1C"
	.byte	0x7
	.uahalf	0x218
	.uaword	0x226
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x1c
	.string	"ECON"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x226c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x1c
	.string	"STATUS"
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x1f74
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x1c
	.string	"STATUS1"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x1fb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x1c
	.string	"SSOC"
	.byte	0x7
	.uahalf	0x21c
	.uaword	0x1f36
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x1c
	.string	"reserved_4C"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x236
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x1c
	.string	"FLAGSCLEAR"
	.byte	0x7
	.uahalf	0x21e
	.uaword	0x1c31
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x1c
	.string	"XXLCON"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x1ff5
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1c
	.string	"MIXENTRY"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x1df7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x1c
	.string	"BACONENTRY"
	.byte	0x7
	.uahalf	0x221
	.uaword	0x1aef
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x1c
	.string	"DATAENTRY"
	.byte	0x7
	.uahalf	0x222
	.uaword	0x227c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x1c
	.string	"reserved_84"
	.byte	0x7
	.uahalf	0x223
	.uaword	0x216
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x1c
	.string	"RXEXIT"
	.byte	0x7
	.uahalf	0x224
	.uaword	0x1eb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x1c
	.string	"RXEXITD"
	.byte	0x7
	.uahalf	0x225
	.uaword	0x1ef5
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x1c
	.string	"reserved_98"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x236
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x1c
	.string	"CAPCON"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x1b33
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x1c
	.string	"reserved_A4"
	.byte	0x7
	.uahalf	0x228
	.uaword	0x228c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x1c
	.string	"OCS"
	.byte	0x7
	.uahalf	0x229
	.uaword	0x1e39
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x1c
	.string	"KRSTCLR"
	.byte	0x7
	.uahalf	0x22a
	.uaword	0x1db6
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x1c
	.string	"KRST1"
	.byte	0x7
	.uahalf	0x22b
	.uaword	0x1d77
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x1c
	.string	"KRST0"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x1d38
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x1c
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x22d
	.uaword	0x1a70
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x1c
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x1a30
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0x7
	.uaword	0x1bf3
	.uaword	0x227c
	.uleb128 0x8
	.uaword	0xaa
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.uaword	0x1bb0
	.uaword	0x228c
	.uleb128 0x8
	.uaword	0xaa
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.uaword	0xe2
	.uaword	0x229c
	.uleb128 0x8
	.uaword	0xaa
	.byte	0x43
	.byte	0
	.uleb128 0xe
	.uaword	0x200d
	.uleb128 0xf
	.byte	0x4
	.uaword	0x229c
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x3c
	.uaword	0x23ff
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_0"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_1"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_2"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_3"
	.sleb128 3
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_4"
	.sleb128 4
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_5"
	.sleb128 5
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_6"
	.sleb128 6
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_7"
	.sleb128 7
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_8"
	.sleb128 8
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_9"
	.sleb128 9
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_10"
	.sleb128 10
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_11"
	.sleb128 11
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_12"
	.sleb128 12
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_13"
	.sleb128 13
	.uleb128 0x6
	.string	"IfxQspi_ChannelId_14"
	.sleb128 14
	.byte	0
	.uleb128 0x3
	.string	"IfxQspi_ChannelId"
	.byte	0x2
	.byte	0x4c
	.uaword	0x22a7
	.uleb128 0x1d
	.string	"IfxQspi_getModuleFrequency"
	.byte	0x2
	.uahalf	0x34f
	.byte	0x1
	.uaword	0x15d
	.byte	0x3
	.uaword	0x244e
	.uleb128 0x1e
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x34f
	.uaword	0x22a1
	.byte	0
	.uleb128 0x1d
	.string	"IfxQspi_getTimeQuantaFrequency"
	.byte	0x2
	.uahalf	0x368
	.byte	0x1
	.uaword	0x15d
	.byte	0x3
	.uaword	0x2488
	.uleb128 0x1e
	.uaword	.LASF11
	.byte	0x2
	.uahalf	0x368
	.uaword	0x22a1
	.byte	0
	.uleb128 0x1f
	.string	"__min"
	.byte	0x3
	.byte	0x78
	.byte	0x1
	.uaword	0x132
	.byte	0x3
	.uaword	0x24b9
	.uleb128 0x20
	.string	"a"
	.byte	0x3
	.byte	0x78
	.uaword	0x132
	.uleb128 0x20
	.string	"b"
	.byte	0x3
	.byte	0x78
	.uaword	0x132
	.uleb128 0x21
	.string	"res"
	.byte	0x3
	.byte	0x7a
	.uaword	0x132
	.byte	0
	.uleb128 0x1f
	.string	"__max"
	.byte	0x3
	.byte	0x5e
	.byte	0x1
	.uaword	0x132
	.byte	0x3
	.uaword	0x24ea
	.uleb128 0x20
	.string	"a"
	.byte	0x3
	.byte	0x5e
	.uaword	0x132
	.uleb128 0x20
	.string	"b"
	.byte	0x3
	.byte	0x5e
	.uaword	0x132
	.uleb128 0x21
	.string	"res"
	.byte	0x3
	.byte	0x60
	.uaword	0x132
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IfxQspi_calcRealBaudrate"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	0x15d
	.uaword	.LFB275
	.uaword	.LFE275
	.uaword	.LLST0
	.uaword	0x2567
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x1
	.byte	0x23
	.uaword	0x22a1
	.uaword	.LLST1
	.uleb128 0x23
	.uaword	.LASF12
	.byte	0x1
	.byte	0x23
	.uaword	0x23ff
	.uaword	.LLST2
	.uleb128 0x24
	.string	"cs"
	.byte	0x1
	.byte	0x25
	.uaword	0xbf
	.byte	0x1
	.byte	0x58
	.uleb128 0x25
	.string	"fQspi"
	.byte	0x1
	.byte	0x26
	.uaword	0x15d
	.uaword	.LLST3
	.uleb128 0x24
	.string	"econ"
	.byte	0x1
	.byte	0x27
	.uaword	0x226c
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxQspi_calculateExtendedConfigurationValue"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	0x140
	.uaword	.LFB277
	.uaword	.LFE277
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x271a
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x1
	.byte	0x49
	.uaword	0x22a1
	.uaword	.LLST4
	.uleb128 0x27
	.string	"cs"
	.byte	0x1
	.byte	0x49
	.uaword	0x271a
	.uaword	.LLST5
	.uleb128 0x27
	.string	"chConfig"
	.byte	0x1
	.byte	0x49
	.uaword	0x271f
	.uaword	.LLST6
	.uleb128 0x25
	.string	"econ"
	.byte	0x1
	.byte	0x4b
	.uaword	0x1bf3
	.uaword	.LLST7
	.uleb128 0x25
	.string	"tQspi"
	.byte	0x1
	.byte	0x4e
	.uaword	0x14e
	.uaword	.LLST8
	.uleb128 0x24
	.string	"tBaud"
	.byte	0x1
	.byte	0x4f
	.uaword	0x14e
	.byte	0x1
	.byte	0x58
	.uleb128 0x28
	.string	"abcMin"
	.byte	0x1
	.byte	0x50
	.uaword	0xbf
	.byte	0x2
	.uleb128 0x28
	.string	"abcMax"
	.byte	0x1
	.byte	0x51
	.uaword	0xbf
	.byte	0x8
	.uleb128 0x25
	.string	"q"
	.byte	0x1
	.byte	0x52
	.uaword	0xbf
	.uaword	.LLST9
	.uleb128 0x25
	.string	"bestQ"
	.byte	0x1
	.byte	0x52
	.uaword	0xbf
	.uaword	.LLST10
	.uleb128 0x25
	.string	"abc"
	.byte	0x1
	.byte	0x52
	.uaword	0xbf
	.uaword	.LLST11
	.uleb128 0x25
	.string	"bestAbc"
	.byte	0x1
	.byte	0x52
	.uaword	0xbf
	.uaword	.LLST12
	.uleb128 0x25
	.string	"error"
	.byte	0x1
	.byte	0x53
	.uaword	0x14e
	.uaword	.LLST13
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x1
	.byte	0x53
	.uaword	0x14e
	.uaword	.LLST14
	.uleb128 0x25
	.string	"tTmp"
	.byte	0x1
	.byte	0x54
	.uaword	0x14e
	.uaword	.LLST15
	.uleb128 0x21
	.string	"tBaudTmp"
	.byte	0x1
	.byte	0x54
	.uaword	0x14e
	.uleb128 0x28
	.string	"done"
	.byte	0x1
	.byte	0x55
	.uaword	0x170
	.byte	0
	.uleb128 0x2a
	.uaword	0x244e
	.uaword	.LBB15
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4e
	.uaword	0x26e4
	.uleb128 0x2b
	.uaword	0x247b
	.uaword	.LLST16
	.uleb128 0x2c
	.uaword	0x2418
	.uaword	.LBB17
	.uaword	.LBE17
	.byte	0x2
	.uahalf	0x36a
	.byte	0
	.uleb128 0x2d
	.uaword	0x2488
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.byte	0x7f
	.uleb128 0x2b
	.uaword	0x24a4
	.uaword	.LLST17
	.uleb128 0x2b
	.uaword	0x249b
	.uaword	.LLST18
	.uleb128 0x2e
	.uaword	.LBB24
	.uaword	.LBE24
	.uleb128 0x2f
	.uaword	0x24ad
	.uaword	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0xd5
	.uleb128 0xf
	.byte	0x4
	.uaword	0x2725
	.uleb128 0x30
	.uaword	0x465
	.uleb128 0x26
	.byte	0x1
	.string	"IfxQspi_calculatePrescaler"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	0x140
	.uaword	.LFB278
	.uaword	.LFE278
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x280a
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x1
	.byte	0x89
	.uaword	0x22a1
	.uaword	.LLST20
	.uleb128 0x23
	.uaword	.LASF2
	.byte	0x1
	.byte	0x89
	.uaword	0x15d
	.uaword	.LLST21
	.uleb128 0x24
	.string	"error"
	.byte	0x1
	.byte	0x8b
	.uaword	0x15d
	.byte	0x1
	.byte	0x5f
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x1
	.byte	0x8b
	.uaword	0x15d
	.uaword	.LLST22
	.uleb128 0x24
	.string	"halfBaud"
	.byte	0x1
	.byte	0x8c
	.uaword	0x15d
	.byte	0x1
	.byte	0x58
	.uleb128 0x24
	.string	"fQspiIn"
	.byte	0x1
	.byte	0x8d
	.uaword	0x15d
	.byte	0x1
	.byte	0x50
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.uaword	0x140
	.uaword	.LLST23
	.uleb128 0x25
	.string	"bestPre"
	.byte	0x1
	.byte	0x8f
	.uaword	0x140
	.uaword	.LLST24
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x20
	.uaword	0x27fa
	.uleb128 0x21
	.string	"tempHalfBaud"
	.byte	0x1
	.byte	0x93
	.uaword	0x15d
	.byte	0
	.uleb128 0x32
	.uaword	0x2418
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.byte	0x8d
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxQspi_calculateBasicConfigurationValue"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	0x140
	.uaword	.LFB276
	.uaword	.LFE276
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x28ab
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x1
	.byte	0x30
	.uaword	0x22a1
	.uaword	.LLST25
	.uleb128 0x23
	.uaword	.LASF12
	.byte	0x1
	.byte	0x30
	.uaword	0x28ab
	.uaword	.LLST26
	.uleb128 0x27
	.string	"chMode"
	.byte	0x1
	.byte	0x30
	.uaword	0x28b0
	.uaword	.LLST27
	.uleb128 0x23
	.uaword	.LASF2
	.byte	0x1
	.byte	0x30
	.uaword	0x28bb
	.uaword	.LLST28
	.uleb128 0x25
	.string	"bacon"
	.byte	0x1
	.byte	0x32
	.uaword	0x1ab0
	.uaword	.LLST29
	.uleb128 0x25
	.string	"pre"
	.byte	0x1
	.byte	0x35
	.uaword	0x140
	.uaword	.LLST30
	.byte	0
	.uleb128 0x30
	.uaword	0x23ff
	.uleb128 0xf
	.byte	0x4
	.uaword	0x28b6
	.uleb128 0x30
	.uaword	0x8b5
	.uleb128 0x30
	.uaword	0x15d
	.uleb128 0x26
	.byte	0x1
	.string	"IfxQspi_calculateTimeQuantumLength"
	.byte	0x1
	.byte	0xa1
	.byte	0x1
	.uaword	0x140
	.uaword	.LFB279
	.uaword	.LFE279
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x293f
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x1
	.byte	0xa1
	.uaword	0x22a1
	.uaword	.LLST31
	.uleb128 0x27
	.string	"maxBaudrate"
	.byte	0x1
	.byte	0xa1
	.uaword	0x15d
	.uaword	.LLST32
	.uleb128 0x25
	.string	"divider"
	.byte	0x1
	.byte	0xa3
	.uaword	0x15d
	.uaword	.LLST33
	.uleb128 0x21
	.string	"tq"
	.byte	0x1
	.byte	0xa4
	.uaword	0x140
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxQspi_read16"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB280
	.uaword	.LFE280
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x299e
	.uleb128 0x34
	.uaword	.LASF11
	.byte	0x1
	.byte	0xa9
	.uaword	0x22a1
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa9
	.uaword	0x299e
	.uaword	.LLST34
	.uleb128 0x23
	.uaword	.LASF14
	.byte	0x1
	.byte	0xa9
	.uaword	0x1c1
	.uaword	.LLST35
	.uleb128 0x35
	.uaword	.LASF15
	.byte	0x1
	.byte	0xab
	.uaword	0x29a4
	.byte	0x4
	.byte	0x84
	.sleb128 144
	.byte	0x9f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x10e
	.uleb128 0xf
	.byte	0x4
	.uaword	0x29aa
	.uleb128 0xe
	.uaword	0x1eb5
	.uleb128 0x33
	.byte	0x1
	.string	"IfxQspi_read32"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.uaword	.LFB281
	.uaword	.LFE281
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2a0e
	.uleb128 0x34
	.uaword	.LASF11
	.byte	0x1
	.byte	0xb5
	.uaword	0x22a1
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF3
	.byte	0x1
	.byte	0xb5
	.uaword	0x2a0e
	.uaword	.LLST36
	.uleb128 0x23
	.uaword	.LASF14
	.byte	0x1
	.byte	0xb5
	.uaword	0x1c1
	.uaword	.LLST37
	.uleb128 0x35
	.uaword	.LASF15
	.byte	0x1
	.byte	0xb7
	.uaword	0x29a4
	.byte	0x4
	.byte	0x84
	.sleb128 144
	.byte	0x9f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x140
	.uleb128 0x33
	.byte	0x1
	.string	"IfxQspi_read8"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.uaword	.LFB282
	.uaword	.LFE282
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2a74
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x1
	.byte	0xc1
	.uaword	0x22a1
	.uaword	.LLST38
	.uleb128 0x23
	.uaword	.LASF3
	.byte	0x1
	.byte	0xc1
	.uaword	0x2a74
	.uaword	.LLST39
	.uleb128 0x23
	.uaword	.LASF14
	.byte	0x1
	.byte	0xc1
	.uaword	0x1c1
	.uaword	.LLST40
	.uleb128 0x35
	.uaword	.LASF15
	.byte	0x1
	.byte	0xc3
	.uaword	0x29a4
	.byte	0x4
	.byte	0x84
	.sleb128 144
	.byte	0x9f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0xd5
	.uleb128 0x26
	.byte	0x1
	.string	"IfxQspi_recalcBasicConfiguration"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.uaword	0x140
	.uaword	.LFB283
	.uaword	.LFE283
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2b0f
	.uleb128 0x27
	.string	"oldBACON"
	.byte	0x1
	.byte	0xcd
	.uaword	0x140
	.uaword	.LLST41
	.uleb128 0x36
	.string	"numOfData"
	.byte	0x1
	.byte	0xcd
	.uaword	0x1c1
	.byte	0x1
	.byte	0x55
	.uleb128 0x36
	.string	"shortData"
	.byte	0x1
	.byte	0xcd
	.uaword	0x170
	.byte	0x1
	.byte	0x56
	.uleb128 0x36
	.string	"lastData"
	.byte	0x1
	.byte	0xcd
	.uaword	0x170
	.byte	0x1
	.byte	0x57
	.uleb128 0x24
	.string	"bacon"
	.byte	0x1
	.byte	0xcf
	.uaword	0x1ab0
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxQspi_resetModule"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.uaword	.LFB284
	.uaword	.LFE284
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2b59
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0x1
	.byte	0xdd
	.uaword	0x22a1
	.uaword	.LLST42
	.uleb128 0x25
	.string	"passwd"
	.byte	0x1
	.byte	0xdf
	.uaword	0x10e
	.uaword	.LLST43
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxQspi_setSlaveSelectOutputControl"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.uaword	.LFB285
	.uaword	.LFE285
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2bf9
	.uleb128 0x34
	.uaword	.LASF11
	.byte	0x1
	.byte	0xef
	.uaword	0x22a1
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF12
	.byte	0x1
	.byte	0xef
	.uaword	0x23ff
	.uaword	.LLST44
	.uleb128 0x36
	.string	"outputEnable"
	.byte	0x1
	.byte	0xef
	.uaword	0x170
	.byte	0x1
	.byte	0x55
	.uleb128 0x36
	.string	"activeLevel"
	.byte	0x1
	.byte	0xef
	.uaword	0x170
	.byte	0x1
	.byte	0x56
	.uleb128 0x25
	.string	"mask"
	.byte	0x1
	.byte	0xf1
	.uaword	0x10e
	.uaword	.LLST45
	.uleb128 0x25
	.string	"ssoc"
	.byte	0x1
	.byte	0xf3
	.uaword	0x1f36
	.uaword	.LLST46
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IfxQspi_write16"
	.byte	0x1
	.uahalf	0x10c
	.byte	0x1
	.uaword	.LFB286
	.uaword	.LFE286
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2c7c
	.uleb128 0x38
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x22a1
	.uaword	.LLST47
	.uleb128 0x38
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x23ff
	.uaword	.LLST48
	.uleb128 0x38
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x299e
	.uaword	.LLST49
	.uleb128 0x38
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x1c1
	.uaword	.LLST50
	.uleb128 0x39
	.string	"cs"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0xbf
	.uaword	.LLST51
	.uleb128 0x3a
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x2c7c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uaword	0x2c82
	.uleb128 0xe
	.uaword	0x1bb0
	.uleb128 0x37
	.byte	0x1
	.string	"IfxQspi_write32"
	.byte	0x1
	.uahalf	0x119
	.byte	0x1
	.uaword	.LFB287
	.uaword	.LFE287
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2d0a
	.uleb128 0x38
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x119
	.uaword	0x22a1
	.uaword	.LLST52
	.uleb128 0x38
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x119
	.uaword	0x23ff
	.uaword	.LLST53
	.uleb128 0x38
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x119
	.uaword	0x2a0e
	.uaword	.LLST54
	.uleb128 0x38
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x119
	.uaword	0x1c1
	.uaword	.LLST55
	.uleb128 0x39
	.string	"cs"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0xbf
	.uaword	.LLST56
	.uleb128 0x3a
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x2c7c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IfxQspi_write8"
	.byte	0x1
	.uahalf	0x126
	.byte	0x1
	.uaword	.LFB288
	.uaword	.LFE288
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x2d8c
	.uleb128 0x38
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x126
	.uaword	0x22a1
	.uaword	.LLST57
	.uleb128 0x38
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x126
	.uaword	0x23ff
	.uaword	.LLST58
	.uleb128 0x38
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x126
	.uaword	0x2a74
	.uaword	.LLST59
	.uleb128 0x38
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x126
	.uaword	0x1c1
	.uaword	.LLST60
	.uleb128 0x39
	.string	"cs"
	.byte	0x1
	.uahalf	0x128
	.uaword	0xbf
	.uaword	.LLST61
	.uleb128 0x3a
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x129
	.uaword	0x2c7c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x3b
	.string	"Assert_verboseLevel"
	.byte	0x8
	.byte	0x7b
	.uaword	0x140
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x27
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uaword	.LFB275
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE275
	.uahalf	0x2
	.byte	0x8a
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE275
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6-1
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL19
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL32
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL18
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL30
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x49742400
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL15
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL30
	.uaword	.LFE277
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL22
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL33
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL33
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x4b189680
	.uaword	.LVL39
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE278
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL41
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42
	.uaword	.LFE276
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL41
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL43-1
	.uaword	.LFE276
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL41
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL50
	.uaword	.LFE276
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL52-1
	.uaword	.LFE279
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL60
	.uaword	.LFE280
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LFE280
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL62
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL66
	.uaword	.LFE281
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE281
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL72
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL68
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL74
	.uaword	.LFE282
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LFE282
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL78
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL79-1
	.uaword	.LFE284
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL81-1
	.uaword	.LFE284
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL85
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL91
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96
	.uaword	.LFE285
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL97
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL97
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL104
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL97
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LFE286
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL99
	.uaword	.LFE286
	.uahalf	0x3
	.byte	0x74
	.sleb128 -25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL106
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL106
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL113
	.uaword	.LFE287
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL106
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LFE287
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL108
	.uaword	.LFE287
	.uahalf	0x3
	.byte	0x74
	.sleb128 -25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL115
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL115
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL122
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL115
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LFE288
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL117
	.uaword	.LFE288
	.uahalf	0x3
	.byte	0x74
	.sleb128 -25
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x84
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB275
	.uaword	.LFE275-.LFB275
	.uaword	.LFB277
	.uaword	.LFE277-.LFB277
	.uaword	.LFB278
	.uaword	.LFE278-.LFB278
	.uaword	.LFB276
	.uaword	.LFE276-.LFB276
	.uaword	.LFB279
	.uaword	.LFE279-.LFB279
	.uaword	.LFB280
	.uaword	.LFE280-.LFB280
	.uaword	.LFB281
	.uaword	.LFE281-.LFB281
	.uaword	.LFB282
	.uaword	.LFE282-.LFB282
	.uaword	.LFB283
	.uaword	.LFE283-.LFB283
	.uaword	.LFB284
	.uaword	.LFE284-.LFB284
	.uaword	.LFB285
	.uaword	.LFE285-.LFB285
	.uaword	.LFB286
	.uaword	.LFE286-.LFB286
	.uaword	.LFB287
	.uaword	.LFE287-.LFB287
	.uaword	.LFB288
	.uaword	.LFE288-.LFB288
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	0
	.uaword	0
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	0
	.uaword	0
	.uaword	.LFB275
	.uaword	.LFE275
	.uaword	.LFB277
	.uaword	.LFE277
	.uaword	.LFB278
	.uaword	.LFE278
	.uaword	.LFB276
	.uaword	.LFE276
	.uaword	.LFB279
	.uaword	.LFE279
	.uaword	.LFB280
	.uaword	.LFE280
	.uaword	.LFB281
	.uaword	.LFE281
	.uaword	.LFB282
	.uaword	.LFE282
	.uaword	.LFB283
	.uaword	.LFE283
	.uaword	.LFB284
	.uaword	.LFE284
	.uaword	.LFB285
	.uaword	.LFE285
	.uaword	.LFB286
	.uaword	.LFE286
	.uaword	.LFB287
	.uaword	.LFE287
	.uaword	.LFB288
	.uaword	.LFE288
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF4:
	.string	"reserved_0"
.LASF10:
	.string	"reserved_1"
.LASF5:
	.string	"reserved_2"
.LASF15:
	.string	"rxFifo"
.LASF9:
	.string	"reserved_8"
.LASF0:
	.string	"driver"
.LASF16:
	.string	"dataEntry"
.LASF7:
	.string	"reserved_13"
.LASF6:
	.string	"reserved_15"
.LASF3:
	.string	"data"
.LASF2:
	.string	"baudrate"
.LASF14:
	.string	"count"
.LASF12:
	.string	"channelId"
.LASF1:
	.string	"errorChecks"
.LASF8:
	.string	"reserved_30"
.LASF13:
	.string	"bestError"
.LASF11:
	.string	"qspi"
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxScuCcu_getMaxFrequency,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
