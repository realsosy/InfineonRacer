	.file	"IfxCpu_Trap.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxCpu_Trap_memoryManagementError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_memoryManagementError
	.type	IfxCpu_Trap_memoryManagementError, @function
IfxCpu_Trap_memoryManagementError:
.LFB203:
	.file 1 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c"
	.loc 1 87 0
.LVL0:
.LBB112:
.LBB113:
.LBB114:
.LBB115:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL1:
#NO_APP
.LBE115:
.LBE114:
.LBB116:
.LBB117:
.LBB118:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL2:
#NO_APP
.LBE118:
	.loc 1 88 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 0, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE117:
.LBE116:
.LBE113:
.LBE112:
.LBB119:
.LBB120:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE120:
.LBE119:
	.loc 1 91 0
#APP
	# 91 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 92 0
#NO_APP
	ret
.LFE203:
	.size	IfxCpu_Trap_memoryManagementError, .-IfxCpu_Trap_memoryManagementError
.section .text.IfxCpu_Trap_internalProtectionError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_internalProtectionError
	.type	IfxCpu_Trap_internalProtectionError, @function
IfxCpu_Trap_internalProtectionError:
.LFB204:
	.loc 1 96 0
.LVL3:
.LBB121:
.LBB122:
.LBB123:
.LBB124:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL4:
#NO_APP
.LBE124:
.LBE123:
.LBB125:
.LBB126:
.LBB127:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL5:
#NO_APP
.LBE127:
	.loc 1 97 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 1, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE126:
.LBE125:
.LBE122:
.LBE121:
.LBB128:
.LBB129:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE129:
.LBE128:
	.loc 1 100 0
#APP
	# 100 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 101 0
#NO_APP
	ret
.LFE204:
	.size	IfxCpu_Trap_internalProtectionError, .-IfxCpu_Trap_internalProtectionError
.section .text.IfxCpu_Trap_instructionError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_instructionError
	.type	IfxCpu_Trap_instructionError, @function
IfxCpu_Trap_instructionError:
.LFB205:
	.loc 1 105 0
.LVL6:
.LBB130:
.LBB131:
.LBB132:
.LBB133:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL7:
#NO_APP
.LBE133:
.LBE132:
.LBB134:
.LBB135:
.LBB136:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL8:
#NO_APP
.LBE136:
	.loc 1 106 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 2, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE135:
.LBE134:
.LBE131:
.LBE130:
.LBB137:
.LBB138:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE138:
.LBE137:
	.loc 1 109 0
#APP
	# 109 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 110 0
#NO_APP
	ret
.LFE205:
	.size	IfxCpu_Trap_instructionError, .-IfxCpu_Trap_instructionError
.section .text.IfxCpu_Trap_contextManagementError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_contextManagementError
	.type	IfxCpu_Trap_contextManagementError, @function
IfxCpu_Trap_contextManagementError:
.LFB206:
	.loc 1 114 0
.LVL9:
.LBB139:
.LBB140:
.LBB141:
.LBB142:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL10:
#NO_APP
.LBE142:
.LBE141:
.LBB143:
.LBB144:
.LBB145:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL11:
#NO_APP
.LBE145:
	.loc 1 115 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 3, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE144:
.LBE143:
.LBE140:
.LBE139:
.LBB146:
.LBB147:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE147:
.LBE146:
	.loc 1 118 0
#APP
	# 118 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 119 0
#NO_APP
	ret
.LFE206:
	.size	IfxCpu_Trap_contextManagementError, .-IfxCpu_Trap_contextManagementError
.section .text.IfxCpu_Trap_busError,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_busError
	.type	IfxCpu_Trap_busError, @function
IfxCpu_Trap_busError:
.LFB207:
	.loc 1 123 0
.LVL12:
.LBB148:
.LBB149:
.LBB150:
.LBB151:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL13:
#NO_APP
.LBE151:
.LBE150:
.LBB152:
.LBB153:
.LBB154:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL14:
#NO_APP
.LBE154:
	.loc 1 124 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 4, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE153:
.LBE152:
.LBE149:
.LBE148:
.LBB155:
.LBB156:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE156:
.LBE155:
	.loc 1 127 0
#APP
	# 127 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 128 0
#NO_APP
	ret
.LFE207:
	.size	IfxCpu_Trap_busError, .-IfxCpu_Trap_busError
.section .text.IfxCpu_Trap_assertion,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_assertion
	.type	IfxCpu_Trap_assertion, @function
IfxCpu_Trap_assertion:
.LFB208:
	.loc 1 132 0
.LVL15:
.LBB157:
.LBB158:
.LBB159:
.LBB160:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL16:
#NO_APP
.LBE160:
.LBE159:
.LBB161:
.LBB162:
.LBB163:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL17:
#NO_APP
.LBE163:
	.loc 1 133 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 5, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE162:
.LBE161:
.LBE158:
.LBE157:
.LBB164:
.LBB165:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE165:
.LBE164:
	.loc 1 136 0
#APP
	# 136 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 137 0
#NO_APP
	ret
.LFE208:
	.size	IfxCpu_Trap_assertion, .-IfxCpu_Trap_assertion
.section .text.IfxCpu_Trap_systemCall_Cpu0,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu0
	.type	IfxCpu_Trap_systemCall_Cpu0, @function
IfxCpu_Trap_systemCall_Cpu0:
.LFB209:
	.loc 1 141 0
.LVL18:
.LBB166:
.LBB167:
.LBB168:
.LBB169:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL19:
#NO_APP
.LBE169:
.LBE168:
.LBB170:
.LBB171:
.LBB172:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL20:
#NO_APP
.LBE172:
	.loc 1 142 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 6, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE171:
.LBE170:
.LBE167:
.LBE166:
	.loc 1 144 0
#APP
	# 144 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 145 0
#NO_APP
	ret
.LFE209:
	.size	IfxCpu_Trap_systemCall_Cpu0, .-IfxCpu_Trap_systemCall_Cpu0
.section .text.IfxCpu_Trap_nonMaskableInterrupt,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_nonMaskableInterrupt
	.type	IfxCpu_Trap_nonMaskableInterrupt, @function
IfxCpu_Trap_nonMaskableInterrupt:
.LFB215:
	.loc 1 189 0
.LVL21:
.LBB173:
.LBB174:
.LBB175:
.LBB176:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL22:
#NO_APP
.LBE176:
.LBE175:
.LBB177:
.LBB178:
.LBB179:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL23:
#NO_APP
.LBE179:
	.loc 1 190 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 7, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE178:
.LBE177:
.LBE174:
.LBE173:
.LBB180:
.LBB181:
	.loc 2 1339 0
#APP
	# 1339 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	debug
	# 0 "" 2
#NO_APP
.LBE181:
.LBE180:
	.loc 1 193 0
#APP
	# 193 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 194 0
#NO_APP
	ret
.LFE215:
	.size	IfxCpu_Trap_nonMaskableInterrupt, .-IfxCpu_Trap_nonMaskableInterrupt
.section .text.IfxCpu_Trap_systemCall_Cpu1,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu1
	.type	IfxCpu_Trap_systemCall_Cpu1, @function
IfxCpu_Trap_systemCall_Cpu1:
.LFB210:
	.loc 1 149 0
.LVL24:
.LBB182:
.LBB183:
.LBB184:
.LBB185:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL25:
#NO_APP
.LBE185:
.LBE184:
.LBB186:
.LBB187:
.LBB188:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL26:
#NO_APP
.LBE188:
	.loc 1 150 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 6, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE187:
.LBE186:
.LBE183:
.LBE182:
	.loc 1 152 0
#APP
	# 152 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 153 0
#NO_APP
	ret
.LFE210:
	.size	IfxCpu_Trap_systemCall_Cpu1, .-IfxCpu_Trap_systemCall_Cpu1
.section .text.IfxCpu_Trap_systemCall_Cpu2,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu2
	.type	IfxCpu_Trap_systemCall_Cpu2, @function
IfxCpu_Trap_systemCall_Cpu2:
.LFB211:
	.loc 1 157 0
.LVL27:
.LBB189:
.LBB190:
.LBB191:
.LBB192:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL28:
#NO_APP
.LBE192:
.LBE191:
.LBB193:
.LBB194:
.LBB195:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL29:
#NO_APP
.LBE195:
	.loc 1 158 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 6, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE194:
.LBE193:
.LBE190:
.LBE189:
	.loc 1 160 0
#APP
	# 160 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 161 0
#NO_APP
	ret
.LFE211:
	.size	IfxCpu_Trap_systemCall_Cpu2, .-IfxCpu_Trap_systemCall_Cpu2
.section .text.IfxCpu_Trap_systemCall_Cpu3,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu3
	.type	IfxCpu_Trap_systemCall_Cpu3, @function
IfxCpu_Trap_systemCall_Cpu3:
.LFB212:
	.loc 1 165 0
.LVL30:
.LBB196:
.LBB197:
.LBB198:
.LBB199:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL31:
#NO_APP
.LBE199:
.LBE198:
.LBB200:
.LBB201:
.LBB202:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL32:
#NO_APP
.LBE202:
	.loc 1 166 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 6, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE201:
.LBE200:
.LBE197:
.LBE196:
	.loc 1 168 0
#APP
	# 168 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 169 0
#NO_APP
	ret
.LFE212:
	.size	IfxCpu_Trap_systemCall_Cpu3, .-IfxCpu_Trap_systemCall_Cpu3
.section .text.IfxCpu_Trap_systemCall_Cpu4,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu4
	.type	IfxCpu_Trap_systemCall_Cpu4, @function
IfxCpu_Trap_systemCall_Cpu4:
.LFB213:
	.loc 1 173 0
.LVL33:
.LBB203:
.LBB204:
.LBB205:
.LBB206:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL34:
#NO_APP
.LBE206:
.LBE205:
.LBB207:
.LBB208:
.LBB209:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL35:
#NO_APP
.LBE209:
	.loc 1 174 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 6, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE208:
.LBE207:
.LBE204:
.LBE203:
	.loc 1 176 0
#APP
	# 176 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 177 0
#NO_APP
	ret
.LFE213:
	.size	IfxCpu_Trap_systemCall_Cpu4, .-IfxCpu_Trap_systemCall_Cpu4
.section .text.IfxCpu_Trap_systemCall_Cpu5,"ax",@progbits
	.align 1
	.global	IfxCpu_Trap_systemCall_Cpu5
	.type	IfxCpu_Trap_systemCall_Cpu5, @function
IfxCpu_Trap_systemCall_Cpu5:
.LFB214:
	.loc 1 181 0
.LVL36:
.LBB210:
.LBB211:
.LBB212:
.LBB213:
	.loc 2 1485 0
#APP
	# 1485 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	mov.aa %a2, %a11
	# 0 "" 2
.LVL37:
#NO_APP
.LBE213:
.LBE212:
.LBB214:
.LBB215:
.LBB216:
	.loc 3 677 0
#APP
	# 677 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL38:
#NO_APP
.LBE216:
	.loc 1 182 0
	movh.a	%a3, hi:trapWatch
	lea	%a15, [%a3] lo:trapWatch
	st.a	[%a3] lo:trapWatch, %a2
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, %d4, 0, 8
	insert	%d15, %d15, 6, 8, 8
	insert	%d15, %d15, %d2, 16, 3
	st.w	[%a15] 4, %d15
.LBE215:
.LBE214:
.LBE211:
.LBE210:
	.loc 1 184 0
#APP
	# 184 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 185 0
#NO_APP
	ret
.LFE214:
	.size	IfxCpu_Trap_systemCall_Cpu5, .-IfxCpu_Trap_systemCall_Cpu5
.section .traptab_cpu0,"awx",@progbits
	.align 1
	.global	IfxCpu_Trap_vectorTable0
	.type	IfxCpu_Trap_vectorTable0, @function
IfxCpu_Trap_vectorTable0:
.LFB216:
	.loc 1 211 0
	.loc 1 212 0
#APP
	# 212 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 212 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_memoryManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_memoryManagementError
#APP
	# 212 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 212 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 213 0
	# 213 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 213 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_internalProtectionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_internalProtectionError
#APP
	# 213 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 213 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 214 0
	# 214 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 214 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_instructionError
	lea	%a15, [%a15] lo:IfxCpu_Trap_instructionError
#APP
	# 214 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 214 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 215 0
	# 215 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 215 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_contextManagementError
	lea	%a15, [%a15] lo:IfxCpu_Trap_contextManagementError
#APP
	# 215 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 215 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 216 0
	# 216 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 216 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_busError
	lea	%a15, [%a15] lo:IfxCpu_Trap_busError
#APP
	# 216 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 216 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 217 0
	# 217 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 217 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_assertion
	lea	%a15, [%a15] lo:IfxCpu_Trap_assertion
#APP
	# 217 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 217 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 218 0
	# 218 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 218 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_systemCall_Cpu0
	lea	%a15, [%a15] lo:IfxCpu_Trap_systemCall_Cpu0
#APP
	# 218 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 218 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 219 0
	# 219 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	 .align 5
	# 0 "" 2
	# 219 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	mov	 %d4, %d15
	# 0 "" 2
#NO_APP
	movh.a	%a15, hi:IfxCpu_Trap_nonMaskableInterrupt
	lea	%a15, [%a15] lo:IfxCpu_Trap_nonMaskableInterrupt
#APP
	# 219 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	ji	 %a15
	# 0 "" 2
	# 219 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c" 1
	rfe
	# 0 "" 2
	.loc 1 220 0
#NO_APP
	ret
.LFE216:
	.size	IfxCpu_Trap_vectorTable0, .-IfxCpu_Trap_vectorTable0
	.global	trapWatch
.section .bss.trapWatch,"aw",@nobits
	.align 2
	.type	trapWatch, @object
	.size	trapWatch, 8
trapWatch:
	.zero	8
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
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.align 2
.LEFDE26:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.h"
	.file 6 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
	.file 8 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xfa2
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Cpu/Trap/IfxCpu_Trap.c"
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0xae
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x37
	.uaword	0x28f
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_memoryManagement"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_internalProtection"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_instructionErrors"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_contextManagement"
	.sleb128 3
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_bus"
	.sleb128 4
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_assertion"
	.sleb128 5
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_systemCall"
	.sleb128 6
	.uleb128 0x6
	.string	"IfxCpu_Trap_Class_nonMaskableInterrupt"
	.sleb128 7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0xa6
	.uaword	0x2df
	.uleb128 0x8
	.string	"tAddr"
	.byte	0x5
	.byte	0xa8
	.uaword	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"tId"
	.byte	0x5
	.byte	0xa9
	.uaword	0x2df
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"tClass"
	.byte	0x5
	.byte	0xaa
	.uaword	0x2df
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"tCpu"
	.byte	0x5
	.byte	0xab
	.uaword	0x2df
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"IfxCpu_Trap"
	.byte	0x5
	.byte	0xac
	.uaword	0x28f
	.uleb128 0xa
	.uaword	0x2df
	.uleb128 0xb
	.string	"_Ifx_CPU_CORE_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x5c
	.uaword	0x353
	.uleb128 0x9
	.string	"CORE_ID"
	.byte	0x6
	.byte	0x5e
	.uaword	0x302
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_3"
	.byte	0x6
	.byte	0x5f
	.uaword	0x302
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_CPU_CORE_ID_Bits"
	.byte	0x6
	.byte	0x60
	.uaword	0x307
	.uleb128 0xc
	.byte	0x4
	.byte	0x6
	.uahalf	0x2df
	.uaword	0x397
	.uleb128 0xd
	.string	"U"
	.byte	0x6
	.uahalf	0x2e1
	.uaword	0x2df
	.uleb128 0xd
	.string	"I"
	.byte	0x6
	.uahalf	0x2e2
	.uaword	0xc3
	.uleb128 0xd
	.string	"B"
	.byte	0x6
	.uahalf	0x2e3
	.uaword	0x353
	.byte	0
	.uleb128 0xe
	.string	"Ifx_CPU_CORE_ID"
	.byte	0x6
	.uahalf	0x2e4
	.uaword	0x36f
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.byte	0x54
	.uaword	0x3e9
	.uleb128 0x6
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu"
	.byte	0x7
	.byte	0x57
	.uaword	0x3af
	.uleb128 0xf
	.string	"__getA11"
	.byte	0x2
	.uahalf	0x5ca
	.byte	0x1
	.uaword	0x16e
	.byte	0x3
	.uaword	0x427
	.uleb128 0x10
	.string	"res"
	.byte	0x2
	.uahalf	0x5cc
	.uaword	0x427
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x11a
	.uleb128 0xf
	.string	"IfxCpu_getCoreId"
	.byte	0x3
	.uahalf	0x2a2
	.byte	0x1
	.uaword	0x3e9
	.byte	0x3
	.uaword	0x469
	.uleb128 0x10
	.string	"reg"
	.byte	0x3
	.uahalf	0x2a4
	.uaword	0x397
	.uleb128 0x12
	.uleb128 0x10
	.string	"__res"
	.byte	0x3
	.uahalf	0x2a5
	.uaword	0x2df
	.byte	0
	.byte	0
	.uleb128 0x13
	.string	"IfxCpu_Trap_extractTrapInfo"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	0x2ef
	.byte	0x3
	.uaword	0x4bf
	.uleb128 0x14
	.string	"trapClass"
	.byte	0x1
	.byte	0x4b
	.uaword	0xd9
	.uleb128 0x14
	.string	"tin"
	.byte	0x1
	.byte	0x4b
	.uaword	0x11a
	.uleb128 0x15
	.string	"trapInfo"
	.byte	0x1
	.byte	0x4d
	.uaword	0x2ef
	.byte	0
	.uleb128 0x16
	.string	"__debug"
	.byte	0x2
	.uahalf	0x539
	.byte	0x1
	.byte	0x3
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_memoryManagementError"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB203
	.uaword	.LFE203
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x5a9
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x56
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x469
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0x58
	.uaword	0x599
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0
	.uleb128 0x1c
	.uaword	.LBB113
	.uaword	.LBE113
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST0
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0x4e
	.uaword	0x567
	.uleb128 0x1c
	.uaword	.LBB115
	.uaword	.LBE115
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB117
	.uaword	.LBE117
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB118
	.uaword	.LBE118
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x4bf
	.uaword	.LBB119
	.uaword	.LBE119
	.byte	0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_internalProtectionError"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	.LFB204
	.uaword	.LFE204
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x687
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x5f
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x469
	.uaword	.LBB121
	.uaword	.LBE121
	.byte	0x1
	.byte	0x61
	.uaword	0x677
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x1
	.uleb128 0x1c
	.uaword	.LBB122
	.uaword	.LBE122
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB123
	.uaword	.LBE123
	.byte	0x1
	.byte	0x4e
	.uaword	0x645
	.uleb128 0x1c
	.uaword	.LBB124
	.uaword	.LBE124
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB125
	.uaword	.LBE125
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB126
	.uaword	.LBE126
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB127
	.uaword	.LBE127
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x4bf
	.uaword	.LBB128
	.uaword	.LBE128
	.byte	0x1
	.byte	0x63
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_instructionError"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	.LFB205
	.uaword	.LFE205
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x75e
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x68
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x469
	.uaword	.LBB130
	.uaword	.LBE130
	.byte	0x1
	.byte	0x6a
	.uaword	0x74e
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x2
	.uleb128 0x1c
	.uaword	.LBB131
	.uaword	.LBE131
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST2
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB132
	.uaword	.LBE132
	.byte	0x1
	.byte	0x4e
	.uaword	0x71c
	.uleb128 0x1c
	.uaword	.LBB133
	.uaword	.LBE133
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB135
	.uaword	.LBE135
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB136
	.uaword	.LBE136
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x4bf
	.uaword	.LBB137
	.uaword	.LBE137
	.byte	0x1
	.byte	0x6c
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_contextManagementError"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	.LFB206
	.uaword	.LFE206
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x83b
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x71
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x469
	.uaword	.LBB139
	.uaword	.LBE139
	.byte	0x1
	.byte	0x73
	.uaword	0x82b
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x3
	.uleb128 0x1c
	.uaword	.LBB140
	.uaword	.LBE140
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB141
	.uaword	.LBE141
	.byte	0x1
	.byte	0x4e
	.uaword	0x7f9
	.uleb128 0x1c
	.uaword	.LBB142
	.uaword	.LBE142
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB143
	.uaword	.LBE143
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB144
	.uaword	.LBE144
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB145
	.uaword	.LBE145
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x4bf
	.uaword	.LBB146
	.uaword	.LBE146
	.byte	0x1
	.byte	0x75
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_busError"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	.LFB207
	.uaword	.LFE207
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x90a
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x7a
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x469
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.byte	0x7c
	.uaword	0x8fa
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x4
	.uleb128 0x1c
	.uaword	.LBB149
	.uaword	.LBE149
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST4
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB150
	.uaword	.LBE150
	.byte	0x1
	.byte	0x4e
	.uaword	0x8c8
	.uleb128 0x1c
	.uaword	.LBB151
	.uaword	.LBE151
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB153
	.uaword	.LBE153
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB154
	.uaword	.LBE154
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x4bf
	.uaword	.LBB155
	.uaword	.LBE155
	.byte	0x1
	.byte	0x7e
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_assertion"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	.LFB208
	.uaword	.LFE208
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x9da
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x83
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x469
	.uaword	.LBB157
	.uaword	.LBE157
	.byte	0x1
	.byte	0x85
	.uaword	0x9ca
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x5
	.uleb128 0x1c
	.uaword	.LBB158
	.uaword	.LBE158
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST5
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB159
	.uaword	.LBE159
	.byte	0x1
	.byte	0x4e
	.uaword	0x998
	.uleb128 0x1c
	.uaword	.LBB160
	.uaword	.LBE160
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB161
	.uaword	.LBE161
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB162
	.uaword	.LBE162
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB163
	.uaword	.LBE163
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x4bf
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x1
	.byte	0x87
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu0"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	.LFB209
	.uaword	.LFE209
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xa9d
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x8c
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	0x469
	.uaword	.LBB166
	.uaword	.LBE166
	.byte	0x1
	.byte	0x8e
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x6
	.uleb128 0x1c
	.uaword	.LBB167
	.uaword	.LBE167
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST6
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB168
	.uaword	.LBE168
	.byte	0x1
	.byte	0x4e
	.uaword	0xa6a
	.uleb128 0x1c
	.uaword	.LBB169
	.uaword	.LBE169
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB170
	.uaword	.LBE170
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB171
	.uaword	.LBE171
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB172
	.uaword	.LBE172
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_nonMaskableInterrupt"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.uaword	.LFB215
	.uaword	.LFE215
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xb78
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0xbc
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	0x469
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x1
	.byte	0xbe
	.uaword	0xb68
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x7
	.uleb128 0x1c
	.uaword	.LBB174
	.uaword	.LBE174
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x1
	.byte	0x4e
	.uaword	0xb36
	.uleb128 0x1c
	.uaword	.LBB176
	.uaword	.LBE176
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB177
	.uaword	.LBE177
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB178
	.uaword	.LBE178
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB179
	.uaword	.LBE179
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x4bf
	.uaword	.LBB180
	.uaword	.LBE180
	.byte	0x1
	.byte	0xc0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu1"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	.LFB210
	.uaword	.LFE210
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xc3b
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x94
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	0x469
	.uaword	.LBB182
	.uaword	.LBE182
	.byte	0x1
	.byte	0x96
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x6
	.uleb128 0x1c
	.uaword	.LBB183
	.uaword	.LBE183
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST8
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB184
	.uaword	.LBE184
	.byte	0x1
	.byte	0x4e
	.uaword	0xc08
	.uleb128 0x1c
	.uaword	.LBB185
	.uaword	.LBE185
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB186
	.uaword	.LBE186
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB187
	.uaword	.LBE187
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB188
	.uaword	.LBE188
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu2"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	.LFB211
	.uaword	.LFE211
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xcfe
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0x9c
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	0x469
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x6
	.uleb128 0x1c
	.uaword	.LBB190
	.uaword	.LBE190
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST9
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x1
	.byte	0x4e
	.uaword	0xccb
	.uleb128 0x1c
	.uaword	.LBB192
	.uaword	.LBE192
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB194
	.uaword	.LBE194
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB195
	.uaword	.LBE195
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu3"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.uaword	.LFB212
	.uaword	.LFE212
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xdc1
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0xa4
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	0x469
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x6
	.uleb128 0x1c
	.uaword	.LBB197
	.uaword	.LBE197
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST10
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB198
	.uaword	.LBE198
	.byte	0x1
	.byte	0x4e
	.uaword	0xd8e
	.uleb128 0x1c
	.uaword	.LBB199
	.uaword	.LBE199
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB200
	.uaword	.LBE200
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB201
	.uaword	.LBE201
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB202
	.uaword	.LBE202
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu4"
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.uaword	.LFB213
	.uaword	.LFE213
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xe84
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0xac
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	0x469
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x1
	.byte	0xae
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x6
	.uleb128 0x1c
	.uaword	.LBB204
	.uaword	.LBE204
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST11
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x1
	.byte	0x4e
	.uaword	0xe51
	.uleb128 0x1c
	.uaword	.LBB206
	.uaword	.LBE206
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB208
	.uaword	.LBE208
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB209
	.uaword	.LBE209
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IfxCpu_Trap_systemCall_Cpu5"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.uaword	.LFB214
	.uaword	.LFE214
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0xf47
	.uleb128 0x18
	.string	"tin"
	.byte	0x1
	.byte	0xb4
	.uaword	0x11a
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	0x469
	.uaword	.LBB210
	.uaword	.LBE210
	.byte	0x1
	.byte	0xb6
	.uleb128 0x1a
	.uaword	0x4a3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x492
	.byte	0x6
	.uleb128 0x1c
	.uaword	.LBB211
	.uaword	.LBE211
	.uleb128 0x1d
	.uaword	0x4ae
	.uaword	.LLST12
	.uleb128 0x19
	.uaword	0x403
	.uaword	.LBB212
	.uaword	.LBE212
	.byte	0x1
	.byte	0x4e
	.uaword	0xf14
	.uleb128 0x1c
	.uaword	.LBB213
	.uaword	.LBE213
	.uleb128 0x1e
	.uaword	0x41a
	.byte	0x1
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42d
	.uaword	.LBB214
	.uaword	.LBE214
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LBB215
	.uaword	.LBE215
	.uleb128 0x20
	.uaword	0x44c
	.uleb128 0x1c
	.uaword	.LBB216
	.uaword	.LBE216
	.uleb128 0x1e
	.uaword	0x459
	.byte	0x1
	.byte	0x52
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IfxCpu_Trap_vectorTable0"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.uaword	.LFB216
	.uaword	.LFE216
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x23
	.string	"Assert_verboseLevel"
	.byte	0x8
	.byte	0x7b
	.uaword	0x11a
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"trapWatch"
	.byte	0x1
	.byte	0x46
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	trapWatch
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
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL2
	.uaword	.LFE203
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL5
	.uaword	.LFE204
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x32
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL8
	.uaword	.LFE205
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x32
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x33
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL11
	.uaword	.LFE206
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x33
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL14
	.uaword	.LFE207
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x35
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL17
	.uaword	.LFE208
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x35
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL20
	.uaword	.LFE209
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x37
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL23
	.uaword	.LFE215
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x37
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL26
	.uaword	.LFE210
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL29
	.uaword	.LFE211
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL32
	.uaword	.LFE212
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL35
	.uaword	.LFE213
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL38
	.uaword	.LFE214
	.uahalf	0x15
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x36
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x72
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x3
	.uleb128 0
	.byte	0x9d
	.uleb128 0xd
	.uleb128 0
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
	.uaword	.LFB203
	.uaword	.LFE203-.LFB203
	.uaword	.LFB204
	.uaword	.LFE204-.LFB204
	.uaword	.LFB205
	.uaword	.LFE205-.LFB205
	.uaword	.LFB206
	.uaword	.LFE206-.LFB206
	.uaword	.LFB207
	.uaword	.LFE207-.LFB207
	.uaword	.LFB208
	.uaword	.LFE208-.LFB208
	.uaword	.LFB209
	.uaword	.LFE209-.LFB209
	.uaword	.LFB215
	.uaword	.LFE215-.LFB215
	.uaword	.LFB210
	.uaword	.LFE210-.LFB210
	.uaword	.LFB211
	.uaword	.LFE211-.LFB211
	.uaword	.LFB212
	.uaword	.LFE212-.LFB212
	.uaword	.LFB213
	.uaword	.LFE213-.LFB213
	.uaword	.LFB214
	.uaword	.LFE214-.LFB214
	.uaword	.LFB216
	.uaword	.LFE216-.LFB216
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB203
	.uaword	.LFE203
	.uaword	.LFB204
	.uaword	.LFE204
	.uaword	.LFB205
	.uaword	.LFE205
	.uaword	.LFB206
	.uaword	.LFE206
	.uaword	.LFB207
	.uaword	.LFE207
	.uaword	.LFB208
	.uaword	.LFE208
	.uaword	.LFB209
	.uaword	.LFE209
	.uaword	.LFB215
	.uaword	.LFE215
	.uaword	.LFB210
	.uaword	.LFE210
	.uaword	.LFB211
	.uaword	.LFE211
	.uaword	.LFB212
	.uaword	.LFE212
	.uaword	.LFB213
	.uaword	.LFE213
	.uaword	.LFB214
	.uaword	.LFE214
	.uaword	.LFB216
	.uaword	.LFE216
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
