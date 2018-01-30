	.file	"IfxEth_Phy_Pef7071.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxEth_Phy_Pef7071_init,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_init
	.type	IfxEth_Phy_Pef7071_init, @function
IfxEth_Phy_Pef7071_init:
.LFB255:
	.file 1 "0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
	.loc 1 112 0
	.loc 1 113 0
	movh.a	%a15, hi:-268312560
	lea	%a15, [%a15] lo:-268312560
.L2:
	.loc 1 113 0 is_stmt 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L2
.LVL0:
.LBB17:
.LBB18:
	.loc 1 179 0 is_stmt 1
	mov.u	%d15, 32768
	movh.a	%a15, hi:-268312556
	lea	%a15, [%a15] lo:-268312556
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 3
	movh.a	%a15, hi:-268312560
	lea	%a15, [%a15] lo:-268312560
	st.w	[%a15]0, %d15
.L3:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L3
.LBE18:
.LBE17:
.LBB19:
.LBB20:
	.loc 1 167 0 discriminator 1
	movh.a	%a15, hi:-268312560
	.loc 1 172 0 discriminator 1
	movh.a	%a2, hi:-268312556
	.loc 1 167 0 discriminator 1
	lea	%a15, [%a15] lo:-268312560
	mov	%d2, 1
	.loc 1 172 0 discriminator 1
	lea	%a2, [%a2] lo:-268312556
.L10:
.LVL1:
	.loc 1 167 0 discriminator 1
	st.w	[%a15]0, %d2
.L4:
	.loc 1 169 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L4
	.loc 1 172 0
	ld.w	%d15, [%a2]0
.LVL2:
.LBE20:
.LBE19:
	.loc 1 130 0
	jnz.t	%d15, 15, .L10
.LVL3:
.LBB21:
.LBB22:
	.loc 1 179 0
	mov.u	%d15, 63234
.LVL4:
	movh.a	%a15, hi:-268312556
	lea	%a15, [%a15] lo:-268312556
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 1475
	movh.a	%a15, hi:-268312560
	lea	%a15, [%a15] lo:-268312560
	st.w	[%a15]0, %d15
.L6:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	and	%d15, %d15, 1
	jnz	%d15, .L6
.LVL5:
.LBE22:
.LBE21:
.LBB23:
.LBB24:
	.loc 1 179 0
	movh.a	%a15, hi:-268312556
	lea	%a15, [%a15] lo:-268312556
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 579
	movh.a	%a15, hi:-268312560
	lea	%a15, [%a15] lo:-268312560
	st.w	[%a15]0, %d15
.L7:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L7
.LVL6:
.LBE24:
.LBE23:
.LBB25:
.LBB26:
	.loc 1 179 0
	mov	%d15, 257
	movh.a	%a15, hi:-268312556
	lea	%a15, [%a15] lo:-268312556
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 259
	movh.a	%a15, hi:-268312560
	lea	%a15, [%a15] lo:-268312560
	st.w	[%a15]0, %d15
.L8:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L8
.LVL7:
.LBE26:
.LBE25:
.LBB27:
.LBB28:
	.loc 1 179 0
	mov	%d15, 4608
	movh.a	%a15, hi:-268312556
	lea	%a15, [%a15] lo:-268312556
	st.w	[%a15]0, %d15
	.loc 1 182 0
	mov	%d15, 3
	movh.a	%a15, hi:-268312560
	lea	%a15, [%a15] lo:-268312560
	st.w	[%a15]0, %d15
.L9:
	.loc 1 184 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L9
.LBE28:
.LBE27:
	.loc 1 143 0
	mov	%d15, 1
	movh.a	%a15, hi:IfxEth_Phy_Pef7071_iPhyInitDone
	.loc 1 146 0
	mov	%d2, 1
	.loc 1 143 0
	st.w	[%a15] lo:IfxEth_Phy_Pef7071_iPhyInitDone, %d15
	.loc 1 146 0
	ret
.LFE255:
	.size	IfxEth_Phy_Pef7071_init, .-IfxEth_Phy_Pef7071_init
.section .text.IfxEth_Phy_Pef7071_link,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_link
	.type	IfxEth_Phy_Pef7071_link, @function
IfxEth_Phy_Pef7071_link:
.LFB256:
	.loc 1 150 0
.LVL8:
	.loc 1 153 0
	movh.a	%a15, hi:IfxEth_Phy_Pef7071_iPhyInitDone
	ld.w	%d15, [%a15] lo:IfxEth_Phy_Pef7071_iPhyInitDone
	.loc 1 151 0
	mov	%d2, 0
	.loc 1 153 0
	jz	%d15, .L21
.LVL9:
.LBB29:
.LBB30:
.LBB31:
	.loc 1 167 0
	mov	%d15, 65
	movh.a	%a15, hi:-268312560
	lea	%a15, [%a15] lo:-268312560
	st.w	[%a15]0, %d15
.L22:
	.loc 1 169 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L22
	.loc 1 172 0
	movh.a	%a15, hi:-268312556
	lea	%a15, [%a15] lo:-268312556
	ld.w	%d2, [%a15]0
.LVL10:
.LBE31:
.LBE30:
	.loc 1 157 0
	extr.u	%d2, %d2, 2, 1
.LVL11:
.L21:
.LBE29:
	.loc 1 161 0
	ret
.LFE256:
	.size	IfxEth_Phy_Pef7071_link, .-IfxEth_Phy_Pef7071_link
.section .text.IfxEth_Phy_Pef7071_read_mdio_reg,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_read_mdio_reg
	.type	IfxEth_Phy_Pef7071_read_mdio_reg, @function
IfxEth_Phy_Pef7071_read_mdio_reg:
.LFB257:
	.loc 1 165 0
.LVL12:
	.loc 1 167 0
	sh	%d4, %d4, 11
.LVL13:
	or	%d4, %d4, 1
	sh	%d5, 6
.LVL14:
	or	%d5, %d4
	movh.a	%a15, hi:-268312560
	lea	%a15, [%a15] lo:-268312560
	st.w	[%a15]0, %d5
.L26:
	.loc 1 169 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L26
	.loc 1 172 0
	movh.a	%a15, hi:-268312556
	lea	%a15, [%a15] lo:-268312556
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	.loc 1 173 0
	ret
.LFE257:
	.size	IfxEth_Phy_Pef7071_read_mdio_reg, .-IfxEth_Phy_Pef7071_read_mdio_reg
.section .text.IfxEth_Phy_Pef7071_write_mdio_reg,"ax",@progbits
	.align 1
	.global	IfxEth_Phy_Pef7071_write_mdio_reg
	.type	IfxEth_Phy_Pef7071_write_mdio_reg, @function
IfxEth_Phy_Pef7071_write_mdio_reg:
.LFB258:
	.loc 1 177 0
.LVL15:
	.loc 1 182 0
	sh	%d4, %d4, 11
.LVL16:
	.loc 1 179 0
	movh.a	%a15, hi:-268312556
	.loc 1 182 0
	or	%d4, %d4, 3
	sh	%d5, 6
.LVL17:
	.loc 1 179 0
	lea	%a15, [%a15] lo:-268312556
	.loc 1 182 0
	or	%d5, %d4
	.loc 1 179 0
	st.w	[%a15]0, %d6
	.loc 1 182 0
	movh.a	%a15, hi:-268312560
	lea	%a15, [%a15] lo:-268312560
	st.w	[%a15]0, %d5
.L29:
	.loc 1 184 0 discriminator 1
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L29
	.loc 1 185 0
	ret
.LFE258:
	.size	IfxEth_Phy_Pef7071_write_mdio_reg, .-IfxEth_Phy_Pef7071_write_mdio_reg
	.global	IfxEth_Phy_Pef7071_iPhyInitDone
.section .bss.IfxEth_Phy_Pef7071_iPhyInitDone,"aw",@nobits
	.align 2
	.type	IfxEth_Phy_Pef7071_iPhyInitDone, @object
	.size	IfxEth_Phy_Pef7071_iPhyInitDone, 4
IfxEth_Phy_Pef7071_iPhyInitDone:
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
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
	.file 4 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x629
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.6.4 build on 2015-11-25"
	.byte	0x1
	.string	"0_Src/4_McHal/Tricore/Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.c"
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
	.uaword	0xbc
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
	.uaword	0xe7
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
	.string	"_Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xb8
	.uaword	0x213
	.uleb128 0x5
	.string	"GB"
	.byte	0x3
	.byte	0xba
	.uaword	0x17e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"GW"
	.byte	0x3
	.byte	0xbb
	.uaword	0x17e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"CR"
	.byte	0x3
	.byte	0xbc
	.uaword	0x17e
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"GR"
	.byte	0x3
	.byte	0xbd
	.uaword	0x17e
	.byte	0x4
	.byte	0x5
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PA"
	.byte	0x3
	.byte	0xbe
	.uaword	0x17e
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0xbf
	.uaword	0x17e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_ADDRESS_Bits"
	.byte	0x3
	.byte	0xc0
	.uaword	0x18e
	.uleb128 0x4
	.string	"_Ifx_ETH_GMII_DATA_Bits"
	.byte	0x4
	.byte	0x3
	.byte	0xc3
	.uaword	0x276
	.uleb128 0x5
	.string	"GD"
	.byte	0x3
	.byte	0xc5
	.uaword	0x17e
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0xc6
	.uaword	0x17e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ETH_GMII_DATA_Bits"
	.byte	0x3
	.byte	0xc7
	.uaword	0x234
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x5cf
	.uaword	0x2bc
	.uleb128 0x8
	.string	"U"
	.byte	0x3
	.uahalf	0x5d1
	.uaword	0x17e
	.uleb128 0x8
	.string	"I"
	.byte	0x3
	.uahalf	0x5d2
	.uaword	0xd1
	.uleb128 0x8
	.string	"B"
	.byte	0x3
	.uahalf	0x5d3
	.uaword	0x213
	.byte	0
	.uleb128 0x9
	.string	"Ifx_ETH_GMII_ADDRESS"
	.byte	0x3
	.uahalf	0x5d4
	.uaword	0x294
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x5d7
	.uaword	0x301
	.uleb128 0x8
	.string	"U"
	.byte	0x3
	.uahalf	0x5d9
	.uaword	0x17e
	.uleb128 0x8
	.string	"I"
	.byte	0x3
	.uahalf	0x5da
	.uaword	0xd1
	.uleb128 0x8
	.string	"B"
	.byte	0x3
	.uahalf	0x5db
	.uaword	0x276
	.byte	0
	.uleb128 0x9
	.string	"Ifx_ETH_GMII_DATA"
	.byte	0x3
	.uahalf	0x5dc
	.uaword	0x2d9
	.uleb128 0xa
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_read_mdio_reg"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.byte	0x1
	.uaword	0x36e
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa4
	.uaword	0x11b
	.uleb128 0xc
	.string	"regaddr"
	.byte	0x1
	.byte	0xa4
	.uaword	0x11b
	.uleb128 0xc
	.string	"pdata"
	.byte	0x1
	.byte	0xa4
	.uaword	0x36e
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x11b
	.uleb128 0xa
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_write_mdio_reg"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.byte	0x1
	.uaword	0x3c7
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb0
	.uaword	0x11b
	.uleb128 0xc
	.string	"regaddr"
	.byte	0x1
	.byte	0xb0
	.uaword	0x11b
	.uleb128 0xc
	.string	"data"
	.byte	0x1
	.byte	0xb0
	.uaword	0x11b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_init"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	0x11b
	.uaword	.LFB255
	.uaword	.LFE255
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x4f3
	.uleb128 0xf
	.string	"value"
	.byte	0x1
	.byte	0x7d
	.uaword	0x11b
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	0x374
	.uaword	.LBB17
	.uaword	.LBE17
	.byte	0x1
	.byte	0x7c
	.uaword	0x42f
	.uleb128 0x11
	.uaword	0x3ba
	.uahalf	0x8000
	.uleb128 0x12
	.uaword	0x3ab
	.byte	0
	.uleb128 0x12
	.uaword	0x3a0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x31b
	.uaword	.LBB19
	.uaword	.LBE19
	.byte	0x1
	.byte	0x81
	.uaword	0x45b
	.uleb128 0x13
	.uaword	0x360
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1015
	.sleb128 0
	.uleb128 0x12
	.uaword	0x351
	.byte	0
	.uleb128 0x12
	.uaword	0x346
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x374
	.uaword	.LBB21
	.uaword	.LBE21
	.byte	0x1
	.byte	0x85
	.uaword	0x482
	.uleb128 0x11
	.uaword	0x3ba
	.uahalf	0xf702
	.uleb128 0x12
	.uaword	0x3ab
	.byte	0x17
	.uleb128 0x12
	.uaword	0x3a0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x374
	.uaword	.LBB23
	.uaword	.LBE23
	.byte	0x1
	.byte	0x86
	.uaword	0x4a8
	.uleb128 0x12
	.uaword	0x3ba
	.byte	0
	.uleb128 0x12
	.uaword	0x3ab
	.byte	0x9
	.uleb128 0x12
	.uaword	0x3a0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uaword	0x374
	.uaword	.LBB25
	.uaword	.LBE25
	.byte	0x1
	.byte	0x87
	.uaword	0x4cf
	.uleb128 0x11
	.uaword	0x3ba
	.uahalf	0x101
	.uleb128 0x12
	.uaword	0x3ab
	.byte	0x4
	.uleb128 0x12
	.uaword	0x3a0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x374
	.uaword	.LBB27
	.uaword	.LBE27
	.byte	0x1
	.byte	0x88
	.uleb128 0x11
	.uaword	0x3ba
	.uahalf	0x1200
	.uleb128 0x12
	.uaword	0x3ab
	.byte	0
	.uleb128 0x12
	.uaword	0x3a0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"IfxEth_Phy_Pef7071_link"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.uaword	0x13c
	.uaword	.LFB256
	.uaword	.LFE256
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x585
	.uleb128 0xf
	.string	"linkEstablished"
	.byte	0x1
	.byte	0x97
	.uaword	0x13c
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0xf
	.string	"value"
	.byte	0x1
	.byte	0x9b
	.uaword	0x11b
	.uaword	.LLST2
	.uleb128 0x14
	.uaword	0x31b
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0x9c
	.uleb128 0x16
	.uaword	0x360
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	0x351
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	0x346
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x31b
	.uaword	.LFB257
	.uaword	.LFE257
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x5b3
	.uleb128 0x16
	.uaword	0x346
	.uaword	.LLST6
	.uleb128 0x16
	.uaword	0x351
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	0x360
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x17
	.uaword	0x374
	.uaword	.LFB258
	.uaword	.LFE258
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0x5e1
	.uleb128 0x16
	.uaword	0x3a0
	.uaword	.LLST8
	.uleb128 0x16
	.uaword	0x3ab
	.uaword	.LLST9
	.uleb128 0x13
	.uaword	0x3ba
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x18
	.string	"Assert_verboseLevel"
	.byte	0x4
	.byte	0x7b
	.uaword	0x11b
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"IfxEth_Phy_Pef7071_iPhyInitDone"
	.byte	0x1
	.byte	0x69
	.uaword	0x11b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IfxEth_Phy_Pef7071_iPhyInitDone
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE256
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1351
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB255
	.uaword	.LFE255
	.uaword	.LFB256
	.uaword	.LFE256
	.uaword	.LFB257
	.uaword	.LFE257
	.uaword	.LFB258
	.uaword	.LFE258
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_16"
.LASF1:
	.string	"layeraddr"
	.ident	"GCC: (HighTec Release v4.6.6.0-infineon-1.1) 4.6.4 build on 2015-11-25"
