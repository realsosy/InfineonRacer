	.file	"IfxVadc_Adc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxVadc_Adc_deInitGroup,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_deInitGroup
	.type	IfxVadc_Adc_deInitGroup, @function
IfxVadc_Adc_deInitGroup:
.LFB354:
	.file 1 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c"
	.loc 1 109 0
.LVL0:
.LBB228:
.LBB229:
	.file 2 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
	.loc 2 1246 0
	ld.a	%a12, [%a4]0
.LVL1:
.LBE229:
.LBE228:
	.loc 1 116 0
	ld.w	%d8, [%a4] 8
.LBB230:
.LBB231:
	.loc 2 1196 0
	ld.a	%a13, [%a4] 4
.LVL2:
.LBE231:
.LBE230:
	.loc 1 116 0
	addi	%d8, %d8, 16
	mov.aa	%a4, %a12
.LVL3:
	mov	%d4, %d8
	call	IfxVadc_enableAccess
.LVL4:
.LBB232:
.LBB233:
	.file 3 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
	.loc 3 2159 0
	ld.w	%d15, [%a13]0
.LBE233:
.LBE232:
	.loc 1 118 0
	mov.aa	%a4, %a12
.LBB236:
.LBB234:
	.loc 3 2159 0
	andn	%d15, %d15, ~(-4)
.LBE234:
.LBE236:
	.loc 1 118 0
	mov	%d4, %d8
.LBB237:
.LBB235:
	.loc 3 2159 0
	st.w	[%a13]0, %d15
.LBE235:
.LBE237:
	.loc 1 118 0
	j	IfxVadc_disableAccess
.LFE354:
	.size	IfxVadc_Adc_deInitGroup, .-IfxVadc_Adc_deInitGroup
.section .text.IfxVadc_Adc_disableModule,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_disableModule
	.type	IfxVadc_Adc_disableModule, @function
IfxVadc_Adc_disableModule:
.LFB355:
	.loc 1 123 0
.LVL5:
	.loc 1 123 0
	mov.aa	%a15, %a4
.LVL6:
.LBB238:
.LBB239:
	.loc 3 1757 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL7:
	.loc 3 1758 0
	mov	%d4, %d2
	.loc 3 1757 0
	mov	%d8, %d2
.LVL8:
	.loc 3 1758 0
	call	IfxScuWdt_clearCpuEndinit
.LVL9:
	.loc 3 1759 0
	ld.w	%d15, [%a15]0
	.loc 3 1760 0
	mov	%d4, %d8
	.loc 3 1759 0
	insert	%d15, %d15, 1, 0, 1
	st.w	[%a15]0, %d15
	.loc 3 1760 0
	j	IfxScuWdt_setCpuEndinit
.LBE239:
.LBE238:
.LFE355:
	.size	IfxVadc_Adc_disableModule, .-IfxVadc_Adc_disableModule
.section .text.IfxVadc_Adc_getChannelConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_getChannelConfig
	.type	IfxVadc_Adc_getChannelConfig, @function
IfxVadc_Adc_getChannelConfig:
.LFB356:
	.loc 1 129 0
.LVL10:
	.loc 1 130 0
	ld.a	%a2, [%a4] 8
.LVL11:
	.loc 1 131 0
	ld.w	%d2, [%a4]0
	.loc 1 129 0
	mov.aa	%a12, %a4
.LBB240:
.LBB241:
	.loc 2 1196 0
	ld.a	%a13, [%a2] 4
.LVL12:
.LBE241:
.LBE240:
.LBB242:
.LBB243:
	.loc 3 1877 0
	addi	%d15, %d2, 96
.LBE243:
.LBE242:
	.loc 1 134 0
	st.a	[%a5] 56, %a2
.LVL13:
.LBB246:
.LBB244:
	.loc 3 1877 0
	addsc.a	%a2, %a13, %d15, 2
.LBE244:
.LBE246:
	.loc 1 133 0
	st.w	[%a5] 24, %d2
.LBB247:
.LBB245:
	.loc 3 1877 0
	ld.w	%d15, [%a2]0
.LVL14:
.LBE245:
.LBE247:
	.loc 1 129 0
	mov.aa	%a15, %a5
	.loc 1 140 0
	and	%d3, %d15, 3
	st.w	[%a5] 28, %d3
	.loc 1 141 0
	extr.u	%d3, %d15, 11, 1
	st.w	[%a5] 32, %d3
	.loc 1 142 0
	extr.u	%d3, %d15, 16, 4
	st.w	[%a5] 36, %d3
	.loc 1 143 0
	extr.u	%d3, %d15, 20, 1
	st.b	[%a5]0, %d3
	.loc 1 144 0
	extr.u	%d3, %d15, 4, 2
	st.w	[%a5] 40, %d3
	.loc 1 145 0
	extr.u	%d3, %d15, 6, 2
	st.w	[%a5] 44, %d3
	.loc 1 146 0
	extr.u	%d3, %d15, 12, 4
	st.w	[%a5] 48, %d3
	.loc 1 147 0
	extr.u	%d3, %d15, 8, 2
	st.w	[%a5] 52, %d3
	.loc 1 148 0
	extr.u	%d3, %d15, 10, 1
	.loc 1 149 0
	extr.u	%d15, %d15, 21, 1
.LVL15:
	.loc 1 148 0
	st.b	[%a5] 1, %d3
	.loc 1 149 0
	st.b	[%a5] 3, %d15
.LVL16:
.LBB248:
.LBB249:
	.loc 3 1833 0
	ld.w	%d15, [%a13] 8
.LVL17:
.LBE249:
.LBE248:
	.loc 1 151 0
	extr.u	%d15, %d15, %d2, 1
.LVL18:
	xor	%d15, %d15, 1
	st.b	[%a5] 2, %d15
	.loc 1 154 0
	ld.a	%a2, [%a4] 8
	.loc 1 156 0
	ge	%d15, %d2, 8
	.loc 1 154 0
	ld.w	%d9, [%a2] 8
.LVL19:
	.loc 1 156 0
	jnz	%d15, .L4
.LVL20:
	.loc 1 158 0
	ld.w	%d8, [%a4]0
.LBB250:
.LBB251:
	.loc 3 1907 0
	ld.w	%d15, [%a13] 288
.LVL21:
.LBE251:
.LBE250:
	.loc 1 158 0
	sh	%d8, 2
	extr.u	%d8, %d15, %d8, 4
.LVL22:
	.loc 1 167 0
	mov	%d15, 1024
.LVL23:
	.loc 1 165 0
	mov	%e4, %d8, %d9
	call	IfxVadc_getSrcAddress
.LVL24:
	.loc 1 167 0
	ld.w	%d2, [%a2]0
	and	%d15, %d2
	jz	%d15, .L6
.LVL25:
.L14:
	.loc 1 169 0
	st.w	[%a15] 20, %d8
	.loc 1 170 0
	ld.w	%d15, [%a2]0
	and	%d15, 255
	st.h	[%a15] 6, %d15
	.loc 1 171 0
	ld.w	%d15, [%a2]0
	extr.u	%d15, %d15, 11, 1
	st.w	[%a15] 12, %d15
	.loc 1 182 0
	ld.w	%d15, [%a15] 36
	jge.u	%d15, 8, .L8
.L15:
.LVL26:
	.loc 1 184 0
	ld.w	%d8, [%a12]0
.LVL27:
.LBB252:
.LBB253:
	.loc 3 1891 0
	ld.w	%d15, [%a13] 304
.LVL28:
.LBE253:
.LBE252:
	.loc 1 184 0
	sh	%d8, 2
	extr.u	%d8, %d15, %d8, 4
.LVL29:
	.loc 1 193 0
	mov	%d15, 1024
.LVL30:
	.loc 1 191 0
	mov	%e4, %d8, %d9
	call	IfxVadc_getSrcAddress
.LVL31:
	.loc 1 193 0
	ld.w	%d2, [%a2]0
	and	%d15, %d2
	jnz	%d15, .L13
.LVL32:
.L10:
	.loc 1 201 0
	st.w	[%a15] 16, %d15
	.loc 1 202 0
	st.h	[%a15] 4, %d15
	.loc 1 203 0
	st.w	[%a15] 8, %d15
	ret
.LVL33:
.L4:
	.loc 1 162 0
	ld.w	%d8, [%a4]0
.LBB254:
.LBB255:
	.loc 3 1915 0
	ld.w	%d15, [%a13] 292
.LVL34:
.LBE255:
.LBE254:
	.loc 1 162 0
	add	%d8, -8
	sh	%d8, 2
	extr.u	%d8, %d15, %d8, 4
.LVL35:
	.loc 1 167 0
	mov	%d15, 1024
.LVL36:
	.loc 1 165 0
	mov	%e4, %d8, %d9
	call	IfxVadc_getSrcAddress
.LVL37:
	.loc 1 167 0
	ld.w	%d2, [%a2]0
	and	%d15, %d2
	jnz	%d15, .L14
.LVL38:
.L6:
	.loc 1 175 0
	st.w	[%a15] 20, %d15
	.loc 1 176 0
	st.h	[%a15] 6, %d15
	.loc 1 177 0
	st.w	[%a15] 12, %d15
	.loc 1 182 0
	ld.w	%d15, [%a15] 36
	jlt.u	%d15, 8, .L15
.L8:
.LVL39:
	.loc 1 188 0
	ld.w	%d8, [%a12]0
.LVL40:
.LBB256:
.LBB257:
	.loc 3 1899 0
	ld.w	%d15, [%a13] 308
.LVL41:
.LBE257:
.LBE256:
	.loc 1 188 0
	add	%d8, -8
	sh	%d8, 2
	extr.u	%d8, %d15, %d8, 4
.LVL42:
	.loc 1 193 0
	mov	%d15, 1024
.LVL43:
	.loc 1 191 0
	mov	%e4, %d8, %d9
	call	IfxVadc_getSrcAddress
.LVL44:
	.loc 1 193 0
	ld.w	%d2, [%a2]0
	and	%d15, %d2
	jz	%d15, .L10
.LVL45:
.L13:
	.loc 1 195 0
	st.w	[%a15] 16, %d8
	.loc 1 196 0
	ld.w	%d15, [%a2]0
	and	%d15, 255
	st.h	[%a15] 4, %d15
	.loc 1 197 0
	ld.w	%d15, [%a2]0
	extr.u	%d15, %d15, 11, 1
	st.w	[%a15] 8, %d15
	ret
.LFE356:
	.size	IfxVadc_Adc_getChannelConfig, .-IfxVadc_Adc_getChannelConfig
.section .text.IfxVadc_Adc_getChannelConversionTime,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_getChannelConversionTime
	.type	IfxVadc_Adc_getChannelConversionTime, @function
IfxVadc_Adc_getChannelConversionTime:
.LFB357:
	.loc 1 209 0
.LVL46:
	.loc 1 210 0
	ld.a	%a15, [%a4] 8
	ld.w	%d15, [%a4]0
	.loc 1 209 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 210 0
	ld.a	%a2, [%a15] 4
.LVL47:
	ld.w	%d10, [%a15] 8
.LBB258:
.LBB259:
	.loc 3 1884 0
	addi	%d15, %d15, 96
.LBE259:
.LBE258:
	.loc 1 210 0
	ld.a	%a15, [%a15]0
.LBB263:
.LBB260:
	.loc 3 1884 0
	addsc.a	%a2, %a2, %d15, 2
.LBE260:
.LBE263:
	.loc 1 209 0
	mov	%d9, %d4
.LBB264:
.LBB261:
	.loc 3 1884 0
	ld.w	%d8, [%a2]0
.LBE261:
.LBE264:
	.loc 1 210 0
	mov.aa	%a4, %a15
.LVL48:
	call	IfxVadc_getAdcAnalogFrequency
.LVL49:
	mov	%d15, %d2
.LVL50:
.LBB265:
.LBB262:
	.loc 3 1884 0
	and	%d8, %d8, 3
.LBE262:
.LBE265:
	.loc 1 210 0
	call	IfxVadc_getAdcModuleFrequency
	mov.aa	%a4, %a15
	mov	%e4, %d8, %d10
	mov	%e6, %d2, %d15
	st.w	[%SP]0, %d9
	.loc 1 211 0
	j	IfxVadc_getChannelConversionTime
.LFE357:
	.size	IfxVadc_Adc_getChannelConversionTime, .-IfxVadc_Adc_getChannelConversionTime
.section .text.IfxVadc_Adc_getGroupConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_getGroupConfig
	.type	IfxVadc_Adc_getGroupConfig, @function
IfxVadc_Adc_getGroupConfig:
.LFB358:
	.loc 1 215 0
.LVL51:
	.loc 1 218 0
	ld.a	%a14, [%a4]0
	.loc 1 217 0
	ld.a	%a12, [%a4] 4
.LVL52:
	.loc 1 215 0
	mov.aa	%a13, %a4
	.loc 1 219 0
	mov.aa	%a4, %a14
.LVL53:
	.loc 1 215 0
	mov.aa	%a15, %a5
	.loc 1 219 0
	call	IfxVadc_getAdcAnalogFrequency
.LVL54:
	.loc 1 221 0
	ld.w	%d15, [%a13] 8
	st.w	[%a15] 4, %d15
	.loc 1 222 0
	st.a	[%a15]0, %a13
.LVL55:
.LBB266:
.LBB267:
	.loc 3 1826 0
	ld.w	%d15, [%a12]0
	extr.u	%d15, %d15, 4, 2
	st.w	[%a15] 116, %d15
.LVL56:
.LBE267:
.LBE266:
.LBB268:
.LBB269:
	.loc 3 1983 0
	ld.w	%d15, [%a12] 32
	extr.u	%d15, %d15, 8, 3
	st.w	[%a15] 16, %d15
.LVL57:
.LBE269:
.LBE268:
.LBB271:
.LBB272:
	.loc 3 2000 0
	ld.w	%d3, [%a12] 32
	and	%d3, %d3, 31
.LVL58:
	.loc 3 2002 0
	lt.u	%d15, %d3, 17
	jnz	%d15, .L18
	.loc 3 2004 0
	addi	%d3, %d3, -15
.LVL59:
	sh	%d3, 4
.LVL60:
.L18:
	.loc 3 2007 0
	add	%d3, 2
.LVL61:
	utof	%d3, %d3
.LVL62:
	div.f	%d3, %d3, %d2
.LBE272:
.LBE271:
	.loc 1 229 0
	st.w	[%a15] 12, %d3
.LVL63:
.LBB275:
.LBB270:
	.loc 3 1983 0
	ld.w	%d15, [%a12] 36
	extr.u	%d15, %d15, 8, 3
	st.w	[%a15] 24, %d15
.LVL64:
.LBE270:
.LBE275:
.LBB276:
.LBB273:
	.loc 3 2000 0
	ld.w	%d15, [%a12] 36
	and	%d15, %d15, 31
.LVL65:
	.loc 3 2002 0
	lt.u	%d3, %d15, 17
	jz	%d3, .L39
.L19:
	.loc 3 2007 0
	add	%d15, 2
.LVL66:
	utof	%d15, %d15
.LVL67:
	div.f	%d2, %d15, %d2
.LVL68:
.LBE273:
.LBE276:
	.loc 1 229 0
	st.w	[%a15] 20, %d2
.LVL69:
.LBB277:
.LBB278:
	.loc 3 2153 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 25, 1
	and	%d2, %d15, 255
.LBE278:
.LBE277:
	.loc 1 232 0
	jeq	%d2, 1, .L40
	.loc 1 255 0
	mov	%d15, 0
	st.b	[%a15] 28, %d15
	.loc 1 256 0
	mov	%d15, 0
	st.w	[%a15] 40, %d15
	.loc 1 257 0
	st.w	[%a15] 32, %d15
	.loc 1 258 0
	st.w	[%a15] 44, %d15
	.loc 1 259 0
	st.w	[%a15] 36, %d15
.L23:
.LVL70:
.LBB279:
.LBB280:
	.loc 3 2147 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 24, 1
	and	%d2, %d15, 255
.LBE280:
.LBE279:
	.loc 1 262 0
	jeq	%d2, 1, .L41
	.loc 1 285 0
	mov	%d15, 0
	st.b	[%a15] 56, %d15
	.loc 1 286 0
	mov	%d15, 0
	st.w	[%a15] 68, %d15
	.loc 1 287 0
	st.w	[%a15] 60, %d15
	.loc 1 288 0
	st.w	[%a15] 72, %d15
	.loc 1 289 0
	st.w	[%a15] 64, %d15
.L27:
.LVL71:
.LBB281:
.LBB282:
	.loc 3 2141 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 26, 1
	and	%d2, %d15, 255
.LBE282:
.LBE281:
	.loc 1 292 0
	jeq	%d2, 1, .L42
	.loc 1 315 0
	mov	%d15, 0
	st.b	[%a15] 84, %d15
	.loc 1 316 0
	mov	%d15, 0
	st.w	[%a15] 96, %d15
	.loc 1 317 0
	st.w	[%a15] 88, %d15
	.loc 1 318 0
	st.w	[%a15] 100, %d15
	.loc 1 319 0
	st.w	[%a15] 92, %d15
.L31:
.LBB283:
.LBB284:
	.loc 3 2014 0
	ld.w	%d2, [%a12] 64
.LBE284:
.LBE283:
	.loc 1 322 0
	ld.w	%d15, [%a13] 8
.LVL72:
.LBB286:
.LBB285:
	.loc 3 2014 0
	and	%d2, %d2, 3
.LVL73:
.LBE285:
.LBE286:
.LBB287:
.LBB288:
	.loc 1 322 0
	mov	%d3, %d15
	.loc 1 77 0
	jz	%d2, .L32
	.loc 1 83 0
	ge.u	%d6, %d15, 4
	sh	%d6, 2
.LVL74:
	.loc 1 214 0
	madd	%d3, %d6, %d15, 2
	lea	%a3, [%A0] SM:IfxVadc_Adc_masterIndex
	mov	%d5, 0
	addsc.a	%a3, %a3, %d3, 0
	mov.a	%a2, 3
.LVL75:
.L35:
	.loc 1 87 0
	ld.bu	%d4, [%a3+]1
	.loc 1 214 0
	add	%d3, %d5, %d6
	.loc 1 87 0
	jeq	%d2, %d4, .L32
	.loc 1 89 0
	add	%d5, 1
	loop	%a2, .L35
	.loc 1 322 0
	mov	%d3, %d15
.L32:
.LBE288:
.LBE287:
	st.w	[%a15] 8, %d3
.LVL76:
.LBB289:
.LBB290:
	.loc 3 1947 0
	ld.w	%d2, [%a14] 128
.LVL77:
.LBE290:
.LBE289:
	.loc 1 324 0
	addi	%d15, %d15, 16
	extr.u	%d15, %d2, %d15, 1
	st.b	[%a15] 112, %d15
	.loc 1 325 0
	ret
.LVL78:
.L39:
.LBB291:
.LBB274:
	.loc 3 2004 0
	addi	%d15, %d15, -15
.LVL79:
	sh	%d15, 4
.LVL80:
	j	.L19
.LVL81:
.L42:
.LBE274:
.LBE291:
	.loc 1 294 0
	st.b	[%a15] 122, %d15
.LVL82:
.LBB292:
.LBB293:
	.loc 3 1852 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 8, 2
	st.w	[%a15] 104, %d15
.LVL83:
.LBE293:
.LBE292:
.LBB294:
.LBB295:
	.loc 3 1858 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 11, 1
	st.w	[%a15] 108, %d15
.LVL84:
.LBE295:
.LBE294:
.LBB296:
.LBB297:
	.loc 3 1864 0
	ld.w	%d15, [%a14] 512
	extr.u	%d15, %d15, 8, 4
.LBE297:
.LBE296:
	.loc 1 298 0
	st.w	[%a15] 92, %d15
.LVL85:
.LBB298:
.LBB299:
	.loc 3 1870 0
	ld.w	%d3, [%a14] 512
.LBE299:
.LBE298:
	.loc 1 301 0
	eq	%d15, %d15, 15
.LBB301:
.LBB300:
	.loc 3 1870 0
	extr.u	%d3, %d3, 13, 2
.LBE300:
.LBE301:
	.loc 1 299 0
	st.w	[%a15] 100, %d3
	.loc 1 301 0
	jnz	%d15, .L29
.LVL86:
.LBB302:
.LBB303:
	.loc 3 1840 0
	ld.w	%d15, [%a14] 516
	and	%d15, %d15, 3
	st.w	[%a15] 96, %d15
.LVL87:
.L30:
.LBE303:
.LBE302:
.LBB304:
.LBB305:
	.loc 3 1846 0
	ld.w	%d15, [%a14] 512
	extr.u	%d15, %d15, 16, 4
	st.w	[%a15] 88, %d15
.LVL88:
.LBE305:
.LBE304:
.LBB306:
.LBB307:
	.loc 3 2129 0
	ld.w	%d15, [%a14] 516
	extr.u	%d15, %d15, 4, 1
.LBE307:
.LBE306:
	.loc 1 311 0
	st.b	[%a15] 84, %d15
	j	.L31
.LVL89:
.L41:
	.loc 1 264 0
	st.b	[%a15] 120, %d15
.LVL90:
.LBB308:
.LBB309:
	.loc 3 2033 0
	ld.w	%d15, [%a12] 4
	and	%d15, %d15, 3
	st.w	[%a15] 76, %d15
.LVL91:
.LBE309:
.LBE308:
.LBB310:
.LBB311:
	.loc 3 2039 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 3, 1
	st.w	[%a15] 80, %d15
.LVL92:
.LBE311:
.LBE310:
.LBB312:
.LBB313:
	.loc 3 2045 0
	ld.w	%d15, [%a12] 128
	extr.u	%d15, %d15, 8, 4
.LBE313:
.LBE312:
	.loc 1 268 0
	st.w	[%a15] 64, %d15
.LVL93:
.LBB314:
.LBB315:
	.loc 3 2051 0
	ld.w	%d3, [%a12] 128
.LBE315:
.LBE314:
	.loc 1 271 0
	eq	%d15, %d15, 15
.LBB317:
.LBB316:
	.loc 3 2051 0
	extr.u	%d3, %d3, 13, 2
.LBE316:
.LBE317:
	.loc 1 269 0
	st.w	[%a15] 72, %d3
	.loc 1 271 0
	jnz	%d15, .L25
.LVL94:
.LBB318:
.LBB319:
	.loc 3 2021 0
	ld.w	%d15, [%a12] 132
	and	%d15, %d15, 3
	st.w	[%a15] 68, %d15
.LVL95:
.L26:
.LBE319:
.LBE318:
.LBB320:
.LBB321:
	.loc 3 2027 0
	ld.w	%d15, [%a12] 128
	extr.u	%d15, %d15, 16, 4
	st.w	[%a15] 60, %d15
.LBE321:
.LBE320:
	.loc 1 281 0
	mov	%d15, 0
	st.b	[%a15] 56, %d15
	j	.L27
.LVL96:
.L40:
	.loc 1 234 0
	st.b	[%a15] 121, %d15
.LVL97:
.LBB322:
.LBB323:
	.loc 3 2079 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 4, 2
	st.w	[%a15] 48, %d15
.LVL98:
.LBE323:
.LBE322:
.LBB324:
.LBB325:
	.loc 3 2085 0
	ld.w	%d15, [%a12] 4
	extr.u	%d15, %d15, 7, 1
	st.w	[%a15] 52, %d15
.LVL99:
.LBE325:
.LBE324:
.LBB326:
.LBB327:
	.loc 3 2091 0
	ld.w	%d15, [%a12] 160
	extr.u	%d15, %d15, 8, 4
.LBE327:
.LBE326:
	.loc 1 238 0
	st.w	[%a15] 36, %d15
.LVL100:
.LBB328:
.LBB329:
	.loc 3 2097 0
	ld.w	%d3, [%a12] 160
.LBE329:
.LBE328:
	.loc 1 241 0
	eq	%d15, %d15, 15
.LBB331:
.LBB330:
	.loc 3 2097 0
	extr.u	%d3, %d3, 13, 2
.LBE330:
.LBE331:
	.loc 1 239 0
	st.w	[%a15] 44, %d3
	.loc 1 241 0
	jnz	%d15, .L21
.LVL101:
.LBB332:
.LBB333:
	.loc 3 2067 0
	ld.w	%d15, [%a12] 164
	and	%d15, %d15, 3
	st.w	[%a15] 40, %d15
.LVL102:
.L22:
.LBE333:
.LBE332:
.LBB334:
.LBB335:
	.loc 3 2073 0
	ld.w	%d15, [%a12] 160
	extr.u	%d15, %d15, 16, 4
	st.w	[%a15] 32, %d15
.LVL103:
.LBE335:
.LBE334:
.LBB336:
.LBB337:
	.loc 3 2135 0
	ld.w	%d15, [%a12] 164
	extr.u	%d15, %d15, 4, 1
.LBE337:
.LBE336:
	.loc 1 251 0
	st.b	[%a15] 28, %d15
	j	.L23
.LVL104:
.L29:
	.loc 1 305 0
	jz	%d3, .L30
	.loc 1 307 0
	st.w	[%a15] 96, %d2
	j	.L30
.LVL105:
.L21:
	.loc 1 245 0
	jz	%d3, .L22
	.loc 1 247 0
	st.w	[%a15] 40, %d2
	j	.L22
.LVL106:
.L25:
	.loc 1 275 0
	jz	%d3, .L26
	.loc 1 277 0
	st.w	[%a15] 68, %d2
	j	.L26
.LFE358:
	.size	IfxVadc_Adc_getGroupConfig, .-IfxVadc_Adc_getGroupConfig
.section .text.IfxVadc_Adc_initChannel,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initChannel
	.type	IfxVadc_Adc_initChannel, @function
IfxVadc_Adc_initChannel:
.LFB359:
	.loc 1 329 0
.LVL107:
	.loc 1 331 0
	ld.a	%a2, [%a5] 56
.LVL108:
	.loc 1 336 0
	ld.w	%d9, [%a5] 24
	.loc 1 329 0
	mov.aa	%a13, %a4
.LBB338:
.LBB339:
	.loc 2 1246 0
	ld.a	%a14, [%a2]0
.LVL109:
.LBE339:
.LBE338:
	.loc 1 335 0
	ld.w	%d8, [%a2] 8
.LBB340:
.LBB341:
	.loc 2 1196 0
	ld.a	%a12, [%a2] 4
.LVL110:
.LBE341:
.LBE340:
	.loc 1 339 0
	mov	%d4, %d8
	.loc 1 334 0
	st.a	[%a4] 8, %a2
	.loc 1 339 0
	mov.aa	%a4, %a14
.LVL111:
	.loc 1 329 0
	mov.aa	%a15, %a5
.LBB342:
.LBB343:
	.loc 3 2364 0
	addi	%d15, %d9, 96
.LBE343:
.LBE342:
	.loc 1 339 0
	call	IfxVadc_enableAccess
.LVL112:
.LBB346:
.LBB344:
	.loc 3 2364 0
	addsc.a	%a2, %a12, %d15, 2
	ld.w	%d2, [%a15] 32
	ld.w	%d15, [%a2]0
.LBE344:
.LBE346:
	.loc 1 355 0
	mov.aa	%a4, %a14
.LBB347:
.LBB345:
	.loc 3 2364 0
	ins.t	%d15, %d15,11, %d2,0
	st.w	[%a2]0, %d15
.LVL113:
.LBE345:
.LBE347:
.LBB348:
.LBB349:
	.loc 3 2451 0
	ld.w	%d15, [%a2]0
	ld.w	%d2, [%a15] 36
	insert	%d15, %d15, %d2, 16, 4
	st.w	[%a2]0, %d15
.LVL114:
.LBE349:
.LBE348:
.LBB350:
.LBB351:
	.loc 3 2329 0
	ld.w	%d15, [%a2]0
	ld.w	%d2, [%a15] 40
	insert	%d15, %d15, %d2, 4, 2
	st.w	[%a2]0, %d15
.LVL115:
.LBE351:
.LBE350:
.LBB352:
.LBB353:
	.loc 3 2427 0
	ld.w	%d15, [%a2]0
	ld.w	%d2, [%a15] 40
	insert	%d15, %d15, %d2, 6, 2
	st.w	[%a2]0, %d15
.LVL116:
.LBE353:
.LBE352:
.LBB354:
.LBB355:
	.loc 3 2421 0
	ld.w	%d15, [%a2]0
	ld.bu	%d2, [%a15] 1
	ins.t	%d15, %d15,10, %d2,0
	st.w	[%a2]0, %d15
.LVL117:
.LBE355:
.LBE354:
.LBB356:
.LBB357:
	.loc 3 2250 0
	ld.w	%d15, [%a2]0
	ld.w	%d2, [%a15] 28
	insert	%d15, %d15, %d2, 0, 2
	st.w	[%a2]0, %d15
.LVL118:
.LBE357:
.LBE356:
.LBB358:
.LBB359:
	.loc 3 2256 0
	ld.w	%d15, [%a2]0
	ld.w	%d2, [%a15] 52
	insert	%d15, %d15, %d2, 8, 2
	st.w	[%a2]0, %d15
.LVL119:
.LBE359:
.LBE358:
.LBB360:
.LBB361:
	.loc 3 2384 0
	ld.w	%d15, [%a2]0
	ld.bu	%d2, [%a15] 3
	ins.t	%d15, %d15,21, %d2,0
	st.w	[%a2]0, %d15
.LVL120:
.LBE361:
.LBE360:
.LBB362:
.LBB363:
	.loc 3 2195 0
	ld.bu	%d2, [%a15]0
	ld.w	%d15, [%a2]0
	ins.t	%d15, %d15,20, %d2,0
	st.w	[%a2]0, %d15
.LVL121:
.LBE363:
.LBE362:
.LBB364:
.LBB365:
	.loc 3 2230 0
	ld.w	%d2, [%a15] 48
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, %d2, 12, 4
	st.w	[%a2]0, %d15
.LBE365:
.LBE364:
	.loc 1 355 0
	addi	%d15, %d8, 16
	mov	%d4, %d15
	call	IfxVadc_enableAccess
.LVL122:
	.loc 1 357 0
	ld.bu	%d2, [%a15] 2
	jnz	%d2, .L44
.LVL123:
.LBB366:
.LBB367:
	.loc 3 2311 0
	ld.w	%d2, [%a12] 8
.LBE367:
.LBE366:
	.loc 1 366 0
	mov	%d4, %d15
.LBB370:
.LBB368:
	.loc 3 2311 0
	insert	%d9, %d2, 1, %d9, 1
.LVL124:
.LBE368:
.LBE370:
	.loc 1 366 0
	mov.aa	%a4, %a14
.LBB371:
.LBB369:
	.loc 3 2311 0
	st.w	[%a12] 8, %d9
.LBE369:
.LBE371:
	.loc 1 366 0
	call	IfxVadc_disableAccess
	.loc 1 368 0
	ld.hu	%d15, [%a15] 6
	jnz	%d15, .L52
.LVL125:
.L46:
	.loc 1 391 0
	ld.hu	%d15, [%a15] 4
	jnz	%d15, .L53
.L49:
	.loc 1 415 0
	mov.aa	%a4, %a14
	mov	%d4, %d8
	call	IfxVadc_disableAccess
	.loc 1 417 0
	ld.w	%d15, [%a15] 36
	st.w	[%a13] 4, %d15
	.loc 1 418 0
	ld.w	%d15, [%a15] 24
	st.w	[%a13]0, %d15
	.loc 1 421 0
	mov	%d2, 0
	ret
.LVL126:
.L44:
.LBB372:
.LBB373:
	.loc 3 2189 0
	ld.w	%d2, [%a12] 8
.LBE373:
.LBE372:
	.loc 1 366 0
	mov	%d4, %d15
.LBB376:
.LBB374:
	.loc 3 2189 0
	insert	%d9, %d2, 0, %d9, 1
.LVL127:
.LBE374:
.LBE376:
	.loc 1 366 0
	mov.aa	%a4, %a14
.LBB377:
.LBB375:
	.loc 3 2189 0
	st.w	[%a12] 8, %d9
.LBE375:
.LBE377:
	.loc 1 366 0
	call	IfxVadc_disableAccess
	.loc 1 368 0
	ld.hu	%d15, [%a15] 6
	jz	%d15, .L46
.LVL128:
.L52:
.LBB378:
	.loc 1 370 0
	ld.w	%d5, [%a15] 20
	mov	%d4, %d8
	call	IfxVadc_getSrcAddress
.LVL129:
	.loc 1 372 0
	ld.w	%d2, [%a15] 24
	.loc 1 374 0
	ld.w	%d3, [%a15] 20
	.loc 1 372 0
	ge	%d15, %d2, 8
	jz	%d15, .L54
.LVL130:
.LBB379:
.LBB380:
	.loc 3 2243 0
	ld.w	%d15, [%a13]0
	ld.w	%d4, [%a12] 292
	sh	%d15, 2
	mov	%d2, 15
	sh	%d2, %d2, %d15
	andn	%d2, %d4, %d2
	.loc 3 2244 0
	sh	%d15, %d3, %d15
	.loc 3 2243 0
	st.w	[%a12] 292, %d2
	.loc 3 2244 0
	ld.w	%d2, [%a12] 292
	or	%d15, %d2
	st.w	[%a12] 292, %d15
.LVL131:
.L48:
.LBE380:
.LBE379:
.LBB381:
.LBB382:
	.loc 3 1733 0
	ld.w	%d2, [%a15] 24
	mov	%d15, 1
	sh	%d15, %d15, %d2
	st.w	[%a12] 272, %d15
.LBE382:
.LBE381:
.LBB383:
.LBB384:
	.file 4 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
	.loc 4 256 0
	ld.w	%d15, [%a2]0
	ld.bu	%d2, [%a15] 6
.LBE384:
.LBE383:
	.loc 1 382 0
	ld.w	%d3, [%a15] 12
.LVL132:
.LBB388:
.LBB387:
	.loc 4 256 0
	insert	%d15, %d15, %d2, 0, 8
	st.w	[%a2]0, %d15
	.loc 4 257 0
	ld.w	%d15, [%a2]0
	ins.t	%d15, %d15,11, %d3,0
	st.w	[%a2]0, %d15
.LVL133:
.LBB385:
.LBB386:
	.loc 4 232 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 25, 1
	st.w	[%a2]0, %d15
.LVL134:
.LBE386:
.LBE385:
.LBE387:
.LBE388:
.LBB389:
.LBB390:
	.loc 4 250 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a2]0, %d15
.LBE390:
.LBE389:
.LBE378:
	.loc 1 391 0
	ld.hu	%d15, [%a15] 4
	jz	%d15, .L49
.LVL135:
.L53:
.LBB393:
	.loc 1 393 0
	ld.w	%d5, [%a15] 16
	mov	%d4, %d8
	call	IfxVadc_getSrcAddress
.LVL136:
	.loc 1 394 0
	ld.w	%d15, [%a15] 36
.LVL137:
.LBB394:
.LBB395:
	.loc 3 1812 0
	addi	%d15, %d15, 128
	addsc.a	%a3, %a12, %d15, 2
	ld.w	%d15, [%a3]0
	insert	%d15, %d15, 1, 31, 1
	st.w	[%a3]0, %d15
.LBE395:
.LBE394:
	.loc 1 396 0
	ld.w	%d15, [%a15] 36
	.loc 1 398 0
	ld.w	%d3, [%a15] 16
	.loc 1 396 0
	jlt.u	%d15, 8, .L55
.LVL138:
.LBB396:
.LBB397:
	.loc 3 2377 0
	add	%d15, -8
	ld.w	%d4, [%a12] 308
	sh	%d15, 2
	mov	%d2, 15
	sh	%d2, %d2, %d15
	andn	%d2, %d4, %d2
	.loc 3 2378 0
	sh	%d15, %d3, %d15
	.loc 3 2377 0
	st.w	[%a12] 308, %d2
	.loc 3 2378 0
	ld.w	%d2, [%a12] 308
	or	%d15, %d2
	st.w	[%a12] 308, %d15
.LVL139:
.L51:
.LBE397:
.LBE396:
.LBB398:
.LBB399:
	.loc 3 1727 0
	mov.u	%d15, 65535
	st.w	[%a12] 276, %d15
.LBE399:
.LBE398:
.LBB400:
.LBB401:
	.loc 4 256 0
	ld.w	%d15, [%a2]0
	ld.bu	%d2, [%a15] 4
.LBE401:
.LBE400:
	.loc 1 406 0
	ld.w	%d3, [%a15] 8
.LVL140:
.LBB405:
.LBB404:
	.loc 4 256 0
	insert	%d15, %d15, %d2, 0, 8
	st.w	[%a2]0, %d15
	.loc 4 257 0
	ld.w	%d15, [%a2]0
	ins.t	%d15, %d15,11, %d3,0
	st.w	[%a2]0, %d15
.LVL141:
.LBB402:
.LBB403:
	.loc 4 232 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 25, 1
	st.w	[%a2]0, %d15
.LVL142:
.LBE403:
.LBE402:
.LBE404:
.LBE405:
.LBB406:
.LBB407:
	.loc 4 250 0
	ld.w	%d15, [%a2]0
	insert	%d15, %d15, 1, 10, 1
	st.w	[%a2]0, %d15
	j	.L49
.LVL143:
.L55:
.LBE407:
.LBE406:
.LBB408:
.LBB409:
	.loc 3 2370 0
	ld.w	%d4, [%a12] 304
	sh	%d15, 2
	mov	%d2, 15
	sh	%d2, %d2, %d15
	andn	%d2, %d4, %d2
	.loc 3 2371 0
	sh	%d15, %d3, %d15
	.loc 3 2370 0
	st.w	[%a12] 304, %d2
	.loc 3 2371 0
	ld.w	%d2, [%a12] 304
	or	%d15, %d2
	st.w	[%a12] 304, %d15
	j	.L51
.LVL144:
.L54:
.LBE409:
.LBE408:
.LBE393:
.LBB410:
.LBB391:
.LBB392:
	.loc 3 2236 0
	ld.w	%d15, [%a13]0
	ld.w	%d4, [%a12] 288
	sh	%d15, 2
	mov	%d2, 15
	sh	%d2, %d2, %d15
	andn	%d2, %d4, %d2
	.loc 3 2237 0
	sh	%d15, %d3, %d15
	.loc 3 2236 0
	st.w	[%a12] 288, %d2
	.loc 3 2237 0
	ld.w	%d2, [%a12] 288
	or	%d15, %d2
	st.w	[%a12] 288, %d15
	j	.L48
.LBE392:
.LBE391:
.LBE410:
.LFE359:
	.size	IfxVadc_Adc_initChannel, .-IfxVadc_Adc_initChannel
.section .text.IfxVadc_Adc_initChannelConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initChannelConfig
	.type	IfxVadc_Adc_initChannelConfig, @function
IfxVadc_Adc_initChannelConfig:
.LFB360:
	.loc 1 425 0
.LVL145:
	.loc 1 447 0
	mov.aa	%a2, %a4
	mov	%e2, 0
	lea	%a15, 7-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	st.w	[%a2+]4, %d2
	.loc 1 448 0
	st.a	[%a4] 56, %a5
	.loc 1 449 0
	ret
.LFE360:
	.size	IfxVadc_Adc_initChannelConfig, .-IfxVadc_Adc_initChannelConfig
.section .text.IfxVadc_Adc_initGroup,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initGroup
	.type	IfxVadc_Adc_initGroup, @function
IfxVadc_Adc_initGroup:
.LFB361:
	.loc 1 453 0
.LVL146:
	.loc 1 455 0
	ld.a	%a2, [%a5]0
	.loc 1 456 0
	ld.w	%d15, [%a5] 4
	.loc 1 453 0
	mov.aa	%a15, %a5
	.loc 1 455 0
	ld.a	%a13, [%a2]0
.LVL147:
	.loc 1 456 0
	sh	%d2, %d15, 10
	addi	%d2, %d2, 1152
	addsc.a	%a12, %a13, %d2, 0
.LVL148:
	.loc 1 460 0
	st.a	[%a4]0, %a13
.LVL149:
	.loc 1 459 0
	st.a	[%a4] 4, %a12
	.loc 1 462 0
	st.w	[%a4] 8, %d15
	.loc 1 463 0
	mov.aa	%a4, %a13
.LVL150:
	call	IfxVadc_getAdcAnalogFrequency
.LVL151:
	.loc 1 468 0
	addi	%d9, %d15, 16
	mov.aa	%a4, %a13
	mov	%d4, %d9
	.loc 1 463 0
	mov	%d8, %d2
.LVL152:
	.loc 1 468 0
	call	IfxVadc_enableAccess
.LVL153:
	.loc 1 470 0
	ld.bu	%d2, [%a15] 120
	.loc 1 473 0
	mov.aa	%a4, %a12
	.loc 1 470 0
	jeq	%d2, 1, .L83
	.loc 1 478 0
	mov	%e4, 0
	mov	%e6, 0
	call	IfxVadc_setArbiterPriority
	.loc 1 481 0
	ld.bu	%d2, [%a15] 121
	.loc 1 485 0
	mov.aa	%a4, %a12
	.loc 1 481 0
	jeq	%d2, 1, .L84
.L60:
	.loc 1 490 0
	mov	%e4, 0
	mov	%d6, 0
	mov	%d7, 1
	call	IfxVadc_setArbiterPriority
	.loc 1 493 0
	ld.bu	%d2, [%a15] 122
	.loc 1 497 0
	mov.aa	%a4, %a12
	.loc 1 493 0
	jeq	%d2, 1, .L85
.L62:
	.loc 1 502 0
	mov	%e4, 0
	mov	%d6, 0
	mov	%d7, 2
	call	IfxVadc_setArbiterPriority
.L63:
	.loc 1 506 0
	ld.w	%d2, [%a15] 8
	jeq	%d15, %d2, .L64
.LVL154:
.LBB411:
.LBB412:
.LBB413:
	.loc 1 100 0
	madd	%d2, %d2, %d15, 2
	lea	%a2, [%A0] SM:IfxVadc_Adc_masterIndex
.LBE413:
.LBE412:
.LBB416:
.LBB417:
	.loc 3 2335 0
	ld.w	%d3, [%a12] 64
.LBE417:
.LBE416:
.LBB420:
.LBB414:
	.loc 1 100 0
	addsc.a	%a2, %a2, %d2, 0
.LBE414:
.LBE420:
.LBB421:
.LBB418:
	.loc 3 2336 0
	mov	%d4, 8
.LBE418:
.LBE421:
.LBB422:
.LBB415:
	.loc 1 100 0
	ld.bu	%d2, [%a2]0
.LVL155:
.LBE415:
.LBE422:
.LBB423:
.LBB419:
	.loc 3 2335 0
	and	%d2, %d2, 3
.LVL156:
	insert	%d3, %d3, %d2, 0, 2
	.loc 3 2336 0
	sh	%d2, %d4, %d2
	.loc 3 2335 0
	st.w	[%a12] 64, %d3
	.loc 3 2336 0
	ld.w	%d3, [%a12] 64
	or	%d2, %d3
	st.w	[%a12] 64, %d2
.LVL157:
.L64:
.LBE419:
.LBE423:
.LBE411:
.LBB424:
.LBB425:
	.loc 3 2165 0
	ld.w	%d3, [%a12]0
	andn	%d3, %d3, ~(-4)
	st.w	[%a12]0, %d3
.LVL158:
.LBE425:
.LBE424:
.LBB426:
.LBB427:
	.loc 3 2171 0
	ld.w	%d2, [%a15] 116
	ld.w	%d3, [%a12]0
	insert	%d3, %d3, %d2, 4, 2
	st.w	[%a12]0, %d3
.LBE427:
.LBE426:
	.loc 1 524 0
	ld.bu	%d2, [%a15] 120
	jeq	%d2, 1, .L86
.L65:
	.loc 1 569 0
	ld.bu	%d2, [%a15] 121
	jeq	%d2, 1, .L87
.L70:
	.loc 1 612 0
	ld.bu	%d2, [%a15] 122
	jeq	%d2, 1, .L88
.L75:
	.loc 1 655 0
	ld.w	%d2, [%a15] 8
	mov	%d3, 0
	ne	%d2, %d15, %d2
	sel	%d2, %d2, %d3, 3
.LVL159:
.LBB428:
.LBB429:
	.loc 3 2165 0
	ld.w	%d3, [%a12]0
.LBE429:
.LBE428:
	.loc 1 659 0
	mov	%d4, %d15
.LBB432:
.LBB430:
	.loc 3 2165 0
	insert	%d3, %d3, %d2, 0, 2
.LBE430:
.LBE432:
	.loc 1 659 0
	mov.aa	%a4, %a13
.LBB433:
.LBB431:
	.loc 3 2165 0
	st.w	[%a12]0, %d3
.LBE431:
.LBE433:
	.loc 1 659 0
	ld.bu	%d5, [%a15] 112
	call	IfxVadc_disablePostCalibration
.LVL160:
.LBB434:
.LBB435:
	.loc 3 2317 0
	ld.w	%d2, [%a15] 16
	ld.w	%d15, [%a12] 32
.LVL161:
	insert	%d15, %d15, %d2, 8, 3
	st.w	[%a12] 32, %d15
.LVL162:
.LBE435:
.LBE434:
.LBB437:
.LBB438:
.LBB439:
.LBB440:
	.loc 3 1712 0
	ld.w	%d15, [%a15] 12
	mul.f	%d15, %d8, %d15
	ftouz	%d15, %d15
	add	%d15, -2
.LVL163:
	.loc 3 1714 0
	lt.u	%d2, %d15, 32
	jnz	%d2, .L80
	.loc 3 1716 0
	sh	%d15, -4
.LVL164:
	addi	%d15, %d15, 15
.LVL165:
.L80:
.LBB441:
.LBB442:
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 5 141 0
	mov	%d2, 255
#APP
	# 141 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d2, %d15, %d2
	# 0 "" 2
.LVL166:
#NO_APP
.LBE442:
.LBE441:
.LBE440:
.LBE439:
	.loc 3 2323 0
	ld.w	%d15, [%a12] 32
.LVL167:
	insert	%d15, %d15, %d2, 0, 5
	st.w	[%a12] 32, %d15
.LVL168:
.LBE438:
.LBE437:
.LBB450:
.LBB436:
	.loc 3 2317 0
	ld.w	%d2, [%a15] 24
.LVL169:
	ld.w	%d15, [%a12] 36
	insert	%d15, %d15, %d2, 8, 3
	st.w	[%a12] 36, %d15
.LVL170:
.LBE436:
.LBE450:
.LBB451:
.LBB447:
.LBB446:
.LBB445:
	.loc 3 1712 0
	ld.w	%d2, [%a15] 20
	mul.f	%d8, %d8, %d2
.LVL171:
	ftouz	%d8, %d8
	addi	%d2, %d8, -2
.LVL172:
	.loc 3 1714 0
	lt.u	%d15, %d2, 32
	jnz	%d15, .L81
	.loc 3 1716 0
	sh	%d2, -4
.LVL173:
	addi	%d2, %d2, 15
.LVL174:
.L81:
.LBB444:
.LBB443:
	.loc 5 141 0
	mov	%d15, 255
#APP
	# 141 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d2, %d2, %d15
	# 0 "" 2
.LVL175:
#NO_APP
.LBE443:
.LBE444:
.LBE445:
.LBE446:
	.loc 3 2323 0
	ld.w	%d15, [%a12] 36
.LBE447:
.LBE451:
	.loc 1 669 0
	mov.aa	%a4, %a13
.LBB452:
.LBB448:
	.loc 3 2323 0
	insert	%d15, %d15, %d2, 0, 5
.LBE448:
.LBE452:
	.loc 1 669 0
	mov	%d4, %d9
.LBB453:
.LBB449:
	.loc 3 2323 0
	st.w	[%a12] 36, %d15
.LVL176:
.LBE449:
.LBE453:
	.loc 1 669 0
	call	IfxVadc_disableAccess
.LVL177:
	.loc 1 672 0
	mov	%d2, 0
	ret
.LVL178:
.L83:
	.loc 1 473 0
	ld.w	%d5, [%a15] 76
	ld.w	%d6, [%a15] 80
	mov	%d4, 1
	mov	%d7, 0
	call	IfxVadc_setArbiterPriority
	.loc 1 481 0
	ld.bu	%d2, [%a15] 121
	.loc 1 485 0
	mov.aa	%a4, %a12
	.loc 1 481 0
	jne	%d2, 1, .L60
.L84:
	.loc 1 485 0
	ld.w	%d5, [%a15] 48
	ld.w	%d6, [%a15] 52
	mov	%d4, 1
	mov	%d7, 1
	call	IfxVadc_setArbiterPriority
	.loc 1 493 0
	ld.bu	%d2, [%a15] 122
	.loc 1 497 0
	mov.aa	%a4, %a12
	.loc 1 493 0
	jne	%d2, 1, .L62
.L85:
	.loc 1 497 0
	ld.w	%d5, [%a15] 104
	ld.w	%d6, [%a15] 108
	mov	%d4, 1
	mov	%d7, 2
	call	IfxVadc_setArbiterPriority
	j	.L63
.LVL179:
.L88:
.LBB454:
	.loc 1 617 0
	ld.w	%d2, [%a15] 100
	jnz	%d2, .L89
.L76:
	.loc 1 638 0
	ld.w	%d2, [%a15] 92
	eq	%d2, %d2, 15
	jnz	%d2, .L78
.L77:
.LBB455:
.LBB456:
	.loc 3 2209 0
	ld.w	%d3, [%a13] 512
.LBE456:
.LBE455:
	.loc 1 640 0
	ld.w	%d2, [%a15] 88
.LBB459:
.LBB457:
	.loc 3 2210 0
	insert	%d3, %d3, 1, 23, 1
.LVL180:
.LBE457:
.LBE459:
	.loc 1 640 0
	ld.w	%d4, [%a15] 96
.LVL181:
.LBB460:
.LBB458:
	.loc 3 2211 0
	insert	%d3, %d3, %d2, 16, 4
	.loc 3 2212 0
	st.w	[%a13] 512, %d3
	.loc 3 2213 0
	ld.w	%d2, [%a13] 516
	insert	%d2, %d2, %d4, 0, 2
	st.w	[%a13] 516, %d2
.LVL182:
.L78:
.LBE458:
.LBE460:
.LBB461:
.LBB462:
	.loc 3 2177 0
	ld.bu	%d2, [%a15] 84
	ne	%d3, %d2, 0
.LVL183:
	ld.w	%d2, [%a13] 516
	ins.t	%d2, %d2,4, %d3,0
	st.w	[%a13] 516, %d2
	j	.L75
.LVL184:
.L87:
.LBE462:
.LBE461:
.LBE454:
.LBB475:
	.loc 1 574 0
	ld.w	%d2, [%a15] 44
	jnz	%d2, .L90
.LVL185:
.LBB476:
.LBB477:
	.loc 3 1772 0
	ld.w	%d2, [%a12] 164
	andn	%d2, %d2, ~(-5)
	st.w	[%a12] 164, %d2
.LVL186:
.L73:
.LBE477:
.LBE476:
	.loc 1 596 0
	ld.w	%d2, [%a15] 36
	eq	%d2, %d2, 15
	jnz	%d2, .L74
.L72:
.LBB478:
.LBB479:
	.loc 3 2391 0
	ld.w	%d3, [%a12] 160
.LBE479:
.LBE478:
	.loc 1 598 0
	ld.w	%d2, [%a15] 32
.LBB482:
.LBB480:
	.loc 3 2392 0
	insert	%d3, %d3, 1, 23, 1
.LVL187:
.LBE480:
.LBE482:
	.loc 1 598 0
	ld.w	%d4, [%a15] 40
.LVL188:
.LBB483:
.LBB481:
	.loc 3 2393 0
	insert	%d3, %d3, %d2, 16, 4
	.loc 3 2394 0
	st.w	[%a12] 160, %d3
	.loc 3 2395 0
	ld.w	%d2, [%a12] 164
	insert	%d2, %d2, %d4, 0, 2
	st.w	[%a12] 164, %d2
.LVL189:
.L74:
.LBE481:
.LBE483:
.LBB484:
.LBB485:
	.loc 3 2183 0
	ld.bu	%d2, [%a15] 28
	ne	%d3, %d2, 0
.LVL190:
	ld.w	%d2, [%a12] 164
	ins.t	%d2, %d2,4, %d3,0
	st.w	[%a12] 164, %d2
	j	.L70
.LVL191:
.L86:
.LBE485:
.LBE484:
.LBE475:
.LBB498:
	.loc 1 529 0
	ld.w	%d2, [%a15] 72
	jnz	%d2, .L91
.LVL192:
.LBB499:
.LBB500:
	.loc 3 1766 0
	ld.w	%d2, [%a12] 132
	andn	%d2, %d2, ~(-5)
	st.w	[%a12] 132, %d2
.LVL193:
.L68:
.LBE500:
.LBE499:
	.loc 1 552 0
	ld.w	%d2, [%a15] 64
	eq	%d2, %d2, 15
	jnz	%d2, .L69
.L67:
.LBB501:
.LBB502:
	.loc 3 2343 0
	ld.w	%d3, [%a12] 128
.LBE502:
.LBE501:
	.loc 1 554 0
	ld.w	%d2, [%a15] 60
.LBB505:
.LBB503:
	.loc 3 2344 0
	insert	%d3, %d3, 1, 23, 1
.LVL194:
.LBE503:
.LBE505:
	.loc 1 554 0
	ld.w	%d4, [%a15] 68
.LVL195:
.LBB506:
.LBB504:
	.loc 3 2345 0
	insert	%d3, %d3, %d2, 16, 4
	.loc 3 2346 0
	st.w	[%a12] 128, %d3
	.loc 3 2347 0
	ld.w	%d2, [%a12] 132
	insert	%d2, %d2, %d4, 0, 2
	st.w	[%a12] 132, %d2
.LVL196:
.L69:
.LBE504:
.LBE506:
.LBB507:
.LBB508:
	.loc 3 1739 0
	ld.bu	%d2, [%a15] 56
	ne	%d3, %d2, 0
.LVL197:
	ld.w	%d2, [%a12] 132
	ins.t	%d2, %d2,10, %d3,0
	st.w	[%a12] 132, %d2
	j	.L65
.LVL198:
.L89:
.LBE508:
.LBE507:
.LBE498:
.LBB521:
.LBB463:
.LBB464:
	.loc 3 1778 0
	ld.w	%d2, [%a13] 516
	insert	%d2, %d2, 1, 2, 1
	st.w	[%a13] 516, %d2
.LBE464:
.LBE463:
.LBB465:
.LBB466:
	.loc 3 2220 0
	ld.w	%d2, [%a13] 512
.LBE466:
.LBE465:
	.loc 1 621 0
	ld.w	%d4, [%a15] 100
.LBB469:
.LBB467:
	.loc 3 2221 0
	insert	%d2, %d2, 1, 15, 1
.LVL199:
.LBE467:
.LBE469:
	.loc 1 621 0
	ld.w	%d3, [%a15] 92
.LVL200:
.LBB470:
.LBB468:
	.loc 3 2222 0
	insert	%d2, %d2, %d4, 13, 2
	.loc 3 2223 0
	insert	%d2, %d2, %d3, 8, 4
	.loc 3 2224 0
	st.w	[%a13] 512, %d2
.LBE468:
.LBE470:
	.loc 1 623 0
	ld.w	%d2, [%a15] 92
.LVL201:
	ne	%d2, %d2, 15
	jnz	%d2, .L77
.LBB471:
.LBB472:
	.loc 3 2209 0
	ld.w	%d2, [%a13] 512
.LBE472:
.LBE471:
	.loc 1 625 0
	ld.w	%d3, [%a15] 88
.LVL202:
.LBB474:
.LBB473:
	.loc 3 2210 0
	insert	%d2, %d2, 1, 23, 1
.LVL203:
	.loc 3 2211 0
	insert	%d2, %d2, %d3, 16, 4
	.loc 3 2212 0
	st.w	[%a13] 512, %d2
	.loc 3 2213 0
	ld.w	%d2, [%a13] 516
.LVL204:
	insert	%d2, %d2, 1, 0, 2
	st.w	[%a13] 516, %d2
	j	.L76
.LVL205:
.L91:
.LBE473:
.LBE474:
.LBE521:
.LBB522:
.LBB509:
.LBB510:
	.loc 3 1800 0
	ld.w	%d2, [%a12] 132
	insert	%d2, %d2, 1, 2, 1
	st.w	[%a12] 132, %d2
.LBE510:
.LBE509:
.LBB511:
.LBB512:
	.loc 3 2354 0
	ld.w	%d2, [%a12] 128
.LBE512:
.LBE511:
	.loc 1 533 0
	ld.w	%d4, [%a15] 72
.LBB515:
.LBB513:
	.loc 3 2355 0
	insert	%d2, %d2, 1, 15, 1
.LVL206:
.LBE513:
.LBE515:
	.loc 1 533 0
	ld.w	%d3, [%a15] 64
.LVL207:
.LBB516:
.LBB514:
	.loc 3 2356 0
	insert	%d2, %d2, %d4, 13, 2
	.loc 3 2357 0
	insert	%d2, %d2, %d3, 8, 4
	.loc 3 2358 0
	st.w	[%a12] 128, %d2
.LBE514:
.LBE516:
	.loc 1 536 0
	ld.w	%d2, [%a15] 64
.LVL208:
	ne	%d2, %d2, 15
	jnz	%d2, .L67
.LBB517:
.LBB518:
	.loc 3 2343 0
	ld.w	%d2, [%a12] 128
.LBE518:
.LBE517:
	.loc 1 538 0
	ld.w	%d3, [%a15] 60
.LVL209:
.LBB520:
.LBB519:
	.loc 3 2344 0
	insert	%d2, %d2, 1, 23, 1
.LVL210:
	.loc 3 2345 0
	insert	%d2, %d2, %d3, 16, 4
	.loc 3 2346 0
	st.w	[%a12] 128, %d2
	.loc 3 2347 0
	ld.w	%d2, [%a12] 132
.LVL211:
	insert	%d2, %d2, 1, 0, 2
	st.w	[%a12] 132, %d2
	j	.L68
.LVL212:
.L90:
.LBE519:
.LBE520:
.LBE522:
.LBB523:
.LBB486:
.LBB487:
	.loc 3 1806 0
	ld.w	%d2, [%a12] 164
	insert	%d2, %d2, 1, 2, 1
	st.w	[%a12] 164, %d2
.LBE487:
.LBE486:
.LBB488:
.LBB489:
	.loc 3 2402 0
	ld.w	%d2, [%a12] 160
.LBE489:
.LBE488:
	.loc 1 579 0
	ld.w	%d4, [%a15] 44
.LBB492:
.LBB490:
	.loc 3 2403 0
	insert	%d2, %d2, 1, 15, 1
.LVL213:
.LBE490:
.LBE492:
	.loc 1 579 0
	ld.w	%d3, [%a15] 36
.LVL214:
.LBB493:
.LBB491:
	.loc 3 2404 0
	insert	%d2, %d2, %d4, 13, 2
	.loc 3 2405 0
	insert	%d2, %d2, %d3, 8, 4
	.loc 3 2406 0
	st.w	[%a12] 160, %d2
.LBE491:
.LBE493:
	.loc 1 581 0
	ld.w	%d2, [%a15] 36
.LVL215:
	ne	%d2, %d2, 15
	jnz	%d2, .L72
.LBB494:
.LBB495:
	.loc 3 2391 0
	ld.w	%d2, [%a12] 160
.LBE495:
.LBE494:
	.loc 1 583 0
	ld.w	%d3, [%a15] 32
.LVL216:
.LBB497:
.LBB496:
	.loc 3 2392 0
	insert	%d2, %d2, 1, 23, 1
.LVL217:
	.loc 3 2393 0
	insert	%d2, %d2, %d3, 16, 4
	.loc 3 2394 0
	st.w	[%a12] 160, %d2
	.loc 3 2395 0
	ld.w	%d2, [%a12] 164
.LVL218:
	insert	%d2, %d2, 1, 0, 2
	st.w	[%a12] 164, %d2
	j	.L73
.LBE496:
.LBE497:
.LBE523:
.LFE361:
	.size	IfxVadc_Adc_initGroup, .-IfxVadc_Adc_initGroup
.section .text.IfxVadc_Adc_initGroupConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initGroupConfig
	.type	IfxVadc_Adc_initGroupConfig, @function
IfxVadc_Adc_initGroupConfig:
.LFB362:
	.loc 1 676 0
.LVL219:
	.loc 1 718 0
	movh	%d15, 13702
	addi	%d15, %d15, 14269
	mov.aa	%a2, %a4
	mov	%e2, 0
	lea	%a15, 15-1
	0:
	st.d	[%a2+]8, %e2
	loop	%a15, 0b
	st.w	[%a2+]4, %d2
	st.w	[%a4] 12, %d15
	st.w	[%a4] 20, %d15
	mov	%d15, 1
	.loc 1 720 0
	st.a	[%a4]0, %a5
	.loc 1 718 0
	st.w	[%a4] 48, %d15
	st.b	[%a4] 56, %d15
	st.w	[%a4] 76, %d15
	st.w	[%a4] 104, %d15
	.loc 1 723 0
	ret
.LFE362:
	.size	IfxVadc_Adc_initGroupConfig, .-IfxVadc_Adc_initGroupConfig
.section .text.IfxVadc_Adc_initModule,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initModule
	.type	IfxVadc_Adc_initModule, @function
IfxVadc_Adc_initModule:
.LFB363:
	.loc 1 727 0
.LVL220:
	.loc 1 729 0
	ld.a	%a15, [%a5]0
.LVL221:
	.loc 1 727 0
	mov.aa	%a12, %a5
	.loc 1 730 0
	st.a	[%a4]0, %a15
.LVL222:
.LBB524:
.LBB525:
	.loc 3 1790 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL223:
	.loc 3 1792 0
	mov	%d4, %d2
	.loc 3 1790 0
	mov	%d15, %d2
.LVL224:
	.loc 3 1792 0
	call	IfxScuWdt_clearCpuEndinit
.LVL225:
	.loc 3 1793 0
	mov	%d2, 0
	.loc 3 1794 0
	mov	%d4, %d15
.LBE525:
.LBE524:
	.loc 1 741 0
	mov	%d15, 1
.LVL226:
.LBB527:
.LBB526:
	.loc 3 1793 0
	st.w	[%a15]0, %d2
	.loc 3 1794 0
	call	IfxScuWdt_setCpuEndinit
.LVL227:
.LBE526:
.LBE527:
	.loc 1 736 0
	ld.w	%d4, [%a12] 36
	mov.aa	%a4, %a15
	call	IfxVadc_selectPowerSupplyVoltage
	.loc 1 739 0
	ld.w	%d4, [%a12] 24
	mov.aa	%a4, %a15
	ftouz	%d4, %d4
	call	IfxVadc_initializeFAdcI
	jnz	%d2, .L99
.L94:
	.loc 1 778 0
	mov	%d2, %d15
	ret
.L99:
	.loc 1 749 0
	ld.w	%d4, [%a12] 20
	mov.aa	%a4, %a15
	ftouz	%d4, %d4
	call	IfxVadc_initializeFAdcD
	.loc 1 751 0
	mov.aa	%a4, %a15
	call	IfxVadc_getAdcAnalogFrequency
.LVL228:
.LBB528:
.LBB529:
	.loc 3 2299 0
	ld.w	%d3, [%a12] 8
	ld.w	%d15, [%a15] 160
	insert	%d15, %d15, %d3, 8, 3
	st.w	[%a15] 160, %d15
.LVL229:
.LBE529:
.LBE528:
.LBB531:
.LBB532:
.LBB533:
.LBB534:
	.loc 3 1712 0
	ld.w	%d15, [%a12] 4
	mul.f	%d15, %d2, %d15
	ftouz	%d15, %d15
	add	%d15, -2
.LVL230:
	.loc 3 1714 0
	lt.u	%d3, %d15, 32
	jnz	%d3, .L95
	.loc 3 1716 0
	sh	%d15, -4
.LVL231:
	addi	%d15, %d15, 15
.LVL232:
.L95:
.LBB535:
.LBB536:
	.loc 5 141 0
	mov	%d3, 255
#APP
	# 141 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d3, %d15, %d3
	# 0 "" 2
.LVL233:
#NO_APP
.LBE536:
.LBE535:
.LBE534:
.LBE533:
	.loc 3 2305 0
	ld.w	%d15, [%a15] 160
.LVL234:
	insert	%d15, %d15, %d3, 0, 5
	st.w	[%a15] 160, %d15
.LVL235:
.LBE532:
.LBE531:
.LBB542:
.LBB530:
	.loc 3 2299 0
	ld.w	%d3, [%a12] 16
.LVL236:
	ld.w	%d15, [%a15] 164
	insert	%d15, %d15, %d3, 8, 3
	st.w	[%a15] 164, %d15
.LVL237:
.LBE530:
.LBE542:
.LBB543:
.LBB541:
.LBB540:
.LBB539:
	.loc 3 1712 0
	ld.w	%d15, [%a12] 12
	mul.f	%d2, %d2, %d15
.LVL238:
	ftouz	%d2, %d2
	add	%d2, -2
.LVL239:
	.loc 3 1714 0
	lt.u	%d15, %d2, 32
	jnz	%d15, .L96
	.loc 3 1716 0
	sh	%d2, -4
.LVL240:
	addi	%d2, %d2, 15
.LVL241:
.L96:
.LBB538:
.LBB537:
	.loc 5 141 0
	mov	%d15, 255
#APP
	# 141 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	min.u %d2, %d2, %d15
	# 0 "" 2
.LVL242:
#NO_APP
.LBE537:
.LBE538:
.LBE539:
.LBE540:
	.loc 3 2305 0
	ld.w	%d15, [%a15] 164
	insert	%d15, %d15, %d2, 0, 5
	st.w	[%a15] 164, %d15
.LVL243:
.LBE541:
.LBE543:
	.loc 1 763 0
	ld.bu	%d2, [%a12] 32
.LVL244:
	.loc 1 777 0
	mov	%d15, 0
	.loc 1 763 0
	jne	%d2, 1, .L94
.LVL245:
	.loc 1 768 0 discriminator 1
	mov.aa	%a4, %a15
	mov	%d4, 16
	call	IfxVadc_enableAccess
.LVL246:
.LBB544:
.LBB545:
	.loc 3 2165 0 discriminator 1
	ld.w	%d2, [%a15] 1152
.LBE545:
.LBE544:
	.loc 1 770 0 discriminator 1
	mov.aa	%a4, %a15
.LBB551:
.LBB546:
	.loc 3 2165 0 discriminator 1
	insert	%d2, %d2, 3, 0, 2
.LBE546:
.LBE551:
	.loc 1 770 0 discriminator 1
	mov	%d4, 16
.LBB552:
.LBB547:
	.loc 3 2165 0 discriminator 1
	st.w	[%a15] 1152, %d2
.LBE547:
.LBE552:
	.loc 1 770 0 discriminator 1
	call	IfxVadc_disableAccess
.LVL247:
	.loc 1 768 0 discriminator 1
	mov.aa	%a4, %a15
	mov	%d4, 17
	call	IfxVadc_enableAccess
.LVL248:
.LBB553:
.LBB548:
	.loc 3 2165 0 discriminator 1
	ld.w	%d2, [%a15] 2176
.LBE548:
.LBE553:
	.loc 1 770 0 discriminator 1
	mov.aa	%a4, %a15
.LBB554:
.LBB549:
	.loc 3 2165 0 discriminator 1
	insert	%d2, %d2, 3, 0, 2
.LBE549:
.LBE554:
	.loc 1 770 0 discriminator 1
	mov	%d4, 17
.LBB555:
.LBB550:
	.loc 3 2165 0 discriminator 1
	st.w	[%a15] 2176, %d2
.LBE550:
.LBE555:
	.loc 1 770 0 discriminator 1
	call	IfxVadc_disableAccess
.LVL249:
	.loc 1 774 0 discriminator 1
	mov.aa	%a4, %a15
	call	IfxVadc_startupCalibration
	.loc 1 778 0 discriminator 1
	mov	%d2, %d15
	ret
.LFE363:
	.size	IfxVadc_Adc_initModule, .-IfxVadc_Adc_initModule
.section .text.IfxVadc_Adc_initModuleConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initModuleConfig
	.type	IfxVadc_Adc_initModuleConfig, @function
IfxVadc_Adc_initModuleConfig:
.LFB364:
	.loc 1 782 0
.LVL250:
	.loc 1 784 0
	movh	%d15, 19353
	addi	%d15, %d15, -27008
	.loc 1 782 0
	mov.aa	%a15, %a4
	.loc 1 783 0
	st.a	[%a15]0, %a5
	.loc 1 782 0
	mov.aa	%a4, %a5
.LVL251:
	.loc 1 784 0
	st.w	[%a15] 24, %d15
	.loc 1 786 0
	call	IfxVadc_getAdcDigitalFrequency
.LVL252:
	st.w	[%a15] 20, %d2
	.loc 1 787 0
	call	IfxScuCcu_getSpbFrequency
	st.w	[%a15] 28, %d2
	.loc 1 789 0
	movh	%d2, 13702
	.loc 1 788 0
	mov	%d15, 0
	.loc 1 789 0
	addi	%d2, %d2, 14269
	.loc 1 788 0
	st.w	[%a15] 8, %d15
	.loc 1 789 0
	st.w	[%a15] 4, %d2
	.loc 1 790 0
	st.w	[%a15] 16, %d15
	.loc 1 791 0
	st.w	[%a15] 12, %d2
	.loc 1 792 0
	st.b	[%a15] 32, %d15
	.loc 1 793 0
	st.w	[%a15] 36, %d15
	.loc 1 794 0
	ret
.LFE364:
	.size	IfxVadc_Adc_initModuleConfig, .-IfxVadc_Adc_initModuleConfig
.section .text.IfxVadc_Adc_initExternalMultiplexerModeConfig,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initExternalMultiplexerModeConfig
	.type	IfxVadc_Adc_initExternalMultiplexerModeConfig, @function
IfxVadc_Adc_initExternalMultiplexerModeConfig:
.LFB365:
	.loc 1 798 0
.LVL253:
	.loc 1 800 0
	mov	%d15, 0
	.loc 1 798 0
	sub.a	%SP, 24
.LCFI1:
	.loc 1 808 0
	lea	%a15, [%SP] 4
	.loc 1 800 0
	st.b	[%a4] 24, %d15
	.loc 1 801 0
	mov	%d15, 0
	.loc 1 808 0
	mov.aa	%a2, %a15
	mov	%e2, 0
	st.d	[%a2+]8, %e2
	st.d	[%a2+]8, %e2
	st.w	[%a2+]4, %d2
	.loc 1 801 0
	st.w	[%a4] 20, %d15
	.loc 1 802 0
	st.w	[%a4] 28, %d15
	.loc 1 803 0
	st.w	[%a4] 8, %d15
	.loc 1 804 0
	st.w	[%a4] 12, %d15
	.loc 1 805 0
	st.w	[%a4] 16, %d15
	.loc 1 806 0
	st.w	[%a4] 4, %d15
	.loc 1 807 0
	st.w	[%a4] 52, %d15
	.loc 1 808 0
	mov	%d15, 128
	.loc 1 799 0
	st.a	[%a4]0, %a5
	.loc 1 814 0
	lea	%a4, [%a4] 32
.LVL254:
	.loc 1 808 0
	st.w	[%SP] 16, %d15
	.loc 1 814 0
		# #chunks=2, chunksize=8, remains=4
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	ld.d	%e2, [%a15+]8
	st.d	[%a4+]8, %e2
	ld.w	%d2, [%a15+]4
	st.w	[%a4+]4, %d2
.LVL255:
	.loc 1 815 0
	ret
.LFE365:
	.size	IfxVadc_Adc_initExternalMultiplexerModeConfig, .-IfxVadc_Adc_initExternalMultiplexerModeConfig
.section .text.IfxVadc_Adc_initExternalMultiplexerMode,"ax",@progbits
	.align 1
	.global	IfxVadc_Adc_initExternalMultiplexerMode
	.type	IfxVadc_Adc_initExternalMultiplexerMode, @function
IfxVadc_Adc_initExternalMultiplexerMode:
.LFB366:
	.loc 1 819 0
.LVL256:
	.loc 1 821 0
	ld.w	%d15, [%a5] 20
	mov.d	%d2, %a4
	sh	%d9, %d15, 10
	addi	%d9, %d9, 1152
	add	%d9, %d2
.LVL257:
.LBB556:
.LBB557:
	.loc 3 2286 0
	ld.w	%d2, [%a5] 28
.LBE557:
.LBE556:
	.loc 1 819 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 819 0
	mov.aa	%a14, %a4
	mov.aa	%a15, %a5
.LBB560:
.LBB558:
	.loc 3 2286 0
	jnz	%d2, .L103
	.loc 3 2288 0
	ld.w	%d2, [%a4] 1008
	insert	%d2, %d2, %d15, 0, 4
	st.w	[%a4] 1008, %d2
.L105:
	.loc 1 818 0 discriminator 1
	mov.d	%d2, %a15
	lea	%a13, [%a15] 32
	addi	%d15, %d2, 44
.LVL258:
.L104:
.LBE558:
.LBE560:
	.loc 1 826 0
	ld.a	%a12, [%a13+]4
	jz.a	%a12, .L106
.LBB561:
.LBB562:
.LBB563:
.LBB564:
	.file 6 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.loc 6 523 0
	ld.w	%d5, [%a12] 12
	ld.w	%d2, [%a15] 44
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	or	%d5, %d2
.LBE564:
.LBE563:
.LBE562:
.LBE561:
	.loc 1 828 0
	ld.w	%d8, [%a15] 48
.LVL259:
.LBB568:
.LBB567:
.LBB566:
.LBB565:
	.loc 6 523 0
	call	IfxPort_setPinMode
.LVL260:
.LBE565:
.LBE566:
	.loc 3 2110 0
	ld.a	%a4, [%a12] 4
	ld.bu	%d4, [%a12] 8
	mov	%d5, %d8
	call	IfxPort_setPinPadDriver
.LVL261:
.L106:
.LBE567:
.LBE568:
	.loc 1 824 0
	mov.d	%d2, %a13
	jne	%d2, %d15, .L104
	.loc 1 832 0
	ld.w	%d15, [%a15] 16
	ld.bu	%d5, [%a15] 24
	st.w	[%SP]0, %d15
	ld.w	%d15, [%a15] 52
	st.w	[%SP] 4, %d15
	mov.a	%a5, %d9
	ld.w	%d4, [%a15] 4
	ld.w	%d6, [%a15] 8
	ld.w	%d7, [%a15] 12
	mov.aa	%a4, %a14
	.loc 1 833 0
	j	IfxVadc_configExternalMultiplexerMode
.LVL262:
.L103:
.LBB569:
.LBB559:
	.loc 3 2292 0
	ld.w	%d2, [%a4] 1008
.LVL263:
	insert	%d2, %d2, %d15, 4, 4
	st.w	[%a4] 1008, %d2
	j	.L105
.LBE559:
.LBE569:
.LFE366:
	.size	IfxVadc_Adc_initExternalMultiplexerMode, .-IfxVadc_Adc_initExternalMultiplexerMode
.section .srodata.IfxVadc_Adc_masterIndex,"as",@progbits
	.type	IfxVadc_Adc_masterIndex, @object
	.size	IfxVadc_Adc_masterIndex, 4
IfxVadc_Adc_masterIndex:
	.byte	0
	.byte	1
	.byte	1
	.byte	0
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
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.byte	0x4
	.uaword	.LCFI0-.LFB357
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.byte	0x4
	.uaword	.LCFI1-.LFB365
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.byte	0x4
	.uaword	.LCFI2-.LFB366
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 7 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
	.file 8 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 9 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 10 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
	.file 11 "./0_Src/4_McHal/Tricore/_Impl/IfxVadc_cfg.h"
	.file 12 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_regdef.h"
	.file 13 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 14 "./0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.h"
	.file 15 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe3fe
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x6a0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.byte	0x32
	.uaword	0xce
	.uleb128 0x3
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxSrc_Tos_dma"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"IfxSrc_Tos"
	.byte	0x7
	.byte	0x35
	.uaword	0xa2
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x4
	.string	"uint8"
	.byte	0x8
	.byte	0x59
	.uaword	0x124
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x4
	.string	"uint16"
	.byte	0x8
	.byte	0x5b
	.uaword	0x150
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x4
	.string	"uint32"
	.byte	0x8
	.byte	0x5d
	.uaword	0xec
	.uleb128 0x4
	.string	"float32"
	.byte	0x8
	.byte	0x5e
	.uaword	0x183
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.string	"boolean"
	.byte	0x8
	.byte	0x68
	.uaword	0x124
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.string	"Ifx_Priority"
	.byte	0x9
	.byte	0x43
	.uaword	0x142
	.uleb128 0x6
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x2d
	.uaword	0x310
	.uleb128 0x7
	.string	"SRPN"
	.byte	0xa
	.byte	0x2f
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xa
	.byte	0x30
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRE"
	.byte	0xa
	.byte	0x31
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TOS"
	.byte	0xa
	.byte	0x32
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0xa
	.byte	0x33
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ECC"
	.byte	0xa
	.byte	0x34
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0xa
	.byte	0x35
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SRR"
	.byte	0xa
	.byte	0x36
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CLRR"
	.byte	0xa
	.byte	0x37
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SETR"
	.byte	0xa
	.byte	0x38
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"IOV"
	.byte	0xa
	.byte	0x39
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"IOVCLR"
	.byte	0xa
	.byte	0x3a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SWS"
	.byte	0xa
	.byte	0x3b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SWSCLR"
	.byte	0xa
	.byte	0x3c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0xa
	.byte	0x3d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x4
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0xa
	.byte	0x3e
	.uaword	0x1ec
	.uleb128 0x9
	.byte	0x4
	.byte	0xa
	.byte	0x46
	.uaword	0x35d
	.uleb128 0xa
	.string	"U"
	.byte	0xa
	.byte	0x48
	.uaword	0x310
	.uleb128 0xa
	.string	"I"
	.byte	0xa
	.byte	0x49
	.uaword	0x101
	.uleb128 0xa
	.string	"B"
	.byte	0xa
	.byte	0x4a
	.uaword	0x320
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SRC_SRCR"
	.byte	0xa
	.byte	0x4b
	.uaword	0x339
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x381
	.uleb128 0xc
	.uaword	0xec
	.byte	0x1b
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x391
	.uleb128 0xc
	.uaword	0xec
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x3a1
	.uleb128 0xc
	.uaword	0xec
	.byte	0x27
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x3b1
	.uleb128 0xc
	.uaword	0xec
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x3c1
	.uleb128 0xc
	.uaword	0xec
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x3d1
	.uleb128 0xc
	.uaword	0xec
	.byte	0xbf
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x3e1
	.uleb128 0xc
	.uaword	0xec
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0xb
	.byte	0x5e
	.uaword	0x446
	.uleb128 0x3
	.string	"IfxVadc_GroupId_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_GroupId_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_GroupId_global0"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_GroupId_global1"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_GroupId"
	.byte	0xb
	.byte	0x63
	.uaword	0x3e1
	.uleb128 0x6
	.string	"_Ifx_VADC_ACCEN0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x31
	.uaword	0x6b2
	.uleb128 0x7
	.string	"EN0"
	.byte	0xc
	.byte	0x33
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN1"
	.byte	0xc
	.byte	0x34
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN2"
	.byte	0xc
	.byte	0x35
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN3"
	.byte	0xc
	.byte	0x36
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN4"
	.byte	0xc
	.byte	0x37
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN5"
	.byte	0xc
	.byte	0x38
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN6"
	.byte	0xc
	.byte	0x39
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN7"
	.byte	0xc
	.byte	0x3a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN8"
	.byte	0xc
	.byte	0x3b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN9"
	.byte	0xc
	.byte	0x3c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN10"
	.byte	0xc
	.byte	0x3d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN11"
	.byte	0xc
	.byte	0x3e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN12"
	.byte	0xc
	.byte	0x3f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN13"
	.byte	0xc
	.byte	0x40
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN14"
	.byte	0xc
	.byte	0x41
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN15"
	.byte	0xc
	.byte	0x42
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN16"
	.byte	0xc
	.byte	0x43
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN17"
	.byte	0xc
	.byte	0x44
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN18"
	.byte	0xc
	.byte	0x45
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN19"
	.byte	0xc
	.byte	0x46
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN20"
	.byte	0xc
	.byte	0x47
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN21"
	.byte	0xc
	.byte	0x48
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN22"
	.byte	0xc
	.byte	0x49
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN23"
	.byte	0xc
	.byte	0x4a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN24"
	.byte	0xc
	.byte	0x4b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN25"
	.byte	0xc
	.byte	0x4c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN26"
	.byte	0xc
	.byte	0x4d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN27"
	.byte	0xc
	.byte	0x4e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN28"
	.byte	0xc
	.byte	0x4f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN29"
	.byte	0xc
	.byte	0x50
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN30"
	.byte	0xc
	.byte	0x51
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN31"
	.byte	0xc
	.byte	0x52
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_ACCEN0_Bits"
	.byte	0xc
	.byte	0x53
	.uaword	0x45d
	.uleb128 0x6
	.string	"_Ifx_VADC_ACCPROT0_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x56
	.uaword	0x7c5
	.uleb128 0x7
	.string	"APC0"
	.byte	0xc
	.byte	0x58
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APC1"
	.byte	0xc
	.byte	0x59
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APC2"
	.byte	0xc
	.byte	0x5a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APC3"
	.byte	0xc
	.byte	0x5b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xc
	.byte	0x5c
	.uaword	0x310
	.byte	0x4
	.byte	0xb
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APEM"
	.byte	0xc
	.byte	0x5d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"API0"
	.byte	0xc
	.byte	0x5e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"API1"
	.byte	0xc
	.byte	0x5f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"API2"
	.byte	0xc
	.byte	0x60
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"API3"
	.byte	0xc
	.byte	0x61
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0xc
	.byte	0x62
	.uaword	0x310
	.byte	0x4
	.byte	0xb
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APGC"
	.byte	0xc
	.byte	0x63
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_ACCPROT0_Bits"
	.byte	0xc
	.byte	0x64
	.uaword	0x6ce
	.uleb128 0x6
	.string	"_Ifx_VADC_ACCPROT1_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x67
	.uaword	0x8c8
	.uleb128 0x7
	.string	"APS0"
	.byte	0xc
	.byte	0x69
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APS1"
	.byte	0xc
	.byte	0x6a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APS2"
	.byte	0xc
	.byte	0x6b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APS3"
	.byte	0xc
	.byte	0x6c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xc
	.byte	0x6d
	.uaword	0x310
	.byte	0x4
	.byte	0xb
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APTF"
	.byte	0xc
	.byte	0x6e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APR0"
	.byte	0xc
	.byte	0x6f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APR1"
	.byte	0xc
	.byte	0x70
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APR2"
	.byte	0xc
	.byte	0x71
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"APR3"
	.byte	0xc
	.byte	0x72
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0xc
	.byte	0x73
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_ACCPROT1_Bits"
	.byte	0xc
	.byte	0x74
	.uaword	0x7e3
	.uleb128 0x6
	.string	"_Ifx_VADC_BRSCTRL_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x77
	.uaword	0x9c3
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0xc
	.byte	0x79
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xc
	.byte	0x7a
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0xc
	.byte	0x7b
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0xc
	.byte	0x7c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0xc
	.byte	0x7d
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"XTWC"
	.byte	0xc
	.byte	0x7e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0xc
	.byte	0x7f
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0xc
	.byte	0x80
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0xc
	.byte	0x81
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GTWC"
	.byte	0xc
	.byte	0x82
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0xc
	.byte	0x83
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_BRSCTRL_Bits"
	.byte	0xc
	.byte	0x84
	.uaword	0x8e6
	.uleb128 0x6
	.string	"_Ifx_VADC_BRSMR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x87
	.uaword	0xad1
	.uleb128 0x7
	.string	"ENGT"
	.byte	0xc
	.byte	0x89
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ENTR"
	.byte	0xc
	.byte	0x8a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0xc
	.byte	0x8b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SCAN"
	.byte	0xc
	.byte	0x8c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LDM"
	.byte	0xc
	.byte	0x8d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0xc
	.byte	0x8e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0xc
	.byte	0x8f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CLRPND"
	.byte	0xc
	.byte	0x90
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"LDEV"
	.byte	0xc
	.byte	0x91
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0xc
	.byte	0x92
	.uaword	0x310
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0xc
	.byte	0x93
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0xc
	.byte	0x94
	.uaword	0x310
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_BRSMR_Bits"
	.byte	0xc
	.byte	0x95
	.uaword	0x9e0
	.uleb128 0x6
	.string	"_Ifx_VADC_BRSPND_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x98
	.uaword	0xb20
	.uleb128 0x7
	.string	"CHPNDGy"
	.byte	0xc
	.byte	0x9a
	.uaword	0x310
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_BRSPND_Bits"
	.byte	0xc
	.byte	0x9b
	.uaword	0xaec
	.uleb128 0x6
	.string	"_Ifx_VADC_BRSSEL_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0x9e
	.uaword	0xb70
	.uleb128 0x7
	.string	"CHSELGy"
	.byte	0xc
	.byte	0xa0
	.uaword	0x310
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_BRSSEL_Bits"
	.byte	0xc
	.byte	0xa1
	.uaword	0xb3c
	.uleb128 0x6
	.string	"_Ifx_VADC_CLC_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xa4
	.uaword	0xc00
	.uleb128 0x7
	.string	"DISR"
	.byte	0xc
	.byte	0xa6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"DISS"
	.byte	0xc
	.byte	0xa7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0xa8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EDIS"
	.byte	0xc
	.byte	0xa9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xc
	.byte	0xaa
	.uaword	0x310
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_CLC_Bits"
	.byte	0xc
	.byte	0xab
	.uaword	0xb8c
	.uleb128 0x6
	.string	"_Ifx_VADC_EMUXSEL_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xae
	.uaword	0xc76
	.uleb128 0x7
	.string	"EMUXGRP0"
	.byte	0xc
	.byte	0xb0
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EMUXGRP1"
	.byte	0xc
	.byte	0xb1
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xc
	.byte	0xb2
	.uaword	0x310
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_EMUXSEL_Bits"
	.byte	0xc
	.byte	0xb3
	.uaword	0xc19
	.uleb128 0x6
	.string	"_Ifx_VADC_G_ALIAS_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xb6
	.uaword	0xcfd
	.uleb128 0x7
	.string	"ALIAS0"
	.byte	0xc
	.byte	0xb8
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0xc
	.byte	0xb9
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ALIAS1"
	.byte	0xc
	.byte	0xba
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0xc
	.byte	0xbb
	.uaword	0x310
	.byte	0x4
	.byte	0x13
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_G_ALIAS_Bits"
	.byte	0xc
	.byte	0xbc
	.uaword	0xc93
	.uleb128 0x6
	.string	"_Ifx_VADC_G_ARBCFG_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xbf
	.uaword	0xe4c
	.uleb128 0x7
	.string	"ANONC"
	.byte	0xc
	.byte	0xc1
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0xc2
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ARBRND"
	.byte	0xc
	.byte	0xc3
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0xc
	.byte	0xc4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ARBM"
	.byte	0xc
	.byte	0xc5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xc
	.byte	0xc6
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ANONS"
	.byte	0xc
	.byte	0xc7
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CSRC"
	.byte	0xc
	.byte	0xc8
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CHNR"
	.byte	0xc
	.byte	0xc9
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SYNRUN"
	.byte	0xc
	.byte	0xca
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0xc
	.byte	0xcb
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CAL"
	.byte	0xc
	.byte	0xcc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CALS"
	.byte	0xc
	.byte	0xcd
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BUSY"
	.byte	0xc
	.byte	0xce
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SAMPLE"
	.byte	0xc
	.byte	0xcf
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_G_ARBCFG_Bits"
	.byte	0xc
	.byte	0xd0
	.uaword	0xd1a
	.uleb128 0x6
	.string	"_Ifx_VADC_G_ARBPR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xd3
	.uaword	0xfd8
	.uleb128 0x7
	.string	"PRIO0"
	.byte	0xc
	.byte	0xd5
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0xc
	.byte	0xd6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CSM0"
	.byte	0xc
	.byte	0xd7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PRIO1"
	.byte	0xc
	.byte	0xd8
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0xc
	.byte	0xd9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CSM1"
	.byte	0xc
	.byte	0xda
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PRIO2"
	.byte	0xc
	.byte	0xdb
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0xc
	.byte	0xdc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CSM2"
	.byte	0xc
	.byte	0xdd
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PRIO3"
	.byte	0xc
	.byte	0xde
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"reserved_14"
	.byte	0xc
	.byte	0xdf
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"CSM3"
	.byte	0xc
	.byte	0xe0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0xc
	.byte	0xe1
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ASEN0"
	.byte	0xc
	.byte	0xe2
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ASEN1"
	.byte	0xc
	.byte	0xe3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ASEN2"
	.byte	0xc
	.byte	0xe4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ASEN3"
	.byte	0xc
	.byte	0xe5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF24
	.byte	0xc
	.byte	0xe6
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_G_ARBPR_Bits"
	.byte	0xc
	.byte	0xe7
	.uaword	0xe6a
	.uleb128 0x6
	.string	"_Ifx_VADC_G_ASCTRL_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xea
	.uaword	0x1108
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0xc
	.byte	0xec
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0xc
	.byte	0xed
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0xc
	.byte	0xee
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0xc
	.byte	0xef
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0xc
	.byte	0xf0
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"XTWC"
	.byte	0xc
	.byte	0xf1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0xc
	.byte	0xf2
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0xc
	.byte	0xf3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0xc
	.byte	0xf4
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"GTWC"
	.byte	0xc
	.byte	0xf5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0xc
	.byte	0xf6
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TMEN"
	.byte	0xc
	.byte	0xf7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF25
	.byte	0xc
	.byte	0xf8
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"TMWC"
	.byte	0xc
	.byte	0xf9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_VADC_G_ASCTRL_Bits"
	.byte	0xc
	.byte	0xfa
	.uaword	0xff5
	.uleb128 0x6
	.string	"_Ifx_VADC_G_ASMR_Bits"
	.byte	0x4
	.byte	0xc
	.byte	0xfd
	.uaword	0x1223
	.uleb128 0x7
	.string	"ENGT"
	.byte	0xc
	.byte	0xff
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ENTR"
	.byte	0xc
	.uahalf	0x100
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0xc
	.uahalf	0x101
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SCAN"
	.byte	0xc
	.uahalf	0x102
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LDM"
	.byte	0xc
	.uahalf	0x103
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xc
	.uahalf	0x104
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0xc
	.uahalf	0x105
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CLRPND"
	.byte	0xc
	.uahalf	0x106
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LDEV"
	.byte	0xc
	.uahalf	0x107
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF16
	.byte	0xc
	.uahalf	0x108
	.uaword	0x310
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0xc
	.uahalf	0x109
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x10a
	.uaword	0x310
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASMR_Bits"
	.byte	0xc
	.uahalf	0x10b
	.uaword	0x1126
	.uleb128 0x10
	.string	"_Ifx_VADC_G_ASPND_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x10e
	.uaword	0x1275
	.uleb128 0xd
	.string	"CHPND"
	.byte	0xc
	.uahalf	0x110
	.uaword	0x310
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASPND_Bits"
	.byte	0xc
	.uahalf	0x111
	.uaword	0x1240
	.uleb128 0x10
	.string	"_Ifx_VADC_G_ASSEL_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x114
	.uaword	0x12c8
	.uleb128 0xd
	.string	"CHSEL"
	.byte	0xc
	.uahalf	0x116
	.uaword	0x310
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASSEL_Bits"
	.byte	0xc
	.uahalf	0x117
	.uaword	0x1293
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BFL_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x11a
	.uaword	0x141f
	.uleb128 0xd
	.string	"BFL0"
	.byte	0xc
	.uahalf	0x11c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFL1"
	.byte	0xc
	.uahalf	0x11d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFL2"
	.byte	0xc
	.uahalf	0x11e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFL3"
	.byte	0xc
	.uahalf	0x11f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x120
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFA0"
	.byte	0xc
	.uahalf	0x121
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFA1"
	.byte	0xc
	.uahalf	0x122
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFA2"
	.byte	0xc
	.uahalf	0x123
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFA3"
	.byte	0xc
	.uahalf	0x124
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x125
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFI0"
	.byte	0xc
	.uahalf	0x126
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFI1"
	.byte	0xc
	.uahalf	0x127
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFI2"
	.byte	0xc
	.uahalf	0x128
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFI3"
	.byte	0xc
	.uahalf	0x129
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0xc
	.uahalf	0x12a
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFL_Bits"
	.byte	0xc
	.uahalf	0x12b
	.uaword	0x12e6
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BFLC_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x12e
	.uaword	0x14b9
	.uleb128 0xd
	.string	"BFM0"
	.byte	0xc
	.uahalf	0x130
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFM1"
	.byte	0xc
	.uahalf	0x131
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFM2"
	.byte	0xc
	.uahalf	0x132
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFM3"
	.byte	0xc
	.uahalf	0x133
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xc
	.uahalf	0x134
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLC_Bits"
	.byte	0xc
	.uahalf	0x135
	.uaword	0x143b
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BFLNP_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x138
	.uaword	0x155d
	.uleb128 0xd
	.string	"BFL0NP"
	.byte	0xc
	.uahalf	0x13a
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFL1NP"
	.byte	0xc
	.uahalf	0x13b
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFL2NP"
	.byte	0xc
	.uahalf	0x13c
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFL3NP"
	.byte	0xc
	.uahalf	0x13d
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xc
	.uahalf	0x13e
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLNP_Bits"
	.byte	0xc
	.uahalf	0x13f
	.uaword	0x14d6
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BFLS_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x142
	.uaword	0x1657
	.uleb128 0xd
	.string	"BFC0"
	.byte	0xc
	.uahalf	0x144
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFC1"
	.byte	0xc
	.uahalf	0x145
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFC2"
	.byte	0xc
	.uahalf	0x146
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFC3"
	.byte	0xc
	.uahalf	0x147
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x148
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFS0"
	.byte	0xc
	.uahalf	0x149
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFS1"
	.byte	0xc
	.uahalf	0x14a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFS2"
	.byte	0xc
	.uahalf	0x14b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BFS3"
	.byte	0xc
	.uahalf	0x14c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0xc
	.uahalf	0x14d
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLS_Bits"
	.byte	0xc
	.uahalf	0x14e
	.uaword	0x157b
	.uleb128 0x10
	.string	"_Ifx_VADC_G_BOUND_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x151
	.uaword	0x16dd
	.uleb128 0xe
	.uaword	.LASF26
	.byte	0xc
	.uahalf	0x153
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x154
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF27
	.byte	0xc
	.uahalf	0x155
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0xc
	.uahalf	0x156
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BOUND_Bits"
	.byte	0xc
	.uahalf	0x157
	.uaword	0x1674
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CEFCLR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x15a
	.uaword	0x1865
	.uleb128 0xd
	.string	"CEV0"
	.byte	0xc
	.uahalf	0x15c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV1"
	.byte	0xc
	.uahalf	0x15d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV2"
	.byte	0xc
	.uahalf	0x15e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV3"
	.byte	0xc
	.uahalf	0x15f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV4"
	.byte	0xc
	.uahalf	0x160
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV5"
	.byte	0xc
	.uahalf	0x161
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV6"
	.byte	0xc
	.uahalf	0x162
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV7"
	.byte	0xc
	.uahalf	0x163
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV8"
	.byte	0xc
	.uahalf	0x164
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV9"
	.byte	0xc
	.uahalf	0x165
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV10"
	.byte	0xc
	.uahalf	0x166
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV11"
	.byte	0xc
	.uahalf	0x167
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV12"
	.byte	0xc
	.uahalf	0x168
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV13"
	.byte	0xc
	.uahalf	0x169
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV14"
	.byte	0xc
	.uahalf	0x16a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV15"
	.byte	0xc
	.uahalf	0x16b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xc
	.uahalf	0x16c
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEFCLR_Bits"
	.byte	0xc
	.uahalf	0x16d
	.uaword	0x16fb
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CEFLAG_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x170
	.uaword	0x19ee
	.uleb128 0xd
	.string	"CEV0"
	.byte	0xc
	.uahalf	0x172
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV1"
	.byte	0xc
	.uahalf	0x173
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV2"
	.byte	0xc
	.uahalf	0x174
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV3"
	.byte	0xc
	.uahalf	0x175
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV4"
	.byte	0xc
	.uahalf	0x176
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV5"
	.byte	0xc
	.uahalf	0x177
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV6"
	.byte	0xc
	.uahalf	0x178
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV7"
	.byte	0xc
	.uahalf	0x179
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV8"
	.byte	0xc
	.uahalf	0x17a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV9"
	.byte	0xc
	.uahalf	0x17b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV10"
	.byte	0xc
	.uahalf	0x17c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV11"
	.byte	0xc
	.uahalf	0x17d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV12"
	.byte	0xc
	.uahalf	0x17e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV13"
	.byte	0xc
	.uahalf	0x17f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV14"
	.byte	0xc
	.uahalf	0x180
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV15"
	.byte	0xc
	.uahalf	0x181
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xc
	.uahalf	0x182
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEFLAG_Bits"
	.byte	0xc
	.uahalf	0x183
	.uaword	0x1884
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CEVNP0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x186
	.uaword	0x1ad7
	.uleb128 0xd
	.string	"CEV0NP"
	.byte	0xc
	.uahalf	0x188
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV1NP"
	.byte	0xc
	.uahalf	0x189
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV2NP"
	.byte	0xc
	.uahalf	0x18a
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV3NP"
	.byte	0xc
	.uahalf	0x18b
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV4NP"
	.byte	0xc
	.uahalf	0x18c
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV5NP"
	.byte	0xc
	.uahalf	0x18d
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV6NP"
	.byte	0xc
	.uahalf	0x18e
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV7NP"
	.byte	0xc
	.uahalf	0x18f
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEVNP0_Bits"
	.byte	0xc
	.uahalf	0x190
	.uaword	0x1a0d
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CEVNP1_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x193
	.uaword	0x1bc6
	.uleb128 0xd
	.string	"CEV8NP"
	.byte	0xc
	.uahalf	0x195
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV9NP"
	.byte	0xc
	.uahalf	0x196
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV10NP"
	.byte	0xc
	.uahalf	0x197
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV11NP"
	.byte	0xc
	.uahalf	0x198
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV12NP"
	.byte	0xc
	.uahalf	0x199
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV13NP"
	.byte	0xc
	.uahalf	0x19a
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV14NP"
	.byte	0xc
	.uahalf	0x19b
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV15NP"
	.byte	0xc
	.uahalf	0x19c
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEVNP1_Bits"
	.byte	0xc
	.uahalf	0x19d
	.uaword	0x1af6
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CHASS_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1a0
	.uaword	0x1ebc
	.uleb128 0xd
	.string	"ASSCH0"
	.byte	0xc
	.uahalf	0x1a2
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH1"
	.byte	0xc
	.uahalf	0x1a3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH2"
	.byte	0xc
	.uahalf	0x1a4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH3"
	.byte	0xc
	.uahalf	0x1a5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH4"
	.byte	0xc
	.uahalf	0x1a6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH5"
	.byte	0xc
	.uahalf	0x1a7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH6"
	.byte	0xc
	.uahalf	0x1a8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH7"
	.byte	0xc
	.uahalf	0x1a9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH8"
	.byte	0xc
	.uahalf	0x1aa
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH9"
	.byte	0xc
	.uahalf	0x1ab
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH10"
	.byte	0xc
	.uahalf	0x1ac
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH11"
	.byte	0xc
	.uahalf	0x1ad
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH12"
	.byte	0xc
	.uahalf	0x1ae
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH13"
	.byte	0xc
	.uahalf	0x1af
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH14"
	.byte	0xc
	.uahalf	0x1b0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH15"
	.byte	0xc
	.uahalf	0x1b1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH16"
	.byte	0xc
	.uahalf	0x1b2
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH17"
	.byte	0xc
	.uahalf	0x1b3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH18"
	.byte	0xc
	.uahalf	0x1b4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH19"
	.byte	0xc
	.uahalf	0x1b5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH20"
	.byte	0xc
	.uahalf	0x1b6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH21"
	.byte	0xc
	.uahalf	0x1b7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH22"
	.byte	0xc
	.uahalf	0x1b8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH23"
	.byte	0xc
	.uahalf	0x1b9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH24"
	.byte	0xc
	.uahalf	0x1ba
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH25"
	.byte	0xc
	.uahalf	0x1bb
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH26"
	.byte	0xc
	.uahalf	0x1bc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH27"
	.byte	0xc
	.uahalf	0x1bd
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH28"
	.byte	0xc
	.uahalf	0x1be
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH29"
	.byte	0xc
	.uahalf	0x1bf
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH30"
	.byte	0xc
	.uahalf	0x1c0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSCH31"
	.byte	0xc
	.uahalf	0x1c1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CHASS_Bits"
	.byte	0xc
	.uahalf	0x1c2
	.uaword	0x1be5
	.uleb128 0x10
	.string	"_Ifx_VADC_G_CHCTR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1c5
	.uaword	0x202e
	.uleb128 0xd
	.string	"ICLSEL"
	.byte	0xc
	.uahalf	0x1c7
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x1c8
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BNDSELL"
	.byte	0xc
	.uahalf	0x1c9
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BNDSELU"
	.byte	0xc
	.uahalf	0x1ca
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CHEVMODE"
	.byte	0xc
	.uahalf	0x1cb
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SYNC"
	.byte	0xc
	.uahalf	0x1cc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REFSEL"
	.byte	0xc
	.uahalf	0x1cd
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BNDSELX"
	.byte	0xc
	.uahalf	0x1ce
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RESREG"
	.byte	0xc
	.uahalf	0x1cf
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RESTBS"
	.byte	0xc
	.uahalf	0x1d0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RESPOS"
	.byte	0xc
	.uahalf	0x1d1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x1d2
	.uaword	0x310
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BWDCH"
	.byte	0xc
	.uahalf	0x1d3
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"BWDEN"
	.byte	0xc
	.uahalf	0x1d4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0xc
	.uahalf	0x1d5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CHCTR_Bits"
	.byte	0xc
	.uahalf	0x1d6
	.uaword	0x1eda
	.uleb128 0x10
	.string	"_Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1d9
	.uaword	0x213d
	.uleb128 0xd
	.string	"EMUXSET"
	.byte	0xc
	.uahalf	0x1db
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF29
	.byte	0xc
	.uahalf	0x1dc
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMUXACT"
	.byte	0xc
	.uahalf	0x1dd
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF30
	.byte	0xc
	.uahalf	0x1de
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMUXCH"
	.byte	0xc
	.uahalf	0x1df
	.uaword	0x310
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMUXMODE"
	.byte	0xc
	.uahalf	0x1e0
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMXCOD"
	.byte	0xc
	.uahalf	0x1e1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMXST"
	.byte	0xc
	.uahalf	0x1e2
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMXCSS"
	.byte	0xc
	.uahalf	0x1e3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMXWC"
	.byte	0xc
	.uahalf	0x1e4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_EMUXCTR_Bits"
	.byte	0xc
	.uahalf	0x1e5
	.uaword	0x204c
	.uleb128 0x10
	.string	"_Ifx_VADC_G_Q0R0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1e8
	.uaword	0x21e6
	.uleb128 0xe
	.uaword	.LASF31
	.byte	0xc
	.uahalf	0x1ea
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RF"
	.byte	0xc
	.uahalf	0x1eb
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0xc
	.uahalf	0x1ec
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x1ed
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"V"
	.byte	0xc
	.uahalf	0x1ee
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x1ef
	.uaword	0x310
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_Q0R0_Bits"
	.byte	0xc
	.uahalf	0x1f0
	.uaword	0x215d
	.uleb128 0x10
	.string	"_Ifx_VADC_G_Q0R3_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x1f3
	.uaword	0x22e9
	.uleb128 0xe
	.uaword	.LASF31
	.byte	0xc
	.uahalf	0x1f5
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RF"
	.byte	0xc
	.uahalf	0x1f6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0xc
	.uahalf	0x1f7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x1f8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"V"
	.byte	0xc
	.uahalf	0x1f9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDD"
	.byte	0xc
	.uahalf	0x1fa
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MDPD"
	.byte	0xc
	.uahalf	0x1fb
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MDPU"
	.byte	0xc
	.uahalf	0x1fc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CDEN"
	.byte	0xc
	.uahalf	0x1fd
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF34
	.byte	0xc
	.uahalf	0x1fe
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF35
	.byte	0xc
	.uahalf	0x1ff
	.uaword	0x310
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_Q0R3_Bits"
	.byte	0xc
	.uahalf	0x200
	.uaword	0x2203
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QBUR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x203
	.uaword	0x2390
	.uleb128 0xe
	.uaword	.LASF31
	.byte	0xc
	.uahalf	0x205
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RF"
	.byte	0xc
	.uahalf	0x206
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0xc
	.uahalf	0x207
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x208
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"V"
	.byte	0xc
	.uahalf	0x209
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x20a
	.uaword	0x310
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QBUR0_Bits"
	.byte	0xc
	.uahalf	0x20b
	.uaword	0x2306
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QBUR3_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x20e
	.uaword	0x2495
	.uleb128 0xe
	.uaword	.LASF31
	.byte	0xc
	.uahalf	0x210
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RF"
	.byte	0xc
	.uahalf	0x211
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0xc
	.uahalf	0x212
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x213
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"V"
	.byte	0xc
	.uahalf	0x214
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDD"
	.byte	0xc
	.uahalf	0x215
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MDPD"
	.byte	0xc
	.uahalf	0x216
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MDPU"
	.byte	0xc
	.uahalf	0x217
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CDEN"
	.byte	0xc
	.uahalf	0x218
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF34
	.byte	0xc
	.uahalf	0x219
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF35
	.byte	0xc
	.uahalf	0x21a
	.uaword	0x310
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QBUR3_Bits"
	.byte	0xc
	.uahalf	0x21b
	.uaword	0x23ae
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QCTRL0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x21e
	.uaword	0x25d5
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0xc
	.uahalf	0x220
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x221
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0xc
	.uahalf	0x222
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0xc
	.uahalf	0x223
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0xc
	.uahalf	0x224
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"XTWC"
	.byte	0xc
	.uahalf	0x225
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0xc
	.uahalf	0x226
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0xc
	.uahalf	0x227
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0xc
	.uahalf	0x228
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GTWC"
	.byte	0xc
	.uahalf	0x229
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0xc
	.uahalf	0x22a
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TMEN"
	.byte	0xc
	.uahalf	0x22b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0xc
	.uahalf	0x22c
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TMWC"
	.byte	0xc
	.uahalf	0x22d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QCTRL0_Bits"
	.byte	0xc
	.uahalf	0x22e
	.uaword	0x24b3
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QCTRL3_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x231
	.uaword	0x2716
	.uleb128 0xe
	.uaword	.LASF6
	.byte	0xc
	.uahalf	0x233
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x234
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF7
	.byte	0xc
	.uahalf	0x235
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF8
	.byte	0xc
	.uahalf	0x236
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF9
	.byte	0xc
	.uahalf	0x237
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"XTWC"
	.byte	0xc
	.uahalf	0x238
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF10
	.byte	0xc
	.uahalf	0x239
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF11
	.byte	0xc
	.uahalf	0x23a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0xc
	.uahalf	0x23b
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GTWC"
	.byte	0xc
	.uahalf	0x23c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0xc
	.uahalf	0x23d
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TMEN"
	.byte	0xc
	.uahalf	0x23e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0xc
	.uahalf	0x23f
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TMWC"
	.byte	0xc
	.uahalf	0x240
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QCTRL3_Bits"
	.byte	0xc
	.uahalf	0x241
	.uaword	0x25f4
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QINR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x244
	.uaword	0x27af
	.uleb128 0xe
	.uaword	.LASF31
	.byte	0xc
	.uahalf	0x246
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RF"
	.byte	0xc
	.uahalf	0x247
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0xc
	.uahalf	0x248
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x249
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0xc
	.uahalf	0x24a
	.uaword	0x310
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QINR0_Bits"
	.byte	0xc
	.uahalf	0x24b
	.uaword	0x2735
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QINR3_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x24e
	.uaword	0x28b6
	.uleb128 0xe
	.uaword	.LASF31
	.byte	0xc
	.uahalf	0x250
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RF"
	.byte	0xc
	.uahalf	0x251
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF13
	.byte	0xc
	.uahalf	0x252
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF32
	.byte	0xc
	.uahalf	0x253
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0xc
	.uahalf	0x254
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDD"
	.byte	0xc
	.uahalf	0x255
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MDPD"
	.byte	0xc
	.uahalf	0x256
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MDPU"
	.byte	0xc
	.uahalf	0x257
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CDEN"
	.byte	0xc
	.uahalf	0x258
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF34
	.byte	0xc
	.uahalf	0x259
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF35
	.byte	0xc
	.uahalf	0x25a
	.uaword	0x310
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QINR3_Bits"
	.byte	0xc
	.uahalf	0x25b
	.uaword	0x27cd
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QMR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x25e
	.uaword	0x29ae
	.uleb128 0xd
	.string	"ENGT"
	.byte	0xc
	.uahalf	0x260
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ENTR"
	.byte	0xc
	.uahalf	0x261
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF29
	.byte	0xc
	.uahalf	0x262
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CLRV"
	.byte	0xc
	.uahalf	0x263
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TREV"
	.byte	0xc
	.uahalf	0x264
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FLUSH"
	.byte	0xc
	.uahalf	0x265
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV"
	.byte	0xc
	.uahalf	0x266
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x267
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0xc
	.uahalf	0x268
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x269
	.uaword	0x310
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QMR0_Bits"
	.byte	0xc
	.uahalf	0x26a
	.uaword	0x28d4
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QMR3_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x26d
	.uaword	0x2aa5
	.uleb128 0xd
	.string	"ENGT"
	.byte	0xc
	.uahalf	0x26f
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ENTR"
	.byte	0xc
	.uahalf	0x270
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF29
	.byte	0xc
	.uahalf	0x271
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CLRV"
	.byte	0xc
	.uahalf	0x272
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TREV"
	.byte	0xc
	.uahalf	0x273
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FLUSH"
	.byte	0xc
	.uahalf	0x274
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CEV"
	.byte	0xc
	.uahalf	0x275
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x276
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF17
	.byte	0xc
	.uahalf	0x277
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x278
	.uaword	0x310
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QMR3_Bits"
	.byte	0xc
	.uahalf	0x279
	.uaword	0x29cb
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QSR0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x27c
	.uaword	0x2b62
	.uleb128 0xd
	.string	"FILL"
	.byte	0xc
	.uahalf	0x27e
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x27f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMPTY"
	.byte	0xc
	.uahalf	0x280
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xc
	.uahalf	0x281
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0xc
	.uahalf	0x282
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EV"
	.byte	0xc
	.uahalf	0x283
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x284
	.uaword	0x310
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QSR0_Bits"
	.byte	0xc
	.uahalf	0x285
	.uaword	0x2ac2
	.uleb128 0x10
	.string	"_Ifx_VADC_G_QSR3_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x288
	.uaword	0x2c1f
	.uleb128 0xd
	.string	"FILL"
	.byte	0xc
	.uahalf	0x28a
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x28b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMPTY"
	.byte	0xc
	.uahalf	0x28c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xc
	.uahalf	0x28d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF15
	.byte	0xc
	.uahalf	0x28e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EV"
	.byte	0xc
	.uahalf	0x28f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x290
	.uaword	0x310
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QSR3_Bits"
	.byte	0xc
	.uahalf	0x291
	.uaword	0x2b7f
	.uleb128 0x10
	.string	"_Ifx_VADC_G_RCR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x294
	.uaword	0x2cef
	.uleb128 0xe
	.uaword	.LASF36
	.byte	0xc
	.uahalf	0x296
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DRCTR"
	.byte	0xc
	.uahalf	0x297
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DMM"
	.byte	0xc
	.uahalf	0x298
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x299
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"WFR"
	.byte	0xc
	.uahalf	0x29a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FEN"
	.byte	0xc
	.uahalf	0x29b
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF37
	.byte	0xc
	.uahalf	0x29c
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SRGEN"
	.byte	0xc
	.uahalf	0x29d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RCR_Bits"
	.byte	0xc
	.uahalf	0x29e
	.uaword	0x2c3c
	.uleb128 0x10
	.string	"_Ifx_VADC_G_REFCLR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x2a1
	.uaword	0x2e75
	.uleb128 0xd
	.string	"REV0"
	.byte	0xc
	.uahalf	0x2a3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV1"
	.byte	0xc
	.uahalf	0x2a4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV2"
	.byte	0xc
	.uahalf	0x2a5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV3"
	.byte	0xc
	.uahalf	0x2a6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV4"
	.byte	0xc
	.uahalf	0x2a7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV5"
	.byte	0xc
	.uahalf	0x2a8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV6"
	.byte	0xc
	.uahalf	0x2a9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV7"
	.byte	0xc
	.uahalf	0x2aa
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV8"
	.byte	0xc
	.uahalf	0x2ab
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV9"
	.byte	0xc
	.uahalf	0x2ac
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV10"
	.byte	0xc
	.uahalf	0x2ad
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV11"
	.byte	0xc
	.uahalf	0x2ae
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV12"
	.byte	0xc
	.uahalf	0x2af
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV13"
	.byte	0xc
	.uahalf	0x2b0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV14"
	.byte	0xc
	.uahalf	0x2b1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV15"
	.byte	0xc
	.uahalf	0x2b2
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xc
	.uahalf	0x2b3
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REFCLR_Bits"
	.byte	0xc
	.uahalf	0x2b4
	.uaword	0x2d0b
	.uleb128 0x10
	.string	"_Ifx_VADC_G_REFLAG_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x2b7
	.uaword	0x2ffe
	.uleb128 0xd
	.string	"REV0"
	.byte	0xc
	.uahalf	0x2b9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV1"
	.byte	0xc
	.uahalf	0x2ba
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV2"
	.byte	0xc
	.uahalf	0x2bb
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV3"
	.byte	0xc
	.uahalf	0x2bc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV4"
	.byte	0xc
	.uahalf	0x2bd
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV5"
	.byte	0xc
	.uahalf	0x2be
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV6"
	.byte	0xc
	.uahalf	0x2bf
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV7"
	.byte	0xc
	.uahalf	0x2c0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV8"
	.byte	0xc
	.uahalf	0x2c1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV9"
	.byte	0xc
	.uahalf	0x2c2
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV10"
	.byte	0xc
	.uahalf	0x2c3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV11"
	.byte	0xc
	.uahalf	0x2c4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV12"
	.byte	0xc
	.uahalf	0x2c5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV13"
	.byte	0xc
	.uahalf	0x2c6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV14"
	.byte	0xc
	.uahalf	0x2c7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV15"
	.byte	0xc
	.uahalf	0x2c8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xc
	.uahalf	0x2c9
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REFLAG_Bits"
	.byte	0xc
	.uahalf	0x2ca
	.uaword	0x2e94
	.uleb128 0x10
	.string	"_Ifx_VADC_G_RES_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x2cd
	.uaword	0x30bb
	.uleb128 0xe
	.uaword	.LASF38
	.byte	0xc
	.uahalf	0x2cf
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DRC"
	.byte	0xc
	.uahalf	0x2d0
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CHNR"
	.byte	0xc
	.uahalf	0x2d1
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMUX"
	.byte	0xc
	.uahalf	0x2d2
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CRS"
	.byte	0xc
	.uahalf	0x2d3
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FCR"
	.byte	0xc
	.uahalf	0x2d4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF"
	.byte	0xc
	.uahalf	0x2d5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RES_Bits"
	.byte	0xc
	.uahalf	0x2d6
	.uaword	0x301d
	.uleb128 0x10
	.string	"_Ifx_VADC_G_RESD_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x2d9
	.uaword	0x3176
	.uleb128 0xe
	.uaword	.LASF38
	.byte	0xc
	.uahalf	0x2db
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DRC"
	.byte	0xc
	.uahalf	0x2dc
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CHNR"
	.byte	0xc
	.uahalf	0x2dd
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMUX"
	.byte	0xc
	.uahalf	0x2de
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CRS"
	.byte	0xc
	.uahalf	0x2df
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FCR"
	.byte	0xc
	.uahalf	0x2e0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF"
	.byte	0xc
	.uahalf	0x2e1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RESD_Bits"
	.byte	0xc
	.uahalf	0x2e2
	.uaword	0x30d7
	.uleb128 0x10
	.string	"_Ifx_VADC_G_REVNP0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x2e5
	.uaword	0x325d
	.uleb128 0xd
	.string	"REV0NP"
	.byte	0xc
	.uahalf	0x2e7
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV1NP"
	.byte	0xc
	.uahalf	0x2e8
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV2NP"
	.byte	0xc
	.uahalf	0x2e9
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV3NP"
	.byte	0xc
	.uahalf	0x2ea
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV4NP"
	.byte	0xc
	.uahalf	0x2eb
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV5NP"
	.byte	0xc
	.uahalf	0x2ec
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV6NP"
	.byte	0xc
	.uahalf	0x2ed
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV7NP"
	.byte	0xc
	.uahalf	0x2ee
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REVNP0_Bits"
	.byte	0xc
	.uahalf	0x2ef
	.uaword	0x3193
	.uleb128 0x10
	.string	"_Ifx_VADC_G_REVNP1_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x2f2
	.uaword	0x334c
	.uleb128 0xd
	.string	"REV8NP"
	.byte	0xc
	.uahalf	0x2f4
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV9NP"
	.byte	0xc
	.uahalf	0x2f5
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV10NP"
	.byte	0xc
	.uahalf	0x2f6
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV11NP"
	.byte	0xc
	.uahalf	0x2f7
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV12NP"
	.byte	0xc
	.uahalf	0x2f8
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV13NP"
	.byte	0xc
	.uahalf	0x2f9
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV14NP"
	.byte	0xc
	.uahalf	0x2fa
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV15NP"
	.byte	0xc
	.uahalf	0x2fb
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REVNP1_Bits"
	.byte	0xc
	.uahalf	0x2fc
	.uaword	0x327c
	.uleb128 0x10
	.string	"_Ifx_VADC_G_RRASS_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x2ff
	.uaword	0x34f4
	.uleb128 0xd
	.string	"ASSRR0"
	.byte	0xc
	.uahalf	0x301
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR1"
	.byte	0xc
	.uahalf	0x302
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR2"
	.byte	0xc
	.uahalf	0x303
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR3"
	.byte	0xc
	.uahalf	0x304
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR4"
	.byte	0xc
	.uahalf	0x305
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR5"
	.byte	0xc
	.uahalf	0x306
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR6"
	.byte	0xc
	.uahalf	0x307
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR7"
	.byte	0xc
	.uahalf	0x308
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR8"
	.byte	0xc
	.uahalf	0x309
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR9"
	.byte	0xc
	.uahalf	0x30a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR10"
	.byte	0xc
	.uahalf	0x30b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR11"
	.byte	0xc
	.uahalf	0x30c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR12"
	.byte	0xc
	.uahalf	0x30d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR13"
	.byte	0xc
	.uahalf	0x30e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR14"
	.byte	0xc
	.uahalf	0x30f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSRR15"
	.byte	0xc
	.uahalf	0x310
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xc
	.uahalf	0x311
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RRASS_Bits"
	.byte	0xc
	.uahalf	0x312
	.uaword	0x336b
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SEFCLR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x315
	.uaword	0x3591
	.uleb128 0xd
	.string	"SEV0"
	.byte	0xc
	.uahalf	0x317
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEV1"
	.byte	0xc
	.uahalf	0x318
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x319
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEV3"
	.byte	0xc
	.uahalf	0x31a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x31b
	.uaword	0x310
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEFCLR_Bits"
	.byte	0xc
	.uahalf	0x31c
	.uaword	0x3512
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SEFLAG_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x31f
	.uaword	0x362f
	.uleb128 0xd
	.string	"SEV0"
	.byte	0xc
	.uahalf	0x321
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEV1"
	.byte	0xc
	.uahalf	0x322
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x323
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEV3"
	.byte	0xc
	.uahalf	0x324
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x325
	.uaword	0x310
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEFLAG_Bits"
	.byte	0xc
	.uahalf	0x326
	.uaword	0x35b0
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SEVNP_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x329
	.uaword	0x36d2
	.uleb128 0xd
	.string	"SEV0NP"
	.byte	0xc
	.uahalf	0x32b
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEV1NP"
	.byte	0xc
	.uahalf	0x32c
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0xc
	.uahalf	0x32d
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEV3NP"
	.byte	0xc
	.uahalf	0x32e
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xc
	.uahalf	0x32f
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEVNP_Bits"
	.byte	0xc
	.uahalf	0x330
	.uaword	0x364e
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SRACT_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x333
	.uaword	0x37d5
	.uleb128 0xd
	.string	"AGSR0"
	.byte	0xc
	.uahalf	0x335
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"AGSR1"
	.byte	0xc
	.uahalf	0x336
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"AGSR2"
	.byte	0xc
	.uahalf	0x337
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"AGSR3"
	.byte	0xc
	.uahalf	0x338
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x339
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSR0"
	.byte	0xc
	.uahalf	0x33a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSR1"
	.byte	0xc
	.uahalf	0x33b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSR2"
	.byte	0xc
	.uahalf	0x33c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ASSR3"
	.byte	0xc
	.uahalf	0x33d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x33e
	.uaword	0x310
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SRACT_Bits"
	.byte	0xc
	.uahalf	0x33f
	.uaword	0x36f0
	.uleb128 0x10
	.string	"_Ifx_VADC_G_SYNCTR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x342
	.uaword	0x3893
	.uleb128 0xd
	.string	"STSEL"
	.byte	0xc
	.uahalf	0x344
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x345
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EVALR1"
	.byte	0xc
	.uahalf	0x346
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EVALR2"
	.byte	0xc
	.uahalf	0x347
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EVALR3"
	.byte	0xc
	.uahalf	0x348
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_7"
	.byte	0xc
	.uahalf	0x349
	.uaword	0x310
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SYNCTR_Bits"
	.byte	0xc
	.uahalf	0x34a
	.uaword	0x37f3
	.uleb128 0x10
	.string	"_Ifx_VADC_G_TRCTR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x34d
	.uaword	0x39a1
	.uleb128 0xd
	.string	"TSC"
	.byte	0xc
	.uahalf	0x34f
	.uaword	0x310
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF14
	.byte	0xc
	.uahalf	0x350
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"Q3ACT"
	.byte	0xc
	.uahalf	0x351
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"OV"
	.byte	0xc
	.uahalf	0x352
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TSCSET"
	.byte	0xc
	.uahalf	0x353
	.uaword	0x310
	.byte	0x4
	.byte	0x6
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF28
	.byte	0xc
	.uahalf	0x354
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"ITSEL"
	.byte	0xc
	.uahalf	0x355
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF22
	.byte	0xc
	.uahalf	0x356
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SRDIS"
	.byte	0xc
	.uahalf	0x357
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF25
	.byte	0xc
	.uahalf	0x358
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"COV"
	.byte	0xc
	.uahalf	0x359
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_TRCTR_Bits"
	.byte	0xc
	.uahalf	0x35a
	.uaword	0x38b2
	.uleb128 0x10
	.string	"_Ifx_VADC_G_VFR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x35d
	.uaword	0x3b16
	.uleb128 0xd
	.string	"VF0"
	.byte	0xc
	.uahalf	0x35f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF1"
	.byte	0xc
	.uahalf	0x360
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF2"
	.byte	0xc
	.uahalf	0x361
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF3"
	.byte	0xc
	.uahalf	0x362
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF4"
	.byte	0xc
	.uahalf	0x363
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF5"
	.byte	0xc
	.uahalf	0x364
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF6"
	.byte	0xc
	.uahalf	0x365
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF7"
	.byte	0xc
	.uahalf	0x366
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF8"
	.byte	0xc
	.uahalf	0x367
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF9"
	.byte	0xc
	.uahalf	0x368
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF10"
	.byte	0xc
	.uahalf	0x369
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF11"
	.byte	0xc
	.uahalf	0x36a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF12"
	.byte	0xc
	.uahalf	0x36b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF13"
	.byte	0xc
	.uahalf	0x36c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF14"
	.byte	0xc
	.uahalf	0x36d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF15"
	.byte	0xc
	.uahalf	0x36e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xc
	.uahalf	0x36f
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_VFR_Bits"
	.byte	0xc
	.uahalf	0x370
	.uaword	0x39bf
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBBOUND_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x373
	.uaword	0x3b9d
	.uleb128 0xe
	.uaword	.LASF26
	.byte	0xc
	.uahalf	0x375
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xc
	.uahalf	0x376
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF27
	.byte	0xc
	.uahalf	0x377
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF24
	.byte	0xc
	.uahalf	0x378
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBBOUND_Bits"
	.byte	0xc
	.uahalf	0x379
	.uaword	0x3b32
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBCFG_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x37c
	.uaword	0x3d04
	.uleb128 0xd
	.string	"DIVA"
	.byte	0xc
	.uahalf	0x37e
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF20
	.byte	0xc
	.uahalf	0x37f
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DCMSB"
	.byte	0xc
	.uahalf	0x380
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DIVD"
	.byte	0xc
	.uahalf	0x381
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF16
	.byte	0xc
	.uahalf	0x382
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REFPC"
	.byte	0xc
	.uahalf	0x383
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF21
	.byte	0xc
	.uahalf	0x384
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LOSUP"
	.byte	0xc
	.uahalf	0x385
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DIVWC"
	.byte	0xc
	.uahalf	0x386
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DPCAL0"
	.byte	0xc
	.uahalf	0x387
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DPCAL1"
	.byte	0xc
	.uahalf	0x388
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DPCAL2"
	.byte	0xc
	.uahalf	0x389
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DPCAL3"
	.byte	0xc
	.uahalf	0x38a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0xc
	.uahalf	0x38b
	.uaword	0x310
	.byte	0x4
	.byte	0xb
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SUCAL"
	.byte	0xc
	.uahalf	0x38c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBCFG_Bits"
	.byte	0xc
	.uahalf	0x38d
	.uaword	0x3bbd
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x390
	.uaword	0x3de7
	.uleb128 0xd
	.string	"SEVGLB"
	.byte	0xc
	.uahalf	0x392
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF39
	.byte	0xc
	.uahalf	0x393
	.uaword	0x310
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REVGLB"
	.byte	0xc
	.uahalf	0x394
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF33
	.byte	0xc
	.uahalf	0x395
	.uaword	0x310
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEVGLBCLR"
	.byte	0xc
	.uahalf	0x396
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF18
	.byte	0xc
	.uahalf	0x397
	.uaword	0x310
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REVGLBCLR"
	.byte	0xc
	.uahalf	0x398
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF40
	.byte	0xc
	.uahalf	0x399
	.uaword	0x310
	.byte	0x4
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBEFLAG_Bits"
	.byte	0xc
	.uahalf	0x39a
	.uaword	0x3d22
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBEVNP_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x39d
	.uaword	0x3e77
	.uleb128 0xd
	.string	"SEV0NP"
	.byte	0xc
	.uahalf	0x39f
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x3a0
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"REV0NP"
	.byte	0xc
	.uahalf	0x3a1
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0xc
	.uahalf	0x3a2
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBEVNP_Bits"
	.byte	0xc
	.uahalf	0x3a3
	.uaword	0x3e07
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBRCR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x3a6
	.uaword	0x3f27
	.uleb128 0xe
	.uaword	.LASF36
	.byte	0xc
	.uahalf	0x3a8
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"DRCTR"
	.byte	0xc
	.uahalf	0x3a9
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF5
	.byte	0xc
	.uahalf	0x3aa
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"WFR"
	.byte	0xc
	.uahalf	0x3ab
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF40
	.byte	0xc
	.uahalf	0x3ac
	.uaword	0x310
	.byte	0x4
	.byte	0x6
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SRGEN"
	.byte	0xc
	.uahalf	0x3ad
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRCR_Bits"
	.byte	0xc
	.uahalf	0x3ae
	.uaword	0x3e96
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBRES_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x3b1
	.uaword	0x3fe5
	.uleb128 0xe
	.uaword	.LASF38
	.byte	0xc
	.uahalf	0x3b3
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GNR"
	.byte	0xc
	.uahalf	0x3b4
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CHNR"
	.byte	0xc
	.uahalf	0x3b5
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMUX"
	.byte	0xc
	.uahalf	0x3b6
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CRS"
	.byte	0xc
	.uahalf	0x3b7
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FCR"
	.byte	0xc
	.uahalf	0x3b8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF"
	.byte	0xc
	.uahalf	0x3b9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRES_Bits"
	.byte	0xc
	.uahalf	0x3ba
	.uaword	0x3f45
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBRESD_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x3bd
	.uaword	0x40a4
	.uleb128 0xe
	.uaword	.LASF38
	.byte	0xc
	.uahalf	0x3bf
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"GNR"
	.byte	0xc
	.uahalf	0x3c0
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CHNR"
	.byte	0xc
	.uahalf	0x3c1
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"EMUX"
	.byte	0xc
	.uahalf	0x3c2
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CRS"
	.byte	0xc
	.uahalf	0x3c3
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"FCR"
	.byte	0xc
	.uahalf	0x3c4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"VF"
	.byte	0xc
	.uahalf	0x3c5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRESD_Bits"
	.byte	0xc
	.uahalf	0x3c6
	.uaword	0x4003
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBTE_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x3c9
	.uaword	0x411d
	.uleb128 0xd
	.string	"TFEG0"
	.byte	0xc
	.uahalf	0x3cb
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TFEG1"
	.byte	0xc
	.uahalf	0x3cc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x3cd
	.uaword	0x310
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBTE_Bits"
	.byte	0xc
	.uahalf	0x3ce
	.uaword	0x40c3
	.uleb128 0x10
	.string	"_Ifx_VADC_GLOBTF_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x3d1
	.uaword	0x4267
	.uleb128 0xd
	.string	"CDCH"
	.byte	0xc
	.uahalf	0x3d3
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CDGR"
	.byte	0xc
	.uahalf	0x3d4
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CDEN"
	.byte	0xc
	.uahalf	0x3d5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF34
	.byte	0xc
	.uahalf	0x3d6
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF30
	.byte	0xc
	.uahalf	0x3d7
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CDWC"
	.byte	0xc
	.uahalf	0x3d8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDD"
	.byte	0xc
	.uahalf	0x3d9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MDPD"
	.byte	0xc
	.uahalf	0x3da
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MDPU"
	.byte	0xc
	.uahalf	0x3db
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_19"
	.byte	0xc
	.uahalf	0x3dc
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MDWC"
	.byte	0xc
	.uahalf	0x3dd
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF12
	.byte	0xc
	.uahalf	0x3de
	.uaword	0x310
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RCEN"
	.byte	0xc
	.uahalf	0x3df
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RCWC"
	.byte	0xc
	.uahalf	0x3e0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBTF_Bits"
	.byte	0xc
	.uahalf	0x3e1
	.uaword	0x413a
	.uleb128 0x10
	.string	"_Ifx_VADC_ICLASS_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x3e4
	.uaword	0x4336
	.uleb128 0xd
	.string	"STCS"
	.byte	0xc
	.uahalf	0x3e6
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF20
	.byte	0xc
	.uahalf	0x3e7
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CMS"
	.byte	0xc
	.uahalf	0x3e8
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF30
	.byte	0xc
	.uahalf	0x3e9
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"STCE"
	.byte	0xc
	.uahalf	0x3ea
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0xc
	.uahalf	0x3eb
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"CME"
	.byte	0xc
	.uahalf	0x3ec
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF37
	.byte	0xc
	.uahalf	0x3ed
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ICLASS_Bits"
	.byte	0xc
	.uahalf	0x3ee
	.uaword	0x4284
	.uleb128 0x10
	.string	"_Ifx_VADC_ID_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x3f1
	.uaword	0x43ac
	.uleb128 0xd
	.string	"MODREV"
	.byte	0xc
	.uahalf	0x3f3
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"MODTYPE"
	.byte	0xc
	.uahalf	0x3f4
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF41
	.byte	0xc
	.uahalf	0x3f5
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ID_Bits"
	.byte	0xc
	.uahalf	0x3f6
	.uaword	0x4353
	.uleb128 0x10
	.string	"_Ifx_VADC_KRST0_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x3f9
	.uaword	0x441e
	.uleb128 0xd
	.string	"RST"
	.byte	0xc
	.uahalf	0x3fb
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"RSTSTAT"
	.byte	0xc
	.uahalf	0x3fc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF19
	.byte	0xc
	.uahalf	0x3fd
	.uaword	0x310
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRST0_Bits"
	.byte	0xc
	.uahalf	0x3fe
	.uaword	0x43c5
	.uleb128 0x10
	.string	"_Ifx_VADC_KRST1_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x401
	.uaword	0x447d
	.uleb128 0xd
	.string	"RST"
	.byte	0xc
	.uahalf	0x403
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF39
	.byte	0xc
	.uahalf	0x404
	.uaword	0x310
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRST1_Bits"
	.byte	0xc
	.uahalf	0x405
	.uaword	0x443a
	.uleb128 0x10
	.string	"_Ifx_VADC_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x408
	.uaword	0x44de
	.uleb128 0xd
	.string	"CLR"
	.byte	0xc
	.uahalf	0x40a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF39
	.byte	0xc
	.uahalf	0x40b
	.uaword	0x310
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRSTCLR_Bits"
	.byte	0xc
	.uahalf	0x40c
	.uaword	0x4499
	.uleb128 0x10
	.string	"_Ifx_VADC_OCS_Bits"
	.byte	0x4
	.byte	0xc
	.uahalf	0x40f
	.uaword	0x45b7
	.uleb128 0xd
	.string	"TGS"
	.byte	0xc
	.uahalf	0x411
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TGB"
	.byte	0xc
	.uahalf	0x412
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"TG_P"
	.byte	0xc
	.uahalf	0x413
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x414
	.uaword	0x310
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SUS"
	.byte	0xc
	.uahalf	0x415
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SUS_P"
	.byte	0xc
	.uahalf	0x416
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SUSSTA"
	.byte	0xc
	.uahalf	0x417
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"reserved_30"
	.byte	0xc
	.uahalf	0x418
	.uaword	0x310
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_OCS_Bits"
	.byte	0xc
	.uahalf	0x419
	.uaword	0x44fc
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x421
	.uaword	0x45f9
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x423
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x424
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x425
	.uaword	0x6b2
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ACCEN0"
	.byte	0xc
	.uahalf	0x426
	.uaword	0x45d1
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x429
	.uaword	0x4639
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x42b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x42c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x42d
	.uaword	0x7c5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ACCPROT0"
	.byte	0xc
	.uahalf	0x42e
	.uaword	0x4611
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x431
	.uaword	0x467b
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x433
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x434
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x435
	.uaword	0x8c8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ACCPROT1"
	.byte	0xc
	.uahalf	0x436
	.uaword	0x4653
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x439
	.uaword	0x46bd
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x43b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x43c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x43d
	.uaword	0x9c3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_BRSCTRL"
	.byte	0xc
	.uahalf	0x43e
	.uaword	0x4695
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x441
	.uaword	0x46fe
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x443
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x444
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x445
	.uaword	0xad1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_BRSMR"
	.byte	0xc
	.uahalf	0x446
	.uaword	0x46d6
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x449
	.uaword	0x473d
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x44b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x44c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x44d
	.uaword	0xb20
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_BRSPND"
	.byte	0xc
	.uahalf	0x44e
	.uaword	0x4715
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x451
	.uaword	0x477d
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x453
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x454
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x455
	.uaword	0xb70
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_BRSSEL"
	.byte	0xc
	.uahalf	0x456
	.uaword	0x4755
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x459
	.uaword	0x47bd
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x45b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x45c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x45d
	.uaword	0xc00
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_CLC"
	.byte	0xc
	.uahalf	0x45e
	.uaword	0x4795
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x461
	.uaword	0x47fa
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x463
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x464
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x465
	.uaword	0xc76
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_EMUXSEL"
	.byte	0xc
	.uahalf	0x466
	.uaword	0x47d2
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x469
	.uaword	0x483b
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x46b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x46c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x46d
	.uaword	0xcfd
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ALIAS"
	.byte	0xc
	.uahalf	0x46e
	.uaword	0x4813
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x471
	.uaword	0x487c
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x473
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x474
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x475
	.uaword	0xe4c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ARBCFG"
	.byte	0xc
	.uahalf	0x476
	.uaword	0x4854
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x479
	.uaword	0x48be
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x47b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x47c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x47d
	.uaword	0xfd8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ARBPR"
	.byte	0xc
	.uahalf	0x47e
	.uaword	0x4896
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x481
	.uaword	0x48ff
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x483
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x484
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x485
	.uaword	0x1108
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASCTRL"
	.byte	0xc
	.uahalf	0x486
	.uaword	0x48d7
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x489
	.uaword	0x4941
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x48b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x48c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x48d
	.uaword	0x1223
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASMR"
	.byte	0xc
	.uahalf	0x48e
	.uaword	0x4919
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x491
	.uaword	0x4981
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x493
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x494
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x495
	.uaword	0x1275
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASPND"
	.byte	0xc
	.uahalf	0x496
	.uaword	0x4959
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x499
	.uaword	0x49c2
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x49b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x49c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x49d
	.uaword	0x12c8
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_ASSEL"
	.byte	0xc
	.uahalf	0x49e
	.uaword	0x499a
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4a1
	.uaword	0x4a03
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4a3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4a4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4a5
	.uaword	0x141f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFL"
	.byte	0xc
	.uahalf	0x4a6
	.uaword	0x49db
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4a9
	.uaword	0x4a42
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4ab
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4ac
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4ad
	.uaword	0x14b9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLC"
	.byte	0xc
	.uahalf	0x4ae
	.uaword	0x4a1a
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4b1
	.uaword	0x4a82
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4b3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4b4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4b5
	.uaword	0x155d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLNP"
	.byte	0xc
	.uahalf	0x4b6
	.uaword	0x4a5a
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4b9
	.uaword	0x4ac3
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4bb
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4bc
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4bd
	.uaword	0x1657
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BFLS"
	.byte	0xc
	.uahalf	0x4be
	.uaword	0x4a9b
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4c1
	.uaword	0x4b03
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4c3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4c4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4c5
	.uaword	0x16dd
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_BOUND"
	.byte	0xc
	.uahalf	0x4c6
	.uaword	0x4adb
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4c9
	.uaword	0x4b44
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4cb
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4cc
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4cd
	.uaword	0x1865
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEFCLR"
	.byte	0xc
	.uahalf	0x4ce
	.uaword	0x4b1c
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4d1
	.uaword	0x4b86
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4d3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4d4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4d5
	.uaword	0x19ee
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEFLAG"
	.byte	0xc
	.uahalf	0x4d6
	.uaword	0x4b5e
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4d9
	.uaword	0x4bc8
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4db
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4dc
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4dd
	.uaword	0x1ad7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEVNP0"
	.byte	0xc
	.uahalf	0x4de
	.uaword	0x4ba0
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4e1
	.uaword	0x4c0a
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4e3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4e4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4e5
	.uaword	0x1bc6
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CEVNP1"
	.byte	0xc
	.uahalf	0x4e6
	.uaword	0x4be2
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4e9
	.uaword	0x4c4c
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4eb
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4ec
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4ed
	.uaword	0x1ebc
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CHASS"
	.byte	0xc
	.uahalf	0x4ee
	.uaword	0x4c24
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4f1
	.uaword	0x4c8d
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4f3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4f4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4f5
	.uaword	0x202e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_CHCTR"
	.byte	0xc
	.uahalf	0x4f6
	.uaword	0x4c65
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x4f9
	.uaword	0x4cce
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x4fb
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x4fc
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x4fd
	.uaword	0x213d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_EMUXCTR"
	.byte	0xc
	.uahalf	0x4fe
	.uaword	0x4ca6
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x501
	.uaword	0x4d11
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x503
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x504
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x505
	.uaword	0x21e6
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_Q0R0"
	.byte	0xc
	.uahalf	0x506
	.uaword	0x4ce9
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x509
	.uaword	0x4d51
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x50b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x50c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x50d
	.uaword	0x22e9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_Q0R3"
	.byte	0xc
	.uahalf	0x50e
	.uaword	0x4d29
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x511
	.uaword	0x4d91
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x513
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x514
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x515
	.uaword	0x2390
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QBUR0"
	.byte	0xc
	.uahalf	0x516
	.uaword	0x4d69
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x519
	.uaword	0x4dd2
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x51b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x51c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x51d
	.uaword	0x2495
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QBUR3"
	.byte	0xc
	.uahalf	0x51e
	.uaword	0x4daa
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x521
	.uaword	0x4e13
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x523
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x524
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x525
	.uaword	0x25d5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QCTRL0"
	.byte	0xc
	.uahalf	0x526
	.uaword	0x4deb
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x529
	.uaword	0x4e55
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x52b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x52c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x52d
	.uaword	0x2716
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QCTRL3"
	.byte	0xc
	.uahalf	0x52e
	.uaword	0x4e2d
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x531
	.uaword	0x4e97
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x533
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x534
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x535
	.uaword	0x27af
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QINR0"
	.byte	0xc
	.uahalf	0x536
	.uaword	0x4e6f
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x539
	.uaword	0x4ed8
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x53b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x53c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x53d
	.uaword	0x28b6
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QINR3"
	.byte	0xc
	.uahalf	0x53e
	.uaword	0x4eb0
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x541
	.uaword	0x4f19
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x543
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x544
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x545
	.uaword	0x29ae
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QMR0"
	.byte	0xc
	.uahalf	0x546
	.uaword	0x4ef1
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x549
	.uaword	0x4f59
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x54b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x54c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x54d
	.uaword	0x2aa5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QMR3"
	.byte	0xc
	.uahalf	0x54e
	.uaword	0x4f31
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x551
	.uaword	0x4f99
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x553
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x554
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x555
	.uaword	0x2b62
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QSR0"
	.byte	0xc
	.uahalf	0x556
	.uaword	0x4f71
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x559
	.uaword	0x4fd9
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x55b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x55c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x55d
	.uaword	0x2c1f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_QSR3"
	.byte	0xc
	.uahalf	0x55e
	.uaword	0x4fb1
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x561
	.uaword	0x5019
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x563
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x564
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x565
	.uaword	0x2cef
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RCR"
	.byte	0xc
	.uahalf	0x566
	.uaword	0x4ff1
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x569
	.uaword	0x5058
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x56b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x56c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x56d
	.uaword	0x2e75
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REFCLR"
	.byte	0xc
	.uahalf	0x56e
	.uaword	0x5030
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x571
	.uaword	0x509a
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x573
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x574
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x575
	.uaword	0x2ffe
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REFLAG"
	.byte	0xc
	.uahalf	0x576
	.uaword	0x5072
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x579
	.uaword	0x50dc
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x57b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x57c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x57d
	.uaword	0x30bb
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RES"
	.byte	0xc
	.uahalf	0x57e
	.uaword	0x50b4
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x581
	.uaword	0x511b
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x583
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x584
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x585
	.uaword	0x3176
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RESD"
	.byte	0xc
	.uahalf	0x586
	.uaword	0x50f3
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x589
	.uaword	0x515b
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x58b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x58c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x58d
	.uaword	0x325d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REVNP0"
	.byte	0xc
	.uahalf	0x58e
	.uaword	0x5133
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x591
	.uaword	0x519d
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x593
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x594
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x595
	.uaword	0x334c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_REVNP1"
	.byte	0xc
	.uahalf	0x596
	.uaword	0x5175
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x599
	.uaword	0x51df
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x59b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x59c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x59d
	.uaword	0x34f4
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_RRASS"
	.byte	0xc
	.uahalf	0x59e
	.uaword	0x51b7
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5a1
	.uaword	0x5220
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5a3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5a4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5a5
	.uaword	0x3591
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEFCLR"
	.byte	0xc
	.uahalf	0x5a6
	.uaword	0x51f8
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5a9
	.uaword	0x5262
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5ab
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5ac
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5ad
	.uaword	0x362f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEFLAG"
	.byte	0xc
	.uahalf	0x5ae
	.uaword	0x523a
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5b1
	.uaword	0x52a4
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5b3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5b4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5b5
	.uaword	0x36d2
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SEVNP"
	.byte	0xc
	.uahalf	0x5b6
	.uaword	0x527c
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5b9
	.uaword	0x52e5
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5bb
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5bc
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5bd
	.uaword	0x37d5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SRACT"
	.byte	0xc
	.uahalf	0x5be
	.uaword	0x52bd
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5c1
	.uaword	0x5326
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5c3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5c4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5c5
	.uaword	0x3893
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_SYNCTR"
	.byte	0xc
	.uahalf	0x5c6
	.uaword	0x52fe
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5c9
	.uaword	0x5368
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5cb
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5cc
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5cd
	.uaword	0x39a1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_TRCTR"
	.byte	0xc
	.uahalf	0x5ce
	.uaword	0x5340
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5d1
	.uaword	0x53a9
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5d3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5d4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5d5
	.uaword	0x3b16
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_G_VFR"
	.byte	0xc
	.uahalf	0x5d6
	.uaword	0x5381
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5d9
	.uaword	0x53e8
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5db
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5dc
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5dd
	.uaword	0x3b9d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBBOUND"
	.byte	0xc
	.uahalf	0x5de
	.uaword	0x53c0
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5e1
	.uaword	0x542b
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5e3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5e4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5e5
	.uaword	0x3d04
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBCFG"
	.byte	0xc
	.uahalf	0x5e6
	.uaword	0x5403
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5e9
	.uaword	0x546c
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5eb
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5ec
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5ed
	.uaword	0x3de7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBEFLAG"
	.byte	0xc
	.uahalf	0x5ee
	.uaword	0x5444
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5f1
	.uaword	0x54af
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5f3
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5f4
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5f5
	.uaword	0x3e77
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBEVNP"
	.byte	0xc
	.uahalf	0x5f6
	.uaword	0x5487
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x5f9
	.uaword	0x54f1
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x5fb
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x5fc
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x5fd
	.uaword	0x3f27
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRCR"
	.byte	0xc
	.uahalf	0x5fe
	.uaword	0x54c9
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x601
	.uaword	0x5532
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x603
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x604
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x605
	.uaword	0x3fe5
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRES"
	.byte	0xc
	.uahalf	0x606
	.uaword	0x550a
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x609
	.uaword	0x5573
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x60b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x60c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x60d
	.uaword	0x40a4
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBRESD"
	.byte	0xc
	.uahalf	0x60e
	.uaword	0x554b
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x611
	.uaword	0x55b5
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x613
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x614
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x615
	.uaword	0x411d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBTE"
	.byte	0xc
	.uahalf	0x616
	.uaword	0x558d
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x619
	.uaword	0x55f5
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x61b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x61c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x61d
	.uaword	0x4267
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_GLOBTF"
	.byte	0xc
	.uahalf	0x61e
	.uaword	0x55cd
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x621
	.uaword	0x5635
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x623
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x624
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x625
	.uaword	0x4336
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ICLASS"
	.byte	0xc
	.uahalf	0x626
	.uaword	0x560d
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x629
	.uaword	0x5675
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x62b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x62c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x62d
	.uaword	0x43ac
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_ID"
	.byte	0xc
	.uahalf	0x62e
	.uaword	0x564d
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x631
	.uaword	0x56b1
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x633
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x634
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x635
	.uaword	0x441e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRST0"
	.byte	0xc
	.uahalf	0x636
	.uaword	0x5689
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x639
	.uaword	0x56f0
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x63b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x63c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x63d
	.uaword	0x447d
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRST1"
	.byte	0xc
	.uahalf	0x63e
	.uaword	0x56c8
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x641
	.uaword	0x572f
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x643
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x644
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x645
	.uaword	0x44de
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_KRSTCLR"
	.byte	0xc
	.uahalf	0x646
	.uaword	0x5707
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x649
	.uaword	0x5770
	.uleb128 0x12
	.string	"U"
	.byte	0xc
	.uahalf	0x64b
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xc
	.uahalf	0x64c
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xc
	.uahalf	0x64d
	.uaword	0x45b7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_VADC_OCS"
	.byte	0xc
	.uahalf	0x64e
	.uaword	0x5748
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x671
	.uaword	0x57ab
	.uleb128 0x12
	.string	"QBUR0"
	.byte	0xc
	.uahalf	0x673
	.uaword	0x4d91
	.uleb128 0x12
	.string	"QINR0"
	.byte	0xc
	.uahalf	0x674
	.uaword	0x4e97
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0xc
	.uahalf	0x681
	.uaword	0x57d1
	.uleb128 0x12
	.string	"QBUR3"
	.byte	0xc
	.uahalf	0x683
	.uaword	0x4dd2
	.uleb128 0x12
	.string	"QINR3"
	.byte	0xc
	.uahalf	0x684
	.uaword	0x4ed8
	.byte	0
	.uleb128 0x13
	.string	"_Ifx_VADC_G"
	.uahalf	0x400
	.byte	0xc
	.uahalf	0x659
	.uaword	0x5cd9
	.uleb128 0x14
	.string	"ARBCFG"
	.byte	0xc
	.uahalf	0x65b
	.uaword	0x487c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ARBPR"
	.byte	0xc
	.uahalf	0x65c
	.uaword	0x48be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"CHASS"
	.byte	0xc
	.uahalf	0x65d
	.uaword	0x4c4c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"RRASS"
	.byte	0xc
	.uahalf	0x65e
	.uaword	0x51df
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.uaword	.LASF16
	.byte	0xc
	.uahalf	0x65f
	.uaword	0x5cd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.string	"ICLASS"
	.byte	0xc
	.uahalf	0x660
	.uaword	0x5ce9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.uaword	.LASF24
	.byte	0xc
	.uahalf	0x661
	.uaword	0x3d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"ALIAS"
	.byte	0xc
	.uahalf	0x662
	.uaword	0x483b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.string	"reserved_34"
	.byte	0xc
	.uahalf	0x663
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.string	"BOUND"
	.byte	0xc
	.uahalf	0x664
	.uaword	0x4b03
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.string	"reserved_3C"
	.byte	0xc
	.uahalf	0x665
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x14
	.string	"SYNCTR"
	.byte	0xc
	.uahalf	0x666
	.uaword	0x5326
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.string	"reserved_44"
	.byte	0xc
	.uahalf	0x667
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.string	"BFL"
	.byte	0xc
	.uahalf	0x668
	.uaword	0x4a03
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.string	"BFLS"
	.byte	0xc
	.uahalf	0x669
	.uaword	0x4ac3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x14
	.string	"BFLC"
	.byte	0xc
	.uahalf	0x66a
	.uaword	0x4a42
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.string	"BFLNP"
	.byte	0xc
	.uahalf	0x66b
	.uaword	0x4a82
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.string	"reserved_58"
	.byte	0xc
	.uahalf	0x66c
	.uaword	0x391
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.string	"QCTRL0"
	.byte	0xc
	.uahalf	0x66d
	.uaword	0x4e13
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.string	"QMR0"
	.byte	0xc
	.uahalf	0x66e
	.uaword	0x4f19
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.string	"QSR0"
	.byte	0xc
	.uahalf	0x66f
	.uaword	0x4f99
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.string	"Q0R0"
	.byte	0xc
	.uahalf	0x670
	.uaword	0x4d11
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x16
	.uaword	0x5785
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.string	"reserved_94"
	.byte	0xc
	.uahalf	0x677
	.uaword	0x381
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.string	"ASCTRL"
	.byte	0xc
	.uahalf	0x678
	.uaword	0x48ff
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x14
	.string	"ASMR"
	.byte	0xc
	.uahalf	0x679
	.uaword	0x4941
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x14
	.string	"ASSEL"
	.byte	0xc
	.uahalf	0x67a
	.uaword	0x49c2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x14
	.string	"ASPND"
	.byte	0xc
	.uahalf	0x67b
	.uaword	0x4981
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x14
	.string	"reserved_B0"
	.byte	0xc
	.uahalf	0x67c
	.uaword	0x5cd9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x14
	.string	"QCTRL3"
	.byte	0xc
	.uahalf	0x67d
	.uaword	0x4e55
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x14
	.string	"QMR3"
	.byte	0xc
	.uahalf	0x67e
	.uaword	0x4f59
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x14
	.string	"QSR3"
	.byte	0xc
	.uahalf	0x67f
	.uaword	0x4fd9
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x14
	.string	"Q0R3"
	.byte	0xc
	.uahalf	0x680
	.uaword	0x4d51
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x16
	.uaword	0x57ab
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x14
	.string	"TRCTR"
	.byte	0xc
	.uahalf	0x687
	.uaword	0x5368
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x14
	.string	"reserved_D8"
	.byte	0xc
	.uahalf	0x688
	.uaword	0x391
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x14
	.string	"CEFLAG"
	.byte	0xc
	.uahalf	0x689
	.uaword	0x4b86
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x14
	.string	"REFLAG"
	.byte	0xc
	.uahalf	0x68a
	.uaword	0x509a
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x14
	.string	"SEFLAG"
	.byte	0xc
	.uahalf	0x68b
	.uaword	0x5262
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x14
	.string	"reserved_10C"
	.byte	0xc
	.uahalf	0x68c
	.uaword	0x3b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x14
	.string	"CEFCLR"
	.byte	0xc
	.uahalf	0x68d
	.uaword	0x4b44
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x14
	.string	"REFCLR"
	.byte	0xc
	.uahalf	0x68e
	.uaword	0x5058
	.byte	0x3
	.byte	0x23
	.uleb128 0x114
	.uleb128 0x14
	.string	"SEFCLR"
	.byte	0xc
	.uahalf	0x68f
	.uaword	0x5220
	.byte	0x3
	.byte	0x23
	.uleb128 0x118
	.uleb128 0x14
	.string	"reserved_11C"
	.byte	0xc
	.uahalf	0x690
	.uaword	0x3b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x11c
	.uleb128 0x14
	.string	"CEVNP0"
	.byte	0xc
	.uahalf	0x691
	.uaword	0x4bc8
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x14
	.string	"CEVNP1"
	.byte	0xc
	.uahalf	0x692
	.uaword	0x4c0a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x14
	.string	"reserved_128"
	.byte	0xc
	.uahalf	0x693
	.uaword	0x3d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x14
	.string	"REVNP0"
	.byte	0xc
	.uahalf	0x694
	.uaword	0x515b
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x14
	.string	"REVNP1"
	.byte	0xc
	.uahalf	0x695
	.uaword	0x519d
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0x14
	.string	"reserved_138"
	.byte	0xc
	.uahalf	0x696
	.uaword	0x3d1
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x14
	.string	"SEVNP"
	.byte	0xc
	.uahalf	0x697
	.uaword	0x52a4
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x15
	.uaword	.LASF42
	.byte	0xc
	.uahalf	0x698
	.uaword	0x3b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x14
	.string	"SRACT"
	.byte	0xc
	.uahalf	0x699
	.uaword	0x52e5
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x14
	.string	"reserved_14C"
	.byte	0xc
	.uahalf	0x69a
	.uaword	0x5cf9
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x14
	.string	"EMUXCTR"
	.byte	0xc
	.uahalf	0x69b
	.uaword	0x4cce
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x14
	.string	"reserved_174"
	.byte	0xc
	.uahalf	0x69c
	.uaword	0x3b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x14
	.string	"VFR"
	.byte	0xc
	.uahalf	0x69d
	.uaword	0x53a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x178
	.uleb128 0x14
	.string	"reserved_17C"
	.byte	0xc
	.uahalf	0x69e
	.uaword	0x3b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x17c
	.uleb128 0x14
	.string	"CHCTR"
	.byte	0xc
	.uahalf	0x69f
	.uaword	0x5d09
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x14
	.string	"reserved_1B0"
	.byte	0xc
	.uahalf	0x6a0
	.uaword	0x5d19
	.byte	0x3
	.byte	0x23
	.uleb128 0x1b0
	.uleb128 0x14
	.string	"RCR"
	.byte	0xc
	.uahalf	0x6a1
	.uaword	0x5d29
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x14
	.string	"reserved_240"
	.byte	0xc
	.uahalf	0x6a2
	.uaword	0x5d39
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x14
	.string	"RES"
	.byte	0xc
	.uahalf	0x6a3
	.uaword	0x5d49
	.byte	0x3
	.byte	0x23
	.uleb128 0x280
	.uleb128 0x14
	.string	"reserved_2C0"
	.byte	0xc
	.uahalf	0x6a4
	.uaword	0x5d39
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x14
	.string	"RESD"
	.byte	0xc
	.uahalf	0x6a5
	.uaword	0x5d59
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0x14
	.string	"reserved_340"
	.byte	0xc
	.uahalf	0x6a6
	.uaword	0x3c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x340
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x5ce9
	.uleb128 0xc
	.uaword	0xec
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.uaword	0x5635
	.uaword	0x5cf9
	.uleb128 0xc
	.uaword	0xec
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x5d09
	.uleb128 0xc
	.uaword	0xec
	.byte	0x23
	.byte	0
	.uleb128 0xb
	.uaword	0x4c8d
	.uaword	0x5d19
	.uleb128 0xc
	.uaword	0xec
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x5d29
	.uleb128 0xc
	.uaword	0xec
	.byte	0x4f
	.byte	0
	.uleb128 0xb
	.uaword	0x5019
	.uaword	0x5d39
	.uleb128 0xc
	.uaword	0xec
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x5d49
	.uleb128 0xc
	.uaword	0xec
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.uaword	0x50dc
	.uaword	0x5d59
	.uleb128 0xc
	.uaword	0xec
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.uaword	0x511b
	.uaword	0x5d69
	.uleb128 0xc
	.uaword	0xec
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.uaword	0x57d1
	.uleb128 0x13
	.string	"_Ifx_VADC"
	.uahalf	0x4000
	.byte	0xc
	.uahalf	0x6b4
	.uaword	0x6113
	.uleb128 0x14
	.string	"CLC"
	.byte	0xc
	.uahalf	0x6b6
	.uaword	0x47bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF4
	.byte	0xc
	.uahalf	0x6b7
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"ID"
	.byte	0xc
	.uahalf	0x6b8
	.uaword	0x5675
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.uaword	.LASF43
	.byte	0xc
	.uahalf	0x6b9
	.uaword	0x371
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"OCS"
	.byte	0xc
	.uahalf	0x6ba
	.uaword	0x5770
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"KRSTCLR"
	.byte	0xc
	.uahalf	0x6bb
	.uaword	0x572f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"KRST1"
	.byte	0xc
	.uahalf	0x6bc
	.uaword	0x56f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.string	"KRST0"
	.byte	0xc
	.uahalf	0x6bd
	.uaword	0x56b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.string	"reserved_38"
	.byte	0xc
	.uahalf	0x6be
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.string	"ACCEN0"
	.byte	0xc
	.uahalf	0x6bf
	.uaword	0x45f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x14
	.string	"reserved_40"
	.byte	0xc
	.uahalf	0x6c0
	.uaword	0x5d39
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.string	"GLOBCFG"
	.byte	0xc
	.uahalf	0x6c1
	.uaword	0x542b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.string	"reserved_84"
	.byte	0xc
	.uahalf	0x6c2
	.uaword	0x3b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.string	"ACCPROT0"
	.byte	0xc
	.uahalf	0x6c3
	.uaword	0x4639
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.string	"ACCPROT1"
	.byte	0xc
	.uahalf	0x6c4
	.uaword	0x467b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x14
	.string	"reserved_90"
	.byte	0xc
	.uahalf	0x6c5
	.uaword	0x5cd9
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.string	"GLOBICLASS"
	.byte	0xc
	.uahalf	0x6c6
	.uaword	0x5ce9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x14
	.string	"reserved_A8"
	.byte	0xc
	.uahalf	0x6c7
	.uaword	0x5cd9
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x14
	.string	"GLOBBOUND"
	.byte	0xc
	.uahalf	0x6c8
	.uaword	0x53e8
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x14
	.string	"reserved_BC"
	.byte	0xc
	.uahalf	0x6c9
	.uaword	0x5cf9
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x14
	.string	"GLOBEFLAG"
	.byte	0xc
	.uahalf	0x6ca
	.uaword	0x546c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x14
	.string	"reserved_E4"
	.byte	0xc
	.uahalf	0x6cb
	.uaword	0x6113
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x14
	.string	"GLOBEVNP"
	.byte	0xc
	.uahalf	0x6cc
	.uaword	0x54af
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x15
	.uaword	.LASF42
	.byte	0xc
	.uahalf	0x6cd
	.uaword	0x371
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x14
	.string	"GLOBTF"
	.byte	0xc
	.uahalf	0x6ce
	.uaword	0x55f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x160
	.uleb128 0x14
	.string	"GLOBTE"
	.byte	0xc
	.uahalf	0x6cf
	.uaword	0x55b5
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x14
	.string	"reserved_168"
	.byte	0xc
	.uahalf	0x6d0
	.uaword	0x3a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x14
	.string	"BRSSEL"
	.byte	0xc
	.uahalf	0x6d1
	.uaword	0x6123
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x14
	.string	"reserved_190"
	.byte	0xc
	.uahalf	0x6d2
	.uaword	0x6133
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x14
	.string	"BRSPND"
	.byte	0xc
	.uahalf	0x6d3
	.uaword	0x6143
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0x14
	.string	"reserved_1D0"
	.byte	0xc
	.uahalf	0x6d4
	.uaword	0x6133
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x14
	.string	"BRSCTRL"
	.byte	0xc
	.uahalf	0x6d5
	.uaword	0x46bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x14
	.string	"BRSMR"
	.byte	0xc
	.uahalf	0x6d6
	.uaword	0x46fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x14
	.string	"reserved_208"
	.byte	0xc
	.uahalf	0x6d7
	.uaword	0x6153
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x14
	.string	"GLOBRCR"
	.byte	0xc
	.uahalf	0x6d8
	.uaword	0x54f1
	.byte	0x3
	.byte	0x23
	.uleb128 0x280
	.uleb128 0x14
	.string	"reserved_284"
	.byte	0xc
	.uahalf	0x6d9
	.uaword	0x6163
	.byte	0x3
	.byte	0x23
	.uleb128 0x284
	.uleb128 0x14
	.string	"GLOBRES"
	.byte	0xc
	.uahalf	0x6da
	.uaword	0x5532
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0x14
	.string	"reserved_304"
	.byte	0xc
	.uahalf	0x6db
	.uaword	0x6163
	.byte	0x3
	.byte	0x23
	.uleb128 0x304
	.uleb128 0x14
	.string	"GLOBRESD"
	.byte	0xc
	.uahalf	0x6dc
	.uaword	0x5573
	.byte	0x3
	.byte	0x23
	.uleb128 0x380
	.uleb128 0x14
	.string	"reserved_384"
	.byte	0xc
	.uahalf	0x6dd
	.uaword	0x6173
	.byte	0x3
	.byte	0x23
	.uleb128 0x384
	.uleb128 0x14
	.string	"EMUXSEL"
	.byte	0xc
	.uahalf	0x6de
	.uaword	0x47fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.uleb128 0x14
	.string	"reserved_3F4"
	.byte	0xc
	.uahalf	0x6df
	.uaword	0x6183
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0x14
	.string	"G"
	.byte	0xc
	.uahalf	0x6e0
	.uaword	0x61a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x480
	.uleb128 0x14
	.string	"reserved_1480"
	.byte	0xc
	.uahalf	0x6e1
	.uaword	0x61a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1480
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x6123
	.uleb128 0xc
	.uaword	0xec
	.byte	0x5b
	.byte	0
	.uleb128 0xb
	.uaword	0x477d
	.uaword	0x6133
	.uleb128 0xc
	.uaword	0xec
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x6143
	.uleb128 0xc
	.uaword	0xec
	.byte	0x2f
	.byte	0
	.uleb128 0xb
	.uaword	0x473d
	.uaword	0x6153
	.uleb128 0xc
	.uaword	0xec
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x6163
	.uleb128 0xc
	.uaword	0xec
	.byte	0x77
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x6173
	.uleb128 0xc
	.uaword	0xec
	.byte	0x7b
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x6183
	.uleb128 0xc
	.uaword	0xec
	.byte	0x6b
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x6193
	.uleb128 0xc
	.uaword	0xec
	.byte	0x8b
	.byte	0
	.uleb128 0xb
	.uaword	0x57d1
	.uaword	0x61a3
	.uleb128 0xc
	.uaword	0xec
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.uaword	0x6193
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x61b9
	.uleb128 0x18
	.uaword	0xec
	.uahalf	0x2b7f
	.byte	0
	.uleb128 0x17
	.uaword	0x5d6e
	.uleb128 0x6
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x2d
	.uaword	0x6410
	.uleb128 0x7
	.string	"EN0"
	.byte	0xd
	.byte	0x2f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN1"
	.byte	0xd
	.byte	0x30
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN2"
	.byte	0xd
	.byte	0x31
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN3"
	.byte	0xd
	.byte	0x32
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN4"
	.byte	0xd
	.byte	0x33
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN5"
	.byte	0xd
	.byte	0x34
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN6"
	.byte	0xd
	.byte	0x35
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN7"
	.byte	0xd
	.byte	0x36
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN8"
	.byte	0xd
	.byte	0x37
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN9"
	.byte	0xd
	.byte	0x38
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN10"
	.byte	0xd
	.byte	0x39
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN11"
	.byte	0xd
	.byte	0x3a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN12"
	.byte	0xd
	.byte	0x3b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN13"
	.byte	0xd
	.byte	0x3c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN14"
	.byte	0xd
	.byte	0x3d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN15"
	.byte	0xd
	.byte	0x3e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN16"
	.byte	0xd
	.byte	0x3f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN17"
	.byte	0xd
	.byte	0x40
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN18"
	.byte	0xd
	.byte	0x41
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN19"
	.byte	0xd
	.byte	0x42
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN20"
	.byte	0xd
	.byte	0x43
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN21"
	.byte	0xd
	.byte	0x44
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN22"
	.byte	0xd
	.byte	0x45
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN23"
	.byte	0xd
	.byte	0x46
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN24"
	.byte	0xd
	.byte	0x47
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN25"
	.byte	0xd
	.byte	0x48
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN26"
	.byte	0xd
	.byte	0x49
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN27"
	.byte	0xd
	.byte	0x4a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN28"
	.byte	0xd
	.byte	0x4b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN29"
	.byte	0xd
	.byte	0x4c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN30"
	.byte	0xd
	.byte	0x4d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN31"
	.byte	0xd
	.byte	0x4e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0xd
	.byte	0x4f
	.uaword	0x61be
	.uleb128 0x6
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x52
	.uaword	0x6456
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0x54
	.uaword	0x310
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0xd
	.byte	0x55
	.uaword	0x6429
	.uleb128 0x6
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x58
	.uaword	0x65af
	.uleb128 0x7
	.string	"EN0"
	.byte	0xd
	.byte	0x5a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN1"
	.byte	0xd
	.byte	0x5b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN2"
	.byte	0xd
	.byte	0x5c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN3"
	.byte	0xd
	.byte	0x5d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN4"
	.byte	0xd
	.byte	0x5e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN5"
	.byte	0xd
	.byte	0x5f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN6"
	.byte	0xd
	.byte	0x60
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN7"
	.byte	0xd
	.byte	0x61
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN8"
	.byte	0xd
	.byte	0x62
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN9"
	.byte	0xd
	.byte	0x63
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN10"
	.byte	0xd
	.byte	0x64
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN11"
	.byte	0xd
	.byte	0x65
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN12"
	.byte	0xd
	.byte	0x66
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN13"
	.byte	0xd
	.byte	0x67
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN14"
	.byte	0xd
	.byte	0x68
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN15"
	.byte	0xd
	.byte	0x69
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0xd
	.byte	0x6a
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_ESR_Bits"
	.byte	0xd
	.byte	0x6b
	.uaword	0x646f
	.uleb128 0x6
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x6e
	.uaword	0x6617
	.uleb128 0x7
	.string	"MODREV"
	.byte	0xd
	.byte	0x70
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"MODTYPE"
	.byte	0xd
	.byte	0x71
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF41
	.byte	0xd
	.byte	0x72
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_ID_Bits"
	.byte	0xd
	.byte	0x73
	.uaword	0x65c5
	.uleb128 0x6
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x76
	.uaword	0x675b
	.uleb128 0x7
	.string	"P0"
	.byte	0xd
	.byte	0x78
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P1"
	.byte	0xd
	.byte	0x79
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P2"
	.byte	0xd
	.byte	0x7a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P3"
	.byte	0xd
	.byte	0x7b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P4"
	.byte	0xd
	.byte	0x7c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P5"
	.byte	0xd
	.byte	0x7d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P6"
	.byte	0xd
	.byte	0x7e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P7"
	.byte	0xd
	.byte	0x7f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P8"
	.byte	0xd
	.byte	0x80
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P9"
	.byte	0xd
	.byte	0x81
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P10"
	.byte	0xd
	.byte	0x82
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P11"
	.byte	0xd
	.byte	0x83
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P12"
	.byte	0xd
	.byte	0x84
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P13"
	.byte	0xd
	.byte	0x85
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P14"
	.byte	0xd
	.byte	0x86
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P15"
	.byte	0xd
	.byte	0x87
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0xd
	.byte	0x88
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_IN_Bits"
	.byte	0xd
	.byte	0x89
	.uaword	0x662c
	.uleb128 0x6
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x8c
	.uaword	0x6813
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0x8e
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC0"
	.byte	0xd
	.byte	0x8f
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xd
	.byte	0x90
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC1"
	.byte	0xd
	.byte	0x91
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0xd
	.byte	0x92
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC2"
	.byte	0xd
	.byte	0x93
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0xd
	.byte	0x94
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC3"
	.byte	0xd
	.byte	0x95
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0xd
	.byte	0x96
	.uaword	0x6770
	.uleb128 0x6
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x99
	.uaword	0x68d3
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0x9b
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC12"
	.byte	0xd
	.byte	0x9c
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xd
	.byte	0x9d
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC13"
	.byte	0xd
	.byte	0x9e
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0xd
	.byte	0x9f
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC14"
	.byte	0xd
	.byte	0xa0
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0xd
	.byte	0xa1
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC15"
	.byte	0xd
	.byte	0xa2
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0xd
	.byte	0xa3
	.uaword	0x682b
	.uleb128 0x6
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xa6
	.uaword	0x698f
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0xa8
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC4"
	.byte	0xd
	.byte	0xa9
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xd
	.byte	0xaa
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC5"
	.byte	0xd
	.byte	0xab
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0xd
	.byte	0xac
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC6"
	.byte	0xd
	.byte	0xad
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0xd
	.byte	0xae
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC7"
	.byte	0xd
	.byte	0xaf
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0xd
	.byte	0xb0
	.uaword	0x68ec
	.uleb128 0x6
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xb3
	.uaword	0x6a4c
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0xb5
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC8"
	.byte	0xd
	.byte	0xb6
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0xd
	.byte	0xb7
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC9"
	.byte	0xd
	.byte	0xb8
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0xd
	.byte	0xb9
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC10"
	.byte	0xd
	.byte	0xba
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0xd
	.byte	0xbb
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC11"
	.byte	0xd
	.byte	0xbc
	.uaword	0x310
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0xd
	.byte	0xbd
	.uaword	0x69a7
	.uleb128 0x6
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xc0
	.uaword	0x6ae9
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0xc2
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL0"
	.byte	0xd
	.byte	0xc3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL1"
	.byte	0xd
	.byte	0xc4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL2"
	.byte	0xd
	.byte	0xc5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL3"
	.byte	0xd
	.byte	0xc6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0xd
	.byte	0xc7
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0xd
	.byte	0xc8
	.uaword	0x6a64
	.uleb128 0x6
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xcb
	.uaword	0x6b7a
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0xcd
	.uaword	0x310
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL12"
	.byte	0xd
	.byte	0xce
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL13"
	.byte	0xd
	.byte	0xcf
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL14"
	.byte	0xd
	.byte	0xd0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL15"
	.byte	0xd
	.byte	0xd1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0xd
	.byte	0xd2
	.uaword	0x6b01
	.uleb128 0x6
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xd5
	.uaword	0x6c18
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0xd7
	.uaword	0x310
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL4"
	.byte	0xd
	.byte	0xd8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL5"
	.byte	0xd
	.byte	0xd9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL6"
	.byte	0xd
	.byte	0xda
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL7"
	.byte	0xd
	.byte	0xdb
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0xd
	.byte	0xdc
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0xd
	.byte	0xdd
	.uaword	0x6b93
	.uleb128 0x6
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xe0
	.uaword	0x6cb7
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0xe2
	.uaword	0x310
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL8"
	.byte	0xd
	.byte	0xe3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL9"
	.byte	0xd
	.byte	0xe4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL10"
	.byte	0xd
	.byte	0xe5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL11"
	.byte	0xd
	.byte	0xe6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF24
	.byte	0xd
	.byte	0xe7
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0xd
	.byte	0xe8
	.uaword	0x6c30
	.uleb128 0x6
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xeb
	.uaword	0x6e20
	.uleb128 0x8
	.uaword	.LASF36
	.byte	0xd
	.byte	0xed
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL0"
	.byte	0xd
	.byte	0xee
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL1"
	.byte	0xd
	.byte	0xef
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL2"
	.byte	0xd
	.byte	0xf0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL3"
	.byte	0xd
	.byte	0xf1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL4"
	.byte	0xd
	.byte	0xf2
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL5"
	.byte	0xd
	.byte	0xf3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL6"
	.byte	0xd
	.byte	0xf4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL7"
	.byte	0xd
	.byte	0xf5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL8"
	.byte	0xd
	.byte	0xf6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL9"
	.byte	0xd
	.byte	0xf7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL10"
	.byte	0xd
	.byte	0xf8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL11"
	.byte	0xd
	.byte	0xf9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL12"
	.byte	0xd
	.byte	0xfa
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL13"
	.byte	0xd
	.byte	0xfb
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL14"
	.byte	0xd
	.byte	0xfc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL15"
	.byte	0xd
	.byte	0xfd
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_P_OMCR_Bits"
	.byte	0xd
	.byte	0xfe
	.uaword	0x6ccf
	.uleb128 0x10
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x101
	.uaword	0x70ad
	.uleb128 0xd
	.string	"PS0"
	.byte	0xd
	.uahalf	0x103
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS1"
	.byte	0xd
	.uahalf	0x104
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS2"
	.byte	0xd
	.uahalf	0x105
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS3"
	.byte	0xd
	.uahalf	0x106
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS4"
	.byte	0xd
	.uahalf	0x107
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS5"
	.byte	0xd
	.uahalf	0x108
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS6"
	.byte	0xd
	.uahalf	0x109
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS7"
	.byte	0xd
	.uahalf	0x10a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS8"
	.byte	0xd
	.uahalf	0x10b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS9"
	.byte	0xd
	.uahalf	0x10c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS10"
	.byte	0xd
	.uahalf	0x10d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS11"
	.byte	0xd
	.uahalf	0x10e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS12"
	.byte	0xd
	.uahalf	0x10f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS13"
	.byte	0xd
	.uahalf	0x110
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS14"
	.byte	0xd
	.uahalf	0x111
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS15"
	.byte	0xd
	.uahalf	0x112
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL0"
	.byte	0xd
	.uahalf	0x113
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL1"
	.byte	0xd
	.uahalf	0x114
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL2"
	.byte	0xd
	.uahalf	0x115
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL3"
	.byte	0xd
	.uahalf	0x116
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL4"
	.byte	0xd
	.uahalf	0x117
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL5"
	.byte	0xd
	.uahalf	0x118
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL6"
	.byte	0xd
	.uahalf	0x119
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL7"
	.byte	0xd
	.uahalf	0x11a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL8"
	.byte	0xd
	.uahalf	0x11b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL9"
	.byte	0xd
	.uahalf	0x11c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL10"
	.byte	0xd
	.uahalf	0x11d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL11"
	.byte	0xd
	.uahalf	0x11e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL12"
	.byte	0xd
	.uahalf	0x11f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL13"
	.byte	0xd
	.uahalf	0x120
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL14"
	.byte	0xd
	.uahalf	0x121
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PCL15"
	.byte	0xd
	.uahalf	0x122
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMR_Bits"
	.byte	0xd
	.uahalf	0x123
	.uaword	0x6e37
	.uleb128 0x10
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x126
	.uaword	0x713a
	.uleb128 0xd
	.string	"PS0"
	.byte	0xd
	.uahalf	0x128
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS1"
	.byte	0xd
	.uahalf	0x129
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS2"
	.byte	0xd
	.uahalf	0x12a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS3"
	.byte	0xd
	.uahalf	0x12b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0xd
	.uahalf	0x12c
	.uaword	0x310
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0xd
	.uahalf	0x12d
	.uaword	0x70c4
	.uleb128 0x10
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x130
	.uaword	0x71e0
	.uleb128 0xe
	.uaword	.LASF36
	.byte	0xd
	.uahalf	0x132
	.uaword	0x310
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS12"
	.byte	0xd
	.uahalf	0x133
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS13"
	.byte	0xd
	.uahalf	0x134
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS14"
	.byte	0xd
	.uahalf	0x135
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS15"
	.byte	0xd
	.uahalf	0x136
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xd
	.uahalf	0x137
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0xd
	.uahalf	0x138
	.uaword	0x7153
	.uleb128 0x10
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x13b
	.uaword	0x7282
	.uleb128 0xe
	.uaword	.LASF36
	.byte	0xd
	.uahalf	0x13d
	.uaword	0x310
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS4"
	.byte	0xd
	.uahalf	0x13e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS5"
	.byte	0xd
	.uahalf	0x13f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS6"
	.byte	0xd
	.uahalf	0x140
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS7"
	.byte	0xd
	.uahalf	0x141
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0xd
	.uahalf	0x142
	.uaword	0x310
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0xd
	.uahalf	0x143
	.uaword	0x71fa
	.uleb128 0x10
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x146
	.uaword	0x7325
	.uleb128 0xe
	.uaword	.LASF36
	.byte	0xd
	.uahalf	0x148
	.uaword	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS8"
	.byte	0xd
	.uahalf	0x149
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS9"
	.byte	0xd
	.uahalf	0x14a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS10"
	.byte	0xd
	.uahalf	0x14b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS11"
	.byte	0xd
	.uahalf	0x14c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0xd
	.uahalf	0x14d
	.uaword	0x310
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0xd
	.uahalf	0x14e
	.uaword	0x729b
	.uleb128 0x10
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x151
	.uaword	0x7491
	.uleb128 0xd
	.string	"PS0"
	.byte	0xd
	.uahalf	0x153
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS1"
	.byte	0xd
	.uahalf	0x154
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS2"
	.byte	0xd
	.uahalf	0x155
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS3"
	.byte	0xd
	.uahalf	0x156
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS4"
	.byte	0xd
	.uahalf	0x157
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS5"
	.byte	0xd
	.uahalf	0x158
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS6"
	.byte	0xd
	.uahalf	0x159
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS7"
	.byte	0xd
	.uahalf	0x15a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS8"
	.byte	0xd
	.uahalf	0x15b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS9"
	.byte	0xd
	.uahalf	0x15c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS10"
	.byte	0xd
	.uahalf	0x15d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS11"
	.byte	0xd
	.uahalf	0x15e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS12"
	.byte	0xd
	.uahalf	0x15f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS13"
	.byte	0xd
	.uahalf	0x160
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS14"
	.byte	0xd
	.uahalf	0x161
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PS15"
	.byte	0xd
	.uahalf	0x162
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xd
	.uahalf	0x163
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR_Bits"
	.byte	0xd
	.uahalf	0x164
	.uaword	0x733e
	.uleb128 0x10
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x167
	.uaword	0x75eb
	.uleb128 0xd
	.string	"P0"
	.byte	0xd
	.uahalf	0x169
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P1"
	.byte	0xd
	.uahalf	0x16a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P2"
	.byte	0xd
	.uahalf	0x16b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P3"
	.byte	0xd
	.uahalf	0x16c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P4"
	.byte	0xd
	.uahalf	0x16d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P5"
	.byte	0xd
	.uahalf	0x16e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P6"
	.byte	0xd
	.uahalf	0x16f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P7"
	.byte	0xd
	.uahalf	0x170
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P8"
	.byte	0xd
	.uahalf	0x171
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P9"
	.byte	0xd
	.uahalf	0x172
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P10"
	.byte	0xd
	.uahalf	0x173
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P11"
	.byte	0xd
	.uahalf	0x174
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P12"
	.byte	0xd
	.uahalf	0x175
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P13"
	.byte	0xd
	.uahalf	0x176
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P14"
	.byte	0xd
	.uahalf	0x177
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"P15"
	.byte	0xd
	.uahalf	0x178
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xd
	.uahalf	0x179
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OUT_Bits"
	.byte	0xd
	.uahalf	0x17a
	.uaword	0x74a9
	.uleb128 0x10
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x17d
	.uaword	0x76b2
	.uleb128 0xe
	.uaword	.LASF36
	.byte	0xd
	.uahalf	0x17f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEL1"
	.byte	0xd
	.uahalf	0x180
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEL2"
	.byte	0xd
	.uahalf	0x181
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF29
	.byte	0xd
	.uahalf	0x182
	.uaword	0x310
	.byte	0x4
	.byte	0x6
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEL9"
	.byte	0xd
	.uahalf	0x183
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"SEL10"
	.byte	0xd
	.uahalf	0x184
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF30
	.byte	0xd
	.uahalf	0x185
	.uaword	0x310
	.byte	0x4
	.byte	0x14
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"LCK"
	.byte	0xd
	.uahalf	0x186
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PCSR_Bits"
	.byte	0xd
	.uahalf	0x187
	.uaword	0x7602
	.uleb128 0x10
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x18a
	.uaword	0x783e
	.uleb128 0xd
	.string	"PDIS0"
	.byte	0xd
	.uahalf	0x18c
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS1"
	.byte	0xd
	.uahalf	0x18d
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS2"
	.byte	0xd
	.uahalf	0x18e
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS3"
	.byte	0xd
	.uahalf	0x18f
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS4"
	.byte	0xd
	.uahalf	0x190
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS5"
	.byte	0xd
	.uahalf	0x191
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS6"
	.byte	0xd
	.uahalf	0x192
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS7"
	.byte	0xd
	.uahalf	0x193
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS8"
	.byte	0xd
	.uahalf	0x194
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS9"
	.byte	0xd
	.uahalf	0x195
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS10"
	.byte	0xd
	.uahalf	0x196
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS11"
	.byte	0xd
	.uahalf	0x197
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS12"
	.byte	0xd
	.uahalf	0x198
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS13"
	.byte	0xd
	.uahalf	0x199
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS14"
	.byte	0xd
	.uahalf	0x19a
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PDIS15"
	.byte	0xd
	.uahalf	0x19b
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.uaword	.LASF23
	.byte	0xd
	.uahalf	0x19c
	.uaword	0x310
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDISC_Bits"
	.byte	0xd
	.uahalf	0x19d
	.uaword	0x76ca
	.uleb128 0x10
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x1a0
	.uaword	0x7992
	.uleb128 0xd
	.string	"PD0"
	.byte	0xd
	.uahalf	0x1a2
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL0"
	.byte	0xd
	.uahalf	0x1a3
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD1"
	.byte	0xd
	.uahalf	0x1a4
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL1"
	.byte	0xd
	.uahalf	0x1a5
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD2"
	.byte	0xd
	.uahalf	0x1a6
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL2"
	.byte	0xd
	.uahalf	0x1a7
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD3"
	.byte	0xd
	.uahalf	0x1a8
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL3"
	.byte	0xd
	.uahalf	0x1a9
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD4"
	.byte	0xd
	.uahalf	0x1aa
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL4"
	.byte	0xd
	.uahalf	0x1ab
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD5"
	.byte	0xd
	.uahalf	0x1ac
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL5"
	.byte	0xd
	.uahalf	0x1ad
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD6"
	.byte	0xd
	.uahalf	0x1ae
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL6"
	.byte	0xd
	.uahalf	0x1af
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD7"
	.byte	0xd
	.uahalf	0x1b0
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL7"
	.byte	0xd
	.uahalf	0x1b1
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR0_Bits"
	.byte	0xd
	.uahalf	0x1b2
	.uaword	0x7857
	.uleb128 0x10
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x1b5
	.uaword	0x7af1
	.uleb128 0xd
	.string	"PD8"
	.byte	0xd
	.uahalf	0x1b7
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL8"
	.byte	0xd
	.uahalf	0x1b8
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD9"
	.byte	0xd
	.uahalf	0x1b9
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL9"
	.byte	0xd
	.uahalf	0x1ba
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD10"
	.byte	0xd
	.uahalf	0x1bb
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL10"
	.byte	0xd
	.uahalf	0x1bc
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD11"
	.byte	0xd
	.uahalf	0x1bd
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL11"
	.byte	0xd
	.uahalf	0x1be
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD12"
	.byte	0xd
	.uahalf	0x1bf
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL12"
	.byte	0xd
	.uahalf	0x1c0
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD13"
	.byte	0xd
	.uahalf	0x1c1
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL13"
	.byte	0xd
	.uahalf	0x1c2
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD14"
	.byte	0xd
	.uahalf	0x1c3
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL14"
	.byte	0xd
	.uahalf	0x1c4
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PD15"
	.byte	0xd
	.uahalf	0x1c5
	.uaword	0x310
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"PL15"
	.byte	0xd
	.uahalf	0x1c6
	.uaword	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR1_Bits"
	.byte	0xd
	.uahalf	0x1c7
	.uaword	0x79aa
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x1cf
	.uaword	0x7b31
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x1d1
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x1d2
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x1d3
	.uaword	0x6410
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ACCEN0"
	.byte	0xd
	.uahalf	0x1d4
	.uaword	0x7b09
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x1d7
	.uaword	0x7b6e
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x1d9
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x1da
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x1db
	.uaword	0x6456
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ACCEN1"
	.byte	0xd
	.uahalf	0x1dc
	.uaword	0x7b46
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x1df
	.uaword	0x7bab
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x1e1
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x1e2
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x1e3
	.uaword	0x65af
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ESR"
	.byte	0xd
	.uahalf	0x1e4
	.uaword	0x7b83
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x1e7
	.uaword	0x7be5
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x1e9
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x1ea
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x1eb
	.uaword	0x6617
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_ID"
	.byte	0xd
	.uahalf	0x1ec
	.uaword	0x7bbd
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x1ef
	.uaword	0x7c1e
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x1f1
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x1f2
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x1f3
	.uaword	0x675b
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IN"
	.byte	0xd
	.uahalf	0x1f4
	.uaword	0x7bf6
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x1f7
	.uaword	0x7c57
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x1f9
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x1fa
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x1fb
	.uaword	0x6813
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR0"
	.byte	0xd
	.uahalf	0x1fc
	.uaword	0x7c2f
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x1ff
	.uaword	0x7c93
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x201
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x202
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x203
	.uaword	0x68d3
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR12"
	.byte	0xd
	.uahalf	0x204
	.uaword	0x7c6b
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x207
	.uaword	0x7cd0
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x209
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x20a
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x20b
	.uaword	0x698f
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR4"
	.byte	0xd
	.uahalf	0x20c
	.uaword	0x7ca8
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x20f
	.uaword	0x7d0c
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x211
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x212
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x213
	.uaword	0x6a4c
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_IOCR8"
	.byte	0xd
	.uahalf	0x214
	.uaword	0x7ce4
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x217
	.uaword	0x7d48
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x219
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x21a
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x21b
	.uaword	0x6e20
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR"
	.byte	0xd
	.uahalf	0x21c
	.uaword	0x7d20
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x21f
	.uaword	0x7d83
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x221
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x222
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x223
	.uaword	0x6ae9
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR0"
	.byte	0xd
	.uahalf	0x224
	.uaword	0x7d5b
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x227
	.uaword	0x7dbf
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x229
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x22a
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x22b
	.uaword	0x6b7a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR12"
	.byte	0xd
	.uahalf	0x22c
	.uaword	0x7d97
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x22f
	.uaword	0x7dfc
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x231
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x232
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x233
	.uaword	0x6c18
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR4"
	.byte	0xd
	.uahalf	0x234
	.uaword	0x7dd4
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x237
	.uaword	0x7e38
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x239
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x23a
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x23b
	.uaword	0x6cb7
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMCR8"
	.byte	0xd
	.uahalf	0x23c
	.uaword	0x7e10
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x23f
	.uaword	0x7e74
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x241
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x242
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x243
	.uaword	0x70ad
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMR"
	.byte	0xd
	.uahalf	0x244
	.uaword	0x7e4c
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x247
	.uaword	0x7eae
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x249
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x24a
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x24b
	.uaword	0x7491
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR"
	.byte	0xd
	.uahalf	0x24c
	.uaword	0x7e86
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x24f
	.uaword	0x7ee9
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x251
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x252
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x253
	.uaword	0x713a
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR0"
	.byte	0xd
	.uahalf	0x254
	.uaword	0x7ec1
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x257
	.uaword	0x7f25
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x259
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x25a
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x25b
	.uaword	0x71e0
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR12"
	.byte	0xd
	.uahalf	0x25c
	.uaword	0x7efd
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x25f
	.uaword	0x7f62
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x261
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x262
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x263
	.uaword	0x7282
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR4"
	.byte	0xd
	.uahalf	0x264
	.uaword	0x7f3a
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x267
	.uaword	0x7f9e
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x269
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x26a
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x26b
	.uaword	0x7325
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OMSR8"
	.byte	0xd
	.uahalf	0x26c
	.uaword	0x7f76
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x26f
	.uaword	0x7fda
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x271
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x272
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x273
	.uaword	0x75eb
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_OUT"
	.byte	0xd
	.uahalf	0x274
	.uaword	0x7fb2
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x277
	.uaword	0x8014
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x279
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x27a
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x27b
	.uaword	0x76b2
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PCSR"
	.byte	0xd
	.uahalf	0x27c
	.uaword	0x7fec
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x27f
	.uaword	0x804f
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x281
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x282
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x283
	.uaword	0x783e
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDISC"
	.byte	0xd
	.uahalf	0x284
	.uaword	0x8027
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x287
	.uaword	0x808b
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x289
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x28a
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x28b
	.uaword	0x7992
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR0"
	.byte	0xd
	.uahalf	0x28c
	.uaword	0x8063
	.uleb128 0x11
	.byte	0x4
	.byte	0xd
	.uahalf	0x28f
	.uaword	0x80c6
	.uleb128 0x12
	.string	"U"
	.byte	0xd
	.uahalf	0x291
	.uaword	0x310
	.uleb128 0x12
	.string	"I"
	.byte	0xd
	.uahalf	0x292
	.uaword	0x101
	.uleb128 0x12
	.string	"B"
	.byte	0xd
	.uahalf	0x293
	.uaword	0x7af1
	.byte	0
	.uleb128 0xf
	.string	"Ifx_P_PDR1"
	.byte	0xd
	.uahalf	0x294
	.uaword	0x809e
	.uleb128 0x13
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0xd
	.uahalf	0x29f
	.uaword	0x831a
	.uleb128 0x14
	.string	"OUT"
	.byte	0xd
	.uahalf	0x2a1
	.uaword	0x7fda
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"OMR"
	.byte	0xd
	.uahalf	0x2a2
	.uaword	0x7e74
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"ID"
	.byte	0xd
	.uahalf	0x2a3
	.uaword	0x7be5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.uaword	.LASF43
	.byte	0xd
	.uahalf	0x2a4
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"IOCR0"
	.byte	0xd
	.uahalf	0x2a5
	.uaword	0x7c57
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.string	"IOCR4"
	.byte	0xd
	.uahalf	0x2a6
	.uaword	0x7cd0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"IOCR8"
	.byte	0xd
	.uahalf	0x2a7
	.uaword	0x7d0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.string	"IOCR12"
	.byte	0xd
	.uahalf	0x2a8
	.uaword	0x7c93
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.uaword	.LASF5
	.byte	0xd
	.uahalf	0x2a9
	.uaword	0x3b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"IN"
	.byte	0xd
	.uahalf	0x2aa
	.uaword	0x7c1e
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.uaword	.LASF24
	.byte	0xd
	.uahalf	0x2ab
	.uaword	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"PDR0"
	.byte	0xd
	.uahalf	0x2ac
	.uaword	0x808b
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.string	"PDR1"
	.byte	0xd
	.uahalf	0x2ad
	.uaword	0x80c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.string	"reserved_48"
	.byte	0xd
	.uahalf	0x2ae
	.uaword	0x3d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.string	"ESR"
	.byte	0xd
	.uahalf	0x2af
	.uaword	0x7bab
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.string	"reserved_54"
	.byte	0xd
	.uahalf	0x2b0
	.uaword	0x381
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.string	"PDISC"
	.byte	0xd
	.uahalf	0x2b1
	.uaword	0x804f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.string	"PCSR"
	.byte	0xd
	.uahalf	0x2b2
	.uaword	0x8014
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.string	"reserved_64"
	.byte	0xd
	.uahalf	0x2b3
	.uaword	0x3d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x14
	.string	"OMSR0"
	.byte	0xd
	.uahalf	0x2b4
	.uaword	0x7ee9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.string	"OMSR4"
	.byte	0xd
	.uahalf	0x2b5
	.uaword	0x7f62
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x14
	.string	"OMSR8"
	.byte	0xd
	.uahalf	0x2b6
	.uaword	0x7f9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.string	"OMSR12"
	.byte	0xd
	.uahalf	0x2b7
	.uaword	0x7f25
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.string	"OMCR0"
	.byte	0xd
	.uahalf	0x2b8
	.uaword	0x7d83
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.string	"OMCR4"
	.byte	0xd
	.uahalf	0x2b9
	.uaword	0x7dfc
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.string	"OMCR8"
	.byte	0xd
	.uahalf	0x2ba
	.uaword	0x7e38
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.string	"OMCR12"
	.byte	0xd
	.uahalf	0x2bb
	.uaword	0x7dbf
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x14
	.string	"OMSR"
	.byte	0xd
	.uahalf	0x2bc
	.uaword	0x7eae
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.string	"OMCR"
	.byte	0xd
	.uahalf	0x2bd
	.uaword	0x7d48
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x14
	.string	"reserved_98"
	.byte	0xd
	.uahalf	0x2be
	.uaword	0x831a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x14
	.string	"ACCEN1"
	.byte	0xd
	.uahalf	0x2bf
	.uaword	0x7b6e
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x14
	.string	"ACCEN0"
	.byte	0xd
	.uahalf	0x2c0
	.uaword	0x7b31
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0xb
	.uaword	0x124
	.uaword	0x832a
	.uleb128 0xc
	.uaword	0xec
	.byte	0x5f
	.byte	0
	.uleb128 0x17
	.uaword	0x80d9
	.uleb128 0x19
	.byte	0x4
	.uaword	0x832a
	.uleb128 0x2
	.byte	0x4
	.byte	0x6
	.byte	0x43
	.uaword	0x85d5
	.uleb128 0x3
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0x3
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0x3
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0x3
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0x3
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0x3
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0x3
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0x3
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0x3
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0x3
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0x3
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0x3
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0x3
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0x3
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0x3
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0x3
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0x3
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x4
	.string	"IfxPort_Mode"
	.byte	0x6
	.byte	0x57
	.uaword	0x8335
	.uleb128 0x2
	.byte	0x4
	.byte	0x6
	.byte	0x5c
	.uaword	0x86c5
	.uleb128 0x3
	.string	"IfxPort_OutputIdx_general"
	.sleb128 128
	.uleb128 0x3
	.string	"IfxPort_OutputIdx_alt1"
	.sleb128 136
	.uleb128 0x3
	.string	"IfxPort_OutputIdx_alt2"
	.sleb128 144
	.uleb128 0x3
	.string	"IfxPort_OutputIdx_alt3"
	.sleb128 152
	.uleb128 0x3
	.string	"IfxPort_OutputIdx_alt4"
	.sleb128 160
	.uleb128 0x3
	.string	"IfxPort_OutputIdx_alt5"
	.sleb128 168
	.uleb128 0x3
	.string	"IfxPort_OutputIdx_alt6"
	.sleb128 176
	.uleb128 0x3
	.string	"IfxPort_OutputIdx_alt7"
	.sleb128 184
	.byte	0
	.uleb128 0x4
	.string	"IfxPort_OutputIdx"
	.byte	0x6
	.byte	0x65
	.uaword	0x85e9
	.uleb128 0x2
	.byte	0x4
	.byte	0x6
	.byte	0x6a
	.uaword	0x8726
	.uleb128 0x3
	.string	"IfxPort_OutputMode_pushPull"
	.sleb128 128
	.uleb128 0x3
	.string	"IfxPort_OutputMode_openDrain"
	.sleb128 192
	.byte	0
	.uleb128 0x4
	.string	"IfxPort_OutputMode"
	.byte	0x6
	.byte	0x6d
	.uaword	0x86de
	.uleb128 0x2
	.byte	0x4
	.byte	0x6
	.byte	0x74
	.uaword	0x8865
	.uleb128 0x3
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.string	"IfxPort_PadDriver"
	.byte	0x6
	.byte	0x7d
	.uaword	0x8740
	.uleb128 0x1a
	.byte	0x8
	.byte	0x6
	.byte	0x95
	.uaword	0x88a4
	.uleb128 0x1b
	.string	"port"
	.byte	0x6
	.byte	0x97
	.uaword	0x832f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1c
	.uaword	.LASF44
	.byte	0x6
	.byte	0x98
	.uaword	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.string	"IfxPort_Pin"
	.byte	0x6
	.byte	0x99
	.uaword	0x887e
	.uleb128 0x19
	.byte	0x4
	.uaword	0x61b9
	.uleb128 0x1a
	.byte	0x10
	.byte	0xe
	.byte	0x30
	.uaword	0x88f3
	.uleb128 0x1c
	.uaword	.LASF45
	.byte	0xe
	.byte	0x32
	.uaword	0x88b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1b
	.string	"pin"
	.byte	0xe
	.byte	0x33
	.uaword	0x88a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x1b
	.string	"select"
	.byte	0xe
	.byte	0x34
	.uaword	0x86c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x1d
	.uaword	0x88bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0x47
	.uaword	0x89a5
	.uleb128 0x3
	.string	"IfxVadc_AnalogConverterMode_off"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_AnalogConverterMode_slowStandby"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_AnalogConverterMode_fastStandby"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_AnalogConverterMode_normalOperation"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_AnalogConverterMode"
	.byte	0x3
	.byte	0x4c
	.uaword	0x88f8
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0x51
	.uaword	0x8a63
	.uleb128 0x3
	.string	"IfxVadc_ArbitrationRounds_4_slots"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_ArbitrationRounds_8_slots"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_ArbitrationRounds_16_slots"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_ArbitrationRounds_20_slots"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_ArbitrationRounds"
	.byte	0x3
	.byte	0x56
	.uaword	0x89c8
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0x5b
	.uaword	0x8d79
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_standard"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult7"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult8"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult9"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult10"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult11"
	.sleb128 11
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult12"
	.sleb128 12
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult13"
	.sleb128 13
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult14"
	.sleb128 14
	.uleb128 0x3
	.string	"IfxVadc_BoundaryExtension_fastCompareResult15"
	.sleb128 15
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_BoundaryExtension"
	.byte	0x3
	.byte	0x6c
	.uaword	0x8a84
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0x71
	.uaword	0x8e31
	.uleb128 0x3
	.string	"IfxVadc_BoundarySelection_group0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_BoundarySelection_group1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_BoundarySelection_global0"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_BoundarySelection_global1"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_BoundarySelection"
	.byte	0x3
	.byte	0x76
	.uaword	0x8d9a
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0x7b
	.uaword	0x8f7e
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_none"
	.sleb128 -1
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_7"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_8"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_9"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_10"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxVadc_ChannelId_11"
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_ChannelId"
	.byte	0x3
	.byte	0x89
	.uaword	0x8e52
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0x8e
	.uaword	0x8fe8
	.uleb128 0x3
	.string	"IfxVadc_ChannelReference_standard"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_ChannelReference_channel0"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_ChannelReference"
	.byte	0x3
	.byte	0x91
	.uaword	0x8f97
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0x96
	.uaword	0x909c
	.uleb128 0x3
	.string	"IfxVadc_ChannelResolution_12bit"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_ChannelResolution_10bit"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_ChannelResolution_8bit"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_ChannelResolution_10bitFast"
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_ChannelResolution"
	.byte	0x3
	.byte	0x9b
	.uaword	0x9008
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0xa0
	.uaword	0x926c
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_7"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_8"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_9"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_10"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_11"
	.sleb128 11
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_12"
	.sleb128 12
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_13"
	.sleb128 13
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_14"
	.sleb128 14
	.uleb128 0x3
	.string	"IfxVadc_ChannelResult_15"
	.sleb128 15
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_ChannelResult"
	.byte	0x3
	.byte	0xb1
	.uaword	0x90bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0xb7
	.uaword	0x92e7
	.uleb128 0x3
	.string	"IfxVadc_ChannelSelectionStyle_channelNumber"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_ChannelSelectionStyle_binary"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_ChannelSelectionStyle"
	.byte	0x3
	.byte	0xbb
	.uaword	0x9289
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0xc0
	.uaword	0x9339
	.uleb128 0x3
	.string	"IfxVadc_ConversionType_Compatible"
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_ConversionType"
	.byte	0x3
	.byte	0xc2
	.uaword	0x930c
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0xc8
	.uaword	0x93a2
	.uleb128 0x3
	.string	"IfxVadc_EmuxCodingScheme_binary"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_EmuxCodingScheme_gray"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_EmuxCodingScheme"
	.byte	0x3
	.byte	0xcb
	.uaword	0x9357
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0xd0
	.uaword	0x93ff
	.uleb128 0x3
	.string	"IfxVadc_EmuxInterface_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_EmuxInterface_1"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_EmuxInterface"
	.byte	0x3
	.byte	0xd3
	.uaword	0x93c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0xd9
	.uaword	0x947b
	.uleb128 0x3
	.string	"IfxVadc_EmuxSampleTimeControl_settingChanges"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_EmuxSampleTimeControl_always"
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_EmuxSampleTimeControl"
	.byte	0x3
	.byte	0xdc
	.uaword	0x941c
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0xe2
	.uaword	0x9589
	.uleb128 0x3
	.string	"IfxVadc_EmuxSelectValue_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_EmuxSelectValue_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_EmuxSelectValue_2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_EmuxSelectValue_3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxVadc_EmuxSelectValue_4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxVadc_EmuxSelectValue_5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxVadc_EmuxSelectValue_6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxVadc_EmuxSelectValue_7"
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_EmuxSelectValue"
	.byte	0x3
	.byte	0xeb
	.uaword	0x94a0
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0xf1
	.uaword	0x9664
	.uleb128 0x3
	.string	"IfxVadc_ExternalMultiplexerMode_softwareControl"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_ExternalMultiplexerMode_steady"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_ExternalMultiplexerMode_singleStep"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_ExternalMultiplexerMode_sequence"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.string	"IfxVadc_ExternalMultiplexerMode"
	.byte	0x3
	.byte	0xf6
	.uaword	0x95a8
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x105
	.uaword	0x970e
	.uleb128 0x3
	.string	"IfxVadc_GatingMode_disabled"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_GatingMode_always"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_GatingMode_gatingHigh"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_GatingMode_gatingLow"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_GatingMode"
	.byte	0x3
	.uahalf	0x10a
	.uaword	0x968b
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x10f
	.uaword	0x98c9
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_7"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_8"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_9"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_10"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_11"
	.sleb128 11
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_12"
	.sleb128 12
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_13"
	.sleb128 13
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_14"
	.sleb128 14
	.uleb128 0x3
	.string	"IfxVadc_GatingSource_15"
	.sleb128 15
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_GatingSource"
	.byte	0x3
	.uahalf	0x120
	.uaword	0x9729
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x125
	.uaword	0x996a
	.uleb128 0x3
	.string	"IfxVadc_InputClasses_group0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_InputClasses_group1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_InputClasses_global0"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_InputClasses_global1"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_InputClasses"
	.byte	0x3
	.uahalf	0x12a
	.uaword	0x98e6
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x12f
	.uaword	0x9a15
	.uleb128 0x3
	.string	"IfxVadc_LimitCheck_noCheck"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_LimitCheck_eventIfInArea"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_LimitCheck_eventIfOutsideArea"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_LimitCheck_always"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_LimitCheck"
	.byte	0x3
	.uahalf	0x134
	.uaword	0x9987
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x139
	.uaword	0x9a82
	.uleb128 0x3
	.string	"IfxVadc_LowSupplyVoltageSelect_5V"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_LowSupplyVoltageSelect_3V"
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_LowSupplyVoltageSelect"
	.byte	0x3
	.uahalf	0x13c
	.uaword	0x9a30
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x141
	.uaword	0xa3c2
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl7"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl8"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl9"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl10"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl11"
	.sleb128 11
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl12"
	.sleb128 12
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl13"
	.sleb128 13
	.uleb128 0x3
	.string	"IfxVadc_Protection_channelControl14"
	.sleb128 14
	.uleb128 0x3
	.string	"IfxVadc_Protection_externalMultiplexer"
	.sleb128 15
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup0"
	.sleb128 16
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup1"
	.sleb128 17
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup2"
	.sleb128 18
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup3"
	.sleb128 19
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup4"
	.sleb128 20
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup5"
	.sleb128 21
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup6"
	.sleb128 22
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup7"
	.sleb128 23
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup8"
	.sleb128 24
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup9"
	.sleb128 25
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup10"
	.sleb128 26
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup11"
	.sleb128 27
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup12"
	.sleb128 28
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup13"
	.sleb128 29
	.uleb128 0x3
	.string	"IfxVadc_Protection_initGroup14"
	.sleb128 30
	.uleb128 0x3
	.string	"IfxVadc_Protection_globalConfig"
	.sleb128 31
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup0"
	.sleb128 32
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup1"
	.sleb128 33
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup2"
	.sleb128 34
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup3"
	.sleb128 35
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup4"
	.sleb128 36
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup5"
	.sleb128 37
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup6"
	.sleb128 38
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup7"
	.sleb128 39
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup8"
	.sleb128 40
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup9"
	.sleb128 41
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup10"
	.sleb128 42
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup11"
	.sleb128 43
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup12"
	.sleb128 44
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup13"
	.sleb128 45
	.uleb128 0x3
	.string	"IfxVadc_Protection_serviceGroup14"
	.sleb128 46
	.uleb128 0x3
	.string	"IfxVadc_Protection_testFunction"
	.sleb128 47
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup0"
	.sleb128 48
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup1"
	.sleb128 49
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup2"
	.sleb128 50
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup3"
	.sleb128 51
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup4"
	.sleb128 52
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup5"
	.sleb128 53
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup6"
	.sleb128 54
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup7"
	.sleb128 55
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup8"
	.sleb128 56
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup9"
	.sleb128 57
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup10"
	.sleb128 58
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup11"
	.sleb128 59
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup12"
	.sleb128 60
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup13"
	.sleb128 61
	.uleb128 0x3
	.string	"IfxVadc_Protection_resultRegisterGroup14"
	.sleb128 62
	.byte	0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x186
	.uaword	0xa45c
	.uleb128 0x3
	.string	"IfxVadc_RequestSlotPriority_lowest"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_RequestSlotPriority_low"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_RequestSlotPriority_high"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_RequestSlotPriority_highest"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_RequestSlotPriority"
	.byte	0x3
	.uahalf	0x18b
	.uaword	0xa3c2
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x190
	.uaword	0xa4e8
	.uleb128 0x3
	.string	"IfxVadc_RequestSlotStartMode_waitForStart"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_RequestSlotStartMode_cancelInjectRepeat"
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_RequestSlotStartMode"
	.byte	0x3
	.uahalf	0x193
	.uaword	0xa480
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x198
	.uaword	0xa575
	.uleb128 0x3
	.string	"IfxVadc_RequestSource_queue"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_RequestSource_scan"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_RequestSource_background"
	.sleb128 2
	.byte	0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x1aa
	.uaword	0xa63b
	.uleb128 0x3
	.string	"IfxVadc_SrcNr_group0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_SrcNr_group1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_SrcNr_group2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_SrcNr_group3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxVadc_SrcNr_shared0"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxVadc_SrcNr_shared1"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxVadc_SrcNr_shared2"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxVadc_SrcNr_shared3"
	.sleb128 7
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_SrcNr"
	.byte	0x3
	.uahalf	0x1b3
	.uaword	0xa575
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x1ba
	.uaword	0xa72d
	.uleb128 0x3
	.string	"IfxVadc_Status_noError"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_Status_notInitialised"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_Status_invalidGroup"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_Status_invalidChannel"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxVadc_Status_queueFull"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxVadc_Status_noAccess"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxVadc_Status_channelsStillPending"
	.sleb128 6
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Status"
	.byte	0x3
	.uahalf	0x1c2
	.uaword	0xa651
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x1c7
	.uaword	0xa7e3
	.uleb128 0x3
	.string	"IfxVadc_TriggerMode_noExternalTrigger"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_TriggerMode_uponFallingEdge"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_TriggerMode_uponRisingEdge"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_TriggerMode_uponAnyEdge"
	.sleb128 3
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_TriggerMode"
	.byte	0x3
	.uahalf	0x1cc
	.uaword	0xa744
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0xa9af
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_4"
	.sleb128 4
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_5"
	.sleb128 5
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_6"
	.sleb128 6
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_7"
	.sleb128 7
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_8"
	.sleb128 8
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_9"
	.sleb128 9
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_10"
	.sleb128 10
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_11"
	.sleb128 11
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_12"
	.sleb128 12
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_13"
	.sleb128 13
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_14"
	.sleb128 14
	.uleb128 0x3
	.string	"IfxVadc_TriggerSource_15"
	.sleb128 15
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_TriggerSource"
	.byte	0x3
	.uahalf	0x1e2
	.uaword	0xa7ff
	.uleb128 0xf
	.string	"IfxVadc_Adc_SYNCTR_STSEL"
	.byte	0x2
	.uahalf	0x15d
	.uaword	0x117
	.uleb128 0x1f
	.byte	0x4
	.byte	0x2
	.uahalf	0x167
	.uaword	0xaa07
	.uleb128 0x15
	.uaword	.LASF46
	.byte	0x2
	.uahalf	0x169
	.uaword	0x88b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc"
	.byte	0x2
	.uahalf	0x16a
	.uaword	0xa9ee
	.uleb128 0x1f
	.byte	0x10
	.byte	0x2
	.uahalf	0x16e
	.uaword	0xaa61
	.uleb128 0x15
	.uaword	.LASF47
	.byte	0x2
	.uahalf	0x170
	.uaword	0x98c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF48
	.byte	0x2
	.uahalf	0x171
	.uaword	0xa9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uaword	.LASF49
	.byte	0x2
	.uahalf	0x172
	.uaword	0x970e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.uaword	.LASF50
	.byte	0x2
	.uahalf	0x173
	.uaword	0xa7e3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_GatingTriggerConfig"
	.byte	0x2
	.uahalf	0x174
	.uaword	0xaa1b
	.uleb128 0x1f
	.byte	0x8
	.byte	0x2
	.uahalf	0x17c
	.uaword	0xab13
	.uleb128 0x15
	.uaword	.LASF51
	.byte	0x2
	.uahalf	0x17e
	.uaword	0x8a63
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"requestSlotQueueEnabled"
	.byte	0x2
	.uahalf	0x17f
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"requestSlotScanEnabled"
	.byte	0x2
	.uahalf	0x180
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x14
	.string	"requestSlotBackgroundScanEnabled"
	.byte	0x2
	.uahalf	0x181
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_ArbiterConfig"
	.byte	0x2
	.uahalf	0x182
	.uaword	0xaa89
	.uleb128 0x1f
	.byte	0x1c
	.byte	0x2
	.uahalf	0x186
	.uaword	0xab91
	.uleb128 0x14
	.string	"autoBackgroundScanEnabled"
	.byte	0x2
	.uahalf	0x188
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF52
	.byte	0x2
	.uahalf	0x189
	.uaword	0xaa61
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uaword	.LASF53
	.byte	0x2
	.uahalf	0x18a
	.uaword	0xa45c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.uaword	.LASF54
	.byte	0x2
	.uahalf	0x18b
	.uaword	0xa4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_BackgroundScanConfig"
	.byte	0x2
	.uahalf	0x18c
	.uaword	0xab35
	.uleb128 0x1f
	.byte	0x8
	.byte	0x2
	.uahalf	0x190
	.uaword	0xabe2
	.uleb128 0x15
	.uaword	.LASF55
	.byte	0x2
	.uahalf	0x192
	.uaword	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF56
	.byte	0x2
	.uahalf	0x193
	.uaword	0x909c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_ClassConfig"
	.byte	0x2
	.uahalf	0x194
	.uaword	0xabba
	.uleb128 0x1f
	.byte	0xc
	.byte	0x2
	.uahalf	0x198
	.uaword	0xac39
	.uleb128 0x15
	.uaword	.LASF45
	.byte	0x2
	.uahalf	0x19a
	.uaword	0xaa07
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF57
	.byte	0x2
	.uahalf	0x19b
	.uaword	0xac39
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uaword	.LASF58
	.byte	0x2
	.uahalf	0x19c
	.uaword	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x5d69
	.uleb128 0xf
	.string	"IfxVadc_Adc_Group"
	.byte	0x2
	.uahalf	0x19d
	.uaword	0xac02
	.uleb128 0x1f
	.byte	0x1c
	.byte	0x2
	.uahalf	0x1a1
	.uaword	0xacaf
	.uleb128 0x14
	.string	"flushQueueAfterInit"
	.byte	0x2
	.uahalf	0x1a3
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF52
	.byte	0x2
	.uahalf	0x1a4
	.uaword	0xaa61
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uaword	.LASF53
	.byte	0x2
	.uahalf	0x1a5
	.uaword	0xa45c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.uaword	.LASF54
	.byte	0x2
	.uahalf	0x1a6
	.uaword	0xa4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_QueueConfig"
	.byte	0x2
	.uahalf	0x1a7
	.uaword	0xac59
	.uleb128 0x1f
	.byte	0x1c
	.byte	0x2
	.uahalf	0x1ab
	.uaword	0xad21
	.uleb128 0x14
	.string	"autoscanEnabled"
	.byte	0x2
	.uahalf	0x1ad
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF52
	.byte	0x2
	.uahalf	0x1ae
	.uaword	0xaa61
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uaword	.LASF53
	.byte	0x2
	.uahalf	0x1af
	.uaword	0xa45c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.uaword	.LASF54
	.byte	0x2
	.uahalf	0x1b0
	.uaword	0xa4e8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_ScanConfig"
	.byte	0x2
	.uahalf	0x1b1
	.uaword	0xaccf
	.uleb128 0x1f
	.byte	0x14
	.byte	0x2
	.uahalf	0x1b5
	.uaword	0xad78
	.uleb128 0x14
	.string	"pins"
	.byte	0x2
	.uahalf	0x1b7
	.uaword	0xad78
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF59
	.byte	0x2
	.uahalf	0x1b8
	.uaword	0x8726
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.uaword	.LASF60
	.byte	0x2
	.uahalf	0x1b9
	.uaword	0x8865
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uaword	0xad88
	.uaword	0xad88
	.uleb128 0xc
	.uaword	0xec
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0x88f3
	.uleb128 0xf
	.string	"IfxVadc_Adc_EmuxPinConfig"
	.byte	0x2
	.uahalf	0x1ba
	.uaword	0xad40
	.uleb128 0x1f
	.byte	0xc
	.byte	0x2
	.uahalf	0x1c0
	.uaword	0xaded
	.uleb128 0x15
	.uaword	.LASF61
	.byte	0x2
	.uahalf	0x1c2
	.uaword	0x8f7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"resultreg"
	.byte	0x2
	.uahalf	0x1c3
	.uaword	0x926c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.uaword	.LASF57
	.byte	0x2
	.uahalf	0x1c4
	.uaword	0xaded
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xadf3
	.uleb128 0x1d
	.uaword	0xac3f
	.uleb128 0xf
	.string	"IfxVadc_Adc_Channel"
	.byte	0x2
	.uahalf	0x1c5
	.uaword	0xadb0
	.uleb128 0x1f
	.byte	0x3c
	.byte	0x2
	.uahalf	0x1c9
	.uaword	0xaf7f
	.uleb128 0x15
	.uaword	.LASF62
	.byte	0x2
	.uahalf	0x1cb
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF63
	.byte	0x2
	.uahalf	0x1cc
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.string	"backgroundChannel"
	.byte	0x2
	.uahalf	0x1cd
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.uaword	.LASF64
	.byte	0x2
	.uahalf	0x1ce
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x14
	.string	"resultPriority"
	.byte	0x2
	.uahalf	0x1cf
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"channelPriority"
	.byte	0x2
	.uahalf	0x1d0
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x14
	.string	"resultServProvider"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"channelServProvider"
	.byte	0x2
	.uahalf	0x1d2
	.uaword	0xce
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.uaword	.LASF65
	.byte	0x2
	.uahalf	0x1d3
	.uaword	0xa63b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.uaword	.LASF66
	.byte	0x2
	.uahalf	0x1d4
	.uaword	0xa63b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.uaword	.LASF67
	.byte	0x2
	.uahalf	0x1d5
	.uaword	0x8f7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.uaword	.LASF68
	.byte	0x2
	.uahalf	0x1d6
	.uaword	0x996a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.uaword	.LASF69
	.byte	0x2
	.uahalf	0x1d7
	.uaword	0x8fe8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.uaword	.LASF70
	.byte	0x2
	.uahalf	0x1d8
	.uaword	0x926c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.uaword	.LASF71
	.byte	0x2
	.uahalf	0x1d9
	.uaword	0x8e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.uaword	.LASF72
	.byte	0x2
	.uahalf	0x1da
	.uaword	0x8e31
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.uaword	.LASF73
	.byte	0x2
	.uahalf	0x1db
	.uaword	0x8d79
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.uaword	.LASF74
	.byte	0x2
	.uahalf	0x1dc
	.uaword	0x9a15
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.uaword	.LASF57
	.byte	0x2
	.uahalf	0x1dd
	.uaword	0xaded
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_ChannelConfig"
	.byte	0x2
	.uahalf	0x1de
	.uaword	0xae14
	.uleb128 0x1f
	.byte	0x28
	.byte	0x2
	.uahalf	0x1e2
	.uaword	0xb053
	.uleb128 0x15
	.uaword	.LASF46
	.byte	0x2
	.uahalf	0x1e4
	.uaword	0x88b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"globalInputClass"
	.byte	0x2
	.uahalf	0x1e5
	.uaword	0xb053
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"digitalFrequency"
	.byte	0x2
	.uahalf	0x1e6
	.uaword	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.uaword	.LASF75
	.byte	0x2
	.uahalf	0x1e7
	.uaword	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.string	"moduleFrequency"
	.byte	0x2
	.uahalf	0x1e8
	.uaword	0x174
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"startupCalibration"
	.byte	0x2
	.uahalf	0x1e9
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"supplyVoltage"
	.byte	0x2
	.uahalf	0x1ec
	.uaword	0x9a82
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uaword	0xabe2
	.uaword	0xb063
	.uleb128 0xc
	.uaword	0xec
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_Config"
	.byte	0x2
	.uahalf	0x1ed
	.uaword	0xafa1
	.uleb128 0x1f
	.byte	0x38
	.byte	0x2
	.uahalf	0x1f1
	.uaword	0xb15b
	.uleb128 0x15
	.uaword	.LASF46
	.byte	0x2
	.uahalf	0x1f3
	.uaword	0x88b7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"mode"
	.byte	0x2
	.uahalf	0x1f4
	.uaword	0x9664
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"startChannel"
	.byte	0x2
	.uahalf	0x1f5
	.uaword	0x9589
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"code"
	.byte	0x2
	.uahalf	0x1f7
	.uaword	0x93a2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"sampleTimeControl"
	.byte	0x2
	.uahalf	0x1f8
	.uaword	0x947b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.uaword	.LASF58
	.byte	0x2
	.uahalf	0x1f9
	.uaword	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"channels"
	.byte	0x2
	.uahalf	0x1fa
	.uaword	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.uaword	.LASF76
	.byte	0x2
	.uahalf	0x1fb
	.uaword	0x93ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"emuxOutPinConfig"
	.byte	0x2
	.uahalf	0x1fc
	.uaword	0xad8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"channelSelectionStyle"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x92e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xf
	.string	"IfxVadc_Adc_EmuxControl"
	.byte	0x2
	.uahalf	0x1fe
	.uaword	0xb07e
	.uleb128 0x1f
	.byte	0x7c
	.byte	0x2
	.uahalf	0x202
	.uaword	0xb249
	.uleb128 0x15
	.uaword	.LASF45
	.byte	0x2
	.uahalf	0x204
	.uaword	0xb249
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.uaword	.LASF58
	.byte	0x2
	.uahalf	0x205
	.uaword	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"master"
	.byte	0x2
	.uahalf	0x206
	.uaword	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.uaword	.LASF68
	.byte	0x2
	.uahalf	0x207
	.uaword	0xb053
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"scanRequest"
	.byte	0x2
	.uahalf	0x208
	.uaword	0xad21
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"queueRequest"
	.byte	0x2
	.uahalf	0x209
	.uaword	0xacaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.string	"backgroundScanRequest"
	.byte	0x2
	.uahalf	0x20a
	.uaword	0xab91
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.string	"disablePostCalibration"
	.byte	0x2
	.uahalf	0x20b
	.uaword	0x196
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.string	"arbiter"
	.byte	0x2
	.uahalf	0x20c
	.uaword	0xab13
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xb24f
	.uleb128 0x1d
	.uaword	0xaa07
	.uleb128 0xf
	.string	"IfxVadc_Adc_GroupConfig"
	.byte	0x2
	.uahalf	0x20d
	.uaword	0xb17b
	.uleb128 0x20
	.string	"IfxSrc_clearRequest"
	.byte	0x4
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0xb29d
	.uleb128 0x21
	.string	"src"
	.byte	0x4
	.byte	0xe6
	.uaword	0xb29d
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xb2a3
	.uleb128 0x17
	.uaword	0x35d
	.uleb128 0x22
	.string	"__minu"
	.byte	0x5
	.byte	0x8a
	.byte	0x1
	.uaword	0x166
	.byte	0x3
	.uaword	0xb2da
	.uleb128 0x21
	.string	"a"
	.byte	0x5
	.byte	0x8a
	.uaword	0x166
	.uleb128 0x21
	.string	"b"
	.byte	0x5
	.byte	0x8a
	.uaword	0x166
	.uleb128 0x23
	.string	"res"
	.byte	0x5
	.byte	0x8c
	.uaword	0x166
	.byte	0
	.uleb128 0x24
	.string	"IfxPort_setPinModeOutput"
	.byte	0x6
	.uahalf	0x209
	.byte	0x1
	.byte	0x3
	.uaword	0xb332
	.uleb128 0x25
	.string	"port"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x832f
	.uleb128 0x26
	.uaword	.LASF44
	.byte	0x6
	.uahalf	0x209
	.uaword	0x117
	.uleb128 0x25
	.string	"mode"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x8726
	.uleb128 0x25
	.string	"index"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x86c5
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_calculateSampleTime"
	.byte	0x3
	.uahalf	0x6ac
	.byte	0x1
	.uaword	0x166
	.byte	0x3
	.uaword	0xb383
	.uleb128 0x26
	.uaword	.LASF75
	.byte	0x3
	.uahalf	0x6ac
	.uaword	0x174
	.uleb128 0x26
	.uaword	.LASF55
	.byte	0x3
	.uahalf	0x6ac
	.uaword	0x174
	.uleb128 0x28
	.string	"ticks"
	.byte	0x3
	.uahalf	0x6ae
	.uaword	0x166
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_Adc_getVadcFromGroup"
	.byte	0x2
	.uahalf	0x4dc
	.byte	0x1
	.uaword	0x88b7
	.byte	0x3
	.uaword	0xb3bb
	.uleb128 0x26
	.uaword	.LASF57
	.byte	0x2
	.uahalf	0x4dc
	.uaword	0xaded
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_Adc_getGroupRegsFromGroup"
	.byte	0x2
	.uahalf	0x4aa
	.byte	0x1
	.uaword	0xac39
	.byte	0x3
	.uaword	0xb3f8
	.uleb128 0x26
	.uaword	.LASF57
	.byte	0x2
	.uahalf	0x4aa
	.uaword	0xaded
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_resetGroup"
	.byte	0x3
	.uahalf	0x86d
	.byte	0x1
	.byte	0x3
	.uaword	0xb422
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x86d
	.uaword	0xac39
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_disableModule"
	.byte	0x3
	.uahalf	0x6db
	.byte	0x1
	.byte	0x3
	.uaword	0xb45e
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x6db
	.uaword	0x88b7
	.uleb128 0x28
	.string	"passwd"
	.byte	0x3
	.uahalf	0x6dd
	.uaword	0x142
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getChannelControlConfig"
	.byte	0x3
	.uahalf	0x752
	.byte	0x1
	.uaword	0x4c8d
	.byte	0x3
	.uaword	0xb4b1
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x752
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x752
	.uaword	0x8f7e
	.uleb128 0x29
	.uaword	.LASF79
	.byte	0x3
	.uahalf	0x754
	.uaword	0x4c8d
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getAssignedChannels"
	.byte	0x3
	.uahalf	0x726
	.byte	0x1
	.uaword	0x4c4c
	.byte	0x3
	.uaword	0xb4ff
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x726
	.uaword	0xac39
	.uleb128 0x28
	.string	"assignChannels"
	.byte	0x3
	.uahalf	0x728
	.uaword	0x4c4c
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getChannelServiceRequestNodePointer0"
	.byte	0x3
	.uahalf	0x770
	.byte	0x1
	.uaword	0x4bc8
	.byte	0x3
	.uaword	0xb553
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x770
	.uaword	0xac39
	.uleb128 0x29
	.uaword	.LASF80
	.byte	0x3
	.uahalf	0x772
	.uaword	0x4bc8
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getChannelServiceRequestNodePointer1"
	.byte	0x3
	.uahalf	0x778
	.byte	0x1
	.uaword	0x4c0a
	.byte	0x3
	.uaword	0xb5a7
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x778
	.uaword	0xac39
	.uleb128 0x29
	.uaword	.LASF80
	.byte	0x3
	.uahalf	0x77a
	.uaword	0x4c0a
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getChannelResultServiceRequestNodePointer0"
	.byte	0x3
	.uahalf	0x760
	.byte	0x1
	.uaword	0x515b
	.byte	0x3
	.uaword	0xb61a
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x760
	.uaword	0xac39
	.uleb128 0x28
	.string	"resultServiceRequestNodePtr0"
	.byte	0x3
	.uahalf	0x762
	.uaword	0x515b
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getChannelResultServiceRequestNodePointer1"
	.byte	0x3
	.uahalf	0x768
	.byte	0x1
	.uaword	0x519d
	.byte	0x3
	.uaword	0xb68d
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x768
	.uaword	0xac39
	.uleb128 0x28
	.string	"resultServiceRequestNodePtr1"
	.byte	0x3
	.uahalf	0x76a
	.uaword	0x519d
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getChannelInputClass"
	.byte	0x3
	.uahalf	0x75a
	.byte	0x1
	.uaword	0x996a
	.byte	0x3
	.uaword	0xb6d1
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x75a
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x75a
	.uaword	0x8f7e
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getArbiterRoundLength"
	.byte	0x3
	.uahalf	0x720
	.byte	0x1
	.uaword	0x8a63
	.byte	0x3
	.uaword	0xb70a
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x720
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getGroupResolution"
	.byte	0x3
	.uahalf	0x7bd
	.byte	0x1
	.uaword	0x909c
	.byte	0x3
	.uaword	0xb74c
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x7bd
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF81
	.byte	0x3
	.uahalf	0x7bd
	.uaword	0x117
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getGroupSampleTime"
	.byte	0x3
	.uahalf	0x7ce
	.byte	0x1
	.uaword	0x174
	.byte	0x3
	.uaword	0xb7a6
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x7ce
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF81
	.byte	0x3
	.uahalf	0x7ce
	.uaword	0x117
	.uleb128 0x26
	.uaword	.LASF75
	.byte	0x3
	.uahalf	0x7ce
	.uaword	0x174
	.uleb128 0x29
	.uaword	.LASF55
	.byte	0x3
	.uahalf	0x7d0
	.uaword	0x166
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_isRequestScanSlotEnabled"
	.byte	0x3
	.uahalf	0x867
	.byte	0x1
	.uaword	0x196
	.byte	0x3
	.uaword	0xb7e2
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x867
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getScanSlotPriority"
	.byte	0x3
	.uahalf	0x81d
	.byte	0x1
	.uaword	0xa45c
	.byte	0x3
	.uaword	0xb819
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x81d
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getScanSlotStartMode"
	.byte	0x3
	.uahalf	0x823
	.byte	0x1
	.uaword	0xa4e8
	.byte	0x3
	.uaword	0xb851
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x823
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getScanSlotTriggerInput"
	.byte	0x3
	.uahalf	0x829
	.byte	0x1
	.uaword	0xa9af
	.byte	0x3
	.uaword	0xb88c
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x829
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getScanSlotTriggerMode"
	.byte	0x3
	.uahalf	0x82f
	.byte	0x1
	.uaword	0xa7e3
	.byte	0x3
	.uaword	0xb8c6
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x82f
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getScanSlotGatingMode"
	.byte	0x3
	.uahalf	0x811
	.byte	0x1
	.uaword	0x970e
	.byte	0x3
	.uaword	0xb8ff
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x811
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getScanSlotGatingSource"
	.byte	0x3
	.uahalf	0x817
	.byte	0x1
	.uaword	0x98c9
	.byte	0x3
	.uaword	0xb93a
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x817
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_isAutoScanEnabled"
	.byte	0x3
	.uahalf	0x855
	.byte	0x1
	.uaword	0x196
	.byte	0x3
	.uaword	0xb96f
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x855
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_isRequestQueueSlotEnabled"
	.byte	0x3
	.uahalf	0x861
	.byte	0x1
	.uaword	0x196
	.byte	0x3
	.uaword	0xb9ac
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x861
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getQueueSlotPriority"
	.byte	0x3
	.uahalf	0x7ef
	.byte	0x1
	.uaword	0xa45c
	.byte	0x3
	.uaword	0xb9e4
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x7ef
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getQueueSlotStartMode"
	.byte	0x3
	.uahalf	0x7f5
	.byte	0x1
	.uaword	0xa4e8
	.byte	0x3
	.uaword	0xba1d
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x7f5
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getQueueSlotTriggerInput"
	.byte	0x3
	.uahalf	0x7fb
	.byte	0x1
	.uaword	0xa9af
	.byte	0x3
	.uaword	0xba59
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x7fb
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getQueueSlotTriggerMode"
	.byte	0x3
	.uahalf	0x801
	.byte	0x1
	.uaword	0xa7e3
	.byte	0x3
	.uaword	0xba94
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x801
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getQueueSlotGatingMode"
	.byte	0x3
	.uahalf	0x7e3
	.byte	0x1
	.uaword	0x970e
	.byte	0x3
	.uaword	0xbace
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x7e3
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getQueueSlotGatingSource"
	.byte	0x3
	.uahalf	0x7e9
	.byte	0x1
	.uaword	0x98c9
	.byte	0x3
	.uaword	0xbb0a
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x7e9
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_isRequestBackgroundScanSlotEnabled"
	.byte	0x3
	.uahalf	0x85b
	.byte	0x1
	.uaword	0x196
	.byte	0x3
	.uaword	0xbb50
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x85b
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getBackgroundScanSlotPriority"
	.byte	0x3
	.uahalf	0x73a
	.byte	0x1
	.uaword	0xa45c
	.byte	0x3
	.uaword	0xbb91
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x73a
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getBackgroundScanSlotStartMode"
	.byte	0x3
	.uahalf	0x740
	.byte	0x1
	.uaword	0xa4e8
	.byte	0x3
	.uaword	0xbbd3
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x740
	.uaword	0xac39
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getBackgroundScanTriggerInput"
	.byte	0x3
	.uahalf	0x746
	.byte	0x1
	.uaword	0xa9af
	.byte	0x3
	.uaword	0xbc14
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x746
	.uaword	0x88b7
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getBackgroundScanTriggerMode"
	.byte	0x3
	.uahalf	0x74c
	.byte	0x1
	.uaword	0xa7e3
	.byte	0x3
	.uaword	0xbc54
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x74c
	.uaword	0x88b7
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getBackgroundScanGatingMode"
	.byte	0x3
	.uahalf	0x72e
	.byte	0x1
	.uaword	0x970e
	.byte	0x3
	.uaword	0xbc93
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x72e
	.uaword	0x88b7
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getBackgroundScanGatingSource"
	.byte	0x3
	.uahalf	0x734
	.byte	0x1
	.uaword	0x98c9
	.byte	0x3
	.uaword	0xbcd4
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x734
	.uaword	0x88b7
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_isAutoBackgroundScanEnabled"
	.byte	0x3
	.uahalf	0x84f
	.byte	0x1
	.uaword	0x196
	.byte	0x3
	.uaword	0xbd13
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x84f
	.uaword	0x88b7
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getMasterIndex"
	.byte	0x3
	.uahalf	0x7db
	.byte	0x1
	.uaword	0x117
	.byte	0x3
	.uaword	0xbd51
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x7db
	.uaword	0xac39
	.uleb128 0x29
	.uaword	.LASF82
	.byte	0x3
	.uahalf	0x7dd
	.uaword	0x117
	.byte	0
	.uleb128 0x22
	.string	"IfxVadc_Adc_getMasterId"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x446
	.byte	0x3
	.uaword	0xbdb9
	.uleb128 0x21
	.string	"slave"
	.byte	0x1
	.byte	0x48
	.uaword	0x446
	.uleb128 0x2a
	.uaword	.LASF82
	.byte	0x1
	.byte	0x48
	.uaword	0xa9cd
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.uaword	0x117
	.uleb128 0x23
	.string	"idxOffset"
	.byte	0x1
	.byte	0x4a
	.uaword	0x117
	.uleb128 0x23
	.string	"masterId"
	.byte	0x1
	.byte	0x4b
	.uaword	0x446
	.byte	0
	.uleb128 0x27
	.string	"IfxVadc_getGlobalConfigValue"
	.byte	0x3
	.uahalf	0x798
	.byte	0x1
	.uaword	0x542b
	.byte	0x3
	.uaword	0xbe01
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x798
	.uaword	0x88b7
	.uleb128 0x28
	.string	"globCfg"
	.byte	0x3
	.uahalf	0x79a
	.uaword	0x542b
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setReferenceInput"
	.byte	0x3
	.uahalf	0x93a
	.byte	0x1
	.byte	0x3
	.uaword	0xbe4a
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x93a
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x93a
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF69
	.byte	0x3
	.uahalf	0x93a
	.uaword	0x8fe8
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_storeGroupResult"
	.byte	0x3
	.uahalf	0x991
	.byte	0x1
	.byte	0x3
	.uaword	0xbe92
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x991
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x991
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF70
	.byte	0x3
	.uahalf	0x991
	.uaword	0x926c
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setLowerBoundary"
	.byte	0x3
	.uahalf	0x917
	.byte	0x1
	.byte	0x3
	.uaword	0xbeda
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x917
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x917
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF71
	.byte	0x3
	.uahalf	0x917
	.uaword	0x8e31
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setUpperBoundary"
	.byte	0x3
	.uahalf	0x979
	.byte	0x1
	.byte	0x3
	.uaword	0xbf22
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x979
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x979
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF72
	.byte	0x3
	.uahalf	0x979
	.uaword	0x8e31
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setSyncRequest"
	.byte	0x3
	.uahalf	0x973
	.byte	0x1
	.byte	0x3
	.uaword	0xbf68
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x973
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x973
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF63
	.byte	0x3
	.uahalf	0x973
	.uaword	0x196
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setChannelInputClass"
	.byte	0x3
	.uahalf	0x8c8
	.byte	0x1
	.byte	0x3
	.uaword	0xbfb4
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x8c8
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x8c8
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF68
	.byte	0x3
	.uahalf	0x8c8
	.uaword	0x996a
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setChannelLimitCheckMode"
	.byte	0x3
	.uahalf	0x8ce
	.byte	0x1
	.byte	0x3
	.uaword	0xc004
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x8ce
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x8ce
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF74
	.byte	0x3
	.uahalf	0x8ce
	.uaword	0x9a15
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setResultPosition"
	.byte	0x3
	.uahalf	0x94e
	.byte	0x1
	.byte	0x3
	.uaword	0xc04d
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x94e
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x94e
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF64
	.byte	0x3
	.uahalf	0x94e
	.uaword	0x196
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setBackgroundResultTarget"
	.byte	0x3
	.uahalf	0x891
	.byte	0x1
	.byte	0x3
	.uaword	0xc09e
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x891
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x891
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF62
	.byte	0x3
	.uahalf	0x891
	.uaword	0x196
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setBoundaryMode"
	.byte	0x3
	.uahalf	0x8b4
	.byte	0x1
	.byte	0x3
	.uaword	0xc0e5
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x8b4
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x8b4
	.uaword	0x8f7e
	.uleb128 0x26
	.uaword	.LASF73
	.byte	0x3
	.uahalf	0x8b4
	.uaword	0x8d79
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setGroupPriorityChannel"
	.byte	0x3
	.uahalf	0x905
	.byte	0x1
	.byte	0x3
	.uaword	0xc128
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x905
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x905
	.uaword	0x8f7e
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setBackgroundPriorityChannel"
	.byte	0x3
	.uahalf	0x88b
	.byte	0x1
	.byte	0x3
	.uaword	0xc170
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x88b
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF78
	.byte	0x3
	.uahalf	0x88b
	.uaword	0x8f7e
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setChannelEventNodePointer0"
	.byte	0x3
	.uahalf	0x8ba
	.byte	0x1
	.byte	0x3
	.uaword	0xc1c3
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x8ba
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF66
	.byte	0x3
	.uahalf	0x8ba
	.uaword	0xa63b
	.uleb128 0x26
	.uaword	.LASF61
	.byte	0x3
	.uahalf	0x8ba
	.uaword	0x8f7e
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setChannelEventNodePointer1"
	.byte	0x3
	.uahalf	0x8c1
	.byte	0x1
	.byte	0x3
	.uaword	0xc216
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x8c1
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF66
	.byte	0x3
	.uahalf	0x8c1
	.uaword	0xa63b
	.uleb128 0x26
	.uaword	.LASF61
	.byte	0x3
	.uahalf	0x8c1
	.uaword	0x8f7e
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_clearChannelRequest"
	.byte	0x3
	.uahalf	0x6c3
	.byte	0x1
	.byte	0x3
	.uaword	0xc255
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x6c3
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF67
	.byte	0x3
	.uahalf	0x6c3
	.uaword	0x8f7e
	.byte	0
	.uleb128 0x20
	.string	"IfxSrc_init"
	.byte	0x4
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0xc29a
	.uleb128 0x21
	.string	"src"
	.byte	0x4
	.byte	0xfe
	.uaword	0xb29d
	.uleb128 0x21
	.string	"typOfService"
	.byte	0x4
	.byte	0xfe
	.uaword	0xce
	.uleb128 0x21
	.string	"priority"
	.byte	0x4
	.byte	0xfe
	.uaword	0x1d8
	.byte	0
	.uleb128 0x20
	.string	"IfxSrc_enable"
	.byte	0x4
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0xc2bd
	.uleb128 0x21
	.string	"src"
	.byte	0x4
	.byte	0xf8
	.uaword	0xb29d
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_enableServiceRequest"
	.byte	0x3
	.uahalf	0x712
	.byte	0x1
	.byte	0x3
	.uaword	0xc2fd
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x712
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF70
	.byte	0x3
	.uahalf	0x712
	.uaword	0x926c
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setResultNodeEventPointer0"
	.byte	0x3
	.uahalf	0x940
	.byte	0x1
	.byte	0x3
	.uaword	0xc34f
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x940
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF65
	.byte	0x3
	.uahalf	0x940
	.uaword	0xa63b
	.uleb128 0x26
	.uaword	.LASF70
	.byte	0x3
	.uahalf	0x940
	.uaword	0x926c
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setResultNodeEventPointer1"
	.byte	0x3
	.uahalf	0x947
	.byte	0x1
	.byte	0x3
	.uaword	0xc3a1
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x947
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF65
	.byte	0x3
	.uahalf	0x947
	.uaword	0xa63b
	.uleb128 0x26
	.uaword	.LASF70
	.byte	0x3
	.uahalf	0x947
	.uaword	0x926c
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_clearAllResultRequests"
	.byte	0x3
	.uahalf	0x6bd
	.byte	0x1
	.byte	0x3
	.uaword	0xc3d7
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x6bd
	.uaword	0xac39
	.byte	0
	.uleb128 0x22
	.string	"IfxVadc_Adc_getMasterKernelIndex"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	0xa9cd
	.byte	0x3
	.uaword	0xc421
	.uleb128 0x21
	.string	"slave"
	.byte	0x1
	.byte	0x62
	.uaword	0x446
	.uleb128 0x21
	.string	"master"
	.byte	0x1
	.byte	0x62
	.uaword	0x446
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setMasterIndex"
	.byte	0x3
	.uahalf	0x91d
	.byte	0x1
	.byte	0x3
	.uaword	0xc45b
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x91d
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF82
	.byte	0x3
	.uahalf	0x91d
	.uaword	0x117
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setAnalogConvertControl"
	.byte	0x3
	.uahalf	0x873
	.byte	0x1
	.byte	0x3
	.uaword	0xc4ae
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x873
	.uaword	0xac39
	.uleb128 0x25
	.string	"analogConverterMode"
	.byte	0x3
	.uahalf	0x873
	.uaword	0x89a5
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setArbitrationRoundLength"
	.byte	0x3
	.uahalf	0x879
	.byte	0x1
	.byte	0x3
	.uaword	0xc4f3
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x879
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF51
	.byte	0x3
	.uahalf	0x879
	.uaword	0x8a63
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_enableQueueSlotExternalTrigger"
	.byte	0x3
	.uahalf	0x706
	.byte	0x1
	.byte	0x3
	.uaword	0xc531
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x706
	.uaword	0xac39
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setQueueSlotTriggerOperatingConfig"
	.byte	0x3
	.uahalf	0x92f
	.byte	0x1
	.byte	0x3
	.uaword	0xc59a
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x92f
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF50
	.byte	0x3
	.uahalf	0x92f
	.uaword	0xa7e3
	.uleb128 0x26
	.uaword	.LASF48
	.byte	0x3
	.uahalf	0x92f
	.uaword	0xa9af
	.uleb128 0x28
	.string	"qctrl0"
	.byte	0x3
	.uahalf	0x931
	.uaword	0x4e13
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setQueueSlotGatingConfig"
	.byte	0x3
	.uahalf	0x924
	.byte	0x1
	.byte	0x3
	.uaword	0xc5f9
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x924
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF47
	.byte	0x3
	.uahalf	0x924
	.uaword	0x98c9
	.uleb128 0x26
	.uaword	.LASF49
	.byte	0x3
	.uahalf	0x924
	.uaword	0x970e
	.uleb128 0x28
	.string	"qctrl0"
	.byte	0x3
	.uahalf	0x926
	.uaword	0x4e13
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_disableQueueSlotExternalTrigger"
	.byte	0x3
	.uahalf	0x6e4
	.byte	0x1
	.byte	0x3
	.uaword	0xc638
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x6e4
	.uaword	0xac39
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_clearQueue"
	.byte	0x3
	.uahalf	0x6c9
	.byte	0x1
	.byte	0x3
	.uaword	0xc675
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x6c9
	.uaword	0xac39
	.uleb128 0x25
	.string	"flushQueue"
	.byte	0x3
	.uahalf	0x6c9
	.uaword	0x196
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_enableScanSlotExternalTrigger"
	.byte	0x3
	.uahalf	0x70c
	.byte	0x1
	.byte	0x3
	.uaword	0xc6b2
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x70c
	.uaword	0xac39
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setScanSlotTriggerConfig"
	.byte	0x3
	.uahalf	0x95f
	.byte	0x1
	.byte	0x3
	.uaword	0xc711
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x95f
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF50
	.byte	0x3
	.uahalf	0x95f
	.uaword	0xa7e3
	.uleb128 0x26
	.uaword	.LASF48
	.byte	0x3
	.uahalf	0x95f
	.uaword	0xa9af
	.uleb128 0x28
	.string	"asctrl"
	.byte	0x3
	.uahalf	0x961
	.uaword	0x48ff
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setScanSlotGatingConfig"
	.byte	0x3
	.uahalf	0x954
	.byte	0x1
	.byte	0x3
	.uaword	0xc76f
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x954
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF47
	.byte	0x3
	.uahalf	0x954
	.uaword	0x98c9
	.uleb128 0x26
	.uaword	.LASF49
	.byte	0x3
	.uahalf	0x954
	.uaword	0x970e
	.uleb128 0x28
	.string	"asctrl"
	.byte	0x3
	.uahalf	0x956
	.uaword	0x48ff
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_disableScanSlotExternalTrigger"
	.byte	0x3
	.uahalf	0x6ea
	.byte	0x1
	.byte	0x3
	.uaword	0xc7ad
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x6ea
	.uaword	0xac39
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setAutoScan"
	.byte	0x3
	.uahalf	0x885
	.byte	0x1
	.byte	0x3
	.uaword	0xc7ef
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x885
	.uaword	0xac39
	.uleb128 0x25
	.string	"autoscanEnable"
	.byte	0x3
	.uahalf	0x885
	.uaword	0x196
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_enableBackgroundScanSlotExternalTrigger"
	.byte	0x3
	.uahalf	0x6f0
	.byte	0x1
	.byte	0x3
	.uaword	0xc836
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x6f0
	.uaword	0x88b7
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setBackgroundScanSlotTriggerConfig"
	.byte	0x3
	.uahalf	0x8a9
	.byte	0x1
	.byte	0x3
	.uaword	0xc8a0
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x8a9
	.uaword	0x88b7
	.uleb128 0x26
	.uaword	.LASF50
	.byte	0x3
	.uahalf	0x8a9
	.uaword	0xa7e3
	.uleb128 0x26
	.uaword	.LASF48
	.byte	0x3
	.uahalf	0x8a9
	.uaword	0xa9af
	.uleb128 0x28
	.string	"brsctrl"
	.byte	0x3
	.uahalf	0x8ab
	.uaword	0x46bd
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setBackgroundScanSlotGatingConfig"
	.byte	0x3
	.uahalf	0x89e
	.byte	0x1
	.byte	0x3
	.uaword	0xc909
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x89e
	.uaword	0x88b7
	.uleb128 0x26
	.uaword	.LASF47
	.byte	0x3
	.uahalf	0x89e
	.uaword	0x98c9
	.uleb128 0x26
	.uaword	.LASF49
	.byte	0x3
	.uahalf	0x89e
	.uaword	0x970e
	.uleb128 0x28
	.string	"brsctrl"
	.byte	0x3
	.uahalf	0x8a0
	.uaword	0x46bd
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setAutoBackgroundScan"
	.byte	0x3
	.uahalf	0x87f
	.byte	0x1
	.byte	0x3
	.uaword	0xc95f
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x87f
	.uaword	0x88b7
	.uleb128 0x25
	.string	"autoBackgroundScanEnable"
	.byte	0x3
	.uahalf	0x87f
	.uaword	0x196
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setGroupResolution"
	.byte	0x3
	.uahalf	0x90b
	.byte	0x1
	.byte	0x3
	.uaword	0xc9a9
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x90b
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF81
	.byte	0x3
	.uahalf	0x90b
	.uaword	0x117
	.uleb128 0x26
	.uaword	.LASF56
	.byte	0x3
	.uahalf	0x90b
	.uaword	0x909c
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setGroupSampleTime"
	.byte	0x3
	.uahalf	0x911
	.byte	0x1
	.byte	0x3
	.uaword	0xc9ff
	.uleb128 0x26
	.uaword	.LASF77
	.byte	0x3
	.uahalf	0x911
	.uaword	0xac39
	.uleb128 0x26
	.uaword	.LASF81
	.byte	0x3
	.uahalf	0x911
	.uaword	0x117
	.uleb128 0x26
	.uaword	.LASF75
	.byte	0x3
	.uahalf	0x911
	.uaword	0x174
	.uleb128 0x26
	.uaword	.LASF55
	.byte	0x3
	.uahalf	0x911
	.uaword	0x174
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_enableModule"
	.byte	0x3
	.uahalf	0x6fc
	.byte	0x1
	.byte	0x3
	.uaword	0xca3a
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x6fc
	.uaword	0x88b7
	.uleb128 0x28
	.string	"passwd"
	.byte	0x3
	.uahalf	0x6fe
	.uaword	0x142
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setGlobalResolution"
	.byte	0x3
	.uahalf	0x8f9
	.byte	0x1
	.byte	0x3
	.uaword	0xca85
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x8f9
	.uaword	0x88b7
	.uleb128 0x26
	.uaword	.LASF81
	.byte	0x3
	.uahalf	0x8f9
	.uaword	0x117
	.uleb128 0x26
	.uaword	.LASF56
	.byte	0x3
	.uahalf	0x8f9
	.uaword	0x909c
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setGlobalSampleTime"
	.byte	0x3
	.uahalf	0x8ff
	.byte	0x1
	.byte	0x3
	.uaword	0xcadc
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x8ff
	.uaword	0x88b7
	.uleb128 0x26
	.uaword	.LASF81
	.byte	0x3
	.uahalf	0x8ff
	.uaword	0x117
	.uleb128 0x26
	.uaword	.LASF75
	.byte	0x3
	.uahalf	0x8ff
	.uaword	0x174
	.uleb128 0x26
	.uaword	.LASF55
	.byte	0x3
	.uahalf	0x8ff
	.uaword	0x174
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_setEmuxInterfaceForGroup"
	.byte	0x3
	.uahalf	0x8ec
	.byte	0x1
	.byte	0x3
	.uaword	0xcb2c
	.uleb128 0x26
	.uaword	.LASF46
	.byte	0x3
	.uahalf	0x8ec
	.uaword	0x88b7
	.uleb128 0x26
	.uaword	.LASF76
	.byte	0x3
	.uahalf	0x8ec
	.uaword	0x93ff
	.uleb128 0x26
	.uaword	.LASF57
	.byte	0x3
	.uahalf	0x8ec
	.uaword	0x446
	.byte	0
	.uleb128 0x24
	.string	"IfxVadc_initEmuxPin"
	.byte	0x3
	.uahalf	0x83b
	.byte	0x1
	.byte	0x3
	.uaword	0xcb70
	.uleb128 0x25
	.string	"emux"
	.byte	0x3
	.uahalf	0x83b
	.uaword	0xad88
	.uleb128 0x26
	.uaword	.LASF59
	.byte	0x3
	.uahalf	0x83b
	.uaword	0x8726
	.uleb128 0x26
	.uaword	.LASF60
	.byte	0x3
	.uahalf	0x83b
	.uaword	0x8865
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxVadc_Adc_deInitGroup"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xcc26
	.uleb128 0x2c
	.uaword	.LASF57
	.byte	0x1
	.byte	0x6c
	.uaword	0xcc26
	.uaword	.LLST0
	.uleb128 0x2d
	.uaword	.LASF46
	.byte	0x1
	.byte	0x6e
	.uaword	0x88b7
	.byte	0x1
	.byte	0x6c
	.uleb128 0x2d
	.uaword	.LASF77
	.byte	0x1
	.byte	0x6f
	.uaword	0xac39
	.byte	0x1
	.byte	0x6d
	.uleb128 0x2e
	.uaword	.LASF83
	.byte	0x1
	.byte	0x71
	.uaword	0x446
	.uaword	.LLST1
	.uleb128 0x2f
	.uaword	0xb383
	.uaword	.LBB228
	.uaword	.LBE228
	.byte	0x1
	.byte	0x6e
	.uaword	0xcbf1
	.uleb128 0x30
	.uaword	0xb3ae
	.uaword	.LLST0
	.byte	0
	.uleb128 0x2f
	.uaword	0xb3bb
	.uaword	.LBB230
	.uaword	.LBE230
	.byte	0x1
	.byte	0x6f
	.uaword	0xcc0e
	.uleb128 0x30
	.uaword	0xb3eb
	.uaword	.LLST3
	.byte	0
	.uleb128 0x31
	.uaword	0xb3f8
	.uaword	.LBB232
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x75
	.uleb128 0x32
	.uaword	0xb415
	.byte	0x1
	.byte	0x6d
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xac3f
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxVadc_Adc_disableModule"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	.LFB355
	.uaword	.LFE355
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xcc96
	.uleb128 0x2c
	.uaword	.LASF46
	.byte	0x1
	.byte	0x7a
	.uaword	0x88b7
	.uaword	.LLST4
	.uleb128 0x33
	.uaword	0xb422
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x1
	.byte	0x7c
	.uleb128 0x30
	.uaword	0xb442
	.uaword	.LLST5
	.uleb128 0x34
	.uaword	.LBB239
	.uaword	.LBE239
	.uleb128 0x35
	.uaword	0xb44e
	.uaword	.LLST6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxVadc_Adc_getChannelConfig"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	.LFB356
	.uaword	.LFE356
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xceb8
	.uleb128 0x2c
	.uaword	.LASF61
	.byte	0x1
	.byte	0x80
	.uaword	0xceb8
	.uaword	.LLST7
	.uleb128 0x2c
	.uaword	.LASF84
	.byte	0x1
	.byte	0x80
	.uaword	0xcebe
	.uaword	.LLST8
	.uleb128 0x2d
	.uaword	.LASF77
	.byte	0x1
	.byte	0x82
	.uaword	0xac39
	.byte	0x1
	.byte	0x6d
	.uleb128 0x2e
	.uaword	.LASF78
	.byte	0x1
	.byte	0x83
	.uaword	0x8f7e
	.uaword	.LLST9
	.uleb128 0x36
	.uaword	.LASF79
	.byte	0x1
	.byte	0x88
	.uaword	0x4c8d
	.uleb128 0x37
	.string	"channelServiceRequestNodePtr"
	.byte	0x1
	.byte	0x98
	.uaword	0x166
	.uaword	.LLST10
	.uleb128 0x2e
	.uaword	.LASF83
	.byte	0x1
	.byte	0x9a
	.uaword	0x446
	.uaword	.LLST11
	.uleb128 0x37
	.string	"src"
	.byte	0x1
	.byte	0xa5
	.uaword	0xb29d
	.uaword	.LLST12
	.uleb128 0x37
	.string	"resultServiceRequestNodePtr"
	.byte	0x1
	.byte	0xb4
	.uaword	0x166
	.uaword	.LLST13
	.uleb128 0x2f
	.uaword	0xb3bb
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x1
	.byte	0x82
	.uaword	0xcd96
	.uleb128 0x30
	.uaword	0xb3eb
	.uaword	.LLST14
	.byte	0
	.uleb128 0x38
	.uaword	0xb45e
	.uaword	.LBB242
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x8a
	.uaword	0xcdcb
	.uleb128 0x30
	.uaword	0xb498
	.uaword	.LLST15
	.uleb128 0x30
	.uaword	0xb48c
	.uaword	.LLST16
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x35
	.uaword	0xb4a4
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0xb4b1
	.uaword	.LBB248
	.uaword	.LBE248
	.byte	0x1
	.byte	0x97
	.uaword	0xcdfb
	.uleb128 0x30
	.uaword	0xb4db
	.uaword	.LLST18
	.uleb128 0x34
	.uaword	.LBB249
	.uaword	.LBE249
	.uleb128 0x35
	.uaword	0xb4e7
	.uaword	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0xb4ff
	.uaword	.LBB250
	.uaword	.LBE250
	.byte	0x1
	.byte	0x9e
	.uaword	0xce2b
	.uleb128 0x30
	.uaword	0xb53a
	.uaword	.LLST20
	.uleb128 0x34
	.uaword	.LBB251
	.uaword	.LBE251
	.uleb128 0x35
	.uaword	0xb546
	.uaword	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0xb5a7
	.uaword	.LBB252
	.uaword	.LBE252
	.byte	0x1
	.byte	0xb8
	.uaword	0xce5b
	.uleb128 0x30
	.uaword	0xb5e8
	.uaword	.LLST22
	.uleb128 0x34
	.uaword	.LBB253
	.uaword	.LBE253
	.uleb128 0x35
	.uaword	0xb5f4
	.uaword	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0xb553
	.uaword	.LBB254
	.uaword	.LBE254
	.byte	0x1
	.byte	0xa2
	.uaword	0xce8b
	.uleb128 0x30
	.uaword	0xb58e
	.uaword	.LLST24
	.uleb128 0x34
	.uaword	.LBB255
	.uaword	.LBE255
	.uleb128 0x35
	.uaword	0xb59a
	.uaword	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	0xb61a
	.uaword	.LBB256
	.uaword	.LBE256
	.byte	0x1
	.byte	0xbc
	.uleb128 0x30
	.uaword	0xb65b
	.uaword	.LLST26
	.uleb128 0x34
	.uaword	.LBB257
	.uaword	.LBE257
	.uleb128 0x35
	.uaword	0xb667
	.uaword	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xadf8
	.uleb128 0x19
	.byte	0x4
	.uaword	0xaf7f
	.uleb128 0x3a
	.byte	0x1
	.string	"IfxVadc_Adc_getChannelConversionTime"
	.byte	0x1
	.byte	0xd0
	.byte	0x1
	.uaword	0x174
	.uaword	.LFB357
	.uaword	.LFE357
	.uaword	.LLST28
	.uaword	0xcf4e
	.uleb128 0x2c
	.uaword	.LASF61
	.byte	0x1
	.byte	0xd0
	.uaword	0xceb8
	.uaword	.LLST29
	.uleb128 0x3b
	.string	"conversionMode"
	.byte	0x1
	.byte	0xd0
	.uaword	0x9339
	.uaword	.LLST30
	.uleb128 0x31
	.uaword	0xb68d
	.uaword	.LBB258
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xd2
	.uleb128 0x30
	.uaword	0xb6c4
	.uaword	.LLST31
	.uleb128 0x30
	.uaword	0xb6b8
	.uaword	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxVadc_Adc_getGroupConfig"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.uaword	.LFB358
	.uaword	.LFE358
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd39b
	.uleb128 0x2c
	.uaword	.LASF57
	.byte	0x1
	.byte	0xd6
	.uaword	0xcc26
	.uaword	.LLST33
	.uleb128 0x2c
	.uaword	.LASF84
	.byte	0x1
	.byte	0xd6
	.uaword	0xd39b
	.uaword	.LLST34
	.uleb128 0x2e
	.uaword	.LASF81
	.byte	0x1
	.byte	0xd8
	.uaword	0x117
	.uaword	.LLST35
	.uleb128 0x2e
	.uaword	.LASF77
	.byte	0x1
	.byte	0xd9
	.uaword	0xac39
	.uaword	.LLST36
	.uleb128 0x2e
	.uaword	.LASF46
	.byte	0x1
	.byte	0xda
	.uaword	0x88b7
	.uaword	.LLST37
	.uleb128 0x2e
	.uaword	.LASF75
	.byte	0x1
	.byte	0xdb
	.uaword	0x174
	.uaword	.LLST38
	.uleb128 0x2f
	.uaword	0xb6d1
	.uaword	.LBB266
	.uaword	.LBE266
	.byte	0x1
	.byte	0xe0
	.uaword	0xcff2
	.uleb128 0x32
	.uaword	0xb6fd
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x38
	.uaword	0xb70a
	.uaword	.LBB268
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xe4
	.uaword	0xd016
	.uleb128 0x30
	.uaword	0xb73f
	.uaword	.LLST39
	.uleb128 0x32
	.uaword	0xb733
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x38
	.uaword	0xb74c
	.uaword	.LBB271
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xe5
	.uaword	0xd052
	.uleb128 0x30
	.uaword	0xb78d
	.uaword	.LLST40
	.uleb128 0x30
	.uaword	0xb781
	.uaword	.LLST41
	.uleb128 0x32
	.uaword	0xb775
	.byte	0x1
	.byte	0x6c
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x35
	.uaword	0xb799
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0xb7a6
	.uaword	.LBB277
	.uaword	.LBE277
	.byte	0x1
	.byte	0xe8
	.uaword	0xd06f
	.uleb128 0x30
	.uaword	0xb7d5
	.uaword	.LLST43
	.byte	0
	.uleb128 0x3c
	.uaword	0xb96f
	.uaword	.LBB279
	.uaword	.LBE279
	.byte	0x1
	.uahalf	0x106
	.uaword	0xd08d
	.uleb128 0x30
	.uaword	0xb99f
	.uaword	.LLST44
	.byte	0
	.uleb128 0x3c
	.uaword	0xbb0a
	.uaword	.LBB281
	.uaword	.LBE281
	.byte	0x1
	.uahalf	0x124
	.uaword	0xd0ab
	.uleb128 0x30
	.uaword	0xbb43
	.uaword	.LLST45
	.byte	0
	.uleb128 0x3d
	.uaword	0xbd13
	.uaword	.LBB283
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x142
	.uaword	0xd0d8
	.uleb128 0x30
	.uaword	0xbd38
	.uaword	.LLST46
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0xf8
	.uleb128 0x35
	.uaword	0xbd44
	.uaword	.LLST47
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0xbd51
	.uaword	.LBB287
	.uaword	.LBE287
	.byte	0x1
	.uahalf	0x142
	.uaword	0xd11c
	.uleb128 0x3e
	.uaword	0xbd83
	.uleb128 0x30
	.uaword	0xbd76
	.uaword	.LLST48
	.uleb128 0x34
	.uaword	.LBB288
	.uaword	.LBE288
	.uleb128 0x35
	.uaword	0xbd8e
	.uaword	.LLST49
	.uleb128 0x3f
	.uaword	0xbd97
	.uleb128 0x35
	.uaword	0xbda8
	.uaword	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0xbdb9
	.uaword	.LBB289
	.uaword	.LBE289
	.byte	0x1
	.uahalf	0x144
	.uaword	0xd14d
	.uleb128 0x30
	.uaword	0xbde4
	.uaword	.LLST51
	.uleb128 0x34
	.uaword	.LBB290
	.uaword	.LBE290
	.uleb128 0x35
	.uaword	0xbdf0
	.uaword	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0xbb50
	.uaword	.LBB292
	.uaword	.LBE292
	.byte	0x1
	.uahalf	0x127
	.uaword	0xd16b
	.uleb128 0x30
	.uaword	0xbb84
	.uaword	.LLST53
	.byte	0
	.uleb128 0x3c
	.uaword	0xbb91
	.uaword	.LBB294
	.uaword	.LBE294
	.byte	0x1
	.uahalf	0x128
	.uaword	0xd189
	.uleb128 0x30
	.uaword	0xbbc6
	.uaword	.LLST54
	.byte	0
	.uleb128 0x3c
	.uaword	0xbbd3
	.uaword	.LBB296
	.uaword	.LBE296
	.byte	0x1
	.uahalf	0x12a
	.uaword	0xd1a7
	.uleb128 0x30
	.uaword	0xbc07
	.uaword	.LLST55
	.byte	0
	.uleb128 0x3d
	.uaword	0xbc14
	.uaword	.LBB298
	.uaword	.Ldebug_ranges0+0x110
	.byte	0x1
	.uahalf	0x12b
	.uaword	0xd1c5
	.uleb128 0x30
	.uaword	0xbc47
	.uaword	.LLST56
	.byte	0
	.uleb128 0x3c
	.uaword	0xbc54
	.uaword	.LBB302
	.uaword	.LBE302
	.byte	0x1
	.uahalf	0x12f
	.uaword	0xd1e3
	.uleb128 0x30
	.uaword	0xbc86
	.uaword	.LLST57
	.byte	0
	.uleb128 0x3c
	.uaword	0xbc93
	.uaword	.LBB304
	.uaword	.LBE304
	.byte	0x1
	.uahalf	0x136
	.uaword	0xd201
	.uleb128 0x30
	.uaword	0xbcc7
	.uaword	.LLST58
	.byte	0
	.uleb128 0x3c
	.uaword	0xbcd4
	.uaword	.LBB306
	.uaword	.LBE306
	.byte	0x1
	.uahalf	0x137
	.uaword	0xd21f
	.uleb128 0x30
	.uaword	0xbd06
	.uaword	.LLST59
	.byte	0
	.uleb128 0x3c
	.uaword	0xb9ac
	.uaword	.LBB308
	.uaword	.LBE308
	.byte	0x1
	.uahalf	0x109
	.uaword	0xd23d
	.uleb128 0x30
	.uaword	0xb9d7
	.uaword	.LLST60
	.byte	0
	.uleb128 0x3c
	.uaword	0xb9e4
	.uaword	.LBB310
	.uaword	.LBE310
	.byte	0x1
	.uahalf	0x10a
	.uaword	0xd25b
	.uleb128 0x30
	.uaword	0xba10
	.uaword	.LLST61
	.byte	0
	.uleb128 0x3c
	.uaword	0xba1d
	.uaword	.LBB312
	.uaword	.LBE312
	.byte	0x1
	.uahalf	0x10c
	.uaword	0xd279
	.uleb128 0x30
	.uaword	0xba4c
	.uaword	.LLST62
	.byte	0
	.uleb128 0x3d
	.uaword	0xba59
	.uaword	.LBB314
	.uaword	.Ldebug_ranges0+0x128
	.byte	0x1
	.uahalf	0x10d
	.uaword	0xd297
	.uleb128 0x30
	.uaword	0xba87
	.uaword	.LLST63
	.byte	0
	.uleb128 0x3c
	.uaword	0xba94
	.uaword	.LBB318
	.uaword	.LBE318
	.byte	0x1
	.uahalf	0x111
	.uaword	0xd2b5
	.uleb128 0x30
	.uaword	0xbac1
	.uaword	.LLST64
	.byte	0
	.uleb128 0x3c
	.uaword	0xbace
	.uaword	.LBB320
	.uaword	.LBE320
	.byte	0x1
	.uahalf	0x118
	.uaword	0xd2d3
	.uleb128 0x30
	.uaword	0xbafd
	.uaword	.LLST65
	.byte	0
	.uleb128 0x2f
	.uaword	0xb7e2
	.uaword	.LBB322
	.uaword	.LBE322
	.byte	0x1
	.byte	0xeb
	.uaword	0xd2f0
	.uleb128 0x30
	.uaword	0xb80c
	.uaword	.LLST66
	.byte	0
	.uleb128 0x2f
	.uaword	0xb819
	.uaword	.LBB324
	.uaword	.LBE324
	.byte	0x1
	.byte	0xec
	.uaword	0xd30d
	.uleb128 0x30
	.uaword	0xb844
	.uaword	.LLST67
	.byte	0
	.uleb128 0x2f
	.uaword	0xb851
	.uaword	.LBB326
	.uaword	.LBE326
	.byte	0x1
	.byte	0xee
	.uaword	0xd32a
	.uleb128 0x30
	.uaword	0xb87f
	.uaword	.LLST68
	.byte	0
	.uleb128 0x38
	.uaword	0xb88c
	.uaword	.LBB328
	.uaword	.Ldebug_ranges0+0x140
	.byte	0x1
	.byte	0xef
	.uaword	0xd347
	.uleb128 0x30
	.uaword	0xb8b9
	.uaword	.LLST69
	.byte	0
	.uleb128 0x2f
	.uaword	0xb8c6
	.uaword	.LBB332
	.uaword	.LBE332
	.byte	0x1
	.byte	0xf3
	.uaword	0xd364
	.uleb128 0x30
	.uaword	0xb8f2
	.uaword	.LLST70
	.byte	0
	.uleb128 0x2f
	.uaword	0xb8ff
	.uaword	.LBB334
	.uaword	.LBE334
	.byte	0x1
	.byte	0xfa
	.uaword	0xd381
	.uleb128 0x30
	.uaword	0xb92d
	.uaword	.LLST71
	.byte	0
	.uleb128 0x33
	.uaword	0xb93a
	.uaword	.LBB336
	.uaword	.LBE336
	.byte	0x1
	.byte	0xfb
	.uleb128 0x30
	.uaword	0xb962
	.uaword	.LLST72
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xb254
	.uleb128 0x40
	.byte	0x1
	.string	"IfxVadc_Adc_initChannel"
	.byte	0x1
	.uahalf	0x148
	.byte	0x1
	.uaword	0xa72d
	.uaword	.LFB359
	.uaword	.LFE359
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd8b8
	.uleb128 0x41
	.uaword	.LASF61
	.byte	0x1
	.uahalf	0x148
	.uaword	0xceb8
	.uaword	.LLST73
	.uleb128 0x41
	.uaword	.LASF84
	.byte	0x1
	.uahalf	0x148
	.uaword	0xd8b8
	.uaword	.LLST74
	.uleb128 0x42
	.string	"Status"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0xa72d
	.byte	0
	.uleb128 0x43
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x88b7
	.byte	0x1
	.byte	0x6e
	.uleb128 0x43
	.uaword	.LASF77
	.byte	0x1
	.uahalf	0x14c
	.uaword	0xac39
	.byte	0x1
	.byte	0x6c
	.uleb128 0x44
	.uaword	.LASF83
	.byte	0x1
	.uahalf	0x14f
	.uaword	0x446
	.uaword	.LLST75
	.uleb128 0x44
	.uaword	.LASF78
	.byte	0x1
	.uahalf	0x150
	.uaword	0x8f7e
	.uaword	.LLST76
	.uleb128 0x3c
	.uaword	0xb383
	.uaword	.LBB338
	.uaword	.LBE338
	.byte	0x1
	.uahalf	0x14b
	.uaword	0xd45c
	.uleb128 0x30
	.uaword	0xb3ae
	.uaword	.LLST77
	.byte	0
	.uleb128 0x3c
	.uaword	0xb3bb
	.uaword	.LBB340
	.uaword	.LBE340
	.byte	0x1
	.uahalf	0x14c
	.uaword	0xd47a
	.uleb128 0x30
	.uaword	0xb3eb
	.uaword	.LLST78
	.byte	0
	.uleb128 0x3d
	.uaword	0xbe01
	.uaword	.LBB342
	.uaword	.Ldebug_ranges0+0x158
	.byte	0x1
	.uahalf	0x157
	.uaword	0xd4a8
	.uleb128 0x30
	.uaword	0xbe3d
	.uaword	.LLST79
	.uleb128 0x30
	.uaword	0xbe31
	.uaword	.LLST80
	.uleb128 0x32
	.uaword	0xbe25
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3c
	.uaword	0xbe4a
	.uaword	.LBB348
	.uaword	.LBE348
	.byte	0x1
	.uahalf	0x158
	.uaword	0xd4d6
	.uleb128 0x30
	.uaword	0xbe85
	.uaword	.LLST81
	.uleb128 0x30
	.uaword	0xbe79
	.uaword	.LLST82
	.uleb128 0x32
	.uaword	0xbe6d
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3c
	.uaword	0xbe92
	.uaword	.LBB350
	.uaword	.LBE350
	.byte	0x1
	.uahalf	0x159
	.uaword	0xd504
	.uleb128 0x30
	.uaword	0xbecd
	.uaword	.LLST83
	.uleb128 0x30
	.uaword	0xbec1
	.uaword	.LLST84
	.uleb128 0x32
	.uaword	0xbeb5
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3c
	.uaword	0xbeda
	.uaword	.LBB352
	.uaword	.LBE352
	.byte	0x1
	.uahalf	0x15a
	.uaword	0xd532
	.uleb128 0x30
	.uaword	0xbf15
	.uaword	.LLST85
	.uleb128 0x30
	.uaword	0xbf09
	.uaword	.LLST86
	.uleb128 0x32
	.uaword	0xbefd
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3c
	.uaword	0xbf22
	.uaword	.LBB354
	.uaword	.LBE354
	.byte	0x1
	.uahalf	0x15b
	.uaword	0xd560
	.uleb128 0x30
	.uaword	0xbf5b
	.uaword	.LLST87
	.uleb128 0x30
	.uaword	0xbf4f
	.uaword	.LLST88
	.uleb128 0x32
	.uaword	0xbf43
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3c
	.uaword	0xbf68
	.uaword	.LBB356
	.uaword	.LBE356
	.byte	0x1
	.uahalf	0x15c
	.uaword	0xd58e
	.uleb128 0x30
	.uaword	0xbfa7
	.uaword	.LLST89
	.uleb128 0x30
	.uaword	0xbf9b
	.uaword	.LLST90
	.uleb128 0x32
	.uaword	0xbf8f
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3c
	.uaword	0xbfb4
	.uaword	.LBB358
	.uaword	.LBE358
	.byte	0x1
	.uahalf	0x15d
	.uaword	0xd5bc
	.uleb128 0x30
	.uaword	0xbff7
	.uaword	.LLST91
	.uleb128 0x30
	.uaword	0xbfeb
	.uaword	.LLST92
	.uleb128 0x32
	.uaword	0xbfdf
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3c
	.uaword	0xc004
	.uaword	.LBB360
	.uaword	.LBE360
	.byte	0x1
	.uahalf	0x15e
	.uaword	0xd5ea
	.uleb128 0x30
	.uaword	0xc040
	.uaword	.LLST93
	.uleb128 0x30
	.uaword	0xc034
	.uaword	.LLST94
	.uleb128 0x32
	.uaword	0xc028
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3c
	.uaword	0xc04d
	.uaword	.LBB362
	.uaword	.LBE362
	.byte	0x1
	.uahalf	0x15f
	.uaword	0xd618
	.uleb128 0x30
	.uaword	0xc091
	.uaword	.LLST95
	.uleb128 0x30
	.uaword	0xc085
	.uaword	.LLST96
	.uleb128 0x32
	.uaword	0xc079
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3c
	.uaword	0xc09e
	.uaword	.LBB364
	.uaword	.LBE364
	.byte	0x1
	.uahalf	0x160
	.uaword	0xd646
	.uleb128 0x30
	.uaword	0xc0d8
	.uaword	.LLST97
	.uleb128 0x30
	.uaword	0xc0cc
	.uaword	.LLST98
	.uleb128 0x32
	.uaword	0xc0c0
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3d
	.uaword	0xc0e5
	.uaword	.LBB366
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.uahalf	0x167
	.uaword	0xd66d
	.uleb128 0x30
	.uaword	0xc11b
	.uaword	.LLST99
	.uleb128 0x30
	.uaword	0xc10f
	.uaword	.LLST100
	.byte	0
	.uleb128 0x3d
	.uaword	0xc128
	.uaword	.LBB372
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.uahalf	0x16b
	.uaword	0xd694
	.uleb128 0x30
	.uaword	0xc163
	.uaword	.LLST101
	.uleb128 0x30
	.uaword	0xc157
	.uaword	.LLST102
	.byte	0
	.uleb128 0x45
	.uaword	.Ldebug_ranges0+0x1b8
	.uaword	0xd794
	.uleb128 0x46
	.string	"src"
	.byte	0x1
	.uahalf	0x172
	.uaword	0xb29d
	.uaword	.LLST103
	.uleb128 0x3c
	.uaword	0xc1c3
	.uaword	.LBB379
	.uaword	.LBE379
	.byte	0x1
	.uahalf	0x17a
	.uaword	0xd6dd
	.uleb128 0x30
	.uaword	0xc209
	.uaword	.LLST104
	.uleb128 0x30
	.uaword	0xc1fd
	.uaword	.LLST105
	.uleb128 0x30
	.uaword	0xc1f1
	.uaword	.LLST106
	.byte	0
	.uleb128 0x3c
	.uaword	0xc216
	.uaword	.LBB381
	.uaword	.LBE381
	.byte	0x1
	.uahalf	0x17d
	.uaword	0xd704
	.uleb128 0x30
	.uaword	0xc248
	.uaword	.LLST107
	.uleb128 0x30
	.uaword	0xc23c
	.uaword	.LLST108
	.byte	0
	.uleb128 0x3d
	.uaword	0xc255
	.uaword	.LBB383
	.uaword	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.uahalf	0x17e
	.uaword	0xd74e
	.uleb128 0x30
	.uaword	0xc289
	.uaword	.LLST109
	.uleb128 0x30
	.uaword	0xc275
	.uaword	.LLST110
	.uleb128 0x30
	.uaword	0xc26a
	.uaword	.LLST111
	.uleb128 0x47
	.uaword	0xb274
	.uaword	.LBB385
	.uaword	.LBE385
	.byte	0x4
	.uahalf	0x102
	.uleb128 0x30
	.uaword	0xb291
	.uaword	.LLST112
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0xc29a
	.uaword	.LBB389
	.uaword	.LBE389
	.byte	0x1
	.uahalf	0x17f
	.uaword	0xd76c
	.uleb128 0x30
	.uaword	0xc2b1
	.uaword	.LLST113
	.byte	0
	.uleb128 0x47
	.uaword	0xc170
	.uaword	.LBB391
	.uaword	.LBE391
	.byte	0x1
	.uahalf	0x176
	.uleb128 0x32
	.uaword	0xc1b6
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x32
	.uaword	0xc1aa
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.uaword	0xc19e
	.byte	0x1
	.byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LBB393
	.uaword	.LBE393
	.uleb128 0x46
	.string	"src"
	.byte	0x1
	.uahalf	0x189
	.uaword	0xb29d
	.uaword	.LLST114
	.uleb128 0x3c
	.uaword	0xc2bd
	.uaword	.LBB394
	.uaword	.LBE394
	.byte	0x1
	.uahalf	0x18a
	.uaword	0xd7d4
	.uleb128 0x30
	.uaword	0xc2f0
	.uaword	.LLST115
	.uleb128 0x30
	.uaword	0xc2e4
	.uaword	.LLST116
	.byte	0
	.uleb128 0x3c
	.uaword	0xc34f
	.uaword	.LBB396
	.uaword	.LBE396
	.byte	0x1
	.uahalf	0x192
	.uaword	0xd804
	.uleb128 0x30
	.uaword	0xc394
	.uaword	.LLST117
	.uleb128 0x30
	.uaword	0xc388
	.uaword	.LLST118
	.uleb128 0x30
	.uaword	0xc37c
	.uaword	.LLST119
	.byte	0
	.uleb128 0x3c
	.uaword	0xc3a1
	.uaword	.LBB398
	.uaword	.LBE398
	.byte	0x1
	.uahalf	0x195
	.uaword	0xd822
	.uleb128 0x30
	.uaword	0xc3ca
	.uaword	.LLST120
	.byte	0
	.uleb128 0x3d
	.uaword	0xc255
	.uaword	.LBB400
	.uaword	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.uahalf	0x196
	.uaword	0xd86c
	.uleb128 0x30
	.uaword	0xc289
	.uaword	.LLST121
	.uleb128 0x30
	.uaword	0xc275
	.uaword	.LLST122
	.uleb128 0x30
	.uaword	0xc26a
	.uaword	.LLST123
	.uleb128 0x47
	.uaword	0xb274
	.uaword	.LBB402
	.uaword	.LBE402
	.byte	0x4
	.uahalf	0x102
	.uleb128 0x30
	.uaword	0xb291
	.uaword	.LLST112
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0xc29a
	.uaword	.LBB406
	.uaword	.LBE406
	.byte	0x1
	.uahalf	0x197
	.uaword	0xd88a
	.uleb128 0x30
	.uaword	0xc2b1
	.uaword	.LLST124
	.byte	0
	.uleb128 0x47
	.uaword	0xc2fd
	.uaword	.LBB408
	.uaword	.LBE408
	.byte	0x1
	.uahalf	0x18e
	.uleb128 0x30
	.uaword	0xc342
	.uaword	.LLST125
	.uleb128 0x30
	.uaword	0xc336
	.uaword	.LLST126
	.uleb128 0x30
	.uaword	0xc32a
	.uaword	.LLST127
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xd8be
	.uleb128 0x1d
	.uaword	0xaf7f
	.uleb128 0x48
	.byte	0x1
	.string	"IfxVadc_Adc_initChannelConfig"
	.byte	0x1
	.uahalf	0x1a8
	.byte	0x1
	.uaword	.LFB360
	.uaword	.LFE360
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xd93c
	.uleb128 0x49
	.uaword	.LASF84
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0xcebe
	.byte	0x1
	.byte	0x64
	.uleb128 0x49
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x1a8
	.uaword	0xaded
	.byte	0x1
	.byte	0x65
	.uleb128 0x28
	.string	"IfxVadc_Adc_defaultChannelConfig"
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0xd8be
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"IfxVadc_Adc_initGroup"
	.byte	0x1
	.uahalf	0x1c4
	.byte	0x1
	.uaword	0xa72d
	.uaword	.LFB361
	.uaword	.LFE361
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdf30
	.uleb128 0x41
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0xcc26
	.uaword	.LLST128
	.uleb128 0x41
	.uaword	.LASF84
	.byte	0x1
	.uahalf	0x1c4
	.uaword	0xdf30
	.uaword	.LLST129
	.uleb128 0x42
	.string	"status"
	.byte	0x1
	.uahalf	0x1c6
	.uaword	0xa72d
	.byte	0
	.uleb128 0x44
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x1c7
	.uaword	0x88b7
	.uaword	.LLST130
	.uleb128 0x43
	.uaword	.LASF77
	.byte	0x1
	.uahalf	0x1c8
	.uaword	0xac39
	.byte	0x1
	.byte	0x6c
	.uleb128 0x44
	.uaword	.LASF83
	.byte	0x1
	.uahalf	0x1cd
	.uaword	0x446
	.uaword	.LLST131
	.uleb128 0x44
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0x1cf
	.uaword	0x174
	.uaword	.LLST132
	.uleb128 0x44
	.uaword	.LASF81
	.byte	0x1
	.uahalf	0x1d1
	.uaword	0x117
	.uaword	.LLST133
	.uleb128 0x28
	.string	"convertMode"
	.byte	0x1
	.uahalf	0x28f
	.uaword	0x89a5
	.uleb128 0x4a
	.uaword	.LBB411
	.uaword	.LBE411
	.uaword	0xda63
	.uleb128 0x43
	.uaword	.LASF82
	.byte	0x1
	.uahalf	0x1fc
	.uaword	0x117
	.byte	0x1
	.byte	0x52
	.uleb128 0x3d
	.uaword	0xc3d7
	.uaword	.LBB412
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x1fc
	.uaword	0xda3f
	.uleb128 0x30
	.uaword	0xc412
	.uaword	.LLST134
	.uleb128 0x30
	.uaword	0xc405
	.uaword	.LLST135
	.byte	0
	.uleb128 0x4b
	.uaword	0xc421
	.uaword	.LBB416
	.uaword	.Ldebug_ranges0+0x220
	.byte	0x1
	.uahalf	0x1fd
	.uleb128 0x30
	.uaword	0xc44e
	.uaword	.LLST136
	.uleb128 0x30
	.uaword	0xc442
	.uaword	.LLST137
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0xc45b
	.uaword	.LBB424
	.uaword	.LBE424
	.byte	0x1
	.uahalf	0x207
	.uaword	0xda8a
	.uleb128 0x30
	.uaword	0xc491
	.uaword	.LLST138
	.uleb128 0x30
	.uaword	0xc485
	.uaword	.LLST139
	.byte	0
	.uleb128 0x3c
	.uaword	0xc4ae
	.uaword	.LBB426
	.uaword	.LBE426
	.byte	0x1
	.uahalf	0x209
	.uaword	0xdab1
	.uleb128 0x30
	.uaword	0xc4e6
	.uaword	.LLST140
	.uleb128 0x30
	.uaword	0xc4da
	.uaword	.LLST141
	.byte	0
	.uleb128 0x3d
	.uaword	0xc45b
	.uaword	.LBB428
	.uaword	.Ldebug_ranges0+0x240
	.byte	0x1
	.uahalf	0x290
	.uaword	0xdad4
	.uleb128 0x3e
	.uaword	0xc491
	.uleb128 0x30
	.uaword	0xc485
	.uaword	.LLST142
	.byte	0
	.uleb128 0x3d
	.uaword	0xc95f
	.uaword	.LBB434
	.uaword	.Ldebug_ranges0+0x260
	.byte	0x1
	.uahalf	0x298
	.uaword	0xdb04
	.uleb128 0x30
	.uaword	0xc99c
	.uaword	.LLST143
	.uleb128 0x30
	.uaword	0xc990
	.uaword	.LLST144
	.uleb128 0x30
	.uaword	0xc984
	.uaword	.LLST145
	.byte	0
	.uleb128 0x3d
	.uaword	0xc9a9
	.uaword	.LBB437
	.uaword	.Ldebug_ranges0+0x278
	.byte	0x1
	.uahalf	0x29a
	.uaword	0xdba1
	.uleb128 0x30
	.uaword	0xc9f2
	.uaword	.LLST146
	.uleb128 0x30
	.uaword	0xc9e6
	.uaword	.LLST147
	.uleb128 0x30
	.uaword	0xc9da
	.uaword	.LLST148
	.uleb128 0x30
	.uaword	0xc9ce
	.uaword	.LLST149
	.uleb128 0x4b
	.uaword	0xb332
	.uaword	.LBB439
	.uaword	.Ldebug_ranges0+0x2a0
	.byte	0x3
	.uahalf	0x913
	.uleb128 0x30
	.uaword	0xb368
	.uaword	.LLST146
	.uleb128 0x30
	.uaword	0xb35c
	.uaword	.LLST147
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x2b8
	.uleb128 0x35
	.uaword	0xb374
	.uaword	.LLST152
	.uleb128 0x4b
	.uaword	0xb2a8
	.uaword	.LBB441
	.uaword	.Ldebug_ranges0+0x2d0
	.byte	0x3
	.uahalf	0x6b7
	.uleb128 0x30
	.uaword	0xb2c5
	.uaword	.LLST153
	.uleb128 0x30
	.uaword	0xb2bc
	.uaword	.LLST154
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x2e8
	.uleb128 0x35
	.uaword	0xb2ce
	.uaword	.LLST155
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	.Ldebug_ranges0+0x300
	.uaword	0xdcc8
	.uleb128 0x46
	.string	"backgroundScanSlot"
	.byte	0x1
	.uahalf	0x266
	.uaword	0xdf3b
	.uaword	.LLST156
	.uleb128 0x3d
	.uaword	0xc8a0
	.uaword	.LBB455
	.uaword	.Ldebug_ranges0+0x318
	.byte	0x1
	.uahalf	0x280
	.uaword	0xdc08
	.uleb128 0x30
	.uaword	0xc8ec
	.uaword	.LLST157
	.uleb128 0x30
	.uaword	0xc8e0
	.uaword	.LLST158
	.uleb128 0x30
	.uaword	0xc8d4
	.uaword	.LLST159
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x338
	.uleb128 0x35
	.uaword	0xc8f8
	.uaword	.LLST160
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0xc909
	.uaword	.LBB461
	.uaword	.LBE461
	.byte	0x1
	.uahalf	0x287
	.uaword	0xdc2f
	.uleb128 0x30
	.uaword	0xc93d
	.uaword	.LLST161
	.uleb128 0x30
	.uaword	0xc931
	.uaword	.LLST162
	.byte	0
	.uleb128 0x3c
	.uaword	0xc7ef
	.uaword	.LBB463
	.uaword	.LBE463
	.byte	0x1
	.uahalf	0x26b
	.uaword	0xdc4d
	.uleb128 0x30
	.uaword	0xc829
	.uaword	.LLST163
	.byte	0
	.uleb128 0x3d
	.uaword	0xc836
	.uaword	.LBB465
	.uaword	.Ldebug_ranges0+0x358
	.byte	0x1
	.uahalf	0x26d
	.uaword	0xdc8c
	.uleb128 0x30
	.uaword	0xc883
	.uaword	.LLST164
	.uleb128 0x30
	.uaword	0xc877
	.uaword	.LLST165
	.uleb128 0x30
	.uaword	0xc86b
	.uaword	.LLST166
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x378
	.uleb128 0x35
	.uaword	0xc88f
	.uaword	.LLST167
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0xc8a0
	.uaword	.LBB471
	.uaword	.Ldebug_ranges0+0x398
	.byte	0x1
	.uahalf	0x271
	.uleb128 0x30
	.uaword	0xc8ec
	.uaword	.LLST168
	.uleb128 0x30
	.uaword	0xc8e0
	.uaword	.LLST169
	.uleb128 0x30
	.uaword	0xc8d4
	.uaword	.LLST170
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x3b0
	.uleb128 0x35
	.uaword	0xc8f8
	.uaword	.LLST171
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	.Ldebug_ranges0+0x3c8
	.uaword	0xddf7
	.uleb128 0x46
	.string	"scanSlot"
	.byte	0x1
	.uahalf	0x23b
	.uaword	0xdf46
	.uaword	.LLST172
	.uleb128 0x3c
	.uaword	0xc76f
	.uaword	.LBB476
	.uaword	.LBE476
	.byte	0x1
	.uahalf	0x250
	.uaword	0xdd04
	.uleb128 0x30
	.uaword	0xc7a0
	.uaword	.LLST173
	.byte	0
	.uleb128 0x3d
	.uaword	0xc711
	.uaword	.LBB478
	.uaword	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.uahalf	0x256
	.uaword	0xdd43
	.uleb128 0x30
	.uaword	0xc753
	.uaword	.LLST174
	.uleb128 0x30
	.uaword	0xc747
	.uaword	.LLST175
	.uleb128 0x30
	.uaword	0xc73b
	.uaword	.LLST176
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x400
	.uleb128 0x35
	.uaword	0xc75f
	.uaword	.LLST177
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0xc7ad
	.uaword	.LBB484
	.uaword	.LBE484
	.byte	0x1
	.uahalf	0x25d
	.uaword	0xdd6a
	.uleb128 0x30
	.uaword	0xc7d7
	.uaword	.LLST178
	.uleb128 0x30
	.uaword	0xc7cb
	.uaword	.LLST179
	.byte	0
	.uleb128 0x3c
	.uaword	0xc675
	.uaword	.LBB486
	.uaword	.LBE486
	.byte	0x1
	.uahalf	0x241
	.uaword	0xdd86
	.uleb128 0x32
	.uaword	0xc6a5
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x3d
	.uaword	0xc6b2
	.uaword	.LBB488
	.uaword	.Ldebug_ranges0+0x420
	.byte	0x1
	.uahalf	0x243
	.uaword	0xddc1
	.uleb128 0x32
	.uaword	0xc6f5
	.byte	0x2
	.byte	0x8f
	.sleb128 36
	.uleb128 0x32
	.uaword	0xc6e9
	.byte	0x2
	.byte	0x8f
	.sleb128 44
	.uleb128 0x32
	.uaword	0xc6dd
	.byte	0x1
	.byte	0x6c
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x440
	.uleb128 0x35
	.uaword	0xc701
	.uaword	.LLST180
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0xc711
	.uaword	.LBB494
	.uaword	.Ldebug_ranges0+0x460
	.byte	0x1
	.uahalf	0x247
	.uleb128 0x4c
	.uaword	0xc753
	.byte	0x1
	.uleb128 0x32
	.uaword	0xc747
	.byte	0x2
	.byte	0x8f
	.sleb128 32
	.uleb128 0x32
	.uaword	0xc73b
	.byte	0x1
	.byte	0x6c
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x478
	.uleb128 0x35
	.uaword	0xc75f
	.uaword	.LLST181
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x490
	.uleb128 0x46
	.string	"queueSlot"
	.byte	0x1
	.uahalf	0x20e
	.uaword	0xdf51
	.uaword	.LLST182
	.uleb128 0x3c
	.uaword	0xc5f9
	.uaword	.LBB499
	.uaword	.LBE499
	.byte	0x1
	.uahalf	0x224
	.uaword	0xde30
	.uleb128 0x30
	.uaword	0xc62b
	.uaword	.LLST183
	.byte	0
	.uleb128 0x3d
	.uaword	0xc59a
	.uaword	.LBB501
	.uaword	.Ldebug_ranges0+0x4a8
	.byte	0x1
	.uahalf	0x22a
	.uaword	0xde6f
	.uleb128 0x30
	.uaword	0xc5dd
	.uaword	.LLST184
	.uleb128 0x30
	.uaword	0xc5d1
	.uaword	.LLST185
	.uleb128 0x30
	.uaword	0xc5c5
	.uaword	.LLST186
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x4c8
	.uleb128 0x35
	.uaword	0xc5e9
	.uaword	.LLST187
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0xc638
	.uaword	.LBB507
	.uaword	.LBE507
	.byte	0x1
	.uahalf	0x231
	.uaword	0xde96
	.uleb128 0x30
	.uaword	0xc661
	.uaword	.LLST188
	.uleb128 0x30
	.uaword	0xc655
	.uaword	.LLST189
	.byte	0
	.uleb128 0x3c
	.uaword	0xc4f3
	.uaword	.LBB509
	.uaword	.LBE509
	.byte	0x1
	.uahalf	0x214
	.uaword	0xdeb4
	.uleb128 0x30
	.uaword	0xc524
	.uaword	.LLST190
	.byte	0
	.uleb128 0x3d
	.uaword	0xc531
	.uaword	.LBB511
	.uaword	.Ldebug_ranges0+0x4e8
	.byte	0x1
	.uahalf	0x215
	.uaword	0xdef3
	.uleb128 0x30
	.uaword	0xc57e
	.uaword	.LLST191
	.uleb128 0x30
	.uaword	0xc572
	.uaword	.LLST192
	.uleb128 0x30
	.uaword	0xc566
	.uaword	.LLST193
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x508
	.uleb128 0x35
	.uaword	0xc58a
	.uaword	.LLST194
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0xc59a
	.uaword	.LBB517
	.uaword	.Ldebug_ranges0+0x528
	.byte	0x1
	.uahalf	0x21a
	.uleb128 0x30
	.uaword	0xc5dd
	.uaword	.LLST195
	.uleb128 0x30
	.uaword	0xc5d1
	.uaword	.LLST196
	.uleb128 0x30
	.uaword	0xc5c5
	.uaword	.LLST197
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x540
	.uleb128 0x35
	.uaword	0xc5e9
	.uaword	.LLST198
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xdf36
	.uleb128 0x1d
	.uaword	0xb254
	.uleb128 0x19
	.byte	0x4
	.uaword	0xdf41
	.uleb128 0x1d
	.uaword	0xab91
	.uleb128 0x19
	.byte	0x4
	.uaword	0xdf4c
	.uleb128 0x1d
	.uaword	0xad21
	.uleb128 0x19
	.byte	0x4
	.uaword	0xdf57
	.uleb128 0x1d
	.uaword	0xacaf
	.uleb128 0x48
	.byte	0x1
	.string	"IfxVadc_Adc_initGroupConfig"
	.byte	0x1
	.uahalf	0x2a3
	.byte	0x1
	.uaword	.LFB362
	.uaword	.LFE362
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdfd1
	.uleb128 0x49
	.uaword	.LASF84
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0xd39b
	.byte	0x1
	.byte	0x64
	.uleb128 0x49
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0xdfd1
	.byte	0x1
	.byte	0x65
	.uleb128 0x28
	.string	"IfxVadc_Adc_defaultGroupConfig"
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0xdf36
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xaa07
	.uleb128 0x40
	.byte	0x1
	.string	"IfxVadc_Adc_initModule"
	.byte	0x1
	.uahalf	0x2d6
	.byte	0x1
	.uaword	0xa72d
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe194
	.uleb128 0x41
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x2d6
	.uaword	0xdfd1
	.uaword	.LLST199
	.uleb128 0x41
	.uaword	.LASF84
	.byte	0x1
	.uahalf	0x2d6
	.uaword	0xe194
	.uaword	.LLST200
	.uleb128 0x42
	.string	"status"
	.byte	0x1
	.uahalf	0x2d8
	.uaword	0xa72d
	.byte	0
	.uleb128 0x46
	.string	"vadcSFR"
	.byte	0x1
	.uahalf	0x2d9
	.uaword	0x88b7
	.uaword	.LLST201
	.uleb128 0x44
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0x2db
	.uaword	0x174
	.uaword	.LLST202
	.uleb128 0x44
	.uaword	.LASF81
	.byte	0x1
	.uahalf	0x2dc
	.uaword	0x117
	.uaword	.LLST203
	.uleb128 0x46
	.string	"groupNum"
	.byte	0x1
	.uahalf	0x2dc
	.uaword	0x117
	.uaword	.LLST204
	.uleb128 0x3d
	.uaword	0xc9ff
	.uaword	.LBB524
	.uaword	.Ldebug_ranges0+0x558
	.byte	0x1
	.uahalf	0x2df
	.uaword	0xe0ad
	.uleb128 0x30
	.uaword	0xca1e
	.uaword	.LLST205
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x570
	.uleb128 0x35
	.uaword	0xca2a
	.uaword	.LLST206
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0xca3a
	.uaword	.LBB528
	.uaword	.Ldebug_ranges0+0x588
	.byte	0x1
	.uahalf	0x2f5
	.uaword	0xe0db
	.uleb128 0x30
	.uaword	0xca78
	.uaword	.LLST207
	.uleb128 0x30
	.uaword	0xca6c
	.uaword	.LLST208
	.uleb128 0x32
	.uaword	0xca60
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x3d
	.uaword	0xca85
	.uaword	.LBB531
	.uaword	.Ldebug_ranges0+0x5a0
	.byte	0x1
	.uahalf	0x2f7
	.uaword	0xe173
	.uleb128 0x30
	.uaword	0xcacf
	.uaword	.LLST209
	.uleb128 0x30
	.uaword	0xcac3
	.uaword	.LLST210
	.uleb128 0x30
	.uaword	0xcab7
	.uaword	.LLST211
	.uleb128 0x32
	.uaword	0xcaab
	.byte	0x1
	.byte	0x6f
	.uleb128 0x4b
	.uaword	0xb332
	.uaword	.LBB533
	.uaword	.Ldebug_ranges0+0x5b8
	.byte	0x3
	.uahalf	0x901
	.uleb128 0x30
	.uaword	0xb368
	.uaword	.LLST209
	.uleb128 0x30
	.uaword	0xb35c
	.uaword	.LLST210
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x5d0
	.uleb128 0x35
	.uaword	0xb374
	.uaword	.LLST214
	.uleb128 0x4b
	.uaword	0xb2a8
	.uaword	.LBB535
	.uaword	.Ldebug_ranges0+0x5e8
	.byte	0x3
	.uahalf	0x6b7
	.uleb128 0x4c
	.uaword	0xb2c5
	.byte	0xff
	.uleb128 0x30
	.uaword	0xb2bc
	.uaword	.LLST215
	.uleb128 0x39
	.uaword	.Ldebug_ranges0+0x600
	.uleb128 0x35
	.uaword	0xb2ce
	.uaword	.LLST216
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0xc45b
	.uaword	.LBB544
	.uaword	.Ldebug_ranges0+0x618
	.byte	0x1
	.uahalf	0x301
	.uleb128 0x4c
	.uaword	0xc491
	.byte	0x3
	.uleb128 0x30
	.uaword	0xc485
	.uaword	.LLST217
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xe19a
	.uleb128 0x1d
	.uaword	0xb063
	.uleb128 0x48
	.byte	0x1
	.string	"IfxVadc_Adc_initModuleConfig"
	.byte	0x1
	.uahalf	0x30d
	.byte	0x1
	.uaword	.LFB364
	.uaword	.LFE364
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe1f2
	.uleb128 0x41
	.uaword	.LASF84
	.byte	0x1
	.uahalf	0x30d
	.uaword	0xe1f2
	.uaword	.LLST218
	.uleb128 0x41
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x88b7
	.uaword	.LLST219
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xb063
	.uleb128 0x4d
	.byte	0x1
	.string	"IfxVadc_Adc_initExternalMultiplexerModeConfig"
	.byte	0x1
	.uahalf	0x31d
	.byte	0x1
	.uaword	.LFB365
	.uaword	.LFE365
	.uaword	.LLST220
	.uaword	0xe27b
	.uleb128 0x4e
	.string	"emuxConfig"
	.byte	0x1
	.uahalf	0x31d
	.uaword	0xe27b
	.uaword	.LLST221
	.uleb128 0x49
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x88b7
	.byte	0x1
	.byte	0x65
	.uleb128 0x4f
	.string	"defaultConfig"
	.byte	0x1
	.uahalf	0x328
	.uaword	0xad8e
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xb15b
	.uleb128 0x4d
	.byte	0x1
	.string	"IfxVadc_Adc_initExternalMultiplexerMode"
	.byte	0x1
	.uahalf	0x332
	.byte	0x1
	.uaword	.LFB366
	.uaword	.LFE366
	.uaword	.LLST222
	.uaword	0xe399
	.uleb128 0x41
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x332
	.uaword	0x88b7
	.uaword	.LLST223
	.uleb128 0x4e
	.string	"emuxControl"
	.byte	0x1
	.uahalf	0x332
	.uaword	0xe399
	.uaword	.LLST224
	.uleb128 0x46
	.string	"count"
	.byte	0x1
	.uahalf	0x334
	.uaword	0x117
	.uaword	.LLST225
	.uleb128 0x43
	.uaword	.LASF77
	.byte	0x1
	.uahalf	0x335
	.uaword	0xac39
	.byte	0x1
	.byte	0x59
	.uleb128 0x3d
	.uaword	0xcadc
	.uaword	.LBB556
	.uaword	.Ldebug_ranges0+0x650
	.byte	0x1
	.uahalf	0x336
	.uaword	0xe337
	.uleb128 0x30
	.uaword	0xcb1f
	.uaword	.LLST226
	.uleb128 0x30
	.uaword	0xcb13
	.uaword	.LLST227
	.uleb128 0x30
	.uaword	0xcb07
	.uaword	.LLST228
	.byte	0
	.uleb128 0x4b
	.uaword	0xcb2c
	.uaword	.LBB561
	.uaword	.Ldebug_ranges0+0x670
	.byte	0x1
	.uahalf	0x33c
	.uleb128 0x30
	.uaword	0xcb63
	.uaword	.LLST229
	.uleb128 0x30
	.uaword	0xcb57
	.uaword	.LLST230
	.uleb128 0x30
	.uaword	0xcb4a
	.uaword	.LLST231
	.uleb128 0x4b
	.uaword	0xb2da
	.uaword	.LBB563
	.uaword	.Ldebug_ranges0+0x688
	.byte	0x3
	.uahalf	0x83d
	.uleb128 0x30
	.uaword	0xb323
	.uaword	.LLST232
	.uleb128 0x30
	.uaword	0xb30a
	.uaword	.LLST233
	.uleb128 0x30
	.uaword	0xb2fd
	.uaword	.LLST234
	.uleb128 0x30
	.uaword	0xb316
	.uaword	.LLST230
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uaword	0xe39f
	.uleb128 0x1d
	.uaword	0xb15b
	.uleb128 0xb
	.uaword	0xa9cd
	.uaword	0xe3ba
	.uleb128 0xc
	.uaword	0xec
	.byte	0x1
	.uleb128 0xc
	.uaword	0xec
	.byte	0x1
	.byte	0
	.uleb128 0x50
	.string	"IfxVadc_Adc_masterIndex"
	.byte	0x1
	.byte	0x3c
	.uaword	0xe3df
	.byte	0x5
	.byte	0x3
	.uaword	IfxVadc_Adc_masterIndex
	.uleb128 0x1d
	.uaword	0xe3a4
	.uleb128 0x51
	.string	"Assert_verboseLevel"
	.byte	0xf
	.byte	0x7b
	.uaword	0x166
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
	.uleb128 0x5
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL3
	.uaword	.LFE354
	.uahalf	0x3
	.byte	0x78
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7-1
	.uaword	.LFE355
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL7-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7-1
	.uaword	.LFE355
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9-1
	.uaword	.LFE355
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24-1
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL24-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL24-1
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL12
	.uaword	.LVL24-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL33
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL35
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL19
	.uaword	.LVL24-1
	.uahalf	0x5
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL24-1
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL24
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL37
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL44
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL42
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL11
	.uaword	.LVL24-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 8
	.uaword	.LVL33
	.uaword	.LVL37-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL13
	.uaword	.LVL24-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL33
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL13
	.uaword	.LVL24-1
	.uahalf	0x5
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL24-1
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL16
	.uaword	.LVL24-1
	.uahalf	0x5
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL24-1
	.uaword	.LFE356
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL20
	.uaword	.LVL24-1
	.uahalf	0x5
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	.LVL24-1
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL26
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL33
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL39
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LFB357
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE357
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL46
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49-1
	.uaword	.LFE357
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x4
	.byte	0x7f
	.sleb128 -96
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x5
	.byte	0x84
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL51
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL54-1
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL56
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LFE358
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x84
	.sleb128 4
	.uaword	.LVL53
	.uaword	.LVL54-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 4
	.uaword	.LVL54-1
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL53
	.uaword	.LVL54-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	.LVL54-1
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL54
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL56
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LFE358
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL57
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL57
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LFE358
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x3
	.byte	0x73
	.sleb128 15
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x7f
	.sleb128 15
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL69
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL81
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL70
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL81
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL71
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL81
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL72
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL73
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x8d
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x3
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL82
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL83
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL84
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL85
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL90
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL91
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL92
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL93
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL106
	.uaword	.LFE358
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL97
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL98
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL99
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL100
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL107
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL111
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL107
	.uaword	.LVL112-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL112-1
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL110
	.uaword	.LVL112-1
	.uahalf	0x5
	.byte	0x85
	.sleb128 56
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL112-1
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL110
	.uaword	.LVL112-1
	.uahalf	0x2
	.byte	0x85
	.sleb128 24
	.uaword	.LVL112-1
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL108
	.uaword	.LVL112-1
	.uahalf	0x2
	.byte	0x85
	.sleb128 56
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL109
	.uaword	.LVL112-1
	.uahalf	0x2
	.byte	0x85
	.sleb128 56
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL112
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL112
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL113
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL113
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL114
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 40
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL114
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL115
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 40
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL115
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL116
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL116
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL117
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL117
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL118
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 52
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL118
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL119
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL119
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL120
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL120
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL121
	.uaword	.LVL122-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 48
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL121
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL123
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL126
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL129
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL144
	.uaword	.LFE359
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL131
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL131
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL132
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL132
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL132
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL141
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL136
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL137
	.uaword	.LVL144
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL137
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL139
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL140
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL140
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL140
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x2
	.byte	0x8f
	.sleb128 36
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL146
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL146
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL151-1
	.uaword	.LFE361
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL147
	.uaword	.LVL151-1
	.uahalf	0x3
	.byte	0x85
	.sleb128 0
	.byte	0x6
	.uaword	.LVL151-1
	.uaword	.LFE361
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL149
	.uaword	.LVL151-1
	.uahalf	0x2
	.byte	0x85
	.sleb128 4
	.uaword	.LVL151-1
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL161
	.uaword	.LFE361
	.uahalf	0x3
	.byte	0x79
	.sleb128 -16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL152
	.uaword	.LVL153-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL153-1
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL178
	.uaword	.LFE361
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL160
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL176
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL154
	.uaword	.LVL157
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL154
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL155
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL155
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL157
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL179
	.uaword	.LFE361
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL157
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL179
	.uaword	.LFE361
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL158
	.uaword	.LVL160-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 116
	.uaword	.LVL179
	.uaword	.LFE361
	.uahalf	0x3
	.byte	0x8f
	.sleb128 116
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL158
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL179
	.uaword	.LFE361
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL159
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL160
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	.LVL168
	.uaword	.LVL177-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL160
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL160
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL162
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL170
	.uaword	.LVL177-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL162
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL162
	.uaword	.LVL170
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL178
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL162
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL165
	.uaword	.LVL166
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL172
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x3
	.byte	0x78
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL165
	.uaword	.LVL178
	.uahalf	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL165
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL166
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL175
	.uaword	.LVL177-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL179
	.uaword	.LVL184
	.uahalf	0x4
	.byte	0x8f
	.sleb128 84
	.byte	0x9f
	.uaword	.LVL198
	.uaword	.LVL205
	.uahalf	0x4
	.byte	0x8f
	.sleb128 84
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x3
	.byte	0x8f
	.sleb128 96
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x3
	.byte	0x8f
	.sleb128 88
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL181
	.uaword	.LVL182
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL180
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL182
	.uaword	.LVL184
	.uahalf	0x8
	.byte	0x8f
	.sleb128 84
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL182
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL198
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL200
	.uaword	.LVL205
	.uahalf	0x3
	.byte	0x8f
	.sleb128 92
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL200
	.uaword	.LVL205
	.uahalf	0x3
	.byte	0x8f
	.sleb128 100
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL200
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL202
	.uaword	.LVL205
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL202
	.uaword	.LVL205
	.uahalf	0x3
	.byte	0x8f
	.sleb128 88
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL202
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL203
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL184
	.uaword	.LVL191
	.uahalf	0x3
	.byte	0x8f
	.sleb128 28
	.byte	0x9f
	.uaword	.LVL212
	.uaword	.LFE361
	.uahalf	0x3
	.byte	0x8f
	.sleb128 28
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x2
	.byte	0x8f
	.sleb128 40
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x2
	.byte	0x8f
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL188
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL187
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL189
	.uaword	.LVL191
	.uahalf	0x7
	.byte	0x8f
	.sleb128 28
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL189
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL213
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL217
	.uaword	.LVL218
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL191
	.uaword	.LVL198
	.uahalf	0x3
	.byte	0x8f
	.sleb128 56
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL212
	.uahalf	0x3
	.byte	0x8f
	.sleb128 56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x3
	.byte	0x8f
	.sleb128 68
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x8f
	.sleb128 60
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL194
	.uaword	.LVL197
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL196
	.uaword	.LVL198
	.uahalf	0x7
	.byte	0x8f
	.sleb128 56
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL196
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL205
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL207
	.uaword	.LVL212
	.uahalf	0x3
	.byte	0x8f
	.sleb128 64
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL207
	.uaword	.LVL212
	.uahalf	0x3
	.byte	0x8f
	.sleb128 72
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL207
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL206
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL209
	.uaword	.LVL212
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL209
	.uaword	.LVL212
	.uahalf	0x2
	.byte	0x8f
	.sleb128 60
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL209
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL220
	.uaword	.LVL223-1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL220
	.uaword	.LVL223-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL223-1
	.uaword	.LFE363
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL221
	.uaword	.LVL223-1
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL223-1
	.uaword	.LFE363
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL228
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL228
	.uaword	.LVL235
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL235
	.uaword	.LVL243
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LFE363
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL245
	.uaword	.LVL247
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL247
	.uaword	.LVL249
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL249
	.uaword	.LFE363
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL222
	.uaword	.LVL223-1
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	.LVL223-1
	.uaword	.LFE363
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL224
	.uaword	.LVL225-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL225-1
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL226
	.uaword	.LVL227-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL228
	.uaword	.LVL235
	.uahalf	0x2
	.byte	0x8c
	.sleb128 8
	.uaword	.LVL235
	.uaword	.LVL246-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL228
	.uaword	.LVL235
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL235
	.uaword	.LFE363
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL229
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x8c
	.sleb128 4
	.uaword	.LVL237
	.uaword	.LVL246-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL229
	.uaword	.LVL238
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL229
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL237
	.uaword	.LFE363
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST214:
	.uaword	.LVL230
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST215:
	.uaword	.LVL232
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST216:
	.uaword	.LVL233
	.uaword	.LVL236
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL242
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL246
	.uaword	.LVL248
	.uahalf	0x4
	.byte	0x8f
	.sleb128 1152
	.byte	0x9f
	.uaword	.LVL248
	.uaword	.LFE363
	.uahalf	0x4
	.byte	0x8f
	.sleb128 2176
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST218:
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL251
	.uaword	.LFE364
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST219:
	.uaword	.LVL250
	.uaword	.LVL252-1
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST220:
	.uaword	.LFB365
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE365
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST221:
	.uaword	.LVL253
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x3
	.byte	0x84
	.sleb128 -32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST222:
	.uaword	.LFB366
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE366
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST223:
	.uaword	.LVL256
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL258
	.uaword	.LFE366
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST224:
	.uaword	.LVL256
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL258
	.uaword	.LFE366
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST225:
	.uaword	.LVL256
	.uaword	.LVL258
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL262
	.uaword	.LFE366
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST226:
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x2
	.byte	0x85
	.sleb128 20
	.uaword	.LVL262
	.uaword	.LFE366
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST227:
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x2
	.byte	0x85
	.sleb128 28
	.uaword	.LVL262
	.uaword	.LVL263
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL263
	.uaword	.LFE366
	.uahalf	0x2
	.byte	0x8f
	.sleb128 28
	.uaword	0
	.uaword	0
.LLST228:
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL258
	.uaword	.LFE366
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST229:
	.uaword	.LVL259
	.uaword	.LVL260-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 48
	.uaword	.LVL260-1
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST230:
	.uaword	.LVL259
	.uaword	.LVL260-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 44
	.uaword	0
	.uaword	0
.LLST231:
	.uaword	.LVL259
	.uaword	.LVL260-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 -4
	.uaword	.LVL260-1
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST232:
	.uaword	.LVL259
	.uaword	.LVL260-1
	.uahalf	0x5
	.byte	0x8d
	.sleb128 -4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.uaword	0
	.uaword	0
.LLST233:
	.uaword	.LVL259
	.uaword	.LVL260-1
	.uahalf	0x5
	.byte	0x8d
	.sleb128 -4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uaword	0
	.uaword	0
.LLST234:
	.uaword	.LVL259
	.uaword	.LVL260-1
	.uahalf	0x5
	.byte	0x8d
	.sleb128 -4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB232
	.uaword	.LBE232
	.uaword	.LBB236
	.uaword	.LBE236
	.uaword	.LBB237
	.uaword	.LBE237
	.uaword	0
	.uaword	0
	.uaword	.LBB242
	.uaword	.LBE242
	.uaword	.LBB246
	.uaword	.LBE246
	.uaword	.LBB247
	.uaword	.LBE247
	.uaword	0
	.uaword	0
	.uaword	.LBB243
	.uaword	.LBE243
	.uaword	.LBB244
	.uaword	.LBE244
	.uaword	.LBB245
	.uaword	.LBE245
	.uaword	0
	.uaword	0
	.uaword	.LBB258
	.uaword	.LBE258
	.uaword	.LBB263
	.uaword	.LBE263
	.uaword	.LBB264
	.uaword	.LBE264
	.uaword	.LBB265
	.uaword	.LBE265
	.uaword	0
	.uaword	0
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	.LBB275
	.uaword	.LBE275
	.uaword	0
	.uaword	0
	.uaword	.LBB271
	.uaword	.LBE271
	.uaword	.LBB276
	.uaword	.LBE276
	.uaword	.LBB291
	.uaword	.LBE291
	.uaword	0
	.uaword	0
	.uaword	.LBB272
	.uaword	.LBE272
	.uaword	.LBB273
	.uaword	.LBE273
	.uaword	.LBB274
	.uaword	.LBE274
	.uaword	0
	.uaword	0
	.uaword	.LBB283
	.uaword	.LBE283
	.uaword	.LBB286
	.uaword	.LBE286
	.uaword	0
	.uaword	0
	.uaword	.LBB284
	.uaword	.LBE284
	.uaword	.LBB285
	.uaword	.LBE285
	.uaword	0
	.uaword	0
	.uaword	.LBB298
	.uaword	.LBE298
	.uaword	.LBB301
	.uaword	.LBE301
	.uaword	0
	.uaword	0
	.uaword	.LBB314
	.uaword	.LBE314
	.uaword	.LBB317
	.uaword	.LBE317
	.uaword	0
	.uaword	0
	.uaword	.LBB328
	.uaword	.LBE328
	.uaword	.LBB331
	.uaword	.LBE331
	.uaword	0
	.uaword	0
	.uaword	.LBB342
	.uaword	.LBE342
	.uaword	.LBB346
	.uaword	.LBE346
	.uaword	.LBB347
	.uaword	.LBE347
	.uaword	0
	.uaword	0
	.uaword	.LBB366
	.uaword	.LBE366
	.uaword	.LBB370
	.uaword	.LBE370
	.uaword	.LBB371
	.uaword	.LBE371
	.uaword	0
	.uaword	0
	.uaword	.LBB372
	.uaword	.LBE372
	.uaword	.LBB376
	.uaword	.LBE376
	.uaword	.LBB377
	.uaword	.LBE377
	.uaword	0
	.uaword	0
	.uaword	.LBB378
	.uaword	.LBE378
	.uaword	.LBB410
	.uaword	.LBE410
	.uaword	0
	.uaword	0
	.uaword	.LBB383
	.uaword	.LBE383
	.uaword	.LBB388
	.uaword	.LBE388
	.uaword	0
	.uaword	0
	.uaword	.LBB400
	.uaword	.LBE400
	.uaword	.LBB405
	.uaword	.LBE405
	.uaword	0
	.uaword	0
	.uaword	.LBB412
	.uaword	.LBE412
	.uaword	.LBB420
	.uaword	.LBE420
	.uaword	.LBB422
	.uaword	.LBE422
	.uaword	0
	.uaword	0
	.uaword	.LBB416
	.uaword	.LBE416
	.uaword	.LBB421
	.uaword	.LBE421
	.uaword	.LBB423
	.uaword	.LBE423
	.uaword	0
	.uaword	0
	.uaword	.LBB428
	.uaword	.LBE428
	.uaword	.LBB432
	.uaword	.LBE432
	.uaword	.LBB433
	.uaword	.LBE433
	.uaword	0
	.uaword	0
	.uaword	.LBB434
	.uaword	.LBE434
	.uaword	.LBB450
	.uaword	.LBE450
	.uaword	0
	.uaword	0
	.uaword	.LBB437
	.uaword	.LBE437
	.uaword	.LBB451
	.uaword	.LBE451
	.uaword	.LBB452
	.uaword	.LBE452
	.uaword	.LBB453
	.uaword	.LBE453
	.uaword	0
	.uaword	0
	.uaword	.LBB439
	.uaword	.LBE439
	.uaword	.LBB446
	.uaword	.LBE446
	.uaword	0
	.uaword	0
	.uaword	.LBB440
	.uaword	.LBE440
	.uaword	.LBB445
	.uaword	.LBE445
	.uaword	0
	.uaword	0
	.uaword	.LBB441
	.uaword	.LBE441
	.uaword	.LBB444
	.uaword	.LBE444
	.uaword	0
	.uaword	0
	.uaword	.LBB442
	.uaword	.LBE442
	.uaword	.LBB443
	.uaword	.LBE443
	.uaword	0
	.uaword	0
	.uaword	.LBB454
	.uaword	.LBE454
	.uaword	.LBB521
	.uaword	.LBE521
	.uaword	0
	.uaword	0
	.uaword	.LBB455
	.uaword	.LBE455
	.uaword	.LBB459
	.uaword	.LBE459
	.uaword	.LBB460
	.uaword	.LBE460
	.uaword	0
	.uaword	0
	.uaword	.LBB456
	.uaword	.LBE456
	.uaword	.LBB457
	.uaword	.LBE457
	.uaword	.LBB458
	.uaword	.LBE458
	.uaword	0
	.uaword	0
	.uaword	.LBB465
	.uaword	.LBE465
	.uaword	.LBB469
	.uaword	.LBE469
	.uaword	.LBB470
	.uaword	.LBE470
	.uaword	0
	.uaword	0
	.uaword	.LBB466
	.uaword	.LBE466
	.uaword	.LBB467
	.uaword	.LBE467
	.uaword	.LBB468
	.uaword	.LBE468
	.uaword	0
	.uaword	0
	.uaword	.LBB471
	.uaword	.LBE471
	.uaword	.LBB474
	.uaword	.LBE474
	.uaword	0
	.uaword	0
	.uaword	.LBB472
	.uaword	.LBE472
	.uaword	.LBB473
	.uaword	.LBE473
	.uaword	0
	.uaword	0
	.uaword	.LBB475
	.uaword	.LBE475
	.uaword	.LBB523
	.uaword	.LBE523
	.uaword	0
	.uaword	0
	.uaword	.LBB478
	.uaword	.LBE478
	.uaword	.LBB482
	.uaword	.LBE482
	.uaword	.LBB483
	.uaword	.LBE483
	.uaword	0
	.uaword	0
	.uaword	.LBB479
	.uaword	.LBE479
	.uaword	.LBB480
	.uaword	.LBE480
	.uaword	.LBB481
	.uaword	.LBE481
	.uaword	0
	.uaword	0
	.uaword	.LBB488
	.uaword	.LBE488
	.uaword	.LBB492
	.uaword	.LBE492
	.uaword	.LBB493
	.uaword	.LBE493
	.uaword	0
	.uaword	0
	.uaword	.LBB489
	.uaword	.LBE489
	.uaword	.LBB490
	.uaword	.LBE490
	.uaword	.LBB491
	.uaword	.LBE491
	.uaword	0
	.uaword	0
	.uaword	.LBB494
	.uaword	.LBE494
	.uaword	.LBB497
	.uaword	.LBE497
	.uaword	0
	.uaword	0
	.uaword	.LBB495
	.uaword	.LBE495
	.uaword	.LBB496
	.uaword	.LBE496
	.uaword	0
	.uaword	0
	.uaword	.LBB498
	.uaword	.LBE498
	.uaword	.LBB522
	.uaword	.LBE522
	.uaword	0
	.uaword	0
	.uaword	.LBB501
	.uaword	.LBE501
	.uaword	.LBB505
	.uaword	.LBE505
	.uaword	.LBB506
	.uaword	.LBE506
	.uaword	0
	.uaword	0
	.uaword	.LBB502
	.uaword	.LBE502
	.uaword	.LBB503
	.uaword	.LBE503
	.uaword	.LBB504
	.uaword	.LBE504
	.uaword	0
	.uaword	0
	.uaword	.LBB511
	.uaword	.LBE511
	.uaword	.LBB515
	.uaword	.LBE515
	.uaword	.LBB516
	.uaword	.LBE516
	.uaword	0
	.uaword	0
	.uaword	.LBB512
	.uaword	.LBE512
	.uaword	.LBB513
	.uaword	.LBE513
	.uaword	.LBB514
	.uaword	.LBE514
	.uaword	0
	.uaword	0
	.uaword	.LBB517
	.uaword	.LBE517
	.uaword	.LBB520
	.uaword	.LBE520
	.uaword	0
	.uaword	0
	.uaword	.LBB518
	.uaword	.LBE518
	.uaword	.LBB519
	.uaword	.LBE519
	.uaword	0
	.uaword	0
	.uaword	.LBB524
	.uaword	.LBE524
	.uaword	.LBB527
	.uaword	.LBE527
	.uaword	0
	.uaword	0
	.uaword	.LBB525
	.uaword	.LBE525
	.uaword	.LBB526
	.uaword	.LBE526
	.uaword	0
	.uaword	0
	.uaword	.LBB528
	.uaword	.LBE528
	.uaword	.LBB542
	.uaword	.LBE542
	.uaword	0
	.uaword	0
	.uaword	.LBB531
	.uaword	.LBE531
	.uaword	.LBB543
	.uaword	.LBE543
	.uaword	0
	.uaword	0
	.uaword	.LBB533
	.uaword	.LBE533
	.uaword	.LBB540
	.uaword	.LBE540
	.uaword	0
	.uaword	0
	.uaword	.LBB534
	.uaword	.LBE534
	.uaword	.LBB539
	.uaword	.LBE539
	.uaword	0
	.uaword	0
	.uaword	.LBB535
	.uaword	.LBE535
	.uaword	.LBB538
	.uaword	.LBE538
	.uaword	0
	.uaword	0
	.uaword	.LBB536
	.uaword	.LBE536
	.uaword	.LBB537
	.uaword	.LBE537
	.uaword	0
	.uaword	0
	.uaword	.LBB544
	.uaword	.LBE544
	.uaword	.LBB551
	.uaword	.LBE551
	.uaword	.LBB552
	.uaword	.LBE552
	.uaword	.LBB553
	.uaword	.LBE553
	.uaword	.LBB554
	.uaword	.LBE554
	.uaword	.LBB555
	.uaword	.LBE555
	.uaword	0
	.uaword	0
	.uaword	.LBB556
	.uaword	.LBE556
	.uaword	.LBB560
	.uaword	.LBE560
	.uaword	.LBB569
	.uaword	.LBE569
	.uaword	0
	.uaword	0
	.uaword	.LBB561
	.uaword	.LBE561
	.uaword	.LBB568
	.uaword	.LBE568
	.uaword	0
	.uaword	0
	.uaword	.LBB563
	.uaword	.LBE563
	.uaword	.LBB566
	.uaword	.LBE566
	.uaword	0
	.uaword	0
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF64:
	.string	"rightAlignedStorage"
.LASF75:
	.string	"analogFrequency"
.LASF48:
	.string	"triggerSource"
.LASF47:
	.string	"gatingSource"
.LASF67:
	.string	"channelId"
.LASF71:
	.string	"lowerBoundary"
.LASF32:
	.string	"EXTR"
.LASF44:
	.string	"pinIndex"
.LASF57:
	.string	"group"
.LASF80:
	.string	"serviceRequestNodePtr"
.LASF15:
	.string	"REQGT"
.LASF52:
	.string	"triggerConfig"
.LASF50:
	.string	"triggerMode"
.LASF34:
	.string	"CDSEL"
.LASF46:
	.string	"vadc"
.LASF53:
	.string	"requestSlotPrio"
.LASF73:
	.string	"boundaryMode"
.LASF77:
	.string	"vadcG"
.LASF68:
	.string	"inputClass"
.LASF16:
	.string	"reserved_10"
.LASF30:
	.string	"reserved_11"
.LASF1:
	.string	"reserved_12"
.LASF21:
	.string	"reserved_13"
.LASF23:
	.string	"reserved_16"
.LASF18:
	.string	"reserved_17"
.LASF9:
	.string	"XTMODE"
.LASF76:
	.string	"emuxInterface"
.LASF60:
	.string	"padDriver"
.LASF62:
	.string	"globalResultUsage"
.LASF59:
	.string	"outputMode"
.LASF41:
	.string	"MODNUMBER"
.LASF17:
	.string	"RPTDIS"
.LASF69:
	.string	"reference"
.LASF51:
	.string	"arbiterRoundLength"
.LASF5:
	.string	"reserved_20"
.LASF2:
	.string	"reserved_21"
.LASF28:
	.string	"reserved_22"
.LASF12:
	.string	"reserved_24"
.LASF40:
	.string	"reserved_25"
.LASF22:
	.string	"reserved_26"
.LASF37:
	.string	"reserved_27"
.LASF24:
	.string	"reserved_28"
.LASF25:
	.string	"reserved_29"
.LASF31:
	.string	"REQCHNR"
.LASF11:
	.string	"GTLVL"
.LASF70:
	.string	"resultRegister"
.LASF36:
	.string	"reserved_0"
.LASF39:
	.string	"reserved_1"
.LASF19:
	.string	"reserved_2"
.LASF29:
	.string	"reserved_3"
.LASF4:
	.string	"reserved_4"
.LASF20:
	.string	"reserved_5"
.LASF14:
	.string	"reserved_6"
.LASF0:
	.string	"reserved_8"
.LASF33:
	.string	"reserved_9"
.LASF43:
	.string	"reserved_C"
.LASF3:
	.string	"reserved_31"
.LASF55:
	.string	"sampleTime"
.LASF82:
	.string	"masterIndex"
.LASF74:
	.string	"limitCheck"
.LASF72:
	.string	"upperBoundary"
.LASF6:
	.string	"SRCRESREG"
.LASF45:
	.string	"module"
.LASF8:
	.string	"XTLVL"
.LASF83:
	.string	"groupIndex"
.LASF61:
	.string	"channel"
.LASF10:
	.string	"GTSEL"
.LASF7:
	.string	"XTSEL"
.LASF26:
	.string	"BOUNDARY0"
.LASF27:
	.string	"BOUNDARY1"
.LASF54:
	.string	"requestSlotStartMode"
.LASF84:
	.string	"config"
.LASF56:
	.string	"resolution"
.LASF35:
	.string	"reserved_15"
.LASF66:
	.string	"channelSrcNr"
.LASF42:
	.string	"reserved_144"
.LASF78:
	.string	"channelIndex"
.LASF13:
	.string	"ENSI"
.LASF65:
	.string	"resultSrcNr"
.LASF58:
	.string	"groupId"
.LASF49:
	.string	"gatingMode"
.LASF38:
	.string	"RESULT"
.LASF63:
	.string	"synchonize"
.LASF81:
	.string	"inputClassNum"
.LASF79:
	.string	"tempChctr"
	.extern	IfxVadc_configExternalMultiplexerMode,STT_FUNC,0
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	IfxScuCcu_getSpbFrequency,STT_FUNC,0
	.extern	IfxVadc_getAdcDigitalFrequency,STT_FUNC,0
	.extern	IfxVadc_startupCalibration,STT_FUNC,0
	.extern	IfxVadc_initializeFAdcD,STT_FUNC,0
	.extern	IfxVadc_initializeFAdcI,STT_FUNC,0
	.extern	IfxVadc_selectPowerSupplyVoltage,STT_FUNC,0
	.extern	IfxVadc_disablePostCalibration,STT_FUNC,0
	.extern	IfxVadc_setArbiterPriority,STT_FUNC,0
	.extern	IfxVadc_getChannelConversionTime,STT_FUNC,0
	.extern	IfxVadc_getAdcModuleFrequency,STT_FUNC,0
	.extern	IfxVadc_getAdcAnalogFrequency,STT_FUNC,0
	.extern	IfxVadc_getSrcAddress,STT_FUNC,0
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.extern	IfxVadc_disableAccess,STT_FUNC,0
	.extern	IfxVadc_enableAccess,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
