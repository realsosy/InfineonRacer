/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2009  Evidence Srl
 *
 * This file is part of ERIKA Enterprise.
 *
 * ERIKA Enterprise is free software; you can redistribute it
 * and/or modify it under the terms of the GNU General Public License
 * version 2 as published by the Free Software Foundation,
 * (with a special exception described below).
 *
 * Linking this code statically or dynamically with other modules is
 * making a combined work based on this code.  Thus, the terms and
 * conditions of the GNU General Public License cover the whole
 * combination.
 *
 * As a special exception, the copyright holders of this library give you
 * permission to link this code with independent modules to produce an
 * executable, regardless of the license terms of these independent
 * modules, and to copy and distribute the resulting executable under
 * terms of your choice, provided that you also meet, for each linked
 * independent module, the terms and conditions of the license of that
 * module.  An independent module is a module which is not derived from
 * or based on this library.  If you modify this code, you may extend
 * this exception to your version of the code, but you are not
 * obligated to do so.  If you do not wish to do so, delete this
 * exception statement from your version.
 *
 * ERIKA Enterprise is distributed in the hope that it will be
 * useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License version 2 for more details.
 *
 * You should have received a copy of the GNU General Public License
 * version 2 along with ERIKA Enterprise; if not, write to the
 * Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301 USA.
 * ###*E*### */

/*
 * Author: 2000-2004 Paolo Gai
 *         2009 Bernardo Dal Seno
 * CVS: $Id: ee.h,v 1.26 2008/07/04 14:26:59 francesco Exp $
 */

/* Infinion modifications, intigration to Infineon Build environment:
 * Author: 
 *         Ashok Abbi, <Ashok.Abbi@infineon.com> 18.07.2013
 */

#ifndef __INCLUDE_PKG_EE_H__
#define __INCLUDE_PKG_EE_H__

#include "eecfg.h"
//#include "cpu/tricore/inc/ee_tc_irq_internal.h"
#include "ee_rtdruid_versions.h"

#if defined(__cplusplus)
extern "C" {
#endif

  /*
   *
   * CPU
   *
   */

  /* Freescale */
#if defined(__MC9S12__) || defined(__HCS12XS__)
#include "cpu/hs12xs/inc/ee_cpu.h"
#endif

#ifdef __ST10__
#include "st10mono/arch.h"
#endif

#ifdef __ST10SEGM__
#include "st10segm/arch.h"
#endif

#if defined(__ARM7GNU__) || defined(__ARM7ADS__)
#include "cpu/arm7tdmi/inc/ee_cpu.h"
#endif


#ifdef __AVR5__
#include "cpu/avr5/inc/ee_cpu.h"
#endif

#ifdef __H8__
#include "h8/arch.h"
#include "h8/drivers.h"
#include "h8/fmath.h"
#include "h8/inline_k.h"
#include "h8/inline_d.h"
#endif

#ifdef __NIOS2__
#include "cpu/nios2/inc/ee_cpu.h"
#endif

#ifdef __MPC5XX__
#include "cpu/mpc5xx/inc/ee_cpu.h"
#endif

#ifdef __MPC5PROTECTED__
#include "cpu/mpc5protected/inc/ee_cpu.h"
#endif

#ifdef __PIC30__
#include "cpu/pic30/inc/ee_cpu.h"
#endif

#ifdef __PIC32__
#include "cpu/pic32/inc/ee_cpu.h"
#endif

#ifdef __TRICORE1__
#include "cpu/tricore1/inc/ee_cpu.h"

#ifdef __INT__
#include "cpu/tricore1/inc/ee_int.h"
#endif

#ifdef __TRAP__
#include "cpu/tricore1/inc/ee_trap.h"
#endif

#endif /* __TRICORE1__ */

#ifdef EE_TRICORE__
#include "cpu/tricore/inc/ee_tc_cpu.h"
#endif /* EE_TRICORE__ */

#ifdef __LM32__
#include "cpu/mico32/inc/ee_cpu.h"
#endif

#if defined(__PPCE200Z7__) || defined(__PPCE200ZX__)
#include "cpu/e200zx/inc/ee_cpu.h"
#endif /* defined __PPCE200Z7__ || defined __PPCE200ZX__ */

#ifdef __ESI_RISC__
#include "cpu/esi_risc/inc/ee_cpu.h"
#endif

#ifdef __MSP430__
#include "cpu/msp430/inc/ee_cpu.h"
#endif

#ifdef __CORTEX_MX__
#include "cpu/cortex_mx/inc/ee_cpu.h"
#endif

#ifdef __RX200__
#include "cpu/rx200/inc/ee_cpu.h"
#endif

  /*
   *
   * MCU
   *
   */

  /* Freescale */
#if defined(__MC9S12__) || defined(__HCS12XS__)
#include "mcu/hs12xs/inc/ee_mcu.h"
#endif

  /* Atmel */
#ifdef __ATMEGA128__
#include "mcu/atmel_atmega128/inc/ee_mcu.h"
#endif

#ifdef __ATMEGA1281__
#include "mcu/atmel_atmega1281/inc/ee_mcu.h"
#endif

  /* ARM */
#ifdef __SAMSUNG_KS32C50100__
#include "mcu/samsung_ks32c50100/inc/ee_mcu.h"
#endif

#ifdef __ST_STA2051__
#include "mcu/st_sta2051/inc/ee_mcu.h"
#endif

#ifdef __UNIBO_MPARM__
#include "mcu/unibo_mparm/inc/ee_mcu.h"
#endif

  /* PPC */
#ifdef __MPC566EVB__
#include "mcu/motorola_mpc566/inc/ee_mcu.h"
#endif

  /* dsPIC */
#ifdef __PIC30__
#include "mcu/microchip_dspic/inc/ee_mcu.h"
#endif

  /* dsPIC */
#ifdef __PIC32__
#include "mcu/microchip_pic32/inc/ee_mcu.h"
#endif

  /* NIOS 2 */
#ifdef __NIOS2__
#include "mcu/altera_nios2/inc/ee_mcu.h"
#endif

 /* MICO32 */
#ifdef __LM32__
#include "mcu/mico32/inc/ee_mcu.h"
#endif

/* Tricore1 TC179x */
#ifdef __TC179x__
#include "mcu/tc179x/inc/ee_mcu.h"
#endif

/* Tricore TC27x */
#if defined(EE_TRICORE__) && defined(EE_TC27X__)
//#include "mcu/infineon_tc27x/inc/ee_tc27x_mcu.h"
#endif

/* MSP430 */
#ifdef __MSP430__
#include "mcu/msp430/inc/ee_mcu.h"
#endif

 /* LPCXpresso */
#if defined( __LPCXPRESSO__ ) && defined( __LPC12xx__ )
#include "mcu/nxp_lpcxpresso_lpc12xx/inc/ee_mcu.h"
#endif

 /* Stellaris */
#if defined( __STELLARIS__ ) && defined( __LM4F232xxxx__ )
#include "mcu/ti_stellaris_lm4f232xxxx/inc/ee_mcu.h"
#endif

/* ST */
#if defined( __STM32__ ) && defined( __STM32F4xx__ )
#include "mcu/st_stm32_stm32f4xx/inc/ee_mcu.h"
#endif

/* NORDIC */
#if defined( __NORDIC__ ) && defined( __NRF51X22__ )
#include "mcu/nordic_nrf51x22/inc/ee_mcu.h"
#endif

/* Renesas RX200*/
#if defined( __RX200__ ) && defined( __R5F5210x__ )
#include "mcu/renesas_r5f5210x/inc/ee_mcu.h"
#endif

  /*
   *
   * BOARD
   *
   */

    /* Freescale */
#if defined(__MC9S12__) || defined(__HCS12XS__)
  #ifdef __DEMO9S12XSFAME__
    #include "board/hs12xs_demo9s12xsfame/inc/ee_board.h"
  #endif
  #ifdef __TWRS12G128__
    #include "board/twrs12g128/inc/ee_board.h"
  #endif
#endif

  /* Atmel */
#ifdef __ATMEL_STK50X__
#include "board/atmel_stk500/inc/ee_board.h"
#endif

#ifdef __XBOW_MIB5X0__
#include "board/xbow_mib5x0/inc/ee_board.h"
#endif
  /* ARM */
#ifdef __EVALUATOR7T__
#include "board/arm_evaluator7t/inc/ee_board.h"
#endif

#ifdef __UNIBO_MPARM__
#include "board/unibo_mparm/inc/ee_board.h"
#endif

#ifdef __TRISCENDA7S__
#include "board/triscend_a7s/drivers.h"
#endif

  /* dsPIC */
#ifdef __MICROCHIP_EXPLORER16__
#include "board/microchip_explorer16/inc/ee_board.h"
#endif

#ifdef __MICROCHIP_DSPICDEM11PLUS__
#include "board/microchip_dspicdem11plus/inc/ee_board.h"
#endif

#ifdef __EE_FLEX__
#include "board/ee_flex/inc/ee_board.h"
#endif

#ifdef __EE_MINIFLEX__
#include "board/ee_miniflex/inc/ee_board.h"
#endif

#ifdef __EE_FLEX32__
#include "board/ee_flex32/inc/ee_board.h"
#endif
 
 /* PIC32 */
#ifdef __IPERMOB_MB_PIC32__
#include "board/ipermob_mb_pic32/inc/ee_board.h"
#endif

#ifdef __IPERMOB_DB_PIC32__
#include "board/ipermob_db_pic32/inc/ee_board.h"
#endif

#ifdef __IPERMOB_BOARD_V2__
#include "board/ipermob_board_v2/inc/ee_board.h"
#endif

 /* MICO32 */
#ifdef __FPG_EYE__
#include "board/fpg-eye/inc/ee_board.h"
#endif

#ifdef __LATTICE_XP2_EV_BOARD__
#include "board/lattice_xp2_ev_board/inc/ee_board.h"
#endif

#ifdef __TC1796__
#include "board/infineon_tc1796b/inc/ee_board.h"
#endif

/* Tricore TC27x */
#if defined(EE_TRICORE__) && defined(EE_TC27X__) && defined(EE_TRIBOARD_TC2X5)
#include "board/infineon_TriBoard_TC2X5/inc/ee_tc2x5_board.h"
#endif

#ifdef __ESI_RISC__
#include "board/esi_risc/inc/ee_board.h"
#endif

#ifdef __UTMOST__
#include "board/utmost/inc/ee_board.h"
#endif

#ifdef __MSP430_LAUNCHPAD__
#include "board/msp430/launchpad/inc/ee_board.h"
#endif

#ifdef __EE_EASYLAB__
#include "board/ee_easylab/inc/ee_board.h"
#endif

  /* Stellaris */
#if defined( __STELLARIS__ ) && defined ( __LM4F232xxxx__ )
#include "board/ti_stellaris_lm4f232xxxx/inc/ee_board.h"
#endif

#ifdef __RSKRX210__
#include "board/renesas_rskrx210/inc/ee_board.h"
#endif

/* Nordic NRF51x22 */
#ifdef __EE_NORDIC_PCA__
#include "board/nordic_pca/inc/ee_board.h"
#endif

  /*
   *
   * Kernel
   *
   */

#ifdef __FP__
#include "kernel/fp/inc/ee_kernel.h"
#endif

#ifdef __EDF__
#include "kernel/edf/inc/ee_kernel.h"
#endif

#ifdef __FRSH__
#ifdef __SEM_FRSH__
#include "kernel/frsh/syncobj/inc/ee_sem.h"
#endif
#include "kernel/frsh/inc/ee_kernel.h"
#endif

/* OO */
#if defined(__OO_BCC1__) || defined(__OO_BCC2__) || defined(__OO_ECC1__) || \
defined(__OO_ECC2__) || defined(__AS_SC4__)
#include "kernel/oo/inc/ee_kernel.h"
#endif

/* SEM */
#ifdef __SEM__
#include "kernel/sem/inc/ee_sem.h"
#endif

/* ALARMS */
#ifdef __ALARMS__
#include "kernel/alarms/inc/ee_alarms.h"
#endif

/* RN */
#ifdef __RN__
#include "kernel/rn/inc/ee_rn.h"
#endif

  /*
   *
   * API
   *
   */

#include "ee_api.h"

  /*
   *
   * IRQ
   *
   */

#include "ee_irq.h"

#if defined(__cplusplus)
};
#endif

#endif /* __INCLUDE_PKG_EE_H__ */
