# 1 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.c"
# 1 "D:\\GitRepo\\InfineonRacer\\2_src\\InfineonRacer_TC23xA//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.c"
# 29 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.c"
# 1 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 1
# 45 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxMultican_cfg.h" 1
# 64 "./0_Src/4_McHal/Tricore/_Impl/IfxMultican_cfg.h"
typedef enum
{
    IfxMultican_NodeId_none = -1,
    IfxMultican_NodeId_0 = 0,
    IfxMultican_NodeId_1,
    IfxMultican_NodeId_2
} IfxMultican_NodeId;



typedef enum
{
    IfxMultican_SrcId_0 = 0,
    IfxMultican_SrcId_1,
    IfxMultican_SrcId_2,
    IfxMultican_SrcId_3,
    IfxMultican_SrcId_4,
    IfxMultican_SrcId_5,
    IfxMultican_SrcId_6,
    IfxMultican_SrcId_7,
    IfxMultican_SrcId_8,
    IfxMultican_SrcId_9,
    IfxMultican_SrcId_10,
    IfxMultican_SrcId_11,
    IfxMultican_SrcId_12,
    IfxMultican_SrcId_13,
    IfxMultican_SrcId_14,
    IfxMultican_SrcId_15
} IfxMultican_SrcId;
# 46 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 2
# 1 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 1
# 95 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h" 1
# 49 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
typedef enum
{
    IfxSrc_Tos_cpu0 = 0,
    IfxSrc_Tos_dma = 1
} IfxSrc_Tos;
# 96 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 29 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 1
# 29 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
# 1 "./0_Src/0_AppSw/Config/Common/Ifx_Cfg.h" 1
# 30 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 2
# 58 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
# 1 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h" 1
# 29 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/include/stddef.h" 1 3 4
# 150 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/include/stddef.h" 3 4
typedef int wchar_t;
# 30 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h" 2
# 59 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 2
# 89 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
void Ifx_C_Init (void);
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h" 1
# 88 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed long sint32;
typedef unsigned long uint32;
typedef float float32;
typedef double float64;

typedef unsigned long uint8_least;
typedef unsigned long uint16_least;
typedef unsigned long uint32_least;
typedef signed long sint8_least;
typedef signed long sint16_least;
typedef signed long sint32_least;

typedef unsigned char boolean;
# 31 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2





typedef signed long long sint64;
typedef unsigned long long uint64;

typedef const char *pchar;
typedef void *pvoid;
typedef volatile void *vvoid;

typedef sint64 Ifx_TickTime;
# 56 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
typedef sint16 Ifx_SizeT;



typedef struct
{
    void *base;
    uint16 index;
    uint16 length;
} Ifx_CircularBuffer;

typedef uint16 Ifx_Priority;
typedef uint32 Ifx_TimerValue;
typedef sint32 Ifx_SignedTimerVal;

typedef pvoid Ifx_AddressValue;

typedef struct
{
    uint16 priority;
    uint16 provider;
} Ifx_IsrSetting;


typedef enum
{
    Ifx_ActiveState_low = 0,
    Ifx_ActiveState_high = 1
} Ifx_ActiveState;

typedef enum
{
    Ifx_ParityMode_even = 0,
    Ifx_ParityMode_odd = 1
} Ifx_ParityMode;



typedef enum
{
    Ifx_RxSel_a,
    Ifx_RxSel_b,
    Ifx_RxSel_c,
    Ifx_RxSel_d,
    Ifx_RxSel_e,
    Ifx_RxSel_f,
    Ifx_RxSel_g,
    Ifx_RxSel_h
} Ifx_RxSel;


typedef struct
{
    volatile void *module;
    sint32 index;
} IfxModule_IndexMap;

typedef struct
{
    Ifx_TickTime timestamp;
    uint8 data;
}Ifx_DataBufferMode_TimeStampSingle;
# 128 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_DataBufferMode_normal = 0,
    Ifx_DataBufferMode_timeStampSingle,

}Ifx_DataBufferMode;







typedef enum
{
    Ifx_Pwm_Mode_centerAligned = 0,
    Ifx_Pwm_Mode_centerAlignedInverted = 1,
    Ifx_Pwm_Mode_leftAligned = 2,
    Ifx_Pwm_Mode_rightAligned = 3,
    Ifx_Pwm_Mode_off = 4,
    Ifx_Pwm_Mode_init = 5,
    Ifx_Pwm_Mode_count = 6
} Ifx_Pwm_Mode;
# 159 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 1
# 27 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/../../../../tricore/include/machine/cint.h" 1 3
# 24 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/../../../../tricore/include/machine/cint.h" 3
extern void _init_vectab (void);
extern void _init_hnd_chain (void);






extern int _install_int_handler (int intno, void (*handler) (int), int arg);







extern void *_install_chained_int_handler (int intno, void (*handler) (int),
        int arg);





extern int _remove_chained_int_handler (int intno, void *ptr);





extern int _install_trap_handler (int trapno, void (*handler) (int));
# 28 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 2


typedef long fract;
typedef short sfract;
typedef long long laccum;
typedef long __packb;
typedef unsigned long __upackb;
typedef long __packhw;
typedef unsigned long __upackhw;
# 160 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2
# 31 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2





# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
# 41 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/../../../../tricore/include/machine/intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.6.6.0-infineon-1.1\\bin\\../lib/gcc/tricore/4.6.4/../../../../tricore/include/machine/intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 42 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 2
# 54 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __jump_and_link(void (*fun)(void))
{
 __asm__ volatile ("jli %0"::"a"(fun));
}
# 94 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __max(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("max %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __maxs(sint16 a, sint16 b)
{
    sint32 res;
    __asm__ volatile ("max.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}


static inline __attribute__ ((always_inline)) uint32 __maxu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("max.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __min(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("min %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __mins(sint16 a, sint16 b)
{
    sint16 res;
    __asm__ volatile ("min.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __minu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("min.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 184 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint16 __clssf(sfract a)
{
    sint16 res;
    __asm__ volatile ("cls  %0,%1":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fract_to_float(fract a)
{
    float res;
    __asm__ volatile ("q31tof  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __float_to_fract(float a)
{
    fract res;
    __asm__ volatile ("ftoq31  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __getfract(laccum a)
{
    fract res;
    __asm__ volatile ("dextr  %0,%H1,%L1,0x11":"=&d" (res):"d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_r_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("maddrs.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("madds.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractfract(fract a, fract b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractlong(fract a, long b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __round16(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    insert  %0,%0,0,0,0x10 "


                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __s16_to_sfract(sint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sfract_to_s16(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sfract_to_u16(sfract a)
{
    uint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) laccum __shaaccum(laccum a, sint32 b)
{
    laccum res;
    __asm__ volatile ("jge   %2,0,0f        \n                    sha   %H0,%H1,%2     \n                    rsub  %2,%2,0        \n                    dextr %L0,%H1,%L1,%2 \n                    j  1f                \n                    0:dextr %H0,%H1,%L1,%2 \n                    sha   %L0,%L1,%2     \n                    1:"







                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __shafracts(fract a, sint32 b)
{
    fract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __shasfracts(sfract a, sint32 b)
{
    sfract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __u16_to_sfract(uint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}
# 346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __extr(sint32 a, uint32 p, uint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __extru(uint32 a, uint32 p, uint32 w)
{
    uint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}
# 384 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __ins(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("ins.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insert(sint32 a, sint32 b, sint32 p, const sint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     insert %0,%1,%2,%%e14"


                      :"=d"(res):"d"(a), "d"(b), "d"(p), "d"(w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insn(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("insn.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}
# 436 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __disable_and_save(void)
{
    sint32 res;
    __asm__ volatile("disable %0":"=d"(res));
    return res;
}







static inline __attribute__ ((always_inline)) void __restore(sint32 ie)
{
    __asm__ volatile ("restore %0"::"d"(ie));
}
# 470 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __cacheawi(uint8* p)
{
    __asm__ volatile("cachea.wi [%0]0"::"a"(p));
}


static inline __attribute__ ((always_inline)) void __cacheiwi(uint8* p)
{
    __asm__ volatile("cachei.wi [%0]0"::"a"(p));
}




static inline __attribute__ ((always_inline)) uint8* __cacheawi_bo_post_inc(uint8* p)
{
    __asm__ volatile("cachea.wi  [%0+]0"::"a"(p));
    return p;
}





static inline __attribute__ ((always_inline)) sint32 __mulsc(sint32 a, sint32 b, sint32 offset)
{
    sint32 res;
    __asm__ volatile("mul  %%e12,%1,%2      \n                    dextr  %0,%%d13,%%d12,%3"

                     :"=d"(res):"d"(a), "d"(b), "d"(offset):"d12", "d13");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __rol(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("dextr  %0,%1,%1,%2":"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __ror(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("rsub %2,%2,0 \n                    dextr  %0,%1,%1,%2"

                     :"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}
# 532 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) __packb __absb(__packb a)
{
    __packb res;
    __asm__ volatile ("abs.b %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __absh(__packhw a)
{
    __packhw res;
    __asm__ volatile ("abs.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __abssh(__packhw a)
{
    __packb res;
    __asm__ volatile ("abss.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte1(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte2(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte3(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte4(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw1(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw2(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte1(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte2(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte3(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte4(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw1(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw2(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __getbyte1(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte2(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte3(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte4(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint16 __gethw1(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}


static inline __attribute__ ((always_inline)) sint16 __gethw2(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte1(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte2(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte3(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte4(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw1(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw2(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackb(sint32 a, sint32 b, sint32 c, sint32 d)
{
    __packb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %4,%1,%2,8,8   \n                    insert  %0,%4,%3,16,16 "


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackbl(long a)
{
    return (__packb) a;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhw(sint16 a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhwl(long a)
{
    return a;
}



static inline __attribute__ ((always_inline)) __upackb __initupackb( uint32 a, uint32 b, uint32 c, uint32 d)
{
    __upackb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %1,%1,%2,8,8   \n                    insert  %0,%1,%3,16,16"


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __initupackhw( uint16 a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte1(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte2(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte3(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte4(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte1( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte2( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte3( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte4( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw1(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw2(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw1( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw2( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __minb(__packb a, __packb b)
{
    __packb res;
    __asm__ volatile ("min.b %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __minbu( __upackb a, __upackb b)
{
    __upackb res;
    __asm__ volatile ("min.bu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __minh(__packhw a, __packhw b)
{
    __packhw res;
    __asm__ volatile ("min.h %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __minhu( __upackhw a, __upackhw b)
{
    __upackhw res;
    __asm__ volatile ("min.hu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) void __setbyte1(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte2(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte3(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte4(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw1(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw2(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte1(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte2(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte3(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte4(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw1(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw2(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}
# 1167 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __absdif(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("absdif %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __abss(sint32 a)
{
    sint32 res;
    __asm__ volatile ("abss %0, %1": "=d" (res) : "d" (a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __clo(sint32 a)
{
    sint32 res;
    __asm__ volatile ("clo %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __cls(sint32 a)
{
    sint32 res;
    __asm__ volatile ("cls %0,%1":"=d"(res):"d"(a));
    return res;
}







static inline __attribute__ ((always_inline)) double __fabs(double d)
{
    double res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fabsf(float f)
{
    float res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (f):"memory");
    return res;
}
# 1238 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __parity(sint32 a)
{
    sint32 res;
    __asm__ volatile ("parity  %0,%1": "=d" (res) : "d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __satb(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.b %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __satbu(sint32 a)
{
    uint8 res;
    __asm__ volatile ("sat.bu %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sath(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.h %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sathu(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.hu %0,%1":"=d"(res):"d"(a));
    return res;
}
# 1291 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __adds(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("adds %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __addsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("adds.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __subs(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("subs %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __subsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("subs.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 1337 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __debug(void)
{
    __asm__ volatile ("debug" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __dsync(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __isync(void)
{
    __asm__ volatile ("isync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __ldmst(volatile void* address, uint32 mask, uint32 value)
{
    __asm__ volatile("mov %H2,%1 \n                  ldmst [%0]0,%A2"

                     ::"a"(address), "d"(mask), "d"((long long)value));
}



static inline __attribute__ ((always_inline)) void __nop(void)
{
    __asm__ volatile ("nop" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __nops(void* cnt)
{
    __asm__ volatile ("0: nop \n        loop %0,0b"

                      ::"a"(((sint8*)cnt)-1));
}



static inline __attribute__ ((always_inline)) void __rslcx(void)
{
    __asm__ volatile ("rslcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __svlcx(void)
{
    __asm__ volatile ("svlcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) uint32 __swap(void* place, uint32 value)
{
    uint32 res;
    __asm__ volatile("swap.w [%1]0,%2":"=d"(res):"a"(place), "0"(value));
    return res;
}
# 1422 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __stopPerfCounters(void)
{
    __asm__ volatile("mov %%d0,0\n                  mtcr 0xFC00,%%d0\n                  isync\n"


            : : :"d0");
}







static inline __attribute__ ((always_inline)) unsigned int __cmpAndSwap (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
# 1450 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
  sint32 ie;
  uint32 retval = 1;
  ie = __disable_and_save();
  if (condition == *address)
  {
     __swap((void *)address,value );
 retval = 0;
  }
  __restore(ie);
  return retval;

}
# 1474 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) float32 __fixpoint_to_float32(fract value, sint32 shift)
{
    float32 result;

    __asm__ volatile("q31tof %0, %1, %2": "=d" (result) : "d" (value), "d" (shift));
    return result;
}

static inline __attribute__ ((always_inline)) void* __getA11(void)
{
    uint32 *res;
    __asm__ volatile ("mov.aa %0, %%a11": "=a" (res) : :"a11");
    return res;
}

static inline __attribute__ ((always_inline)) void __setStackPointer(void *stackAddr)
{
    __asm__ volatile ("mov.aa %%a10, %0": : "a" (stackAddr) :"a10");
}
# 37 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2
# 65 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
static inline __attribute__ ((always_inline)) void *__cx_to_addr(uint32 cx)
{
    uint32 seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" (cx),"i" (16),"i" (4) : "memory"); res; });
    return (void *)__insert(seg_nr << 28, cx, 6, 16);
}






static inline __attribute__ ((always_inline)) uint32 __addr_to_cx(void *addr)
{
    uint32 seg_nr, seg_idx;
    seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (28),"i" (4) : "memory"); res; }) << 16;
    seg_idx = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (6),"i" (16) : "memory"); res; });
    return seg_nr | seg_idx;
}



static inline __attribute__ ((always_inline)) void __ldmst_c(volatile void *address, unsigned mask, unsigned value)
{
    *(volatile uint32 *)address = (*(volatile uint32 *)address & ~(mask)) | (mask & value);
}




static inline __attribute__ ((always_inline)) uint32 __ld32(void *addr)
{
    return *(volatile uint32 *)addr;
}




static inline __attribute__ ((always_inline)) void __st32(void *addr, uint32 value)
{
    *(volatile uint32 *)addr = value;
}




static inline __attribute__ ((always_inline)) uint64 __ld64(void *addr)
{
    return *(volatile uint64 *)addr;
}




static inline __attribute__ ((always_inline)) void __st64(void *addr, uint64 value)
{
    *(volatile uint64 *)addr = value;
}




static inline __attribute__ ((always_inline)) void __ld64_lu(void *addr, uint32 *valueLower, uint32 *valueUpper)
{
    register uint64 value;
    value = __ld64(addr);
    *valueLower = (uint32)value;
    *valueUpper = (uint32)(value >> 32);
}




static inline __attribute__ ((always_inline)) void __st64_lu(void *addr, uint32 valueLower, uint32 valueUpper)
{
    register uint64 value = ((uint64)valueUpper << 32) | valueLower;
    __st64(addr, value);
}
# 97 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/Ifx_TypesReg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h" 2





typedef struct _Ifx_SRC_SRCR_Bits
{
    unsigned int SRPN : 8;
    unsigned int reserved_8 : 2;
    unsigned int SRE : 1;
    unsigned int TOS : 1;
    unsigned int reserved_12 : 4;
    unsigned int ECC : 5;
    unsigned int reserved_21 : 3;
    unsigned int SRR : 1;
    unsigned int CLRR : 1;
    unsigned int SETR : 1;
    unsigned int IOV : 1;
    unsigned int IOVCLR : 1;
    unsigned int SWS : 1;
    unsigned int SWSCLR : 1;
    unsigned int reserved_31 : 1;
} Ifx_SRC_SRCR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 86 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN;


typedef volatile struct _Ifx_SRC_BCUSPB
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_BCUSPB;


typedef volatile struct _Ifx_SRC_CAN
{
    Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN;


typedef volatile struct _Ifx_SRC_CAN1
{
    Ifx_SRC_SRCR INT[8];
} Ifx_SRC_CAN1;


typedef volatile struct _Ifx_SRC_CCU6
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_CCU6;


typedef volatile struct _Ifx_SRC_CERBERUS
{
    Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS;


typedef volatile struct _Ifx_SRC_CPU
{
    Ifx_SRC_SRCR SBSRC;
    unsigned char reserved_4[28];
} Ifx_SRC_CPU;


typedef volatile struct _Ifx_SRC_DMA
{
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_4[12];
    Ifx_SRC_SRCR CH[16];
} Ifx_SRC_DMA;


typedef volatile struct _Ifx_SRC_EMEM
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_EMEM;


typedef volatile struct _Ifx_SRC_ERAY
{
    Ifx_SRC_SRCR INT[2];
    Ifx_SRC_SRCR TINT[2];
    Ifx_SRC_SRCR NDAT[2];
    Ifx_SRC_SRCR MBSC[2];
    Ifx_SRC_SRCR OBUSY;
    Ifx_SRC_SRCR IBUSY;
    unsigned char reserved_28[40];
} Ifx_SRC_ERAY;


typedef volatile struct _Ifx_SRC_ETH
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_ETH;


typedef volatile struct _Ifx_SRC_EVR
{
    Ifx_SRC_SRCR WUT;
    Ifx_SRC_SRCR SCDC;
} Ifx_SRC_EVR;


typedef volatile struct _Ifx_SRC_FFT
{
    Ifx_SRC_SRCR DONE;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR RFS;
} Ifx_SRC_FFT;


typedef volatile struct _Ifx_SRC_GPSR
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[1520];
} Ifx_SRC_GPSR;


typedef volatile struct _Ifx_SRC_GPT12
{
    Ifx_SRC_SRCR CIRQ;
    Ifx_SRC_SRCR T2;
    Ifx_SRC_SRCR T3;
    Ifx_SRC_SRCR T4;
    Ifx_SRC_SRCR T5;
    Ifx_SRC_SRCR T6;
    unsigned char reserved_18[24];
} Ifx_SRC_GPT12;


typedef volatile struct _Ifx_SRC_GTM
{
    Ifx_SRC_SRCR AEIIRQ;
    unsigned char reserved_4[364];
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_174[12];
    Ifx_SRC_SRCR TIM[1][8];
    unsigned char reserved_1A0[992];
    Ifx_SRC_SRCR TOM[2][8];
} Ifx_SRC_GTM;


typedef volatile struct _Ifx_SRC_HSM
{
    Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM;


typedef volatile struct _Ifx_SRC_LMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_LMU;


typedef volatile struct _Ifx_SRC_PMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_PMU;


typedef volatile struct _Ifx_SRC_QSPI
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR PT;
    Ifx_SRC_SRCR HC;
    Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI;


typedef volatile struct _Ifx_SRC_SCU
{
    Ifx_SRC_SRCR DTS;
    Ifx_SRC_SRCR ERU[4];
} Ifx_SRC_SCU;


typedef volatile struct _Ifx_SRC_SENT
{
    Ifx_SRC_SRCR SR[4];
} Ifx_SRC_SENT;


typedef volatile struct _Ifx_SRC_SMU
{
    Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU;


typedef volatile struct _Ifx_SRC_STM
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    unsigned char reserved_8[88];
} Ifx_SRC_STM;


typedef volatile struct _Ifx_SRC_VADCCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[304];
} Ifx_SRC_VADCCG;


typedef volatile struct _Ifx_SRC_VADCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCG;


typedef volatile struct _Ifx_SRC_XBAR
{
    Ifx_SRC_SRCR SRC;
} Ifx_SRC_XBAR;
# 306 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GASCLIN
{
    Ifx_SRC_ASCLIN ASCLIN[2];
} Ifx_SRC_GASCLIN;


typedef volatile struct _Ifx_SRC_GBCU
{
    Ifx_SRC_BCUSPB SPB;
} Ifx_SRC_GBCU;


typedef volatile struct _Ifx_SRC_GCAN
{
    Ifx_SRC_CAN CAN[1];
    Ifx_SRC_CAN1 CAN1[1];
} Ifx_SRC_GCAN;


typedef volatile struct _Ifx_SRC_GCCU6
{
    Ifx_SRC_CCU6 CCU6[2];
} Ifx_SRC_GCCU6;


typedef volatile struct _Ifx_SRC_GCERBERUS
{
    Ifx_SRC_CERBERUS CERBERUS;
} Ifx_SRC_GCERBERUS;


typedef volatile struct _Ifx_SRC_GCPU
{
    Ifx_SRC_CPU CPU[1];
} Ifx_SRC_GCPU;


typedef volatile struct _Ifx_SRC_GDMA
{
    Ifx_SRC_DMA DMA[1];
} Ifx_SRC_GDMA;


typedef volatile struct _Ifx_SRC_GEMEM
{
    Ifx_SRC_EMEM EMEM[1];
} Ifx_SRC_GEMEM;


typedef volatile struct _Ifx_SRC_GERAY
{
    Ifx_SRC_ERAY ERAY[1];
} Ifx_SRC_GERAY;


typedef volatile struct _Ifx_SRC_GETH
{
    Ifx_SRC_ETH ETH[1];
} Ifx_SRC_GETH;


typedef volatile struct _Ifx_SRC_GEVR
{
    Ifx_SRC_EVR EVR[1];
} Ifx_SRC_GEVR;


typedef volatile struct _Ifx_SRC_GFFT
{
    Ifx_SRC_FFT FFT[1];
} Ifx_SRC_GFFT;


typedef volatile struct _Ifx_SRC_GGPSR
{
    Ifx_SRC_GPSR GPSR[1];
} Ifx_SRC_GGPSR;


typedef volatile struct _Ifx_SRC_GGPT12
{
    Ifx_SRC_GPT12 GPT12[1];
} Ifx_SRC_GGPT12;


typedef volatile struct _Ifx_SRC_GGTM
{
    Ifx_SRC_GTM GTM[1];
} Ifx_SRC_GGTM;


typedef volatile struct _Ifx_SRC_GHSM
{
    Ifx_SRC_HSM HSM[1];
} Ifx_SRC_GHSM;


typedef volatile struct _Ifx_SRC_GLMU
{
    Ifx_SRC_LMU LMU[1];
} Ifx_SRC_GLMU;


typedef volatile struct _Ifx_SRC_GPMU
{
    Ifx_SRC_PMU PMU[2];
} Ifx_SRC_GPMU;


typedef volatile struct _Ifx_SRC_GQSPI
{
    Ifx_SRC_QSPI QSPI[4];
} Ifx_SRC_GQSPI;


typedef volatile struct _Ifx_SRC_GSCU
{
    Ifx_SRC_SCU SCU;
} Ifx_SRC_GSCU;


typedef volatile struct _Ifx_SRC_GSENT
{
    Ifx_SRC_SENT SENT[1];
} Ifx_SRC_GSENT;


typedef volatile struct _Ifx_SRC_GSMU
{
    Ifx_SRC_SMU SMU[1];
} Ifx_SRC_GSMU;


typedef volatile struct _Ifx_SRC_GSTM
{
    Ifx_SRC_STM STM[1];
} Ifx_SRC_GSTM;


typedef volatile struct _Ifx_SRC_GVADC
{
    Ifx_SRC_VADCG G[4];
    unsigned char reserved_40[224];
    Ifx_SRC_VADCCG CG[1];
} Ifx_SRC_GVADC;


typedef volatile struct _Ifx_SRC_GXBAR
{
    Ifx_SRC_XBAR XBAR;
} Ifx_SRC_GXBAR;
# 469 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
    Ifx_SRC_GCPU CPU;
    Ifx_SRC_GEMEM EMEM;
    unsigned char reserved_24[28];
    Ifx_SRC_GBCU BCU;
    unsigned char reserved_44[4];
    Ifx_SRC_GXBAR XBAR;
    unsigned char reserved_4C[4];
    Ifx_SRC_GCERBERUS CERBERUS;
    unsigned char reserved_58[40];
    Ifx_SRC_GASCLIN ASCLIN;
    unsigned char reserved_98[248];
    Ifx_SRC_GQSPI QSPI;
    unsigned char reserved_1F0[352];
    Ifx_SRC_GSENT SENT;
    unsigned char reserved_360[192];
    Ifx_SRC_GCCU6 CCU6;
    unsigned char reserved_440[32];
    Ifx_SRC_GGPT12 GPT12;
    Ifx_SRC_GSTM STM;
    Ifx_SRC_GDMA DMA;
    unsigned char reserved_540[944];
    Ifx_SRC_GETH ETH;
    unsigned char reserved_8F4[12];
    Ifx_SRC_GCAN CAN;
    unsigned char reserved_960[32];
    Ifx_SRC_GVADC VADC;
    Ifx_SRC_GERAY ERAY;
    Ifx_SRC_GPMU PMU;
    unsigned char reserved_C38[136];
    Ifx_SRC_GHSM HSM;
    unsigned char reserved_CC8[8];
    Ifx_SRC_GSCU SCU;
    unsigned char reserved_CE4[44];
    Ifx_SRC_GSMU SMU;
    unsigned char reserved_D1C[196];
    Ifx_SRC_GLMU LMU;
    unsigned char reserved_DE4[460];
    Ifx_SRC_GEVR EVR;
    unsigned char reserved_FB8[8];
    Ifx_SRC_GFFT FFT;
    unsigned char reserved_FCC[52];
    Ifx_SRC_GGPSR GPSR;
    Ifx_SRC_GGTM GTM;
    unsigned char reserved_1BC0[1088];
} Ifx_SRC;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h" 2
# 98 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 2
# 112 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src);
# 121 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src);
# 130 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src);
# 139 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src);
# 148 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src);
# 166 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src);
# 175 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src);
# 184 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src);
# 216 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority);







static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src)
{
    src->B.IOVCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.CLRR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src)
{
    src->U = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority)
{
    src->B.SRPN = priority;
    src->B.TOS = typOfService;
    IfxSrc_clearRequest(src);
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src)
{
    return src->B.IOV ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src)
{
    return src->B.SRR ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.SETR = 1;
}
# 47 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_reg.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_regdef.h" 1
# 49 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_regdef.h"
typedef struct _Ifx_CAN_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_CAN_ACCEN0_Bits;


typedef struct _Ifx_CAN_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CAN_ACCEN1_Bits;


typedef struct _Ifx_CAN_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_CAN_CLC_Bits;


typedef struct _Ifx_CAN_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int reserved_16 : 16;
} Ifx_CAN_FDR_Bits;


typedef struct _Ifx_CAN_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_CAN_ID_Bits;


typedef struct _Ifx_CAN_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_CAN_KRST0_Bits;


typedef struct _Ifx_CAN_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_CAN_KRST1_Bits;


typedef struct _Ifx_CAN_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_CAN_KRSTCLR_Bits;


typedef struct _Ifx_CAN_LIST_Bits
{
    unsigned int BEGIN : 8;
    unsigned int END : 8;
    unsigned int SIZE : 8;
    unsigned int EMPTY : 1;
    unsigned int reserved_25 : 7;
} Ifx_CAN_LIST_Bits;


typedef struct _Ifx_CAN_MCR_Bits
{
    unsigned int CLKSEL : 4;
    unsigned int reserved_4 : 4;
    unsigned int DXCM : 1;
    unsigned int reserved_9 : 3;
    unsigned int MPSEL : 4;
    unsigned int reserved_16 : 16;
} Ifx_CAN_MCR_Bits;


typedef struct _Ifx_CAN_MECR_Bits
{
    unsigned int TH : 16;
    unsigned int INP : 4;
    unsigned int NODE : 3;
    unsigned int reserved_23 : 1;
    unsigned int ANYED : 1;
    unsigned int CAPEIE : 1;
    unsigned int reserved_26 : 1;
    unsigned int DEPTH : 3;
    unsigned int SOF : 1;
    unsigned int reserved_31 : 1;
} Ifx_CAN_MECR_Bits;


typedef struct _Ifx_CAN_MESTAT_Bits
{
    unsigned int CAPT : 16;
    unsigned int CAPRED : 1;
    unsigned int CAPE : 1;
    unsigned int reserved_18 : 14;
} Ifx_CAN_MESTAT_Bits;


typedef struct _Ifx_CAN_MITR_Bits
{
    unsigned int IT : 16;
    unsigned int reserved_16 : 16;
} Ifx_CAN_MITR_Bits;


typedef struct _Ifx_CAN_MO_AMR_Bits
{
    unsigned int AM : 29;
    unsigned int MIDE : 1;
    unsigned int reserved_30 : 2;
} Ifx_CAN_MO_AMR_Bits;


typedef struct _Ifx_CAN_MO_AR_Bits
{
    unsigned int ID : 29;
    unsigned int IDE : 1;
    unsigned int PRI : 2;
} Ifx_CAN_MO_AR_Bits;


typedef struct _Ifx_CAN_MO_CTR_Bits
{
    unsigned int RESRXPND : 1;
    unsigned int RESTXPND : 1;
    unsigned int RESRXUPD : 1;
    unsigned int RESNEWDAT : 1;
    unsigned int RESMSGLST : 1;
    unsigned int RESMSGVAL : 1;
    unsigned int RESRTSEL : 1;
    unsigned int RESRXEN : 1;
    unsigned int RESTXRQ : 1;
    unsigned int RESTXEN0 : 1;
    unsigned int RESTXEN1 : 1;
    unsigned int RESDIR : 1;
    unsigned int reserved_12 : 4;
    unsigned int SETRXPND : 1;
    unsigned int SETTXPND : 1;
    unsigned int SETRXUPD : 1;
    unsigned int SETNEWDAT : 1;
    unsigned int SETMSGLST : 1;
    unsigned int SETMSGVAL : 1;
    unsigned int SETRTSEL : 1;
    unsigned int SETRXEN : 1;
    unsigned int SETTXRQ : 1;
    unsigned int SETTXEN0 : 1;
    unsigned int SETTXEN1 : 1;
    unsigned int SETDIR : 1;
    unsigned int reserved_28 : 4;
} Ifx_CAN_MO_CTR_Bits;


typedef struct _Ifx_CAN_MO_DATAH_Bits
{
    unsigned int DB4 : 8;
    unsigned int DB5 : 8;
    unsigned int DB6 : 8;
    unsigned int DB7 : 8;
} Ifx_CAN_MO_DATAH_Bits;


typedef struct _Ifx_CAN_MO_DATAL_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_DATAL_Bits;


typedef struct _Ifx_CAN_MO_EDATA0_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA0_Bits;


typedef struct _Ifx_CAN_MO_EDATA1_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA1_Bits;


typedef struct _Ifx_CAN_MO_EDATA2_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA2_Bits;


typedef struct _Ifx_CAN_MO_EDATA3_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA3_Bits;


typedef struct _Ifx_CAN_MO_EDATA4_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA4_Bits;


typedef struct _Ifx_CAN_MO_EDATA5_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA5_Bits;


typedef struct _Ifx_CAN_MO_EDATA6_Bits
{
    unsigned int DB0 : 8;
    unsigned int DB1 : 8;
    unsigned int DB2 : 8;
    unsigned int DB3 : 8;
} Ifx_CAN_MO_EDATA6_Bits;


typedef struct _Ifx_CAN_MO_FCR_Bits
{
    unsigned int MMC : 4;
    unsigned int RXTOE : 1;
    unsigned int BRS : 1;
    unsigned int FDF : 1;
    unsigned int reserved_7 : 1;
    unsigned int GDFS : 1;
    unsigned int IDC : 1;
    unsigned int DLCC : 1;
    unsigned int DATC : 1;
    unsigned int reserved_12 : 4;
    unsigned int RXIE : 1;
    unsigned int TXIE : 1;
    unsigned int OVIE : 1;
    unsigned int reserved_19 : 1;
    unsigned int FRREN : 1;
    unsigned int RMM : 1;
    unsigned int SDT : 1;
    unsigned int STT : 1;
    unsigned int DLC : 4;
    unsigned int reserved_28 : 4;
} Ifx_CAN_MO_FCR_Bits;


typedef struct _Ifx_CAN_MO_FGPR_Bits
{
    unsigned int BOT : 8;
    unsigned int TOP : 8;
    unsigned int CUR : 8;
    unsigned int SEL : 8;
} Ifx_CAN_MO_FGPR_Bits;


typedef struct _Ifx_CAN_MO_IPR_Bits
{
    unsigned int RXINP : 4;
    unsigned int TXINP : 4;
    unsigned int MPN : 8;
    unsigned int CFCVAL : 16;
} Ifx_CAN_MO_IPR_Bits;


typedef struct _Ifx_CAN_MO_STAT_Bits
{
    unsigned int RXPND : 1;
    unsigned int TXPND : 1;
    unsigned int RXUPD : 1;
    unsigned int NEWDAT : 1;
    unsigned int MSGLST : 1;
    unsigned int MSGVAL : 1;
    unsigned int RTSEL : 1;
    unsigned int RXEN : 1;
    unsigned int TXRQ : 1;
    unsigned int TXEN0 : 1;
    unsigned int TXEN1 : 1;
    unsigned int DIR : 1;
    unsigned int LIST : 4;
    unsigned int PPREV : 8;
    unsigned int PNEXT : 8;
} Ifx_CAN_MO_STAT_Bits;


typedef struct _Ifx_CAN_MSID_Bits
{
    unsigned int INDEX : 6;
    unsigned int reserved_6 : 26;
} Ifx_CAN_MSID_Bits;


typedef struct _Ifx_CAN_MSIMASK_Bits
{
    unsigned int IM : 32;
} Ifx_CAN_MSIMASK_Bits;


typedef struct _Ifx_CAN_MSPND_Bits
{
    unsigned int PND : 32;
} Ifx_CAN_MSPND_Bits;


typedef struct _Ifx_CAN_N_BTEVR_Bits
{
    unsigned int BRP : 6;
    unsigned int reserved_6 : 2;
    unsigned int SJW : 4;
    unsigned int reserved_12 : 3;
    unsigned int DIV8 : 1;
    unsigned int TSEG2 : 5;
    unsigned int reserved_21 : 1;
    unsigned int TSEG1 : 6;
    unsigned int reserved_28 : 4;
} Ifx_CAN_N_BTEVR_Bits;


typedef struct _Ifx_CAN_N_BTR_Bits
{
    unsigned int BRP : 6;
    unsigned int SJW : 2;
    unsigned int TSEG1 : 4;
    unsigned int TSEG2 : 3;
    unsigned int DIV8 : 1;
    unsigned int reserved_16 : 16;
} Ifx_CAN_N_BTR_Bits;


typedef struct _Ifx_CAN_N_CR_Bits
{
    unsigned int INIT : 1;
    unsigned int TRIE : 1;
    unsigned int LECIE : 1;
    unsigned int ALIE : 1;
    unsigned int CANDIS : 1;
    unsigned int TXDIS : 1;
    unsigned int CCE : 1;
    unsigned int CALM : 1;
    unsigned int SUSEN : 1;
    unsigned int FDEN : 1;
    unsigned int reserved_10 : 22;
} Ifx_CAN_N_CR_Bits;


typedef struct _Ifx_CAN_N_ECNT_Bits
{
    unsigned int REC : 8;
    unsigned int TEC : 8;
    unsigned int EWRNLVL : 8;
    unsigned int LETD : 1;
    unsigned int LEINC : 1;
    unsigned int reserved_26 : 6;
} Ifx_CAN_N_ECNT_Bits;


typedef struct _Ifx_CAN_N_FBTR_Bits
{
    unsigned int FBRP : 6;
    unsigned int FSJW : 2;
    unsigned int FTSEG1 : 4;
    unsigned int FTSEG2 : 3;
    unsigned int reserved_15 : 17;
} Ifx_CAN_N_FBTR_Bits;


typedef struct _Ifx_CAN_N_FCR_Bits
{
    unsigned int CFC : 16;
    unsigned int CFSEL : 3;
    unsigned int CFMOD : 2;
    unsigned int reserved_21 : 1;
    unsigned int CFCIE : 1;
    unsigned int CFCOV : 1;
    unsigned int reserved_24 : 8;
} Ifx_CAN_N_FCR_Bits;


typedef struct _Ifx_CAN_N_IPR_Bits
{
    unsigned int ALINP : 4;
    unsigned int LECINP : 4;
    unsigned int TRINP : 4;
    unsigned int CFCINP : 4;
    unsigned int TEINP : 4;
    unsigned int reserved_20 : 12;
} Ifx_CAN_N_IPR_Bits;


typedef struct _Ifx_CAN_N_PCR_Bits
{
    unsigned int RXSEL : 3;
    unsigned int reserved_3 : 5;
    unsigned int LBM : 1;
    unsigned int reserved_9 : 23;
} Ifx_CAN_N_PCR_Bits;


typedef struct _Ifx_CAN_N_SR_Bits
{
    unsigned int LEC : 3;
    unsigned int TXOK : 1;
    unsigned int RXOK : 1;
    unsigned int ALERT : 1;
    unsigned int EWRN : 1;
    unsigned int BOFF : 1;
    unsigned int LLE : 1;
    unsigned int LOE : 1;
    unsigned int SUSACK : 1;
    unsigned int RESI : 1;
    unsigned int FLEC : 3;
    unsigned int reserved_15 : 17;
} Ifx_CAN_N_SR_Bits;


typedef struct _Ifx_CAN_N_TCCR_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int TPSC : 4;
    unsigned int reserved_12 : 6;
    unsigned int TRIGSRC : 3;
    unsigned int reserved_21 : 11;
} Ifx_CAN_N_TCCR_Bits;


typedef struct _Ifx_CAN_N_TDCR_Bits
{
    unsigned int TDCV : 5;
    unsigned int reserved_5 : 3;
    unsigned int TDCO : 4;
    unsigned int reserved_12 : 3;
    unsigned int TDC : 1;
    unsigned int reserved_16 : 16;
} Ifx_CAN_N_TDCR_Bits;


typedef struct _Ifx_CAN_N_TRTR_Bits
{
    unsigned int RELOAD : 16;
    unsigned int reserved_16 : 6;
    unsigned int TEIE : 1;
    unsigned int TE : 1;
    unsigned int reserved_24 : 8;
} Ifx_CAN_N_TRTR_Bits;


typedef struct _Ifx_CAN_N_TTTR_Bits
{
    unsigned int RELOAD : 16;
    unsigned int TXMO : 8;
    unsigned int STRT : 1;
    unsigned int reserved_25 : 7;
} Ifx_CAN_N_TTTR_Bits;


typedef struct _Ifx_CAN_OCS_Bits
{
    unsigned int TGS : 2;
    unsigned int TGB : 1;
    unsigned int TG_P : 1;
    unsigned int reserved_4 : 20;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_CAN_OCS_Bits;


typedef struct _Ifx_CAN_PANCTR_Bits
{
    unsigned int PANCMD : 8;
    unsigned int BUSY : 1;
    unsigned int RBUSY : 1;
    unsigned int reserved_10 : 6;
    unsigned int PANAR1 : 8;
    unsigned int PANAR2 : 8;
} Ifx_CAN_PANCTR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_ACCEN0_Bits B;
} Ifx_CAN_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_ACCEN1_Bits B;
} Ifx_CAN_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_CLC_Bits B;
} Ifx_CAN_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_FDR_Bits B;
} Ifx_CAN_FDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_ID_Bits B;
} Ifx_CAN_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_KRST0_Bits B;
} Ifx_CAN_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_KRST1_Bits B;
} Ifx_CAN_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_KRSTCLR_Bits B;
} Ifx_CAN_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_LIST_Bits B;
} Ifx_CAN_LIST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MCR_Bits B;
} Ifx_CAN_MCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MECR_Bits B;
} Ifx_CAN_MECR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MESTAT_Bits B;
} Ifx_CAN_MESTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MITR_Bits B;
} Ifx_CAN_MITR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_AMR_Bits B;
} Ifx_CAN_MO_AMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_AR_Bits B;
} Ifx_CAN_MO_AR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_CTR_Bits B;
} Ifx_CAN_MO_CTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_DATAH_Bits B;
} Ifx_CAN_MO_DATAH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_DATAL_Bits B;
} Ifx_CAN_MO_DATAL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA0_Bits B;
} Ifx_CAN_MO_EDATA0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA1_Bits B;
} Ifx_CAN_MO_EDATA1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA2_Bits B;
} Ifx_CAN_MO_EDATA2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA3_Bits B;
} Ifx_CAN_MO_EDATA3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA4_Bits B;
} Ifx_CAN_MO_EDATA4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA5_Bits B;
} Ifx_CAN_MO_EDATA5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_EDATA6_Bits B;
} Ifx_CAN_MO_EDATA6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_FCR_Bits B;
} Ifx_CAN_MO_FCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_FGPR_Bits B;
} Ifx_CAN_MO_FGPR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_IPR_Bits B;
} Ifx_CAN_MO_IPR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MO_STAT_Bits B;
} Ifx_CAN_MO_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MSID_Bits B;
} Ifx_CAN_MSID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MSIMASK_Bits B;
} Ifx_CAN_MSIMASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_MSPND_Bits B;
} Ifx_CAN_MSPND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_BTEVR_Bits B;
} Ifx_CAN_N_BTEVR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_BTR_Bits B;
} Ifx_CAN_N_BTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_CR_Bits B;
} Ifx_CAN_N_CR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_ECNT_Bits B;
} Ifx_CAN_N_ECNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_FBTR_Bits B;
} Ifx_CAN_N_FBTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_FCR_Bits B;
} Ifx_CAN_N_FCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_IPR_Bits B;
} Ifx_CAN_N_IPR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_PCR_Bits B;
} Ifx_CAN_N_PCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_SR_Bits B;
} Ifx_CAN_N_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_TCCR_Bits B;
} Ifx_CAN_N_TCCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_TDCR_Bits B;
} Ifx_CAN_N_TDCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_TRTR_Bits B;
} Ifx_CAN_N_TRTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_N_TTTR_Bits B;
} Ifx_CAN_N_TTTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_OCS_Bits B;
} Ifx_CAN_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CAN_PANCTR_Bits B;
} Ifx_CAN_PANCTR;
# 967 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN_MO
{
    union
    {
        Ifx_CAN_MO_EDATA0 EDATA0;
        Ifx_CAN_MO_FCR FCR;
    };

    union
    {
        Ifx_CAN_MO_EDATA1 EDATA1;
        Ifx_CAN_MO_FGPR FGPR;
    };

    union
    {
        Ifx_CAN_MO_EDATA2 EDATA2;
        Ifx_CAN_MO_IPR IPR;
    };

    union
    {
        Ifx_CAN_MO_AMR AMR;
        Ifx_CAN_MO_EDATA3 EDATA3;
    };

    union
    {
        Ifx_CAN_MO_DATAL DATAL;
        Ifx_CAN_MO_EDATA4 EDATA4;
    };

    union
    {
        Ifx_CAN_MO_DATAH DATAH;
        Ifx_CAN_MO_EDATA5 EDATA5;
    };

    union
    {
        Ifx_CAN_MO_AR AR;
        Ifx_CAN_MO_EDATA6 EDATA6;
    };

    union
    {
        Ifx_CAN_MO_CTR CTR;
        Ifx_CAN_MO_STAT STAT;
    };
} Ifx_CAN_MO;


typedef volatile struct _Ifx_CAN_N
{
    Ifx_CAN_N_CR CR;
    Ifx_CAN_N_SR SR;
    Ifx_CAN_N_IPR IPR;
    Ifx_CAN_N_PCR PCR;
    union
    {
        Ifx_CAN_N_BTEVR BTEVR;
        Ifx_CAN_N_BTR BTR;
    };

    Ifx_CAN_N_ECNT ECNT;
    Ifx_CAN_N_FCR FCR;
    Ifx_CAN_N_TCCR TCCR;
    Ifx_CAN_N_TRTR TRTR;
    Ifx_CAN_N_TTTR TATTR;
    Ifx_CAN_N_TTTR TBTTR;
    Ifx_CAN_N_TTTR TCTTR;
    unsigned char reserved_30[8];
    Ifx_CAN_N_FBTR FBTR;
    Ifx_CAN_N_TDCR TDCR;
    unsigned char reserved_40[192];
} Ifx_CAN_N;
# 1055 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_regdef.h"
typedef volatile struct _Ifx_CAN
{
    Ifx_CAN_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_CAN_ID ID;
    Ifx_CAN_FDR FDR;
    unsigned char reserved_10[216];
    Ifx_CAN_OCS OCS;
    Ifx_CAN_KRSTCLR KRSTCLR;
    Ifx_CAN_KRST1 KRST1;
    Ifx_CAN_KRST0 KRST0;
    Ifx_CAN_ACCEN1 ACCEN1;
    Ifx_CAN_ACCEN0 ACCEN0;
    Ifx_CAN_LIST LIST[16];
    Ifx_CAN_MSPND MSPND[8];
    unsigned char reserved_160[32];
    Ifx_CAN_MSID MSID[8];
    unsigned char reserved_1A0[32];
    Ifx_CAN_MSIMASK MSIMASK;
    Ifx_CAN_PANCTR PANCTR;
    Ifx_CAN_MCR MCR;
    Ifx_CAN_MITR MITR;
    Ifx_CAN_MECR MECR;
    Ifx_CAN_MESTAT MESTAT;
    unsigned char reserved_1D8[40];
    Ifx_CAN_N N[3];
    unsigned char reserved_500[2816];
    Ifx_CAN_MO MO[128];
    unsigned char reserved_2000[8192];
} Ifx_CAN;
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_reg.h" 2
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h" 2

# 1 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 1
# 43 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 1
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h" 1
# 78 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
typedef struct _Ifx_P_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC0 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC1 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC2 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC3 : 5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC12 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC13 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC14 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC15 : 5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC4 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC5 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC6 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC7 : 5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC8 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC9 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC10 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC11 : 5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    unsigned int reserved_0 : 20;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int reserved_28 : 4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int reserved_12 : 20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SEL1 : 1;
    unsigned int SEL2 : 1;
    unsigned int reserved_3 : 6;
    unsigned int SEL9 : 1;
    unsigned int SEL10 : 1;
    unsigned int reserved_11 : 20;
    unsigned int LCK : 1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int PDIS2 : 1;
    unsigned int PDIS3 : 1;
    unsigned int PDIS4 : 1;
    unsigned int PDIS5 : 1;
    unsigned int PDIS6 : 1;
    unsigned int PDIS7 : 1;
    unsigned int PDIS8 : 1;
    unsigned int PDIS9 : 1;
    unsigned int PDIS10 : 1;
    unsigned int PDIS11 : 1;
    unsigned int PDIS12 : 1;
    unsigned int PDIS13 : 1;
    unsigned int PDIS14 : 1;
    unsigned int PDIS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int PD2 : 3;
    unsigned int PL2 : 1;
    unsigned int PD3 : 3;
    unsigned int PL3 : 1;
    unsigned int PD4 : 3;
    unsigned int PL4 : 1;
    unsigned int PD5 : 3;
    unsigned int PL5 : 1;
    unsigned int PD6 : 3;
    unsigned int PL6 : 1;
    unsigned int PD7 : 3;
    unsigned int PL7 : 1;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    unsigned int PD8 : 3;
    unsigned int PL8 : 1;
    unsigned int PD9 : 3;
    unsigned int PL9 : 1;
    unsigned int PD10 : 3;
    unsigned int PL10 : 1;
    unsigned int PD11 : 3;
    unsigned int PL11 : 1;
    unsigned int PD12 : 3;
    unsigned int PL12 : 1;
    unsigned int PD13 : 3;
    unsigned int PL13 : 1;
    unsigned int PD14 : 3;
    unsigned int PL14 : 1;
    unsigned int PD15 : 3;
    unsigned int PL15 : 1;
} Ifx_P_PDR1_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 671 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
    Ifx_P_OUT OUT;
    Ifx_P_OMR OMR;
    Ifx_P_ID ID;
    unsigned char reserved_C[4];
    Ifx_P_IOCR0 IOCR0;
    Ifx_P_IOCR4 IOCR4;
    Ifx_P_IOCR8 IOCR8;
    Ifx_P_IOCR12 IOCR12;
    unsigned char reserved_20[4];
    Ifx_P_IN IN;
    unsigned char reserved_28[24];
    Ifx_P_PDR0 PDR0;
    Ifx_P_PDR1 PDR1;
    unsigned char reserved_48[8];
    Ifx_P_ESR ESR;
    unsigned char reserved_54[12];
    Ifx_P_PDISC PDISC;
    Ifx_P_PCSR PCSR;
    unsigned char reserved_64[8];
    Ifx_P_OMSR0 OMSR0;
    Ifx_P_OMSR4 OMSR4;
    Ifx_P_OMSR8 OMSR8;
    Ifx_P_OMSR12 OMSR12;
    Ifx_P_OMCR0 OMCR0;
    Ifx_P_OMCR4 OMCR4;
    Ifx_P_OMCR8 OMCR8;
    Ifx_P_OMCR12 OMCR12;
    Ifx_P_OMSR OMSR;
    Ifx_P_OMCR OMCR;
    unsigned char reserved_98[96];
    Ifx_P_ACCEN1 ACCEN1;
    Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 79 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h" 2
# 42 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 2
# 59 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
typedef struct
{
    Ifx_P *port;
    uint16 masks;
} IfxPort_Esr_Masks;





extern const IfxPort_Esr_Masks IfxPort_cfg_esrMasks[(13)];

extern const IfxModule_IndexMap IfxPort_cfg_indexMap[(13)];
# 44 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 1
# 46 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_bf.h" 1
# 37 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_bf.h" 1
# 38 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 2
# 1291 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
typedef enum
{
    IfxScu_CCUCON0_CLKSEL_fBack = 0,
    IfxScu_CCUCON0_CLKSEL_fPll = 1
} IfxScu_CCUCON0_CLKSEL;


typedef enum
{
    IfxScu_CCUCON1_INSEL_fOsc1 = 0,
    IfxScu_CCUCON1_INSEL_fOsc0 = 1
} IfxScu_CCUCON1_INSEL;


typedef enum
{
    IfxScu_WDTCON1_IR_divBy16384 = 0,
    IfxScu_WDTCON1_IR_divBy256 = 1,
    IfxScu_WDTCON1_IR_divBy64 = 2
} IfxScu_WDTCON1_IR;

typedef enum
{
    IfxScu_PMCSR_REQSLP_Run = 0U,
    IfxScu_PMCSR_REQSLP_Idle = 1U,
    IfxScu_PMCSR_REQSLP_Sleep = 2U,
    IfxScu_PMCSR_REQSLP_Stby = 3U
} IfxScu_PMCSR_REQSLP;
# 47 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 48 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_SCU_ACCEN0_Bits;


typedef struct _Ifx_SCU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_SCU_ACCEN1_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    unsigned int STM0DIS : 1;
    unsigned int STM1DIS : 1;
    unsigned int STM2DIS : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int BAUD2DIV : 4;
    unsigned int SRIDIV : 4;
    unsigned int LPDIV : 4;
    unsigned int SPBDIV : 4;
    unsigned int FSI2DIV : 2;
    unsigned int reserved_22 : 2;
    unsigned int FSIDIV : 2;
    unsigned int reserved_26 : 2;
    unsigned int CLKSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    unsigned int CANDIV : 4;
    unsigned int ERAYDIV : 4;
    unsigned int STMDIV : 4;
    unsigned int GTMDIV : 4;
    unsigned int ETHDIV : 4;
    unsigned int ASCLINFDIV : 4;
    unsigned int ASCLINSDIV : 4;
    unsigned int INSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    unsigned int BBBDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    unsigned int PLLDIV : 6;
    unsigned int PLLSEL : 2;
    unsigned int PLLERAYDIV : 6;
    unsigned int PLLERAYSEL : 2;
    unsigned int SRIDIV : 6;
    unsigned int SRISEL : 2;
    unsigned int reserved_24 : 6;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    unsigned int SPBDIV : 6;
    unsigned int SPBSEL : 2;
    unsigned int GTMDIV : 6;
    unsigned int GTMSEL : 2;
    unsigned int STMDIV : 6;
    unsigned int STMSEL : 2;
    unsigned int reserved_24 : 6;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    unsigned int MAXDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    unsigned int CPU0DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    unsigned int CHREV : 6;
    unsigned int CHTEC : 2;
    unsigned int CHID : 8;
    unsigned int EEA : 1;
    unsigned int UCODE : 7;
    unsigned int FSIZE : 4;
    unsigned int SP : 2;
    unsigned int SEC : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCON_Bits
{
    unsigned int PWD : 1;
    unsigned int START : 1;
    unsigned int reserved_2 : 2;
    unsigned int CAL : 22;
    unsigned int reserved_26 : 5;
    unsigned int SLCK : 1;
} Ifx_SCU_DTSCON_Bits;


typedef struct _Ifx_SCU_DTSLIM_Bits
{
    unsigned int LOWER : 10;
    unsigned int reserved_10 : 5;
    unsigned int LLU : 1;
    unsigned int UPPER : 10;
    unsigned int reserved_26 : 4;
    unsigned int SLCK : 1;
    unsigned int UOF : 1;
} Ifx_SCU_DTSLIM_Bits;


typedef struct _Ifx_SCU_DTSSTAT_Bits
{
    unsigned int RESULT : 10;
    unsigned int reserved_10 : 4;
    unsigned int RDY : 1;
    unsigned int BUSY : 1;
    unsigned int reserved_16 : 16;
} Ifx_SCU_DTSSTAT_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int EXIS0 : 3;
    unsigned int reserved_7 : 1;
    unsigned int FEN0 : 1;
    unsigned int REN0 : 1;
    unsigned int LDEN0 : 1;
    unsigned int EIEN0 : 1;
    unsigned int INP0 : 3;
    unsigned int reserved_15 : 5;
    unsigned int EXIS1 : 3;
    unsigned int reserved_23 : 1;
    unsigned int FEN1 : 1;
    unsigned int REN1 : 1;
    unsigned int LDEN1 : 1;
    unsigned int EIEN1 : 1;
    unsigned int INP1 : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    unsigned int INTF0 : 1;
    unsigned int INTF1 : 1;
    unsigned int INTF2 : 1;
    unsigned int INTF3 : 1;
    unsigned int INTF4 : 1;
    unsigned int INTF5 : 1;
    unsigned int INTF6 : 1;
    unsigned int INTF7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    unsigned int POL : 1;
    unsigned int MODE : 1;
    unsigned int ENON : 1;
    unsigned int PSEL : 1;
    unsigned int reserved_4 : 12;
    unsigned int EMSF : 1;
    unsigned int SEMSF : 1;
    unsigned int reserved_18 : 6;
    unsigned int EMSFM : 2;
    unsigned int SEMSFM : 2;
    unsigned int reserved_28 : 4;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_ESRCFG_Bits
{
    unsigned int reserved_0 : 7;
    unsigned int EDCON : 2;
    unsigned int reserved_9 : 23;
} Ifx_SCU_ESRCFG_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    unsigned int ARI : 1;
    unsigned int ARC : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EVR13CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR13OFF : 1;
    unsigned int BPEVR13OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR13CON_Bits;


typedef struct _Ifx_SCU_EVRADCSTAT_Bits
{
    unsigned int ADC13V : 8;
    unsigned int reserved_8 : 8;
    unsigned int ADCSWDV : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRADCSTAT_Bits;


typedef struct _Ifx_SCU_EVRMONCTRL_Bits
{
    unsigned int EVR13OVMOD : 2;
    unsigned int reserved_2 : 2;
    unsigned int EVR13UVMOD : 2;
    unsigned int reserved_6 : 10;
    unsigned int SWDOVMOD : 2;
    unsigned int reserved_18 : 2;
    unsigned int SWDUVMOD : 2;
    unsigned int reserved_22 : 8;
    unsigned int SLCK : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EVRMONCTRL_Bits;


typedef struct _Ifx_SCU_EVROVMON_Bits
{
    unsigned int EVR13OVVAL : 8;
    unsigned int reserved_8 : 8;
    unsigned int SWDOVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVROVMON_Bits;


typedef struct _Ifx_SCU_EVRRSTCON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int RSTSWDOFF : 1;
    unsigned int BPRSTSWDOFF : 1;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRRSTCON_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF2_Bits
{
    unsigned int SD33P : 4;
    unsigned int reserved_4 : 4;
    unsigned int SD33I : 4;
    unsigned int reserved_12 : 19;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL1_Bits
{
    unsigned int SDFREQSPRD : 4;
    unsigned int reserved_4 : 4;
    unsigned int TON : 8;
    unsigned int TOFF : 8;
    unsigned int SDSTEP : 4;
    unsigned int SYNCDIV : 3;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL1_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL2_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int STBS : 2;
    unsigned int STSP : 2;
    unsigned int NS : 2;
    unsigned int OL : 1;
    unsigned int PIAD : 1;
    unsigned int ADCMODE : 4;
    unsigned int ADCLPF : 2;
    unsigned int ADCLSB : 1;
    unsigned int reserved_23 : 1;
    unsigned int SDLUT : 6;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL3_Bits
{
    unsigned int SDOLCON : 7;
    unsigned int MODSEL : 1;
    unsigned int MODLOW : 7;
    unsigned int reserved_15 : 1;
    unsigned int SDVOKLVL : 6;
    unsigned int MODMAN : 2;
    unsigned int MODHIGH : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL3_Bits;


typedef struct _Ifx_SCU_EVRSTAT_Bits
{
    unsigned int EVR13 : 1;
    unsigned int OV13 : 1;
    unsigned int reserved_2 : 2;
    unsigned int OVSWD : 1;
    unsigned int UV13 : 1;
    unsigned int reserved_6 : 1;
    unsigned int UVSWD : 1;
    unsigned int reserved_8 : 2;
    unsigned int BGPROK : 1;
    unsigned int reserved_11 : 1;
    unsigned int SCMOD : 2;
    unsigned int reserved_14 : 18;
} Ifx_SCU_EVRSTAT_Bits;


typedef struct _Ifx_SCU_EVRUVMON_Bits
{
    unsigned int EVR13UVVAL : 8;
    unsigned int reserved_8 : 8;
    unsigned int SWDUVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRUVMON_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    unsigned int EN0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int SEL0 : 4;
    unsigned int reserved_6 : 10;
    unsigned int EN1 : 1;
    unsigned int NSEL : 1;
    unsigned int SEL1 : 4;
    unsigned int reserved_22 : 2;
    unsigned int DIV1 : 8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int RESULT : 10;
    unsigned int reserved_26 : 5;
    unsigned int DISCLK : 1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    unsigned int FS0 : 1;
    unsigned int FS1 : 1;
    unsigned int FS2 : 1;
    unsigned int FS3 : 1;
    unsigned int FS4 : 1;
    unsigned int FS5 : 1;
    unsigned int FS6 : 1;
    unsigned int FS7 : 1;
    unsigned int reserved_8 : 8;
    unsigned int FC0 : 1;
    unsigned int FC1 : 1;
    unsigned int FC2 : 1;
    unsigned int FC3 : 1;
    unsigned int FC4 : 1;
    unsigned int FC5 : 1;
    unsigned int FC6 : 1;
    unsigned int FC7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    unsigned int IPEN00 : 1;
    unsigned int IPEN01 : 1;
    unsigned int IPEN02 : 1;
    unsigned int IPEN03 : 1;
    unsigned int IPEN04 : 1;
    unsigned int IPEN05 : 1;
    unsigned int IPEN06 : 1;
    unsigned int IPEN07 : 1;
    unsigned int reserved_8 : 5;
    unsigned int GEEN0 : 1;
    unsigned int IGP0 : 2;
    unsigned int IPEN10 : 1;
    unsigned int IPEN11 : 1;
    unsigned int IPEN12 : 1;
    unsigned int IPEN13 : 1;
    unsigned int IPEN14 : 1;
    unsigned int IPEN15 : 1;
    unsigned int IPEN16 : 1;
    unsigned int IPEN17 : 1;
    unsigned int reserved_24 : 5;
    unsigned int GEEN1 : 1;
    unsigned int IGP1 : 2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PC0 : 4;
    unsigned int reserved_8 : 4;
    unsigned int PC1 : 4;
    unsigned int reserved_16 : 16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    unsigned int LBISTREQ : 1;
    unsigned int LBISTREQP : 1;
    unsigned int PATTERNS : 14;
    unsigned int reserved_16 : 16;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    unsigned int SEED : 23;
    unsigned int reserved_23 : 1;
    unsigned int SPLITSH : 3;
    unsigned int BODY : 1;
    unsigned int LBISTFREQU : 4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    unsigned int SIGNATURE : 24;
    unsigned int reserved_24 : 7;
    unsigned int LBISTDONE : 1;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LCLCON0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int LS : 1;
    unsigned int reserved_17 : 14;
    unsigned int LSEN : 1;
} Ifx_SCU_LCLCON0_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    unsigned int LCLT0 : 1;
    unsigned int LCLT1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    unsigned int DEPT : 5;
    unsigned int MANUF : 11;
    unsigned int reserved_16 : 16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 14;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PLLLV : 1;
    unsigned int OSCRES : 1;
    unsigned int GAINSEL : 2;
    unsigned int MODE : 2;
    unsigned int SHBY : 1;
    unsigned int PLLHV : 1;
    unsigned int reserved_9 : 1;
    unsigned int X1D : 1;
    unsigned int X1DEN : 1;
    unsigned int reserved_12 : 4;
    unsigned int OSCVAL : 5;
    unsigned int reserved_21 : 2;
    unsigned int APREN : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    unsigned int CSEL0 : 1;
    unsigned int CSEL1 : 1;
    unsigned int CSEL2 : 1;
    unsigned int reserved_3 : 13;
    unsigned int OVSTRT : 1;
    unsigned int OVSTP : 1;
    unsigned int DCINVAL : 1;
    unsigned int reserved_19 : 5;
    unsigned int OVCONF : 1;
    unsigned int POVCONF : 1;
    unsigned int reserved_26 : 6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    unsigned int OVEN0 : 1;
    unsigned int OVEN1 : 1;
    unsigned int OVEN2 : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    unsigned int PDR0 : 1;
    unsigned int PDR1 : 1;
    unsigned int PDR2 : 1;
    unsigned int PDR3 : 1;
    unsigned int PDR4 : 1;
    unsigned int PDR5 : 1;
    unsigned int PDR6 : 1;
    unsigned int PDR7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PLLCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int MODEN : 1;
    unsigned int reserved_3 : 1;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 7;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLCON0_Bits;


typedef struct _Ifx_SCU_PLLCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 7;
    unsigned int reserved_15 : 1;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLCON1_Bits;


typedef struct _Ifx_SCU_PLLCON2_Bits
{
    unsigned int MODCFG : 16;
    unsigned int reserved_16 : 16;
} Ifx_SCU_PLLCON2_Bits;


typedef struct _Ifx_SCU_PLLERAYCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int reserved_2 : 2;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 5;
    unsigned int reserved_14 : 2;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLERAYCON0_Bits;


typedef struct _Ifx_SCU_PLLERAYCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 4;
    unsigned int reserved_12 : 4;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLERAYCON1_Bits;


typedef struct _Ifx_SCU_PLLERAYSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int PWDSTAT : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 26;
} Ifx_SCU_PLLERAYSTAT_Bits;


typedef struct _Ifx_SCU_PLLSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int reserved_1 : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 1;
    unsigned int MODRUN : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR_Bits
{
    unsigned int REQSLP : 2;
    unsigned int SMUSLP : 1;
    unsigned int reserved_3 : 5;
    unsigned int PMST : 3;
    unsigned int reserved_11 : 21;
} Ifx_SCU_PMCSR_Bits;


typedef struct _Ifx_SCU_PMSWCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int ESR0DFEN : 1;
    unsigned int ESR0EDCON : 2;
    unsigned int ESR1DFEN : 1;
    unsigned int ESR1EDCON : 2;
    unsigned int PINADFEN : 1;
    unsigned int PINAEDCON : 2;
    unsigned int PINBDFEN : 1;
    unsigned int PINBEDCON : 2;
    unsigned int reserved_16 : 1;
    unsigned int STBYRAMSEL : 2;
    unsigned int reserved_19 : 1;
    unsigned int WUTWKEN : 1;
    unsigned int reserved_21 : 2;
    unsigned int PORSTDF : 1;
    unsigned int reserved_24 : 1;
    unsigned int DCDCSYNC : 1;
    unsigned int reserved_26 : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int IRADIS : 1;
    unsigned int reserved_13 : 14;
    unsigned int STBYEVEN : 1;
    unsigned int STBYEV : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMSWCR3_Bits
{
    unsigned int WUTREL : 24;
    unsigned int reserved_24 : 4;
    unsigned int WUTDIV : 1;
    unsigned int WUTEN : 1;
    unsigned int WUTMODE : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR3_Bits;


typedef struct _Ifx_SCU_PMSWSTAT_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKP : 1;
    unsigned int ESR1OVRUN : 1;
    unsigned int PINAWKP : 1;
    unsigned int PINAOVRUN : 1;
    unsigned int PINBWKP : 1;
    unsigned int PINBOVRUN : 1;
    unsigned int reserved_8 : 1;
    unsigned int PORSTDF : 1;
    unsigned int HWCFGEVR : 3;
    unsigned int STBYRAM : 2;
    unsigned int reserved_15 : 1;
    unsigned int WUTWKP : 1;
    unsigned int WUTOVRUN : 1;
    unsigned int reserved_18 : 1;
    unsigned int WUTWKEN : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int reserved_23 : 4;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_28 : 1;
    unsigned int WUTEN : 1;
    unsigned int WUTMODE : 1;
    unsigned int WUTRUN : 1;
} Ifx_SCU_PMSWSTAT_Bits;


typedef struct _Ifx_SCU_PMSWSTATCLR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKPCLR : 1;
    unsigned int ESR1OVRUNCLR : 1;
    unsigned int PINAWKPCLR : 1;
    unsigned int PINAOVRUNCLR : 1;
    unsigned int PINBWKPCLR : 1;
    unsigned int PINBOVRUNCLR : 1;
    unsigned int reserved_8 : 8;
    unsigned int WUTWKPCLR : 1;
    unsigned int WUTOVRUNCLR : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_PMSWSTATCLR_Bits;


typedef struct _Ifx_SCU_PMSWUTCNT_Bits
{
    unsigned int WUTCNT : 24;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_PMSWUTCNT_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CLRC : 1;
    unsigned int reserved_2 : 10;
    unsigned int CSS0 : 1;
    unsigned int CSS1 : 1;
    unsigned int CSS2 : 1;
    unsigned int reserved_15 : 1;
    unsigned int USRINFO : 16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    unsigned int ESR0 : 2;
    unsigned int ESR1 : 2;
    unsigned int reserved_4 : 2;
    unsigned int SMU : 2;
    unsigned int SW : 2;
    unsigned int STM0 : 2;
    unsigned int STM1 : 2;
    unsigned int STM2 : 2;
    unsigned int reserved_16 : 16;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    unsigned int ESR0 : 1;
    unsigned int ESR1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMU : 1;
    unsigned int SW : 1;
    unsigned int STM0 : 1;
    unsigned int STM1 : 1;
    unsigned int STM2 : 1;
    unsigned int reserved_8 : 8;
    unsigned int PORST : 1;
    unsigned int reserved_17 : 1;
    unsigned int CB0 : 1;
    unsigned int CB1 : 1;
    unsigned int CB3 : 1;
    unsigned int reserved_21 : 2;
    unsigned int EVR13 : 1;
    unsigned int EVR33 : 1;
    unsigned int SWD : 1;
    unsigned int reserved_26 : 2;
    unsigned int STBYR : 1;
    unsigned int reserved_29 : 3;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SAFECON_Bits
{
    unsigned int HBT : 1;
    unsigned int reserved_1 : 31;
} Ifx_SCU_SAFECON_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    unsigned int HWCFG : 8;
    unsigned int FTM : 7;
    unsigned int MODE : 1;
    unsigned int FCBAE : 1;
    unsigned int LUDIS : 1;
    unsigned int reserved_18 : 1;
    unsigned int TRSTL : 1;
    unsigned int SPDEN : 1;
    unsigned int reserved_21 : 3;
    unsigned int RAMINT : 1;
    unsigned int reserved_25 : 7;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SWRSTREQ : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    unsigned int CCTRIG0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int RAMINTM : 2;
    unsigned int SETLUDIS : 1;
    unsigned int reserved_5 : 3;
    unsigned int DATM : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPDIS_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    volatile unsigned int ENDINIT : 1;
    volatile unsigned int LCK : 1;
    volatile unsigned int PW : 14;
    volatile unsigned int REL : 16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    volatile unsigned int ENDINIT : 1;
    volatile unsigned int LCK : 1;
    volatile unsigned int PW : 14;
    volatile unsigned int REL : 16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    unsigned int CLRIRF : 1;
    unsigned int reserved_1 : 1;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN0_Bits B;
} Ifx_SCU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ACCEN1_Bits B;
} Ifx_SCU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSCON_Bits B;
} Ifx_SCU_DTSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSLIM_Bits B;
} Ifx_SCU_DTSLIM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_DTSSTAT_Bits B;
} Ifx_SCU_DTSSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESRCFG_Bits B;
} Ifx_SCU_ESRCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVR13CON_Bits B;
} Ifx_SCU_EVR13CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRADCSTAT_Bits B;
} Ifx_SCU_EVRADCSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRMONCTRL_Bits B;
} Ifx_SCU_EVRMONCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVROVMON_Bits B;
} Ifx_SCU_EVROVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRRSTCON_Bits B;
} Ifx_SCU_EVRRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCOEFF2_Bits B;
} Ifx_SCU_EVRSDCOEFF2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL1_Bits B;
} Ifx_SCU_EVRSDCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL2_Bits B;
} Ifx_SCU_EVRSDCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSDCTRL3_Bits B;
} Ifx_SCU_EVRSDCTRL3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRSTAT_Bits B;
} Ifx_SCU_EVRSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EVRUVMON_Bits B;
} Ifx_SCU_EVRUVMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLCON0_Bits B;
} Ifx_SCU_LCLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON0_Bits B;
} Ifx_SCU_PLLCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON1_Bits B;
} Ifx_SCU_PLLCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLCON2_Bits B;
} Ifx_SCU_PLLCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON0_Bits B;
} Ifx_SCU_PLLERAYCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYCON1_Bits B;
} Ifx_SCU_PLLERAYCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLERAYSTAT_Bits B;
} Ifx_SCU_PLLERAYSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PLLSTAT_Bits B;
} Ifx_SCU_PLLSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMCSR_Bits B;
} Ifx_SCU_PMCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR0_Bits B;
} Ifx_SCU_PMSWCR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWCR3_Bits B;
} Ifx_SCU_PMSWCR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTAT_Bits B;
} Ifx_SCU_PMSWSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWSTATCLR_Bits B;
} Ifx_SCU_PMSWSTATCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_PMSWUTCNT_Bits B;
} Ifx_SCU_PMSWUTCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SAFECON_Bits B;
} Ifx_SCU_SAFECON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPDIS_Bits B;
} Ifx_SCU_TRAPDIS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 1779 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
    Ifx_SCU_WDTCPU_CON0 CON0;
    Ifx_SCU_WDTCPU_CON1 CON1;
    Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;


typedef volatile struct _Ifx_SCU_WDTS
{
    Ifx_SCU_WDTS_CON0 CON0;
    Ifx_SCU_WDTS_CON1 CON1;
    Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 1805 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
    unsigned char reserved_0[8];
    Ifx_SCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SCU_OSCCON OSCCON;
    Ifx_SCU_PLLSTAT PLLSTAT;
    Ifx_SCU_PLLCON0 PLLCON0;
    Ifx_SCU_PLLCON1 PLLCON1;
    Ifx_SCU_PLLCON2 PLLCON2;
    Ifx_SCU_PLLERAYSTAT PLLERAYSTAT;
    Ifx_SCU_PLLERAYCON0 PLLERAYCON0;
    Ifx_SCU_PLLERAYCON1 PLLERAYCON1;
    Ifx_SCU_CCUCON0 CCUCON0;
    Ifx_SCU_CCUCON1 CCUCON1;
    Ifx_SCU_FDR FDR;
    Ifx_SCU_EXTCON EXTCON;
    Ifx_SCU_CCUCON2 CCUCON2;
    Ifx_SCU_CCUCON3 CCUCON3;
    Ifx_SCU_CCUCON4 CCUCON4;
    Ifx_SCU_CCUCON5 CCUCON5;
    Ifx_SCU_RSTSTAT RSTSTAT;
    unsigned char reserved_54[4];
    Ifx_SCU_RSTCON RSTCON;
    Ifx_SCU_ARSTDIS ARSTDIS;
    Ifx_SCU_SWRSTCON SWRSTCON;
    Ifx_SCU_RSTCON2 RSTCON2;
    unsigned char reserved_68[4];
    Ifx_SCU_EVRRSTCON EVRRSTCON;
    Ifx_SCU_ESRCFG ESRCFG[2];
    Ifx_SCU_ESROCFG ESROCFG;
    Ifx_SCU_SYSCON SYSCON;
    Ifx_SCU_CCUCON6 CCUCON6;
    unsigned char reserved_84[24];
    Ifx_SCU_PDR PDR;
    Ifx_SCU_IOCR IOCR;
    Ifx_SCU_OUT OUT;
    Ifx_SCU_OMR OMR;
    Ifx_SCU_IN IN;
    Ifx_SCU_EVRSTAT EVRSTAT;
    unsigned char reserved_B4[4];
    Ifx_SCU_EVR13CON EVR13CON;
    unsigned char reserved_BC[4];
    Ifx_SCU_STSTAT STSTAT;
    unsigned char reserved_C4[4];
    Ifx_SCU_PMSWCR0 PMSWCR0;
    Ifx_SCU_PMSWSTAT PMSWSTAT;
    Ifx_SCU_PMSWSTATCLR PMSWSTATCLR;
    Ifx_SCU_PMCSR PMCSR[1];
    unsigned char reserved_D8[8];
    Ifx_SCU_DTSSTAT DTSSTAT;
    Ifx_SCU_DTSCON DTSCON;
    Ifx_SCU_PMSWCR1 PMSWCR1;
    unsigned char reserved_EC[4];
    Ifx_SCU_WDTS WDTS;
    Ifx_SCU_EMSR EMSR;
    Ifx_SCU_WDTCPU WDTCPU[1];
    unsigned char reserved_10C[24];
    Ifx_SCU_TRAPSTAT TRAPSTAT;
    Ifx_SCU_TRAPSET TRAPSET;
    Ifx_SCU_TRAPCLR TRAPCLR;
    Ifx_SCU_TRAPDIS TRAPDIS;
    Ifx_SCU_LCLCON0 LCLCON0;
    unsigned char reserved_138[4];
    Ifx_SCU_LCLTEST LCLTEST;
    Ifx_SCU_CHIPID CHIPID;
    Ifx_SCU_MANID MANID;
    unsigned char reserved_148[8];
    Ifx_SCU_SAFECON SAFECON;
    unsigned char reserved_154[16];
    Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
    Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
    Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
    unsigned char reserved_170[28];
    Ifx_SCU_PDISC PDISC;
    unsigned char reserved_190[12];
    Ifx_SCU_EVRADCSTAT EVRADCSTAT;
    Ifx_SCU_EVRUVMON EVRUVMON;
    Ifx_SCU_EVROVMON EVROVMON;
    Ifx_SCU_EVRMONCTRL EVRMONCTRL;
    unsigned char reserved_1AC[4];
    Ifx_SCU_EVRSDCTRL1 EVRSDCTRL1;
    Ifx_SCU_EVRSDCTRL2 EVRSDCTRL2;
    Ifx_SCU_EVRSDCTRL3 EVRSDCTRL3;
    unsigned char reserved_1BC[8];
    Ifx_SCU_EVRSDCOEFF2 EVRSDCOEFF2;
    unsigned char reserved_1C8[20];
    Ifx_SCU_PMSWUTCNT PMSWUTCNT;
    Ifx_SCU_OVCENABLE OVCENABLE;
    Ifx_SCU_OVCCON OVCCON;
    unsigned char reserved_1E8[40];
    Ifx_SCU_EICR EICR[4];
    Ifx_SCU_EIFR EIFR;
    Ifx_SCU_FMR FMR;
    Ifx_SCU_PDRR PDRR;
    Ifx_SCU_IGCR IGCR[4];
    unsigned char reserved_23C[4];
    Ifx_SCU_DTSLIM DTSLIM;
    unsigned char reserved_244[188];
    Ifx_SCU_PMSWCR3 PMSWCR3;
    unsigned char reserved_304[244];
    Ifx_SCU_ACCEN1 ACCEN1;
    Ifx_SCU_ACCEN0 ACCEN0;
} Ifx_SCU;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 2
# 49 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.asm.h" 1
# 45 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.asm.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password);






static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password)
{

    uint32 temp = password;
    uint16 res;
    __asm("xor.t  %0,%1,0,%1,2   \n           xor.t  %0,%0,0,%1,12  \n           xor.t  %0,%0,0,%1,13  \n           xor.t  %0,%0,0,%1,14  \n           sh     %1,-1 \n           ins.t  %0,%1,14,%0,0   \n"




                                      : "=&d" (res) : "d" (temp));
    return res;

}
# 50 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 59 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
typedef struct
{
    uint16 password;
    uint16 reload;
    IfxScu_WDTCON1_IR inputFrequency;
    boolean disableWatchdog;
    boolean enableSmuRestriction;
    boolean enableAutomaticPasswordChange;
    boolean enableTimerCheck;
    boolean enableTimerCheckTolerance;
    boolean clrInternalResetFlag;
} IfxScuWdt_Config;
# 86 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initConfig(IfxScuWdt_Config *config);
# 99 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initCpuWatchdog(Ifx_SCU_WDTCPU *wdt, const IfxScuWdt_Config *config);
# 112 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initSafetyWatchdog(Ifx_SCU_WDTS *wdt, const IfxScuWdt_Config *config);
# 135 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 148 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password);
# 160 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 171 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password);
# 187 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearCpuEndinit(uint16 password);
# 199 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearSafetyEndinit(uint16 password);
# 209 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setCpuEndinit(uint16 password);
# 219 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setSafetyEndinit(uint16 password);
# 239 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog);




static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void);
# 254 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void);
# 268 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogPassword(uint16 password, uint16 newPassword);
# 279 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogReload(uint16 password, uint16 reload);
# 289 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogPassword(uint16 password, uint16 newPassword);
# 300 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogReload(uint16 password, uint16 reload);
# 310 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableCpuWatchdog(uint16 password);
# 320 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableSafetyWatchdog(uint16 password);
# 330 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableCpuWatchdog(uint16 password);
# 340 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableSafetyWatchdog(uint16 password);
# 349 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getCpuWatchdogPassword(void);
# 358 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getSafetyWatchdogPassword(void);
# 368 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceCpuWatchdog(uint16 password);
# 378 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceSafetyWatchdog(uint16 password);







static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU *)0xF0036000u).WDTS;

    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void)
{
    return (boolean)(*(Ifx_SCU *)0xF0036000u).WDTS.CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void)
{
    uint16 password;
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU *)0xF0036000u).WDTS;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}


}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &(*(Ifx_SCU *)0xF0036000u).WDTS;


    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}
}
# 45 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 2
# 54 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
typedef enum
{
    IfxPort_InputMode_undefined = -1,
    IfxPort_InputMode_noPullDevice = 0 << 3,
        IfxPort_InputMode_pullDown = 1U << 3,
        IfxPort_InputMode_pullUp = 2U << 3
} IfxPort_InputMode;





typedef enum
{
    IfxPort_Mode_inputNoPullDevice = 0,
    IfxPort_Mode_inputPullDown = 8U,
    IfxPort_Mode_inputPullUp = 0x10U,
    IfxPort_Mode_outputPushPullGeneral = 0x80U,
    IfxPort_Mode_outputPushPullAlt1 = 0x88U,
    IfxPort_Mode_outputPushPullAlt2 = 0x90U,
    IfxPort_Mode_outputPushPullAlt3 = 0x98U,
    IfxPort_Mode_outputPushPullAlt4 = 0xA0U,
    IfxPort_Mode_outputPushPullAlt5 = 0xA8U,
    IfxPort_Mode_outputPushPullAlt6 = 0xB0U,
    IfxPort_Mode_outputPushPullAlt7 = 0xB8U,
    IfxPort_Mode_outputOpenDrainGeneral = 0xC0U,
    IfxPort_Mode_outputOpenDrainAlt1 = 0xC8U,
    IfxPort_Mode_outputOpenDrainAlt2 = 0xD0U,
    IfxPort_Mode_outputOpenDrainAlt3 = 0xD8U,
    IfxPort_Mode_outputOpenDrainAlt4 = 0xE0U,
    IfxPort_Mode_outputOpenDrainAlt5 = 0xE8U,
    IfxPort_Mode_outputOpenDrainAlt6 = 0xF0U,
    IfxPort_Mode_outputOpenDrainAlt7 = 0xF8U
} IfxPort_Mode;



typedef enum
{
    IfxPort_OutputIdx_general = 0x10U << 3,
        IfxPort_OutputIdx_alt1 = 0x11U << 3,
        IfxPort_OutputIdx_alt2 = 0x12U << 3,
        IfxPort_OutputIdx_alt3 = 0x13U << 3,
        IfxPort_OutputIdx_alt4 = 0x14U << 3,
        IfxPort_OutputIdx_alt5 = 0x15U << 3,
        IfxPort_OutputIdx_alt6 = 0x16U << 3,
        IfxPort_OutputIdx_alt7 = 0x17U << 3
} IfxPort_OutputIdx;



typedef enum
{
    IfxPort_OutputMode_pushPull = 0x10U << 3,
        IfxPort_OutputMode_openDrain = 0x18U << 3
} IfxPort_OutputMode;





typedef enum
{
    IfxPort_PadDriver_cmosAutomotiveSpeed1 = 0,
    IfxPort_PadDriver_cmosAutomotiveSpeed2 = 1,
    IfxPort_PadDriver_cmosAutomotiveSpeed3 = 2,
    IfxPort_PadDriver_cmosAutomotiveSpeed4 = 3,
    IfxPort_PadDriver_ttlSpeed1 = 8,
    IfxPort_PadDriver_ttlSpeed2 = 9,
    IfxPort_PadDriver_ttlSpeed3 = 10,
    IfxPort_PadDriver_ttlSpeed4 = 11
} IfxPort_PadDriver;





typedef enum
{
    IfxPort_State_notChanged = (0 << 16) | (0 << 0),
    IfxPort_State_high = (0 << 16) | (1U << 0),
    IfxPort_State_low = (1U << 16) | (0 << 0),
    IfxPort_State_toggled = (1U << 16) | (1U << 0)
} IfxPort_State;
# 149 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
} IfxPort_Pin;



typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
    IfxPort_OutputIdx mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Pin_Config;
# 187 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex);
# 202 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex);
# 217 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex);
# 231 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode);
# 246 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 262 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action);
# 277 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex);
# 300 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_disableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 318 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_enableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 334 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinMode(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode);
# 349 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinPadDriver(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver padDriver);
# 373 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask);
# 392 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data);
# 402 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern sint32 IfxPort_getIndex(Ifx_P *port);
# 418 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeInput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_InputMode mode);
# 435 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeOutput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 451 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupPadDriver(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_PadDriver padDriver);
# 468 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_resetESR(Ifx_P *port, uint8 pinIndex);
# 479 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setESR(Ifx_P *port, uint8 pinIndex);





static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask)
{
    return (uint32)((port->IN.U) >> (pinIndex)) & mask;
}


static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex)
{
    return (((*(&port->IN.U) & (1U << (pinIndex))) != 0) != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data)
{
    port->OUT.U = (port->OUT.U & ~((uint32)(mask)) << pinIndex) | (data << pinIndex);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)mode);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)(index | mode));
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action)
{
    port->OMR.U = action << pinIndex;
}


static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_toggled);
}
# 34 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h" 2





typedef const struct
{
    Ifx_CAN* module;
    IfxMultican_NodeId nodeId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxMultican_Rxd_In;


typedef const struct
{
    Ifx_CAN* module;
    IfxMultican_NodeId nodeId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxMultican_Txd_Out;

extern IfxMultican_Rxd_In IfxMultican1_RXD0A_P10_5_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD0B_P13_1_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD0F_P02_6_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD0G_P00_5_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD0H_P33_6_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1A_P00_3_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1B_P13_3_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1C_P20_0_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1F_P02_7_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1G_P00_6_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD1H_P20_12_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2A_P00_3_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2C_P20_0_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2D_P11_10_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2E_P20_9_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2G_P00_8_IN;
extern IfxMultican_Rxd_In IfxMultican1_RXD2H_P20_13_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0A_P02_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0B_P20_7_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0D_P02_4_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0E_P33_7_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD0G_P34_2_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1A_P15_3_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1B_P14_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD1D_P00_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2A_P15_1_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2B_P02_3_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2D_P14_8_IN;
extern IfxMultican_Rxd_In IfxMultican_RXD2E_P10_2_IN;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P00_4_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P02_4_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P10_6_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P13_0_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD0_P33_7_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD1_P00_7_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD1_P02_5_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD1_P13_2_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD1_P20_11_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P00_2_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P00_9_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P20_10_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P20_14_OUT;
extern IfxMultican_Txd_Out IfxMultican1_TXD2_P20_3_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P02_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P02_5_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P20_8_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P33_8_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD0_P34_1_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P00_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P14_0_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD1_P15_2_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P02_2_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P10_3_OUT;
extern IfxMultican_Txd_Out IfxMultican_TXD2_P15_0_OUT;
# 119 "./0_Src/4_McHal/Tricore/_PinMap/IfxMultican_PinMap.h"
extern const IfxMultican_Rxd_In *IfxMultican_Rxd_In_pinTable[2][3][8];


extern const IfxMultican_Txd_Out *IfxMultican_Txd_Out_pinTable[2][3][5];
# 48 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_reg.h" 1
# 50 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCan_bf.h" 1
# 51 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h" 2
# 59 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
typedef sint32 IfxMultican_MsgObjId;
# 69 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
typedef enum
{
    IfxMultican_ClockSelect_noClock = 0,
    IfxMultican_ClockSelect_fclc = 1,
    IfxMultican_ClockSelect_fosc0 = 2,
    IfxMultican_ClockSelect_fErayPll = 4
} IfxMultican_ClockSelect;




typedef enum
{
    IfxMultican_DataLengthCode_0 = 0,
    IfxMultican_DataLengthCode_1,
    IfxMultican_DataLengthCode_2,
    IfxMultican_DataLengthCode_3,
    IfxMultican_DataLengthCode_4,
    IfxMultican_DataLengthCode_5,
    IfxMultican_DataLengthCode_6,
    IfxMultican_DataLengthCode_7,
    IfxMultican_DataLengthCode_8,
    IfxMultican_DataLengthCode_12 = 9,
    IfxMultican_DataLengthCode_16 = 10,
    IfxMultican_DataLengthCode_20 = 11,
    IfxMultican_DataLengthCode_24 = 12,
    IfxMultican_DataLengthCode_32 = 13,
    IfxMultican_DataLengthCode_48 = 14,
    IfxMultican_DataLengthCode_64 = 15
} IfxMultican_DataLengthCode;



typedef enum
{
    IfxMultican_Frame_receive,
    IfxMultican_Frame_transmit,
    IfxMultican_Frame_remoteRequest,
    IfxMultican_Frame_remoteAnswer
} IfxMultican_Frame;




typedef enum
{
    IfxMultican_FrameCounterMode_frameCountMode = 0,

    IfxMultican_FrameCounterMode_timeStampMode = 1,

    IfxMultican_FrameCounterMode_bitTimingMode = 2,

    IfxMultican_FrameCounterMode_errorCountMode = 3


} IfxMultican_FrameCounterMode;




typedef enum
{
    IfxMultican_MsgObjGroup_0 = 0,
    IfxMultican_MsgObjGroup_1,
    IfxMultican_MsgObjGroup_2,
    IfxMultican_MsgObjGroup_3,
    IfxMultican_MsgObjGroup_4,
    IfxMultican_MsgObjGroup_5,
    IfxMultican_MsgObjGroup_6,
    IfxMultican_MsgObjGroup_7
} IfxMultican_MsgObjGroup;



typedef enum
{
    IfxMultican_MsgObjMode_standard = 0,
    IfxMultican_MsgObjMode_receiveFifoBase = 1,
    IfxMultican_MsgObjMode_transmitFifoBase = 2,
    IfxMultican_MsgObjMode_transmitFifoSlave = 3,
    IfxMultican_MsgObjMode_gatewaySource = 4,
    IfxMultican_MsgObjMode_canFD64 = 5
} IfxMultican_MsgObjMode;




typedef enum
{
    IfxMultican_MsgObjStatusFlag_receivePending = (0u),
    IfxMultican_MsgObjStatusFlag_transmitPending = (1u),
    IfxMultican_MsgObjStatusFlag_receiveUpdating = (2u),
    IfxMultican_MsgObjStatusFlag_newData = (3u),
    IfxMultican_MsgObjStatusFlag_messageLost = (4u),
    IfxMultican_MsgObjStatusFlag_messageValid = (5u),
    IfxMultican_MsgObjStatusFlag_receiveTransmitSelected = (6u),
    IfxMultican_MsgObjStatusFlag_receiveEnable = (7u),
    IfxMultican_MsgObjStatusFlag_transmitRequest = (8u),
    IfxMultican_MsgObjStatusFlag_transmitEnable0 = (9u),
    IfxMultican_MsgObjStatusFlag_transmitEnable1 = (10u),
    IfxMultican_MsgObjStatusFlag_messageDirection = (11u)
} IfxMultican_MsgObjStatusFlag;



typedef enum
{
    IfxMultican_Priority_ListOrder = 1,
    IfxMultican_Priority_CAN_ID = 2
} IfxMultican_Priority;




typedef enum
{
    IfxMultican_SleepMode_enable = 0,
    IfxMultican_SleepMode_disable = 1
} IfxMultican_SleepMode;



typedef enum
{
    IfxMultican_Status_ok = 0x00000000,
    IfxMultican_Status_notInitialised = 0x00000001,
    IfxMultican_Status_wrongParam = 0x00000002,
    IfxMultican_Status_wrongPin = 0x00000004,
    IfxMultican_Status_busHeavy = 0x00000008,
    IfxMultican_Status_busOff = 0x00000010,
    IfxMultican_Status_notSentBusy = 0x00000020,
    IfxMultican_Status_receiveEmpty = 0x00000040,
    IfxMultican_Status_messageLost = 0x00000080,
    IfxMultican_Status_newData = 0x00000100,
    IfxMultican_Status_newDataButOneLost = IfxMultican_Status_messageLost | IfxMultican_Status_newData
} IfxMultican_Status;
# 214 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
typedef struct
{
    uint32 id;
    IfxMultican_DataLengthCode lengthCode;
    uint32 data[2];
    boolean fastBitRate;
} IfxMultican_Message;



typedef union
{
    Ifx_CAN_MO_STAT_Bits B;
    unsigned int U;
} IfxMultican_MsgObjStat;
# 241 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_clearMessagePendingSeletor(Ifx_CAN *mcan);






static inline __attribute__ ((always_inline)) void IfxMultican_clearPendingMessageNotification(Ifx_CAN *mcan, uint16 list);





static inline __attribute__ ((always_inline)) void IfxMultican_disableModule(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) void IfxMultican_disableSleepMode(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) void IfxMultican_enableModule(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) void IfxMultican_enableSleepMode(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerMode(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerStepValue(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) IfxMultican_ClockSelect IfxMultican_getInputClock(Ifx_CAN *mcan);





static inline __attribute__ ((always_inline)) boolean IfxMultican_isModuleEnabled(Ifx_CAN *mcan);






static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerMode(Ifx_CAN *mcan, uint16 mode);






static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerStepValue(Ifx_CAN *mcan, uint16 stepValue);






static inline __attribute__ ((always_inline)) void IfxMultican_setInputClock(Ifx_CAN *mcan, IfxMultican_ClockSelect clockSelect);






static inline __attribute__ ((always_inline)) void IfxMultican_setMessageIndexMask(Ifx_CAN *mcan, uint32 mask);






static inline __attribute__ ((always_inline)) void IfxMultican_setSleepMode(Ifx_CAN *can, IfxMultican_SleepMode mode);





static inline __attribute__ ((always_inline)) void IfxMultican_waitListReady(Ifx_CAN *mcan);
# 352 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_setFastBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth);
# 363 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_setNominalBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth);






extern void IfxMultican_deinit(Ifx_CAN *mcan);





extern void IfxMultican_resetModule(Ifx_CAN *can);
# 385 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_setListCommand(Ifx_CAN *mcan, uint32 cmd, uint32 arg2, uint32 arg1);
# 400 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Node_activate(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_deactivate(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_disableConfigurationChange(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_enableConfigurationChange(Ifx_CAN_N *hwNode);






static inline __attribute__ ((always_inline)) Ifx_CAN_N *IfxMultican_Node_getPointer(Ifx_CAN *mcan, IfxMultican_NodeId node);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetControlRegister(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetErrorCounters(Ifx_CAN_N *hwNode);





static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetInterruptPointers(Ifx_CAN_N *hwNode);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterrupt(Ifx_CAN_N *hwNode, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAnalyzerMode(Ifx_CAN_N *hwNode, boolean mode);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setErrorWarningLevel(Ifx_CAN_N *hwNode, uint8 level);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFastNode(Ifx_CAN_N *hwNode, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterrupt(Ifx_CAN_N *hwNode, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterMode(Ifx_CAN_N *hwNode, IfxMultican_FrameCounterMode mode);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterrupt(Ifx_CAN_N *hwNode, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLoopBackMode(Ifx_CAN_N *hwNode, boolean mode);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setReceiveErrorCounter(Ifx_CAN_N *hwNode, uint8 value);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTimerEventInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensation(Ifx_CAN_N *hwNode, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensationOffset(Ifx_CAN_N *hwNode, uint16 value);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterrupt(Ifx_CAN_N *hwNode, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransmitErrorCounter(Ifx_CAN_N *hwNode, uint8 value);
# 587 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_deinit(Ifx_CAN_N *hwNode);
# 596 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern boolean IfxMultican_Node_initRxPin(Ifx_CAN_N *hwNode, IfxMultican_Rxd_In *rxd, IfxPort_InputMode mode);
# 605 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern boolean IfxMultican_Node_initTxPin(Ifx_CAN_N *hwNode, IfxMultican_Txd_Out *txd, IfxPort_OutputMode mode);





extern IfxMultican_Status IfxMultican_Node_recoverBusOff(Ifx_CAN_N *hwNode);
# 622 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_Node_setBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth);
# 632 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_calcTimingFromBTR(float32 moduleFreq, uint32 btr, uint32 *baudrate, uint16 *samplePoint, uint16 *synchJumpWidth);
# 651 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Message_init(IfxMultican_Message *msg, uint32 id, uint32 dataLow, uint32 dataHigh, IfxMultican_DataLengthCode lengthCode);
# 660 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_Message_longFrameInit(IfxMultican_Message *msg, uint32 id, IfxMultican_DataLengthCode lengthCode, boolean fastBitRate);
# 675 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearDataRegisters(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearFifoGatewayPointers(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearRxPending(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearTxPending(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getBottomObjectPointer(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) IfxMultican_DataLengthCode IfxMultican_MsgObj_getDataLengthCode(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) uint32 IfxMultican_MsgObj_getMessageId(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getNextObjectPointer(Ifx_CAN_MO *hwObj);






static inline __attribute__ ((always_inline)) Ifx_CAN_MO *IfxMultican_MsgObj_getPointer(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId);






static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isExtendedFrame(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isRxPending(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isTransmitRequested(Ifx_CAN_MO *hwObj);





static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isTxPending(Ifx_CAN_MO *hwObj);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setAcceptanceMask(Ifx_CAN_MO *hwObj, uint32 mask, boolean extendedFrame);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBitRateSwitch(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBottomObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setCurrentObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataCopy(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCode(Ifx_CAN_MO *hwObj, IfxMultican_DataLengthCode code);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCodeCopy(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setExtendedDataLength(Ifx_CAN_MO *hwObj, boolean enabled);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setGatewayDataFrameSend(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierCopy(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierExtension(Ifx_CAN_MO *hwObj, boolean extension);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMatchingId(Ifx_CAN_MO *hwObj, boolean matchingId);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageId(Ifx_CAN_MO *hwObj, uint32 messageId, boolean extendedFrame);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageMode(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjMode mode);







static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessagePendingNumber(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjId messageNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setOverflowInterrupt(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setPriorityClass(Ifx_CAN_MO *hwObj, IfxMultican_Priority priority);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterrupt(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setRemoteMonitoring(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSelectObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleDataTransfer(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleTransmitTrial(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTopObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterrupt(Ifx_CAN_MO *hwObj, boolean enabled);






static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId);
# 945 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern boolean IfxMultican_MsgObj_cancelSend(Ifx_CAN_MO *hwObj);






extern void IfxMultican_MsgObj_clearStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag);







extern void IfxMultican_MsgObj_deinit(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId);






extern IfxMultican_MsgObjId IfxMultican_MsgObj_getPendingId(Ifx_CAN *mcan, IfxMultican_MsgObjGroup msgObjGroup);





extern IfxMultican_MsgObjStat IfxMultican_MsgObj_getStatus(Ifx_CAN_MO *hwObj);






extern boolean IfxMultican_MsgObj_getStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag);
# 992 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern IfxMultican_Status IfxMultican_MsgObj_readLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data);
# 1002 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern IfxMultican_Status IfxMultican_MsgObj_readMessage(Ifx_CAN_MO *hwObj, IfxMultican_Message *msg);
# 1012 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern IfxMultican_Status IfxMultican_MsgObj_sendLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data);







extern IfxMultican_Status IfxMultican_MsgObj_sendMessage(Ifx_CAN_MO *hwObj, const IfxMultican_Message *msg);
# 1029 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern void IfxMultican_MsgObj_setFilter(Ifx_CAN_MO *hwObj, boolean extend, uint32 id, uint32 accMask);






extern void IfxMultican_MsgObj_setStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag);
# 1052 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.h"
extern volatile Ifx_SRC_SRCR *IfxMultican_getSrcPointer(Ifx_CAN *mcan, IfxMultican_SrcId srcId);







static inline __attribute__ ((always_inline)) void IfxMultican_Message_init(IfxMultican_Message *msg, uint32 id, uint32 dataLow, uint32 dataHigh, IfxMultican_DataLengthCode lengthCode)
{
    msg->id = id;
    msg->data[0] = dataLow;
    msg->data[1] = dataHigh;
    msg->lengthCode = lengthCode;

    msg->fastBitRate = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Message_longFrameInit(IfxMultican_Message *msg, uint32 id, IfxMultican_DataLengthCode lengthCode, boolean fastBitRate)
{
    msg->id = id;
    msg->data[0] = 0;
    msg->data[1] = 0;
    msg->lengthCode = lengthCode;
    msg->fastBitRate = fastBitRate;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearDataRegisters(Ifx_CAN_MO *hwObj)
{
    hwObj->DATAL.U = 0;
    hwObj->DATAH.U = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearFifoGatewayPointers(Ifx_CAN_MO *hwObj)
{
    hwObj->FGPR.U = 0x0000000U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearRxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receivePending);
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_clearTxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_transmitPending);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getBottomObjectPointer(Ifx_CAN_MO *hwObj)
{
    return (IfxMultican_MsgObjId)(hwObj->FGPR.B.BOT);
}


static inline __attribute__ ((always_inline)) IfxMultican_DataLengthCode IfxMultican_MsgObj_getDataLengthCode(Ifx_CAN_MO *hwObj)
{
    return (IfxMultican_DataLengthCode)(hwObj->FCR.B.DLC);
}


static inline __attribute__ ((always_inline)) uint32 IfxMultican_MsgObj_getMessageId(Ifx_CAN_MO *hwObj)
{
    Ifx_CAN_MO_AR ar;
    ar.U = hwObj->AR.U;
    return ar.B.ID >> ((ar.B.IDE != 0) ? 0 : 18);
}


static inline __attribute__ ((always_inline)) IfxMultican_MsgObjId IfxMultican_MsgObj_getNextObjectPointer(Ifx_CAN_MO *hwObj)
{
    return (IfxMultican_MsgObjId)(hwObj->STAT.B.PNEXT);
}


static inline __attribute__ ((always_inline)) Ifx_CAN_MO *IfxMultican_MsgObj_getPointer(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId)
{
    return &(mcan->MO[msgObjId]);
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isExtendedFrame(Ifx_CAN_MO *hwObj)
{
    return hwObj->AR.B.IDE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isRxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObjStat msgStatus = IfxMultican_MsgObj_getStatus(hwObj);
    return msgStatus.B.RXPND ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isTransmitRequested(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObjStat msgStatus = IfxMultican_MsgObj_getStatus(hwObj);
    return msgStatus.B.TXRQ ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_MsgObj_isTxPending(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObjStat msgStatus = IfxMultican_MsgObj_getStatus(hwObj);
    return msgStatus.B.TXPND ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setAcceptanceMask(Ifx_CAN_MO *hwObj, uint32 mask, boolean extendedFrame)
{
    hwObj->AMR.B.AM = mask << ((extendedFrame != 0) ? 0 : 18);
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBitRateSwitch(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.BRS = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setBottomObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.BOT = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setCurrentObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.CUR = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataCopy(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.DATC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCode(Ifx_CAN_MO *hwObj, IfxMultican_DataLengthCode code)
{
    hwObj->FCR.B.DLC = code;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setDataLengthCodeCopy(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.DLCC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setExtendedDataLength(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.FDF = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setGatewayDataFrameSend(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.GDFS = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierCopy(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.IDC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setIdentifierExtension(Ifx_CAN_MO *hwObj, boolean extension)
{
    hwObj->AR.B.IDE = extension;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMatchingId(Ifx_CAN_MO *hwObj, boolean matchingId)
{
    hwObj->AMR.B.MIDE = matchingId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageId(Ifx_CAN_MO *hwObj, uint32 messageId, boolean extendedFrame)
{
    hwObj->AR.B.ID = messageId << ((extendedFrame != 0) ? 0 : 18);
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessageMode(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjMode mode)
{
    hwObj->FCR.B.MMC = mode;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setMessagePendingNumber(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjId messageNumber)
{
    hwObj->IPR.B.MPN = messageNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setOverflowInterrupt(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.OVIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setPriorityClass(Ifx_CAN_MO *hwObj, IfxMultican_Priority priority)
{
    hwObj->AR.B.PRI = priority;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterrupt(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.RXIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setReceiveInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId)
{
    hwObj->IPR.B.RXINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setRemoteMonitoring(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.RMM = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSelectObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.SEL = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleDataTransfer(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.SDT = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setSingleTransmitTrial(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.STT = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTopObjectPointer(Ifx_CAN_MO *hwObj, sint32 objNumber)
{
    hwObj->FGPR.B.TOP = objNumber;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterrupt(Ifx_CAN_MO *hwObj, boolean enabled)
{
    hwObj->FCR.B.TXIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_MsgObj_setTransmitInterruptNodePointer(Ifx_CAN_MO *hwObj, IfxMultican_SrcId srcId)
{
    hwObj->IPR.B.TXINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_activate(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.INIT = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_deactivate(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.INIT = 1;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_disableConfigurationChange(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.CCE = 0U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_enableConfigurationChange(Ifx_CAN_N *hwNode)
{
    hwNode->CR.B.CCE = 1U;
}


static inline __attribute__ ((always_inline)) Ifx_CAN_N *IfxMultican_Node_getPointer(Ifx_CAN *mcan, IfxMultican_NodeId node)
{
    return &(mcan->N[node]);
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetControlRegister(Ifx_CAN_N *hwNode)
{
    hwNode->CR.U = 0x00000041U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetErrorCounters(Ifx_CAN_N *hwNode)
{
    hwNode->ECNT.U = 0x00600000U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_resetInterruptPointers(Ifx_CAN_N *hwNode)
{
    hwNode->IPR.U = 0x00000000U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterrupt(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->CR.B.ALIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAlertInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.ALINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setAnalyzerMode(Ifx_CAN_N *hwNode, boolean mode)
{
    hwNode->CR.B.CALM = mode != 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setErrorWarningLevel(Ifx_CAN_N *hwNode, uint8 level)
{
    hwNode->ECNT.B.EWRNLVL = level;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFastNode(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->CR.B.INIT = 1;
    hwNode->CR.B.FDEN = enabled ? 1 : 0;
    hwNode->CR.B.INIT = 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterrupt(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->FCR.B.CFCIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.CFCINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setFrameCounterMode(Ifx_CAN_N *hwNode, IfxMultican_FrameCounterMode mode)
{
    hwNode->FCR.B.CFMOD = mode;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterrupt(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->CR.B.LECIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLastErrorCodeInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.LECINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setLoopBackMode(Ifx_CAN_N *hwNode, boolean mode)
{
    hwNode->PCR.B.LBM = mode != 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setReceiveErrorCounter(Ifx_CAN_N *hwNode, uint8 value)
{
    hwNode->ECNT.B.REC = value;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTimerEventInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.TEINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensation(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->TDCR.B.TDC = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransceiverDelayCompensationOffset(Ifx_CAN_N *hwNode, uint16 value)
{
    hwNode->TDCR.B.TDCO = value;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterrupt(Ifx_CAN_N *hwNode, boolean enabled)
{
    hwNode->CR.B.TRIE = enabled ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransferInterruptPointer(Ifx_CAN_N *hwNode, IfxMultican_SrcId srcId)
{
    hwNode->IPR.B.TRINP = srcId;
}


static inline __attribute__ ((always_inline)) void IfxMultican_Node_setTransmitErrorCounter(Ifx_CAN_N *hwNode, uint8 value)
{
    hwNode->ECNT.B.TEC = value;
}


static inline __attribute__ ((always_inline)) void IfxMultican_clearMessagePendingSeletor(Ifx_CAN *mcan)
{
    mcan->MCR.B.MPSEL = 0x0U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_clearPendingMessageNotification(Ifx_CAN *mcan, uint16 list)
{
    mcan->MSPND[list].U = 0x0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_disableModule(Ifx_CAN *mcan)
{
    mcan->CLC.B.DISR = 1U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_disableSleepMode(Ifx_CAN *mcan)
{
    mcan->CLC.B.EDIS = 1U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_enableModule(Ifx_CAN *mcan)
{
    mcan->CLC.B.DISR = 0U;
}


static inline __attribute__ ((always_inline)) void IfxMultican_enableSleepMode(Ifx_CAN *mcan)
{
    mcan->CLC.B.EDIS = 0U;
}


static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerMode(Ifx_CAN *mcan)
{
    return mcan->FDR.B.DM;
}


static inline __attribute__ ((always_inline)) uint16 IfxMultican_getFractionalDividerStepValue(Ifx_CAN *mcan)
{
    return mcan->FDR.B.STEP;
}


static inline __attribute__ ((always_inline)) IfxMultican_ClockSelect IfxMultican_getInputClock(Ifx_CAN *mcan)
{
    return (IfxMultican_ClockSelect)mcan->MCR.B.CLKSEL;
}


static inline __attribute__ ((always_inline)) boolean IfxMultican_isModuleEnabled(Ifx_CAN *mcan)
{
    return mcan->CLC.B.DISS == 0;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerMode(Ifx_CAN *mcan, uint16 mode)
{
    mcan->FDR.B.DM = mode;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setFractionalDividerStepValue(Ifx_CAN *mcan, uint16 stepValue)
{
    mcan->FDR.B.STEP = stepValue;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setInputClock(Ifx_CAN *mcan, IfxMultican_ClockSelect clockSelect)
{
    mcan->MCR.B.CLKSEL = clockSelect;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setMessageIndexMask(Ifx_CAN *mcan, uint32 mask)
{
    mcan->MSIMASK.U = mask;
}


static inline __attribute__ ((always_inline)) void IfxMultican_setSleepMode(Ifx_CAN *can, IfxMultican_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    can->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxMultican_waitListReady(Ifx_CAN *mcan)
{
    while (mcan->PANCTR.B.BUSY != 0)
    {}
}
# 30 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.c" 2
# 42 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.c"
static void IfxMultican_MsgObj_doReadLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data);






static void IfxMultican_MsgObj_doReadMessage(Ifx_CAN_MO *hwObj, IfxMultican_Message *msg);





boolean IfxMultican_MsgObj_cancelSend(Ifx_CAN_MO *hwObj)
{
    boolean result = 0;
    Ifx_CAN_MO_CTR ctr;
    Ifx_CAN_MO_STAT stat;

    stat.U = hwObj->STAT.U;

    if ((stat.B.TXRQ != 0) && (stat.B.NEWDAT != 0))
    {
        ctr.U = 0;
        ctr.B.RESRTSEL = 1;
        hwObj->CTR.U = ctr.U;
        result = 1;
    }

    return result;
}


void IfxMultican_MsgObj_clearStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag)
{
    Ifx_CAN_MO_CTR ctr;
    ctr.U = 0;
    ctr.U = 1U << flag;

    hwObj->CTR.U = ctr.U;
}


void IfxMultican_MsgObj_deinit(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(mcan, msgObjId);


    IfxMultican_setListCommand(mcan, 0x2, 0, msgObjId);

    hwObj->CTR.U = 0x0000FFFFUL;

    hwObj->FCR.U = 0x00000000UL;
    hwObj->FGPR.U = 0x00000000UL;
    hwObj->IPR.U = 0x00000000UL;
    hwObj->AMR.U = 0x3FFFFFFFUL;
    hwObj->DATAL.U = 0x00000000UL;
    hwObj->DATAH.U = 0x00000000UL;
    hwObj->AR.U = 0x00000000UL;
}


static void IfxMultican_MsgObj_doReadLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(mcan, msgObjId);

    IfxMultican_MsgObjId botMsgObjId = hwObj->FGPR.B.BOT;
    Ifx_CAN_MO *hwBotObj = IfxMultican_MsgObj_getPointer(mcan, botMsgObjId);

    IfxMultican_MsgObjId topMsgObjId = hwObj->FGPR.B.TOP;
    Ifx_CAN_MO *hwTopObj = IfxMultican_MsgObj_getPointer(mcan, topMsgObjId);


    IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_newData);


    IfxMultican_DataLengthCode lengthCode = IfxMultican_MsgObj_getDataLengthCode(hwObj);


    if (lengthCode > IfxMultican_DataLengthCode_0)
    {
        *data++ = hwObj->DATAL.U;
        *data++ = hwObj->DATAH.U;
    }


    if (lengthCode > IfxMultican_DataLengthCode_8)
    {
        *data++ = hwBotObj->EDATA0.U;
    }

    if (lengthCode > IfxMultican_DataLengthCode_12)
    {
        *data++ = hwBotObj->EDATA1.U;
    }

    if (lengthCode > IfxMultican_DataLengthCode_16)
    {
        *data++ = hwBotObj->EDATA2.U;
    }

    if (lengthCode > IfxMultican_DataLengthCode_20)
    {
        *data++ = hwBotObj->EDATA3.U;
    }

    if (lengthCode > IfxMultican_DataLengthCode_24)
    {
        *data++ = hwBotObj->EDATA4.U;
        *data++ = hwBotObj->EDATA5.U;
    }

    if (lengthCode > IfxMultican_DataLengthCode_32)
    {
        *data++ = hwBotObj->EDATA6.U;

        *data++ = hwTopObj->EDATA0.U;
        *data++ = hwTopObj->EDATA1.U;
        *data++ = hwTopObj->EDATA2.U;
    }

    if (lengthCode > IfxMultican_DataLengthCode_48)
    {
        *data++ = hwTopObj->EDATA3.U;
        *data++ = hwTopObj->EDATA4.U;
        *data++ = hwTopObj->EDATA5.U;
        *data = hwTopObj->EDATA6.U;
    }

    msg->fastBitRate = hwObj->FCR.B.BRS;

    msg->lengthCode = lengthCode;


    msg->id = IfxMultican_MsgObj_getMessageId(hwObj);
}


static void IfxMultican_MsgObj_doReadMessage(Ifx_CAN_MO *hwObj, IfxMultican_Message *msg)
{

    IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_newData);


    msg->data[0] = hwObj->DATAL.U;
    msg->data[1] = hwObj->DATAH.U;


    msg->lengthCode = IfxMultican_MsgObj_getDataLengthCode(hwObj);


    msg->id = IfxMultican_MsgObj_getMessageId(hwObj);
}


IfxMultican_MsgObjId IfxMultican_MsgObj_getPendingId(Ifx_CAN *mcan, IfxMultican_MsgObjGroup msgObjGroup)
{
    uint32 index = mcan->MSID[msgObjGroup].U;
    IfxMultican_MsgObjId msgObjId = -1;

    if (index != 0x20U)
    {
        mcan->MSPND[msgObjGroup].U = ~(1UL << index);
        msgObjId = index + (msgObjGroup << 5);
    }

    return msgObjId;
}


IfxMultican_MsgObjStat IfxMultican_MsgObj_getStatus(Ifx_CAN_MO *hwObj)
{
    IfxMultican_MsgObjStat status;

    status.U = hwObj->STAT.U;

    return status;
}


boolean IfxMultican_MsgObj_getStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag)
{
    uint32 shift = (1U << flag);

    return (hwObj->STAT.U & shift) ? 1 : 0;
}


IfxMultican_Status IfxMultican_MsgObj_readLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(mcan, msgObjId);
    IfxMultican_Status status = IfxMultican_Status_ok;

    boolean longFrame = (hwObj->FCR.B.FDF != 0) ? 1 : 0;

    if (longFrame)
    {

        if (hwObj->STAT.B.NEWDAT != 0)
        {
            Ifx_CAN_MO_STAT stat;
            IfxMultican_MsgObj_doReadLongFrame(mcan, msgObjId, msg, data);
            stat = hwObj->STAT;

            if (stat.B.RXUPD != 0)
            {
                status = IfxMultican_Status_messageLost;
            }
            else if (stat.B.NEWDAT != 0)
            {
                Ifx_CAN_MO_STAT stat2;
                status = IfxMultican_Status_messageLost;

                IfxMultican_MsgObj_doReadLongFrame(mcan, msgObjId, msg, data);

                stat2 = hwObj->STAT;

                if ((stat2.B.NEWDAT == 0) && (stat2.B.RXUPD == 0))
                {
                    status |= IfxMultican_Status_newData;
                }
                else
                {
                }
            }
            else
            {
                status = IfxMultican_Status_newData;
            }

            if (stat.B.MSGLST != 0)
            {
                IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageLost);
                status |= IfxMultican_Status_messageLost;
            }
        }
        else
        {
            status = IfxMultican_Status_receiveEmpty;
        }
    }
    else
    {

    }

    return status;
}


IfxMultican_Status IfxMultican_MsgObj_readMessage(Ifx_CAN_MO *hwObj, IfxMultican_Message *msg)
{
    IfxMultican_Status status = IfxMultican_Status_ok;


    if (hwObj->STAT.B.NEWDAT != 0)
    {
        Ifx_CAN_MO_STAT stat;
        IfxMultican_MsgObj_doReadMessage(hwObj, msg);
        stat = hwObj->STAT;

        if (stat.B.RXUPD != 0)
        {
            status = IfxMultican_Status_messageLost;
        }
        else if (stat.B.NEWDAT != 0)
        {
            Ifx_CAN_MO_STAT stat2;
            status = IfxMultican_Status_messageLost;

            IfxMultican_MsgObj_doReadMessage(hwObj, msg);

            stat2 = hwObj->STAT;

            if ((stat2.B.NEWDAT == 0) && (stat2.B.RXUPD == 0))
            {
                status |= IfxMultican_Status_newData;
            }
            else
            {
            }
        }
        else
        {
            status = IfxMultican_Status_newData;
        }

        if (stat.B.MSGLST != 0)
        {
            IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageLost);
            status |= IfxMultican_Status_messageLost;
        }
    }
    else
    {
        status = IfxMultican_Status_receiveEmpty;
    }

    return status;
}


IfxMultican_Status IfxMultican_MsgObj_sendLongFrame(Ifx_CAN *mcan, IfxMultican_MsgObjId msgObjId, IfxMultican_Message *msg, uint32 *data)
{
    Ifx_CAN_MO *hwObj = IfxMultican_MsgObj_getPointer(mcan, msgObjId);
    IfxMultican_Status status = IfxMultican_Status_ok;


    IfxMultican_MsgObjId botMsgObjId = hwObj->FGPR.B.BOT;
    Ifx_CAN_MO *hwBotObj = IfxMultican_MsgObj_getPointer(mcan, botMsgObjId);

    IfxMultican_MsgObjId topMsgObjId = hwObj->FGPR.B.TOP;
    Ifx_CAN_MO *hwTopObj = IfxMultican_MsgObj_getPointer(mcan, topMsgObjId);

    boolean longFrame = (hwObj->FCR.B.FDF != 0) ? 1 : 0;




    if (longFrame)
    {
        if (hwObj->STAT.B.TXRQ)
        {
            status = IfxMultican_Status_notSentBusy;
        }
        else
        {

            IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageValid);

            if (msg->lengthCode > IfxMultican_DataLengthCode_0)
            {
                hwObj->DATAL.U = *data++;
                hwObj->DATAH.U = *data++;
            }


            if (msg->lengthCode > IfxMultican_DataLengthCode_8)
            {
                hwBotObj->EDATA0.U = *data++;
            }

            if (msg->lengthCode > IfxMultican_DataLengthCode_12)
            {
                hwBotObj->EDATA1.U = *data++;
            }

            if (msg->lengthCode > IfxMultican_DataLengthCode_16)
            {
                hwBotObj->EDATA2.U = *data++;
            }

            if (msg->lengthCode > IfxMultican_DataLengthCode_20)
            {
                hwBotObj->EDATA3.U = *data++;
            }

            if (msg->lengthCode > IfxMultican_DataLengthCode_24)
            {
                hwBotObj->EDATA4.U = *data++;
                hwBotObj->EDATA5.U = *data++;
            }

            if (msg->lengthCode > IfxMultican_DataLengthCode_32)
            {
                hwBotObj->EDATA6.U = *data++;

                hwTopObj->EDATA0.U = *data++;
                hwTopObj->EDATA1.U = *data++;
                hwTopObj->EDATA2.U = *data++;
            }

            if (msg->lengthCode > IfxMultican_DataLengthCode_48)
            {
                hwTopObj->EDATA3.U = *data++;
                hwTopObj->EDATA4.U = *data++;
                hwTopObj->EDATA5.U = *data++;
                hwTopObj->EDATA6.U = *data;
            }


            {

                boolean extendedFrame = IfxMultican_MsgObj_isExtendedFrame(hwObj);
                IfxMultican_MsgObj_setMessageId(hwObj, msg->id, extendedFrame);


                IfxMultican_MsgObj_setDataLengthCode(hwObj, msg->lengthCode);


                IfxMultican_MsgObj_setBitRateSwitch(hwObj, msg->fastBitRate);
            }


            {

                IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_newData);


                IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageValid);


                IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_receiveTransmitSelected);


                IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_transmitRequest);
            }
        }
    }



    else
    {

        status = IfxMultican_Status_notInitialised;
    }

    return status;
}


IfxMultican_Status IfxMultican_MsgObj_sendMessage(Ifx_CAN_MO *hwObj, const IfxMultican_Message *msg)
{
    IfxMultican_Status status = IfxMultican_Status_ok;

    if (hwObj->STAT.B.TXRQ)
    {
        status = IfxMultican_Status_notSentBusy;
    }
    else
    {

        IfxMultican_MsgObj_clearStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageValid);


        hwObj->DATAL.U = msg->data[0];
        hwObj->DATAH.U = msg->data[1];


        {

            boolean extendedFrame = IfxMultican_MsgObj_isExtendedFrame(hwObj);
            IfxMultican_MsgObj_setMessageId(hwObj, msg->id, extendedFrame);




            IfxMultican_MsgObj_setDataLengthCode(hwObj, msg->lengthCode);
        }




        {

            IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_newData);


            IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_messageValid);


            IfxMultican_MsgObj_setStatusFlag(hwObj, IfxMultican_MsgObjStatusFlag_transmitRequest);
        }
    }

    return status;
}


void IfxMultican_MsgObj_setFilter(Ifx_CAN_MO *hwObj, boolean extend, uint32 id, uint32 accMask)
{
    Ifx_CAN_MO_CTR ctr;

    ctr.U = 0;
    ctr.B.RESMSGVAL = 1;
    hwObj->CTR.U = ctr.U;

    hwObj->AMR.B.AM = accMask << ((extend != 0) ? 0 : 18);
    hwObj->AR.B.IDE = (id << ((extend != 0) ? 0 : 18)) | (extend << 29);

    ctr.U = 0;
    ctr.B.SETMSGVAL = 1;
    hwObj->CTR.U = ctr.U;
}


void IfxMultican_MsgObj_setStatusFlag(Ifx_CAN_MO *hwObj, IfxMultican_MsgObjStatusFlag flag)
{
    Ifx_CAN_MO_CTR ctr;
    ctr.U = 0;

    ctr.U = 1U << (flag + 16);

    hwObj->CTR.U = ctr.U;
}


void IfxMultican_Node_deinit(Ifx_CAN_N *hwNode)
{
    hwNode->CR.U = 0x00000001;
    hwNode->SR.U = 0x00000000;
    hwNode->IPR.U = 0x00000000;
    hwNode->PCR.U = 0x00000000;
    hwNode->BTEVR.U = 0x00000000;
    hwNode->ECNT.U = 0x00600000;
    hwNode->FCR.U = 0x00000000;
}


boolean IfxMultican_Node_initRxPin(Ifx_CAN_N *hwNode, IfxMultican_Rxd_In *rxd, IfxPort_InputMode mode)
{
    IfxPort_setPinModeInput(rxd->pin.port, rxd->pin.pinIndex, mode);
    hwNode->PCR.B.RXSEL = rxd->select;

    return 1;
}


boolean IfxMultican_Node_initTxPin(Ifx_CAN_N *hwNode, IfxMultican_Txd_Out *txd, IfxPort_OutputMode mode)
{
    IfxPort_setPinModeOutput(txd->pin.port, txd->pin.pinIndex, mode, txd->select);
    IfxPort_setPinPadDriver(txd->pin.port, txd->pin.pinIndex, IfxPort_PadDriver_cmosAutomotiveSpeed2);

    return 1;
}


IfxMultican_Status IfxMultican_Node_recoverBusOff(Ifx_CAN_N *hwNode)
{
    IfxMultican_Status status = IfxMultican_Status_busOff;

    boolean busOffState = hwNode->SR.B.BOFF;
    boolean errorWarningStatus = hwNode->SR.B.EWRN;


    if ((busOffState != 0) && (hwNode->ECNT.B.TEC > 254))
    {
        status = IfxMultican_Status_busOff;


        hwNode->ECNT.B.TEC = 0x01;
        hwNode->ECNT.B.REC = 0x01;


        hwNode->SR.B.EWRN = 0;


        hwNode->SR.B.ALERT = 0;


        IfxMultican_Node_deactivate(hwNode);
    }


    else if ((busOffState != 0) && (errorWarningStatus != 0))
    {
        status = IfxMultican_Status_notInitialised;
    }


    else if ((busOffState == 0) && (errorWarningStatus == 0))
    {

        IfxMultican_Node_activate(hwNode);

        status = IfxMultican_Status_ok;
    }

    return status;
}


void IfxMultican_Node_setBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth)
{
    sint32 tempBRP, tempSJW, tempTSEG1 = 12;
    sint32 bestBRP = 0, bestSJW = 0, bestTBAUD = 0, bestTSEG1 = 1, bestTSEG2;
    sint32 bestError = 10000;
# 638 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.c"
    bestError = 10000;

    for (tempBRP = 1; tempBRP <= (0x3F + 1); tempBRP++)
    {
        float32 Fquanta = moduleFreq / tempBRP;
        sint32 tempTBAUD = Fquanta / baudrate;
        float32 tempBaudrate = Fquanta / tempTBAUD;
        float32 error = ( ((tempBaudrate - baudrate) < 0.0) ? -(tempBaudrate - baudrate) : (tempBaudrate - baudrate) );

        if ((tempTBAUD <= 20) && (bestError > error))
        {
            bestBRP = tempBRP;
            bestTBAUD = tempTBAUD;
            bestError = error;

            if (error < 0.1)
            {
                break;
            }
        }
    }


    bestError = 10000;

    for (tempTSEG1 = 16; tempTSEG1 >= 3; tempTSEG1--)
    {
        sint32 tempSamplePoint = ((tempTSEG1 + 1) * 10000) / bestTBAUD;
        sint32 error = __builtin_abs(tempSamplePoint - samplePoint);

        if (bestError > error)
        {
            bestTSEG1 = tempTSEG1;
            bestError = error;
        }

        if (tempSamplePoint < samplePoint)
        {
            break;
        }
    }

    bestTSEG2 = bestTBAUD - bestTSEG1 - 1;


    bestError = 10000;

    for (tempSJW = 1; tempSJW <= 4; tempSJW++)
    {
        sint32 tempSynchJumpWidth = (tempSJW * 10000) / bestTBAUD;
        sint32 error = __builtin_abs(tempSynchJumpWidth - synchJumpWidth);

        if (bestError > error)
        {
            bestSJW = tempSJW;
            bestError = error;
        }
    }

    {
        Ifx_CAN_N_BTR nbtr;
        nbtr.U = 0;
        nbtr.B.BRP = bestBRP - 1;
        nbtr.B.SJW = bestSJW - 1;
        nbtr.B.TSEG1 = bestTSEG1 - 1;
        nbtr.B.TSEG2 = bestTSEG2 - 1;
        nbtr.B.DIV8 = 0;


        hwNode->BTR.U = nbtr.U;
    }
}


void IfxMultican_Node_setFastBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth)
{
    sint32 tempFBRP, tempFSJW, tempFTSEG1 = 12;
    sint32 bestFBRP = 0, bestFSJW = 0, bestFTBAUD = 0, bestFTSEG1 = 1, bestFTSEG2;
    sint32 bestError = 10000;
# 735 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.c"
    bestError = 10000;

    for (tempFBRP = 1; tempFBRP <= (0x3F + 1); tempFBRP++)
    {
        float32 Fquanta = moduleFreq / tempFBRP;
        sint32 tempTBAUD = Fquanta / baudrate;
        float32 tempBaudrate = Fquanta / tempTBAUD;
        float32 error = ( ((tempBaudrate - baudrate) < 0.0) ? -(tempBaudrate - baudrate) : (tempBaudrate - baudrate) );

        if ((tempTBAUD <= 20) && (bestError > error))
        {
            bestFBRP = tempFBRP;
            bestFTBAUD = tempTBAUD;
            bestError = error;

            if (error < 0.1)
            {
                break;
            }
        }
    }


    bestError = 10000;

    for (tempFTSEG1 = 16; tempFTSEG1 >= 3; tempFTSEG1--)
    {
        sint32 tempSamplePoint = ((tempFTSEG1 + 1) * 10000) / bestFTBAUD;
        sint32 error = __builtin_abs(tempSamplePoint - samplePoint);

        if (bestError > error)
        {
            bestFTSEG1 = tempFTSEG1;
            bestError = error;
        }

        if (tempSamplePoint < samplePoint)
        {
            break;
        }
    }

    bestFTSEG2 = bestFTBAUD - bestFTSEG1 - 1;


    bestError = 10000;

    for (tempFSJW = 1; tempFSJW <= 4; tempFSJW++)
    {
        sint32 tempSynchJumpWidth = (tempFSJW * 10000) / bestFTBAUD;
        sint32 error = __builtin_abs(tempSynchJumpWidth - synchJumpWidth);

        if (bestError > error)
        {
            bestFSJW = tempFSJW;
            bestError = error;
        }
    }

    {
        Ifx_CAN_N_FBTR nfbtr;
        nfbtr.U = 0;
        nfbtr.B.FBRP = bestFBRP - 1;
        nfbtr.B.FSJW = bestFSJW - 1;
        nfbtr.B.FTSEG1 = bestFTSEG1 - 1;
        nfbtr.B.FTSEG2 = bestFTSEG2 - 1;

        hwNode->FBTR.U = nfbtr.U;
    }
}


void IfxMultican_Node_setNominalBitTiming(Ifx_CAN_N *hwNode, float32 moduleFreq, uint32 baudrate, uint16 samplePoint, uint16 synchJumpWidth)
{
    sint32 tempBRP, tempSJW, tempTSEG1 = 12;
    sint32 bestBRP = 0, bestSJW = 0, bestTBAUD = 0, bestTSEG1 = 1, bestTSEG2;
    sint32 bestError = 10000;
# 830 "0_Src/4_McHal/Tricore/Multican/Std/IfxMultican.c"
    bestError = 10000;

    for (tempBRP = 1; tempBRP <= (0x3F + 1); tempBRP++)
    {
        float32 Fquanta = moduleFreq / tempBRP;
        sint32 tempTBAUD = Fquanta / baudrate;
        float32 tempBaudrate = Fquanta / tempTBAUD;
        float32 error = ( ((tempBaudrate - baudrate) < 0.0) ? -(tempBaudrate - baudrate) : (tempBaudrate - baudrate) );

        if ((tempTBAUD <= 20) && (bestError > error))
        {
            bestBRP = tempBRP;
            bestTBAUD = tempTBAUD;
            bestError = error;

            if (error < 0.1)
            {
                break;
            }
        }
    }


    bestError = 10000;

    for (tempTSEG1 = 64; tempTSEG1 >= 3; tempTSEG1--)
    {
        sint32 tempSamplePoint = ((tempTSEG1 + 1) * 10000) / bestTBAUD;
        sint32 error = __builtin_abs(tempSamplePoint - samplePoint);

        if (bestError > error)
        {
            bestTSEG1 = tempTSEG1;
            bestError = error;
        }

        if (tempSamplePoint < samplePoint)
        {
            break;
        }
    }

    bestTSEG2 = bestTBAUD - bestTSEG1 - 1;


    bestError = 10000;

    for (tempSJW = 1; tempSJW <= 16; tempSJW++)
    {
        sint32 tempSynchJumpWidth = (tempSJW * 10000) / bestTBAUD;
        sint32 error = __builtin_abs(tempSynchJumpWidth - synchJumpWidth);

        if (bestError > error)
        {
            bestSJW = tempSJW;
            bestError = error;
        }
    }

    {
        Ifx_CAN_N_BTEVR nbtevr;
        nbtevr.U = 0;
        nbtevr.B.BRP = bestBRP - 1;
        nbtevr.B.SJW = bestSJW - 1;
        nbtevr.B.TSEG1 = bestTSEG1 - 1;
        nbtevr.B.TSEG2 = bestTSEG2 - 1;
        nbtevr.B.DIV8 = 0;


        hwNode->BTEVR.U = nbtevr.U;
    }
}


void IfxMultican_calcTimingFromBTR(float32 moduleFreq, uint32 btr, uint32 *baudrate, uint16 *samplePoint, uint16 *synchJumpWidth)
{
    Ifx_CAN_N_BTR nbtr = {.U = btr};
    uint32 tempBRP = 1U + nbtr.B.BRP;
    uint32 tempSJW = 1U + nbtr.B.SJW;
    uint32 tempTSEG1 = 1U + nbtr.B.TSEG1;
    uint32 tempTSEG2 = 1U + nbtr.B.TSEG2;
    uint32 tempDIV8 = (nbtr.B.DIV8 != 0) ? 8U : 1U;

    uint32 tempTSEG = 1 + tempTSEG1 + tempTSEG2;

    *baudrate = (uint32)(moduleFreq / (float32)(tempDIV8 * tempBRP * tempTSEG));
    *samplePoint = (uint16)(((float32)tempTSEG1) * 10000 / ((float32)(tempTSEG)));
    *synchJumpWidth = (uint16)(((float32)tempSJW) * 10000 / ((float32)(tempTSEG)));
}


void IfxMultican_deinit(Ifx_CAN *mcan)
{

    uint16 i;


    for (i = 0; i < (128); i++)
    {
        IfxMultican_MsgObj_deinit(mcan, i);
    }

    for (i = 0; i < (3); i++)
    {
        Ifx_CAN_N *hwNode = IfxMultican_Node_getPointer(mcan, IfxMultican_NodeId_0 + i);

        IfxMultican_Node_deinit(hwNode);
    }

    for (i = 0; i < (16); i++)
    {
        (*(Ifx_SRC *)0xF0038000u).CAN.CAN[0].INT[i].U = 0x00000000;
    }

    for (i = 0; i < 8; i++)
    {
        mcan->MSPND[i].U = 0x00000000;
    }

    mcan->MSIMASK.U = 0x00000000;
    mcan->MCR.U = 0x00000000;
    {
        uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
        IfxScuWdt_clearCpuEndinit(passwd);
        mcan->FDR.U = 0x00000000;
        IfxScuWdt_setCpuEndinit(passwd);
        IfxScuWdt_clearCpuEndinit(passwd);
        mcan->CLC.U = 0x00000001;
        IfxScuWdt_setCpuEndinit(passwd);
    }
}


volatile Ifx_SRC_SRCR *IfxMultican_getSrcPointer(Ifx_CAN *mcan, IfxMultican_SrcId srcId)
{
    return &((*(Ifx_SRC *)0xF0038000u).CAN.CAN[0].INT[srcId]);
}


void IfxMultican_resetModule(Ifx_CAN *can)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(passwd);
    can->KRST0.B.RST = 1;
    can->KRST1.B.RST = 1;
    IfxScuWdt_setCpuEndinit(passwd);

    while (0 == can->KRST0.B.RSTSTAT)

    {}

    IfxScuWdt_clearCpuEndinit(passwd);
    can->KRSTCLR.B.CLR = 1;
    IfxScuWdt_setCpuEndinit(passwd);
}


void IfxMultican_setListCommand(Ifx_CAN *mcan, uint32 cmd, uint32 arg2, uint32 arg1)
{
    Ifx_CAN_PANCTR panctr;

    panctr.B.PANAR1 = arg1;
    panctr.B.PANAR2 = arg2;
    panctr.B.PANCMD = cmd;


    mcan->PANCTR.U = panctr.U;

    IfxMultican_waitListReady(mcan);
}
