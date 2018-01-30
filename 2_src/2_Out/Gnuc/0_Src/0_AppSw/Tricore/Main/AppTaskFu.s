	.file	"AppTaskFu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.appTaskfu_init,"ax",@progbits
	.align 1
	.global	appTaskfu_init
	.type	appTaskfu_init, @function
appTaskfu_init:
.LFB794:
	.file 1 "0_Src/0_AppSw/Tricore/Main/AppTaskFu.c"
	.loc 1 13 0
	.loc 1 14 0
	call	BasicLineScan_init
	.loc 1 15 0
	call	BasicPort_init
	.loc 1 16 0
	call	BasicGtmTom_init
	.loc 1 17 0
	call	BasicVadcBgScan_init
	.loc 1 18 0
	call	BasicGpt12Enc_init
	.loc 1 20 0
	call	AsclinShellInterface_init
	.loc 1 22 0
	mov	%d4, 1
	call	tft_app_init
	.loc 1 23 0
	j	perf_meas_init
.LFE794:
	.size	appTaskfu_init, .-appTaskfu_init
.section .text.appTaskfu_1ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1ms
	.type	appTaskfu_1ms, @function
appTaskfu_1ms:
.LFB795:
	.loc 1 28 0
	.loc 1 29 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 30 0
	mov	%d2, 1000
	.loc 1 29 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1m, %d15
	.loc 1 30 0
	jeq	%d15, %d2, .L5
	ret
.L5:
	.loc 1 31 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1m, %d15
	ret
.LFE795:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB796:
	.loc 1 38 0
	.loc 1 39 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 40 0
	mov	%d2, 1000
	.loc 1 39 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 40 0
	jeq	%d15, %d2, .L10
	.loc 1 44 0
	jz.t	%d15, 0, .L8
	.loc 1 47 0
	call	BasicPort_run
	.loc 1 48 0
	call	BasicGtmTom_run
	.loc 1 49 0
	call	BasicVadcBgScan_run
	.loc 1 51 0
	j	AsclinShellInterface_runLineScan
.L10:
	.loc 1 41 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_10m, %d15
.L8:
	.loc 1 45 0
	call	BasicLineScan_run
	.loc 1 47 0
	call	BasicPort_run
	.loc 1 48 0
	call	BasicGtmTom_run
	.loc 1 49 0
	call	BasicVadcBgScan_run
	.loc 1 51 0
	j	AsclinShellInterface_runLineScan
.LFE796:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB797:
	.loc 1 56 0
	.loc 1 57 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 58 0
	mov	%d2, 1000
	.loc 1 57 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_100m, %d15
	.loc 1 58 0
	jeq	%d15, %d2, .L15
	.loc 1 61 0
	jz.t	%d15, 0, .L13
	ret
.L15:
	.loc 1 59 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_100m, %d15
.L13:
	.loc 1 62 0
	j	tft_app_run
.LFE797:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB798:
	.loc 1 67 0
	.loc 1 68 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 69 0
	mov	%d2, 1000
	.loc 1 68 0
	add	%d15, 1
	st.w	[%a15] lo:task_cnt_1000m, %d15
	.loc 1 69 0
	jeq	%d15, %d2, .L18
	ret
.L18:
	.loc 1 70 0
	mov	%d15, 0
	st.w	[%a15] lo:task_cnt_1000m, %d15
	ret
.LFE798:
	.size	appTaskfu_1000ms, .-appTaskfu_1000ms
.section .text.appTaskfu_idle,"ax",@progbits
	.align 1
	.global	appTaskfu_idle
	.type	appTaskfu_idle, @function
appTaskfu_idle:
.LFB799:
	.loc 1 75 0
	.loc 1 77 0
	call	AsclinShellInterface_run
	.loc 1 78 0
	j	perf_meas_idle
.LFE799:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB800:
	.loc 1 82 0
	.loc 1 83 0
	j	BasicGpt12Enc_run
.LFE800:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
	.global	task_flag_1000m
.section .bss.task_flag_1000m,"aw",@nobits
	.type	task_flag_1000m, @object
	.size	task_flag_1000m, 1
task_flag_1000m:
	.zero	1
	.global	task_flag_100m
.section .bss.task_flag_100m,"aw",@nobits
	.type	task_flag_100m, @object
	.size	task_flag_100m, 1
task_flag_100m:
	.zero	1
	.global	task_flag_10m
.section .bss.task_flag_10m,"aw",@nobits
	.type	task_flag_10m, @object
	.size	task_flag_10m, 1
task_flag_10m:
	.zero	1
	.global	task_flag_1m
.section .bss.task_flag_1m,"aw",@nobits
	.type	task_flag_1m, @object
	.size	task_flag_1m, 1
task_flag_1m:
	.zero	1
.section .bss.task_cnt_1m,"aw",@nobits
	.align 2
	.type	task_cnt_1m, @object
	.size	task_cnt_1m, 4
task_cnt_1m:
	.zero	4
.section .bss.task_cnt_10m,"aw",@nobits
	.align 2
	.type	task_cnt_10m, @object
	.size	task_cnt_10m, 4
task_cnt_10m:
	.zero	4
.section .bss.task_cnt_100m,"aw",@nobits
	.align 2
	.type	task_cnt_100m, @object
	.size	task_cnt_100m, 4
task_cnt_100m:
	.zero	4
.section .bss.task_cnt_1000m,"aw",@nobits
	.align 2
	.type	task_cnt_1000m, @object
	.size	task_cnt_1000m, 4
task_cnt_1000m:
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
	.uaword	.LFB794
	.uaword	.LFE794-.LFB794
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB795
	.uaword	.LFE795-.LFB795
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB796
	.uaword	.LFE796-.LFB796
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB797
	.uaword	.LFE797-.LFB797
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB798
	.uaword	.LFE798-.LFB798
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB799
	.uaword	.LFE799-.LFB799
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB800
	.uaword	.LFE800-.LFB800
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "./0_Src/1_SrvSw/StdIf/IfxStdIf.h"
	.file 5 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
	.file 6 "./0_Src/1_SrvSw/SysSe/Comm/Ifx_Console.h"
	.file 7 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x937
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Main/AppTaskFu.c"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0xf2
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
	.uaword	0x9c
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0xa8
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
	.uaword	0xd3
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x161
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
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x2b
	.uaword	0x153
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x38
	.uaword	0xe4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x4
	.byte	0x61
	.uaword	0x194
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x201
	.uleb128 0x5
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd8
	.uaword	0x3a6
	.uleb128 0x6
	.string	"driver"
	.byte	0x5
	.byte	0xda
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"txDisabled"
	.byte	0x5
	.byte	0xdb
	.uaword	0x144
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"write"
	.byte	0x5
	.byte	0xde
	.uaword	0x3f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"read"
	.byte	0x5
	.byte	0xdf
	.uaword	0x439
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"getReadCount"
	.byte	0x5
	.byte	0xe0
	.uaword	0x454
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xe1
	.uaword	0x48d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe3
	.uaword	0x55e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe4
	.uaword	0x598
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe5
	.uaword	0x5db
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.string	"flushTx"
	.byte	0x5
	.byte	0xe6
	.uaword	0x5ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.string	"clearTx"
	.byte	0x5
	.byte	0xe7
	.uaword	0x668
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.string	"clearRx"
	.byte	0x5
	.byte	0xe8
	.uaword	0x638
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.string	"onReceive"
	.byte	0x5
	.byte	0xe9
	.uaword	0x686
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.string	"onTransmit"
	.byte	0x5
	.byte	0xea
	.uaword	0x6a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.string	"onError"
	.byte	0x5
	.byte	0xeb
	.uaword	0x6c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.string	"getSendCount"
	.byte	0x5
	.byte	0xed
	.uaword	0x4c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xee
	.uaword	0x4ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xef
	.uaword	0x6e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x3c7
	.uleb128 0x7
	.byte	0x4
	.uaword	0x3cd
	.uleb128 0x8
	.uaword	0x144
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x3c7
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x40e
	.uleb128 0x7
	.byte	0x4
	.uaword	0x414
	.uleb128 0x9
	.byte	0x1
	.uaword	0x144
	.uaword	0x433
	.uleb128 0xa
	.uaword	0x1cb
	.uleb128 0xa
	.uaword	0x194
	.uleb128 0xa
	.uaword	0x433
	.uleb128 0xa
	.uaword	0x196
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1aa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x58
	.uaword	0x40e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x61
	.uaword	0x477
	.uleb128 0x7
	.byte	0x4
	.uaword	0x47d
	.uleb128 0x9
	.byte	0x1
	.uaword	0x115
	.uaword	0x48d
	.uleb128 0xa
	.uaword	0x1cb
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x69
	.uaword	0x4b0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x4b6
	.uleb128 0x9
	.byte	0x1
	.uaword	0x3d2
	.uaword	0x4c6
	.uleb128 0xa
	.uaword	0x1cb
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x71
	.uaword	0x4e9
	.uleb128 0x7
	.byte	0x4
	.uaword	0x4ef
	.uleb128 0x9
	.byte	0x1
	.uaword	0x123
	.uaword	0x4ff
	.uleb128 0xa
	.uaword	0x1cb
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x79
	.uaword	0x524
	.uleb128 0x7
	.byte	0x4
	.uaword	0x52a
	.uleb128 0x9
	.byte	0x1
	.uaword	0x196
	.uaword	0x53a
	.uleb128 0xa
	.uaword	0x1cb
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x81
	.uaword	0x477
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x89
	.uaword	0x582
	.uleb128 0x7
	.byte	0x4
	.uaword	0x588
	.uleb128 0x9
	.byte	0x1
	.uaword	0x3a6
	.uaword	0x598
	.uleb128 0xa
	.uaword	0x1cb
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x94
	.uaword	0x5bb
	.uleb128 0x7
	.byte	0x4
	.uaword	0x5c1
	.uleb128 0x9
	.byte	0x1
	.uaword	0x144
	.uaword	0x5db
	.uleb128 0xa
	.uaword	0x1cb
	.uleb128 0xa
	.uaword	0x1aa
	.uleb128 0xa
	.uaword	0x196
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9f
	.uaword	0x5bb
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa9
	.uaword	0x61d
	.uleb128 0x7
	.byte	0x4
	.uaword	0x623
	.uleb128 0x9
	.byte	0x1
	.uaword	0x144
	.uaword	0x638
	.uleb128 0xa
	.uaword	0x1cb
	.uleb128 0xa
	.uaword	0x196
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xb0
	.uaword	0x656
	.uleb128 0x7
	.byte	0x4
	.uaword	0x65c
	.uleb128 0xb
	.byte	0x1
	.uaword	0x668
	.uleb128 0xa
	.uaword	0x1cb
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb7
	.uaword	0x656
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbf
	.uaword	0x656
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc6
	.uaword	0x656
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xcd
	.uaword	0x656
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd4
	.uaword	0x656
	.uleb128 0xc
	.byte	0x8
	.byte	0x6
	.byte	0x26
	.uaword	0x738
	.uleb128 0x6
	.string	"standardIo"
	.byte	0x6
	.byte	0x28
	.uaword	0x738
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"align"
	.byte	0x6
	.byte	0x29
	.uaword	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1eb
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x6
	.byte	0x2a
	.uaword	0x70a
	.uleb128 0xd
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.uaword	.LFB794
	.uaword	.LFE794
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.uaword	.LFB795
	.uaword	.LFE795
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uaword	.LFB796
	.uaword	.LFE796
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	.LFB797
	.uaword	.LFE797
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	.LFB798
	.uaword	.LFE798
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB799
	.uaword	.LFE799
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.uaword	.LFB800
	.uaword	.LFE800
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0xe
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x115
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0xe
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x115
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0xe
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x115
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0xe
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x115
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0xf
	.string	"Assert_verboseLevel"
	.byte	0x7
	.byte	0x7b
	.uaword	0x123
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Ifx_g_console"
	.byte	0x6
	.byte	0x2c
	.uaword	0x73e
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x144
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x10
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x144
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x10
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x144
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x10
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x144
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB794
	.uaword	.LFE794-.LFB794
	.uaword	.LFB795
	.uaword	.LFE795-.LFB795
	.uaword	.LFB796
	.uaword	.LFE796-.LFB796
	.uaword	.LFB797
	.uaword	.LFE797-.LFB797
	.uaword	.LFB798
	.uaword	.LFE798-.LFB798
	.uaword	.LFB799
	.uaword	.LFE799-.LFB799
	.uaword	.LFB800
	.uaword	.LFE800-.LFB800
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB794
	.uaword	.LFE794
	.uaword	.LFB795
	.uaword	.LFE795
	.uaword	.LFB796
	.uaword	.LFE796
	.uaword	.LFB797
	.uaword	.LFE797
	.uaword	.LFB798
	.uaword	.LFE798
	.uaword	.LFB799
	.uaword	.LFE799
	.uaword	.LFB800
	.uaword	.LFE800
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
	.extern	BasicGpt12Enc_run,STT_FUNC,0
	.extern	perf_meas_idle,STT_FUNC,0
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	tft_app_run,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	AsclinShellInterface_runLineScan,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	perf_meas_init,STT_FUNC,0
	.extern	tft_app_init,STT_FUNC,0
	.extern	AsclinShellInterface_init,STT_FUNC,0
	.extern	BasicGpt12Enc_init,STT_FUNC,0
	.extern	BasicVadcBgScan_init,STT_FUNC,0
	.extern	BasicGtmTom_init,STT_FUNC,0
	.extern	BasicPort_init,STT_FUNC,0
	.extern	BasicLineScan_init,STT_FUNC,0
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
