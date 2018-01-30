	.file	"IfxFlash.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxFlash_clearCorrectableErrorTracking,"ax",@progbits
	.align 1
	.global	IfxFlash_clearCorrectableErrorTracking
	.type	IfxFlash_clearCorrectableErrorTracking, @function
IfxFlash_clearCorrectableErrorTracking:
.LFB166:
	.file 1 "0_Src/4_McHal/Tricore/Flash/Std/IfxFlash.c"
	.loc 1 37 0
.LVL0:
	.loc 1 38 0
	sh	%d15, %d4, 1
	add	%d4, %d15
.LVL1:
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 16
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4276
	insert	%d15, %d15, 1, 8, 1
	st.w	[%a15] 4276, %d15
	.loc 1 39 0
	ret
.LFE166:
	.size	IfxFlash_clearCorrectableErrorTracking, .-IfxFlash_clearCorrectableErrorTracking
.section .text.IfxFlash_clearStatus,"ax",@progbits
	.align 1
	.global	IfxFlash_clearStatus
	.type	IfxFlash_clearStatus, @function
IfxFlash_clearStatus:
.LFB167:
	.loc 1 43 0
.LVL2:
	.loc 1 46 0
	mov	%d15, 250
	movh.a	%a15, hi:-1358932652
	lea	%a15, [%a15] lo:-1358932652
	st.w	[%a15]0, %d15
.LBB46:
.LBB47:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE47:
.LBE46:
	.loc 1 49 0
	ret
.LFE167:
	.size	IfxFlash_clearStatus, .-IfxFlash_clearStatus
.section .text.IfxFlash_clearUncorrectableErrorTracking,"ax",@progbits
	.align 1
	.global	IfxFlash_clearUncorrectableErrorTracking
	.type	IfxFlash_clearUncorrectableErrorTracking, @function
IfxFlash_clearUncorrectableErrorTracking:
.LFB168:
	.loc 1 53 0
.LVL3:
	.loc 1 54 0
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 92
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4324
	insert	%d15, %d15, 1, 8, 1
	st.w	[%a15] 4324, %d15
	.loc 1 55 0
	ret
.LFE168:
	.size	IfxFlash_clearUncorrectableErrorTracking, .-IfxFlash_clearUncorrectableErrorTracking
.section .text.IfxFlash_disableCorrectableErrorTracking,"ax",@progbits
	.align 1
	.global	IfxFlash_disableCorrectableErrorTracking
	.type	IfxFlash_disableCorrectableErrorTracking, @function
IfxFlash_disableCorrectableErrorTracking:
.LFB169:
	.loc 1 59 0
.LVL4:
	.loc 1 60 0
	sh	%d15, %d4, 1
	add	%d4, %d15
.LVL5:
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 16
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4276
	ins.t	%d15, %d15,9, %d5,0
	st.w	[%a15] 4276, %d15
	.loc 1 61 0
	ret
.LFE169:
	.size	IfxFlash_disableCorrectableErrorTracking, .-IfxFlash_disableCorrectableErrorTracking
.section .text.IfxFlash_disableUncorrectableErrorTracking,"ax",@progbits
	.align 1
	.global	IfxFlash_disableUncorrectableErrorTracking
	.type	IfxFlash_disableUncorrectableErrorTracking, @function
IfxFlash_disableUncorrectableErrorTracking:
.LFB170:
	.loc 1 65 0
.LVL6:
	.loc 1 66 0
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 92
	mov.a	%a15, %d2
	ld.w	%d15, [%a15] 4324
	ins.t	%d15, %d15,9, %d5,0
	st.w	[%a15] 4324, %d15
	.loc 1 67 0
	ret
.LFE170:
	.size	IfxFlash_disableUncorrectableErrorTracking, .-IfxFlash_disableUncorrectableErrorTracking
.section .text.IfxFlash_disableWriteProtection,"ax",@progbits
	.align 1
	.global	IfxFlash_disableWriteProtection
	.type	IfxFlash_disableWriteProtection, @function
IfxFlash_disableWriteProtection:
.LFB171:
	.loc 1 71 0
.LVL7:
	.loc 1 75 0
	movh.a	%a15, hi:-1358932676
	lea	%a15, [%a15] lo:-1358932676
	.loc 1 79 0
	movh.a	%a2, hi:-1358932676
	.loc 1 75 0
	st.w	[%a15]0, %d5
.LVL8:
	.loc 1 79 0
	lea	%a2, [%a2] lo:-1358932676
	mov.a	%a15, 7
.LVL9:
.L7:
	.loc 1 79 0 is_stmt 0 discriminator 2
	ld.w	%d15, [%a4+]4
	st.w	[%a2]0, %d15
	.loc 1 77 0 is_stmt 1 discriminator 2
	loop	%a15, .L7
.LBB48:
.LBB49:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE49:
.LBE48:
	.loc 1 83 0
	ret
.LFE171:
	.size	IfxFlash_disableWriteProtection, .-IfxFlash_disableWriteProtection
.section .text.IfxFlash_enterPageMode,"ax",@progbits
	.align 1
	.global	IfxFlash_enterPageMode
	.type	IfxFlash_enterPageMode, @function
IfxFlash_enterPageMode:
.LFB172:
	.loc 1 87 0
.LVL10:
	.loc 1 90 0
	insert	%d4, %d4, 0, 0, 24
.LVL11:
	movh	%d15, 40960
	jeq	%d4, %d15, .L14
	.loc 1 95 0
	movh	%d15, 44800
	jeq	%d4, %d15, .L15
.LBB50:
.LBB51:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE51:
.LBE50:
	.loc 1 102 0
	mov	%d2, 1
	.loc 1 103 0
	ret
.L14:
	.loc 1 92 0
	mov	%d15, 80
	movh.a	%a15, hi:-1358932652
	lea	%a15, [%a15] lo:-1358932652
	st.w	[%a15]0, %d15
	.loc 1 93 0
	mov	%d2, 0
	ret
.L15:
	.loc 1 97 0
	mov	%d15, 93
	movh.a	%a15, hi:-1358932652
	lea	%a15, [%a15] lo:-1358932652
	st.w	[%a15]0, %d15
	.loc 1 98 0
	mov	%d2, 0
	ret
.LFE172:
	.size	IfxFlash_enterPageMode, .-IfxFlash_enterPageMode
.section .text.IfxFlash_eraseMultiplePhysicalSectors,"ax",@progbits
	.align 1
	.global	IfxFlash_eraseMultiplePhysicalSectors
	.type	IfxFlash_eraseMultiplePhysicalSectors, @function
IfxFlash_eraseMultiplePhysicalSectors:
.LFB173:
	.loc 1 107 0
.LVL12:
	.loc 1 113 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	st.w	[%a15]0, %d4
	.loc 1 114 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	.loc 1 115 0
	mov	%d15, 128
	.loc 1 114 0
	st.w	[%a15]0, %d5
	.loc 1 115 0
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 116 0
	mov	%d15, 90
	st.w	[%a15]0, %d15
.LBB52:
.LBB53:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE53:
.LBE52:
	.loc 1 119 0
	ret
.LFE173:
	.size	IfxFlash_eraseMultiplePhysicalSectors, .-IfxFlash_eraseMultiplePhysicalSectors
.section .text.IfxFlash_eraseMultipleSectors,"ax",@progbits
	.align 1
	.global	IfxFlash_eraseMultipleSectors
	.type	IfxFlash_eraseMultipleSectors, @function
IfxFlash_eraseMultipleSectors:
.LFB174:
	.loc 1 123 0
.LVL13:
	.loc 1 129 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	st.w	[%a15]0, %d4
	.loc 1 130 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	.loc 1 131 0
	mov	%d15, 128
	.loc 1 130 0
	st.w	[%a15]0, %d5
	.loc 1 131 0
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 132 0
	mov	%d15, 80
	st.w	[%a15]0, %d15
.LBB54:
.LBB55:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE55:
.LBE54:
	.loc 1 135 0
	ret
.LFE174:
	.size	IfxFlash_eraseMultipleSectors, .-IfxFlash_eraseMultipleSectors
.section .text.IfxFlash_erasePhysicalSector,"ax",@progbits
	.align 1
	.global	IfxFlash_erasePhysicalSector
	.type	IfxFlash_erasePhysicalSector, @function
IfxFlash_erasePhysicalSector:
.LFB175:
	.loc 1 139 0
.LVL14:
	.loc 1 145 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	.loc 1 146 0
	mov	%d15, 1
	.loc 1 145 0
	st.w	[%a15]0, %d4
	.loc 1 146 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	st.w	[%a15]0, %d15
	.loc 1 147 0
	mov	%d15, 128
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 148 0
	mov	%d15, 90
	st.w	[%a15]0, %d15
.LBB56:
.LBB57:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE57:
.LBE56:
	.loc 1 151 0
	ret
.LFE175:
	.size	IfxFlash_erasePhysicalSector, .-IfxFlash_erasePhysicalSector
.section .text.IfxFlash_eraseSector,"ax",@progbits
	.align 1
	.global	IfxFlash_eraseSector
	.type	IfxFlash_eraseSector, @function
IfxFlash_eraseSector:
.LFB176:
	.loc 1 155 0
.LVL15:
	.loc 1 161 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	.loc 1 162 0
	mov	%d15, 1
	.loc 1 161 0
	st.w	[%a15]0, %d4
	.loc 1 162 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	st.w	[%a15]0, %d15
	.loc 1 163 0
	mov	%d15, 128
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 164 0
	mov	%d15, 80
	st.w	[%a15]0, %d15
.LBB58:
.LBB59:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE59:
.LBE58:
	.loc 1 167 0
	ret
.LFE176:
	.size	IfxFlash_eraseSector, .-IfxFlash_eraseSector
.section .text.IfxFlash_eraseVerifyMultipleSectors,"ax",@progbits
	.align 1
	.global	IfxFlash_eraseVerifyMultipleSectors
	.type	IfxFlash_eraseVerifyMultipleSectors, @function
IfxFlash_eraseVerifyMultipleSectors:
.LFB177:
	.loc 1 171 0
.LVL16:
	.loc 1 177 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	st.w	[%a15]0, %d4
	.loc 1 178 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	.loc 1 179 0
	mov	%d15, 128
	.loc 1 178 0
	st.w	[%a15]0, %d5
	.loc 1 179 0
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 180 0
	mov	%d15, 95
	st.w	[%a15]0, %d15
.LBB60:
.LBB61:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE61:
.LBE60:
	.loc 1 183 0
	ret
.LFE177:
	.size	IfxFlash_eraseVerifyMultipleSectors, .-IfxFlash_eraseVerifyMultipleSectors
.section .text.IfxFlash_eraseVerifySector,"ax",@progbits
	.align 1
	.global	IfxFlash_eraseVerifySector
	.type	IfxFlash_eraseVerifySector, @function
IfxFlash_eraseVerifySector:
.LFB178:
	.loc 1 187 0
.LVL17:
	.loc 1 193 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	.loc 1 194 0
	mov	%d15, 1
	.loc 1 193 0
	st.w	[%a15]0, %d4
	.loc 1 194 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	st.w	[%a15]0, %d15
	.loc 1 195 0
	mov	%d15, 128
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 196 0
	mov	%d15, 95
	st.w	[%a15]0, %d15
.LBB62:
.LBB63:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE63:
.LBE62:
	.loc 1 199 0
	ret
.LFE178:
	.size	IfxFlash_eraseVerifySector, .-IfxFlash_eraseVerifySector
.section .text.IfxFlash_getTrackedCorrectableErrors,"ax",@progbits
	.align 1
	.global	IfxFlash_getTrackedCorrectableErrors
	.type	IfxFlash_getTrackedCorrectableErrors, @function
IfxFlash_getTrackedCorrectableErrors:
.LFB179:
	.loc 1 203 0
.LVL18:
	.loc 1 205 0
	sh	%d15, %d4, 1
	add	%d4, %d15
.LVL19:
	movh	%d15, 63488
	addi	%d15, %d15, 4096
	madd	%d2, %d15, %d4, 16
.LBB64:
	.loc 1 219 0
	movh	%d7, 40960
	.loc 1 225 0
	movh	%d5, 32768
.LBE64:
	.loc 1 205 0
	mov.a	%a2, %d2
.LBB65:
	.loc 1 225 0
	mov.a	%a15, 9
.LBE65:
	.loc 1 205 0
	ld.w	%d4, [%a2] 4280
.LVL20:
	.loc 1 204 0
	mov	%e2, 0
.LVL21:
.L23:
	.loc 1 211 0
	extr.u	%d15, %d4, %d3, 1
	.loc 1 210 0
	jz	%d15, .L28
.LBB66:
	.loc 1 215 0
	ld.w	%d15, [%a2] 4284
	.loc 1 217 0
	jz.t	%d15, 30, .L24
	.loc 1 219 0
	extr.u	%d6, %d15, 5, 19
	.loc 1 220 0
	extr.u	%d15, %d15, 24, 6
	.loc 1 219 0
	sh	%d6, 5
	or	%d6, %d7
	addsc.a	%a3, %a4, %d2, 3
	.loc 1 221 0
	add	%d2, 1
.LVL22:
	.loc 1 219 0
	st.w	[%a3]0, %d6
	.loc 1 220 0
	st.w	[%a3] 4, %d15
.LVL23:
.L24:
	.loc 1 225 0
	st.w	[%a2] 4284, %d5
.LBE66:
	.loc 1 212 0
	add	%d3, 1
.LVL24:
	.loc 1 209 0
	loop	%a15, .L23
	ret
.LVL25:
.L28:
	.loc 1 229 0
	ret
.LFE179:
	.size	IfxFlash_getTrackedCorrectableErrors, .-IfxFlash_getTrackedCorrectableErrors
.section .text.IfxFlash_getTrackedUncorrectableErrors,"ax",@progbits
	.align 1
	.global	IfxFlash_getTrackedUncorrectableErrors
	.type	IfxFlash_getTrackedUncorrectableErrors, @function
IfxFlash_getTrackedUncorrectableErrors:
.LFB180:
	.loc 1 233 0
.LVL26:
	.loc 1 235 0
	mul	%d4, %d4, 92
.LVL27:
	movh.a	%a15, hi:-134213632
	lea	%a15, [%a15] lo:-134213632
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 234 0
	mov	%d2, 0
	.loc 1 235 0
	ld.w	%d15, [%a15] 4328
.LVL28:
	.loc 1 240 0
	jz.t	%d15, 0, .L30
.LBB67:
	.loc 1 245 0
	ld.w	%d15, [%a15] 4332
.LVL29:
	.loc 1 247 0
	jz.t	%d15, 30, .L31
	.loc 1 249 0
	extr.u	%d2, %d15, 5, 19
	movh	%d3, 40960
	sh	%d2, 5
	.loc 1 250 0
	extr.u	%d15, %d15, 24, 6
	.loc 1 249 0
	or	%d2, %d3
	.loc 1 250 0
	st.w	[%a4] 4, %d15
.LVL30:
	.loc 1 249 0
	st.w	[%a4]0, %d2
	.loc 1 251 0
	mov	%d2, 1
.LVL31:
.L31:
	.loc 1 255 0
	movh.a	%a15, hi:-134213632
	lea	%a15, [%a15] lo:-134213632
	movh	%d15, 32768
	addsc.a	%a15, %a15, %d4, 0
	st.w	[%a15] 4332, %d15
.LVL32:
.L30:
.LBE67:
	.loc 1 259 0
	ret
.LFE180:
	.size	IfxFlash_getTrackedUncorrectableErrors, .-IfxFlash_getTrackedUncorrectableErrors
.section .text.IfxFlash_loadPage,"ax",@progbits
	.align 1
	.global	IfxFlash_loadPage
	.type	IfxFlash_loadPage, @function
IfxFlash_loadPage:
.LFB181:
	.loc 1 263 0
.LVL33:
.LBB68:
.LBB69:
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
	.loc 3 139 0
	mov	%e2, %d6, %d5
.LVL34:
.LBB70:
.LBB71:
	.loc 3 120 0
	movh.a	%a15, hi:-1358932496
	lea	%a15, [%a15] lo:-1358932496
	st.d	[%a15]0, %e2
.LBE71:
.LBE70:
.LBE69:
.LBE68:
.LBB72:
.LBB73:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE73:
.LBE72:
	.loc 1 269 0
	ret
.LFE181:
	.size	IfxFlash_loadPage, .-IfxFlash_loadPage
.section .text.IfxFlash_loadPage2X32,"ax",@progbits
	.align 1
	.global	IfxFlash_loadPage2X32
	.type	IfxFlash_loadPage2X32, @function
IfxFlash_loadPage2X32:
.LFB182:
	.loc 1 273 0
.LVL35:
	.loc 1 276 0
	movh.a	%a15, hi:-1358932496
	lea	%a15, [%a15] lo:-1358932496
	st.w	[%a15]0, %d5
.LVL36:
	.loc 1 278 0
	movh.a	%a15, hi:-1358932492
	lea	%a15, [%a15] lo:-1358932492
	st.w	[%a15]0, %d6
.LBB74:
.LBB75:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE75:
.LBE74:
	.loc 1 281 0
	ret
.LFE182:
	.size	IfxFlash_loadPage2X32, .-IfxFlash_loadPage2X32
.section .text.IfxFlash_resetToRead,"ax",@progbits
	.align 1
	.global	IfxFlash_resetToRead
	.type	IfxFlash_resetToRead, @function
IfxFlash_resetToRead:
.LFB183:
	.loc 1 285 0
.LVL37:
	.loc 1 287 0
	mov	%d15, 240
	movh.a	%a15, hi:-1358932652
	lea	%a15, [%a15] lo:-1358932652
	st.w	[%a15]0, %d15
.LBB76:
.LBB77:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE77:
.LBE76:
	.loc 1 290 0
	ret
.LFE183:
	.size	IfxFlash_resetToRead, .-IfxFlash_resetToRead
.section .text.IfxFlash_resumeProtection,"ax",@progbits
	.align 1
	.global	IfxFlash_resumeProtection
	.type	IfxFlash_resumeProtection, @function
IfxFlash_resumeProtection:
.LFB184:
	.loc 1 294 0
.LVL38:
	.loc 1 297 0
	mov	%d15, 245
	movh.a	%a15, hi:-1358932652
	lea	%a15, [%a15] lo:-1358932652
	st.w	[%a15]0, %d15
.LBB78:
.LBB79:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE79:
.LBE78:
	.loc 1 300 0
	ret
.LFE184:
	.size	IfxFlash_resumeProtection, .-IfxFlash_resumeProtection
.section .rodata,"a",@progbits
.LC0:
	.string	"errorTracking == IfxFlash_ErrorTracking_none || errorTracking == IfxFlash_ErrorTracking_correctedSingleBitError || errorTracking == IfxFlash_ErrorTracking_correctedDoubleBitError || errorTracking == IfxFlash_ErrorTracking_correctedSingleOrDoubleBitError"
.LC1:
	.string	"0_Src/4_McHal/Tricore/Flash/Std/IfxFlash.c"
.section .text.IfxFlash_selectCorrectableErrorTracking,"ax",@progbits
	.align 1
	.global	IfxFlash_selectCorrectableErrorTracking
	.type	IfxFlash_selectCorrectableErrorTracking, @function
IfxFlash_selectCorrectableErrorTracking:
.LFB185:
	.loc 1 304 0
.LVL39:
	.loc 1 304 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 305 0
	jlt.u	%d5, 4, .L39
	.loc 1 305 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Assert_verboseLevel
	ld.w	%d2, [%a15] lo:Assert_verboseLevel
	jlt.u	%d2, 2, .L39
	.loc 1 305 0 discriminator 2
	movh.a	%a4, hi:.LC0
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.3075
	mov	%d4, 2
.LVL40:
	lea	%a4, [%a4] lo:.LC0
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 309
.LVL41:
	lea	%a6, [%a6] lo:__func__.3075
	call	Ifx_Assert_doLevel
.L39:
	.loc 1 311 0 is_stmt 1
	sh	%d2, %d15, 1
	add	%d15, %d2
.LVL42:
	movh	%d2, 63488
	addi	%d2, %d2, 4096
	madd	%d3, %d2, %d15, 16
	mov.a	%a15, %d3
	ld.w	%d15, [%a15] 4276
	insert	%d15, %d15, %d8, 0, 6
	st.w	[%a15] 4276, %d15
	.loc 1 312 0
	ret
.LFE185:
	.size	IfxFlash_selectCorrectableErrorTracking, .-IfxFlash_selectCorrectableErrorTracking
.section .rodata,"a",@progbits
.LC2:
	.string	"errorTracking == IfxFlash_ErrorTracking_none || errorTracking == IfxFlash_ErrorTracking_uncorrectableMultiBitError"
.section .text.IfxFlash_selectUncorrectableErrorTracking,"ax",@progbits
	.align 1
	.global	IfxFlash_selectUncorrectableErrorTracking
	.type	IfxFlash_selectUncorrectableErrorTracking, @function
IfxFlash_selectUncorrectableErrorTracking:
.LFB186:
	.loc 1 316 0
.LVL43:
	.loc 1 317 0
	ne	%d2, %d5, 0
	and.ne	%d2, %d5, 4
	.loc 1 316 0
	mov	%d8, %d4
	mov	%d15, %d5
	.loc 1 317 0
	jz	%d2, .L41
	.loc 1 317 0 is_stmt 0 discriminator 1
	movh.a	%a15, hi:Assert_verboseLevel
	ld.w	%d2, [%a15] lo:Assert_verboseLevel
	jlt.u	%d2, 2, .L41
	.loc 1 317 0 discriminator 2
	movh.a	%a4, hi:.LC2
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.3080
	mov	%d4, 2
.LVL44:
	lea	%a4, [%a4] lo:.LC2
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 319
.LVL45:
	lea	%a6, [%a6] lo:__func__.3080
	call	Ifx_Assert_doLevel
.L41:
	.loc 1 321 0 is_stmt 1
	movh	%d2, 63488
	addi	%d2, %d2, 4096
	madd	%d3, %d2, %d8, 92
	mov.a	%a15, %d3
	ld.w	%d2, [%a15] 4324
	insert	%d2, %d2, %d15, 0, 6
	st.w	[%a15] 4324, %d2
	.loc 1 322 0
	ret
.LFE186:
	.size	IfxFlash_selectUncorrectableErrorTracking, .-IfxFlash_selectUncorrectableErrorTracking
.section .text.IfxFlash_suspendResumeMultipleSectors,"ax",@progbits
	.align 1
	.global	IfxFlash_suspendResumeMultipleSectors
	.type	IfxFlash_suspendResumeMultipleSectors, @function
IfxFlash_suspendResumeMultipleSectors:
.LFB187:
	.loc 1 326 0
.LVL46:
	.loc 1 332 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	st.w	[%a15]0, %d4
	.loc 1 333 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	.loc 1 334 0
	mov	%d15, 112
	.loc 1 333 0
	st.w	[%a15]0, %d5
	.loc 1 334 0
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 335 0
	mov	%d15, 204
	st.w	[%a15]0, %d15
.LBB80:
.LBB81:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE81:
.LBE80:
	.loc 1 338 0
	ret
.LFE187:
	.size	IfxFlash_suspendResumeMultipleSectors, .-IfxFlash_suspendResumeMultipleSectors
.section .text.IfxFlash_suspendResumeSector,"ax",@progbits
	.align 1
	.global	IfxFlash_suspendResumeSector
	.type	IfxFlash_suspendResumeSector, @function
IfxFlash_suspendResumeSector:
.LFB188:
	.loc 1 342 0
.LVL47:
	.loc 1 348 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	.loc 1 349 0
	mov	%d15, 1
	.loc 1 348 0
	st.w	[%a15]0, %d4
	.loc 1 349 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	st.w	[%a15]0, %d15
	.loc 1 350 0
	mov	%d15, 112
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 351 0
	mov	%d15, 204
	st.w	[%a15]0, %d15
.LBB82:
.LBB83:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE83:
.LBE82:
	.loc 1 354 0
	ret
.LFE188:
	.size	IfxFlash_suspendResumeSector, .-IfxFlash_suspendResumeSector
.section .text.IfxFlash_waitUnbusy,"ax",@progbits
	.align 1
	.global	IfxFlash_waitUnbusy
	.type	IfxFlash_waitUnbusy, @function
IfxFlash_waitUnbusy:
.LFB189:
	.loc 1 358 0
.LVL48:
	.loc 1 374 0
	mov	%d2, 1
	.loc 1 359 0
	jnz	%d4, .L45
	mov	%d2, 1
	.loc 1 361 0
	movh.a	%a15, hi:-134209520
	.loc 1 359 0
	sh	%d2, %d2, %d5
	.loc 1 361 0
	lea	%a15, [%a15] lo:-134209520
.L46:
	.loc 1 361 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	and	%d15, %d2
	jnz	%d15, .L46
.LBB84:
.LBB85:
	.loc 2 1346 0 is_stmt 1
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE85:
.LBE84:
	.loc 1 377 0
	mov	%d2, 0
.L45:
	.loc 1 378 0
	ret
.LFE189:
	.size	IfxFlash_waitUnbusy, .-IfxFlash_waitUnbusy
.section .text.IfxFlash_writeBurst,"ax",@progbits
	.align 1
	.global	IfxFlash_writeBurst
	.type	IfxFlash_writeBurst, @function
IfxFlash_writeBurst:
.LFB190:
	.loc 1 382 0
.LVL49:
	.loc 1 388 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	.loc 1 389 0
	mov	%d15, 0
	.loc 1 388 0
	st.w	[%a15]0, %d4
	.loc 1 389 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	st.w	[%a15]0, %d15
	.loc 1 390 0
	mov	%d15, 160
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 391 0
	mov	%d15, 122
	st.w	[%a15]0, %d15
.LBB86:
.LBB87:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE87:
.LBE86:
	.loc 1 394 0
	ret
.LFE190:
	.size	IfxFlash_writeBurst, .-IfxFlash_writeBurst
.section .text.IfxFlash_writePage,"ax",@progbits
	.align 1
	.global	IfxFlash_writePage
	.type	IfxFlash_writePage, @function
IfxFlash_writePage:
.LFB191:
	.loc 1 398 0
.LVL50:
	.loc 1 404 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	.loc 1 405 0
	mov	%d15, 0
	.loc 1 404 0
	st.w	[%a15]0, %d4
	.loc 1 405 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	st.w	[%a15]0, %d15
	.loc 1 406 0
	mov	%d15, 160
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 407 0
	mov	%d15, 170
	st.w	[%a15]0, %d15
.LBB88:
.LBB89:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE89:
.LBE88:
	.loc 1 410 0
	ret
.LFE191:
	.size	IfxFlash_writePage, .-IfxFlash_writePage
.section .text.IfxFlash_writePageOnce,"ax",@progbits
	.align 1
	.global	IfxFlash_writePageOnce
	.type	IfxFlash_writePageOnce, @function
IfxFlash_writePageOnce:
.LFB192:
	.loc 1 414 0
.LVL51:
	.loc 1 420 0
	movh.a	%a15, hi:-1358910896
	lea	%a15, [%a15] lo:-1358910896
	.loc 1 421 0
	mov	%d15, 0
	.loc 1 420 0
	st.w	[%a15]0, %d4
	.loc 1 421 0
	movh.a	%a15, hi:-1358910888
	lea	%a15, [%a15] lo:-1358910888
	st.w	[%a15]0, %d15
	.loc 1 422 0
	mov	%d15, 160
	movh.a	%a15, hi:-1358910808
	lea	%a15, [%a15] lo:-1358910808
	st.w	[%a15]0, %d15
	.loc 1 423 0
	mov	%d15, 154
	st.w	[%a15]0, %d15
.LBB90:
.LBB91:
	.loc 2 1346 0
#APP
	# 1346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	dsync
	# 0 "" 2
#NO_APP
.LBE91:
.LBE90:
	.loc 1 426 0
	ret
.LFE192:
	.size	IfxFlash_writePageOnce, .-IfxFlash_writePageOnce
.section .rodata.__func__.3075,"a",@progbits
	.type	__func__.3075, @object
	.size	__func__.3075, 40
__func__.3075:
	.string	"IfxFlash_selectCorrectableErrorTracking"
.section .rodata.__func__.3080,"a",@progbits
	.type	__func__.3080, @object
	.size	__func__.3080, 42
__func__.3080:
	.string	"IfxFlash_selectUncorrectableErrorTracking"
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
	.uaword	.LFB166
	.uaword	.LFE166-.LFB166
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB167
	.uaword	.LFE167-.LFB167
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB168
	.uaword	.LFE168-.LFB168
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB169
	.uaword	.LFE169-.LFB169
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB170
	.uaword	.LFE170-.LFB170
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB171
	.uaword	.LFE171-.LFB171
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB172
	.uaword	.LFE172-.LFB172
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB173
	.uaword	.LFE173-.LFB173
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB174
	.uaword	.LFE174-.LFB174
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB177
	.uaword	.LFE177-.LFB177
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB178
	.uaword	.LFE178-.LFB178
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB179
	.uaword	.LFE179-.LFB179
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB180
	.uaword	.LFE180-.LFB180
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB181
	.uaword	.LFE181-.LFB181
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB182
	.uaword	.LFE182-.LFB182
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB187
	.uaword	.LFE187-.LFB187
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB191
	.uaword	.LFE191-.LFB191
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB192
	.uaword	.LFE192-.LFB192
	.align 2
.LEFDE52:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "./0_Src/4_McHal/Tricore/_Impl/IfxFlash_cfg.h"
	.file 7 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
	.file 8 "0_Src/4_McHal/Tricore/Flash/Std/IfxFlash.h"
	.file 9 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4881
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Flash/Std/IfxFlash.c"
	.string	"D:\\\\GitRepo\\\\InfineonRacer\\\\2_src\\\\InfineonRacer_TC23xA"
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_ranges0+0x20
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
	.uaword	0xe4
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
	.uaword	0xac
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
	.uaword	0xe4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint64"
	.byte	0x5
	.byte	0x25
	.uaword	0x167
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
	.byte	0x6
	.byte	0x78
	.uaword	0x23c
	.uleb128 0x6
	.string	"IfxFlash_FlashType_Fa"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxFlash_FlashType_D0"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxFlash_FlashType_D1"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxFlash_FlashType_P0"
	.sleb128 3
	.uleb128 0x6
	.string	"IfxFlash_FlashType_P1"
	.sleb128 4
	.uleb128 0x6
	.string	"IfxFlash_FlashType_P2"
	.sleb128 5
	.uleb128 0x6
	.string	"IfxFlash_FlashType_P3"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_FlashType"
	.byte	0x6
	.byte	0x80
	.uaword	0x18b
	.uleb128 0x5
	.byte	0x4
	.byte	0x6
	.byte	0x85
	.uaword	0x2aa
	.uleb128 0x6
	.string	"IfxFlash_UcbType_ucb0"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxFlash_UcbType_ucb1"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxFlash_UcbType_ucbHsmc"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_UcbType"
	.byte	0x6
	.byte	0x89
	.uaword	0x256
	.uleb128 0x7
	.string	"_Ifx_FLASH_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x2d
	.uaword	0x518
	.uleb128 0x8
	.string	"EN0"
	.byte	0x7
	.byte	0x2f
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN1"
	.byte	0x7
	.byte	0x30
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN2"
	.byte	0x7
	.byte	0x31
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN3"
	.byte	0x7
	.byte	0x32
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN4"
	.byte	0x7
	.byte	0x33
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN5"
	.byte	0x7
	.byte	0x34
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN6"
	.byte	0x7
	.byte	0x35
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN7"
	.byte	0x7
	.byte	0x36
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN8"
	.byte	0x7
	.byte	0x37
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN9"
	.byte	0x7
	.byte	0x38
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN10"
	.byte	0x7
	.byte	0x39
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN11"
	.byte	0x7
	.byte	0x3a
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN12"
	.byte	0x7
	.byte	0x3b
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN13"
	.byte	0x7
	.byte	0x3c
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN14"
	.byte	0x7
	.byte	0x3d
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN15"
	.byte	0x7
	.byte	0x3e
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN16"
	.byte	0x7
	.byte	0x3f
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN17"
	.byte	0x7
	.byte	0x40
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN18"
	.byte	0x7
	.byte	0x41
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN19"
	.byte	0x7
	.byte	0x42
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN20"
	.byte	0x7
	.byte	0x43
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN21"
	.byte	0x7
	.byte	0x44
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN22"
	.byte	0x7
	.byte	0x45
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN23"
	.byte	0x7
	.byte	0x46
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN24"
	.byte	0x7
	.byte	0x47
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN25"
	.byte	0x7
	.byte	0x48
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN26"
	.byte	0x7
	.byte	0x49
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN27"
	.byte	0x7
	.byte	0x4a
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN28"
	.byte	0x7
	.byte	0x4b
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN29"
	.byte	0x7
	.byte	0x4c
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN30"
	.byte	0x7
	.byte	0x4d
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EN31"
	.byte	0x7
	.byte	0x4e
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"Ifx_FLASH_ACCEN0_Bits"
	.byte	0x7
	.byte	0x4f
	.uaword	0x2c2
	.uleb128 0x7
	.string	"_Ifx_FLASH_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x52
	.uaword	0x576
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x7
	.byte	0x54
	.uaword	0x518
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_ACCEN1_Bits"
	.byte	0x7
	.byte	0x55
	.uaword	0x545
	.uleb128 0x7
	.string	"_Ifx_FLASH_CBAB_CFG_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x58
	.uaword	0x60a
	.uleb128 0x8
	.string	"SEL"
	.byte	0x7
	.byte	0x5a
	.uaword	0x518
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x7
	.byte	0x5b
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CLR"
	.byte	0x7
	.byte	0x5c
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DIS"
	.byte	0x7
	.byte	0x5d
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x7
	.byte	0x5e
	.uaword	0x518
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_CBAB_CFG_Bits"
	.byte	0x7
	.byte	0x5f
	.uaword	0x593
	.uleb128 0x7
	.string	"_Ifx_FLASH_CBAB_STAT_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x62
	.uaword	0x711
	.uleb128 0x8
	.string	"VLD0"
	.byte	0x7
	.byte	0x64
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD1"
	.byte	0x7
	.byte	0x65
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD2"
	.byte	0x7
	.byte	0x66
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD3"
	.byte	0x7
	.byte	0x67
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD4"
	.byte	0x7
	.byte	0x68
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD5"
	.byte	0x7
	.byte	0x69
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD6"
	.byte	0x7
	.byte	0x6a
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD7"
	.byte	0x7
	.byte	0x6b
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD8"
	.byte	0x7
	.byte	0x6c
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD9"
	.byte	0x7
	.byte	0x6d
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF2
	.byte	0x7
	.byte	0x6e
	.uaword	0x518
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_CBAB_STAT_Bits"
	.byte	0x7
	.byte	0x6f
	.uaword	0x629
	.uleb128 0x7
	.string	"_Ifx_FLASH_CBAB_TOP_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x72
	.uaword	0x7a9
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x7
	.byte	0x74
	.uaword	0x518
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ADDR"
	.byte	0x7
	.byte	0x75
	.uaword	0x518
	.byte	0x4
	.byte	0x13
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ERR"
	.byte	0x7
	.byte	0x76
	.uaword	0x518
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VLD"
	.byte	0x7
	.byte	0x77
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"CLR"
	.byte	0x7
	.byte	0x78
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_CBAB_TOP_Bits"
	.byte	0x7
	.byte	0x79
	.uaword	0x731
	.uleb128 0x7
	.string	"_Ifx_FLASH_COMM0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x7c
	.uaword	0x810
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x7
	.byte	0x7e
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_8"
	.byte	0x7
	.byte	0x7f
	.uaword	0x518
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_COMM0_Bits"
	.byte	0x7
	.byte	0x80
	.uaword	0x7c8
	.uleb128 0x7
	.string	"_Ifx_FLASH_COMM1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x83
	.uaword	0x87e
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x7
	.byte	0x85
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x7
	.byte	0x86
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x7
	.byte	0x87
	.uaword	0x518
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_COMM1_Bits"
	.byte	0x7
	.byte	0x88
	.uaword	0x82c
	.uleb128 0x7
	.string	"_Ifx_FLASH_COMM2_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8b
	.uaword	0x8ec
	.uleb128 0x9
	.uaword	.LASF3
	.byte	0x7
	.byte	0x8d
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF4
	.byte	0x7
	.byte	0x8e
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF5
	.byte	0x7
	.byte	0x8f
	.uaword	0x518
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_COMM2_Bits"
	.byte	0x7
	.byte	0x90
	.uaword	0x89a
	.uleb128 0x7
	.string	"_Ifx_FLASH_ECCRD_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x93
	.uaword	0x96d
	.uleb128 0x8
	.string	"RCODE"
	.byte	0x7
	.byte	0x95
	.uaword	0x518
	.byte	0x4
	.byte	0x16
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x7
	.byte	0x96
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x7
	.byte	0x97
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x7
	.byte	0x98
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_ECCRD_Bits"
	.byte	0x7
	.byte	0x99
	.uaword	0x908
	.uleb128 0x7
	.string	"_Ifx_FLASH_ECCRP_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x9c
	.uaword	0x9ee
	.uleb128 0x8
	.string	"RCODE"
	.byte	0x7
	.byte	0x9e
	.uaword	0x518
	.byte	0x4
	.byte	0x16
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x7
	.byte	0x9f
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF7
	.byte	0x7
	.byte	0xa0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF8
	.byte	0x7
	.byte	0xa1
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_ECCRP_Bits"
	.byte	0x7
	.byte	0xa2
	.uaword	0x989
	.uleb128 0x7
	.string	"_Ifx_FLASH_ECCW_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa5
	.uaword	0xa7a
	.uleb128 0x8
	.string	"WCODE"
	.byte	0x7
	.byte	0xa7
	.uaword	0x518
	.byte	0x4
	.byte	0x16
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF6
	.byte	0x7
	.byte	0xa8
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DECENCDIS"
	.byte	0x7
	.byte	0xa9
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PECENCDIS"
	.byte	0x7
	.byte	0xaa
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_ECCW_Bits"
	.byte	0x7
	.byte	0xab
	.uaword	0xa0a
	.uleb128 0x7
	.string	"_Ifx_FLASH_FCON_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xae
	.uaword	0xbfe
	.uleb128 0x8
	.string	"WSPFLASH"
	.byte	0x7
	.byte	0xb0
	.uaword	0x518
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"WSECPF"
	.byte	0x7
	.byte	0xb1
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"WSDFLASH"
	.byte	0x7
	.byte	0xb2
	.uaword	0x518
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"WSECDF"
	.byte	0x7
	.byte	0xb3
	.uaword	0x518
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"IDLE"
	.byte	0x7
	.byte	0xb4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ESLDIS"
	.byte	0x7
	.byte	0xb5
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SLEEP"
	.byte	0x7
	.byte	0xb6
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"NSAFECC"
	.byte	0x7
	.byte	0xb7
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"STALL"
	.byte	0x7
	.byte	0xb8
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RES21"
	.byte	0x7
	.byte	0xb9
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RES23"
	.byte	0x7
	.byte	0xba
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"VOPERM"
	.byte	0x7
	.byte	0xbb
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SQERM"
	.byte	0x7
	.byte	0xbc
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PROERM"
	.byte	0x7
	.byte	0xbd
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x7
	.byte	0xbe
	.uaword	0x518
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PR5V"
	.byte	0x7
	.byte	0xbf
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EOBM"
	.byte	0x7
	.byte	0xc0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_FCON_Bits"
	.byte	0x7
	.byte	0xc1
	.uaword	0xa95
	.uleb128 0x7
	.string	"_Ifx_FLASH_FPRO_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xc4
	.uaword	0xddf
	.uleb128 0x8
	.string	"PROINP"
	.byte	0x7
	.byte	0xc6
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PRODISP"
	.byte	0x7
	.byte	0xc7
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PROIND"
	.byte	0x7
	.byte	0xc8
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PRODISD"
	.byte	0x7
	.byte	0xc9
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PROINHSMCOTP"
	.byte	0x7
	.byte	0xca
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RES5"
	.byte	0x7
	.byte	0xcb
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PROINOTP"
	.byte	0x7
	.byte	0xcc
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RES7"
	.byte	0x7
	.byte	0xcd
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PROINDBG"
	.byte	0x7
	.byte	0xce
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PRODISDBG"
	.byte	0x7
	.byte	0xcf
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PROINHSM"
	.byte	0x7
	.byte	0xd0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_11"
	.byte	0x7
	.byte	0xd1
	.uaword	0x518
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DCFP"
	.byte	0x7
	.byte	0xd2
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DDFP"
	.byte	0x7
	.byte	0xd3
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DDFPX"
	.byte	0x7
	.byte	0xd4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_19"
	.byte	0x7
	.byte	0xd5
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DDFD"
	.byte	0x7
	.byte	0xd6
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_21"
	.byte	0x7
	.byte	0xd7
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ENPE"
	.byte	0x7
	.byte	0xd8
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_24"
	.byte	0x7
	.byte	0xd9
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_FPRO_Bits"
	.byte	0x7
	.byte	0xda
	.uaword	0xc19
	.uleb128 0x7
	.string	"_Ifx_FLASH_FSR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xdd
	.uaword	0x107a
	.uleb128 0x8
	.string	"FABUSY"
	.byte	0x7
	.byte	0xdf
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"D0BUSY"
	.byte	0x7
	.byte	0xe0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RES1"
	.byte	0x7
	.byte	0xe1
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"P0BUSY"
	.byte	0x7
	.byte	0xe2
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RES4"
	.byte	0x7
	.byte	0xe3
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RES5"
	.byte	0x7
	.byte	0xe4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RES6"
	.byte	0x7
	.byte	0xe5
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PROG"
	.byte	0x7
	.byte	0xe6
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ERASE"
	.byte	0x7
	.byte	0xe7
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PFPAGE"
	.byte	0x7
	.byte	0xe8
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DFPAGE"
	.byte	0x7
	.byte	0xe9
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"OPER"
	.byte	0x7
	.byte	0xea
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SQER"
	.byte	0x7
	.byte	0xeb
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PROER"
	.byte	0x7
	.byte	0xec
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PFSBER"
	.byte	0x7
	.byte	0xed
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PFDBER"
	.byte	0x7
	.byte	0xee
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PFMBER"
	.byte	0x7
	.byte	0xef
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"RES17"
	.byte	0x7
	.byte	0xf0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DFSBER"
	.byte	0x7
	.byte	0xf1
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DFDBER"
	.byte	0x7
	.byte	0xf2
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DFTBER"
	.byte	0x7
	.byte	0xf3
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"DFMBER"
	.byte	0x7
	.byte	0xf4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SRIADDERR"
	.byte	0x7
	.byte	0xf5
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_23"
	.byte	0x7
	.byte	0xf6
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"PVER"
	.byte	0x7
	.byte	0xf7
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"EVER"
	.byte	0x7
	.byte	0xf8
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SPND"
	.byte	0x7
	.byte	0xf9
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"SLM"
	.byte	0x7
	.byte	0xfa
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_29"
	.byte	0x7
	.byte	0xfb
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ORIER"
	.byte	0x7
	.byte	0xfc
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reserved_31"
	.byte	0x7
	.byte	0xfd
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_FLASH_FSR_Bits"
	.byte	0x7
	.byte	0xfe
	.uaword	0xdfa
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMFCON_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x101
	.uaword	0x1136
	.uleb128 0xb
	.string	"LCKHSMUCB"
	.byte	0x7
	.uahalf	0x103
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x104
	.uaword	0x518
	.byte	0x4
	.byte	0x16
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"VOPERM"
	.byte	0x7
	.uahalf	0x105
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SQERM"
	.byte	0x7
	.uahalf	0x106
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_26"
	.byte	0x7
	.uahalf	0x107
	.uaword	0x518
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EOBM"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMFCON_Bits"
	.byte	0x7
	.uahalf	0x109
	.uaword	0x1094
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMFSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x1297
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"D1BUSY"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x518
	.byte	0x4
	.byte	0x4
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PROG"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ERASE"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x113
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DFPAGE"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OPER"
	.byte	0x7
	.uahalf	0x115
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SQER"
	.byte	0x7
	.uahalf	0x116
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_13"
	.byte	0x7
	.uahalf	0x117
	.uaword	0x518
	.byte	0x4
	.byte	0xc
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PVER"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EVER"
	.byte	0x7
	.uahalf	0x119
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SPND"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_28"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0x518
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMFSR_Bits"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1155
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMMARD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x11f
	.uaword	0x134a
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x121
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SELD1"
	.byte	0x7
	.uahalf	0x122
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x123
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SPND"
	.byte	0x7
	.uahalf	0x124
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SPNDERR"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x126
	.uaword	0x518
	.byte	0x4
	.byte	0x1b
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMMARD_Bits"
	.byte	0x7
	.uahalf	0x127
	.uaword	0x12b5
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMRRAD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x12a
	.uaword	0x13af
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x518
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ADD"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x518
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRAD_Bits"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x1369
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMRRCT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x131
	.uaword	0x1496
	.uleb128 0xb
	.string	"STRT"
	.byte	0x7
	.uahalf	0x133
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"STP"
	.byte	0x7
	.uahalf	0x134
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BUSY"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DONE"
	.byte	0x7
	.uahalf	0x136
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ERR"
	.byte	0x7
	.uahalf	0x137
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x138
	.uaword	0x518
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EOBM"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x518
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CNT"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x518
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRCT_Bits"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0x13ce
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMRRD0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x13f
	.uaword	0x14e9
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x141
	.uaword	0x518
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRD0_Bits"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x14b5
	.uleb128 0xa
	.string	"_Ifx_FLASH_HSMRRD1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x145
	.uaword	0x153c
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x147
	.uaword	0x518
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRD1_Bits"
	.byte	0x7
	.uahalf	0x148
	.uaword	0x1508
	.uleb128 0xa
	.string	"_Ifx_FLASH_ID_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x14b
	.uaword	0x15bb
	.uleb128 0xb
	.string	"MODREV"
	.byte	0x7
	.uahalf	0x14d
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MODTYPE"
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x518
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MODNUMBER"
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x518
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ID_Bits"
	.byte	0x7
	.uahalf	0x150
	.uaword	0x155b
	.uleb128 0xa
	.string	"_Ifx_FLASH_MARD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x153
	.uaword	0x1693
	.uleb128 0xb
	.string	"HMARGIN"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SELD0"
	.byte	0x7
	.uahalf	0x156
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x157
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SPND"
	.byte	0x7
	.uahalf	0x158
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SPNDERR"
	.byte	0x7
	.uahalf	0x159
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x15a
	.uaword	0x518
	.byte	0x4
	.byte	0xa
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x15c
	.uaword	0x518
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_MARD_Bits"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0x15d5
	.uleb128 0xa
	.string	"_Ifx_FLASH_MARP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x160
	.uaword	0x1755
	.uleb128 0xb
	.string	"SELP0"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES1"
	.byte	0x7
	.uahalf	0x163
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES2"
	.byte	0x7
	.uahalf	0x164
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES3"
	.byte	0x7
	.uahalf	0x165
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x166
	.uaword	0x518
	.byte	0x4
	.byte	0xb
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TRAPDIS"
	.byte	0x7
	.uahalf	0x167
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x168
	.uaword	0x518
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_MARP_Bits"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x16af
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCOND_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x18d3
	.uleb128 0xb
	.string	"L"
	.byte	0x7
	.uahalf	0x16e
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"NSAFECC"
	.byte	0x7
	.uahalf	0x16f
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RAMIN"
	.byte	0x7
	.uahalf	0x170
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RAMINSEL"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x518
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES8"
	.byte	0x7
	.uahalf	0x172
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES9"
	.byte	0x7
	.uahalf	0x173
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES10"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES11"
	.byte	0x7
	.uahalf	0x175
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES12"
	.byte	0x7
	.uahalf	0x176
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES13"
	.byte	0x7
	.uahalf	0x177
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES14"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES15"
	.byte	0x7
	.uahalf	0x179
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ESR0CNT"
	.byte	0x7
	.uahalf	0x17a
	.uaword	0x518
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES29"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES30"
	.byte	0x7
	.uahalf	0x17c
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RPRO"
	.byte	0x7
	.uahalf	0x17d
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCOND_Bits"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0x1771
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONDBG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x181
	.uaword	0x1962
	.uleb128 0xb
	.string	"OCDSDIS"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x184
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EDM"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x186
	.uaword	0x518
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONDBG_Bits"
	.byte	0x7
	.uahalf	0x187
	.uaword	0x18f2
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONHSM_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x1a26
	.uleb128 0xb
	.string	"HSMDBGDIS"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x18d
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TSTIFLCK"
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"HSMTSTDIS"
	.byte	0x7
	.uahalf	0x18f
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RES15"
	.byte	0x7
	.uahalf	0x190
	.uaword	0x518
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x191
	.uaword	0x518
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONHSM_Bits"
	.byte	0x7
	.uahalf	0x192
	.uaword	0x1983
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONHSMCOTP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x195
	.uaword	0x1bb8
	.uleb128 0xb
	.string	"HSMBOOTEN"
	.byte	0x7
	.uahalf	0x197
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"SSWWAIT"
	.byte	0x7
	.uahalf	0x198
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"HSMDX"
	.byte	0x7
	.uahalf	0x199
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"HSM6X"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"HSM16X"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"HSM17X"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S6ROM"
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"HSMENPINS"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"HSMENRES"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DESTDBG"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BLKFLAN"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BOOTSEL"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S16ROM"
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S17ROM"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_18"
	.byte	0x7
	.uahalf	0x1a5
	.uaword	0x518
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONHSMCOTP_Bits"
	.byte	0x7
	.uahalf	0x1a6
	.uaword	0x1a47
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONOTP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0x1e63
	.uleb128 0xb
	.string	"S0ROM"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S1ROM"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S2ROM"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S3ROM"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S4ROM"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S5ROM"
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S6ROM"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S7ROM"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S8ROM"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S9ROM"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S10ROM"
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S11ROM"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S12ROM"
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S13ROM"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S14ROM"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S15ROM"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S16ROM"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S17ROM"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S18ROM"
	.byte	0x7
	.uahalf	0x1bd
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S19ROM"
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S20ROM"
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S21ROM"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S22ROM"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S23ROM"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S24ROM"
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S25ROM"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S26ROM"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BML"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"TP"
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONOTP_Bits"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0x1bdd
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x20c2
	.uleb128 0xb
	.string	"S0L"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S1L"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S2L"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S3L"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S4L"
	.byte	0x7
	.uahalf	0x1d2
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S5L"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S6L"
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S7L"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S8L"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S9L"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S10L"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S11L"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S12L"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S13L"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S14L"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S15L"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S16L"
	.byte	0x7
	.uahalf	0x1de
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S17L"
	.byte	0x7
	.uahalf	0x1df
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S18L"
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S19L"
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S20L"
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S21L"
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S22L"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S23L"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S24L"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S25L"
	.byte	0x7
	.uahalf	0x1e7
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S26L"
	.byte	0x7
	.uahalf	0x1e8
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x518
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"RPRO"
	.byte	0x7
	.uahalf	0x1ea
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONP_Bits"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x1e84
	.uleb128 0xa
	.string	"_Ifx_FLASH_PROCONWOP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0x2357
	.uleb128 0xb
	.string	"S0WOP"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S1WOP"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S2WOP"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S3WOP"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S4WOP"
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S5WOP"
	.byte	0x7
	.uahalf	0x1f5
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S6WOP"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S7WOP"
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S8WOP"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S9WOP"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S10WOP"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S11WOP"
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S12WOP"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S13WOP"
	.byte	0x7
	.uahalf	0x1fd
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S14WOP"
	.byte	0x7
	.uahalf	0x1fe
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S15WOP"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S16WOP"
	.byte	0x7
	.uahalf	0x200
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S17WOP"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S18WOP"
	.byte	0x7
	.uahalf	0x202
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S19WOP"
	.byte	0x7
	.uahalf	0x203
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S20WOP"
	.byte	0x7
	.uahalf	0x204
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S21WOP"
	.byte	0x7
	.uahalf	0x205
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S22WOP"
	.byte	0x7
	.uahalf	0x206
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S23WOP"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S24WOP"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S25WOP"
	.byte	0x7
	.uahalf	0x209
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"S26WOP"
	.byte	0x7
	.uahalf	0x20a
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x518
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DATM"
	.byte	0x7
	.uahalf	0x20c
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONWOP_Bits"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0x20e1
	.uleb128 0xa
	.string	"_Ifx_FLASH_RDB_CFG0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x210
	.uaword	0x23bf
	.uleb128 0xb
	.string	"TAG"
	.byte	0x7
	.uahalf	0x212
	.uaword	0x518
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x213
	.uaword	0x518
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG0_Bits"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x2378
	.uleb128 0xa
	.string	"_Ifx_FLASH_RDB_CFG1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x217
	.uaword	0x2426
	.uleb128 0xb
	.string	"TAG"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x518
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x21a
	.uaword	0x518
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG1_Bits"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x23df
	.uleb128 0xa
	.string	"_Ifx_FLASH_RDB_CFG2_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x21e
	.uaword	0x248d
	.uleb128 0xb
	.string	"TAG"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x518
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x221
	.uaword	0x518
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG2_Bits"
	.byte	0x7
	.uahalf	0x222
	.uaword	0x2446
	.uleb128 0xa
	.string	"_Ifx_FLASH_RRAD_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x225
	.uaword	0x24f0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x227
	.uaword	0x518
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ADD"
	.byte	0x7
	.uahalf	0x228
	.uaword	0x518
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRAD_Bits"
	.byte	0x7
	.uahalf	0x229
	.uaword	0x24ad
	.uleb128 0xa
	.string	"_Ifx_FLASH_RRCT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x25d1
	.uleb128 0xb
	.string	"STRT"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"STP"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"BUSY"
	.byte	0x7
	.uahalf	0x230
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DONE"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ERR"
	.byte	0x7
	.uahalf	0x232
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x233
	.uaword	0x518
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"EOBM"
	.byte	0x7
	.uahalf	0x234
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x235
	.uaword	0x518
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CNT"
	.byte	0x7
	.uahalf	0x236
	.uaword	0x518
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRCT_Bits"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x250c
	.uleb128 0xa
	.string	"_Ifx_FLASH_RRD0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x23a
	.uaword	0x261e
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x23c
	.uaword	0x518
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRD0_Bits"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x25ed
	.uleb128 0xa
	.string	"_Ifx_FLASH_RRD1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x240
	.uaword	0x266b
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x242
	.uaword	0x518
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRD1_Bits"
	.byte	0x7
	.uahalf	0x243
	.uaword	0x263a
	.uleb128 0xa
	.string	"_Ifx_FLASH_UBAB_CFG_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x246
	.uaword	0x2704
	.uleb128 0xb
	.string	"SEL"
	.byte	0x7
	.uahalf	0x248
	.uaword	0x518
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x249
	.uaword	0x518
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CLR"
	.byte	0x7
	.uahalf	0x24a
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DIS"
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x24c
	.uaword	0x518
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_CFG_Bits"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x2687
	.uleb128 0xa
	.string	"_Ifx_FLASH_UBAB_STAT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x250
	.uaword	0x2774
	.uleb128 0xb
	.string	"VLD0"
	.byte	0x7
	.uahalf	0x252
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"reserved_1"
	.byte	0x7
	.uahalf	0x253
	.uaword	0x518
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_STAT_Bits"
	.byte	0x7
	.uahalf	0x254
	.uaword	0x2724
	.uleb128 0xa
	.string	"_Ifx_FLASH_UBAB_TOP_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x257
	.uaword	0x2813
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x259
	.uaword	0x518
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ADDR"
	.byte	0x7
	.uahalf	0x25a
	.uaword	0x518
	.byte	0x4
	.byte	0x13
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"ERR"
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x518
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"VLD"
	.byte	0x7
	.uahalf	0x25c
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"CLR"
	.byte	0x7
	.uahalf	0x25d
	.uaword	0x518
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_TOP_Bits"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0x2795
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x266
	.uaword	0x285b
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x268
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x269
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x26a
	.uaword	0x528
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ACCEN0"
	.byte	0x7
	.uahalf	0x26b
	.uaword	0x2833
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x26e
	.uaword	0x289c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x270
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x271
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x272
	.uaword	0x576
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ACCEN1"
	.byte	0x7
	.uahalf	0x273
	.uaword	0x2874
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x276
	.uaword	0x28dd
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x279
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x27a
	.uaword	0x60a
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_CBAB_CFG"
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x28b5
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x27e
	.uaword	0x2920
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x280
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x281
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x282
	.uaword	0x711
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_CBAB_STAT"
	.byte	0x7
	.uahalf	0x283
	.uaword	0x28f8
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x286
	.uaword	0x2964
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x288
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x289
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x28a
	.uaword	0x7a9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_CBAB_TOP"
	.byte	0x7
	.uahalf	0x28b
	.uaword	0x293c
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x28e
	.uaword	0x29a7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x290
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x291
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x292
	.uaword	0x810
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_COMM0"
	.byte	0x7
	.uahalf	0x293
	.uaword	0x297f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x296
	.uaword	0x29e7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x299
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x29a
	.uaword	0x87e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_COMM1"
	.byte	0x7
	.uahalf	0x29b
	.uaword	0x29bf
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x29e
	.uaword	0x2a27
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2a2
	.uaword	0x8ec
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_COMM2"
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x29ff
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x2a67
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2aa
	.uaword	0x96d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ECCRD"
	.byte	0x7
	.uahalf	0x2ab
	.uaword	0x2a3f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0x2aa7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2b1
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x9ee
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ECCRP"
	.byte	0x7
	.uahalf	0x2b3
	.uaword	0x2a7f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x2ae7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2b9
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0xa7a
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ECCW"
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x2abf
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2be
	.uaword	0x2b26
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2c1
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2c2
	.uaword	0xbfe
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_FCON"
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x2afe
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x2b65
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2c9
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0xddf
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_FPRO"
	.byte	0x7
	.uahalf	0x2cb
	.uaword	0x2b3d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x2ba4
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2d1
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2d2
	.uaword	0x107a
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_FSR"
	.byte	0x7
	.uahalf	0x2d3
	.uaword	0x2b7c
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2d6
	.uaword	0x2be2
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2d8
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2d9
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2da
	.uaword	0x1136
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMFCON"
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x2bba
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x2c24
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x1297
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMFSR"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x2bfc
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x2c65
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2ea
	.uaword	0x134a
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMMARD"
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x2c3d
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ee
	.uaword	0x2ca7
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2f1
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x13af
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRAD"
	.byte	0x7
	.uahalf	0x2f3
	.uaword	0x2c7f
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x2ce9
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x2fa
	.uaword	0x1496
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRCT"
	.byte	0x7
	.uahalf	0x2fb
	.uaword	0x2cc1
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x2d2b
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x301
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x14e9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRD0"
	.byte	0x7
	.uahalf	0x303
	.uaword	0x2d03
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x306
	.uaword	0x2d6d
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x308
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x309
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x153c
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_HSMRRD1"
	.byte	0x7
	.uahalf	0x30b
	.uaword	0x2d45
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x30e
	.uaword	0x2daf
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x310
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x311
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x312
	.uaword	0x15bb
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_ID"
	.byte	0x7
	.uahalf	0x313
	.uaword	0x2d87
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x316
	.uaword	0x2dec
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x318
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x319
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x31a
	.uaword	0x1693
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_MARD"
	.byte	0x7
	.uahalf	0x31b
	.uaword	0x2dc4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x31e
	.uaword	0x2e2b
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x320
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x321
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x322
	.uaword	0x1755
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_MARP"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x2e03
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x326
	.uaword	0x2e6a
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x328
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x329
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x32a
	.uaword	0x18d3
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCOND"
	.byte	0x7
	.uahalf	0x32b
	.uaword	0x2e42
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x2eac
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x331
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x332
	.uaword	0x1962
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONDBG"
	.byte	0x7
	.uahalf	0x333
	.uaword	0x2e84
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x336
	.uaword	0x2ef0
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x338
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x339
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x33a
	.uaword	0x1a26
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONHSM"
	.byte	0x7
	.uahalf	0x33b
	.uaword	0x2ec8
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x2f34
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x341
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x342
	.uaword	0x1bb8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONHSMCOTP"
	.byte	0x7
	.uahalf	0x343
	.uaword	0x2f0c
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x346
	.uaword	0x2f7c
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x348
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x349
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x34a
	.uaword	0x1e63
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONOTP"
	.byte	0x7
	.uahalf	0x34b
	.uaword	0x2f54
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x34e
	.uaword	0x2fc0
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x350
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x351
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x352
	.uaword	0x20c2
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONP"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x2f98
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x356
	.uaword	0x3002
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x359
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x2357
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_PROCONWOP"
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x2fda
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x3046
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x360
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x361
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x362
	.uaword	0x23bf
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG0"
	.byte	0x7
	.uahalf	0x363
	.uaword	0x301e
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x366
	.uaword	0x3089
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x368
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x369
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x2426
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG1"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0x3061
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x30cc
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x371
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x372
	.uaword	0x248d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RDB_CFG2"
	.byte	0x7
	.uahalf	0x373
	.uaword	0x30a4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x376
	.uaword	0x310f
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x378
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x379
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x37a
	.uaword	0x24f0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRAD"
	.byte	0x7
	.uahalf	0x37b
	.uaword	0x30e7
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x37e
	.uaword	0x314e
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x380
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x381
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x382
	.uaword	0x25d1
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRCT"
	.byte	0x7
	.uahalf	0x383
	.uaword	0x3126
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x386
	.uaword	0x318d
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x389
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x38a
	.uaword	0x261e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRD0"
	.byte	0x7
	.uahalf	0x38b
	.uaword	0x3165
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x31cc
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x390
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x391
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x392
	.uaword	0x266b
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_RRD1"
	.byte	0x7
	.uahalf	0x393
	.uaword	0x31a4
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x396
	.uaword	0x320b
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x398
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x399
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x39a
	.uaword	0x2704
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_CFG"
	.byte	0x7
	.uahalf	0x39b
	.uaword	0x31e3
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x39e
	.uaword	0x324e
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3a1
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x2774
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_STAT"
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x3226
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uahalf	0x3a6
	.uaword	0x3292
	.uleb128 0xf
	.string	"U"
	.byte	0x7
	.uahalf	0x3a8
	.uaword	0x518
	.uleb128 0xf
	.string	"I"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0xc1
	.uleb128 0xf
	.string	"B"
	.byte	0x7
	.uahalf	0x3aa
	.uaword	0x2813
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH_UBAB_TOP"
	.byte	0x7
	.uahalf	0x3ab
	.uaword	0x326a
	.uleb128 0xa
	.string	"_Ifx_FLASH_CBAB"
	.byte	0x30
	.byte	0x7
	.uahalf	0x3b6
	.uaword	0x3304
	.uleb128 0x10
	.string	"CFG"
	.byte	0x7
	.uahalf	0x3b8
	.uaword	0x28dd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"STAT"
	.byte	0x7
	.uahalf	0x3b9
	.uaword	0x2920
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"TOP"
	.byte	0x7
	.uahalf	0x3ba
	.uaword	0x2964
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x3bb
	.uaword	0x3304
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x12
	.uaword	0xe4
	.uaword	0x3314
	.uleb128 0x13
	.uaword	0xac
	.byte	0x23
	.byte	0
	.uleb128 0xa
	.string	"_Ifx_FLASH_RDB"
	.byte	0x30
	.byte	0x7
	.uahalf	0x3bf
	.uaword	0x336c
	.uleb128 0x10
	.string	"CFG0"
	.byte	0x7
	.uahalf	0x3c1
	.uaword	0x3046
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"CFG1"
	.byte	0x7
	.uahalf	0x3c2
	.uaword	0x3089
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"CFG2"
	.byte	0x7
	.uahalf	0x3c3
	.uaword	0x30cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x3c4
	.uaword	0x3304
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.string	"_Ifx_FLASH_UBAB"
	.byte	0x5c
	.byte	0x7
	.uahalf	0x3c8
	.uaword	0x33c3
	.uleb128 0x10
	.string	"CFG"
	.byte	0x7
	.uahalf	0x3ca
	.uaword	0x320b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"STAT"
	.byte	0x7
	.uahalf	0x3cb
	.uaword	0x324e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"TOP"
	.byte	0x7
	.uahalf	0x3cc
	.uaword	0x3292
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x3cd
	.uaword	0x33c3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x12
	.uaword	0xe4
	.uaword	0x33d3
	.uleb128 0x13
	.uaword	0xac
	.byte	0x4f
	.byte	0
	.uleb128 0x14
	.string	"_Ifx_FLASH"
	.uahalf	0x1400
	.byte	0x7
	.uahalf	0x3db
	.uaword	0x3771
	.uleb128 0x10
	.string	"COMM0"
	.byte	0x7
	.uahalf	0x3dd
	.uaword	0x29a7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.string	"COMM1"
	.byte	0x7
	.uahalf	0x3de
	.uaword	0x29e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"COMM2"
	.byte	0x7
	.uahalf	0x3df
	.uaword	0x2a27
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x3e0
	.uaword	0x3771
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.string	"ID"
	.byte	0x7
	.uahalf	0x3e1
	.uaword	0x2daf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1008
	.uleb128 0x10
	.string	"reserved_100C"
	.byte	0x7
	.uahalf	0x3e2
	.uaword	0x3782
	.byte	0x3
	.byte	0x23
	.uleb128 0x100c
	.uleb128 0x10
	.string	"FSR"
	.byte	0x7
	.uahalf	0x3e3
	.uaword	0x2ba4
	.byte	0x3
	.byte	0x23
	.uleb128 0x1010
	.uleb128 0x10
	.string	"FCON"
	.byte	0x7
	.uahalf	0x3e4
	.uaword	0x2b26
	.byte	0x3
	.byte	0x23
	.uleb128 0x1014
	.uleb128 0x10
	.string	"reserved_1018"
	.byte	0x7
	.uahalf	0x3e5
	.uaword	0x3782
	.byte	0x3
	.byte	0x23
	.uleb128 0x1018
	.uleb128 0x10
	.string	"FPRO"
	.byte	0x7
	.uahalf	0x3e6
	.uaword	0x2b65
	.byte	0x3
	.byte	0x23
	.uleb128 0x101c
	.uleb128 0x10
	.string	"PROCONP"
	.byte	0x7
	.uahalf	0x3e7
	.uaword	0x3792
	.byte	0x3
	.byte	0x23
	.uleb128 0x1020
	.uleb128 0x10
	.string	"reserved_1024"
	.byte	0x7
	.uahalf	0x3e8
	.uaword	0x37a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1024
	.uleb128 0x10
	.string	"PROCOND"
	.byte	0x7
	.uahalf	0x3e9
	.uaword	0x2e6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1030
	.uleb128 0x10
	.string	"PROCONHSMCOTP"
	.byte	0x7
	.uahalf	0x3ea
	.uaword	0x2f34
	.byte	0x3
	.byte	0x23
	.uleb128 0x1034
	.uleb128 0x10
	.string	"PROCONOTP"
	.byte	0x7
	.uahalf	0x3eb
	.uaword	0x37b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1038
	.uleb128 0x10
	.string	"reserved_103C"
	.byte	0x7
	.uahalf	0x3ec
	.uaword	0x37a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x103c
	.uleb128 0x10
	.string	"PROCONWOP"
	.byte	0x7
	.uahalf	0x3ed
	.uaword	0x37c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1048
	.uleb128 0x10
	.string	"reserved_104C"
	.byte	0x7
	.uahalf	0x3ee
	.uaword	0x37a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104c
	.uleb128 0x10
	.string	"PROCONDBG"
	.byte	0x7
	.uahalf	0x3ef
	.uaword	0x2eac
	.byte	0x3
	.byte	0x23
	.uleb128 0x1058
	.uleb128 0x10
	.string	"PROCONHSM"
	.byte	0x7
	.uahalf	0x3f0
	.uaword	0x2ef0
	.byte	0x3
	.byte	0x23
	.uleb128 0x105c
	.uleb128 0x10
	.string	"RDBCFG"
	.byte	0x7
	.uahalf	0x3f1
	.uaword	0x37e2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1060
	.uleb128 0x10
	.string	"ECCW"
	.byte	0x7
	.uahalf	0x3f2
	.uaword	0x2ae7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1090
	.uleb128 0x10
	.string	"ECCRP"
	.byte	0x7
	.uahalf	0x3f3
	.uaword	0x37e7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1094
	.uleb128 0x10
	.string	"reserved_1098"
	.byte	0x7
	.uahalf	0x3f4
	.uaword	0x37a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1098
	.uleb128 0x10
	.string	"ECCRD"
	.byte	0x7
	.uahalf	0x3f5
	.uaword	0x2a67
	.byte	0x3
	.byte	0x23
	.uleb128 0x10a4
	.uleb128 0x10
	.string	"MARP"
	.byte	0x7
	.uahalf	0x3f6
	.uaword	0x2e2b
	.byte	0x3
	.byte	0x23
	.uleb128 0x10a8
	.uleb128 0x10
	.string	"MARD"
	.byte	0x7
	.uahalf	0x3f7
	.uaword	0x2dec
	.byte	0x3
	.byte	0x23
	.uleb128 0x10ac
	.uleb128 0x10
	.string	"reserved_10B0"
	.byte	0x7
	.uahalf	0x3f8
	.uaword	0x3782
	.byte	0x3
	.byte	0x23
	.uleb128 0x10b0
	.uleb128 0x10
	.string	"CBAB"
	.byte	0x7
	.uahalf	0x3f9
	.uaword	0x3807
	.byte	0x3
	.byte	0x23
	.uleb128 0x10b4
	.uleb128 0x10
	.string	"UBAB"
	.byte	0x7
	.uahalf	0x3fa
	.uaword	0x381c
	.byte	0x3
	.byte	0x23
	.uleb128 0x10e4
	.uleb128 0x10
	.string	"RRCT"
	.byte	0x7
	.uahalf	0x3fb
	.uaword	0x314e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1140
	.uleb128 0x10
	.string	"RRD0"
	.byte	0x7
	.uahalf	0x3fc
	.uaword	0x318d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1144
	.uleb128 0x10
	.string	"RRD1"
	.byte	0x7
	.uahalf	0x3fd
	.uaword	0x31cc
	.byte	0x3
	.byte	0x23
	.uleb128 0x1148
	.uleb128 0x10
	.string	"RRAD"
	.byte	0x7
	.uahalf	0x3fe
	.uaword	0x310f
	.byte	0x3
	.byte	0x23
	.uleb128 0x114c
	.uleb128 0x10
	.string	"reserved_1150"
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x3821
	.byte	0x3
	.byte	0x23
	.uleb128 0x1150
	.uleb128 0x10
	.string	"HSMFSR"
	.byte	0x7
	.uahalf	0x400
	.uaword	0x2c24
	.byte	0x3
	.byte	0x23
	.uleb128 0x1200
	.uleb128 0x10
	.string	"HSMFCON"
	.byte	0x7
	.uahalf	0x401
	.uaword	0x2be2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1204
	.uleb128 0x10
	.string	"HSMMARD"
	.byte	0x7
	.uahalf	0x402
	.uaword	0x2c65
	.byte	0x3
	.byte	0x23
	.uleb128 0x1208
	.uleb128 0x10
	.string	"HSMRRCT"
	.byte	0x7
	.uahalf	0x403
	.uaword	0x2ce9
	.byte	0x3
	.byte	0x23
	.uleb128 0x120c
	.uleb128 0x10
	.string	"HSMRRD0"
	.byte	0x7
	.uahalf	0x404
	.uaword	0x2d2b
	.byte	0x3
	.byte	0x23
	.uleb128 0x1210
	.uleb128 0x10
	.string	"HSMRRD1"
	.byte	0x7
	.uahalf	0x405
	.uaword	0x2d6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1214
	.uleb128 0x10
	.string	"HSMRRAD"
	.byte	0x7
	.uahalf	0x406
	.uaword	0x2ca7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1218
	.uleb128 0x10
	.string	"reserved_121C"
	.byte	0x7
	.uahalf	0x407
	.uaword	0x3831
	.byte	0x3
	.byte	0x23
	.uleb128 0x121c
	.uleb128 0x10
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x408
	.uaword	0x289c
	.byte	0x3
	.byte	0x23
	.uleb128 0x13f8
	.uleb128 0x10
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x409
	.uaword	0x285b
	.byte	0x3
	.byte	0x23
	.uleb128 0x13fc
	.byte	0
	.uleb128 0x12
	.uaword	0xe4
	.uaword	0x3782
	.uleb128 0x15
	.uaword	0xac
	.uahalf	0xffb
	.byte	0
	.uleb128 0x12
	.uaword	0xe4
	.uaword	0x3792
	.uleb128 0x13
	.uaword	0xac
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x2fc0
	.uaword	0x37a2
	.uleb128 0x13
	.uaword	0xac
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0xe4
	.uaword	0x37b2
	.uleb128 0x13
	.uaword	0xac
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.uaword	0x2f7c
	.uaword	0x37c2
	.uleb128 0x13
	.uaword	0xac
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3002
	.uaword	0x37d2
	.uleb128 0x13
	.uaword	0xac
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3314
	.uaword	0x37e2
	.uleb128 0x13
	.uaword	0xac
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x37d2
	.uleb128 0x12
	.uaword	0x2aa7
	.uaword	0x37f7
	.uleb128 0x13
	.uaword	0xac
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x32ad
	.uaword	0x3807
	.uleb128 0x13
	.uaword	0xac
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x37f7
	.uleb128 0x12
	.uaword	0x336c
	.uaword	0x381c
	.uleb128 0x13
	.uaword	0xac
	.byte	0
	.byte	0
	.uleb128 0x16
	.uaword	0x380c
	.uleb128 0x12
	.uaword	0xe4
	.uaword	0x3831
	.uleb128 0x13
	.uaword	0xac
	.byte	0xaf
	.byte	0
	.uleb128 0x12
	.uaword	0xe4
	.uaword	0x3842
	.uleb128 0x15
	.uaword	0xac
	.uahalf	0x1db
	.byte	0
	.uleb128 0xd
	.string	"Ifx_FLASH"
	.byte	0x7
	.uahalf	0x40a
	.uaword	0x3854
	.uleb128 0x16
	.uaword	0x33d3
	.uleb128 0x5
	.byte	0x4
	.byte	0x8
	.byte	0x35
	.uaword	0x394f
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_none"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_correctedSingleBitError"
	.sleb128 1
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_correctedDoubleBitError"
	.sleb128 2
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_correctedSingleOrDoubleBitError"
	.sleb128 3
	.uleb128 0x6
	.string	"IfxFlash_ErrorTracking_uncorrectableMultiBitError"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_ErrorTracking"
	.byte	0x8
	.byte	0x3b
	.uaword	0x3859
	.uleb128 0x5
	.byte	0x4
	.byte	0x8
	.byte	0x40
	.uaword	0x39ac
	.uleb128 0x6
	.string	"IfxFlash_PortId_PortId_0"
	.sleb128 0
	.uleb128 0x6
	.string	"IfxFlash_PortId_PortId_1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_PortId"
	.byte	0x8
	.byte	0x43
	.uaword	0x396d
	.uleb128 0x17
	.byte	0x8
	.byte	0x8
	.byte	0x4f
	.uaword	0x39f2
	.uleb128 0x18
	.string	"address"
	.byte	0x8
	.byte	0x51
	.uaword	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"errorType"
	.byte	0x8
	.byte	0x52
	.uaword	0x394f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxFlash_ErrorTracking_Address"
	.byte	0x8
	.byte	0x53
	.uaword	0x39c3
	.uleb128 0x19
	.string	"__st64"
	.byte	0x3
	.byte	0x76
	.byte	0x1
	.byte	0x3
	.uaword	0x3a42
	.uleb128 0x1a
	.string	"addr"
	.byte	0x3
	.byte	0x76
	.uaword	0x189
	.uleb128 0x1a
	.string	"value"
	.byte	0x3
	.byte	0x76
	.uaword	0x159
	.byte	0
	.uleb128 0x1b
	.string	"__dsync"
	.byte	0x2
	.uahalf	0x540
	.byte	0x1
	.byte	0x3
	.uleb128 0x19
	.string	"__st64_lu"
	.byte	0x3
	.byte	0x89
	.byte	0x1
	.byte	0x3
	.uaword	0x3aa1
	.uleb128 0x1a
	.string	"addr"
	.byte	0x3
	.byte	0x89
	.uaword	0x189
	.uleb128 0x1a
	.string	"valueLower"
	.byte	0x3
	.byte	0x89
	.uaword	0x118
	.uleb128 0x1a
	.string	"valueUpper"
	.byte	0x3
	.byte	0x89
	.uaword	0x118
	.uleb128 0x1c
	.string	"value"
	.byte	0x3
	.byte	0x8b
	.uaword	0x159
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_clearCorrectableErrorTracking"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	.LFB166
	.uaword	.LFE166
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3aec
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.byte	0x24
	.uaword	0x39ac
	.uaword	.LLST0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_clearStatus"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	.LFB167
	.uaword	.LFE167
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3b42
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0x2a
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.uaword	.LASF18
	.byte	0x1
	.byte	0x2c
	.uaword	0x3b42
	.sleb128 -1358932652
	.uleb128 0x21
	.uaword	0x3a42
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x3b48
	.uleb128 0x16
	.uaword	0x118
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_clearUncorrectableErrorTracking"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.uaword	.LFB168
	.uaword	.LFE168
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3b98
	.uleb128 0x1f
	.uaword	.LASF16
	.byte	0x1
	.byte	0x34
	.uaword	0x39ac
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_disableCorrectableErrorTracking"
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.uaword	.LFB169
	.uaword	.LFE169
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3bf6
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.byte	0x3a
	.uaword	0x39ac
	.uaword	.LLST1
	.uleb128 0x23
	.string	"disable"
	.byte	0x1
	.byte	0x3a
	.uaword	0x139
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_disableUncorrectableErrorTracking"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	.LFB170
	.uaword	.LFE170
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3c54
	.uleb128 0x1f
	.uaword	.LASF16
	.byte	0x1
	.byte	0x40
	.uaword	0x39ac
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"disable"
	.byte	0x1
	.byte	0x40
	.uaword	0x139
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_disableWriteProtection"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB171
	.uaword	.LFE171
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3ce3
	.uleb128 0x1f
	.uaword	.LASF17
	.byte	0x1
	.byte	0x46
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.string	"ucb"
	.byte	0x1
	.byte	0x46
	.uaword	0x2aa
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.string	"password"
	.byte	0x1
	.byte	0x46
	.uaword	0x3ce3
	.uaword	.LLST2
	.uleb128 0x20
	.uaword	.LASF18
	.byte	0x1
	.byte	0x48
	.uaword	0x3b42
	.sleb128 -1358932676
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x49
	.uaword	0x118
	.uaword	.LLST3
	.uleb128 0x21
	.uaword	0x3a42
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x118
	.uleb128 0x26
	.byte	0x1
	.string	"IfxFlash_enterPageMode"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	0xd7
	.uaword	.LFB172
	.uaword	.LFE172
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3d47
	.uleb128 0x1e
	.uaword	.LASF19
	.byte	0x1
	.byte	0x56
	.uaword	0x118
	.uaword	.LLST4
	.uleb128 0x20
	.uaword	.LASF18
	.byte	0x1
	.byte	0x58
	.uaword	0x3b42
	.sleb128 -1358932652
	.uleb128 0x21
	.uaword	0x3a42
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseMultiplePhysicalSectors"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.uaword	.LFB173
	.uaword	.LFE173
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3deb
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.byte	0x6a
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.byte	0x6a
	.uaword	0x118
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.uaword	.LASF18
	.byte	0x1
	.byte	0x6c
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.byte	0x6d
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.byte	0x6e
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x1
	.byte	0x6f
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x21
	.uaword	0x3a42
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0x76
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseMultipleSectors"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	.LFB174
	.uaword	.LFE174
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3e87
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.byte	0x7a
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.byte	0x7a
	.uaword	0x118
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.uaword	.LASF18
	.byte	0x1
	.byte	0x7c
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.byte	0x7d
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.byte	0x7e
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x1
	.byte	0x7f
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x21
	.uaword	0x3a42
	.uaword	.LBB54
	.uaword	.LBE54
	.byte	0x1
	.byte	0x86
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_erasePhysicalSector"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.uaword	.LFB175
	.uaword	.LFE175
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3f15
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.byte	0x8a
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.uaword	.LASF18
	.byte	0x1
	.byte	0x8c
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.byte	0x8d
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.byte	0x8e
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x1
	.byte	0x8f
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x21
	.uaword	0x3a42
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0x96
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseSector"
	.byte	0x1
	.byte	0x9a
	.byte	0x1
	.uaword	.LFB176
	.uaword	.LFE176
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x3f9b
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.byte	0x9a
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.uaword	.LASF18
	.byte	0x1
	.byte	0x9c
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.byte	0x9d
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.byte	0x9e
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x1
	.byte	0x9f
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x21
	.uaword	0x3a42
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.byte	0xa6
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseVerifyMultipleSectors"
	.byte	0x1
	.byte	0xaa
	.byte	0x1
	.uaword	.LFB177
	.uaword	.LFE177
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x403d
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.byte	0xaa
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.byte	0xaa
	.uaword	0x118
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.uaword	.LASF18
	.byte	0x1
	.byte	0xac
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.byte	0xad
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.byte	0xae
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x1
	.byte	0xaf
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x21
	.uaword	0x3a42
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.byte	0xb6
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IfxFlash_eraseVerifySector"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	.LFB178
	.uaword	.LFE178
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x40c9
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.byte	0xba
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.uaword	.LASF18
	.byte	0x1
	.byte	0xbc
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x20
	.uaword	.LASF22
	.byte	0x1
	.byte	0xbd
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.byte	0xbe
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x20
	.uaword	.LASF24
	.byte	0x1
	.byte	0xbf
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x21
	.uaword	0x3a42
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.byte	0xc6
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"IfxFlash_getTrackedCorrectableErrors"
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.uaword	0x118
	.uaword	.LFB179
	.uaword	.LFE179
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x415d
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.byte	0xca
	.uaword	0x39ac
	.uaword	.LLST5
	.uleb128 0x1f
	.uaword	.LASF25
	.byte	0x1
	.byte	0xca
	.uaword	0x415d
	.byte	0x1
	.byte	0x64
	.uleb128 0x27
	.uaword	.LASF26
	.byte	0x1
	.byte	0xcc
	.uaword	0x118
	.uaword	.LLST6
	.uleb128 0x28
	.uaword	.LASF27
	.byte	0x1
	.byte	0xcd
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.uaword	0xc1
	.uaword	.LLST7
	.uleb128 0x29
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1c
	.string	"top"
	.byte	0x1
	.byte	0xd6
	.uaword	0x2964
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x39f2
	.uleb128 0x26
	.byte	0x1
	.string	"IfxFlash_getTrackedUncorrectableErrors"
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.uaword	0x118
	.uaword	.LFB180
	.uaword	.LFE180
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x41ff
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.byte	0xe8
	.uaword	0x39ac
	.uaword	.LLST8
	.uleb128 0x1f
	.uaword	.LASF25
	.byte	0x1
	.byte	0xe8
	.uaword	0x415d
	.byte	0x1
	.byte	0x64
	.uleb128 0x27
	.uaword	.LASF26
	.byte	0x1
	.byte	0xea
	.uaword	0x118
	.uaword	.LLST9
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.byte	0xeb
	.uaword	0x118
	.uaword	.LLST10
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xed
	.uaword	0xc1
	.uaword	.LLST11
	.uleb128 0x2a
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x1c
	.string	"top"
	.byte	0x1
	.byte	0xf4
	.uaword	0x3292
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_loadPage"
	.byte	0x1
	.uahalf	0x106
	.byte	0x1
	.uaword	.LFB181
	.uaword	.LFE181
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x42df
	.uleb128 0x2c
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x106
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"wordL"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x118
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"wordU"
	.byte	0x1
	.uahalf	0x106
	.uaword	0x118
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x108
	.uaword	0x42df
	.sleb128 -1358932496
	.uleb128 0x2f
	.uaword	0x3a50
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x42ce
	.uleb128 0x30
	.uaword	0x3a81
	.byte	0x1
	.byte	0x56
	.uleb128 0x30
	.uaword	0x3a6f
	.byte	0x1
	.byte	0x55
	.uleb128 0x31
	.uaword	0x3a63
	.sleb128 -1358932496
	.uleb128 0x2a
	.uaword	.LBB69
	.uaword	.LBE69
	.uleb128 0x32
	.uaword	0x3a93
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x33
	.uaword	0x3a18
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x3
	.byte	0x8c
	.uleb128 0x30
	.uaword	0x3a34
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x31
	.uaword	0x3a28
	.sleb128 -1358932496
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.uahalf	0x10c
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.uaword	0x159
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_loadPage2X32"
	.byte	0x1
	.uahalf	0x110
	.byte	0x1
	.uaword	.LFB182
	.uaword	.LFE182
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x435f
	.uleb128 0x2c
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x110
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"wordL"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x118
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.string	"wordU"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x118
	.byte	0x1
	.byte	0x56
	.uleb128 0x35
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x112
	.uaword	0x3b42
	.uaword	.LLST12
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.uahalf	0x118
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_resetToRead"
	.byte	0x1
	.uahalf	0x11c
	.byte	0x1
	.uaword	.LFB183
	.uaword	.LFE183
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x43b9
	.uleb128 0x2c
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x11e
	.uaword	0x3b42
	.sleb128 -1358932652
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.uahalf	0x121
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_resumeProtection"
	.byte	0x1
	.uahalf	0x125
	.byte	0x1
	.uaword	.LFB184
	.uaword	.LFE184
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4418
	.uleb128 0x2c
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x125
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x127
	.uaword	0x3b42
	.sleb128 -1358932652
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.uahalf	0x12b
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_selectCorrectableErrorTracking"
	.byte	0x1
	.uahalf	0x12f
	.byte	0x1
	.uaword	.LFB185
	.uaword	.LFE185
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4486
	.uleb128 0x36
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x39ac
	.uaword	.LLST13
	.uleb128 0x36
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x394f
	.uaword	.LLST14
	.uleb128 0x37
	.uaword	.LASF29
	.uaword	0x4496
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.3075
	.byte	0
	.uleb128 0x12
	.uaword	0x181
	.uaword	0x4496
	.uleb128 0x13
	.uaword	0xac
	.byte	0x27
	.byte	0
	.uleb128 0x38
	.uaword	0x4486
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_selectUncorrectableErrorTracking"
	.byte	0x1
	.uahalf	0x13b
	.byte	0x1
	.uaword	.LFB186
	.uaword	.LFE186
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x450b
	.uleb128 0x36
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x39ac
	.uaword	.LLST15
	.uleb128 0x36
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x394f
	.uaword	.LLST16
	.uleb128 0x37
	.uaword	.LASF29
	.uaword	0x451b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.3080
	.byte	0
	.uleb128 0x12
	.uaword	0x181
	.uaword	0x451b
	.uleb128 0x13
	.uaword	0xac
	.byte	0x29
	.byte	0
	.uleb128 0x38
	.uaword	0x450b
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_suspendResumeMultipleSectors"
	.byte	0x1
	.uahalf	0x145
	.byte	0x1
	.uaword	.LFB187
	.uaword	.LFE187
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x45cc
	.uleb128 0x2c
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x145
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x145
	.uaword	0x118
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x147
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x148
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x149
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.uahalf	0x151
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_suspendResumeSector"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.uaword	.LFB188
	.uaword	.LFE188
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4661
	.uleb128 0x2c
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x155
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x157
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x158
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x159
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.uahalf	0x161
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxFlash_waitUnbusy"
	.byte	0x1
	.uahalf	0x165
	.byte	0x1
	.uaword	0xd7
	.uaword	.LFB189
	.uaword	.LFE189
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x46c1
	.uleb128 0x2c
	.uaword	.LASF17
	.byte	0x1
	.uahalf	0x165
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.string	"flashType"
	.byte	0x1
	.uahalf	0x165
	.uaword	0x23c
	.byte	0x1
	.byte	0x55
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.uahalf	0x178
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_writeBurst"
	.byte	0x1
	.uahalf	0x17d
	.byte	0x1
	.uaword	.LFB190
	.uaword	.LFE190
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x474d
	.uleb128 0x2c
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x180
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x181
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x182
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB86
	.uaword	.LBE86
	.byte	0x1
	.uahalf	0x189
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_writePage"
	.byte	0x1
	.uahalf	0x18d
	.byte	0x1
	.uaword	.LFB191
	.uaword	.LFE191
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x47d8
	.uleb128 0x2c
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x190
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x191
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x192
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.uahalf	0x199
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxFlash_writePageOnce"
	.byte	0x1
	.uahalf	0x19d
	.byte	0x1
	.uaword	.LFB192
	.uaword	.LFE192
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4867
	.uleb128 0x2c
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x118
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.uaword	.LASF18
	.byte	0x1
	.uahalf	0x19f
	.uaword	0x3b42
	.sleb128 -1358910896
	.uleb128 0x2e
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x3b42
	.sleb128 -1358910888
	.uleb128 0x2e
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x2e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x3b42
	.sleb128 -1358910808
	.uleb128 0x34
	.uaword	0x3a42
	.uaword	.LBB90
	.uaword	.LBE90
	.byte	0x1
	.uahalf	0x1a9
	.byte	0
	.uleb128 0x3a
	.string	"Assert_verboseLevel"
	.byte	0x9
	.byte	0x7b
	.uaword	0x118
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL26
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL28
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf0055f0
	.uaword	.LVL36
	.uaword	.LFE182
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xaf0055f4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL41
	.uaword	.LFE185
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL45
	.uaword	.LFE186
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xec
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB166
	.uaword	.LFE166-.LFB166
	.uaword	.LFB167
	.uaword	.LFE167-.LFB167
	.uaword	.LFB168
	.uaword	.LFE168-.LFB168
	.uaword	.LFB169
	.uaword	.LFE169-.LFB169
	.uaword	.LFB170
	.uaword	.LFE170-.LFB170
	.uaword	.LFB171
	.uaword	.LFE171-.LFB171
	.uaword	.LFB172
	.uaword	.LFE172-.LFB172
	.uaword	.LFB173
	.uaword	.LFE173-.LFB173
	.uaword	.LFB174
	.uaword	.LFE174-.LFB174
	.uaword	.LFB175
	.uaword	.LFE175-.LFB175
	.uaword	.LFB176
	.uaword	.LFE176-.LFB176
	.uaword	.LFB177
	.uaword	.LFE177-.LFB177
	.uaword	.LFB178
	.uaword	.LFE178-.LFB178
	.uaword	.LFB179
	.uaword	.LFE179-.LFB179
	.uaword	.LFB180
	.uaword	.LFE180-.LFB180
	.uaword	.LFB181
	.uaword	.LFE181-.LFB181
	.uaword	.LFB182
	.uaword	.LFE182-.LFB182
	.uaword	.LFB183
	.uaword	.LFE183-.LFB183
	.uaword	.LFB184
	.uaword	.LFE184-.LFB184
	.uaword	.LFB185
	.uaword	.LFE185-.LFB185
	.uaword	.LFB186
	.uaword	.LFE186-.LFB186
	.uaword	.LFB187
	.uaword	.LFE187-.LFB187
	.uaword	.LFB188
	.uaword	.LFE188-.LFB188
	.uaword	.LFB189
	.uaword	.LFE189-.LFB189
	.uaword	.LFB190
	.uaword	.LFE190-.LFB190
	.uaword	.LFB191
	.uaword	.LFE191-.LFB191
	.uaword	.LFB192
	.uaword	.LFE192-.LFB192
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	0
	.uaword	0
	.uaword	.LFB166
	.uaword	.LFE166
	.uaword	.LFB167
	.uaword	.LFE167
	.uaword	.LFB168
	.uaword	.LFE168
	.uaword	.LFB169
	.uaword	.LFE169
	.uaword	.LFB170
	.uaword	.LFE170
	.uaword	.LFB171
	.uaword	.LFE171
	.uaword	.LFB172
	.uaword	.LFE172
	.uaword	.LFB173
	.uaword	.LFE173
	.uaword	.LFB174
	.uaword	.LFE174
	.uaword	.LFB175
	.uaword	.LFE175
	.uaword	.LFB176
	.uaword	.LFE176
	.uaword	.LFB177
	.uaword	.LFE177
	.uaword	.LFB178
	.uaword	.LFE178
	.uaword	.LFB179
	.uaword	.LFE179
	.uaword	.LFB180
	.uaword	.LFE180
	.uaword	.LFB181
	.uaword	.LFE181
	.uaword	.LFB182
	.uaword	.LFE182
	.uaword	.LFB183
	.uaword	.LFE183
	.uaword	.LFB184
	.uaword	.LFE184
	.uaword	.LFB185
	.uaword	.LFE185
	.uaword	.LFB186
	.uaword	.LFE186
	.uaword	.LFB187
	.uaword	.LFE187
	.uaword	.LFB188
	.uaword	.LFE188
	.uaword	.LFB189
	.uaword	.LFE189
	.uaword	.LFB190
	.uaword	.LFE190
	.uaword	.LFB191
	.uaword	.LFE191
	.uaword	.LFB192
	.uaword	.LFE192
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF14:
	.string	"DBGIFLCK"
.LASF7:
	.string	"EDCERRINJ"
.LASF18:
	.string	"addr1"
.LASF22:
	.string	"addr2"
.LASF23:
	.string	"addr3"
.LASF24:
	.string	"addr4"
.LASF8:
	.string	"ECCORDIS"
.LASF0:
	.string	"reserved_0"
.LASF10:
	.string	"reserved_2"
.LASF13:
	.string	"reserved_4"
.LASF12:
	.string	"reserved_5"
.LASF1:
	.string	"reserved_6"
.LASF11:
	.string	"reserved_9"
.LASF15:
	.string	"reserved_C"
.LASF3:
	.string	"STATUS"
.LASF4:
	.string	"DATA"
.LASF16:
	.string	"portId"
.LASF29:
	.string	"__func__"
.LASF26:
	.string	"numErrors"
.LASF27:
	.string	"fillingLevel"
.LASF25:
	.string	"trackedFlashAdresses"
.LASF21:
	.string	"numSector"
.LASF20:
	.string	"sectorAddr"
.LASF17:
	.string	"flash"
.LASF2:
	.string	"reserved_10"
.LASF5:
	.string	"reserved_16"
.LASF28:
	.string	"errorTracking"
.LASF19:
	.string	"pageAddr"
.LASF6:
	.string	"reserved_22"
.LASF9:
	.string	"reserved_27"
	.extern	Ifx_Assert_doLevel,STT_FUNC,0
	.extern	Assert_verboseLevel,STT_OBJECT,4
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
