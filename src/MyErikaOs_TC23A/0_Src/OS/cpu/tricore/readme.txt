ERIKA on TriCore
-------------------------------------------------------------------------------

Contact:
Ing Errico Guidieri
Software Engineer
Phone: +39.050.99.11.224 (103)
E-mail:e.guidieri@evidence.eu.com

EVIDENCE srl
Via Carducci 56 - Loc. Ghezzano - 56010 - S. Giuliano Terme - Pisa - Italy
Phone: +39.050.99.11.122 - 224
Fax: +39.050.99.10.812 - 855

Dipl.-Inf. Jan C. Kleinsorge

TU Dortmund University
Faculty of Computer Science 12
Design Automation of Embedded Systems
Otto-Hahn-Strasse 16, Room E 20
44221 Dortmund, Germany

Phone:  +49 231 755 6311
Fax:    +49 231 755 6116
Mail:   jan.kleinsorge@tu-dortmund.de
WWW:    http://ls12-www.cs.tu-dortmund.de/staff/kleinsorge/


Some notes on the implementation:

- The software code itself is written from scratch so no "external" 
  copyright obligation is imposed.

- The tested targets are TriBoard tc1796b v1.4, TriBoard-TC2X5 V2.0
  (with a TC275TE mounted on) and the Infineon tsim simulator.
  Since the latter is generic, set __TSIM__ in addition to
  the other TriCore options to get the binary running on it. 

- Although the MCU folder labelled tricore_tc179x, there is
  specifically only support for tc1796b. It should not be too hard to
  provide other ports with minor changes. So this should work out.  

- The MCU folder for TC275TE is labelled tricore_tc27x.  
  
- The TriCore branch itself (cpu/mcu/board) is self-contained as far
  as those features are concerned that are absolutely necessary to
  fulfill all requirements. Apart from that, only very little
  additional work is provided as of now. It is a large task to map all
  the TriCore devices (and their revisions) into C types. The HighTec
  gcc toolchain as well as the TASKING compiler come with definitions
  readily available. The definitions provided are insprired by the
  implementation of Tasking and HighTec but are written from scratch
  completely.
  
- When you compile with TASKING Compiler the utilization of right SFR
  file is absolutely necessary because that file configure Assembler
  tool. So the inclusion of that file is added inside EE_tricore_cpu.h
  file in this, suggested by TASKING documentation, way:
 
  #ifdef __CPU__
  #include __SFRFILE__(__CPU__)
  #endif


- It was attempted to keep the amount of raw assembly code low, as
  properly scheduled instructions have quite an impact on the
  performance due to TriCore's pipeline architecture. The added
  advantage is that the compiler will get us around the numerous
  silicon bugs.

- EE_MAX_ISR allows to define the maximum size of the interrupt vector
  table. Arbitration cycles are minimized upon initialization
  depending on this value. Can be used to reduce the memory footprint.

- PSW.IS defines whether an implicit stack switch occurs upon
  interrupts. Since the PSW is implicitly restored on return, it is
  not that straight forward to set it within EE_int_int_vector. The
  strategy is to traverse the existing CSA list and set PSW.IS
  everywhere, if required. Alternatively, the stack could be set
  manually in IRQ_prestub. (EG: TODO -Uderstand this better, probably
  it should be removed).

- For additional intialization, apart from what some basic startup
  code would provide (like crt0 on GNU), I specifically make use of
  the global ctor list (see ee_init.S for reference). This is fairly
  GCC-specific but should not be too tricky to port. As I do not have
  access to - say - the Tasking Compiler I cannot judge this in
  detail. The invoked functions may equally well be invoked manually 
  within main.

- Currently, the entire entry code for ISR2 entry ("prestub") is
  sequeezed into the vector table itself. It might be more efficient
  to have just an unconditional jump there, which leads to some shared
  entry code. This might have some effect on the icache due to
  increased locality.

- A new type 'EE_STACK' was introduced due to TriCore's stack
  alignment requirements (double word).

- A new primitive 'EE_barrier' had to be introduced to serve as an
  reorder barrier in C code ('asm volatile("")').

- Added additional type attribute __ALIGNED__ to meet alignment
  requirements.

- Types exclusively used for internal purposes have a simplified
  naming scheme. Example: The PLL CLC register type is not named
  EE_tc179x_PLL_CLC but simply EE_PLL_CLC. This also gets around
  confusion with the global variables mapped onto device
  registers. Their naming would be like EE_tc179x_pll_clc.

- There is a certain stylistic gap between the 'cpu' and the 'mcu'
  implementation. This is mainly due to the fact that in 'cpu' we
  could rely on core registers being mapped into the assembler,
  whereas not all 'mcu' registers where available. Also, the cpu core
  registers are accessed via mfcr/mtcr, while the others are to be
  accessed via ld/st. Long story short, accesses in 'cpu' are based on
  get/set functions while for 'mcu' we access memory mapped registers
  through variables directly. Note however, that the 'mcu' memory maps
  are reduced to the bare minimum needed to get the infrastructure
  going. HighTec GCC and the Tasking compiler both seem to come with
  complete mappings, so for the user the internals maps are of no
  relevance, presumably.
