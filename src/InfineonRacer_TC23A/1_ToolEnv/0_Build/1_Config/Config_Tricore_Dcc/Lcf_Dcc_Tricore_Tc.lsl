/**
 * \file Lcf_Dcc_Tricore_Tc.lsl
 * \brief Linker command file for Diab compiler.
 *
 * \copyright Copyright (c) 2017 Infineon Technologies AG. All rights reserved.
 *
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 */
 
-Xgenerate-copytables

LCF_CSA0_SIZE =		8k;
LCF_USTACK0_SIZE =	2k;
LCF_ISTACK0_SIZE =	1k;

LCF_HEAP_SIZE =		2k;

LCF_DSPR0_START =	0x70000000;
LCF_DSPR0_SIZE =	184k;

LCF_CSA0_OFFSET	=	(LCF_DSPR0_SIZE - 1k - LCF_CSA0_SIZE);
LCF_ISTACK0_OFFSET =	(LCF_CSA0_OFFSET - 256 - LCF_ISTACK0_SIZE);
LCF_USTACK0_OFFSET =	(LCF_ISTACK0_OFFSET - 256 - LCF_USTACK0_SIZE);

LCF_HEAP0_OFFSET =	(LCF_USTACK0_OFFSET - LCF_HEAP_SIZE);

LCF_INTVEC0_START =	0x801F4000;
LCF_TRAPVEC0_START =	0x80000100;

RESET =			0x80000020;

MEMORY
{
	dsram0: org = 0x70000000 + 100, len = 184K - 100 /* Workaround for segment overlap problem*/
	psram0: org = 0x70100000, len = 24K
	
	psram_local: org = 0xc0000000, len = 24K
	
	pfls0: org = 0x80000000, len = 2M
	pfls0_nc: org = 0xa0000000, len = 2M
	
	dfls0: org = 0xaf000000, len = 384K
	
	lmuram: org = 0x90000000, len = 32K
	lmuram_nc: org = 0xb0000000, len = 32K
	
	edmem: org = 0x9f000000, len = 512K
	edmem_nc: org = 0xbf000000, len = 512K
}

SECTIONS
{	
	/*This section is always required as Boot mode header 0 address absolutely restricted at address 0x80000000*/
	GROUP BIND(0x80000000) : 
	{
		.bmhd_0 (CONST) : 
		{
			BootModeHeader0 = .;
			KEEP(*(.bmhd_0))
		}
	} > pfls0
	
	/*This section is always required as Boot mode header 1 address absolutely restricted at address 0x80020000*/
	GROUP BIND(0x80020000) : 
	{
		.bmhd_1 (CONST) : 
		{
			BootModeHeader1 = .;
			KEEP(*(.bmhd_1))
		}
	} > pfls0
	
	/*This section is always required as user start address absolutely restricted at address 0x80000020*/
	GROUP BIND(0x80000020) : 
	{
		.startup (TEXT) : 
		{
			BootModeIndex = .;
			. = ALIGN(4);
			KEEP(*(.start))
			. = ALIGN(4);
		}
	} > pfls0
	
	/*This section contains the data indirection pointers to interface external devices*/
	GROUP BIND(0x80000040) : 
	{
		.interface_const (CONST) :
		{
			__IF_CONST = .;
			KEEP (*(.interface_const))
			. = ALIGN(4);
		}
	} > pfls0

	GROUP BIND(LCF_TRAPVEC0_START) : 
	{
		.traptab_tc0 (TEXT) :
		{
			__TRAPTAB_CPU0 = .;
			KEEP (*(.traptab_cpu0))
		}
	} > pfls0
	
	GROUP :
	{
		.zrodata (CONST) :
		{
			*(.zrodata)	
		}
	
		.srodata (CONST) :
		{
			*(.srodata)
	    	*(.ldata)
	    	*(.lbss)	/*Workaround to getrid of linker warning for external const definitions*/
		}
		_LITERAL_DATA_ = SIZEOF(.srodata) ? ADDR(.srodata) + 32k : (ADDR(.srodata) & 0xF0000000) + 32k ;
		__A1_MEM = _LITERAL_DATA_;
		 	
	   	.rodata (CONST) :
		{
			*(.rodata)
	  	}
	  	
	  	.copytable (CONST) : 
	  	{
	  		__DATA_ROM = .;
	  	}
	  	
	  	.text (TEXT) :
		{
			*(.text)
			*(.frame_info)
			*(.init)
			*(.fini)
			. = ALIGN(4);
		}
		
		.ctors (CONST) ALIGN(4) : 
		{
			ctordtor.o(.ctors)
			*(.ctors) 
		}
		.dtors (CONST) ALIGN(4) :
		{ 
			ctordtor.o(.dtors)
			*(.dtors)
		}
	} > pfls0
	
	GROUP : 
	{
		.zdata_tc0 (DATA) LOAD(> pfls0) COPYTABLE :
		{  
			*(.zdata_cpu0)
	    }
	    
	    .zbss_tc0 (BSS) :
		{
			*(.zbss_cpu0)
		}
	} > dsram0
	
	/*RAM sections without cpu sufix will be here*/
	
	GROUP : 
	{	
		.zdata (DATA) LOAD(> pfls0) COPYTABLE :
		{
			*(.zdata) 	
		}
		
		.sdata (DATA) LOAD(> pfls0) COPYTABLE :
		{
			*(.sdata)
		}
		
		.sbss (BSS) :
		{
			*(.sbss)
		}
		
		_SMALL_DATA_ = SIZEOF(.sdata) ? ADDR(.sdata) + 32k : (ADDR(.sdata) & 0xF0000000) + 32k ;
		__A0_MEM = _SMALL_DATA_;
				
		.data LOAD(> pfls0) COPYTABLE :
		{
			*(.data)	
		}
		
		.bss (BSS) :
		{
			*(.bss) 	
		}
		
		.heap  :
		{
    		. = ALIGN(4);
    		__HEAP = .;
    		__HEAP_START = .;
    		__HEAP_END = . + LCF_HEAP_SIZE;
		}
	} > dsram0
		
	GROUP : 
	{	
		.data_tc0 (DATA) LOAD(> pfls0) COPYTABLE :
		{
			*(.data_cpu0)
		}
		
		.bss_tc0 (BSS) :
		{
			*(.bss_cpu0)
		}
	} > dsram0
	
	GROUP :
	{
		.psram0_text (TEXT) LOAD(> pfls0) COPYTABLE :
		{
			. = ALIGN(2);
			*(.psram_cpu0)
			*(.cpu0_psram)
		}
	} > psram0
	
	/*CPU0 Stack and csa reservation*/

	GROUP BIND(LCF_DSPR0_START + LCF_USTACK0_OFFSET) : 
	{	
		.ustack_tc0 (BSS) :
		{
			__USTACK0_END = .;
			. = . + LCF_USTACK0_SIZE;
			__USTACK0 = .;
		}
	} > dsram0
		
	GROUP BIND(LCF_DSPR0_START + LCF_ISTACK0_OFFSET) : 
	{	
		.istack_tc0 (BSS) :
		{
			__ISTACK0_END = .;
			. = . + LCF_ISTACK0_SIZE;
			__ISTACK0 = .;
		}
	} > dsram0
		
	GROUP BIND(LCF_DSPR0_START + LCF_CSA0_OFFSET) : 
	{	
		.csa_tc0 (BSS) :
		{
			__CSA0 = .;
			. = . + LCF_CSA0_SIZE;
			__CSA0_END = .;
		}
	} > dsram0
	
	GROUP : 
	{			
	   	.rodata_a8 :
		{
			*(.rodata_a8)
		}
	} > pfls0
	
	__A8_MEM = SIZEOF(.rodata_a8) ? ADDR(.rodata_a8) + 32k : (ADDR(.rodata_a8) & 0xF0000000) + 32k ;
	
	GROUP : 
	{			
		.lmu_zdata (DATA) LOAD(> pfls0) COPYTABLE :
		{
			*(.zdata_lmu)
		}
		
		.lmu_zbss (BSS) :
		{
			*(.zbss_lmu)
		}
		
		.lmu_sdata (DATA) LOAD(> pfls0) COPYTABLE :
		{
			*(.sdata_lmu)
			*(.sdata_a9)
		}
		
		.lmu_sbss (BSS) :
		{
			*(.sbss_lmu)
			*(.sbss_a9)
		}
		__A9_MEM = SIZEOF(.lmu_sdata) ? ADDR(.lmu_sdata) + 32k : (ADDR(.lmu_sdata) & 0xF0000000) + 32k ;
		
		.lmu_data (DATA) LOAD(> pfls0) COPYTABLE :
		{
			*(.data_lmu)
		}
		
		.lmu_bss (BSS) :
		{
			*(.bss_lmu)
		}
	} > lmuram
					
	GROUP BIND(LCF_INTVEC0_START + 0x0)   : { .inttab_tc0_000 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.0)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x20)   : { .inttab_tc0_001 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.1)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x40)   : { .inttab_tc0_002 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.2)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x60)   : { .inttab_tc0_003 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.3)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x80)   : { .inttab_tc0_004 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.4)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xA0)   : { .inttab_tc0_005 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.5)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xC0)   : { .inttab_tc0_006 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.6)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xE0)   : { .inttab_tc0_007 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.7)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x100)   : { .inttab_tc0_008 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.8)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x120)   : { .inttab_tc0_009 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.9)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x140)   : { .inttab_tc0_00A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.10)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x160)   : { .inttab_tc0_00B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.11)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x180)   : { .inttab_tc0_00C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.12)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1A0)   : { .inttab_tc0_00D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.13)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1C0)   : { .inttab_tc0_00E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.14)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1E0)   : { .inttab_tc0_00F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.15)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x200)   : { .inttab_tc0_010 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.16)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x220)   : { .inttab_tc0_011 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.17)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x240)   : { .inttab_tc0_012 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.18)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x260)   : { .inttab_tc0_013 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.19)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x280)   : { .inttab_tc0_014 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.20)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x2A0)   : { .inttab_tc0_015 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.21)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x2C0)   : { .inttab_tc0_016 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.22)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x2E0)   : { .inttab_tc0_017 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.23)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x300)   : { .inttab_tc0_018 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.24)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x320)   : { .inttab_tc0_019 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.25)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x340)   : { .inttab_tc0_01A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.26)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x360)   : { .inttab_tc0_01B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.27)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x380)   : { .inttab_tc0_01C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.28)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x3A0)   : { .inttab_tc0_01D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.29)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x3C0)   : { .inttab_tc0_01E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.30)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x3E0)   : { .inttab_tc0_01F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.31)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x400)   : { .inttab_tc0_020 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.32)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x420)   : { .inttab_tc0_021 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.33)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x440)   : { .inttab_tc0_022 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.34)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x460)   : { .inttab_tc0_023 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.35)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x480)   : { .inttab_tc0_024 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.36)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x4A0)   : { .inttab_tc0_025 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.37)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x4C0)   : { .inttab_tc0_026 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.38)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x4E0)   : { .inttab_tc0_027 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.39)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x500)   : { .inttab_tc0_028 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.40)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x520)   : { .inttab_tc0_029 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.41)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x540)   : { .inttab_tc0_02A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.42)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x560)   : { .inttab_tc0_02B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.43)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x580)   : { .inttab_tc0_02C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.44)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x5A0)   : { .inttab_tc0_02D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.45)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x5C0)   : { .inttab_tc0_02E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.46)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x5E0)   : { .inttab_tc0_02F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.47)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x600)   : { .inttab_tc0_030 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.48)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x620)   : { .inttab_tc0_031 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.49)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x640)   : { .inttab_tc0_032 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.50)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x660)   : { .inttab_tc0_033 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.51)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x680)   : { .inttab_tc0_034 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.52)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x6A0)   : { .inttab_tc0_035 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.53)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x6C0)   : { .inttab_tc0_036 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.54)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x6E0)   : { .inttab_tc0_037 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.55)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x700)   : { .inttab_tc0_038 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.56)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x720)   : { .inttab_tc0_039 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.57)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x740)   : { .inttab_tc0_03A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.58)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x760)   : { .inttab_tc0_03B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.59)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x780)   : { .inttab_tc0_03C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.60)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x7A0)   : { .inttab_tc0_03D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.61)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x7C0)   : { .inttab_tc0_03E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.62)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x7E0)   : { .inttab_tc0_03F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.63)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x800)   : { .inttab_tc0_040 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.64)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x820)   : { .inttab_tc0_041 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.65)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x840)   : { .inttab_tc0_042 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.66)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x860)   : { .inttab_tc0_043 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.67)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x880)   : { .inttab_tc0_044 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.68)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x8A0)   : { .inttab_tc0_045 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.69)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x8C0)   : { .inttab_tc0_046 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.70)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x8E0)   : { .inttab_tc0_047 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.71)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x900)   : { .inttab_tc0_048 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.72)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x920)   : { .inttab_tc0_049 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.73)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x940)   : { .inttab_tc0_04A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.74)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x960)   : { .inttab_tc0_04B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.75)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x980)   : { .inttab_tc0_04C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.76)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x9A0)   : { .inttab_tc0_04D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.77)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x9C0)   : { .inttab_tc0_04E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.78)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x9E0)   : { .inttab_tc0_04F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.79)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xA00)   : { .inttab_tc0_050 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.80)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xA20)   : { .inttab_tc0_051 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.81)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xA40)   : { .inttab_tc0_052 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.82)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xA60)   : { .inttab_tc0_053 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.83)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xA80)   : { .inttab_tc0_054 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.84)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xAA0)   : { .inttab_tc0_055 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.85)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xAC0)   : { .inttab_tc0_056 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.86)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xAE0)   : { .inttab_tc0_057 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.87)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xB00)   : { .inttab_tc0_058 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.88)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xB20)   : { .inttab_tc0_059 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.89)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xB40)   : { .inttab_tc0_05A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.90)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xB60)   : { .inttab_tc0_05B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.91)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xB80)   : { .inttab_tc0_05C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.92)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xBA0)   : { .inttab_tc0_05D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.93)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xBC0)   : { .inttab_tc0_05E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.94)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xBE0)   : { .inttab_tc0_05F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.95)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xC00)   : { .inttab_tc0_060 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.96)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xC20)   : { .inttab_tc0_061 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.97)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xC40)   : { .inttab_tc0_062 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.98)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xC60)   : { .inttab_tc0_063 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.99)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xC80)   : { .inttab_tc0_064 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.100)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xCA0)   : { .inttab_tc0_065 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.101)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xCC0)   : { .inttab_tc0_066 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.102)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xCE0)   : { .inttab_tc0_067 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.103)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xD00)   : { .inttab_tc0_068 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.104)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xD20)   : { .inttab_tc0_069 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.105)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xD40)   : { .inttab_tc0_06A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.106)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xD60)   : { .inttab_tc0_06B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.107)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xD80)   : { .inttab_tc0_06C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.108)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xDA0)   : { .inttab_tc0_06D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.109)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xDC0)   : { .inttab_tc0_06E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.110)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xDE0)   : { .inttab_tc0_06F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.111)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xE00)   : { .inttab_tc0_070 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.112)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xE20)   : { .inttab_tc0_071 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.113)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xE40)   : { .inttab_tc0_072 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.114)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xE60)   : { .inttab_tc0_073 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.115)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xE80)   : { .inttab_tc0_074 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.116)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xEA0)   : { .inttab_tc0_075 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.117)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xEC0)   : { .inttab_tc0_076 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.118)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xEE0)   : { .inttab_tc0_077 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.119)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xF00)   : { .inttab_tc0_078 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.120)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xF20)   : { .inttab_tc0_079 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.121)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xF40)   : { .inttab_tc0_07A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.122)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xF60)   : { .inttab_tc0_07B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.123)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xF80)   : { .inttab_tc0_07C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.124)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xFA0)   : { .inttab_tc0_07D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.125)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xFC0)   : { .inttab_tc0_07E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.126)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0xFE0)   : { .inttab_tc0_07F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.127)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1000)   : { .inttab_tc0_080 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.128)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1020)   : { .inttab_tc0_081 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.129)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1040)   : { .inttab_tc0_082 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.130)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1060)   : { .inttab_tc0_083 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.131)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1080)   : { .inttab_tc0_084 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.132)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x10A0)   : { .inttab_tc0_085 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.133)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x10C0)   : { .inttab_tc0_086 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.134)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x10E0)   : { .inttab_tc0_087 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.135)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1100)   : { .inttab_tc0_088 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.136)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1120)   : { .inttab_tc0_089 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.137)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1140)   : { .inttab_tc0_08A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.138)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1160)   : { .inttab_tc0_08B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.139)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1180)   : { .inttab_tc0_08C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.140)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x11A0)   : { .inttab_tc0_08D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.141)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x11C0)   : { .inttab_tc0_08E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.142)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x11E0)   : { .inttab_tc0_08F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.143)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1200)   : { .inttab_tc0_090 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.144)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1220)   : { .inttab_tc0_091 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.145)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1240)   : { .inttab_tc0_092 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.146)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1260)   : { .inttab_tc0_093 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.147)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1280)   : { .inttab_tc0_094 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.148)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x12A0)   : { .inttab_tc0_095 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.149)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x12C0)   : { .inttab_tc0_096 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.150)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x12E0)   : { .inttab_tc0_097 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.151)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1300)   : { .inttab_tc0_098 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.152)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1320)   : { .inttab_tc0_099 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.153)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1340)   : { .inttab_tc0_09A (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.154)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1360)   : { .inttab_tc0_09B (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.155)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1380)   : { .inttab_tc0_09C (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.156)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x13A0)   : { .inttab_tc0_09D (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.157)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x13C0)   : { .inttab_tc0_09E (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.158)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x13E0)   : { .inttab_tc0_09F (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.159)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1400)   : { .inttab_tc0_0A0 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.160)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1420)   : { .inttab_tc0_0A1 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.161)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1440)   : { .inttab_tc0_0A2 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.162)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1460)   : { .inttab_tc0_0A3 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.163)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1480)   : { .inttab_tc0_0A4 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.164)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x14A0)   : { .inttab_tc0_0A5 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.165)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x14C0)   : { .inttab_tc0_0A6 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.166)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x14E0)   : { .inttab_tc0_0A7 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.167)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1500)   : { .inttab_tc0_0A8 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.168)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1520)   : { .inttab_tc0_0A9 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.169)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1540)   : { .inttab_tc0_0AA (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.170)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1560)   : { .inttab_tc0_0AB (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.171)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1580)   : { .inttab_tc0_0AC (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.172)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x15A0)   : { .inttab_tc0_0AD (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.173)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x15C0)   : { .inttab_tc0_0AE (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.174)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x15E0)   : { .inttab_tc0_0AF (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.175)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1600)   : { .inttab_tc0_0B0 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.176)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1620)   : { .inttab_tc0_0B1 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.177)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1640)   : { .inttab_tc0_0B2 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.178)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1660)   : { .inttab_tc0_0B3 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.179)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1680)   : { .inttab_tc0_0B4 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.180)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x16A0)   : { .inttab_tc0_0B5 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.181)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x16C0)   : { .inttab_tc0_0B6 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.182)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x16E0)   : { .inttab_tc0_0B7 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.183)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1700)   : { .inttab_tc0_0B8 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.184)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1720)   : { .inttab_tc0_0B9 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.185)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1740)   : { .inttab_tc0_0BA (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.186)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1760)   : { .inttab_tc0_0BB (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.187)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1780)   : { .inttab_tc0_0BC (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.188)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x17A0)   : { .inttab_tc0_0BD (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.189)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x17C0)   : { .inttab_tc0_0BE (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.190)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x17E0)   : { .inttab_tc0_0BF (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.191)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1800)   : { .inttab_tc0_0C0 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.192)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1820)   : { .inttab_tc0_0C1 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.193)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1840)   : { .inttab_tc0_0C2 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.194)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1860)   : { .inttab_tc0_0C3 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.195)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1880)   : { .inttab_tc0_0C4 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.196)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x18A0)   : { .inttab_tc0_0C5 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.197)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x18C0)   : { .inttab_tc0_0C6 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.198)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x18E0)   : { .inttab_tc0_0C7 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.199)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1900)   : { .inttab_tc0_0C8 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.200)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1920)   : { .inttab_tc0_0C9 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.201)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1940)   : { .inttab_tc0_0CA (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.202)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1960)   : { .inttab_tc0_0CB (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.203)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1980)   : { .inttab_tc0_0CC (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.204)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x19A0)   : { .inttab_tc0_0CD (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.205)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x19C0)   : { .inttab_tc0_0CE (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.206)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x19E0)   : { .inttab_tc0_0CF (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.207)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1A00)   : { .inttab_tc0_0D0 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.208)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1A20)   : { .inttab_tc0_0D1 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.209)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1A40)   : { .inttab_tc0_0D2 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.210)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1A60)   : { .inttab_tc0_0D3 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.211)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1A80)   : { .inttab_tc0_0D4 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.212)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1AA0)   : { .inttab_tc0_0D5 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.213)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1AC0)   : { .inttab_tc0_0D6 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.214)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1AE0)   : { .inttab_tc0_0D7 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.215)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1B00)   : { .inttab_tc0_0D8 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.216)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1B20)   : { .inttab_tc0_0D9 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.217)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1B40)   : { .inttab_tc0_0DA (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.218)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1B60)   : { .inttab_tc0_0DB (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.219)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1B80)   : { .inttab_tc0_0DC (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.220)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1BA0)   : { .inttab_tc0_0DD (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.221)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1BC0)   : { .inttab_tc0_0DE (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.222)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1BE0)   : { .inttab_tc0_0DF (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.223)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1C00)   : { .inttab_tc0_0E0 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.224)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1C20)   : { .inttab_tc0_0E1 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.225)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1C40)   : { .inttab_tc0_0E2 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.226)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1C60)   : { .inttab_tc0_0E3 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.227)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1C80)   : { .inttab_tc0_0E4 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.228)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1CA0)   : { .inttab_tc0_0E5 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.229)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1CC0)   : { .inttab_tc0_0E6 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.230)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1CE0)   : { .inttab_tc0_0E7 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.231)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1D00)   : { .inttab_tc0_0E8 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.232)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1D20)   : { .inttab_tc0_0E9 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.233)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1D40)   : { .inttab_tc0_0EA (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.234)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1D60)   : { .inttab_tc0_0EB (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.235)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1D80)   : { .inttab_tc0_0EC (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.236)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1DA0)   : { .inttab_tc0_0ED (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.237)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1DC0)   : { .inttab_tc0_0EE (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.238)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1DE0)   : { .inttab_tc0_0EF (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.239)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1E00)   : { .inttab_tc0_0F0 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.240)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1E20)   : { .inttab_tc0_0F1 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.241)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1E40)   : { .inttab_tc0_0F2 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.242)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1E60)   : { .inttab_tc0_0F3 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.243)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1E80)   : { .inttab_tc0_0F4 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.244)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1EA0)   : { .inttab_tc0_0F5 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.245)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1EC0)   : { .inttab_tc0_0F6 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.246)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1EE0)   : { .inttab_tc0_0F7 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.247)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1F00)   : { .inttab_tc0_0F8 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.248)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1F20)   : { .inttab_tc0_0F9 (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.249)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1F40)   : { .inttab_tc0_0FA (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.250)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1F60)   : { .inttab_tc0_0FB (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.251)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1F80)   : { .inttab_tc0_0FC (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.252)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1FA0)   : { .inttab_tc0_0FD (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.253)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1FC0)   : { .inttab_tc0_0FE (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.254)) }}> pfls0
	GROUP BIND(LCF_INTVEC0_START + 0x1FE0)   : { .inttab_tc0_0FF (TEXT) ALIGN(8) : { KEEP (*(.inttab0.intvec.255)) }}> pfls0		

	__INTTAB_CPU0 = LCF_INTVEC0_START;
	__SP_END = __USTACK0_END;
}
	
