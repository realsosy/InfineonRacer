	.file	"InfineonRacer.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.InfineonRacer_init,"ax",@progbits
	.align 1
	.global	InfineonRacer_init
	.type	InfineonRacer_init, @function
InfineonRacer_init:
.LFB650:
	.file 1 "0_Src/0_AppSw/Tricore/Main/InfineonRacer.c"
	.loc 1 42 0
	.loc 1 44 0
	ret
.LFE650:
	.size	InfineonRacer_init, .-InfineonRacer_init
.section .text.InfineonRacer_run,"ax",@progbits
	.align 1
	.global	InfineonRacer_run
	.type	InfineonRacer_run, @function
InfineonRacer_run:
.LFB651:
	.loc 1 46 0
	.loc 1 48 0
	ret
.LFE651:
	.size	InfineonRacer_run, .-InfineonRacer_run
	.global	IR_Ctrl
.section .bss.IR_Ctrl,"aw",@nobits
	.align 2
	.type	IR_Ctrl, @object
	.size	IR_Ctrl, 8
IR_Ctrl:
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
	.uaword	.LFB650
	.uaword	.LFE650-.LFB650
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB651
	.uaword	.LFE651-.LFB651
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "0_Src/0_AppSw/Tricore/Main/InfineonRacer.h"
	.file 4 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x246
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/0_AppSw/Tricore/Main/InfineonRacer.c"
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
	.byte	0x2
	.byte	0x5d
	.uaword	0xac
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x128
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
	.uaword	0xd7
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
	.byte	0x8
	.byte	0x3
	.byte	0x1a
	.uaword	0x1ba
	.uleb128 0x5
	.string	"dummy"
	.byte	0x3
	.byte	0x1b
	.uaword	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"basicTest"
	.byte	0x3
	.byte	0x1c
	.uaword	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x3
	.byte	0x1d
	.uaword	0x18d
	.uleb128 0x6
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.uaword	.LFB650
	.uaword	.LFE650
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x6
	.byte	0x1
	.string	"InfineonRacer_run"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	.LFB651
	.uaword	.LFE651
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x7
	.string	"Assert_verboseLevel"
	.byte	0x4
	.byte	0x7b
	.uaword	0x10b
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"IR_Ctrl"
	.byte	0x1
	.byte	0x1d
	.uaword	0x1ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Ctrl
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB650
	.uaword	.LFE650-.LFB650
	.uaword	.LFB651
	.uaword	.LFE651-.LFB651
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB650
	.uaword	.LFE650
	.uaword	.LFB651
	.uaword	.LFE651
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
