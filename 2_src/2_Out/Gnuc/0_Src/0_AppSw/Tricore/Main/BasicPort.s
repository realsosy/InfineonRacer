	.file	"BasicPort.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.BasicPort_init,"ax",@progbits
	.align 1
	.global	BasicPort_init
	.type	BasicPort_init, @function
BasicPort_init:
.LFB383:
	.file 1 "0_Src/0_AppSw/Tricore/Main/BasicPort.c"
	.loc 1 83 0
.LBB116:
.LBB117:
.LBB118:
.LBB119:
.LBB120:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
	.loc 2 572 0
#APP
	# 572 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d15, LO:0xFE2C
	# 0 "" 2
.LVL0:
#NO_APP
.LBE120:
	.loc 2 573 0
	mov.u	%d8, 32768
	and	%d8, %d15
.LBE119:
.LBE118:
	.loc 2 581 0
#APP
	# 581 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	disable
	# 0 "" 2
#NO_APP
.LBB121:
.LBB122:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 1369 0
#APP
	# 1369 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	nop
	# 0 "" 2
#NO_APP
.LBE122:
.LBE121:
.LBE117:
.LBE116:
	.loc 1 87 0
	mov	%d15, 1
.LVL1:
	movh.a	%a14, hi:IR_Port
	.loc 1 92 0
	movh.a	%a13, hi:IfxPort_P13_1
	.loc 1 87 0
	st.b	[%a14] lo:IR_Port, %d15
	.loc 1 92 0
	lea	%a12, [%a13] lo:IfxPort_P13_1
	.loc 1 87 0
	lea	%a15, [%a14] lo:IR_Port
	.loc 1 92 0
	ld.a	%a4, [%a13] lo:IfxPort_P13_1
	.loc 1 88 0
	st.b	[%a15] 1, %d15
	.loc 1 92 0
	ld.bu	%d4, [%a12] 4
	.loc 1 89 0
	st.b	[%a15] 2, %d15
	.loc 1 92 0
	mov	%d5, 128
	call	IfxPort_setPinMode
	.loc 1 93 0
	ld.a	%a4, [%a13] lo:IfxPort_P13_1
	ld.bu	%d4, [%a12] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
	.loc 1 94 0
	ld.bu	%d2, [%a14] lo:IR_Port
	ld.a	%a2, [%a13] lo:IfxPort_P13_1
.LVL2:
	ld.bu	%d15, [%a12] 4
.LVL3:
.LBB123:
.LBB124:
	.loc 1 68 0
	jz	%d2, .L2
.LVL4:
.LBB125:
.LBB126:
	.file 4 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
	.loc 4 529 0
	mov	%d2, 1
.LVL5:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL6:
.L3:
.LBE126:
.LBE125:
.LBE124:
.LBE123:
	.loc 1 96 0
	movh.a	%a13, hi:IfxPort_P13_2
	lea	%a12, [%a13] lo:IfxPort_P13_2
.LVL7:
	ld.a	%a4, [%a13] lo:IfxPort_P13_2
	ld.bu	%d4, [%a12] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL8:
	.loc 1 97 0
	ld.a	%a4, [%a13] lo:IfxPort_P13_2
	ld.bu	%d4, [%a12] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
	.loc 1 98 0
	ld.bu	%d2, [%a15] 1
	ld.a	%a2, [%a13] lo:IfxPort_P13_2
.LVL9:
	ld.bu	%d15, [%a12] 4
.LVL10:
.LBB130:
.LBB131:
	.loc 1 68 0
	jz	%d2, .L4
.LVL11:
.LBB132:
.LBB133:
	.loc 4 529 0
	mov	%d2, 1
.LVL12:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL13:
.L5:
.LBE133:
.LBE132:
.LBE131:
.LBE130:
	.loc 1 100 0
	movh.a	%a13, hi:IfxPort_P13_3
	lea	%a12, [%a13] lo:IfxPort_P13_3
.LVL14:
	ld.a	%a4, [%a13] lo:IfxPort_P13_3
	ld.bu	%d4, [%a12] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL15:
	.loc 1 101 0
	ld.a	%a4, [%a13] lo:IfxPort_P13_3
	ld.bu	%d4, [%a12] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
	.loc 1 102 0
	ld.bu	%d2, [%a15] 2
	ld.a	%a2, [%a13] lo:IfxPort_P13_3
.LVL16:
	ld.bu	%d15, [%a12] 4
.LVL17:
.LBB137:
.LBB138:
	.loc 1 68 0
	jz	%d2, .L6
.LVL18:
.LBB139:
.LBB140:
	.loc 4 529 0
	mov	%d2, 1
.LVL19:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL20:
.L7:
.LBE140:
.LBE139:
.LBE138:
.LBE137:
	.loc 1 105 0
	movh.a	%a13, hi:IfxPort_P02_0
	lea	%a12, [%a13] lo:IfxPort_P02_0
.LVL21:
	ld.a	%a4, [%a13] lo:IfxPort_P02_0
	ld.bu	%d4, [%a12] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL22:
	.loc 1 106 0
	ld.a	%a4, [%a13] lo:IfxPort_P02_0
	ld.bu	%d4, [%a12] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
	.loc 1 107 0
	ld.bu	%d2, [%a15] 5
	ld.a	%a2, [%a13] lo:IfxPort_P02_0
.LVL23:
	ld.bu	%d15, [%a12] 4
.LVL24:
.LBB144:
.LBB145:
	.loc 1 68 0
	jz	%d2, .L8
.LVL25:
.LBB146:
.LBB147:
	.loc 4 529 0
	mov	%d2, 1
.LVL26:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL27:
.L9:
.LBE147:
.LBE146:
.LBE145:
.LBE144:
	.loc 1 109 0
	movh.a	%a13, hi:IfxPort_P00_2
	lea	%a12, [%a13] lo:IfxPort_P00_2
.LVL28:
	ld.a	%a4, [%a13] lo:IfxPort_P00_2
	ld.bu	%d4, [%a12] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL29:
	.loc 1 110 0
	ld.a	%a4, [%a13] lo:IfxPort_P00_2
	ld.bu	%d4, [%a12] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
	.loc 1 111 0
	ld.bu	%d2, [%a15] 6
	ld.a	%a2, [%a13] lo:IfxPort_P00_2
.LVL30:
	ld.bu	%d15, [%a12] 4
.LVL31:
.LBB151:
.LBB152:
	.loc 1 68 0
	jz	%d2, .L10
.LVL32:
.LBB153:
.LBB154:
	.loc 4 529 0
	mov	%d2, 1
.LVL33:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL34:
.L11:
.LBE154:
.LBE153:
.LBE152:
.LBE151:
	.loc 1 113 0
	movh.a	%a13, hi:IfxPort_P02_2
	lea	%a12, [%a13] lo:IfxPort_P02_2
.LVL35:
	ld.a	%a4, [%a13] lo:IfxPort_P02_2
	ld.bu	%d4, [%a12] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL36:
	.loc 1 114 0
	ld.a	%a4, [%a13] lo:IfxPort_P02_2
	ld.bu	%d4, [%a12] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
	.loc 1 115 0
	ld.bu	%d2, [%a15] 7
	ld.a	%a2, [%a13] lo:IfxPort_P02_2
.LVL37:
	ld.bu	%d15, [%a12] 4
.LVL38:
.LBB158:
.LBB159:
	.loc 1 68 0
	jz	%d2, .L12
.LVL39:
.LBB160:
.LBB161:
	.loc 4 529 0
	mov	%d2, 1
.LVL40:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL41:
.L13:
.LBE161:
.LBE160:
.LBE159:
.LBE158:
	.loc 1 117 0
	movh.a	%a13, hi:IfxPort_P33_5
	lea	%a12, [%a13] lo:IfxPort_P33_5
.LVL42:
	ld.a	%a4, [%a13] lo:IfxPort_P33_5
	ld.bu	%d4, [%a12] 4
	mov	%d5, 128
	call	IfxPort_setPinMode
.LVL43:
	.loc 1 118 0
	ld.a	%a4, [%a13] lo:IfxPort_P33_5
	ld.bu	%d4, [%a12] 4
	mov	%d5, 0
	call	IfxPort_setPinPadDriver
	.loc 1 119 0
	ld.bu	%d2, [%a15] 8
	ld.a	%a2, [%a13] lo:IfxPort_P33_5
.LVL44:
	ld.bu	%d15, [%a12] 4
.LVL45:
.LBB165:
.LBB166:
	.loc 1 68 0
	jz	%d2, .L14
.LVL46:
.LBB167:
.LBB168:
	.loc 4 529 0
	mov	%d2, 1
.LVL47:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL48:
.L15:
.LBE168:
.LBE167:
.LBE166:
.LBE165:
	.loc 1 122 0
	movh.a	%a13, hi:IfxPort_P00_0
	mov.d	%d15, %a13
	addi	%d9, %d15, lo:IfxPort_P00_0
.LBB172:
.LBB173:
	.loc 4 517 0
	mov.a	%a2, %d9
	ld.a	%a4, [%a13] lo:IfxPort_P00_0
	ld.bu	%d4, [%a2] 4
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL49:
.LBE173:
.LBE172:
	.loc 1 123 0
	movh.a	%a12, hi:IfxPort_P00_1
	lea	%a14, [%a12] lo:IfxPort_P00_1
.LBB174:
.LBB175:
	.loc 4 517 0
	ld.a	%a4, [%a12] lo:IfxPort_P00_1
	ld.bu	%d4, [%a14] 4
	mov	%d5, 0
	call	IfxPort_setPinMode
.LVL50:
.LBE175:
.LBE174:
	.loc 1 125 0
	ld.a	%a2, [%a13] lo:IfxPort_P00_0
.LVL51:
.LBB176:
.LBB177:
	.loc 4 493 0
	ld.w	%d2, [%a2] 36
	mov.a	%a2, %d9
	ld.bu	%d15, [%a2] 4
.LBE177:
.LBE176:
	.loc 1 126 0
	ld.a	%a2, [%a12] lo:IfxPort_P00_1
.LVL52:
.LBB179:
.LBB178:
	.loc 4 493 0
	extr.u	%d15, %d2, %d15, 1
.LBE178:
.LBE179:
	.loc 1 125 0
	st.b	[%a15] 3, %d15
.LBB180:
.LBB181:
	.loc 4 493 0
	ld.w	%d2, [%a2] 36
	ld.bu	%d15, [%a14] 4
	extr.u	%d15, %d2, %d15, 1
.LBE181:
.LBE180:
	.loc 1 126 0
	st.b	[%a15] 4, %d15
.LVL53:
.LBB182:
.LBB183:
	.loc 2 794 0
	jz	%d8, .L1
	.loc 2 796 0
#APP
	# 796 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	enable
	# 0 "" 2
#NO_APP
.L1:
	ret
.LVL54:
.L14:
.LBE183:
.LBE182:
.LBB184:
.LBB171:
.LBB169:
.LBB170:
	.loc 4 529 0
	movh	%d2, 1
.LVL55:
	sh	%d15, %d2, %d15
.LVL56:
	st.w	[%a2] 4, %d15
	j	.L15
.LVL57:
.L12:
.LBE170:
.LBE169:
.LBE171:
.LBE184:
.LBB185:
.LBB164:
.LBB162:
.LBB163:
	movh	%d2, 1
.LVL58:
	sh	%d15, %d2, %d15
.LVL59:
	st.w	[%a2] 4, %d15
	j	.L13
.LVL60:
.L10:
.LBE163:
.LBE162:
.LBE164:
.LBE185:
.LBB186:
.LBB157:
.LBB155:
.LBB156:
	movh	%d2, 1
.LVL61:
	sh	%d15, %d2, %d15
.LVL62:
	st.w	[%a2] 4, %d15
	j	.L11
.LVL63:
.L8:
.LBE156:
.LBE155:
.LBE157:
.LBE186:
.LBB187:
.LBB150:
.LBB148:
.LBB149:
	movh	%d2, 1
.LVL64:
	sh	%d15, %d2, %d15
.LVL65:
	st.w	[%a2] 4, %d15
	j	.L9
.LVL66:
.L6:
.LBE149:
.LBE148:
.LBE150:
.LBE187:
.LBB188:
.LBB143:
.LBB141:
.LBB142:
	movh	%d2, 1
.LVL67:
	sh	%d15, %d2, %d15
.LVL68:
	st.w	[%a2] 4, %d15
	j	.L7
.LVL69:
.L4:
.LBE142:
.LBE141:
.LBE143:
.LBE188:
.LBB189:
.LBB136:
.LBB134:
.LBB135:
	movh	%d2, 1
.LVL70:
	sh	%d15, %d2, %d15
.LVL71:
	st.w	[%a2] 4, %d15
	j	.L5
.LVL72:
.L2:
.LBE135:
.LBE134:
.LBE136:
.LBE189:
.LBB190:
.LBB129:
.LBB127:
.LBB128:
	movh	%d2, 1
.LVL73:
	sh	%d15, %d2, %d15
.LVL74:
	st.w	[%a2] 4, %d15
	j	.L3
.LBE128:
.LBE127:
.LBE129:
.LBE190:
.LFE383:
	.size	BasicPort_init, .-BasicPort_init
.section .text.BasicPort_run,"ax",@progbits
	.align 1
	.global	BasicPort_run
	.type	BasicPort_run, @function
BasicPort_run:
.LFB384:
	.loc 1 138 0
	.loc 1 140 0
	movh.a	%a2, hi:IfxPort_P13_1
	lea	%a15, [%a2] lo:IfxPort_P13_1
	ld.bu	%d15, [%a15] 4
	movh.a	%a15, hi:IR_Port
	ld.bu	%d2, [%a15] lo:IR_Port
	ld.a	%a2, [%a2] lo:IfxPort_P13_1
.LVL75:
.LBB191:
.LBB192:
	.loc 1 68 0
	jz	%d2, .L19
.LVL76:
.LBB193:
.LBB194:
	.loc 4 529 0
	mov	%d2, 1
.LVL77:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL78:
.L20:
.LBE194:
.LBE193:
.LBE192:
.LBE191:
	.loc 1 141 0
	lea	%a15, [%a15] lo:IR_Port
	movh.a	%a2, hi:IfxPort_P13_2
	ld.bu	%d2, [%a15] 1
	lea	%a3, [%a2] lo:IfxPort_P13_2
	ld.bu	%d15, [%a3] 4
	ld.a	%a2, [%a2] lo:IfxPort_P13_2
.LVL79:
.LBB198:
.LBB199:
	.loc 1 68 0
	jz	%d2, .L21
.LVL80:
.LBB200:
.LBB201:
	.loc 4 529 0
	mov	%d2, 1
.LVL81:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL82:
.L22:
.LBE201:
.LBE200:
.LBE199:
.LBE198:
	.loc 1 142 0
	movh.a	%a2, hi:IfxPort_P13_3
	ld.bu	%d2, [%a15] 2
	lea	%a3, [%a2] lo:IfxPort_P13_3
.LVL83:
	ld.bu	%d15, [%a3] 4
	ld.a	%a2, [%a2] lo:IfxPort_P13_3
.LVL84:
.LBB205:
.LBB206:
	.loc 1 68 0
	jz	%d2, .L23
.LVL85:
.LBB207:
.LBB208:
	.loc 4 529 0
	mov	%d2, 1
.LVL86:
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
.LVL87:
.L24:
.LBE208:
.LBE207:
.LBE206:
.LBE205:
	.loc 1 145 0
	movh.a	%a2, hi:IfxPort_P02_0
	lea	%a3, [%a2] lo:IfxPort_P02_0
.LVL88:
	ld.bu	%d15, [%a3] 4
	movh.a	%a3, hi:IR_MotorEn
.LBB212:
.LBB213:
	.loc 1 68 0
	ld.bu	%d2, [%a3] lo:IR_MotorEn
.LBE213:
.LBE212:
	.loc 1 145 0
	ld.a	%a2, [%a2] lo:IfxPort_P02_0
.LVL89:
.LBB223:
.LBB220:
	.loc 1 68 0
	jz	%d2, .L25
.LVL90:
.LBB214:
.LBB215:
	.loc 4 529 0
	mov	%d2, 1
	sh	%d2, %d2, %d15
.LBE215:
.LBE214:
.LBE220:
.LBE223:
.LBB224:
.LBB225:
.LBB226:
	mov	%d15, 1
.LVL91:
.LBE226:
.LBE225:
.LBE224:
.LBB235:
.LBB221:
.LBB217:
.LBB216:
	st.w	[%a2] 4, %d2
.LBE216:
.LBE217:
.LBE221:
.LBE235:
	.loc 1 146 0
	movh.a	%a2, hi:IfxPort_P00_2
	lea	%a4, [%a2] lo:IfxPort_P00_2
.LBB236:
.LBB229:
.LBB227:
	.loc 4 529 0
	ld.bu	%d2, [%a4] 4
.LBE227:
.LBE229:
.LBE236:
	.loc 1 146 0
	ld.a	%a2, [%a2] lo:IfxPort_P00_2
.LVL92:
.LBB237:
.LBB230:
.LBB228:
	.loc 4 529 0
	sh	%d15, %d15, %d2
	st.w	[%a2] 4, %d15
.LVL93:
.L26:
.LBE228:
.LBE230:
.LBE237:
	.loc 1 147 0
	lea	%a3, [%a3] lo:IR_MotorEn
	movh.a	%a2, hi:IfxPort_P02_2
.LVL94:
.LBB238:
.LBB239:
	.loc 1 68 0
	ld.bu	%d2, [%a3] 1
.LBE239:
.LBE238:
	.loc 1 147 0
	lea	%a4, [%a2] lo:IfxPort_P02_2
	ld.bu	%d15, [%a4] 4
	ld.a	%a2, [%a2] lo:IfxPort_P02_2
.LVL95:
.LBB249:
.LBB246:
	.loc 1 68 0
	jz	%d2, .L27
.LVL96:
.LBB240:
.LBB241:
	.loc 4 529 0
	mov	%d2, 1
	sh	%d2, %d2, %d15
.LBE241:
.LBE240:
.LBE246:
.LBE249:
.LBB250:
.LBB251:
.LBB252:
	mov	%d15, 1
.LVL97:
.LBE252:
.LBE251:
.LBE250:
.LBB261:
.LBB247:
.LBB243:
.LBB242:
	st.w	[%a2] 4, %d2
.LBE242:
.LBE243:
.LBE247:
.LBE261:
	.loc 1 148 0
	movh.a	%a2, hi:IfxPort_P33_5
	lea	%a3, [%a2] lo:IfxPort_P33_5
.LBB262:
.LBB255:
.LBB253:
	.loc 4 529 0
	ld.bu	%d2, [%a3] 4
.LBE253:
.LBE255:
.LBE262:
	.loc 1 148 0
	ld.a	%a2, [%a2] lo:IfxPort_P33_5
.LVL98:
.LBB263:
.LBB256:
.LBB254:
	.loc 4 529 0
	sh	%d15, %d15, %d2
	st.w	[%a2] 4, %d15
.LVL99:
.L28:
.LBE254:
.LBE256:
.LBE263:
	.loc 1 151 0
	movh.a	%a2, hi:IfxPort_P00_0
.LVL100:
	lea	%a3, [%a2] lo:IfxPort_P00_0
	ld.a	%a2, [%a2] lo:IfxPort_P00_0
.LVL101:
.LBB264:
.LBB265:
	.loc 4 493 0
	ld.bu	%d15, [%a3] 4
	ld.w	%d2, [%a2] 36
.LBE265:
.LBE264:
	.loc 1 152 0
	movh.a	%a2, hi:IfxPort_P00_1
.LBB267:
.LBB266:
	.loc 4 493 0
	extr.u	%d15, %d2, %d15, 1
.LBE266:
.LBE267:
	.loc 1 152 0
	lea	%a3, [%a2] lo:IfxPort_P00_1
.LVL102:
	ld.a	%a2, [%a2] lo:IfxPort_P00_1
.LVL103:
	.loc 1 151 0
	st.b	[%a15] 3, %d15
.LBB268:
.LBB269:
	.loc 4 493 0
	ld.w	%d2, [%a2] 36
	ld.bu	%d15, [%a3] 4
	extr.u	%d15, %d2, %d15, 1
.LBE269:
.LBE268:
	.loc 1 152 0
	st.b	[%a15] 4, %d15
	.loc 1 153 0
	ret
.LVL104:
.L19:
.LBB270:
.LBB197:
.LBB195:
.LBB196:
	.loc 4 529 0
	movh	%d2, 1
.LVL105:
	sh	%d15, %d2, %d15
.LVL106:
	st.w	[%a2] 4, %d15
	j	.L20
.LVL107:
.L27:
.LBE196:
.LBE195:
.LBE197:
.LBE270:
.LBB271:
.LBB248:
.LBB244:
.LBB245:
	movh	%d2, 1
	sh	%d15, %d2, %d15
.LVL108:
	st.w	[%a2] 4, %d15
.LBE245:
.LBE244:
.LBE248:
.LBE271:
	.loc 1 148 0
	movh.a	%a2, hi:IfxPort_P33_5
.LVL109:
	lea	%a3, [%a2] lo:IfxPort_P33_5
.LBB272:
.LBB257:
.LBB258:
	.loc 4 529 0
	ld.bu	%d15, [%a3] 4
.LBE258:
.LBE257:
.LBE272:
	.loc 1 148 0
	ld.a	%a2, [%a2] lo:IfxPort_P33_5
.LVL110:
.LBB273:
.LBB260:
.LBB259:
	.loc 4 529 0
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
	j	.L28
.LVL111:
.L25:
.LBE259:
.LBE260:
.LBE273:
.LBB274:
.LBB222:
.LBB218:
.LBB219:
	movh	%d2, 1
	sh	%d15, %d2, %d15
.LVL112:
	st.w	[%a2] 4, %d15
.LBE219:
.LBE218:
.LBE222:
.LBE274:
	.loc 1 146 0
	movh.a	%a2, hi:IfxPort_P00_2
	lea	%a4, [%a2] lo:IfxPort_P00_2
.LBB275:
.LBB231:
.LBB232:
	.loc 4 529 0
	ld.bu	%d15, [%a4] 4
.LBE232:
.LBE231:
.LBE275:
	.loc 1 146 0
	ld.a	%a2, [%a2] lo:IfxPort_P00_2
.LVL113:
.LBB276:
.LBB234:
.LBB233:
	.loc 4 529 0
	sh	%d2, %d2, %d15
	st.w	[%a2] 4, %d2
	j	.L26
.LVL114:
.L23:
.LBE233:
.LBE234:
.LBE276:
.LBB277:
.LBB211:
.LBB209:
.LBB210:
	movh	%d2, 1
.LVL115:
	sh	%d15, %d2, %d15
.LVL116:
	st.w	[%a2] 4, %d15
	j	.L24
.LVL117:
.L21:
.LBE210:
.LBE209:
.LBE211:
.LBE277:
.LBB278:
.LBB204:
.LBB202:
.LBB203:
	movh	%d2, 1
.LVL118:
	sh	%d15, %d2, %d15
.LVL119:
	st.w	[%a2] 4, %d15
	j	.L22
.LBE203:
.LBE202:
.LBE204:
.LBE278:
.LFE384:
	.size	BasicPort_run, .-BasicPort_run
.section .text.IR_setMotor0En,"ax",@progbits
	.align 1
	.global	IR_setMotor0En
	.type	IR_setMotor0En, @function
IR_setMotor0En:
.LFB385:
	.loc 1 155 0
.LVL120:
	.loc 1 157 0
	ne	%d4, %d4, 0
.LVL121:
	movh.a	%a15, hi:IR_MotorEn
	st.b	[%a15] lo:IR_MotorEn, %d4
	.loc 1 160 0
	ret
.LFE385:
	.size	IR_setMotor0En, .-IR_setMotor0En
.section .text.IR_setMotor1En,"ax",@progbits
	.align 1
	.global	IR_setMotor1En
	.type	IR_setMotor1En, @function
IR_setMotor1En:
.LFB386:
	.loc 1 162 0
.LVL122:
	.loc 1 164 0
	ne	%d4, %d4, 0
.LVL123:
	movh.a	%a15, hi:IR_MotorEn
	lea	%a15, [%a15] lo:IR_MotorEn
	st.b	[%a15] 1, %d4
	.loc 1 167 0
	ret
.LFE386:
	.size	IR_setMotor1En, .-IR_setMotor1En
.section .text.IR_setLed108,"ax",@progbits
	.align 1
	.global	IR_setLed108
	.type	IR_setLed108, @function
IR_setLed108:
.LFB387:
	.loc 1 169 0
.LVL124:
	.loc 1 171 0
	ne	%d4, %d4, 0
.LVL125:
	.loc 1 173 0
	movh.a	%a15, hi:IR_Port
	st.b	[%a15] lo:IR_Port, %d4
	.loc 1 174 0
	ret
.LFE387:
	.size	IR_setLed108, .-IR_setLed108
.section .text.IR_setLed109,"ax",@progbits
	.align 1
	.global	IR_setLed109
	.type	IR_setLed109, @function
IR_setLed109:
.LFB388:
	.loc 1 176 0
.LVL126:
	.loc 1 178 0
	ne	%d4, %d4, 0
.LVL127:
	.loc 1 180 0
	movh.a	%a15, hi:IR_Port
	lea	%a15, [%a15] lo:IR_Port
	st.b	[%a15] 1, %d4
	.loc 1 181 0
	ret
.LFE388:
	.size	IR_setLed109, .-IR_setLed109
.section .text.IR_setLed110,"ax",@progbits
	.align 1
	.global	IR_setLed110
	.type	IR_setLed110, @function
IR_setLed110:
.LFB389:
	.loc 1 183 0
.LVL128:
	.loc 1 185 0
	ne	%d4, %d4, 0
.LVL129:
	.loc 1 187 0
	movh.a	%a15, hi:IR_Port
	lea	%a15, [%a15] lo:IR_Port
	st.b	[%a15] 2, %d4
	.loc 1 188 0
	ret
.LFE389:
	.size	IR_setLed110, .-IR_setLed110
	.global	IR_MotorEn
.section .bss.IR_MotorEn,"aw",@nobits
	.align 1
	.type	IR_MotorEn, @object
	.size	IR_MotorEn, 2
IR_MotorEn:
	.zero	2
	.global	IR_Port
.section .bss.IR_Port,"aw",@nobits
	.align 1
	.type	IR_Port, @object
	.size	IR_Port, 10
IR_Port:
	.zero	10
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
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB384
	.uaword	.LFE384-.LFB384
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB385
	.uaword	.LFE385-.LFB385
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB386
	.uaword	.LFE386-.LFB386
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB387
	.uaword	.LFE387-.LFB387
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB388
	.uaword	.LFE388-.LFB388
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB389
	.uaword	.LFE389-.LFB389
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
	.file 8 "0_Src/0_AppSw/Tricore/Main/BasicPort.h"
	.file 9 "./0_Src/4_McHal/Tricore/_PinMap/IfxPort_PinMap.h"
	.file 10 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3768
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Main/BasicPort.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x270
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.uaword	0xc0
	.uaword	0x152
	.uleb128 0x4
	.uaword	0x9c
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.string	"uint8"
	.byte	0x5
	.byte	0x59
	.uaword	0xc0
	.uleb128 0x5
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x9c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x5
	.string	"boolean"
	.byte	0x5
	.byte	0x68
	.uaword	0xc0
	.uleb128 0x6
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x3e9
	.uleb128 0x7
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
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
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x197
	.uleb128 0x6
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x42f
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0x54
	.uaword	0xfb
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x402
	.uleb128 0x6
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x588
	.uleb128 0x7
	.string	"EN0"
	.byte	0x6
	.byte	0x5a
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN1"
	.byte	0x6
	.byte	0x5b
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN2"
	.byte	0x6
	.byte	0x5c
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN3"
	.byte	0x6
	.byte	0x5d
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN4"
	.byte	0x6
	.byte	0x5e
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN5"
	.byte	0x6
	.byte	0x5f
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN6"
	.byte	0x6
	.byte	0x60
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN7"
	.byte	0x6
	.byte	0x61
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN8"
	.byte	0x6
	.byte	0x62
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN9"
	.byte	0x6
	.byte	0x63
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN10"
	.byte	0x6
	.byte	0x64
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN11"
	.byte	0x6
	.byte	0x65
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN12"
	.byte	0x6
	.byte	0x66
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN13"
	.byte	0x6
	.byte	0x67
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN14"
	.byte	0x6
	.byte	0x68
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"EN15"
	.byte	0x6
	.byte	0x69
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x6a
	.uaword	0xfb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ESR_Bits"
	.byte	0x6
	.byte	0x6b
	.uaword	0x448
	.uleb128 0x6
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6e
	.uaword	0x5f6
	.uleb128 0x7
	.string	"MODREV"
	.byte	0x6
	.byte	0x70
	.uaword	0xfb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"MODTYPE"
	.byte	0x6
	.byte	0x71
	.uaword	0xfb
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"MODNUMBER"
	.byte	0x6
	.byte	0x72
	.uaword	0xfb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_ID_Bits"
	.byte	0x6
	.byte	0x73
	.uaword	0x59e
	.uleb128 0x6
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x76
	.uaword	0x73a
	.uleb128 0x7
	.string	"P0"
	.byte	0x6
	.byte	0x78
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P1"
	.byte	0x6
	.byte	0x79
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P2"
	.byte	0x6
	.byte	0x7a
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P3"
	.byte	0x6
	.byte	0x7b
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P4"
	.byte	0x6
	.byte	0x7c
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P5"
	.byte	0x6
	.byte	0x7d
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P6"
	.byte	0x6
	.byte	0x7e
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P7"
	.byte	0x6
	.byte	0x7f
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P8"
	.byte	0x6
	.byte	0x80
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P9"
	.byte	0x6
	.byte	0x81
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P10"
	.byte	0x6
	.byte	0x82
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P11"
	.byte	0x6
	.byte	0x83
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P12"
	.byte	0x6
	.byte	0x84
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P13"
	.byte	0x6
	.byte	0x85
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P14"
	.byte	0x6
	.byte	0x86
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"P15"
	.byte	0x6
	.byte	0x87
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x88
	.uaword	0xfb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IN_Bits"
	.byte	0x6
	.byte	0x89
	.uaword	0x60b
	.uleb128 0x6
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x8c
	.uaword	0x7f2
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0x8e
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC0"
	.byte	0x6
	.byte	0x8f
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.byte	0x90
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC1"
	.byte	0x6
	.byte	0x91
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x92
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC2"
	.byte	0x6
	.byte	0x93
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0x94
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC3"
	.byte	0x6
	.byte	0x95
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x6
	.byte	0x96
	.uaword	0x74f
	.uleb128 0x6
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x99
	.uaword	0x8b2
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0x9b
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC12"
	.byte	0x6
	.byte	0x9c
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.byte	0x9d
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC13"
	.byte	0x6
	.byte	0x9e
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0x9f
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC14"
	.byte	0x6
	.byte	0xa0
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xa1
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC15"
	.byte	0x6
	.byte	0xa2
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x6
	.byte	0xa3
	.uaword	0x80a
	.uleb128 0x6
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xa6
	.uaword	0x96e
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xa8
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC4"
	.byte	0x6
	.byte	0xa9
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.byte	0xaa
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC5"
	.byte	0x6
	.byte	0xab
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0xac
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC6"
	.byte	0x6
	.byte	0xad
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xae
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC7"
	.byte	0x6
	.byte	0xaf
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x6
	.byte	0xb0
	.uaword	0x8cb
	.uleb128 0x6
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb3
	.uaword	0xa2b
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xb5
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC8"
	.byte	0x6
	.byte	0xb6
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.byte	0xb7
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC9"
	.byte	0x6
	.byte	0xb8
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.byte	0xb9
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC10"
	.byte	0x6
	.byte	0xba
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xbb
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PC11"
	.byte	0x6
	.byte	0xbc
	.uaword	0xfb
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x6
	.byte	0xbd
	.uaword	0x986
	.uleb128 0x6
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xc0
	.uaword	0xac8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xc2
	.uaword	0xfb
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL0"
	.byte	0x6
	.byte	0xc3
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL1"
	.byte	0x6
	.byte	0xc4
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL2"
	.byte	0x6
	.byte	0xc5
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL3"
	.byte	0x6
	.byte	0xc6
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.byte	0xc7
	.uaword	0xfb
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x6
	.byte	0xc8
	.uaword	0xa43
	.uleb128 0x6
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xcb
	.uaword	0xb59
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xcd
	.uaword	0xfb
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL12"
	.byte	0x6
	.byte	0xce
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL13"
	.byte	0x6
	.byte	0xcf
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL14"
	.byte	0x6
	.byte	0xd0
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL15"
	.byte	0x6
	.byte	0xd1
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x6
	.byte	0xd2
	.uaword	0xae0
	.uleb128 0x6
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd5
	.uaword	0xbf7
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xd7
	.uaword	0xfb
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL4"
	.byte	0x6
	.byte	0xd8
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL5"
	.byte	0x6
	.byte	0xd9
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL6"
	.byte	0x6
	.byte	0xda
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL7"
	.byte	0x6
	.byte	0xdb
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.byte	0xdc
	.uaword	0xfb
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x6
	.byte	0xdd
	.uaword	0xb72
	.uleb128 0x6
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe0
	.uaword	0xc96
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xe2
	.uaword	0xfb
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL8"
	.byte	0x6
	.byte	0xe3
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL9"
	.byte	0x6
	.byte	0xe4
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL10"
	.byte	0x6
	.byte	0xe5
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL11"
	.byte	0x6
	.byte	0xe6
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x6
	.byte	0xe7
	.uaword	0xfb
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x6
	.byte	0xe8
	.uaword	0xc0f
	.uleb128 0x6
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xeb
	.uaword	0xdff
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.byte	0xed
	.uaword	0xfb
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL0"
	.byte	0x6
	.byte	0xee
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL1"
	.byte	0x6
	.byte	0xef
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL2"
	.byte	0x6
	.byte	0xf0
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL3"
	.byte	0x6
	.byte	0xf1
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL4"
	.byte	0x6
	.byte	0xf2
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL5"
	.byte	0x6
	.byte	0xf3
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL6"
	.byte	0x6
	.byte	0xf4
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL7"
	.byte	0x6
	.byte	0xf5
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL8"
	.byte	0x6
	.byte	0xf6
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL9"
	.byte	0x6
	.byte	0xf7
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL10"
	.byte	0x6
	.byte	0xf8
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL11"
	.byte	0x6
	.byte	0xf9
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL12"
	.byte	0x6
	.byte	0xfa
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL13"
	.byte	0x6
	.byte	0xfb
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL14"
	.byte	0x6
	.byte	0xfc
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PCL15"
	.byte	0x6
	.byte	0xfd
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x6
	.byte	0xfe
	.uaword	0xcae
	.uleb128 0x9
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x101
	.uaword	0x108c
	.uleb128 0xa
	.string	"PS0"
	.byte	0x6
	.uahalf	0x103
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x6
	.uahalf	0x104
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS2"
	.byte	0x6
	.uahalf	0x105
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS3"
	.byte	0x6
	.uahalf	0x106
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS4"
	.byte	0x6
	.uahalf	0x107
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS5"
	.byte	0x6
	.uahalf	0x108
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS6"
	.byte	0x6
	.uahalf	0x109
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS7"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS8"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS9"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS10"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS11"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS12"
	.byte	0x6
	.uahalf	0x10f
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS13"
	.byte	0x6
	.uahalf	0x110
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS14"
	.byte	0x6
	.uahalf	0x111
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS15"
	.byte	0x6
	.uahalf	0x112
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL0"
	.byte	0x6
	.uahalf	0x113
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL1"
	.byte	0x6
	.uahalf	0x114
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL2"
	.byte	0x6
	.uahalf	0x115
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL3"
	.byte	0x6
	.uahalf	0x116
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL4"
	.byte	0x6
	.uahalf	0x117
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL5"
	.byte	0x6
	.uahalf	0x118
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL6"
	.byte	0x6
	.uahalf	0x119
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL7"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL8"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL9"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL10"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL11"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL12"
	.byte	0x6
	.uahalf	0x11f
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL13"
	.byte	0x6
	.uahalf	0x120
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL14"
	.byte	0x6
	.uahalf	0x121
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PCL15"
	.byte	0x6
	.uahalf	0x122
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMR_Bits"
	.byte	0x6
	.uahalf	0x123
	.uaword	0xe16
	.uleb128 0x9
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1120
	.uleb128 0xa
	.string	"PS0"
	.byte	0x6
	.uahalf	0x128
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x6
	.uahalf	0x129
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS2"
	.byte	0x6
	.uahalf	0x12a
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS3"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_4"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0xfb
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x10a3
	.uleb128 0x9
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x130
	.uaword	0x11c6
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x132
	.uaword	0xfb
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS12"
	.byte	0x6
	.uahalf	0x133
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS13"
	.byte	0x6
	.uahalf	0x134
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS14"
	.byte	0x6
	.uahalf	0x135
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS15"
	.byte	0x6
	.uahalf	0x136
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x137
	.uaword	0xfb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x1139
	.uleb128 0x9
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x1268
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x13d
	.uaword	0xfb
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS4"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS5"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS6"
	.byte	0x6
	.uahalf	0x140
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS7"
	.byte	0x6
	.uahalf	0x141
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x142
	.uaword	0xfb
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x11e0
	.uleb128 0x9
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1313
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x148
	.uaword	0xfb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS8"
	.byte	0x6
	.uahalf	0x149
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS9"
	.byte	0x6
	.uahalf	0x14a
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS10"
	.byte	0x6
	.uahalf	0x14b
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS11"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_12"
	.byte	0x6
	.uahalf	0x14d
	.uaword	0xfb
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1281
	.uleb128 0x9
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x151
	.uaword	0x147f
	.uleb128 0xa
	.string	"PS0"
	.byte	0x6
	.uahalf	0x153
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS1"
	.byte	0x6
	.uahalf	0x154
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS2"
	.byte	0x6
	.uahalf	0x155
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS3"
	.byte	0x6
	.uahalf	0x156
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS4"
	.byte	0x6
	.uahalf	0x157
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS5"
	.byte	0x6
	.uahalf	0x158
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS6"
	.byte	0x6
	.uahalf	0x159
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS7"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS8"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS9"
	.byte	0x6
	.uahalf	0x15c
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS10"
	.byte	0x6
	.uahalf	0x15d
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS11"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS12"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS13"
	.byte	0x6
	.uahalf	0x160
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS14"
	.byte	0x6
	.uahalf	0x161
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PS15"
	.byte	0x6
	.uahalf	0x162
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x163
	.uaword	0xfb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x6
	.uahalf	0x164
	.uaword	0x132c
	.uleb128 0x9
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x167
	.uaword	0x15d9
	.uleb128 0xa
	.string	"P0"
	.byte	0x6
	.uahalf	0x169
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P1"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P2"
	.byte	0x6
	.uahalf	0x16b
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P3"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P4"
	.byte	0x6
	.uahalf	0x16d
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P5"
	.byte	0x6
	.uahalf	0x16e
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P6"
	.byte	0x6
	.uahalf	0x16f
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P7"
	.byte	0x6
	.uahalf	0x170
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P8"
	.byte	0x6
	.uahalf	0x171
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P9"
	.byte	0x6
	.uahalf	0x172
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P10"
	.byte	0x6
	.uahalf	0x173
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P11"
	.byte	0x6
	.uahalf	0x174
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P12"
	.byte	0x6
	.uahalf	0x175
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P13"
	.byte	0x6
	.uahalf	0x176
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P14"
	.byte	0x6
	.uahalf	0x177
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"P15"
	.byte	0x6
	.uahalf	0x178
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x179
	.uaword	0xfb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OUT_Bits"
	.byte	0x6
	.uahalf	0x17a
	.uaword	0x1497
	.uleb128 0x9
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x16af
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x17f
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SEL1"
	.byte	0x6
	.uahalf	0x180
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SEL2"
	.byte	0x6
	.uahalf	0x181
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_3"
	.byte	0x6
	.uahalf	0x182
	.uaword	0xfb
	.byte	0x4
	.byte	0x6
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SEL9"
	.byte	0x6
	.uahalf	0x183
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"SEL10"
	.byte	0x6
	.uahalf	0x184
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_11"
	.byte	0x6
	.uahalf	0x185
	.uaword	0xfb
	.byte	0x4
	.byte	0x14
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"LCK"
	.byte	0x6
	.uahalf	0x186
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x6
	.uahalf	0x187
	.uaword	0x15f0
	.uleb128 0x9
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x183b
	.uleb128 0xa
	.string	"PDIS0"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS1"
	.byte	0x6
	.uahalf	0x18d
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS2"
	.byte	0x6
	.uahalf	0x18e
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS3"
	.byte	0x6
	.uahalf	0x18f
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS4"
	.byte	0x6
	.uahalf	0x190
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS5"
	.byte	0x6
	.uahalf	0x191
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS6"
	.byte	0x6
	.uahalf	0x192
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS7"
	.byte	0x6
	.uahalf	0x193
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS8"
	.byte	0x6
	.uahalf	0x194
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS9"
	.byte	0x6
	.uahalf	0x195
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS10"
	.byte	0x6
	.uahalf	0x196
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS11"
	.byte	0x6
	.uahalf	0x197
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS12"
	.byte	0x6
	.uahalf	0x198
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS13"
	.byte	0x6
	.uahalf	0x199
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS14"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PDIS15"
	.byte	0x6
	.uahalf	0x19b
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x19c
	.uaword	0xfb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x16c7
	.uleb128 0x9
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0x198f
	.uleb128 0xa
	.string	"PD0"
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL0"
	.byte	0x6
	.uahalf	0x1a3
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD1"
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL1"
	.byte	0x6
	.uahalf	0x1a5
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD2"
	.byte	0x6
	.uahalf	0x1a6
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL2"
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD3"
	.byte	0x6
	.uahalf	0x1a8
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL3"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD4"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL4"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD5"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL5"
	.byte	0x6
	.uahalf	0x1ad
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD6"
	.byte	0x6
	.uahalf	0x1ae
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL6"
	.byte	0x6
	.uahalf	0x1af
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD7"
	.byte	0x6
	.uahalf	0x1b0
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL7"
	.byte	0x6
	.uahalf	0x1b1
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x1854
	.uleb128 0x9
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b5
	.uaword	0x1aee
	.uleb128 0xa
	.string	"PD8"
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL8"
	.byte	0x6
	.uahalf	0x1b8
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD9"
	.byte	0x6
	.uahalf	0x1b9
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL9"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD10"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL10"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD11"
	.byte	0x6
	.uahalf	0x1bd
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL11"
	.byte	0x6
	.uahalf	0x1be
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD12"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL12"
	.byte	0x6
	.uahalf	0x1c0
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD13"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL13"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD14"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL14"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PD15"
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0xfb
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PL15"
	.byte	0x6
	.uahalf	0x1c6
	.uaword	0xfb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x19a7
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x1b2e
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1d1
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x3e9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ACCEN0"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1b06
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1b6b
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x42f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ACCEN1"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0x1b43
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1df
	.uaword	0x1ba8
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x588
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ESR"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0x1b80
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x1be2
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x5f6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_ID"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0x1bba
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x1c1b
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0x73a
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IN"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0x1bf3
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x1c54
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0x7f2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR0"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x1c2c
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x1c90
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x201
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x202
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x203
	.uaword	0x8b2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR12"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1c68
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x207
	.uaword	0x1ccd
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x209
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x96e
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR4"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x1ca5
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1d09
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x211
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x212
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x213
	.uaword	0xa2b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_IOCR8"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x1ce1
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x217
	.uaword	0x1d45
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x219
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x21a
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x21b
	.uaword	0xdff
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x1d1d
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x1d80
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x221
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x222
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x223
	.uaword	0xac8
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR0"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1d58
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x227
	.uaword	0x1dbc
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x229
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0xb59
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR12"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0x1d94
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1df9
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x231
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x232
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x233
	.uaword	0xbf7
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR4"
	.byte	0x6
	.uahalf	0x234
	.uaword	0x1dd1
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x237
	.uaword	0x1e35
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x239
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x23a
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0xc96
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMCR8"
	.byte	0x6
	.uahalf	0x23c
	.uaword	0x1e0d
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x23f
	.uaword	0x1e71
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x241
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x242
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x108c
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMR"
	.byte	0x6
	.uahalf	0x244
	.uaword	0x1e49
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x247
	.uaword	0x1eab
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x249
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x24a
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x24b
	.uaword	0x147f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x1e83
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x24f
	.uaword	0x1ee6
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x251
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x252
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x253
	.uaword	0x1120
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR0"
	.byte	0x6
	.uahalf	0x254
	.uaword	0x1ebe
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1f22
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x259
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x25a
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x25b
	.uaword	0x11c6
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR12"
	.byte	0x6
	.uahalf	0x25c
	.uaword	0x1efa
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x25f
	.uaword	0x1f5f
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x261
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x262
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x263
	.uaword	0x1268
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR4"
	.byte	0x6
	.uahalf	0x264
	.uaword	0x1f37
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x267
	.uaword	0x1f9b
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x269
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x26a
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x1313
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OMSR8"
	.byte	0x6
	.uahalf	0x26c
	.uaword	0x1f73
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x26f
	.uaword	0x1fd7
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x271
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x272
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x273
	.uaword	0x15d9
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_OUT"
	.byte	0x6
	.uahalf	0x274
	.uaword	0x1faf
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x277
	.uaword	0x2011
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x279
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x27a
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x27b
	.uaword	0x16af
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PCSR"
	.byte	0x6
	.uahalf	0x27c
	.uaword	0x1fe9
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x27f
	.uaword	0x204c
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x281
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x282
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x283
	.uaword	0x183b
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDISC"
	.byte	0x6
	.uahalf	0x284
	.uaword	0x2024
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x287
	.uaword	0x2088
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x289
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x28a
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x28b
	.uaword	0x198f
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR0"
	.byte	0x6
	.uahalf	0x28c
	.uaword	0x2060
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.uahalf	0x28f
	.uaword	0x20c3
	.uleb128 0xe
	.string	"U"
	.byte	0x6
	.uahalf	0x291
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x6
	.uahalf	0x292
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x6
	.uahalf	0x293
	.uaword	0x1aee
	.byte	0
	.uleb128 0xb
	.string	"Ifx_P_PDR1"
	.byte	0x6
	.uahalf	0x294
	.uaword	0x209b
	.uleb128 0xf
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x29f
	.uaword	0x231e
	.uleb128 0x10
	.string	"OUT"
	.byte	0x6
	.uahalf	0x2a1
	.uaword	0x1fd7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"OMR"
	.byte	0x6
	.uahalf	0x2a2
	.uaword	0x1e71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"ID"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x1be2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"reserved_C"
	.byte	0x6
	.uahalf	0x2a4
	.uaword	0x142
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"IOCR0"
	.byte	0x6
	.uahalf	0x2a5
	.uaword	0x1c54
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.string	"IOCR4"
	.byte	0x6
	.uahalf	0x2a6
	.uaword	0x1ccd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.string	"IOCR8"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1d09
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"IOCR12"
	.byte	0x6
	.uahalf	0x2a8
	.uaword	0x1c90
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x2a9
	.uaword	0x142
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.string	"IN"
	.byte	0x6
	.uahalf	0x2aa
	.uaword	0x1c1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x2ab
	.uaword	0x231e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.string	"PDR0"
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x2088
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.string	"PDR1"
	.byte	0x6
	.uahalf	0x2ad
	.uaword	0x20c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.string	"reserved_48"
	.byte	0x6
	.uahalf	0x2ae
	.uaword	0x232e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.string	"ESR"
	.byte	0x6
	.uahalf	0x2af
	.uaword	0x1ba8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.string	"reserved_54"
	.byte	0x6
	.uahalf	0x2b0
	.uaword	0x233e
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.string	"PDISC"
	.byte	0x6
	.uahalf	0x2b1
	.uaword	0x204c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.string	"PCSR"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x2011
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x10
	.string	"reserved_64"
	.byte	0x6
	.uahalf	0x2b3
	.uaword	0x232e
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.string	"OMSR0"
	.byte	0x6
	.uahalf	0x2b4
	.uaword	0x1ee6
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.string	"OMSR4"
	.byte	0x6
	.uahalf	0x2b5
	.uaword	0x1f5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.string	"OMSR8"
	.byte	0x6
	.uahalf	0x2b6
	.uaword	0x1f9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.string	"OMSR12"
	.byte	0x6
	.uahalf	0x2b7
	.uaword	0x1f22
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.string	"OMCR0"
	.byte	0x6
	.uahalf	0x2b8
	.uaword	0x1d80
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.string	"OMCR4"
	.byte	0x6
	.uahalf	0x2b9
	.uaword	0x1df9
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.string	"OMCR8"
	.byte	0x6
	.uahalf	0x2ba
	.uaword	0x1e35
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.string	"OMCR12"
	.byte	0x6
	.uahalf	0x2bb
	.uaword	0x1dbc
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.string	"OMSR"
	.byte	0x6
	.uahalf	0x2bc
	.uaword	0x1eab
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.string	"OMCR"
	.byte	0x6
	.uahalf	0x2bd
	.uaword	0x1d45
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.string	"reserved_98"
	.byte	0x6
	.uahalf	0x2be
	.uaword	0x234e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x10
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x2bf
	.uaword	0x1b6b
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x10
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x2c0
	.uaword	0x1b2e
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0x3
	.uaword	0xc0
	.uaword	0x232e
	.uleb128 0x4
	.uaword	0x9c
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.uaword	0xc0
	.uaword	0x233e
	.uleb128 0x4
	.uaword	0x9c
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.uaword	0xc0
	.uaword	0x234e
	.uleb128 0x4
	.uaword	0x9c
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.uaword	0xc0
	.uaword	0x235e
	.uleb128 0x4
	.uaword	0x9c
	.byte	0x5f
	.byte	0
	.uleb128 0x12
	.uaword	0x20d6
	.uleb128 0x13
	.byte	0x4
	.uaword	0x235e
	.uleb128 0x12
	.uaword	0xfb
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x37
	.uaword	0x23ee
	.uleb128 0x15
	.string	"IfxPort_InputMode_undefined"
	.sleb128 -1
	.uleb128 0x15
	.string	"IfxPort_InputMode_noPullDevice"
	.sleb128 0
	.uleb128 0x15
	.string	"IfxPort_InputMode_pullDown"
	.sleb128 8
	.uleb128 0x15
	.string	"IfxPort_InputMode_pullUp"
	.sleb128 16
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_InputMode"
	.byte	0x4
	.byte	0x3c
	.uaword	0x236e
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x43
	.uaword	0x26a7
	.uleb128 0x15
	.string	"IfxPort_Mode_inputNoPullDevice"
	.sleb128 0
	.uleb128 0x15
	.string	"IfxPort_Mode_inputPullDown"
	.sleb128 8
	.uleb128 0x15
	.string	"IfxPort_Mode_inputPullUp"
	.sleb128 16
	.uleb128 0x15
	.string	"IfxPort_Mode_outputPushPullGeneral"
	.sleb128 128
	.uleb128 0x15
	.string	"IfxPort_Mode_outputPushPullAlt1"
	.sleb128 136
	.uleb128 0x15
	.string	"IfxPort_Mode_outputPushPullAlt2"
	.sleb128 144
	.uleb128 0x15
	.string	"IfxPort_Mode_outputPushPullAlt3"
	.sleb128 152
	.uleb128 0x15
	.string	"IfxPort_Mode_outputPushPullAlt4"
	.sleb128 160
	.uleb128 0x15
	.string	"IfxPort_Mode_outputPushPullAlt5"
	.sleb128 168
	.uleb128 0x15
	.string	"IfxPort_Mode_outputPushPullAlt6"
	.sleb128 176
	.uleb128 0x15
	.string	"IfxPort_Mode_outputPushPullAlt7"
	.sleb128 184
	.uleb128 0x15
	.string	"IfxPort_Mode_outputOpenDrainGeneral"
	.sleb128 192
	.uleb128 0x15
	.string	"IfxPort_Mode_outputOpenDrainAlt1"
	.sleb128 200
	.uleb128 0x15
	.string	"IfxPort_Mode_outputOpenDrainAlt2"
	.sleb128 208
	.uleb128 0x15
	.string	"IfxPort_Mode_outputOpenDrainAlt3"
	.sleb128 216
	.uleb128 0x15
	.string	"IfxPort_Mode_outputOpenDrainAlt4"
	.sleb128 224
	.uleb128 0x15
	.string	"IfxPort_Mode_outputOpenDrainAlt5"
	.sleb128 232
	.uleb128 0x15
	.string	"IfxPort_Mode_outputOpenDrainAlt6"
	.sleb128 240
	.uleb128 0x15
	.string	"IfxPort_Mode_outputOpenDrainAlt7"
	.sleb128 248
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Mode"
	.byte	0x4
	.byte	0x57
	.uaword	0x2407
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x74
	.uaword	0x27e0
	.uleb128 0x15
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x15
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x15
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x15
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x15
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x15
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x15
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x15
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x84
	.uaword	0x2849
	.uleb128 0x15
	.string	"IfxPort_State_notChanged"
	.sleb128 0
	.uleb128 0x15
	.string	"IfxPort_State_high"
	.sleb128 1
	.uleb128 0x15
	.string	"IfxPort_State_low"
	.sleb128 65536
	.uleb128 0x15
	.string	"IfxPort_State_toggled"
	.sleb128 65537
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_State"
	.byte	0x4
	.byte	0x89
	.uaword	0x27e0
	.uleb128 0x16
	.byte	0x8
	.byte	0x4
	.byte	0x95
	.uaword	0x2884
	.uleb128 0x17
	.string	"port"
	.byte	0x4
	.byte	0x97
	.uaword	0x2363
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x4
	.byte	0x98
	.uaword	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.string	"IfxPort_Pin"
	.byte	0x4
	.byte	0x99
	.uaword	0x285e
	.uleb128 0x12
	.uaword	0x188
	.uleb128 0x9
	.string	"_Ifx_CPU_ICR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x176
	.uaword	0x2923
	.uleb128 0xa
	.string	"CCPN"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x2369
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_10"
	.byte	0x7
	.uahalf	0x179
	.uaword	0x2369
	.byte	0x4
	.byte	0x5
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"IE"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x2369
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"PIPN"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x2369
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"reserved_26"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x2369
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xb
	.string	"Ifx_CPU_ICR_Bits"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x289c
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uahalf	0x3df
	.uaword	0x2964
	.uleb128 0xe
	.string	"U"
	.byte	0x7
	.uahalf	0x3e1
	.uaword	0xfb
	.uleb128 0xe
	.string	"I"
	.byte	0x7
	.uahalf	0x3e2
	.uaword	0xf4
	.uleb128 0xe
	.string	"B"
	.byte	0x7
	.uahalf	0x3e3
	.uaword	0x2923
	.byte	0
	.uleb128 0xb
	.string	"Ifx_CPU_ICR"
	.byte	0x7
	.uahalf	0x3e4
	.uaword	0x293c
	.uleb128 0x16
	.byte	0xa
	.byte	0x8
	.byte	0x3c
	.uaword	0x2a22
	.uleb128 0x17
	.string	"led108"
	.byte	0x8
	.byte	0x3e
	.uaword	0x2897
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"led109"
	.byte	0x8
	.byte	0x3f
	.uaword	0x2897
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x17
	.string	"led110"
	.byte	0x8
	.byte	0x40
	.uaword	0x2897
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x17
	.string	"port00_0"
	.byte	0x8
	.byte	0x41
	.uaword	0x2897
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x17
	.string	"port00_1"
	.byte	0x8
	.byte	0x42
	.uaword	0x2897
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x17
	.string	"m11_inh"
	.byte	0x8
	.byte	0x44
	.uaword	0x2897
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x17
	.string	"m12_inh"
	.byte	0x8
	.byte	0x45
	.uaword	0x2897
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.string	"m21_inh"
	.byte	0x8
	.byte	0x46
	.uaword	0x2897
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x17
	.string	"m22_inh"
	.byte	0x8
	.byte	0x47
	.uaword	0x2897
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.string	"Basic_Port"
	.byte	0x8
	.byte	0x48
	.uaword	0x2978
	.uleb128 0x16
	.byte	0x2
	.byte	0x8
	.byte	0x4a
	.uaword	0x2a6b
	.uleb128 0x17
	.string	"Motor0Enable"
	.byte	0x8
	.byte	0x4b
	.uaword	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x17
	.string	"Motor1Enable"
	.byte	0x8
	.byte	0x4c
	.uaword	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.string	"IR_MotorEn_t"
	.byte	0x8
	.byte	0x4d
	.uaword	0x2a34
	.uleb128 0x19
	.string	"IfxCpu_areInterruptsEnabled"
	.byte	0x2
	.uahalf	0x239
	.byte	0x1
	.uaword	0x188
	.byte	0x3
	.uaword	0x2ac6
	.uleb128 0x1a
	.string	"reg"
	.byte	0x2
	.uahalf	0x23b
	.uaword	0x2964
	.uleb128 0x1b
	.uleb128 0x1a
	.string	"__res"
	.byte	0x2
	.uahalf	0x23c
	.uaword	0xfb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"__nop"
	.byte	0x3
	.uahalf	0x557
	.byte	0x1
	.byte	0x3
	.uleb128 0x1d
	.string	"IfxPort_setPinState"
	.byte	0x4
	.uahalf	0x20f
	.byte	0x1
	.byte	0x3
	.uaword	0x2b19
	.uleb128 0x1e
	.string	"port"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x2363
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x15a
	.uleb128 0x1e
	.string	"action"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x2849
	.byte	0
	.uleb128 0x19
	.string	"IfxCpu_disableInterrupts"
	.byte	0x2
	.uahalf	0x241
	.byte	0x1
	.uaword	0x188
	.byte	0x3
	.uaword	0x2b51
	.uleb128 0x1a
	.string	"enabled"
	.byte	0x2
	.uahalf	0x243
	.uaword	0x188
	.byte	0
	.uleb128 0x20
	.string	"setOutputPin"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uaword	0x2b8c
	.uleb128 0x21
	.string	"port"
	.byte	0x1
	.byte	0x42
	.uaword	0x2363
	.uleb128 0x21
	.string	"pin"
	.byte	0x1
	.byte	0x42
	.uaword	0x15a
	.uleb128 0x21
	.string	"state"
	.byte	0x1
	.byte	0x42
	.uaword	0x188
	.byte	0
	.uleb128 0x1d
	.string	"IfxPort_setPinModeInput"
	.byte	0x4
	.uahalf	0x203
	.byte	0x1
	.byte	0x3
	.uaword	0x2bd5
	.uleb128 0x1e
	.string	"port"
	.byte	0x4
	.uahalf	0x203
	.uaword	0x2363
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x203
	.uaword	0x15a
	.uleb128 0x1e
	.string	"mode"
	.byte	0x4
	.uahalf	0x203
	.uaword	0x23ee
	.byte	0
	.uleb128 0x19
	.string	"IfxPort_getPinState"
	.byte	0x4
	.uahalf	0x1eb
	.byte	0x1
	.uaword	0x188
	.byte	0x3
	.uaword	0x2c11
	.uleb128 0x1e
	.string	"port"
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x2363
	.uleb128 0x1f
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x15a
	.byte	0
	.uleb128 0x1d
	.string	"IfxCpu_restoreInterrupts"
	.byte	0x2
	.uahalf	0x318
	.byte	0x1
	.byte	0x3
	.uaword	0x2c45
	.uleb128 0x1e
	.string	"enabled"
	.byte	0x2
	.uahalf	0x318
	.uaword	0x188
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	.LFB383
	.uaword	.LFE383
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3145
	.uleb128 0x23
	.string	"interruptState"
	.byte	0x1
	.byte	0x55
	.uaword	0x188
	.uleb128 0x24
	.uaword	0x2b19
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.byte	0x55
	.uaword	0x2ce8
	.uleb128 0x25
	.uaword	.LBB117
	.uaword	.LBE117
	.uleb128 0x26
	.uaword	0x2b40
	.uleb128 0x27
	.uaword	0x2a7f
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x2
	.uahalf	0x244
	.uaword	0x2cd6
	.uleb128 0x25
	.uaword	.LBB119
	.uaword	.LBE119
	.uleb128 0x26
	.uaword	0x2aa9
	.uleb128 0x25
	.uaword	.LBB120
	.uaword	.LBE120
	.uleb128 0x28
	.uaword	0x2ab6
	.uaword	.LLST0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x2ac6
	.uaword	.LBB121
	.uaword	.LBE121
	.byte	0x2
	.uahalf	0x246
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB123
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5e
	.uaword	0x2d6f
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST1
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST2
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST3
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB125
	.uaword	.LBE125
	.byte	0x1
	.byte	0x46
	.uaword	0x2d45
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST4
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST6
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB127
	.uaword	.LBE127
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2d
	.uaword	0x2b09
	.uaword	0x10000
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x2af0
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB130
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x62
	.uaword	0x2df6
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST8
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST9
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST10
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB132
	.uaword	.LBE132
	.byte	0x1
	.byte	0x46
	.uaword	0x2dcc
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST4
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST6
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST11
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x2af0
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB137
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x66
	.uaword	0x2e7d
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST12
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST13
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST14
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB139
	.uaword	.LBE139
	.byte	0x1
	.byte	0x46
	.uaword	0x2e53
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST4
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST6
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB141
	.uaword	.LBE141
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST15
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x2af0
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB144
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x6b
	.uaword	0x2f04
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST16
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST17
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST18
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB146
	.uaword	.LBE146
	.byte	0x1
	.byte	0x46
	.uaword	0x2eda
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST4
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST6
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST19
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x2af0
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB151
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x6f
	.uaword	0x2f8b
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST20
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST21
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST22
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB153
	.uaword	.LBE153
	.byte	0x1
	.byte	0x46
	.uaword	0x2f61
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST4
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST6
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB155
	.uaword	.LBE155
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST23
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x2af0
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB158
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x73
	.uaword	0x3012
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST24
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST25
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST26
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x1
	.byte	0x46
	.uaword	0x2fe8
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST4
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST6
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB162
	.uaword	.LBE162
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST27
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x2af0
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB165
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x77
	.uaword	0x3099
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST28
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST29
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST30
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x1
	.byte	0x46
	.uaword	0x306f
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST4
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST5
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST6
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST31
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x2af0
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x2b8c
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.byte	0x7a
	.uaword	0x30c0
	.uleb128 0x2b
	.uaword	0x2bc7
	.uaword	.LLST32
	.uleb128 0x2f
	.uaword	0x2bbb
	.uleb128 0x2f
	.uaword	0x2bae
	.byte	0
	.uleb128 0x24
	.uaword	0x2b8c
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x1
	.byte	0x7b
	.uaword	0x30e7
	.uleb128 0x2b
	.uaword	0x2bc7
	.uaword	.LLST33
	.uleb128 0x2f
	.uaword	0x2bbb
	.uleb128 0x2f
	.uaword	0x2bae
	.byte	0
	.uleb128 0x2a
	.uaword	0x2bd5
	.uaword	.LBB176
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0x7d
	.uaword	0x3109
	.uleb128 0x2f
	.uaword	0x2c04
	.uleb128 0x2b
	.uaword	0x2bf7
	.uaword	.LLST34
	.byte	0
	.uleb128 0x24
	.uaword	0x2bd5
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.byte	0x7e
	.uaword	0x312b
	.uleb128 0x2f
	.uaword	0x2c04
	.uleb128 0x2b
	.uaword	0x2bf7
	.uaword	.LLST35
	.byte	0
	.uleb128 0x2c
	.uaword	0x2c11
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x1
	.byte	0x81
	.uleb128 0x2b
	.uaword	0x2c34
	.uaword	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.uaword	.LFB384
	.uaword	.LFE384
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3557
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB191
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x8c
	.uaword	0x31ec
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST37
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST38
	.uleb128 0x2f
	.uaword	0x2b67
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x1
	.byte	0x46
	.uaword	0x31c0
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST39
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST40
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST41
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST42
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST43
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB198
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x8d
	.uaword	0x3275
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST45
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST46
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST47
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.byte	0x46
	.uaword	0x3249
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST39
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST40
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST41
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB202
	.uaword	.LBE202
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2d
	.uaword	0x2b09
	.uaword	0x10000
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST43
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB205
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x8e
	.uaword	0x32fe
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST48
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST49
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST50
	.uleb128 0x24
	.uaword	0x2ad2
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x1
	.byte	0x46
	.uaword	0x32d2
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST39
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST40
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST41
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB209
	.uaword	.LBE209
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST51
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST43
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB212
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0x91
	.uaword	0x3383
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST52
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST53
	.uleb128 0x2f
	.uaword	0x2b67
	.uleb128 0x2a
	.uaword	0x2ad2
	.uaword	.LBB214
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0x46
	.uaword	0x3357
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST39
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST40
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST41
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB218
	.uaword	.LBE218
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST54
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST43
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB224
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.byte	0x92
	.uaword	0x3408
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST55
	.uleb128 0x2f
	.uaword	0x2b73
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST56
	.uleb128 0x2a
	.uaword	0x2ad2
	.uaword	.LBB225
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.byte	0x46
	.uaword	0x33dc
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST39
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST40
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST41
	.byte	0
	.uleb128 0x30
	.uaword	0x2ad2
	.uaword	.LBB231
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST57
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST43
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB238
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0x93
	.uaword	0x3491
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST58
	.uleb128 0x2b
	.uaword	0x2b73
	.uaword	.LLST59
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST60
	.uleb128 0x2a
	.uaword	0x2ad2
	.uaword	.LBB240
	.uaword	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.byte	0x46
	.uaword	0x3465
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST39
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST40
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST41
	.byte	0
	.uleb128 0x2c
	.uaword	0x2ad2
	.uaword	.LBB244
	.uaword	.LBE244
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST61
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST43
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2b51
	.uaword	.LBB250
	.uaword	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0x94
	.uaword	0x3516
	.uleb128 0x2b
	.uaword	0x2b7e
	.uaword	.LLST62
	.uleb128 0x2f
	.uaword	0x2b73
	.uleb128 0x2b
	.uaword	0x2b67
	.uaword	.LLST63
	.uleb128 0x2a
	.uaword	0x2ad2
	.uaword	.LBB251
	.uaword	.Ldebug_ranges0+0x220
	.byte	0x1
	.byte	0x46
	.uaword	0x34ea
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST39
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST40
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST41
	.byte	0
	.uleb128 0x30
	.uaword	0x2ad2
	.uaword	.LBB257
	.uaword	.Ldebug_ranges0+0x240
	.byte	0x1
	.byte	0x4a
	.uleb128 0x2b
	.uaword	0x2b09
	.uaword	.LLST64
	.uleb128 0x2b
	.uaword	0x2afd
	.uaword	.LLST43
	.uleb128 0x2b
	.uaword	0x2af0
	.uaword	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2bd5
	.uaword	.LBB264
	.uaword	.Ldebug_ranges0+0x258
	.byte	0x1
	.byte	0x97
	.uaword	0x3538
	.uleb128 0x2f
	.uaword	0x2c04
	.uleb128 0x2b
	.uaword	0x2bf7
	.uaword	.LLST65
	.byte	0
	.uleb128 0x2c
	.uaword	0x2bd5
	.uaword	.LBB268
	.uaword	.LBE268
	.byte	0x1
	.byte	0x98
	.uleb128 0x2f
	.uaword	0x2c04
	.uleb128 0x2b
	.uaword	0x2bf7
	.uaword	.LLST66
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IR_setMotor0En"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	.LFB385
	.uaword	.LFE385
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x358d
	.uleb128 0x31
	.string	"enable"
	.byte	0x1
	.byte	0x9b
	.uaword	0x188
	.uaword	.LLST67
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IR_setMotor1En"
	.byte	0x1
	.byte	0xa2
	.byte	0x1
	.uaword	.LFB386
	.uaword	.LFE386
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x35c3
	.uleb128 0x31
	.string	"enable"
	.byte	0x1
	.byte	0xa2
	.uaword	0x188
	.uaword	.LLST68
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IR_setLed108"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	.LFB387
	.uaword	.LFE387
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x35f2
	.uleb128 0x32
	.string	"led"
	.byte	0x1
	.byte	0xa9
	.uaword	0x188
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IR_setLed109"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.uaword	.LFB388
	.uaword	.LFE388
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3621
	.uleb128 0x32
	.string	"led"
	.byte	0x1
	.byte	0xb0
	.uaword	0x188
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IR_setLed110"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.uaword	.LFB389
	.uaword	.LFE389
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3650
	.uleb128 0x32
	.string	"led"
	.byte	0x1
	.byte	0xb7
	.uaword	0x188
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x33
	.string	"IfxPort_P00_0"
	.byte	0x9
	.byte	0x25
	.uaword	0x2884
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IfxPort_P00_1"
	.byte	0x9
	.byte	0x26
	.uaword	0x2884
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IfxPort_P00_2"
	.byte	0x9
	.byte	0x28
	.uaword	0x2884
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IfxPort_P02_0"
	.byte	0x9
	.byte	0x30
	.uaword	0x2884
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IfxPort_P02_2"
	.byte	0x9
	.byte	0x32
	.uaword	0x2884
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IfxPort_P13_1"
	.byte	0x9
	.byte	0x47
	.uaword	0x2884
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IfxPort_P13_2"
	.byte	0x9
	.byte	0x48
	.uaword	0x2884
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IfxPort_P13_3"
	.byte	0x9
	.byte	0x49
	.uaword	0x2884
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"IfxPort_P33_5"
	.byte	0x9
	.byte	0x7b
	.uaword	0x2884
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"Assert_verboseLevel"
	.byte	0xa
	.byte	0x7b
	.uaword	0x167
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"IR_Port"
	.byte	0x1
	.byte	0x32
	.uaword	0x2a22
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Port
	.uleb128 0x34
	.string	"IR_MotorEn"
	.byte	0x1
	.byte	0x33
	.uaword	0x2a6b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_MotorEn
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x1
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL72
	.uaword	.LFE383
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL16
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL66
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL66
	.uaword	.LVL69
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL63
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL63
	.uaword	.LVL66
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL30
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL37
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL44
	.uaword	.LVL49-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL54
	.uaword	.LVL57
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL48
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL49
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x79
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL96
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL80
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL80
	.uaword	.LVL82
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL85
	.uaword	.LVL87
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL96
	.uaword	.LVL98
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL104
	.uaword	.LVL107
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL114
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL117
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL114
	.uaword	.LFE384
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL79
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL117
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL79
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL117
	.uaword	.LFE384
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL84
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL114
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL84
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL114
	.uaword	.LVL117
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL114
	.uaword	.LVL117
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL89
	.uaword	.LVL104
	.uahalf	0x5
	.byte	0x3
	.uaword	IR_MotorEn
	.uaword	.LVL107
	.uaword	.LVL114
	.uahalf	0x5
	.byte	0x3
	.uaword	IR_MotorEn
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL89
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL111
	.uaword	.LVL114
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x5
	.byte	0x3
	.uaword	IR_MotorEn
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL95
	.uaword	.LVL104
	.uahalf	0x5
	.byte	0x3
	.uaword	IR_MotorEn+1
	.uaword	.LVL107
	.uaword	.LVL111
	.uahalf	0x5
	.byte	0x3
	.uaword	IR_MotorEn+1
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL95
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL95
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL107
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL109
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL107
	.uaword	.LVL111
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x5
	.byte	0x3
	.uaword	IR_MotorEn+1
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL98
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.uaword	.LFB384
	.uaword	.LFE384-.LFB384
	.uaword	.LFB385
	.uaword	.LFE385-.LFB385
	.uaword	.LFB386
	.uaword	.LFE386-.LFB386
	.uaword	.LFB387
	.uaword	.LFE387-.LFB387
	.uaword	.LFB388
	.uaword	.LFE388-.LFB388
	.uaword	.LFB389
	.uaword	.LFE389-.LFB389
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	0
	.uaword	0
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB189
	.uaword	.LBE189
	.uaword	0
	.uaword	0
	.uaword	.LBB137
	.uaword	.LBE137
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	0
	.uaword	0
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	0
	.uaword	0
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	0
	.uaword	0
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	.LBB185
	.uaword	.LBE185
	.uaword	0
	.uaword	0
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	0
	.uaword	0
	.uaword	.LBB176
	.uaword	.LBE176
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	0
	.uaword	0
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	.LBB270
	.uaword	.LBE270
	.uaword	0
	.uaword	0
	.uaword	.LBB198
	.uaword	.LBE198
	.uaword	.LBB278
	.uaword	.LBE278
	.uaword	0
	.uaword	0
	.uaword	.LBB205
	.uaword	.LBE205
	.uaword	.LBB277
	.uaword	.LBE277
	.uaword	0
	.uaword	0
	.uaword	.LBB212
	.uaword	.LBE212
	.uaword	.LBB223
	.uaword	.LBE223
	.uaword	.LBB235
	.uaword	.LBE235
	.uaword	.LBB274
	.uaword	.LBE274
	.uaword	0
	.uaword	0
	.uaword	.LBB214
	.uaword	.LBE214
	.uaword	.LBB217
	.uaword	.LBE217
	.uaword	0
	.uaword	0
	.uaword	.LBB224
	.uaword	.LBE224
	.uaword	.LBB236
	.uaword	.LBE236
	.uaword	.LBB237
	.uaword	.LBE237
	.uaword	.LBB275
	.uaword	.LBE275
	.uaword	.LBB276
	.uaword	.LBE276
	.uaword	0
	.uaword	0
	.uaword	.LBB225
	.uaword	.LBE225
	.uaword	.LBB229
	.uaword	.LBE229
	.uaword	.LBB230
	.uaword	.LBE230
	.uaword	0
	.uaword	0
	.uaword	.LBB231
	.uaword	.LBE231
	.uaword	.LBB234
	.uaword	.LBE234
	.uaword	0
	.uaword	0
	.uaword	.LBB238
	.uaword	.LBE238
	.uaword	.LBB249
	.uaword	.LBE249
	.uaword	.LBB261
	.uaword	.LBE261
	.uaword	.LBB271
	.uaword	.LBE271
	.uaword	0
	.uaword	0
	.uaword	.LBB240
	.uaword	.LBE240
	.uaword	.LBB243
	.uaword	.LBE243
	.uaword	0
	.uaword	0
	.uaword	.LBB250
	.uaword	.LBE250
	.uaword	.LBB262
	.uaword	.LBE262
	.uaword	.LBB263
	.uaword	.LBE263
	.uaword	.LBB272
	.uaword	.LBE272
	.uaword	.LBB273
	.uaword	.LBE273
	.uaword	0
	.uaword	0
	.uaword	.LBB251
	.uaword	.LBE251
	.uaword	.LBB255
	.uaword	.LBE255
	.uaword	.LBB256
	.uaword	.LBE256
	.uaword	0
	.uaword	0
	.uaword	.LBB257
	.uaword	.LBE257
	.uaword	.LBB260
	.uaword	.LBE260
	.uaword	0
	.uaword	0
	.uaword	.LBB264
	.uaword	.LBE264
	.uaword	.LBB267
	.uaword	.LBE267
	.uaword	0
	.uaword	0
	.uaword	.LFB383
	.uaword	.LFE383
	.uaword	.LFB384
	.uaword	.LFE384
	.uaword	.LFB385
	.uaword	.LFE385
	.uaword	.LFB386
	.uaword	.LFE386
	.uaword	.LFB387
	.uaword	.LFE387
	.uaword	.LFB388
	.uaword	.LFE388
	.uaword	.LFB389
	.uaword	.LFE389
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_0"
.LASF2:
	.string	"reserved_8"
.LASF6:
	.string	"pinIndex"
.LASF1:
	.string	"reserved_16"
.LASF4:
	.string	"reserved_20"
.LASF3:
	.string	"reserved_24"
.LASF5:
	.string	"reserved_28"
	.extern	IfxPort_P00_1,STT_OBJECT,8
	.extern	IfxPort_P00_0,STT_OBJECT,8
	.extern	IfxPort_P33_5,STT_OBJECT,8
	.extern	IfxPort_P02_2,STT_OBJECT,8
	.extern	IfxPort_P00_2,STT_OBJECT,8
	.extern	IfxPort_P02_0,STT_OBJECT,8
	.extern	IfxPort_P13_3,STT_OBJECT,8
	.extern	IfxPort_P13_2,STT_OBJECT,8
	.extern	IfxPort_setPinPadDriver,STT_FUNC,0
	.extern	IfxPort_setPinMode,STT_FUNC,0
	.extern	IfxPort_P13_1,STT_OBJECT,8
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
