# 1 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c"
# 1 "D:\\GitRepo\\InfineonRacer\\2_src\\InfineonRacer_TC23xA//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c"
# 29 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c"
# 1 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h" 1
# 343 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
# 1 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h" 1
# 53 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxVadc_cfg.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Impl/IfxVadc_cfg.h"
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
# 40 "./0_Src/4_McHal/Tricore/_Impl/IfxVadc_cfg.h" 2
# 93 "./0_Src/4_McHal/Tricore/_Impl/IfxVadc_cfg.h"
typedef enum
{
    IfxVadc_GroupId_0,
    IfxVadc_GroupId_1,
    IfxVadc_GroupId_global0,
    IfxVadc_GroupId_global1
} IfxVadc_GroupId;





extern const uint32 IfxVadc_cfg_srcAddresses[((2) * 4) + ((1) * 4)];
# 54 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_regdef.h" 1
# 49 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_regdef.h"
typedef struct _Ifx_VADC_ACCEN0_Bits
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
} Ifx_VADC_ACCEN0_Bits;


typedef struct _Ifx_VADC_ACCPROT0_Bits
{
    unsigned int APC0 : 1;
    unsigned int APC1 : 1;
    unsigned int APC2 : 1;
    unsigned int APC3 : 1;
    unsigned int reserved_4 : 11;
    unsigned int APEM : 1;
    unsigned int API0 : 1;
    unsigned int API1 : 1;
    unsigned int API2 : 1;
    unsigned int API3 : 1;
    unsigned int reserved_20 : 11;
    unsigned int APGC : 1;
} Ifx_VADC_ACCPROT0_Bits;


typedef struct _Ifx_VADC_ACCPROT1_Bits
{
    unsigned int APS0 : 1;
    unsigned int APS1 : 1;
    unsigned int APS2 : 1;
    unsigned int APS3 : 1;
    unsigned int reserved_4 : 11;
    unsigned int APTF : 1;
    unsigned int APR0 : 1;
    unsigned int APR1 : 1;
    unsigned int APR2 : 1;
    unsigned int APR3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_VADC_ACCPROT1_Bits;


typedef struct _Ifx_VADC_BRSCTRL_Bits
{
    unsigned int SRCRESREG : 4;
    unsigned int reserved_4 : 4;
    unsigned int XTSEL : 4;
    unsigned int XTLVL : 1;
    unsigned int XTMODE : 2;
    unsigned int XTWC : 1;
    unsigned int GTSEL : 4;
    unsigned int GTLVL : 1;
    unsigned int reserved_21 : 2;
    unsigned int GTWC : 1;
    unsigned int reserved_24 : 8;
} Ifx_VADC_BRSCTRL_Bits;


typedef struct _Ifx_VADC_BRSMR_Bits
{
    unsigned int ENGT : 2;
    unsigned int ENTR : 1;
    unsigned int ENSI : 1;
    unsigned int SCAN : 1;
    unsigned int LDM : 1;
    unsigned int reserved_6 : 1;
    unsigned int REQGT : 1;
    unsigned int CLRPND : 1;
    unsigned int LDEV : 1;
    unsigned int reserved_10 : 6;
    unsigned int RPTDIS : 1;
    unsigned int reserved_17 : 15;
} Ifx_VADC_BRSMR_Bits;


typedef struct _Ifx_VADC_BRSPND_Bits
{
    unsigned int CHPNDGy : 32;
} Ifx_VADC_BRSPND_Bits;


typedef struct _Ifx_VADC_BRSSEL_Bits
{
    unsigned int CHSELGy : 32;
} Ifx_VADC_BRSSEL_Bits;


typedef struct _Ifx_VADC_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_VADC_CLC_Bits;


typedef struct _Ifx_VADC_EMUXSEL_Bits
{
    unsigned int EMUXGRP0 : 4;
    unsigned int EMUXGRP1 : 4;
    unsigned int reserved_8 : 24;
} Ifx_VADC_EMUXSEL_Bits;


typedef struct _Ifx_VADC_G_ALIAS_Bits
{
    unsigned int ALIAS0 : 5;
    unsigned int reserved_5 : 3;
    unsigned int ALIAS1 : 5;
    unsigned int reserved_13 : 19;
} Ifx_VADC_G_ALIAS_Bits;


typedef struct _Ifx_VADC_G_ARBCFG_Bits
{
    unsigned int ANONC : 2;
    unsigned int reserved_2 : 2;
    unsigned int ARBRND : 2;
    unsigned int reserved_6 : 1;
    unsigned int ARBM : 1;
    unsigned int reserved_8 : 8;
    unsigned int ANONS : 2;
    unsigned int CSRC : 2;
    unsigned int CHNR : 5;
    unsigned int SYNRUN : 1;
    unsigned int reserved_26 : 2;
    unsigned int CAL : 1;
    unsigned int CALS : 1;
    unsigned int BUSY : 1;
    unsigned int SAMPLE : 1;
} Ifx_VADC_G_ARBCFG_Bits;


typedef struct _Ifx_VADC_G_ARBPR_Bits
{
    unsigned int PRIO0 : 2;
    unsigned int reserved_2 : 1;
    unsigned int CSM0 : 1;
    unsigned int PRIO1 : 2;
    unsigned int reserved_6 : 1;
    unsigned int CSM1 : 1;
    unsigned int PRIO2 : 2;
    unsigned int reserved_10 : 1;
    unsigned int CSM2 : 1;
    unsigned int PRIO3 : 2;
    unsigned int reserved_14 : 1;
    unsigned int CSM3 : 1;
    unsigned int reserved_16 : 8;
    unsigned int ASEN0 : 1;
    unsigned int ASEN1 : 1;
    unsigned int ASEN2 : 1;
    unsigned int ASEN3 : 1;
    unsigned int reserved_28 : 4;
} Ifx_VADC_G_ARBPR_Bits;


typedef struct _Ifx_VADC_G_ASCTRL_Bits
{
    unsigned int SRCRESREG : 4;
    unsigned int reserved_4 : 4;
    unsigned int XTSEL : 4;
    unsigned int XTLVL : 1;
    unsigned int XTMODE : 2;
    unsigned int XTWC : 1;
    unsigned int GTSEL : 4;
    unsigned int GTLVL : 1;
    unsigned int reserved_21 : 2;
    unsigned int GTWC : 1;
    unsigned int reserved_24 : 4;
    unsigned int TMEN : 1;
    unsigned int reserved_29 : 2;
    unsigned int TMWC : 1;
} Ifx_VADC_G_ASCTRL_Bits;


typedef struct _Ifx_VADC_G_ASMR_Bits
{
    unsigned int ENGT : 2;
    unsigned int ENTR : 1;
    unsigned int ENSI : 1;
    unsigned int SCAN : 1;
    unsigned int LDM : 1;
    unsigned int reserved_6 : 1;
    unsigned int REQGT : 1;
    unsigned int CLRPND : 1;
    unsigned int LDEV : 1;
    unsigned int reserved_10 : 6;
    unsigned int RPTDIS : 1;
    unsigned int reserved_17 : 15;
} Ifx_VADC_G_ASMR_Bits;


typedef struct _Ifx_VADC_G_ASPND_Bits
{
    unsigned int CHPND : 32;
} Ifx_VADC_G_ASPND_Bits;


typedef struct _Ifx_VADC_G_ASSEL_Bits
{
    unsigned int CHSEL : 32;
} Ifx_VADC_G_ASSEL_Bits;


typedef struct _Ifx_VADC_G_BFL_Bits
{
    unsigned int BFL0 : 1;
    unsigned int BFL1 : 1;
    unsigned int BFL2 : 1;
    unsigned int BFL3 : 1;
    unsigned int reserved_4 : 4;
    unsigned int BFA0 : 1;
    unsigned int BFA1 : 1;
    unsigned int BFA2 : 1;
    unsigned int BFA3 : 1;
    unsigned int reserved_12 : 4;
    unsigned int BFI0 : 1;
    unsigned int BFI1 : 1;
    unsigned int BFI2 : 1;
    unsigned int BFI3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_VADC_G_BFL_Bits;


typedef struct _Ifx_VADC_G_BFLC_Bits
{
    unsigned int BFM0 : 4;
    unsigned int BFM1 : 4;
    unsigned int BFM2 : 4;
    unsigned int BFM3 : 4;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_BFLC_Bits;


typedef struct _Ifx_VADC_G_BFLNP_Bits
{
    unsigned int BFL0NP : 4;
    unsigned int BFL1NP : 4;
    unsigned int BFL2NP : 4;
    unsigned int BFL3NP : 4;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_BFLNP_Bits;


typedef struct _Ifx_VADC_G_BFLS_Bits
{
    unsigned int BFC0 : 1;
    unsigned int BFC1 : 1;
    unsigned int BFC2 : 1;
    unsigned int BFC3 : 1;
    unsigned int reserved_4 : 12;
    unsigned int BFS0 : 1;
    unsigned int BFS1 : 1;
    unsigned int BFS2 : 1;
    unsigned int BFS3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_VADC_G_BFLS_Bits;


typedef struct _Ifx_VADC_G_BOUND_Bits
{
    unsigned int BOUNDARY0 : 12;
    unsigned int reserved_12 : 4;
    unsigned int BOUNDARY1 : 12;
    unsigned int reserved_28 : 4;
} Ifx_VADC_G_BOUND_Bits;


typedef struct _Ifx_VADC_G_CEFCLR_Bits
{
    unsigned int CEV0 : 1;
    unsigned int CEV1 : 1;
    unsigned int CEV2 : 1;
    unsigned int CEV3 : 1;
    unsigned int CEV4 : 1;
    unsigned int CEV5 : 1;
    unsigned int CEV6 : 1;
    unsigned int CEV7 : 1;
    unsigned int CEV8 : 1;
    unsigned int CEV9 : 1;
    unsigned int CEV10 : 1;
    unsigned int CEV11 : 1;
    unsigned int CEV12 : 1;
    unsigned int CEV13 : 1;
    unsigned int CEV14 : 1;
    unsigned int CEV15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_CEFCLR_Bits;


typedef struct _Ifx_VADC_G_CEFLAG_Bits
{
    unsigned int CEV0 : 1;
    unsigned int CEV1 : 1;
    unsigned int CEV2 : 1;
    unsigned int CEV3 : 1;
    unsigned int CEV4 : 1;
    unsigned int CEV5 : 1;
    unsigned int CEV6 : 1;
    unsigned int CEV7 : 1;
    unsigned int CEV8 : 1;
    unsigned int CEV9 : 1;
    unsigned int CEV10 : 1;
    unsigned int CEV11 : 1;
    unsigned int CEV12 : 1;
    unsigned int CEV13 : 1;
    unsigned int CEV14 : 1;
    unsigned int CEV15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_CEFLAG_Bits;


typedef struct _Ifx_VADC_G_CEVNP0_Bits
{
    unsigned int CEV0NP : 4;
    unsigned int CEV1NP : 4;
    unsigned int CEV2NP : 4;
    unsigned int CEV3NP : 4;
    unsigned int CEV4NP : 4;
    unsigned int CEV5NP : 4;
    unsigned int CEV6NP : 4;
    unsigned int CEV7NP : 4;
} Ifx_VADC_G_CEVNP0_Bits;


typedef struct _Ifx_VADC_G_CEVNP1_Bits
{
    unsigned int CEV8NP : 4;
    unsigned int CEV9NP : 4;
    unsigned int CEV10NP : 4;
    unsigned int CEV11NP : 4;
    unsigned int CEV12NP : 4;
    unsigned int CEV13NP : 4;
    unsigned int CEV14NP : 4;
    unsigned int CEV15NP : 4;
} Ifx_VADC_G_CEVNP1_Bits;


typedef struct _Ifx_VADC_G_CHASS_Bits
{
    unsigned int ASSCH0 : 1;
    unsigned int ASSCH1 : 1;
    unsigned int ASSCH2 : 1;
    unsigned int ASSCH3 : 1;
    unsigned int ASSCH4 : 1;
    unsigned int ASSCH5 : 1;
    unsigned int ASSCH6 : 1;
    unsigned int ASSCH7 : 1;
    unsigned int ASSCH8 : 1;
    unsigned int ASSCH9 : 1;
    unsigned int ASSCH10 : 1;
    unsigned int ASSCH11 : 1;
    unsigned int ASSCH12 : 1;
    unsigned int ASSCH13 : 1;
    unsigned int ASSCH14 : 1;
    unsigned int ASSCH15 : 1;
    unsigned int ASSCH16 : 1;
    unsigned int ASSCH17 : 1;
    unsigned int ASSCH18 : 1;
    unsigned int ASSCH19 : 1;
    unsigned int ASSCH20 : 1;
    unsigned int ASSCH21 : 1;
    unsigned int ASSCH22 : 1;
    unsigned int ASSCH23 : 1;
    unsigned int ASSCH24 : 1;
    unsigned int ASSCH25 : 1;
    unsigned int ASSCH26 : 1;
    unsigned int ASSCH27 : 1;
    unsigned int ASSCH28 : 1;
    unsigned int ASSCH29 : 1;
    unsigned int ASSCH30 : 1;
    unsigned int ASSCH31 : 1;
} Ifx_VADC_G_CHASS_Bits;


typedef struct _Ifx_VADC_G_CHCTR_Bits
{
    unsigned int ICLSEL : 2;
    unsigned int reserved_2 : 2;
    unsigned int BNDSELL : 2;
    unsigned int BNDSELU : 2;
    unsigned int CHEVMODE : 2;
    unsigned int SYNC : 1;
    unsigned int REFSEL : 1;
    unsigned int BNDSELX : 4;
    unsigned int RESREG : 4;
    unsigned int RESTBS : 1;
    unsigned int RESPOS : 1;
    unsigned int reserved_22 : 6;
    unsigned int BWDCH : 2;
    unsigned int BWDEN : 1;
    unsigned int reserved_31 : 1;
} Ifx_VADC_G_CHCTR_Bits;


typedef struct _Ifx_VADC_G_EMUXCTR_Bits
{
    unsigned int EMUXSET : 3;
    unsigned int reserved_3 : 5;
    unsigned int EMUXACT : 3;
    unsigned int reserved_11 : 5;
    unsigned int EMUXCH : 10;
    unsigned int EMUXMODE : 2;
    unsigned int EMXCOD : 1;
    unsigned int EMXST : 1;
    unsigned int EMXCSS : 1;
    unsigned int EMXWC : 1;
} Ifx_VADC_G_EMUXCTR_Bits;


typedef struct _Ifx_VADC_G_Q0R0_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int V : 1;
    unsigned int reserved_9 : 23;
} Ifx_VADC_G_Q0R0_Bits;


typedef struct _Ifx_VADC_G_Q0R3_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int V : 1;
    unsigned int PDD : 1;
    unsigned int MDPD : 1;
    unsigned int MDPU : 1;
    unsigned int CDEN : 1;
    unsigned int CDSEL : 2;
    unsigned int reserved_15 : 17;
} Ifx_VADC_G_Q0R3_Bits;


typedef struct _Ifx_VADC_G_QBUR0_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int V : 1;
    unsigned int reserved_9 : 23;
} Ifx_VADC_G_QBUR0_Bits;


typedef struct _Ifx_VADC_G_QBUR3_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int V : 1;
    unsigned int PDD : 1;
    unsigned int MDPD : 1;
    unsigned int MDPU : 1;
    unsigned int CDEN : 1;
    unsigned int CDSEL : 2;
    unsigned int reserved_15 : 17;
} Ifx_VADC_G_QBUR3_Bits;


typedef struct _Ifx_VADC_G_QCTRL0_Bits
{
    unsigned int SRCRESREG : 4;
    unsigned int reserved_4 : 4;
    unsigned int XTSEL : 4;
    unsigned int XTLVL : 1;
    unsigned int XTMODE : 2;
    unsigned int XTWC : 1;
    unsigned int GTSEL : 4;
    unsigned int GTLVL : 1;
    unsigned int reserved_21 : 2;
    unsigned int GTWC : 1;
    unsigned int reserved_24 : 4;
    unsigned int TMEN : 1;
    unsigned int reserved_29 : 2;
    unsigned int TMWC : 1;
} Ifx_VADC_G_QCTRL0_Bits;


typedef struct _Ifx_VADC_G_QCTRL3_Bits
{
    unsigned int SRCRESREG : 4;
    unsigned int reserved_4 : 4;
    unsigned int XTSEL : 4;
    unsigned int XTLVL : 1;
    unsigned int XTMODE : 2;
    unsigned int XTWC : 1;
    unsigned int GTSEL : 4;
    unsigned int GTLVL : 1;
    unsigned int reserved_21 : 2;
    unsigned int GTWC : 1;
    unsigned int reserved_24 : 4;
    unsigned int TMEN : 1;
    unsigned int reserved_29 : 2;
    unsigned int TMWC : 1;
} Ifx_VADC_G_QCTRL3_Bits;


typedef struct _Ifx_VADC_G_QINR0_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int reserved_8 : 24;
} Ifx_VADC_G_QINR0_Bits;


typedef struct _Ifx_VADC_G_QINR3_Bits
{
    unsigned int REQCHNR : 5;
    unsigned int RF : 1;
    unsigned int ENSI : 1;
    unsigned int EXTR : 1;
    unsigned int reserved_8 : 1;
    unsigned int PDD : 1;
    unsigned int MDPD : 1;
    unsigned int MDPU : 1;
    unsigned int CDEN : 1;
    unsigned int CDSEL : 2;
    unsigned int reserved_15 : 17;
} Ifx_VADC_G_QINR3_Bits;


typedef struct _Ifx_VADC_G_QMR0_Bits
{
    unsigned int ENGT : 2;
    unsigned int ENTR : 1;
    unsigned int reserved_3 : 5;
    unsigned int CLRV : 1;
    unsigned int TREV : 1;
    unsigned int FLUSH : 1;
    unsigned int CEV : 1;
    unsigned int reserved_12 : 4;
    unsigned int RPTDIS : 1;
    unsigned int reserved_17 : 15;
} Ifx_VADC_G_QMR0_Bits;


typedef struct _Ifx_VADC_G_QMR3_Bits
{
    unsigned int ENGT : 2;
    unsigned int ENTR : 1;
    unsigned int reserved_3 : 5;
    unsigned int CLRV : 1;
    unsigned int TREV : 1;
    unsigned int FLUSH : 1;
    unsigned int CEV : 1;
    unsigned int reserved_12 : 4;
    unsigned int RPTDIS : 1;
    unsigned int reserved_17 : 15;
} Ifx_VADC_G_QMR3_Bits;


typedef struct _Ifx_VADC_G_QSR0_Bits
{
    unsigned int FILL : 4;
    unsigned int reserved_4 : 1;
    unsigned int EMPTY : 1;
    unsigned int reserved_6 : 1;
    unsigned int REQGT : 1;
    unsigned int EV : 1;
    unsigned int reserved_9 : 23;
} Ifx_VADC_G_QSR0_Bits;


typedef struct _Ifx_VADC_G_QSR3_Bits
{
    unsigned int FILL : 4;
    unsigned int reserved_4 : 1;
    unsigned int EMPTY : 1;
    unsigned int reserved_6 : 1;
    unsigned int REQGT : 1;
    unsigned int EV : 1;
    unsigned int reserved_9 : 23;
} Ifx_VADC_G_QSR3_Bits;


typedef struct _Ifx_VADC_G_RCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int DRCTR : 4;
    unsigned int DMM : 2;
    unsigned int reserved_22 : 2;
    unsigned int WFR : 1;
    unsigned int FEN : 2;
    unsigned int reserved_27 : 4;
    unsigned int SRGEN : 1;
} Ifx_VADC_G_RCR_Bits;


typedef struct _Ifx_VADC_G_REFCLR_Bits
{
    unsigned int REV0 : 1;
    unsigned int REV1 : 1;
    unsigned int REV2 : 1;
    unsigned int REV3 : 1;
    unsigned int REV4 : 1;
    unsigned int REV5 : 1;
    unsigned int REV6 : 1;
    unsigned int REV7 : 1;
    unsigned int REV8 : 1;
    unsigned int REV9 : 1;
    unsigned int REV10 : 1;
    unsigned int REV11 : 1;
    unsigned int REV12 : 1;
    unsigned int REV13 : 1;
    unsigned int REV14 : 1;
    unsigned int REV15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_REFCLR_Bits;


typedef struct _Ifx_VADC_G_REFLAG_Bits
{
    unsigned int REV0 : 1;
    unsigned int REV1 : 1;
    unsigned int REV2 : 1;
    unsigned int REV3 : 1;
    unsigned int REV4 : 1;
    unsigned int REV5 : 1;
    unsigned int REV6 : 1;
    unsigned int REV7 : 1;
    unsigned int REV8 : 1;
    unsigned int REV9 : 1;
    unsigned int REV10 : 1;
    unsigned int REV11 : 1;
    unsigned int REV12 : 1;
    unsigned int REV13 : 1;
    unsigned int REV14 : 1;
    unsigned int REV15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_REFLAG_Bits;


typedef struct _Ifx_VADC_G_RES_Bits
{
    unsigned int RESULT : 16;
    unsigned int DRC : 4;
    unsigned int CHNR : 5;
    unsigned int EMUX : 3;
    unsigned int CRS : 2;
    unsigned int FCR : 1;
    unsigned int VF : 1;
} Ifx_VADC_G_RES_Bits;


typedef struct _Ifx_VADC_G_RESD_Bits
{
    unsigned int RESULT : 16;
    unsigned int DRC : 4;
    unsigned int CHNR : 5;
    unsigned int EMUX : 3;
    unsigned int CRS : 2;
    unsigned int FCR : 1;
    unsigned int VF : 1;
} Ifx_VADC_G_RESD_Bits;


typedef struct _Ifx_VADC_G_REVNP0_Bits
{
    unsigned int REV0NP : 4;
    unsigned int REV1NP : 4;
    unsigned int REV2NP : 4;
    unsigned int REV3NP : 4;
    unsigned int REV4NP : 4;
    unsigned int REV5NP : 4;
    unsigned int REV6NP : 4;
    unsigned int REV7NP : 4;
} Ifx_VADC_G_REVNP0_Bits;


typedef struct _Ifx_VADC_G_REVNP1_Bits
{
    unsigned int REV8NP : 4;
    unsigned int REV9NP : 4;
    unsigned int REV10NP : 4;
    unsigned int REV11NP : 4;
    unsigned int REV12NP : 4;
    unsigned int REV13NP : 4;
    unsigned int REV14NP : 4;
    unsigned int REV15NP : 4;
} Ifx_VADC_G_REVNP1_Bits;


typedef struct _Ifx_VADC_G_RRASS_Bits
{
    unsigned int ASSRR0 : 1;
    unsigned int ASSRR1 : 1;
    unsigned int ASSRR2 : 1;
    unsigned int ASSRR3 : 1;
    unsigned int ASSRR4 : 1;
    unsigned int ASSRR5 : 1;
    unsigned int ASSRR6 : 1;
    unsigned int ASSRR7 : 1;
    unsigned int ASSRR8 : 1;
    unsigned int ASSRR9 : 1;
    unsigned int ASSRR10 : 1;
    unsigned int ASSRR11 : 1;
    unsigned int ASSRR12 : 1;
    unsigned int ASSRR13 : 1;
    unsigned int ASSRR14 : 1;
    unsigned int ASSRR15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_RRASS_Bits;


typedef struct _Ifx_VADC_G_SEFCLR_Bits
{
    unsigned int SEV0 : 1;
    unsigned int SEV1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SEV3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_VADC_G_SEFCLR_Bits;


typedef struct _Ifx_VADC_G_SEFLAG_Bits
{
    unsigned int SEV0 : 1;
    unsigned int SEV1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SEV3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_VADC_G_SEFLAG_Bits;


typedef struct _Ifx_VADC_G_SEVNP_Bits
{
    unsigned int SEV0NP : 4;
    unsigned int SEV1NP : 4;
    unsigned int reserved_8 : 4;
    unsigned int SEV3NP : 4;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_SEVNP_Bits;


typedef struct _Ifx_VADC_G_SRACT_Bits
{
    unsigned int AGSR0 : 1;
    unsigned int AGSR1 : 1;
    unsigned int AGSR2 : 1;
    unsigned int AGSR3 : 1;
    unsigned int reserved_4 : 4;
    unsigned int ASSR0 : 1;
    unsigned int ASSR1 : 1;
    unsigned int ASSR2 : 1;
    unsigned int ASSR3 : 1;
    unsigned int reserved_12 : 20;
} Ifx_VADC_G_SRACT_Bits;


typedef struct _Ifx_VADC_G_SYNCTR_Bits
{
    unsigned int STSEL : 2;
    unsigned int reserved_2 : 2;
    unsigned int EVALR1 : 1;
    unsigned int EVALR2 : 1;
    unsigned int EVALR3 : 1;
    unsigned int reserved_7 : 25;
} Ifx_VADC_G_SYNCTR_Bits;


typedef struct _Ifx_VADC_G_TRCTR_Bits
{
    unsigned int TSC : 6;
    unsigned int reserved_6 : 8;
    unsigned int Q3ACT : 1;
    unsigned int OV : 1;
    unsigned int TSCSET : 6;
    unsigned int reserved_22 : 2;
    unsigned int ITSEL : 2;
    unsigned int reserved_26 : 2;
    unsigned int SRDIS : 1;
    unsigned int reserved_29 : 2;
    unsigned int COV : 1;
} Ifx_VADC_G_TRCTR_Bits;


typedef struct _Ifx_VADC_G_VFR_Bits
{
    unsigned int VF0 : 1;
    unsigned int VF1 : 1;
    unsigned int VF2 : 1;
    unsigned int VF3 : 1;
    unsigned int VF4 : 1;
    unsigned int VF5 : 1;
    unsigned int VF6 : 1;
    unsigned int VF7 : 1;
    unsigned int VF8 : 1;
    unsigned int VF9 : 1;
    unsigned int VF10 : 1;
    unsigned int VF11 : 1;
    unsigned int VF12 : 1;
    unsigned int VF13 : 1;
    unsigned int VF14 : 1;
    unsigned int VF15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_VADC_G_VFR_Bits;


typedef struct _Ifx_VADC_GLOBBOUND_Bits
{
    unsigned int BOUNDARY0 : 12;
    unsigned int reserved_12 : 4;
    unsigned int BOUNDARY1 : 12;
    unsigned int reserved_28 : 4;
} Ifx_VADC_GLOBBOUND_Bits;


typedef struct _Ifx_VADC_GLOBCFG_Bits
{
    unsigned int DIVA : 5;
    unsigned int reserved_5 : 2;
    unsigned int DCMSB : 1;
    unsigned int DIVD : 2;
    unsigned int reserved_10 : 2;
    unsigned int REFPC : 1;
    unsigned int reserved_13 : 1;
    unsigned int LOSUP : 1;
    unsigned int DIVWC : 1;
    unsigned int DPCAL0 : 1;
    unsigned int DPCAL1 : 1;
    unsigned int DPCAL2 : 1;
    unsigned int DPCAL3 : 1;
    unsigned int reserved_20 : 11;
    unsigned int SUCAL : 1;
} Ifx_VADC_GLOBCFG_Bits;


typedef struct _Ifx_VADC_GLOBEFLAG_Bits
{
    unsigned int SEVGLB : 1;
    unsigned int reserved_1 : 7;
    unsigned int REVGLB : 1;
    unsigned int reserved_9 : 7;
    unsigned int SEVGLBCLR : 1;
    unsigned int reserved_17 : 7;
    unsigned int REVGLBCLR : 1;
    unsigned int reserved_25 : 7;
} Ifx_VADC_GLOBEFLAG_Bits;


typedef struct _Ifx_VADC_GLOBEVNP_Bits
{
    unsigned int SEV0NP : 4;
    unsigned int reserved_4 : 12;
    unsigned int REV0NP : 4;
    unsigned int reserved_20 : 12;
} Ifx_VADC_GLOBEVNP_Bits;


typedef struct _Ifx_VADC_GLOBRCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int DRCTR : 4;
    unsigned int reserved_20 : 4;
    unsigned int WFR : 1;
    unsigned int reserved_25 : 6;
    unsigned int SRGEN : 1;
} Ifx_VADC_GLOBRCR_Bits;


typedef struct _Ifx_VADC_GLOBRES_Bits
{
    unsigned int RESULT : 16;
    unsigned int GNR : 4;
    unsigned int CHNR : 5;
    unsigned int EMUX : 3;
    unsigned int CRS : 2;
    unsigned int FCR : 1;
    unsigned int VF : 1;
} Ifx_VADC_GLOBRES_Bits;


typedef struct _Ifx_VADC_GLOBRESD_Bits
{
    unsigned int RESULT : 16;
    unsigned int GNR : 4;
    unsigned int CHNR : 5;
    unsigned int EMUX : 3;
    unsigned int CRS : 2;
    unsigned int FCR : 1;
    unsigned int VF : 1;
} Ifx_VADC_GLOBRESD_Bits;


typedef struct _Ifx_VADC_GLOBTE_Bits
{
    unsigned int TFEG0 : 1;
    unsigned int TFEG1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_VADC_GLOBTE_Bits;


typedef struct _Ifx_VADC_GLOBTF_Bits
{
    unsigned int CDCH : 4;
    unsigned int CDGR : 4;
    unsigned int CDEN : 1;
    unsigned int CDSEL : 2;
    unsigned int reserved_11 : 4;
    unsigned int CDWC : 1;
    unsigned int PDD : 1;
    unsigned int MDPD : 1;
    unsigned int MDPU : 1;
    unsigned int reserved_19 : 4;
    unsigned int MDWC : 1;
    unsigned int reserved_24 : 6;
    unsigned int RCEN : 1;
    unsigned int RCWC : 1;
} Ifx_VADC_GLOBTF_Bits;


typedef struct _Ifx_VADC_ICLASS_Bits
{
    unsigned int STCS : 5;
    unsigned int reserved_5 : 3;
    unsigned int CMS : 3;
    unsigned int reserved_11 : 5;
    unsigned int STCE : 5;
    unsigned int reserved_21 : 3;
    unsigned int CME : 3;
    unsigned int reserved_27 : 5;
} Ifx_VADC_ICLASS_Bits;


typedef struct _Ifx_VADC_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_VADC_ID_Bits;


typedef struct _Ifx_VADC_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_VADC_KRST0_Bits;


typedef struct _Ifx_VADC_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_VADC_KRST1_Bits;


typedef struct _Ifx_VADC_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_VADC_KRSTCLR_Bits;


typedef struct _Ifx_VADC_OCS_Bits
{
    unsigned int TGS : 2;
    unsigned int TGB : 1;
    unsigned int TG_P : 1;
    unsigned int reserved_4 : 20;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_VADC_OCS_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ACCEN0_Bits B;
} Ifx_VADC_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ACCPROT0_Bits B;
} Ifx_VADC_ACCPROT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ACCPROT1_Bits B;
} Ifx_VADC_ACCPROT1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSCTRL_Bits B;
} Ifx_VADC_BRSCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSMR_Bits B;
} Ifx_VADC_BRSMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSPND_Bits B;
} Ifx_VADC_BRSPND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_BRSSEL_Bits B;
} Ifx_VADC_BRSSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_CLC_Bits B;
} Ifx_VADC_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_EMUXSEL_Bits B;
} Ifx_VADC_EMUXSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ALIAS_Bits B;
} Ifx_VADC_G_ALIAS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ARBCFG_Bits B;
} Ifx_VADC_G_ARBCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ARBPR_Bits B;
} Ifx_VADC_G_ARBPR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASCTRL_Bits B;
} Ifx_VADC_G_ASCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASMR_Bits B;
} Ifx_VADC_G_ASMR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASPND_Bits B;
} Ifx_VADC_G_ASPND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_ASSEL_Bits B;
} Ifx_VADC_G_ASSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFL_Bits B;
} Ifx_VADC_G_BFL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFLC_Bits B;
} Ifx_VADC_G_BFLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFLNP_Bits B;
} Ifx_VADC_G_BFLNP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BFLS_Bits B;
} Ifx_VADC_G_BFLS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_BOUND_Bits B;
} Ifx_VADC_G_BOUND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEFCLR_Bits B;
} Ifx_VADC_G_CEFCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEFLAG_Bits B;
} Ifx_VADC_G_CEFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEVNP0_Bits B;
} Ifx_VADC_G_CEVNP0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CEVNP1_Bits B;
} Ifx_VADC_G_CEVNP1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CHASS_Bits B;
} Ifx_VADC_G_CHASS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_CHCTR_Bits B;
} Ifx_VADC_G_CHCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_EMUXCTR_Bits B;
} Ifx_VADC_G_EMUXCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_Q0R0_Bits B;
} Ifx_VADC_G_Q0R0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_Q0R3_Bits B;
} Ifx_VADC_G_Q0R3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QBUR0_Bits B;
} Ifx_VADC_G_QBUR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QBUR3_Bits B;
} Ifx_VADC_G_QBUR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QCTRL0_Bits B;
} Ifx_VADC_G_QCTRL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QCTRL3_Bits B;
} Ifx_VADC_G_QCTRL3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QINR0_Bits B;
} Ifx_VADC_G_QINR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QINR3_Bits B;
} Ifx_VADC_G_QINR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QMR0_Bits B;
} Ifx_VADC_G_QMR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QMR3_Bits B;
} Ifx_VADC_G_QMR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QSR0_Bits B;
} Ifx_VADC_G_QSR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_QSR3_Bits B;
} Ifx_VADC_G_QSR3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RCR_Bits B;
} Ifx_VADC_G_RCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REFCLR_Bits B;
} Ifx_VADC_G_REFCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REFLAG_Bits B;
} Ifx_VADC_G_REFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RES_Bits B;
} Ifx_VADC_G_RES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RESD_Bits B;
} Ifx_VADC_G_RESD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REVNP0_Bits B;
} Ifx_VADC_G_REVNP0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_REVNP1_Bits B;
} Ifx_VADC_G_REVNP1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_RRASS_Bits B;
} Ifx_VADC_G_RRASS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SEFCLR_Bits B;
} Ifx_VADC_G_SEFCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SEFLAG_Bits B;
} Ifx_VADC_G_SEFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SEVNP_Bits B;
} Ifx_VADC_G_SEVNP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SRACT_Bits B;
} Ifx_VADC_G_SRACT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_SYNCTR_Bits B;
} Ifx_VADC_G_SYNCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_TRCTR_Bits B;
} Ifx_VADC_G_TRCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_G_VFR_Bits B;
} Ifx_VADC_G_VFR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBBOUND_Bits B;
} Ifx_VADC_GLOBBOUND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBCFG_Bits B;
} Ifx_VADC_GLOBCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBEFLAG_Bits B;
} Ifx_VADC_GLOBEFLAG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBEVNP_Bits B;
} Ifx_VADC_GLOBEVNP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBRCR_Bits B;
} Ifx_VADC_GLOBRCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBRES_Bits B;
} Ifx_VADC_GLOBRES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBRESD_Bits B;
} Ifx_VADC_GLOBRESD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBTE_Bits B;
} Ifx_VADC_GLOBTE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_GLOBTF_Bits B;
} Ifx_VADC_GLOBTF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ICLASS_Bits B;
} Ifx_VADC_ICLASS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_ID_Bits B;
} Ifx_VADC_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_KRST0_Bits B;
} Ifx_VADC_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_KRST1_Bits B;
} Ifx_VADC_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_KRSTCLR_Bits B;
} Ifx_VADC_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_VADC_OCS_Bits B;
} Ifx_VADC_OCS;
# 1625 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_regdef.h"
typedef volatile struct _Ifx_VADC_G
{
    Ifx_VADC_G_ARBCFG ARBCFG;
    Ifx_VADC_G_ARBPR ARBPR;
    Ifx_VADC_G_CHASS CHASS;
    Ifx_VADC_G_RRASS RRASS;
    unsigned char reserved_10[16];
    Ifx_VADC_ICLASS ICLASS[2];
    unsigned char reserved_28[8];
    Ifx_VADC_G_ALIAS ALIAS;
    unsigned char reserved_34[4];
    Ifx_VADC_G_BOUND BOUND;
    unsigned char reserved_3C[4];
    Ifx_VADC_G_SYNCTR SYNCTR;
    unsigned char reserved_44[4];
    Ifx_VADC_G_BFL BFL;
    Ifx_VADC_G_BFLS BFLS;
    Ifx_VADC_G_BFLC BFLC;
    Ifx_VADC_G_BFLNP BFLNP;
    unsigned char reserved_58[40];
    Ifx_VADC_G_QCTRL0 QCTRL0;
    Ifx_VADC_G_QMR0 QMR0;
    Ifx_VADC_G_QSR0 QSR0;
    Ifx_VADC_G_Q0R0 Q0R0;
    union
    {
        Ifx_VADC_G_QBUR0 QBUR0;
        Ifx_VADC_G_QINR0 QINR0;
    };

    unsigned char reserved_94[12];
    Ifx_VADC_G_ASCTRL ASCTRL;
    Ifx_VADC_G_ASMR ASMR;
    Ifx_VADC_G_ASSEL ASSEL;
    Ifx_VADC_G_ASPND ASPND;
    unsigned char reserved_B0[16];
    Ifx_VADC_G_QCTRL3 QCTRL3;
    Ifx_VADC_G_QMR3 QMR3;
    Ifx_VADC_G_QSR3 QSR3;
    Ifx_VADC_G_Q0R3 Q0R3;
    union
    {
        Ifx_VADC_G_QBUR3 QBUR3;
        Ifx_VADC_G_QINR3 QINR3;
    };

    Ifx_VADC_G_TRCTR TRCTR;
    unsigned char reserved_D8[40];
    Ifx_VADC_G_CEFLAG CEFLAG;
    Ifx_VADC_G_REFLAG REFLAG;
    Ifx_VADC_G_SEFLAG SEFLAG;
    unsigned char reserved_10C[4];
    Ifx_VADC_G_CEFCLR CEFCLR;
    Ifx_VADC_G_REFCLR REFCLR;
    Ifx_VADC_G_SEFCLR SEFCLR;
    unsigned char reserved_11C[4];
    Ifx_VADC_G_CEVNP0 CEVNP0;
    Ifx_VADC_G_CEVNP1 CEVNP1;
    unsigned char reserved_128[8];
    Ifx_VADC_G_REVNP0 REVNP0;
    Ifx_VADC_G_REVNP1 REVNP1;
    unsigned char reserved_138[8];
    Ifx_VADC_G_SEVNP SEVNP;
    unsigned char reserved_144[4];
    Ifx_VADC_G_SRACT SRACT;
    unsigned char reserved_14C[36];
    Ifx_VADC_G_EMUXCTR EMUXCTR;
    unsigned char reserved_174[4];
    Ifx_VADC_G_VFR VFR;
    unsigned char reserved_17C[4];
    Ifx_VADC_G_CHCTR CHCTR[12];
    unsigned char reserved_1B0[80];
    Ifx_VADC_G_RCR RCR[16];
    unsigned char reserved_240[64];
    Ifx_VADC_G_RES RES[16];
    unsigned char reserved_2C0[64];
    Ifx_VADC_G_RESD RESD[16];
    unsigned char reserved_340[192];
} Ifx_VADC_G;
# 1716 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_regdef.h"
typedef volatile struct _Ifx_VADC
{
    Ifx_VADC_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_VADC_ID ID;
    unsigned char reserved_C[28];
    Ifx_VADC_OCS OCS;
    Ifx_VADC_KRSTCLR KRSTCLR;
    Ifx_VADC_KRST1 KRST1;
    Ifx_VADC_KRST0 KRST0;
    unsigned char reserved_38[4];
    Ifx_VADC_ACCEN0 ACCEN0;
    unsigned char reserved_40[64];
    Ifx_VADC_GLOBCFG GLOBCFG;
    unsigned char reserved_84[4];
    Ifx_VADC_ACCPROT0 ACCPROT0;
    Ifx_VADC_ACCPROT1 ACCPROT1;
    unsigned char reserved_90[16];
    Ifx_VADC_ICLASS GLOBICLASS[2];
    unsigned char reserved_A8[16];
    Ifx_VADC_GLOBBOUND GLOBBOUND;
    unsigned char reserved_BC[36];
    Ifx_VADC_GLOBEFLAG GLOBEFLAG;
    unsigned char reserved_E4[92];
    Ifx_VADC_GLOBEVNP GLOBEVNP;
    unsigned char reserved_144[28];
    Ifx_VADC_GLOBTF GLOBTF;
    Ifx_VADC_GLOBTE GLOBTE;
    unsigned char reserved_168[24];
    Ifx_VADC_BRSSEL BRSSEL[4];
    unsigned char reserved_190[48];
    Ifx_VADC_BRSPND BRSPND[4];
    unsigned char reserved_1D0[48];
    Ifx_VADC_BRSCTRL BRSCTRL;
    Ifx_VADC_BRSMR BRSMR;
    unsigned char reserved_208[120];
    Ifx_VADC_GLOBRCR GLOBRCR;
    unsigned char reserved_284[124];
    Ifx_VADC_GLOBRES GLOBRES;
    unsigned char reserved_304[124];
    Ifx_VADC_GLOBRESD GLOBRESD;
    unsigned char reserved_384[108];
    Ifx_VADC_EMUXSEL EMUXSEL;
    unsigned char reserved_3F4[140];
    Ifx_VADC_G G[4];
    unsigned char reserved_1480[11136];
} Ifx_VADC;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_reg.h" 2
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.h" 2

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
# 34 "./0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.h" 2





typedef const struct
{
    Ifx_VADC* module;
    IfxVadc_GroupId groupId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxVadc_GxBfl_Out;


typedef const struct
{
    Ifx_VADC* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxVadc_Emux_Out;


typedef const struct
{
    Ifx_VADC* module;
    IfxVadc_GroupId groupId;
    IfxPort_Pin pin;
    uint8 channelId;
} IfxVadc_Vadcg_In;

extern IfxVadc_Emux_Out IfxVadc_EMUX00_P02_6_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX00_P33_3_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX01_P02_7_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX01_P33_2_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX02_P02_8_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX02_P33_1_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX10_P00_6_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX10_P33_6_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX11_P00_7_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX11_P33_5_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX12_P00_8_OUT;
extern IfxVadc_Emux_Out IfxVadc_EMUX12_P33_4_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL0_P33_4_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL1_P33_5_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL2_P33_6_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G0BFL3_P33_7_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P00_4_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL0_P33_0_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P00_5_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL1_P33_1_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL2_P00_6_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL2_P33_2_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL3_P00_7_OUT;
extern IfxVadc_GxBfl_Out IfxVadc_G1BFL3_P33_3_OUT;
# 97 "./0_Src/4_McHal/Tricore/_PinMap/IfxVadc_PinMap.h"
extern const IfxVadc_Emux_Out *IfxVadc_Emux_Out_pinTable[1][12];


extern const IfxVadc_GxBfl_Out *IfxVadc_GxBfl_Out_pinTable[1][2][8];
# 55 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxVadc_bf.h" 1
# 56 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h" 2

# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 1
# 108 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
# 50 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h" 1
# 42 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS : 1;
    volatile unsigned int BIV : 31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int BTV : 31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM : 1;
    volatile unsigned int CE : 1;
    volatile unsigned int M1 : 3;
    volatile unsigned int M2 : 3;
    volatile unsigned int M3 : 3;
    volatile unsigned int reserved_11 : 21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int RM : 1;
    volatile unsigned int SP : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MODREV : 8;
    volatile unsigned int MOD_32B : 8;
    volatile unsigned int MOD : 16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA : 32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int SBE : 1;
    volatile unsigned int reserved_4 : 5;
    volatile unsigned int CWE : 1;
    volatile unsigned int CFE : 1;
    volatile unsigned int reserved_11 : 3;
    volatile unsigned int SOE : 1;
    volatile unsigned int SME : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE : 1;
    volatile unsigned int HALT : 2;
    volatile unsigned int SIH : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int PREVSUSP : 1;
    volatile unsigned int PEVT : 1;
    volatile unsigned int EVTSRC : 5;
    volatile unsigned int reserved_13 : 19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE : 16;
    volatile unsigned int DSCRATCH_SZE : 16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0 : 6;
    volatile unsigned int DCXValue : 26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS : 32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DMSValue : 31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE : 1;
    volatile unsigned int GAE : 1;
    volatile unsigned int LBE : 1;
    volatile unsigned int reserved_3 : 3;
    volatile unsigned int CRE : 1;
    volatile unsigned int reserved_7 : 7;
    volatile unsigned int DTME : 1;
    volatile unsigned int LOE : 1;
    volatile unsigned int SDE : 1;
    volatile unsigned int SCE : 1;
    volatile unsigned int CAC : 1;
    volatile unsigned int MPE : 1;
    volatile unsigned int CLE : 1;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int ALN : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO : 16;
    volatile unsigned int FCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST : 1;
    volatile unsigned int TCL : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int RM : 2;
    volatile unsigned int reserved_10 : 8;
    volatile unsigned int FXE : 1;
    volatile unsigned int FUE : 1;
    volatile unsigned int FZE : 1;
    volatile unsigned int FVE : 1;
    volatile unsigned int FIE : 1;
    volatile unsigned int reserved_23 : 3;
    volatile unsigned int FX : 1;
    volatile unsigned int FU : 1;
    volatile unsigned int FZ : 1;
    volatile unsigned int FV : 1;
    volatile unsigned int FI : 1;
    volatile unsigned int reserved_31 : 1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC : 8;
    volatile unsigned int FMT : 1;
    volatile unsigned int reserved_9 : 7;
    volatile unsigned int DREG : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC : 32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1 : 32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2 : 32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3 : 32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN : 10;
    volatile unsigned int reserved_10 : 5;
    volatile unsigned int IE : 1;
    volatile unsigned int PIPN : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP : 32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO : 16;
    volatile unsigned int LCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PC : 31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV : 1;
    volatile unsigned int PBINV : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE : 16;
    volatile unsigned int PSCRATCH_SZE : 16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO : 16;
    volatile unsigned int PCXS : 4;
    volatile unsigned int UL : 1;
    volatile unsigned int PIE : 1;
    volatile unsigned int PCPN : 10;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int reserved_0 : 13;
    volatile unsigned int DAC : 3;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int reserved_0 : 14;
    volatile unsigned int CAC : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int FBE : 1;
    volatile unsigned int reserved_3 : 9;
    volatile unsigned int FPE : 1;
    volatile unsigned int reserved_13 : 1;
    volatile unsigned int FME : 1;
    volatile unsigned int reserved_15 : 17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC : 7;
    volatile unsigned int CDE : 1;
    volatile unsigned int GW : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IO : 2;
    volatile unsigned int PRS : 2;
    volatile unsigned int S : 1;
    volatile unsigned int reserved_15 : 12;
    volatile unsigned int SAV : 1;
    volatile unsigned int AV : 1;
    volatile unsigned int SV : 1;
    volatile unsigned int V : 1;
    volatile unsigned int C : 1;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP : 8;
    volatile unsigned int ADTYPE : 2;
    volatile unsigned int reserved_10 : 21;
    volatile unsigned int AE : 1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int PC : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int PT : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int DC : 1;
    volatile unsigned int reserved_9 : 1;
    volatile unsigned int DT : 1;
    volatile unsigned int reserved_11 : 13;
    volatile unsigned int IODT : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_LA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_LA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_UA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_UA_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF : 1;
    volatile unsigned int PROTEN : 1;
    volatile unsigned int TPROTEN : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IT : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0 : 1;
    volatile unsigned int TEXP1 : 1;
    volatile unsigned int TEXP2 : 1;
    volatile unsigned int reserved_3 : 13;
    volatile unsigned int TTRAP : 1;
    volatile unsigned int reserved_17 : 15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int Timer : 32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 4;
    volatile unsigned int TYP : 1;
    volatile unsigned int RNG : 1;
    volatile unsigned int reserved_14 : 1;
    volatile unsigned int ASI_EN : 1;
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_21 : 6;
    volatile unsigned int AST : 1;
    volatile unsigned int ALD : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_CPU_TR_EVT_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0 : 1;
    volatile unsigned int T1 : 1;
    volatile unsigned int T2 : 1;
    volatile unsigned int T3 : 1;
    volatile unsigned int T4 : 1;
    volatile unsigned int T5 : 1;
    volatile unsigned int T6 : 1;
    volatile unsigned int T7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_TRIG_ACC_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENA_Bits B;
} Ifx_CPU_SPROT_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_ACCENB_Bits B;
} Ifx_CPU_SPROT_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENA_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_ACCENB_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_LA_Bits B;
} Ifx_CPU_SPROT_RGN_LA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SPROT_RGN_UA_Bits B;
} Ifx_CPU_SPROT_RGN_UA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;
# 1271 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
    Ifx_CPU_CPR_L L;
    Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;


typedef volatile struct _Ifx_CPU_DPR
{
    Ifx_CPU_DPR_L L;
    Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;


typedef volatile struct _Ifx_CPU_SPROT_RGN
{
    Ifx_CPU_SPROT_RGN_LA LA;
    Ifx_CPU_SPROT_RGN_UA UA;
    Ifx_CPU_SPROT_RGN_ACCENA ACCENA;
    Ifx_CPU_SPROT_RGN_ACCENB ACCENB;
} Ifx_CPU_SPROT_RGN;


typedef volatile struct _Ifx_CPU_TPS
{
    Ifx_CPU_TPS_CON CON;
    Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;


typedef volatile struct _Ifx_CPU_TR
{
    Ifx_CPU_TR_EVT EVT;
    Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 1318 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
    unsigned char reserved_0[4144];
    Ifx_CPU_SEGEN SEGEN;
    unsigned char reserved_1034[28624];
    Ifx_CPU_TASK_ASI TASK_ASI;
    unsigned char reserved_8008[248];
    Ifx_CPU_PMA0 PMA0;
    Ifx_CPU_PMA1 PMA1;
    Ifx_CPU_PMA2 PMA2;
    unsigned char reserved_810C[3828];
    Ifx_CPU_DCON2 DCON2;
    unsigned char reserved_9004[8];
    Ifx_CPU_SMACON SMACON;
    Ifx_CPU_DSTR DSTR;
    unsigned char reserved_9014[4];
    Ifx_CPU_DATR DATR;
    Ifx_CPU_DEADD DEADD;
    Ifx_CPU_DIEAR DIEAR;
    Ifx_CPU_DIETR DIETR;
    unsigned char reserved_9028[24];
    Ifx_CPU_DCON0 DCON0;
    unsigned char reserved_9044[444];
    Ifx_CPU_PSTR PSTR;
    Ifx_CPU_PCON1 PCON1;
    Ifx_CPU_PCON2 PCON2;
    Ifx_CPU_PCON0 PCON0;
    Ifx_CPU_PIEAR PIEAR;
    Ifx_CPU_PIETR PIETR;
    unsigned char reserved_9218[488];
    Ifx_CPU_COMPAT COMPAT;
    unsigned char reserved_9404[3068];
    Ifx_CPU_FPU_TRAP_CON FPU_TRAP_CON;
    Ifx_CPU_FPU_TRAP_PC FPU_TRAP_PC;
    Ifx_CPU_FPU_TRAP_OPC FPU_TRAP_OPC;
    unsigned char reserved_A00C[4];
    Ifx_CPU_FPU_TRAP_SRC1 FPU_TRAP_SRC1;
    Ifx_CPU_FPU_TRAP_SRC2 FPU_TRAP_SRC2;
    Ifx_CPU_FPU_TRAP_SRC3 FPU_TRAP_SRC3;
    unsigned char reserved_A01C[8164];
    Ifx_CPU_DPR DPR[16];
    unsigned char reserved_C080[3968];
    Ifx_CPU_CPR CPR[8];
    unsigned char reserved_D040[4032];
    Ifx_CPU_CPXE CPXE[4];
    Ifx_CPU_DPRE DPRE[4];
    Ifx_CPU_DPWE DPWE[4];
    unsigned char reserved_E030[976];
    Ifx_CPU_TPS TPS;
    unsigned char reserved_E410[3056];
    Ifx_CPU_TR TR[8];
    unsigned char reserved_F040[3008];
    Ifx_CPU_CCTRL CCTRL;
    Ifx_CPU_CCNT CCNT;
    Ifx_CPU_ICNT ICNT;
    Ifx_CPU_M1CNT M1CNT;
    Ifx_CPU_M2CNT M2CNT;
    Ifx_CPU_M3CNT M3CNT;
    unsigned char reserved_FC18[232];
    Ifx_CPU_DBGSR DBGSR;
    unsigned char reserved_FD04[4];
    Ifx_CPU_EXEVT EXEVT;
    Ifx_CPU_CREVT CREVT;
    Ifx_CPU_SWEVT SWEVT;
    unsigned char reserved_FD14[28];
    Ifx_CPU_TRIG_ACC TRIG_ACC;
    unsigned char reserved_FD34[12];
    Ifx_CPU_DMS DMS;
    Ifx_CPU_DCX DCX;
    Ifx_CPU_DBGTCR DBGTCR;
    unsigned char reserved_FD4C[180];
    Ifx_CPU_PCXI PCXI;
    Ifx_CPU_PSW PSW;
    Ifx_CPU_PC PC;
    unsigned char reserved_FE0C[8];
    Ifx_CPU_SYSCON SYSCON;
    Ifx_CPU_CPU_ID CPU_ID;
    Ifx_CPU_CORE_ID CORE_ID;
    Ifx_CPU_BIV BIV;
    Ifx_CPU_BTV BTV;
    Ifx_CPU_ISP ISP;
    Ifx_CPU_ICR ICR;
    unsigned char reserved_FE30[8];
    Ifx_CPU_FCX FCX;
    Ifx_CPU_LCX LCX;
    unsigned char reserved_FE40[16];
    Ifx_CPU_CUS_ID CUS_ID;
    unsigned char reserved_FE54[172];
    Ifx_CPU_D D[16];
    unsigned char reserved_FF40[64];
    Ifx_CPU_A A[16];
    unsigned char reserved_FFC0[64];
} Ifx_CPU;


typedef volatile struct _Ifx_CPU_SPROT
{
    unsigned char reserved_0[57344];
    Ifx_CPU_SPROT_RGN RGN[8];
    unsigned char reserved_E080[128];
    Ifx_CPU_SPROT_ACCENA ACCENA;
    Ifx_CPU_SPROT_ACCENB ACCENB;
    unsigned char reserved_E108[7928];
} Ifx_CPU_SPROT;
# 43 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h" 2
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 2
# 64 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
typedef enum
{
    IfxCpu_DBGST_HALT_run = 0,
    IfxCpu_DBGST_HALT_halt = 1
} IfxCpu_DBGST_HALT;



typedef enum
{
    IfxCpu_PMCSR_PMST_normalMode = 1,
    IfxCpu_PMCSR_PMST_idleModeRequest = 2,
    IfxCpu_PMCSR_PMST_idleMode = 3,
    IfxCpu_PMCSR_PMST_sleepModeRequest = 4,
    IfxCpu_PMCSR_PMST_standbyModeRequest = 6
} IfxCpu_PMCSR_PMST;



typedef enum
{
    IfxCpu_ResourceCpu_0 = 0,
    IfxCpu_ResourceCpu_none
} IfxCpu_ResourceCpu;





extern const IfxModule_IndexMap IfxCpu_cfg_indexMap[(1)];
# 51 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2




# 1 "./0_Src/1_SrvSw/_Utilities/Ifx_Assert.h" 1
# 69 "./0_Src/1_SrvSw/_Utilities/Ifx_Assert.h"
# 1 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h" 1
# 32 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
# 1 "./0_Src/1_SrvSw/_Utilities/Ifx_Assert.h" 1
# 33 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h" 2
# 60 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
# 1 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h" 1
# 44 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
# 1 "./0_Src/1_SrvSw/StdIf/IfxStdIf.h" 1
# 97 "./0_Src/1_SrvSw/StdIf/IfxStdIf.h"
typedef void *IfxStdIf_InterfaceDriver;
# 45 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h" 2






typedef struct IfxStdIf_DPipe_ IfxStdIf_DPipe;

typedef volatile boolean *IfxStdIf_DPipe_WriteEvent;
typedef volatile boolean *IfxStdIf_DPipe_ReadEvent;
# 72 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_Write) (IfxStdIf_InterfaceDriver driver, void *data, Ifx_SizeT * count,
                                         Ifx_TickTime timeout);
# 88 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_Read) (IfxStdIf_InterfaceDriver driver, void *data, Ifx_SizeT * count,
                                        Ifx_TickTime timeout);







typedef sint32 (*IfxStdIf_DPipe_GetReadCount) (IfxStdIf_InterfaceDriver driver);







typedef IfxStdIf_DPipe_ReadEvent (*IfxStdIf_DPipe_GetReadEvent) (IfxStdIf_InterfaceDriver driver);







typedef uint32 (*IfxStdIf_DPipe_GetSendCount) (IfxStdIf_InterfaceDriver driver);







typedef Ifx_TickTime (*IfxStdIf_DPipe_GetTxTimeStamp) (IfxStdIf_InterfaceDriver driver);







typedef sint32 (*IfxStdIf_DPipe_GetWriteCount) (IfxStdIf_InterfaceDriver driver);







typedef IfxStdIf_DPipe_WriteEvent (*IfxStdIf_DPipe_GetWriteEvent) (IfxStdIf_InterfaceDriver driver);
# 148 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_CanReadCount) (IfxStdIf_InterfaceDriver driver, Ifx_SizeT count, Ifx_TickTime timeout);
# 159 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_CanWriteCount) (IfxStdIf_InterfaceDriver driver, Ifx_SizeT count,
                                                 Ifx_TickTime timeout);
# 169 "./0_Src/1_SrvSw/StdIf/IfxStdIf_DPipe.h"
typedef boolean (*IfxStdIf_DPipe_FlushTx) (IfxStdIf_InterfaceDriver driver, Ifx_TickTime timeout);






typedef void (*IfxStdIf_DPipe_ClearRx) (IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_ClearTx) (IfxStdIf_InterfaceDriver driver);







typedef void (*IfxStdIf_DPipe_OnReceive) (IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_OnTransmit) (IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_OnError) (IfxStdIf_InterfaceDriver driver);






typedef void (*IfxStdIf_DPipe_ResetSendCount) (IfxStdIf_InterfaceDriver driver);



struct IfxStdIf_DPipe_
{
    IfxStdIf_InterfaceDriver driver;
    boolean txDisabled;


    IfxStdIf_DPipe_Write write;
    IfxStdIf_DPipe_Read read;
    IfxStdIf_DPipe_GetReadCount getReadCount;
    IfxStdIf_DPipe_GetReadEvent getReadEvent;
    IfxStdIf_DPipe_GetWriteCount getWriteCount;
    IfxStdIf_DPipe_GetWriteEvent getWriteEvent;
    IfxStdIf_DPipe_CanReadCount canReadCount;
    IfxStdIf_DPipe_CanWriteCount canWriteCount;
    IfxStdIf_DPipe_FlushTx flushTx;
    IfxStdIf_DPipe_ClearTx clearTx;
    IfxStdIf_DPipe_ClearRx clearRx;
    IfxStdIf_DPipe_OnReceive onReceive;
    IfxStdIf_DPipe_OnTransmit onTransmit;
    IfxStdIf_DPipe_OnError onError;

    IfxStdIf_DPipe_GetSendCount getSendCount;
    IfxStdIf_DPipe_GetTxTimeStamp getTxTimeStamp;
    IfxStdIf_DPipe_ResetSendCount resetSendCount;
};




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_write (IfxStdIf_DPipe * stdif, void *data, Ifx_SizeT * count, Ifx_TickTime timeout)
{
    return stdif->write (stdif->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_read (IfxStdIf_DPipe * stdif, void *data, Ifx_SizeT * count, Ifx_TickTime timeout)
{
    return stdif->read (stdif->driver, data, count, timeout);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getReadCount (IfxStdIf_DPipe * stdif)
{
    return stdif->getReadCount (stdif->driver);
}




static inline __attribute__ ((always_inline)) sint32 IfxStdIf_DPipe_getWriteCount (IfxStdIf_DPipe * stdif)
{
    return stdif->getWriteCount (stdif->driver);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_canReadCount (IfxStdIf_DPipe * stdif, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdif->canReadCount (stdif->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_canWriteCount (IfxStdIf_DPipe * stdif, Ifx_SizeT count, Ifx_TickTime timeout)
{
    return stdif->canWriteCount (stdif->driver, count, timeout);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_ReadEvent IfxStdIf_DPipe_getReadEvent (IfxStdIf_DPipe * stdif)
{
    return stdif->getReadEvent (stdif->driver);
}




static inline __attribute__ ((always_inline)) IfxStdIf_DPipe_WriteEvent IfxStdIf_DPipe_getWriteEvent (IfxStdIf_DPipe * stdif)
{
    return stdif->getWriteEvent (stdif->driver);
}




static inline __attribute__ ((always_inline)) boolean IfxStdIf_DPipe_flushTx (IfxStdIf_DPipe * stdif, Ifx_TickTime timeout)
{
    return stdif->flushTx (stdif->driver, timeout);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearTx (IfxStdIf_DPipe * stdif)
{
    stdif->clearTx (stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_clearRx (IfxStdIf_DPipe * stdif)
{
    stdif->clearRx (stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onReceive (IfxStdIf_DPipe * stdif)
{
    stdif->onReceive (stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onTransmit (IfxStdIf_DPipe * stdif)
{
    stdif->onTransmit (stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_onError (IfxStdIf_DPipe * stdif)
{
    stdif->onError (stdif->driver);
}




static inline __attribute__ ((always_inline)) uint32 IfxStdIf_DPipe_getSendCount (IfxStdIf_DPipe * stdif)
{
    return stdif->getSendCount (stdif->driver);
}




static inline __attribute__ ((always_inline)) Ifx_TickTime IfxStdIf_DPipe_getTxTimeStamp (IfxStdIf_DPipe * stdif)
{
    return stdif->getTxTimeStamp (stdif->driver);
}




static inline __attribute__ ((always_inline)) void IfxStdIf_DPipe_resetSendCount (IfxStdIf_DPipe * stdif)
{
    stdif->resetSendCount (stdif->driver);
}


extern void IfxStdIf_DPipe_print (IfxStdIf_DPipe * stdif, pchar format, ...);
# 61 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h" 2
# 86 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
extern void Ifx_Assert_setStandardIo (IfxStdIf_DPipe * standardIo);
# 103 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
extern void Ifx_Assert_doLevel (uint8 level, pchar __assertion, pchar __file, unsigned int __line,
                                    pchar __function);
# 119 "./0_Src/1_SrvSw/SysSe/Bsp/Assert.h"
extern boolean Ifx_Assert_doValidate (boolean expr, uint8 level, pchar __assertion, pchar __file,
                                          unsigned int __line, pchar __function);


extern uint32 Assert_verboseLevel;
# 70 "./0_Src/1_SrvSw/_Utilities/Ifx_Assert.h" 2
# 56 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2
# 92 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef unsigned int IfxCpu_spinLock;



typedef unsigned int IfxCpu_mutexLock;
# 106 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef enum
{
    IfxCpu_CoreMode_halt,
    IfxCpu_CoreMode_run,
    IfxCpu_CoreMode_idle,
    IfxCpu_CoreMode_sleep,
    IfxCpu_CoreMode_stby,
    IfxCpu_CoreMode_unknown
} IfxCpu_CoreMode;



typedef enum
{
    IfxCpu_CounterMode_normal = 0,
    IfxCpu_CounterMode_task = 1
} IfxCpu_CounterMode;
# 132 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef struct
{
    uint32 counter;
    boolean overlfow;
} IfxCpu_Counter;







typedef struct
{
    IfxCpu_Counter instruction;
    IfxCpu_Counter clock;
    IfxCpu_Counter counter1;
    IfxCpu_Counter counter2;
    IfxCpu_Counter counter3;
} IfxCpu_Perf;
# 167 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void);





static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void);
# 183 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd);




static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId);




static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void);
# 203 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu);





extern IfxCpu_CoreMode IfxCpu_getCoreMode(Ifx_CPU *cpu);





extern IfxCpu_ResourceCpu IfxCpu_getIndex(Ifx_CPU *cpu);
# 224 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setCoreMode(Ifx_CPU *cpu, IfxCpu_CoreMode mode);
# 233 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setProgramCounter(Ifx_CPU *cpu, uint32 programCounter);
# 242 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_startCore(Ifx_CPU *cpu, uint32 programCounter);
# 259 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void);
# 269 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void);





static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void);




static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void);
# 289 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled);
# 307 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable);
# 316 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable);




static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void);





static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address);
# 338 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable);
# 349 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable);
# 366 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void);
# 379 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void);







static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void);
# 400 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void);





static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address);






static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address);







static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode);
# 432 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable);







static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void);
# 449 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count);
# 458 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count);







static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count);
# 493 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_acquireMutex(IfxCpu_mutexLock *lock);
# 511 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_releaseMutex(IfxCpu_mutexLock *lock);







extern void IfxCpu_resetSpinLock(IfxCpu_spinLock *lock);
# 538 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setSpinLock(IfxCpu_spinLock *lock, uint32 timeoutCount);
# 553 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern uint32 IfxCpu_getRandomValue(uint32 *seed);







extern uint32 IfxCpu_getRandomValueWithinRange(uint32 *seed, uint32 min, uint32 max);







static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void)
{
    Ifx_CPU_ICR reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE2C" : "=d" (__res) :: "memory"); __res; }));
    return reg.B.IE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void)
{
    boolean enabled;
    enabled = IfxCpu_areInterruptsEnabled();
    __asm__ volatile ("disable" : : : "memory");
    __nop();
    return enabled;
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void)
{
    __asm__ volatile ("enable" : : : "memory");
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xC);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8100" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8100" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xD);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8104" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8104" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void)
{
    __asm__ volatile ("disable" : : : "memory");
    __nop();
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC04);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC04);
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC08);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC08);
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address)
{
    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));
    return ccnt.B.CountValue;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address)
{
    Ifx_CPU_CCNT ccnt;

    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));

    return ccnt.B.SOvf;
}


static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd)
{
    uint32 k;
    uint32 nxt_cxi_val = 0;
    uint32 *prvCsa = 0U;
    uint32 *nxtCsa = csaBegin;

    for (k = 0; k < (((uint32)csaEnd - (uint32)csaBegin) / 64); k++)
    {
        nxt_cxi_val = ((uint32)nxtCsa & (0XFU << 28)) >> 12 | ((uint32)nxtCsa & (0XFFFFU << 6)) >> 6;

        if (k == 0)
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }
        else
        {
            *prvCsa = nxt_cxi_val;
        }

        prvCsa = (uint32 *)nxtCsa;
        nxtCsa += 16;
    }

    *prvCsa = 0;
    do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE3C" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void)
{
    uint16 cpuWdtPassword = IfxScuWdt_getCpuWatchdogPassword();
    {
        IfxScuWdt_clearCpuEndinit(cpuWdtPassword);
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x9204" : "=d" (__res) :: "memory"); __res; }));
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinit(cpuWdtPassword);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address)
{
    uint8 segment = (uint32)address >> 24;
    return ((segment == (8)) || (segment == (9))) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));

    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC04" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC08" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC0C" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC10" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC14" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = 1;
    cctrl.B.CM = mode;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled)
{
    if (enabled != 0)
    {
        __asm__ volatile ("enable" : : : "memory");
    }
}


static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable)
{
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_DCON0 dcon0;
        dcon0.U = 0;
        dcon0.B.DCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (dcon0.U); __asm__ volatile ("mtcr LO:" "0x9040" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    cctrl.B.CE = enable;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable)
{
    if (enable)
    {
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = 0;
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
    }

    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_PCON0 pcon0;
        pcon0.U = 0;
        pcon0.B.PCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (pcon0.U); __asm__ volatile ("mtcr LO:" "0x920C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&(*(Ifx_SCU *)0xF0036000u).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId)
{
    Ifx_CPU_PSW psw;
    ((((safetyId == 0 || safetyId == 1)) || ((2) > Assert_verboseLevel)) ? ((void)0) : Ifx_Assert_doLevel((2),"(safetyId == 0 || safetyId == 1)", "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h", 857, __func__));
    psw.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    psw.B.S = safetyId;
    do { unsigned __newval = (unsigned) ((uint32)psw.U); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void)
{
    IfxCpu_Perf result;


    __stopPerfCounters();

    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    result.clock.counter = ccnt.B.CountValue;
    result.clock.overlfow = ccnt.B.SOvf;

    Ifx_CPU_ICNT icnt;
    icnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    result.instruction.counter = icnt.B.CountValue;
    result.instruction.overlfow = icnt.B.SOvf;

    Ifx_CPU_M1CNT m1cnt;
    m1cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    result.counter1.counter = m1cnt.B.CountValue;
    result.counter1.overlfow = m1cnt.B.SOvf;

    Ifx_CPU_M2CNT m2cnt;
    m2cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    result.counter2.counter = m2cnt.B.CountValue;
    result.counter2.overlfow = m2cnt.B.SOvf;

    Ifx_CPU_M3CNT m3cnt;
    m3cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    result.counter3.counter = m3cnt.B.CountValue;
    result.counter3.overlfow = m3cnt.B.SOvf;
    return result;
}


static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void)
{
    (*(Ifx_SCU *)0xF0036000u).SWRSTCON.B.SWRSTREQ = 1;


    while (1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC04, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC08, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count)
{
    Ifx_CPU_CCTRL cctrl;
    boolean enableBit;

    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    enableBit = cctrl.B.CE;
    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    count &= ~(1U << 31);
    do { unsigned __newval = (unsigned) (count); __asm__ volatile ("mtcr LO:" "address" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = enableBit;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}
# 109 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
typedef struct _Ifx_STM_ACCEN0_Bits
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
} Ifx_STM_ACCEN0_Bits;


typedef struct _Ifx_STM_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_STM_ACCEN1_Bits;


typedef struct _Ifx_STM_CAP_Bits
{
    unsigned int STMCAP63_32 : 32;
} Ifx_STM_CAP_Bits;


typedef struct _Ifx_STM_CAPSV_Bits
{
    unsigned int STMCAP63_32 : 32;
} Ifx_STM_CAPSV_Bits;


typedef struct _Ifx_STM_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_STM_CLC_Bits;


typedef struct _Ifx_STM_CMCON_Bits
{
    unsigned int MSIZE0 : 5;
    unsigned int reserved_5 : 3;
    unsigned int MSTART0 : 5;
    unsigned int reserved_13 : 3;
    unsigned int MSIZE1 : 5;
    unsigned int reserved_21 : 3;
    unsigned int MSTART1 : 5;
    unsigned int reserved_29 : 3;
} Ifx_STM_CMCON_Bits;


typedef struct _Ifx_STM_CMP_Bits
{
    unsigned int CMPVAL : 32;
} Ifx_STM_CMP_Bits;


typedef struct _Ifx_STM_ICR_Bits
{
    unsigned int CMP0EN : 1;
    unsigned int CMP0IR : 1;
    unsigned int CMP0OS : 1;
    unsigned int reserved_3 : 1;
    unsigned int CMP1EN : 1;
    unsigned int CMP1IR : 1;
    unsigned int CMP1OS : 1;
    unsigned int reserved_7 : 25;
} Ifx_STM_ICR_Bits;


typedef struct _Ifx_STM_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_STM_ID_Bits;


typedef struct _Ifx_STM_ISCR_Bits
{
    unsigned int CMP0IRR : 1;
    unsigned int CMP0IRS : 1;
    unsigned int CMP1IRR : 1;
    unsigned int CMP1IRS : 1;
    unsigned int reserved_4 : 28;
} Ifx_STM_ISCR_Bits;


typedef struct _Ifx_STM_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_STM_KRST0_Bits;


typedef struct _Ifx_STM_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_STM_KRST1_Bits;


typedef struct _Ifx_STM_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_STM_KRSTCLR_Bits;


typedef struct _Ifx_STM_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_STM_OCS_Bits;


typedef struct _Ifx_STM_TIM0_Bits
{
    unsigned int STM31_0 : 32;
} Ifx_STM_TIM0_Bits;


typedef struct _Ifx_STM_TIM0SV_Bits
{
    unsigned int STM31_0 : 32;
} Ifx_STM_TIM0SV_Bits;


typedef struct _Ifx_STM_TIM1_Bits
{
    unsigned int STM35_4 : 32;
} Ifx_STM_TIM1_Bits;


typedef struct _Ifx_STM_TIM2_Bits
{
    unsigned int STM39_8 : 32;
} Ifx_STM_TIM2_Bits;


typedef struct _Ifx_STM_TIM3_Bits
{
    unsigned int STM43_12 : 32;
} Ifx_STM_TIM3_Bits;


typedef struct _Ifx_STM_TIM4_Bits
{
    unsigned int STM47_16 : 32;
} Ifx_STM_TIM4_Bits;


typedef struct _Ifx_STM_TIM5_Bits
{
    unsigned int STM51_20 : 32;
} Ifx_STM_TIM5_Bits;


typedef struct _Ifx_STM_TIM6_Bits
{
    unsigned int STM63_32 : 32;
} Ifx_STM_TIM6_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ACCEN0_Bits B;
} Ifx_STM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ACCEN1_Bits B;
} Ifx_STM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CAP_Bits B;
} Ifx_STM_CAP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CAPSV_Bits B;
} Ifx_STM_CAPSV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CLC_Bits B;
} Ifx_STM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CMCON_Bits B;
} Ifx_STM_CMCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_CMP_Bits B;
} Ifx_STM_CMP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ICR_Bits B;
} Ifx_STM_ICR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ID_Bits B;
} Ifx_STM_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_ISCR_Bits B;
} Ifx_STM_ISCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRST0_Bits B;
} Ifx_STM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRST1_Bits B;
} Ifx_STM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_KRSTCLR_Bits B;
} Ifx_STM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_OCS_Bits B;
} Ifx_STM_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM0_Bits B;
} Ifx_STM_TIM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM0SV_Bits B;
} Ifx_STM_TIM0SV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM1_Bits B;
} Ifx_STM_TIM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM2_Bits B;
} Ifx_STM_TIM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM3_Bits B;
} Ifx_STM_TIM3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM4_Bits B;
} Ifx_STM_TIM4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM5_Bits B;
} Ifx_STM_TIM5;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_STM_TIM6_Bits B;
} Ifx_STM_TIM6;
# 429 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
typedef volatile struct _Ifx_STM
{
    Ifx_STM_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_STM_ID ID;
    unsigned char reserved_C[4];
    Ifx_STM_TIM0 TIM0;
    Ifx_STM_TIM1 TIM1;
    Ifx_STM_TIM2 TIM2;
    Ifx_STM_TIM3 TIM3;
    Ifx_STM_TIM4 TIM4;
    Ifx_STM_TIM5 TIM5;
    Ifx_STM_TIM6 TIM6;
    Ifx_STM_CAP CAP;
    Ifx_STM_CMP CMP[2];
    Ifx_STM_CMCON CMCON;
    Ifx_STM_ICR ICR;
    Ifx_STM_ISCR ISCR;
    unsigned char reserved_44[12];
    Ifx_STM_TIM0SV TIM0SV;
    Ifx_STM_CAPSV CAPSV;
    unsigned char reserved_58[144];
    Ifx_STM_OCS OCS;
    Ifx_STM_KRSTCLR KRSTCLR;
    Ifx_STM_KRST1 KRST1;
    Ifx_STM_KRST0 KRST0;
    Ifx_STM_ACCEN1 ACCEN1;
    Ifx_STM_ACCEN0 ACCEN0;
} Ifx_STM;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_reg.h" 2
# 110 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
typedef struct _Ifx_FLASH_ACCEN0_Bits
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
} Ifx_FLASH_ACCEN0_Bits;


typedef struct _Ifx_FLASH_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_FLASH_ACCEN1_Bits;


typedef struct _Ifx_FLASH_CBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_CFG_Bits;


typedef struct _Ifx_FLASH_CBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int VLD1 : 1;
    unsigned int VLD2 : 1;
    unsigned int VLD3 : 1;
    unsigned int VLD4 : 1;
    unsigned int VLD5 : 1;
    unsigned int VLD6 : 1;
    unsigned int VLD7 : 1;
    unsigned int VLD8 : 1;
    unsigned int VLD9 : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_STAT_Bits;


typedef struct _Ifx_FLASH_CBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_CBAB_TOP_Bits;


typedef struct _Ifx_FLASH_COMM0_Bits
{
    unsigned int STATUS : 8;
    unsigned int reserved_8 : 24;
} Ifx_FLASH_COMM0_Bits;


typedef struct _Ifx_FLASH_COMM1_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM1_Bits;


typedef struct _Ifx_FLASH_COMM2_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM2_Bits;


typedef struct _Ifx_FLASH_ECCRD_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRD_Bits;


typedef struct _Ifx_FLASH_ECCRP_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRP_Bits;


typedef struct _Ifx_FLASH_ECCW_Bits
{
    unsigned int WCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int DECENCDIS : 1;
    unsigned int PECENCDIS : 1;
} Ifx_FLASH_ECCW_Bits;


typedef struct _Ifx_FLASH_FCON_Bits
{
    unsigned int WSPFLASH : 4;
    unsigned int WSECPF : 2;
    unsigned int WSDFLASH : 6;
    unsigned int WSECDF : 3;
    unsigned int IDLE : 1;
    unsigned int ESLDIS : 1;
    unsigned int SLEEP : 1;
    unsigned int NSAFECC : 1;
    unsigned int STALL : 1;
    unsigned int RES21 : 2;
    unsigned int RES23 : 2;
    unsigned int VOPERM : 1;
    unsigned int SQERM : 1;
    unsigned int PROERM : 1;
    unsigned int reserved_27 : 3;
    unsigned int PR5V : 1;
    unsigned int EOBM : 1;
} Ifx_FLASH_FCON_Bits;


typedef struct _Ifx_FLASH_FPRO_Bits
{
    unsigned int PROINP : 1;
    unsigned int PRODISP : 1;
    unsigned int PROIND : 1;
    unsigned int PRODISD : 1;
    unsigned int PROINHSMCOTP : 1;
    unsigned int RES5 : 1;
    unsigned int PROINOTP : 1;
    unsigned int RES7 : 1;
    unsigned int PROINDBG : 1;
    unsigned int PRODISDBG : 1;
    unsigned int PROINHSM : 1;
    unsigned int reserved_11 : 5;
    unsigned int DCFP : 1;
    unsigned int DDFP : 1;
    unsigned int DDFPX : 1;
    unsigned int reserved_19 : 1;
    unsigned int DDFD : 1;
    unsigned int reserved_21 : 1;
    unsigned int ENPE : 2;
    unsigned int reserved_24 : 8;
} Ifx_FLASH_FPRO_Bits;


typedef struct _Ifx_FLASH_FSR_Bits
{
    unsigned int FABUSY : 1;
    unsigned int D0BUSY : 1;
    unsigned int RES1 : 1;
    unsigned int P0BUSY : 1;
    unsigned int RES4 : 1;
    unsigned int RES5 : 1;
    unsigned int RES6 : 1;
    unsigned int PROG : 1;
    unsigned int ERASE : 1;
    unsigned int PFPAGE : 1;
    unsigned int DFPAGE : 1;
    unsigned int OPER : 1;
    unsigned int SQER : 1;
    unsigned int PROER : 1;
    unsigned int PFSBER : 1;
    unsigned int PFDBER : 1;
    unsigned int PFMBER : 1;
    unsigned int RES17 : 1;
    unsigned int DFSBER : 1;
    unsigned int DFDBER : 1;
    unsigned int DFTBER : 1;
    unsigned int DFMBER : 1;
    unsigned int SRIADDERR : 1;
    unsigned int reserved_23 : 2;
    unsigned int PVER : 1;
    unsigned int EVER : 1;
    unsigned int SPND : 1;
    unsigned int SLM : 1;
    unsigned int reserved_29 : 1;
    unsigned int ORIER : 1;
    unsigned int reserved_31 : 1;
} Ifx_FLASH_FSR_Bits;


typedef struct _Ifx_FLASH_HSMFCON_Bits
{
    unsigned int LCKHSMUCB : 2;
    unsigned int reserved_2 : 22;
    unsigned int VOPERM : 1;
    unsigned int SQERM : 1;
    unsigned int reserved_26 : 5;
    unsigned int EOBM : 1;
} Ifx_FLASH_HSMFCON_Bits;


typedef struct _Ifx_FLASH_HSMFSR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int D1BUSY : 1;
    unsigned int reserved_3 : 4;
    unsigned int PROG : 1;
    unsigned int ERASE : 1;
    unsigned int reserved_9 : 1;
    unsigned int DFPAGE : 1;
    unsigned int OPER : 1;
    unsigned int SQER : 1;
    unsigned int reserved_13 : 12;
    unsigned int PVER : 1;
    unsigned int EVER : 1;
    unsigned int SPND : 1;
    unsigned int reserved_28 : 4;
} Ifx_FLASH_HSMFSR_Bits;


typedef struct _Ifx_FLASH_HSMMARD_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SELD1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SPND : 1;
    unsigned int SPNDERR : 1;
    unsigned int reserved_5 : 27;
} Ifx_FLASH_HSMMARD_Bits;


typedef struct _Ifx_FLASH_HSMRRAD_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int ADD : 29;
} Ifx_FLASH_HSMRRAD_Bits;


typedef struct _Ifx_FLASH_HSMRRCT_Bits
{
    unsigned int STRT : 1;
    unsigned int STP : 1;
    unsigned int BUSY : 1;
    unsigned int DONE : 1;
    unsigned int ERR : 1;
    unsigned int reserved_5 : 3;
    unsigned int EOBM : 1;
    unsigned int reserved_9 : 7;
    unsigned int CNT : 16;
} Ifx_FLASH_HSMRRCT_Bits;


typedef struct _Ifx_FLASH_HSMRRD0_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_HSMRRD0_Bits;


typedef struct _Ifx_FLASH_HSMRRD1_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_HSMRRD1_Bits;


typedef struct _Ifx_FLASH_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_FLASH_ID_Bits;


typedef struct _Ifx_FLASH_MARD_Bits
{
    unsigned int HMARGIN : 1;
    unsigned int SELD0 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SPND : 1;
    unsigned int SPNDERR : 1;
    unsigned int reserved_5 : 10;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARD_Bits;


typedef struct _Ifx_FLASH_MARP_Bits
{
    unsigned int SELP0 : 1;
    unsigned int RES1 : 1;
    unsigned int RES2 : 1;
    unsigned int RES3 : 1;
    unsigned int reserved_4 : 11;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARP_Bits;


typedef struct _Ifx_FLASH_PROCOND_Bits
{
    unsigned int L : 1;
    unsigned int NSAFECC : 1;
    unsigned int RAMIN : 2;
    unsigned int RAMINSEL : 4;
    unsigned int RES8 : 1;
    unsigned int RES9 : 1;
    unsigned int RES10 : 1;
    unsigned int RES11 : 1;
    unsigned int RES12 : 1;
    unsigned int RES13 : 1;
    unsigned int RES14 : 1;
    unsigned int RES15 : 1;
    unsigned int ESR0CNT : 12;
    unsigned int RES29 : 2;
    unsigned int RES30 : 1;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCOND_Bits;


typedef struct _Ifx_FLASH_PROCONDBG_Bits
{
    unsigned int OCDSDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int EDM : 2;
    unsigned int reserved_4 : 28;
} Ifx_FLASH_PROCONDBG_Bits;


typedef struct _Ifx_FLASH_PROCONHSM_Bits
{
    unsigned int HSMDBGDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int TSTIFLCK : 1;
    unsigned int HSMTSTDIS : 1;
    unsigned int RES15 : 12;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_PROCONHSM_Bits;


typedef struct _Ifx_FLASH_PROCONHSMCOTP_Bits
{
    unsigned int HSMBOOTEN : 1;
    unsigned int SSWWAIT : 1;
    unsigned int HSMDX : 1;
    unsigned int HSM6X : 1;
    unsigned int HSM16X : 1;
    unsigned int HSM17X : 1;
    unsigned int S6ROM : 1;
    unsigned int HSMENPINS : 2;
    unsigned int HSMENRES : 2;
    unsigned int DESTDBG : 2;
    unsigned int BLKFLAN : 1;
    unsigned int BOOTSEL : 2;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int reserved_18 : 14;
} Ifx_FLASH_PROCONHSMCOTP_Bits;


typedef struct _Ifx_FLASH_PROCONOTP_Bits
{
    unsigned int S0ROM : 1;
    unsigned int S1ROM : 1;
    unsigned int S2ROM : 1;
    unsigned int S3ROM : 1;
    unsigned int S4ROM : 1;
    unsigned int S5ROM : 1;
    unsigned int S6ROM : 1;
    unsigned int S7ROM : 1;
    unsigned int S8ROM : 1;
    unsigned int S9ROM : 1;
    unsigned int S10ROM : 1;
    unsigned int S11ROM : 1;
    unsigned int S12ROM : 1;
    unsigned int S13ROM : 1;
    unsigned int S14ROM : 1;
    unsigned int S15ROM : 1;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int S18ROM : 1;
    unsigned int S19ROM : 1;
    unsigned int S20ROM : 1;
    unsigned int S21ROM : 1;
    unsigned int S22ROM : 1;
    unsigned int S23ROM : 1;
    unsigned int S24ROM : 1;
    unsigned int S25ROM : 1;
    unsigned int S26ROM : 1;
    unsigned int reserved_27 : 2;
    unsigned int BML : 2;
    unsigned int TP : 1;
} Ifx_FLASH_PROCONOTP_Bits;


typedef struct _Ifx_FLASH_PROCONP_Bits
{
    unsigned int S0L : 1;
    unsigned int S1L : 1;
    unsigned int S2L : 1;
    unsigned int S3L : 1;
    unsigned int S4L : 1;
    unsigned int S5L : 1;
    unsigned int S6L : 1;
    unsigned int S7L : 1;
    unsigned int S8L : 1;
    unsigned int S9L : 1;
    unsigned int S10L : 1;
    unsigned int S11L : 1;
    unsigned int S12L : 1;
    unsigned int S13L : 1;
    unsigned int S14L : 1;
    unsigned int S15L : 1;
    unsigned int S16L : 1;
    unsigned int S17L : 1;
    unsigned int S18L : 1;
    unsigned int S19L : 1;
    unsigned int S20L : 1;
    unsigned int S21L : 1;
    unsigned int S22L : 1;
    unsigned int S23L : 1;
    unsigned int S24L : 1;
    unsigned int S25L : 1;
    unsigned int S26L : 1;
    unsigned int reserved_27 : 4;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCONP_Bits;


typedef struct _Ifx_FLASH_PROCONWOP_Bits
{
    unsigned int S0WOP : 1;
    unsigned int S1WOP : 1;
    unsigned int S2WOP : 1;
    unsigned int S3WOP : 1;
    unsigned int S4WOP : 1;
    unsigned int S5WOP : 1;
    unsigned int S6WOP : 1;
    unsigned int S7WOP : 1;
    unsigned int S8WOP : 1;
    unsigned int S9WOP : 1;
    unsigned int S10WOP : 1;
    unsigned int S11WOP : 1;
    unsigned int S12WOP : 1;
    unsigned int S13WOP : 1;
    unsigned int S14WOP : 1;
    unsigned int S15WOP : 1;
    unsigned int S16WOP : 1;
    unsigned int S17WOP : 1;
    unsigned int S18WOP : 1;
    unsigned int S19WOP : 1;
    unsigned int S20WOP : 1;
    unsigned int S21WOP : 1;
    unsigned int S22WOP : 1;
    unsigned int S23WOP : 1;
    unsigned int S24WOP : 1;
    unsigned int S25WOP : 1;
    unsigned int S26WOP : 1;
    unsigned int reserved_27 : 4;
    unsigned int DATM : 1;
} Ifx_FLASH_PROCONWOP_Bits;


typedef struct _Ifx_FLASH_RDB_CFG0_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG0_Bits;


typedef struct _Ifx_FLASH_RDB_CFG1_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG1_Bits;


typedef struct _Ifx_FLASH_RDB_CFG2_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG2_Bits;


typedef struct _Ifx_FLASH_RRAD_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int ADD : 29;
} Ifx_FLASH_RRAD_Bits;


typedef struct _Ifx_FLASH_RRCT_Bits
{
    unsigned int STRT : 1;
    unsigned int STP : 1;
    unsigned int BUSY : 1;
    unsigned int DONE : 1;
    unsigned int ERR : 1;
    unsigned int reserved_5 : 3;
    unsigned int EOBM : 1;
    unsigned int reserved_9 : 7;
    unsigned int CNT : 16;
} Ifx_FLASH_RRCT_Bits;


typedef struct _Ifx_FLASH_RRD0_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD0_Bits;


typedef struct _Ifx_FLASH_RRD1_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD1_Bits;


typedef struct _Ifx_FLASH_UBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_UBAB_CFG_Bits;


typedef struct _Ifx_FLASH_UBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int reserved_1 : 31;
} Ifx_FLASH_UBAB_STAT_Bits;


typedef struct _Ifx_FLASH_UBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_UBAB_TOP_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN0_Bits B;
} Ifx_FLASH_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ACCEN1_Bits B;
} Ifx_FLASH_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_CFG_Bits B;
} Ifx_FLASH_CBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_STAT_Bits B;
} Ifx_FLASH_CBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_CBAB_TOP_Bits B;
} Ifx_FLASH_CBAB_TOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM0_Bits B;
} Ifx_FLASH_COMM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM1_Bits B;
} Ifx_FLASH_COMM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_COMM2_Bits B;
} Ifx_FLASH_COMM2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRD_Bits B;
} Ifx_FLASH_ECCRD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCRP_Bits B;
} Ifx_FLASH_ECCRP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ECCW_Bits B;
} Ifx_FLASH_ECCW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FCON_Bits B;
} Ifx_FLASH_FCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FPRO_Bits B;
} Ifx_FLASH_FPRO;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_FSR_Bits B;
} Ifx_FLASH_FSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMFCON_Bits B;
} Ifx_FLASH_HSMFCON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMFSR_Bits B;
} Ifx_FLASH_HSMFSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMMARD_Bits B;
} Ifx_FLASH_HSMMARD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRAD_Bits B;
} Ifx_FLASH_HSMRRAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRCT_Bits B;
} Ifx_FLASH_HSMRRCT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRD0_Bits B;
} Ifx_FLASH_HSMRRD0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_HSMRRD1_Bits B;
} Ifx_FLASH_HSMRRD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_ID_Bits B;
} Ifx_FLASH_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARD_Bits B;
} Ifx_FLASH_MARD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_MARP_Bits B;
} Ifx_FLASH_MARP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCOND_Bits B;
} Ifx_FLASH_PROCOND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONDBG_Bits B;
} Ifx_FLASH_PROCONDBG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSM_Bits B;
} Ifx_FLASH_PROCONHSM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONHSMCOTP_Bits B;
} Ifx_FLASH_PROCONHSMCOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONOTP_Bits B;
} Ifx_FLASH_PROCONOTP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONP_Bits B;
} Ifx_FLASH_PROCONP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_PROCONWOP_Bits B;
} Ifx_FLASH_PROCONWOP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG0_Bits B;
} Ifx_FLASH_RDB_CFG0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG1_Bits B;
} Ifx_FLASH_RDB_CFG1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RDB_CFG2_Bits B;
} Ifx_FLASH_RDB_CFG2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRAD_Bits B;
} Ifx_FLASH_RRAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRCT_Bits B;
} Ifx_FLASH_RRCT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD0_Bits B;
} Ifx_FLASH_RRD0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_RRD1_Bits B;
} Ifx_FLASH_RRD1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_CFG_Bits B;
} Ifx_FLASH_UBAB_CFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_STAT_Bits B;
} Ifx_FLASH_UBAB_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_FLASH_UBAB_TOP_Bits B;
} Ifx_FLASH_UBAB_TOP;
# 950 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH_CBAB
{
    Ifx_FLASH_CBAB_CFG CFG;
    Ifx_FLASH_CBAB_STAT STAT;
    Ifx_FLASH_CBAB_TOP TOP;
    unsigned char reserved_C[36];
} Ifx_FLASH_CBAB;


typedef volatile struct _Ifx_FLASH_RDB
{
    Ifx_FLASH_RDB_CFG0 CFG0;
    Ifx_FLASH_RDB_CFG1 CFG1;
    Ifx_FLASH_RDB_CFG2 CFG2;
    unsigned char reserved_C[36];
} Ifx_FLASH_RDB;


typedef volatile struct _Ifx_FLASH_UBAB
{
    Ifx_FLASH_UBAB_CFG CFG;
    Ifx_FLASH_UBAB_STAT STAT;
    Ifx_FLASH_UBAB_TOP TOP;
    unsigned char reserved_C[80];
} Ifx_FLASH_UBAB;
# 987 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH
{
    Ifx_FLASH_COMM0 COMM0;
    Ifx_FLASH_COMM1 COMM1;
    Ifx_FLASH_COMM2 COMM2;
    unsigned char reserved_C[4092];
    Ifx_FLASH_ID ID;
    unsigned char reserved_100C[4];
    Ifx_FLASH_FSR FSR;
    Ifx_FLASH_FCON FCON;
    unsigned char reserved_1018[4];
    Ifx_FLASH_FPRO FPRO;
    Ifx_FLASH_PROCONP PROCONP[1];
    unsigned char reserved_1024[12];
    Ifx_FLASH_PROCOND PROCOND;
    Ifx_FLASH_PROCONHSMCOTP PROCONHSMCOTP;
    Ifx_FLASH_PROCONOTP PROCONOTP[1];
    unsigned char reserved_103C[12];
    Ifx_FLASH_PROCONWOP PROCONWOP[1];
    unsigned char reserved_104C[12];
    Ifx_FLASH_PROCONDBG PROCONDBG;
    Ifx_FLASH_PROCONHSM PROCONHSM;
    Ifx_FLASH_RDB RDBCFG[1];
    Ifx_FLASH_ECCW ECCW;
    Ifx_FLASH_ECCRP ECCRP[1];
    unsigned char reserved_1098[12];
    Ifx_FLASH_ECCRD ECCRD;
    Ifx_FLASH_MARP MARP;
    Ifx_FLASH_MARD MARD;
    unsigned char reserved_10B0[4];
    Ifx_FLASH_CBAB CBAB[1];
    Ifx_FLASH_UBAB UBAB[1];
    Ifx_FLASH_RRCT RRCT;
    Ifx_FLASH_RRD0 RRD0;
    Ifx_FLASH_RRD1 RRD1;
    Ifx_FLASH_RRAD RRAD;
    unsigned char reserved_1150[176];
    Ifx_FLASH_HSMFSR HSMFSR;
    Ifx_FLASH_HSMFCON HSMFCON;
    Ifx_FLASH_HSMMARD HSMMARD;
    Ifx_FLASH_HSMRRCT HSMRRCT;
    Ifx_FLASH_HSMRRD0 HSMRRD0;
    Ifx_FLASH_HSMRRD1 HSMRRD1;
    Ifx_FLASH_HSMRRAD HSMRRAD;
    unsigned char reserved_121C[476];
    Ifx_FLASH_ACCEN1 ACCEN1;
    Ifx_FLASH_ACCEN0 ACCEN0;
} Ifx_FLASH;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_reg.h" 2
# 112 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 1
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h" 2







typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Evrwup_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
} IfxScu_Hwcfg_In;


typedef const struct
{
    Ifx_SCU* module;
    uint8 channelId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Req_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Dcdcsync_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Emgstop_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Wdtlck_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Extclk_Out;

extern IfxScu_Emgstop_In IfxScu_EMGSTOPA_P33_8_IN;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPB_P21_2_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPA_P14_1_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPB_P15_1_IN;
extern IfxScu_Extclk_Out IfxScu_EXTCLK0_P23_1_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P11_12_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P23_1_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P33_10_OUT;
extern IfxScu_Hwcfg_In IfxScu_HWCFG0_DCLDO_P14_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG2_EVR13_P14_2_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG3_BMI_P14_3_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG4_P10_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG5_P10_6_IN;
extern IfxScu_Req_In IfxScu_REQ0_P15_4_IN;
extern IfxScu_Req_In IfxScu_REQ10_P14_3_IN;
extern IfxScu_Req_In IfxScu_REQ11_P20_9_IN;
extern IfxScu_Req_In IfxScu_REQ12_P11_10_IN;
extern IfxScu_Req_In IfxScu_REQ13_P15_5_IN;
extern IfxScu_Req_In IfxScu_REQ14_P02_1_IN;
extern IfxScu_Req_In IfxScu_REQ15_P14_1_IN;
extern IfxScu_Req_In IfxScu_REQ16_P15_1_IN;
extern IfxScu_Req_In IfxScu_REQ17_P33_11_IN;
extern IfxScu_Req_In IfxScu_REQ1_P15_8_IN;
extern IfxScu_Req_In IfxScu_REQ2_P10_2_IN;
extern IfxScu_Req_In IfxScu_REQ3_P10_3_IN;
extern IfxScu_Req_In IfxScu_REQ6_P02_0_IN;
extern IfxScu_Req_In IfxScu_REQ7_P00_4_IN;
extern IfxScu_Req_In IfxScu_REQ8_P33_7_IN;
extern IfxScu_Req_In IfxScu_REQ9_P20_0_IN;
extern IfxScu_Wdtlck_Out IfxScu_WDT0LCK_P20_8_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDTSLCK_P20_9_OUT;
# 138 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h"
extern const IfxScu_Emgstop_In *IfxScu_Emgstop_In_pinTable[1][2];


extern const IfxScu_Evrwup_In *IfxScu_Evrwup_In_pinTable[1][2];


extern const IfxScu_Extclk_Out *IfxScu_Extclk_Out_pinTable[1][4];


extern const IfxScu_Hwcfg_In *IfxScu_Hwcfg_In_pinTable[1][5];


extern const IfxScu_Req_In *IfxScu_Req_In_pinTable[1][8][4];


extern const IfxScu_Wdtlck_Out *IfxScu_Wdtlck_Out_pinTable[1][2];
# 113 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 129 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
typedef void (*IfxScuCcu_PllStepsFunctionHook)(void);
# 143 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
typedef enum
{
    IfxScuCcu_K1divider_1 = 0,
    IfxScuCcu_K1divider_2,
    IfxScuCcu_K1divider_3,
    IfxScuCcu_K1divider_4,
    IfxScuCcu_K1divider_5,
    IfxScuCcu_K1divider_6,
    IfxScuCcu_K1divider_7,
    IfxScuCcu_K1divider_8,
    IfxScuCcu_K1divider_9,
    IfxScuCcu_K1divider_10,
    IfxScuCcu_K1divider_11,
    IfxScuCcu_K1divider_12,
    IfxScuCcu_K1divider_13,
    IfxScuCcu_K1divider_14,
    IfxScuCcu_K1divider_15,
    IfxScuCcu_K1divider_16,
    IfxScuCcu_K1divider_17,
    IfxScuCcu_K1divider_18,
    IfxScuCcu_K1divider_19,
    IfxScuCcu_K1divider_20,
    IfxScuCcu_K1divider_21,
    IfxScuCcu_K1divider_22,
    IfxScuCcu_K1divider_23,
    IfxScuCcu_K1divider_24,
    IfxScuCcu_K1divider_25,
    IfxScuCcu_K1divider_26,
    IfxScuCcu_K1divider_27,
    IfxScuCcu_K1divider_28,
    IfxScuCcu_K1divider_29,
    IfxScuCcu_K1divider_30,
    IfxScuCcu_K1divider_31,
    IfxScuCcu_K1divider_32,
    IfxScuCcu_K1divider_33,
    IfxScuCcu_K1divider_34,
    IfxScuCcu_K1divider_35,
    IfxScuCcu_K1divider_36,
    IfxScuCcu_K1divider_37,
    IfxScuCcu_K1divider_38,
    IfxScuCcu_K1divider_39,
    IfxScuCcu_K1divider_40,
    IfxScuCcu_K1divider_41,
    IfxScuCcu_K1divider_42,
    IfxScuCcu_K1divider_43,
    IfxScuCcu_K1divider_44,
    IfxScuCcu_K1divider_45,
    IfxScuCcu_K1divider_46,
    IfxScuCcu_K1divider_47,
    IfxScuCcu_K1divider_48,
    IfxScuCcu_K1divider_49,
    IfxScuCcu_K1divider_50,
    IfxScuCcu_K1divider_51,
    IfxScuCcu_K1divider_52,
    IfxScuCcu_K1divider_53,
    IfxScuCcu_K1divider_54,
    IfxScuCcu_K1divider_55,
    IfxScuCcu_K1divider_56,
    IfxScuCcu_K1divider_57,
    IfxScuCcu_K1divider_58,
    IfxScuCcu_K1divider_59,
    IfxScuCcu_K1divider_60,
    IfxScuCcu_K1divider_61,
    IfxScuCcu_K1divider_62,
    IfxScuCcu_K1divider_63,
    IfxScuCcu_K1divider_64,
    IfxScuCcu_K1divider_65,
    IfxScuCcu_K1divider_66,
    IfxScuCcu_K1divider_67,
    IfxScuCcu_K1divider_68,
    IfxScuCcu_K1divider_69,
    IfxScuCcu_K1divider_70,
    IfxScuCcu_K1divider_71,
    IfxScuCcu_K1divider_72,
    IfxScuCcu_K1divider_73,
    IfxScuCcu_K1divider_74,
    IfxScuCcu_K1divider_75,
    IfxScuCcu_K1divider_76,
    IfxScuCcu_K1divider_77,
    IfxScuCcu_K1divider_78,
    IfxScuCcu_K1divider_79,
    IfxScuCcu_K1divider_80,
    IfxScuCcu_K1divider_81,
    IfxScuCcu_K1divider_82,
    IfxScuCcu_K1divider_83,
    IfxScuCcu_K1divider_84,
    IfxScuCcu_K1divider_85,
    IfxScuCcu_K1divider_86,
    IfxScuCcu_K1divider_87,
    IfxScuCcu_K1divider_88,
    IfxScuCcu_K1divider_89,
    IfxScuCcu_K1divider_90,
    IfxScuCcu_K1divider_91,
    IfxScuCcu_K1divider_92,
    IfxScuCcu_K1divider_93,
    IfxScuCcu_K1divider_94,
    IfxScuCcu_K1divider_95,
    IfxScuCcu_K1divider_96,
    IfxScuCcu_K1divider_97,
    IfxScuCcu_K1divider_98,
    IfxScuCcu_K1divider_99,
    IfxScuCcu_K1divider_100,
    IfxScuCcu_K1divider_101,
    IfxScuCcu_K1divider_102,
    IfxScuCcu_K1divider_103,
    IfxScuCcu_K1divider_104,
    IfxScuCcu_K1divider_105,
    IfxScuCcu_K1divider_106,
    IfxScuCcu_K1divider_107,
    IfxScuCcu_K1divider_108,
    IfxScuCcu_K1divider_109,
    IfxScuCcu_K1divider_110,
    IfxScuCcu_K1divider_111,
    IfxScuCcu_K1divider_112,
    IfxScuCcu_K1divider_113,
    IfxScuCcu_K1divider_114,
    IfxScuCcu_K1divider_115,
    IfxScuCcu_K1divider_116,
    IfxScuCcu_K1divider_117,
    IfxScuCcu_K1divider_118,
    IfxScuCcu_K1divider_119,
    IfxScuCcu_K1divider_120,
    IfxScuCcu_K1divider_121,
    IfxScuCcu_K1divider_122,
    IfxScuCcu_K1divider_123,
    IfxScuCcu_K1divider_124,
    IfxScuCcu_K1divider_125,
    IfxScuCcu_K1divider_126,
    IfxScuCcu_K1divider_127,
    IfxScuCcu_K1divider_128
} IfxScuCcu_K1divider;



typedef enum
{
    IfxScuCcu_K2divider_1 = 0,
    IfxScuCcu_K2divider_2,
    IfxScuCcu_K2divider_3,
    IfxScuCcu_K2divider_4,
    IfxScuCcu_K2divider_5,
    IfxScuCcu_K2divider_6,
    IfxScuCcu_K2divider_7,
    IfxScuCcu_K2divider_8,
    IfxScuCcu_K2divider_9,
    IfxScuCcu_K2divider_10,
    IfxScuCcu_K2divider_11,
    IfxScuCcu_K2divider_12,
    IfxScuCcu_K2divider_13,
    IfxScuCcu_K2divider_14,
    IfxScuCcu_K2divider_15,
    IfxScuCcu_K2divider_16,
    IfxScuCcu_K2divider_17,
    IfxScuCcu_K2divider_18,
    IfxScuCcu_K2divider_19,
    IfxScuCcu_K2divider_20,
    IfxScuCcu_K2divider_21,
    IfxScuCcu_K2divider_22,
    IfxScuCcu_K2divider_23,
    IfxScuCcu_K2divider_24,
    IfxScuCcu_K2divider_25,
    IfxScuCcu_K2divider_26,
    IfxScuCcu_K2divider_27,
    IfxScuCcu_K2divider_28,
    IfxScuCcu_K2divider_29,
    IfxScuCcu_K2divider_30,
    IfxScuCcu_K2divider_31,
    IfxScuCcu_K2divider_32,
    IfxScuCcu_K2divider_33,
    IfxScuCcu_K2divider_34,
    IfxScuCcu_K2divider_35,
    IfxScuCcu_K2divider_36,
    IfxScuCcu_K2divider_37,
    IfxScuCcu_K2divider_38,
    IfxScuCcu_K2divider_39,
    IfxScuCcu_K2divider_40,
    IfxScuCcu_K2divider_41,
    IfxScuCcu_K2divider_42,
    IfxScuCcu_K2divider_43,
    IfxScuCcu_K2divider_44,
    IfxScuCcu_K2divider_45,
    IfxScuCcu_K2divider_46,
    IfxScuCcu_K2divider_47,
    IfxScuCcu_K2divider_48,
    IfxScuCcu_K2divider_49,
    IfxScuCcu_K2divider_50,
    IfxScuCcu_K2divider_51,
    IfxScuCcu_K2divider_52,
    IfxScuCcu_K2divider_53,
    IfxScuCcu_K2divider_54,
    IfxScuCcu_K2divider_55,
    IfxScuCcu_K2divider_56,
    IfxScuCcu_K2divider_57,
    IfxScuCcu_K2divider_58,
    IfxScuCcu_K2divider_59,
    IfxScuCcu_K2divider_60,
    IfxScuCcu_K2divider_61,
    IfxScuCcu_K2divider_62,
    IfxScuCcu_K2divider_63,
    IfxScuCcu_K2divider_64,
    IfxScuCcu_K2divider_65,
    IfxScuCcu_K2divider_66,
    IfxScuCcu_K2divider_67,
    IfxScuCcu_K2divider_68,
    IfxScuCcu_K2divider_69,
    IfxScuCcu_K2divider_70,
    IfxScuCcu_K2divider_71,
    IfxScuCcu_K2divider_72,
    IfxScuCcu_K2divider_73,
    IfxScuCcu_K2divider_74,
    IfxScuCcu_K2divider_75,
    IfxScuCcu_K2divider_76,
    IfxScuCcu_K2divider_77,
    IfxScuCcu_K2divider_78,
    IfxScuCcu_K2divider_79,
    IfxScuCcu_K2divider_80,
    IfxScuCcu_K2divider_81,
    IfxScuCcu_K2divider_82,
    IfxScuCcu_K2divider_83,
    IfxScuCcu_K2divider_84,
    IfxScuCcu_K2divider_85,
    IfxScuCcu_K2divider_86,
    IfxScuCcu_K2divider_87,
    IfxScuCcu_K2divider_88,
    IfxScuCcu_K2divider_89,
    IfxScuCcu_K2divider_90,
    IfxScuCcu_K2divider_91,
    IfxScuCcu_K2divider_92,
    IfxScuCcu_K2divider_93,
    IfxScuCcu_K2divider_94,
    IfxScuCcu_K2divider_95,
    IfxScuCcu_K2divider_96,
    IfxScuCcu_K2divider_97,
    IfxScuCcu_K2divider_98,
    IfxScuCcu_K2divider_99,
    IfxScuCcu_K2divider_100,
    IfxScuCcu_K2divider_101,
    IfxScuCcu_K2divider_102,
    IfxScuCcu_K2divider_103,
    IfxScuCcu_K2divider_104,
    IfxScuCcu_K2divider_105,
    IfxScuCcu_K2divider_106,
    IfxScuCcu_K2divider_107,
    IfxScuCcu_K2divider_108,
    IfxScuCcu_K2divider_109,
    IfxScuCcu_K2divider_110,
    IfxScuCcu_K2divider_111,
    IfxScuCcu_K2divider_112,
    IfxScuCcu_K2divider_113,
    IfxScuCcu_K2divider_114,
    IfxScuCcu_K2divider_115,
    IfxScuCcu_K2divider_116,
    IfxScuCcu_K2divider_117,
    IfxScuCcu_K2divider_118,
    IfxScuCcu_K2divider_119,
    IfxScuCcu_K2divider_120,
    IfxScuCcu_K2divider_121,
    IfxScuCcu_K2divider_122,
    IfxScuCcu_K2divider_123,
    IfxScuCcu_K2divider_124,
    IfxScuCcu_K2divider_125,
    IfxScuCcu_K2divider_126,
    IfxScuCcu_K2divider_127,
    IfxScuCcu_K2divider_128
} IfxScuCcu_K2divider;



typedef enum
{
    IfxScuCcu_K3divider_1 = 0,
    IfxScuCcu_K3divider_2,
    IfxScuCcu_K3divider_3,
    IfxScuCcu_K3divider_4,
    IfxScuCcu_K3divider_5,
    IfxScuCcu_K3divider_6,
    IfxScuCcu_K3divider_7,
    IfxScuCcu_K3divider_8,
    IfxScuCcu_K3divider_9,
    IfxScuCcu_K3divider_10,
    IfxScuCcu_K3divider_11,
    IfxScuCcu_K3divider_12,
    IfxScuCcu_K3divider_13,
    IfxScuCcu_K3divider_14,
    IfxScuCcu_K3divider_15,
    IfxScuCcu_K3divider_16,
    IfxScuCcu_K3divider_17,
    IfxScuCcu_K3divider_18,
    IfxScuCcu_K3divider_19,
    IfxScuCcu_K3divider_20,
    IfxScuCcu_K3divider_21,
    IfxScuCcu_K3divider_22,
    IfxScuCcu_K3divider_23,
    IfxScuCcu_K3divider_24,
    IfxScuCcu_K3divider_25,
    IfxScuCcu_K3divider_26,
    IfxScuCcu_K3divider_27,
    IfxScuCcu_K3divider_28,
    IfxScuCcu_K3divider_29,
    IfxScuCcu_K3divider_30,
    IfxScuCcu_K3divider_31,
    IfxScuCcu_K3divider_32,
    IfxScuCcu_K3divider_33,
    IfxScuCcu_K3divider_34,
    IfxScuCcu_K3divider_35,
    IfxScuCcu_K3divider_36,
    IfxScuCcu_K3divider_37,
    IfxScuCcu_K3divider_38,
    IfxScuCcu_K3divider_39,
    IfxScuCcu_K3divider_40,
    IfxScuCcu_K3divider_41,
    IfxScuCcu_K3divider_42,
    IfxScuCcu_K3divider_43,
    IfxScuCcu_K3divider_44,
    IfxScuCcu_K3divider_45,
    IfxScuCcu_K3divider_46,
    IfxScuCcu_K3divider_47,
    IfxScuCcu_K3divider_48,
    IfxScuCcu_K3divider_49,
    IfxScuCcu_K3divider_50,
    IfxScuCcu_K3divider_51,
    IfxScuCcu_K3divider_52,
    IfxScuCcu_K3divider_53,
    IfxScuCcu_K3divider_54,
    IfxScuCcu_K3divider_55,
    IfxScuCcu_K3divider_56,
    IfxScuCcu_K3divider_57,
    IfxScuCcu_K3divider_58,
    IfxScuCcu_K3divider_59,
    IfxScuCcu_K3divider_60,
    IfxScuCcu_K3divider_61,
    IfxScuCcu_K3divider_62,
    IfxScuCcu_K3divider_63,
    IfxScuCcu_K3divider_64,
    IfxScuCcu_K3divider_65,
    IfxScuCcu_K3divider_66,
    IfxScuCcu_K3divider_67,
    IfxScuCcu_K3divider_68,
    IfxScuCcu_K3divider_69,
    IfxScuCcu_K3divider_70,
    IfxScuCcu_K3divider_71,
    IfxScuCcu_K3divider_72,
    IfxScuCcu_K3divider_73,
    IfxScuCcu_K3divider_74,
    IfxScuCcu_K3divider_75,
    IfxScuCcu_K3divider_76,
    IfxScuCcu_K3divider_77,
    IfxScuCcu_K3divider_78,
    IfxScuCcu_K3divider_79,
    IfxScuCcu_K3divider_80,
    IfxScuCcu_K3divider_81,
    IfxScuCcu_K3divider_82,
    IfxScuCcu_K3divider_83,
    IfxScuCcu_K3divider_84,
    IfxScuCcu_K3divider_85,
    IfxScuCcu_K3divider_86,
    IfxScuCcu_K3divider_87,
    IfxScuCcu_K3divider_88,
    IfxScuCcu_K3divider_89,
    IfxScuCcu_K3divider_90,
    IfxScuCcu_K3divider_91,
    IfxScuCcu_K3divider_92,
    IfxScuCcu_K3divider_93,
    IfxScuCcu_K3divider_94,
    IfxScuCcu_K3divider_95,
    IfxScuCcu_K3divider_96,
    IfxScuCcu_K3divider_97,
    IfxScuCcu_K3divider_98,
    IfxScuCcu_K3divider_99,
    IfxScuCcu_K3divider_100,
    IfxScuCcu_K3divider_101,
    IfxScuCcu_K3divider_102,
    IfxScuCcu_K3divider_103,
    IfxScuCcu_K3divider_104,
    IfxScuCcu_K3divider_105,
    IfxScuCcu_K3divider_106,
    IfxScuCcu_K3divider_107,
    IfxScuCcu_K3divider_108,
    IfxScuCcu_K3divider_109,
    IfxScuCcu_K3divider_110,
    IfxScuCcu_K3divider_111,
    IfxScuCcu_K3divider_112,
    IfxScuCcu_K3divider_113,
    IfxScuCcu_K3divider_114,
    IfxScuCcu_K3divider_115,
    IfxScuCcu_K3divider_116,
    IfxScuCcu_K3divider_117,
    IfxScuCcu_K3divider_118,
    IfxScuCcu_K3divider_119,
    IfxScuCcu_K3divider_120,
    IfxScuCcu_K3divider_121,
    IfxScuCcu_K3divider_122,
    IfxScuCcu_K3divider_123,
    IfxScuCcu_K3divider_124,
    IfxScuCcu_K3divider_125,
    IfxScuCcu_K3divider_126,
    IfxScuCcu_K3divider_127,
    IfxScuCcu_K3divider_128
} IfxScuCcu_K3divider;



typedef enum
{
    IfxScuCcu_Ndivider_1 = 0,
    IfxScuCcu_Ndivider_2,
    IfxScuCcu_Ndivider_3,
    IfxScuCcu_Ndivider_4,
    IfxScuCcu_Ndivider_5,
    IfxScuCcu_Ndivider_6,
    IfxScuCcu_Ndivider_7,
    IfxScuCcu_Ndivider_8,
    IfxScuCcu_Ndivider_9,
    IfxScuCcu_Ndivider_10,
    IfxScuCcu_Ndivider_11,
    IfxScuCcu_Ndivider_12,
    IfxScuCcu_Ndivider_13,
    IfxScuCcu_Ndivider_14,
    IfxScuCcu_Ndivider_15,
    IfxScuCcu_Ndivider_16,
    IfxScuCcu_Ndivider_17,
    IfxScuCcu_Ndivider_18,
    IfxScuCcu_Ndivider_19,
    IfxScuCcu_Ndivider_20,
    IfxScuCcu_Ndivider_21,
    IfxScuCcu_Ndivider_22,
    IfxScuCcu_Ndivider_23,
    IfxScuCcu_Ndivider_24,
    IfxScuCcu_Ndivider_25,
    IfxScuCcu_Ndivider_26,
    IfxScuCcu_Ndivider_27,
    IfxScuCcu_Ndivider_28,
    IfxScuCcu_Ndivider_29,
    IfxScuCcu_Ndivider_30,
    IfxScuCcu_Ndivider_31,
    IfxScuCcu_Ndivider_32,
    IfxScuCcu_Ndivider_33,
    IfxScuCcu_Ndivider_34,
    IfxScuCcu_Ndivider_35,
    IfxScuCcu_Ndivider_36,
    IfxScuCcu_Ndivider_37,
    IfxScuCcu_Ndivider_38,
    IfxScuCcu_Ndivider_39,
    IfxScuCcu_Ndivider_40,
    IfxScuCcu_Ndivider_41,
    IfxScuCcu_Ndivider_42,
    IfxScuCcu_Ndivider_43,
    IfxScuCcu_Ndivider_44,
    IfxScuCcu_Ndivider_45,
    IfxScuCcu_Ndivider_46,
    IfxScuCcu_Ndivider_47,
    IfxScuCcu_Ndivider_48,
    IfxScuCcu_Ndivider_49,
    IfxScuCcu_Ndivider_50,
    IfxScuCcu_Ndivider_51,
    IfxScuCcu_Ndivider_52,
    IfxScuCcu_Ndivider_53,
    IfxScuCcu_Ndivider_54,
    IfxScuCcu_Ndivider_55,
    IfxScuCcu_Ndivider_56,
    IfxScuCcu_Ndivider_57,
    IfxScuCcu_Ndivider_58,
    IfxScuCcu_Ndivider_59,
    IfxScuCcu_Ndivider_60,
    IfxScuCcu_Ndivider_61,
    IfxScuCcu_Ndivider_62,
    IfxScuCcu_Ndivider_63,
    IfxScuCcu_Ndivider_64,
    IfxScuCcu_Ndivider_65,
    IfxScuCcu_Ndivider_66,
    IfxScuCcu_Ndivider_67,
    IfxScuCcu_Ndivider_68,
    IfxScuCcu_Ndivider_69,
    IfxScuCcu_Ndivider_70,
    IfxScuCcu_Ndivider_71,
    IfxScuCcu_Ndivider_72,
    IfxScuCcu_Ndivider_73,
    IfxScuCcu_Ndivider_74,
    IfxScuCcu_Ndivider_75,
    IfxScuCcu_Ndivider_76,
    IfxScuCcu_Ndivider_77,
    IfxScuCcu_Ndivider_78,
    IfxScuCcu_Ndivider_79,
    IfxScuCcu_Ndivider_80,
    IfxScuCcu_Ndivider_81,
    IfxScuCcu_Ndivider_82,
    IfxScuCcu_Ndivider_83,
    IfxScuCcu_Ndivider_84,
    IfxScuCcu_Ndivider_85,
    IfxScuCcu_Ndivider_86,
    IfxScuCcu_Ndivider_87,
    IfxScuCcu_Ndivider_88,
    IfxScuCcu_Ndivider_89,
    IfxScuCcu_Ndivider_90,
    IfxScuCcu_Ndivider_91,
    IfxScuCcu_Ndivider_92,
    IfxScuCcu_Ndivider_93,
    IfxScuCcu_Ndivider_94,
    IfxScuCcu_Ndivider_95,
    IfxScuCcu_Ndivider_96,
    IfxScuCcu_Ndivider_97,
    IfxScuCcu_Ndivider_98,
    IfxScuCcu_Ndivider_99,
    IfxScuCcu_Ndivider_100,
    IfxScuCcu_Ndivider_101,
    IfxScuCcu_Ndivider_102,
    IfxScuCcu_Ndivider_103,
    IfxScuCcu_Ndivider_104,
    IfxScuCcu_Ndivider_105,
    IfxScuCcu_Ndivider_106,
    IfxScuCcu_Ndivider_107,
    IfxScuCcu_Ndivider_108,
    IfxScuCcu_Ndivider_109,
    IfxScuCcu_Ndivider_110,
    IfxScuCcu_Ndivider_111,
    IfxScuCcu_Ndivider_112,
    IfxScuCcu_Ndivider_113,
    IfxScuCcu_Ndivider_114,
    IfxScuCcu_Ndivider_115,
    IfxScuCcu_Ndivider_116,
    IfxScuCcu_Ndivider_117,
    IfxScuCcu_Ndivider_118,
    IfxScuCcu_Ndivider_119,
    IfxScuCcu_Ndivider_120,
    IfxScuCcu_Ndivider_121,
    IfxScuCcu_Ndivider_122,
    IfxScuCcu_Ndivider_123,
    IfxScuCcu_Ndivider_124,
    IfxScuCcu_Ndivider_125,
    IfxScuCcu_Ndivider_126,
    IfxScuCcu_Ndivider_127,
    IfxScuCcu_Ndivider_128
} IfxScuCcu_Ndivider;



typedef enum
{
    IfxScuCcu_Pdivider_1 = 0,
    IfxScuCcu_Pdivider_2,
    IfxScuCcu_Pdivider_3,
    IfxScuCcu_Pdivider_4,
    IfxScuCcu_Pdivider_5,
    IfxScuCcu_Pdivider_6,
    IfxScuCcu_Pdivider_7,
    IfxScuCcu_Pdivider_8,
    IfxScuCcu_Pdivider_9,
    IfxScuCcu_Pdivider_10,
    IfxScuCcu_Pdivider_11,
    IfxScuCcu_Pdivider_12,
    IfxScuCcu_Pdivider_13,
    IfxScuCcu_Pdivider_14,
    IfxScuCcu_Pdivider_15,
    IfxScuCcu_Pdivider_16
} IfxScuCcu_Pdivider;
# 709 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_CcuconRegConfig;




typedef struct
{
    uint8 pDivider;
    uint8 nDivider;
    uint8 k2Initial;
    float32 waitTime;
} IfxScuCcu_InitialStepConfig;



typedef struct
{
    uint8 k2Step;
    float32 waitTime;
    IfxScuCcu_PllStepsFunctionHook hookFunction;
} IfxScuCcu_PllStepsConfig;







typedef struct
{
    IfxScuCcu_CcuconRegConfig ccucon0;
    IfxScuCcu_CcuconRegConfig ccucon1;
    IfxScuCcu_CcuconRegConfig ccucon2;
    IfxScuCcu_CcuconRegConfig ccucon5;
    IfxScuCcu_CcuconRegConfig ccucon6;
} IfxScuCcu_ClockDistributionConfig;



typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_FlashWaitstateConfig;




typedef struct
{
    uint8 numOfPllDividerSteps;
    IfxScuCcu_PllStepsConfig *pllDividerStep;
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_SysPllConfig;







typedef struct
{
    IfxScuCcu_SysPllConfig sysPll;
    IfxScuCcu_ClockDistributionConfig clockDistribution;
    IfxScuCcu_FlashWaitstateConfig flashFconWaitStateConfig;
    uint32 xtalFrequency;
} IfxScuCcu_Config;



typedef struct
{
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_ErayPllConfig;
# 802 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void);




static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void);
# 829 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_getBaud2Frequency(void);





extern float32 IfxScuCcu_getBbbFrequency(void);





extern float32 IfxScuCcu_getCpuFrequency(const IfxCpu_ResourceCpu cpu);





extern float32 IfxScuCcu_getFsi2Frequency(void);





extern float32 IfxScuCcu_getFsiFrequency(void);





extern float32 IfxScuCcu_getMaxFrequency(void);





extern float32 IfxScuCcu_getModuleFrequency(void);





extern float32 IfxScuCcu_getOsc0Frequency(void);





extern float32 IfxScuCcu_getOscFrequency(void);





extern float32 IfxScuCcu_getPllErayFrequency(void);





extern float32 IfxScuCcu_getPllErayVcoFrequency(void);





extern float32 IfxScuCcu_getPllFrequency(void);





extern float32 IfxScuCcu_getPllVcoFrequency(void);





extern float32 IfxScuCcu_getSourceFrequency(void);





extern float32 IfxScuCcu_getSpbFrequency(void);





extern float32 IfxScuCcu_getSriFrequency(void);







extern float32 IfxScuCcu_setCpuFrequency(IfxCpu_ResourceCpu cpu, float32 cpuFreq);






extern float32 IfxScuCcu_setPll2Frequency(float32 pll2Freq);






extern float32 IfxScuCcu_setSpbFrequency(float32 spbFreq);






extern float32 IfxScuCcu_setSriFrequency(float32 sriFreq);
# 964 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_calculateSysPllDividers(IfxScuCcu_Config *cfg, uint32 fPll);
# 973 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_init(const IfxScuCcu_Config *cfg);





extern void IfxScuCcu_initConfig(IfxScuCcu_Config *cfg);
# 988 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_initErayPll(const IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_initErayPllConfig(IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_switchToBackupClock(const IfxScuCcu_Config *cfg);
# 1013 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void);
# 1024 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_setGtmFrequency(float32 gtmFreq);
# 1033 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern const IfxScuCcu_Config IfxScuCcu_defaultClockConfig;




extern const IfxScuCcu_ErayPllConfig IfxScuCcu_defaultErayPllConfig;





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void)
{
    return (100000000.0);
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.GTMDIV;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void)
{
    float32 pll2Frequency;
    pll2Frequency = IfxScuCcu_getPllVcoFrequency() / ((*(volatile Ifx_SCU_PLLCON1 *)0xF003601Cu).B.K3DIV + 1);

    return pll2Frequency;
}


static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void)
{
    return (IfxScu_CCUCON0_CLKSEL)(*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).B.CLKSEL;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.STMDIV;
}
# 58 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCcu6_reg.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxCcu6_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCcu6_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxCcu6_regdef.h"
typedef struct _Ifx_CCU6_ACCEN0_Bits
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
} Ifx_CCU6_ACCEN0_Bits;


typedef struct _Ifx_CCU6_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CCU6_ACCEN1_Bits;


typedef struct _Ifx_CCU6_CC60R_Bits
{
    unsigned int CCV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC60R_Bits;


typedef struct _Ifx_CCU6_CC60SR_Bits
{
    unsigned int CCS : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC60SR_Bits;


typedef struct _Ifx_CCU6_CC61R_Bits
{
    unsigned int CCV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC61R_Bits;


typedef struct _Ifx_CCU6_CC61SR_Bits
{
    unsigned int CCS : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC61SR_Bits;


typedef struct _Ifx_CCU6_CC62R_Bits
{
    unsigned int CCV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC62R_Bits;


typedef struct _Ifx_CCU6_CC62SR_Bits
{
    unsigned int CCS : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC62SR_Bits;


typedef struct _Ifx_CCU6_CC63R_Bits
{
    unsigned int CCV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC63R_Bits;


typedef struct _Ifx_CCU6_CC63SR_Bits
{
    unsigned int CCS : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CC63SR_Bits;


typedef struct _Ifx_CCU6_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_CCU6_CLC_Bits;


typedef struct _Ifx_CCU6_CMPMODIF_Bits
{
    unsigned int MCC60S : 1;
    unsigned int MCC61S : 1;
    unsigned int MCC62S : 1;
    unsigned int reserved_3 : 3;
    unsigned int MCC63S : 1;
    unsigned int reserved_7 : 1;
    unsigned int MCC60R : 1;
    unsigned int MCC61R : 1;
    unsigned int MCC62R : 1;
    unsigned int reserved_11 : 3;
    unsigned int MCC63R : 1;
    unsigned int reserved_15 : 17;
} Ifx_CCU6_CMPMODIF_Bits;


typedef struct _Ifx_CCU6_CMPSTAT_Bits
{
    unsigned int CC60ST : 1;
    unsigned int CC61ST : 1;
    unsigned int CC62ST : 1;
    unsigned int CCPOS60 : 1;
    unsigned int CCPOS61 : 1;
    unsigned int CCPOS62 : 1;
    unsigned int CC63ST : 1;
    unsigned int reserved_7 : 1;
    unsigned int CC60PS : 1;
    unsigned int COUT60PS : 1;
    unsigned int CC61PS : 1;
    unsigned int COUT61PS : 1;
    unsigned int CC62PS : 1;
    unsigned int COUT62PS : 1;
    unsigned int COUT63PS : 1;
    unsigned int T13IM : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_CMPSTAT_Bits;


typedef struct _Ifx_CCU6_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODNUMBER : 8;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_ID_Bits;


typedef struct _Ifx_CCU6_IEN_Bits
{
    unsigned int ENCC60R : 1;
    unsigned int ENCC60F : 1;
    unsigned int ENCC61R : 1;
    unsigned int ENCC61F : 1;
    unsigned int ENCC62R : 1;
    unsigned int ENCC62F : 1;
    unsigned int ENT12OM : 1;
    unsigned int ENT12PM : 1;
    unsigned int ENT13CM : 1;
    unsigned int ENT13PM : 1;
    unsigned int ENTRPF : 1;
    unsigned int reserved_11 : 1;
    unsigned int ENCHE : 1;
    unsigned int ENWHE : 1;
    unsigned int ENIDLE : 1;
    unsigned int ENSTR : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_IEN_Bits;


typedef struct _Ifx_CCU6_IMON_Bits
{
    unsigned int LBE : 1;
    unsigned int CCPOS0I : 1;
    unsigned int CCPOS1I : 1;
    unsigned int CCPOS2I : 1;
    unsigned int CC60INI : 1;
    unsigned int CC61INI : 1;
    unsigned int CC62INI : 1;
    unsigned int CTRAPI : 1;
    unsigned int T12HRI : 1;
    unsigned int T13HRI : 1;
    unsigned int reserved_10 : 22;
} Ifx_CCU6_IMON_Bits;


typedef struct _Ifx_CCU6_INP_Bits
{
    unsigned int INPCC60 : 2;
    unsigned int INPCC61 : 2;
    unsigned int INPCC62 : 2;
    unsigned int INPCHE : 2;
    unsigned int INPERR : 2;
    unsigned int INPT12 : 2;
    unsigned int INPT13 : 2;
    unsigned int reserved_14 : 18;
} Ifx_CCU6_INP_Bits;


typedef struct _Ifx_CCU6_IS_Bits
{
    unsigned int ICC60R : 1;
    unsigned int ICC60F : 1;
    unsigned int ICC61R : 1;
    unsigned int ICC61F : 1;
    unsigned int ICC62R : 1;
    unsigned int ICC62F : 1;
    unsigned int T12OM : 1;
    unsigned int T12PM : 1;
    unsigned int T13CM : 1;
    unsigned int T13PM : 1;
    unsigned int TRPF : 1;
    unsigned int TRPS : 1;
    unsigned int CHE : 1;
    unsigned int WHE : 1;
    unsigned int IDLE : 1;
    unsigned int STR : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_IS_Bits;


typedef struct _Ifx_CCU6_ISR_Bits
{
    unsigned int RCC60R : 1;
    unsigned int RCC60F : 1;
    unsigned int RCC61R : 1;
    unsigned int RCC61F : 1;
    unsigned int RCC62R : 1;
    unsigned int RCC62F : 1;
    unsigned int RT12OM : 1;
    unsigned int RT12PM : 1;
    unsigned int RT13CM : 1;
    unsigned int RT13PM : 1;
    unsigned int RTRPF : 1;
    unsigned int reserved_11 : 1;
    unsigned int RCHE : 1;
    unsigned int RWHE : 1;
    unsigned int RIDLE : 1;
    unsigned int RSTR : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_ISR_Bits;


typedef struct _Ifx_CCU6_ISS_Bits
{
    unsigned int SCC60R : 1;
    unsigned int SCC60F : 1;
    unsigned int SCC61R : 1;
    unsigned int SCC61F : 1;
    unsigned int SCC62R : 1;
    unsigned int SCC62F : 1;
    unsigned int ST12OM : 1;
    unsigned int ST12PM : 1;
    unsigned int ST13CM : 1;
    unsigned int ST13PM : 1;
    unsigned int STRPF : 1;
    unsigned int SWHC : 1;
    unsigned int SCHE : 1;
    unsigned int SWHE : 1;
    unsigned int SIDLE : 1;
    unsigned int SSTR : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_ISS_Bits;


typedef struct _Ifx_CCU6_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_CCU6_KRST0_Bits;


typedef struct _Ifx_CCU6_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_CCU6_KRST1_Bits;


typedef struct _Ifx_CCU6_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_CCU6_KRSTCLR_Bits;


typedef struct _Ifx_CCU6_KSCSR_Bits
{
    unsigned int SB0 : 1;
    unsigned int SB1 : 1;
    unsigned int SB2 : 1;
    unsigned int SB3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_CCU6_KSCSR_Bits;


typedef struct _Ifx_CCU6_LI_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CCPOS0EN : 1;
    unsigned int CCPOS1EN : 1;
    unsigned int CCPOS2EN : 1;
    unsigned int CC60INEN : 1;
    unsigned int CC61INEN : 1;
    unsigned int CC62INEN : 1;
    unsigned int CTRAPEN : 1;
    unsigned int T12HREN : 1;
    unsigned int T13HREN : 1;
    unsigned int reserved_10 : 3;
    unsigned int LBEEN : 1;
    unsigned int INPLBE : 2;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_LI_Bits;


typedef struct _Ifx_CCU6_MCFG_Bits
{
    unsigned int T12 : 1;
    unsigned int T13 : 1;
    unsigned int MCM : 1;
    unsigned int reserved_3 : 29;
} Ifx_CCU6_MCFG_Bits;


typedef struct _Ifx_CCU6_MCMCTR_Bits
{
    unsigned int SWSEL : 3;
    unsigned int reserved_3 : 1;
    unsigned int SWSYN : 2;
    unsigned int reserved_6 : 2;
    unsigned int STE12U : 1;
    unsigned int STE12D : 1;
    unsigned int STE13U : 1;
    unsigned int reserved_11 : 21;
} Ifx_CCU6_MCMCTR_Bits;


typedef struct _Ifx_CCU6_MCMOUT_Bits
{
    unsigned int MCMP : 6;
    unsigned int R : 1;
    unsigned int reserved_7 : 1;
    unsigned int EXPH : 3;
    unsigned int CURH : 3;
    unsigned int reserved_14 : 18;
} Ifx_CCU6_MCMOUT_Bits;


typedef struct _Ifx_CCU6_MCMOUTS_Bits
{
    unsigned int MCMPS : 6;
    unsigned int reserved_6 : 1;
    unsigned int STRMCM : 1;
    unsigned int EXPHS : 3;
    unsigned int CURHS : 3;
    unsigned int reserved_14 : 1;
    unsigned int STRHP : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_MCMOUTS_Bits;


typedef struct _Ifx_CCU6_MODCTR_Bits
{
    unsigned int T12MODEN : 6;
    unsigned int reserved_6 : 1;
    unsigned int MCMEN : 1;
    unsigned int T13MODEN : 6;
    unsigned int reserved_14 : 1;
    unsigned int ECT13O : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_MODCTR_Bits;


typedef struct _Ifx_CCU6_MOSEL_Bits
{
    unsigned int TRIG0SEL : 3;
    unsigned int TRIG1SEL : 3;
    unsigned int TRIG2SEL : 3;
    unsigned int reserved_9 : 23;
} Ifx_CCU6_MOSEL_Bits;


typedef struct _Ifx_CCU6_OCS_Bits
{
    unsigned int TGS : 2;
    unsigned int TGB : 1;
    unsigned int TG_P : 1;
    unsigned int reserved_4 : 20;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_CCU6_OCS_Bits;


typedef struct _Ifx_CCU6_PISEL0_Bits
{
    unsigned int ISCC60 : 2;
    unsigned int ISCC61 : 2;
    unsigned int ISCC62 : 2;
    unsigned int ISTRP : 2;
    unsigned int ISPOS0 : 2;
    unsigned int ISPOS1 : 2;
    unsigned int ISPOS2 : 2;
    unsigned int IST12HR : 2;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_PISEL0_Bits;


typedef struct _Ifx_CCU6_PISEL2_Bits
{
    unsigned int IST13HR : 2;
    unsigned int ISCNT12 : 2;
    unsigned int ISCNT13 : 2;
    unsigned int T12EXT : 1;
    unsigned int T13EXT : 1;
    unsigned int reserved_8 : 24;
} Ifx_CCU6_PISEL2_Bits;


typedef struct _Ifx_CCU6_PSLR_Bits
{
    unsigned int PSL : 6;
    unsigned int reserved_6 : 1;
    unsigned int PSL63 : 1;
    unsigned int reserved_8 : 24;
} Ifx_CCU6_PSLR_Bits;


typedef struct _Ifx_CCU6_T12_Bits
{
    unsigned int T12CV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T12_Bits;


typedef struct _Ifx_CCU6_T12DTC_Bits
{
    unsigned int DTM : 8;
    unsigned int DTE0 : 1;
    unsigned int DTE1 : 1;
    unsigned int DTE2 : 1;
    unsigned int reserved_11 : 1;
    unsigned int DTR0 : 1;
    unsigned int DTR1 : 1;
    unsigned int DTR2 : 1;
    unsigned int reserved_15 : 17;
} Ifx_CCU6_T12DTC_Bits;


typedef struct _Ifx_CCU6_T12MSEL_Bits
{
    unsigned int MSEL60 : 4;
    unsigned int MSEL61 : 4;
    unsigned int MSEL62 : 4;
    unsigned int HSYNC : 3;
    unsigned int DBYP : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T12MSEL_Bits;


typedef struct _Ifx_CCU6_T12PR_Bits
{
    unsigned int T12PV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T12PR_Bits;


typedef struct _Ifx_CCU6_T13_Bits
{
    unsigned int T13CV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T13_Bits;


typedef struct _Ifx_CCU6_T13PR_Bits
{
    unsigned int T13PV : 16;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_T13PR_Bits;


typedef struct _Ifx_CCU6_TCTR0_Bits
{
    unsigned int T12CLK : 3;
    unsigned int T12PRE : 1;
    unsigned int T12R : 1;
    unsigned int STE12 : 1;
    unsigned int CDIR : 1;
    unsigned int CTM : 1;
    unsigned int T13CLK : 3;
    unsigned int T13PRE : 1;
    unsigned int T13R : 1;
    unsigned int STE13 : 1;
    unsigned int reserved_14 : 18;
} Ifx_CCU6_TCTR0_Bits;


typedef struct _Ifx_CCU6_TCTR2_Bits
{
    unsigned int T12SSC : 1;
    unsigned int T13SSC : 1;
    unsigned int T13TEC : 3;
    unsigned int T13TED : 2;
    unsigned int reserved_7 : 1;
    unsigned int T12RSEL : 2;
    unsigned int T13RSEL : 2;
    unsigned int reserved_12 : 20;
} Ifx_CCU6_TCTR2_Bits;


typedef struct _Ifx_CCU6_TCTR4_Bits
{
    unsigned int T12RR : 1;
    unsigned int T12RS : 1;
    unsigned int T12RES : 1;
    unsigned int DTRES : 1;
    unsigned int reserved_4 : 1;
    unsigned int T12CNT : 1;
    unsigned int T12STR : 1;
    unsigned int T12STD : 1;
    unsigned int T13RR : 1;
    unsigned int T13RS : 1;
    unsigned int T13RES : 1;
    unsigned int reserved_11 : 2;
    unsigned int T13CNT : 1;
    unsigned int T13STR : 1;
    unsigned int T13STD : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_TCTR4_Bits;


typedef struct _Ifx_CCU6_TRPCTR_Bits
{
    unsigned int TRPM0 : 1;
    unsigned int TRPM1 : 1;
    unsigned int TRPM2 : 1;
    unsigned int reserved_3 : 5;
    unsigned int TRPEN : 6;
    unsigned int TRPEN13 : 1;
    unsigned int TRPPEN : 1;
    unsigned int reserved_16 : 16;
} Ifx_CCU6_TRPCTR_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ACCEN0_Bits B;
} Ifx_CCU6_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ACCEN1_Bits B;
} Ifx_CCU6_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC60R_Bits B;
} Ifx_CCU6_CC60R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC60SR_Bits B;
} Ifx_CCU6_CC60SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC61R_Bits B;
} Ifx_CCU6_CC61R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC61SR_Bits B;
} Ifx_CCU6_CC61SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC62R_Bits B;
} Ifx_CCU6_CC62R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC62SR_Bits B;
} Ifx_CCU6_CC62SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC63R_Bits B;
} Ifx_CCU6_CC63R;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CC63SR_Bits B;
} Ifx_CCU6_CC63SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CLC_Bits B;
} Ifx_CCU6_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CMPMODIF_Bits B;
} Ifx_CCU6_CMPMODIF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_CMPSTAT_Bits B;
} Ifx_CCU6_CMPSTAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ID_Bits B;
} Ifx_CCU6_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_IEN_Bits B;
} Ifx_CCU6_IEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_IMON_Bits B;
} Ifx_CCU6_IMON;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_INP_Bits B;
} Ifx_CCU6_INP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_IS_Bits B;
} Ifx_CCU6_IS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ISR_Bits B;
} Ifx_CCU6_ISR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_ISS_Bits B;
} Ifx_CCU6_ISS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KRST0_Bits B;
} Ifx_CCU6_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KRST1_Bits B;
} Ifx_CCU6_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KRSTCLR_Bits B;
} Ifx_CCU6_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_KSCSR_Bits B;
} Ifx_CCU6_KSCSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_LI_Bits B;
} Ifx_CCU6_LI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCFG_Bits B;
} Ifx_CCU6_MCFG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCMCTR_Bits B;
} Ifx_CCU6_MCMCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCMOUT_Bits B;
} Ifx_CCU6_MCMOUT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MCMOUTS_Bits B;
} Ifx_CCU6_MCMOUTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MODCTR_Bits B;
} Ifx_CCU6_MODCTR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_MOSEL_Bits B;
} Ifx_CCU6_MOSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_OCS_Bits B;
} Ifx_CCU6_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_PISEL0_Bits B;
} Ifx_CCU6_PISEL0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_PISEL2_Bits B;
} Ifx_CCU6_PISEL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_PSLR_Bits B;
} Ifx_CCU6_PSLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12_Bits B;
} Ifx_CCU6_T12;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12DTC_Bits B;
} Ifx_CCU6_T12DTC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12MSEL_Bits B;
} Ifx_CCU6_T12MSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T12PR_Bits B;
} Ifx_CCU6_T12PR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T13_Bits B;
} Ifx_CCU6_T13;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_T13PR_Bits B;
} Ifx_CCU6_T13PR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TCTR0_Bits B;
} Ifx_CCU6_TCTR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TCTR2_Bits B;
} Ifx_CCU6_TCTR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TCTR4_Bits B;
} Ifx_CCU6_TCTR4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_CCU6_TRPCTR_Bits B;
} Ifx_CCU6_TRPCTR;
# 972 "./0_Src/4_McHal/Tricore/_Reg/IfxCcu6_regdef.h"
typedef volatile struct _Ifx_CCU6
{
    Ifx_CCU6_CLC CLC;
    Ifx_CCU6_MCFG MCFG;
    Ifx_CCU6_ID ID;
    Ifx_CCU6_MOSEL MOSEL;
    Ifx_CCU6_PISEL0 PISEL0;
    Ifx_CCU6_PISEL2 PISEL2;
    unsigned char reserved_18[4];
    Ifx_CCU6_KSCSR KSCSR;
    Ifx_CCU6_T12 T12;
    Ifx_CCU6_T12PR T12PR;
    Ifx_CCU6_T12DTC T12DTC;
    unsigned char reserved_2C[4];
    Ifx_CCU6_CC60R CC60R;
    Ifx_CCU6_CC61R CC61R;
    Ifx_CCU6_CC62R CC62R;
    unsigned char reserved_3C[4];
    Ifx_CCU6_CC60SR CC60SR;
    Ifx_CCU6_CC61SR CC61SR;
    Ifx_CCU6_CC62SR CC62SR;
    unsigned char reserved_4C[4];
    Ifx_CCU6_T13 T13;
    Ifx_CCU6_T13PR T13PR;
    Ifx_CCU6_CC63R CC63R;
    Ifx_CCU6_CC63SR CC63SR;
    Ifx_CCU6_CMPSTAT CMPSTAT;
    Ifx_CCU6_CMPMODIF CMPMODIF;
    Ifx_CCU6_T12MSEL T12MSEL;
    unsigned char reserved_6C[4];
    Ifx_CCU6_TCTR0 TCTR0;
    Ifx_CCU6_TCTR2 TCTR2;
    Ifx_CCU6_TCTR4 TCTR4;
    unsigned char reserved_7C[4];
    Ifx_CCU6_MODCTR MODCTR;
    Ifx_CCU6_TRPCTR TRPCTR;
    Ifx_CCU6_PSLR PSLR;
    Ifx_CCU6_MCMOUTS MCMOUTS;
    Ifx_CCU6_MCMOUT MCMOUT;
    Ifx_CCU6_MCMCTR MCMCTR;
    Ifx_CCU6_IMON IMON;
    Ifx_CCU6_LI LI;
    Ifx_CCU6_IS IS;
    Ifx_CCU6_ISS ISS;
    Ifx_CCU6_ISR ISR;
    Ifx_CCU6_INP INP;
    Ifx_CCU6_IEN IEN;
    unsigned char reserved_B4[52];
    Ifx_CCU6_OCS OCS;
    Ifx_CCU6_KRSTCLR KRSTCLR;
    Ifx_CCU6_KRST1 KRST1;
    Ifx_CCU6_KRST0 KRST0;
    Ifx_CCU6_ACCEN1 ACCEN1;
    Ifx_CCU6_ACCEN0 ACCEN0;
} Ifx_CCU6;
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxCcu6_reg.h" 2
# 60 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCcu6_bf.h" 1
# 61 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h" 2
# 70 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
typedef enum
{
    IfxVadc_AnalogConverterMode_off = 0,
    IfxVadc_AnalogConverterMode_slowStandby = 1,
    IfxVadc_AnalogConverterMode_fastStandby = 2,
    IfxVadc_AnalogConverterMode_normalOperation = 3
} IfxVadc_AnalogConverterMode;



typedef enum
{
    IfxVadc_ArbitrationRounds_4_slots = 0,
    IfxVadc_ArbitrationRounds_8_slots = 1,
    IfxVadc_ArbitrationRounds_16_slots = 2,
    IfxVadc_ArbitrationRounds_20_slots = 3
} IfxVadc_ArbitrationRounds;



typedef enum
{
    IfxVadc_BoundaryExtension_standard = 0,
    IfxVadc_BoundaryExtension_fastCompareResult1 = 1,
    IfxVadc_BoundaryExtension_fastCompareResult2 = 2,
    IfxVadc_BoundaryExtension_fastCompareResult3 = 3,
    IfxVadc_BoundaryExtension_fastCompareResult4 = 4,
    IfxVadc_BoundaryExtension_fastCompareResult5 = 5,
    IfxVadc_BoundaryExtension_fastCompareResult6 = 6,
    IfxVadc_BoundaryExtension_fastCompareResult7 = 7,
    IfxVadc_BoundaryExtension_fastCompareResult8 = 8,
    IfxVadc_BoundaryExtension_fastCompareResult9 = 9,
    IfxVadc_BoundaryExtension_fastCompareResult10 = 10,
    IfxVadc_BoundaryExtension_fastCompareResult11 = 11,
    IfxVadc_BoundaryExtension_fastCompareResult12 = 12,
    IfxVadc_BoundaryExtension_fastCompareResult13 = 13,
    IfxVadc_BoundaryExtension_fastCompareResult14 = 14,
    IfxVadc_BoundaryExtension_fastCompareResult15 = 15
} IfxVadc_BoundaryExtension;



typedef enum
{
    IfxVadc_BoundarySelection_group0 = 0,
    IfxVadc_BoundarySelection_group1 = 1,
    IfxVadc_BoundarySelection_global0 = 2,
    IfxVadc_BoundarySelection_global1 = 3
} IfxVadc_BoundarySelection;



typedef enum
{
    IfxVadc_ChannelId_none = -1,
    IfxVadc_ChannelId_0 = 0,
    IfxVadc_ChannelId_1 = 1,
    IfxVadc_ChannelId_2 = 2,
    IfxVadc_ChannelId_3 = 3,
    IfxVadc_ChannelId_4 = 4,
    IfxVadc_ChannelId_5 = 5,
    IfxVadc_ChannelId_6 = 6,
    IfxVadc_ChannelId_7 = 7,
    IfxVadc_ChannelId_8 = 8,
    IfxVadc_ChannelId_9 = 9,
    IfxVadc_ChannelId_10 = 10,
    IfxVadc_ChannelId_11 = 11
} IfxVadc_ChannelId;



typedef enum
{
    IfxVadc_ChannelReference_standard = 0,
    IfxVadc_ChannelReference_channel0 = 1
} IfxVadc_ChannelReference;



typedef enum
{
    IfxVadc_ChannelResolution_12bit = 0,
    IfxVadc_ChannelResolution_10bit = 1,
    IfxVadc_ChannelResolution_8bit = 2,
    IfxVadc_ChannelResolution_10bitFast = 5
} IfxVadc_ChannelResolution;



typedef enum
{
    IfxVadc_ChannelResult_0 = 0,
    IfxVadc_ChannelResult_1,
    IfxVadc_ChannelResult_2,
    IfxVadc_ChannelResult_3,
    IfxVadc_ChannelResult_4,
    IfxVadc_ChannelResult_5,
    IfxVadc_ChannelResult_6,
    IfxVadc_ChannelResult_7,
    IfxVadc_ChannelResult_8,
    IfxVadc_ChannelResult_9,
    IfxVadc_ChannelResult_10,
    IfxVadc_ChannelResult_11,
    IfxVadc_ChannelResult_12,
    IfxVadc_ChannelResult_13,
    IfxVadc_ChannelResult_14,
    IfxVadc_ChannelResult_15
} IfxVadc_ChannelResult;




typedef enum
{
    IfxVadc_ChannelSelectionStyle_channelNumber = 0,
    IfxVadc_ChannelSelectionStyle_binary = 1

} IfxVadc_ChannelSelectionStyle;



typedef enum
{
    IfxVadc_ConversionType_Compatible = 0
} IfxVadc_ConversionType;




typedef enum
{
    IfxVadc_EmuxCodingScheme_binary = 0,
    IfxVadc_EmuxCodingScheme_gray = 1
} IfxVadc_EmuxCodingScheme;



typedef enum
{
    IfxVadc_EmuxInterface_0 = 0,
    IfxVadc_EmuxInterface_1 = 1
} IfxVadc_EmuxInterface;




typedef enum
{
    IfxVadc_EmuxSampleTimeControl_settingChanges = 0,
    IfxVadc_EmuxSampleTimeControl_always = 1
} IfxVadc_EmuxSampleTimeControl;




typedef enum
{
    IfxVadc_EmuxSelectValue_0 = 0,
    IfxVadc_EmuxSelectValue_1,
    IfxVadc_EmuxSelectValue_2,
    IfxVadc_EmuxSelectValue_3,
    IfxVadc_EmuxSelectValue_4,
    IfxVadc_EmuxSelectValue_5,
    IfxVadc_EmuxSelectValue_6,
    IfxVadc_EmuxSelectValue_7
} IfxVadc_EmuxSelectValue;




typedef enum
{
    IfxVadc_ExternalMultiplexerMode_softwareControl = 0,
    IfxVadc_ExternalMultiplexerMode_steady = 1,
    IfxVadc_ExternalMultiplexerMode_singleStep = 2,
    IfxVadc_ExternalMultiplexerMode_sequence = 3
} IfxVadc_ExternalMultiplexerMode;



typedef enum
{
    IfxVadc_FifoMode_seperateResultRegister = 0,
    IfxVadc_FifoMode_fifoStructure = 1,
    IfxVadc_FifoMode_maximumMode = 2,
    IfxVadc_FifoMode_minimumMode = 3
} IfxVadc_FifoMode;



typedef enum
{
    IfxVadc_GatingMode_disabled = 0,
    IfxVadc_GatingMode_always = 1,
    IfxVadc_GatingMode_gatingHigh = 2,
    IfxVadc_GatingMode_gatingLow = 3
} IfxVadc_GatingMode;



typedef enum
{
    IfxVadc_GatingSource_0 = 0,
    IfxVadc_GatingSource_1,
    IfxVadc_GatingSource_2,
    IfxVadc_GatingSource_3,
    IfxVadc_GatingSource_4,
    IfxVadc_GatingSource_5,
    IfxVadc_GatingSource_6,
    IfxVadc_GatingSource_7,
    IfxVadc_GatingSource_8,
    IfxVadc_GatingSource_9,
    IfxVadc_GatingSource_10,
    IfxVadc_GatingSource_11,
    IfxVadc_GatingSource_12,
    IfxVadc_GatingSource_13,
    IfxVadc_GatingSource_14,
    IfxVadc_GatingSource_15
} IfxVadc_GatingSource;



typedef enum
{
    IfxVadc_InputClasses_group0 = 0,
    IfxVadc_InputClasses_group1 = 1,
    IfxVadc_InputClasses_global0 = 2,
    IfxVadc_InputClasses_global1 = 3
} IfxVadc_InputClasses;



typedef enum
{
    IfxVadc_LimitCheck_noCheck = 0,
    IfxVadc_LimitCheck_eventIfInArea = 1,
    IfxVadc_LimitCheck_eventIfOutsideArea = 2,
    IfxVadc_LimitCheck_always = 3
} IfxVadc_LimitCheck;



typedef enum
{
    IfxVadc_LowSupplyVoltageSelect_5V = 0,
    IfxVadc_LowSupplyVoltageSelect_3V = 1
} IfxVadc_LowSupplyVoltageSelect;



typedef enum
{
    IfxVadc_Protection_channelControl0 = 0,
    IfxVadc_Protection_channelControl1 = 1,
    IfxVadc_Protection_channelControl2 = 2,
    IfxVadc_Protection_channelControl3 = 3,
    IfxVadc_Protection_channelControl4 = 4,
    IfxVadc_Protection_channelControl5 = 5,
    IfxVadc_Protection_channelControl6 = 6,
    IfxVadc_Protection_channelControl7 = 7,
    IfxVadc_Protection_channelControl8 = 8,
    IfxVadc_Protection_channelControl9 = 9,
    IfxVadc_Protection_channelControl10 = 10,
    IfxVadc_Protection_channelControl11 = 11,
    IfxVadc_Protection_channelControl12 = 12,
    IfxVadc_Protection_channelControl13 = 13,
    IfxVadc_Protection_channelControl14 = 14,
    IfxVadc_Protection_externalMultiplexer = 15,
    IfxVadc_Protection_initGroup0 = 16,
    IfxVadc_Protection_initGroup1 = 17,
    IfxVadc_Protection_initGroup2 = 18,
    IfxVadc_Protection_initGroup3 = 19,
    IfxVadc_Protection_initGroup4 = 20,
    IfxVadc_Protection_initGroup5 = 21,
    IfxVadc_Protection_initGroup6 = 22,
    IfxVadc_Protection_initGroup7 = 23,
    IfxVadc_Protection_initGroup8 = 24,
    IfxVadc_Protection_initGroup9 = 25,
    IfxVadc_Protection_initGroup10 = 26,
    IfxVadc_Protection_initGroup11 = 27,
    IfxVadc_Protection_initGroup12 = 28,
    IfxVadc_Protection_initGroup13 = 29,
    IfxVadc_Protection_initGroup14 = 30,
    IfxVadc_Protection_globalConfig = 31,
    IfxVadc_Protection_serviceGroup0 = 32,
    IfxVadc_Protection_serviceGroup1 = 33,
    IfxVadc_Protection_serviceGroup2 = 34,
    IfxVadc_Protection_serviceGroup3 = 35,
    IfxVadc_Protection_serviceGroup4 = 36,
    IfxVadc_Protection_serviceGroup5 = 37,
    IfxVadc_Protection_serviceGroup6 = 38,
    IfxVadc_Protection_serviceGroup7 = 39,
    IfxVadc_Protection_serviceGroup8 = 40,
    IfxVadc_Protection_serviceGroup9 = 41,
    IfxVadc_Protection_serviceGroup10 = 42,
    IfxVadc_Protection_serviceGroup11 = 43,
    IfxVadc_Protection_serviceGroup12 = 44,
    IfxVadc_Protection_serviceGroup13 = 45,
    IfxVadc_Protection_serviceGroup14 = 46,
    IfxVadc_Protection_testFunction = 47,
    IfxVadc_Protection_resultRegisterGroup0 = 48,
    IfxVadc_Protection_resultRegisterGroup1 = 49,
    IfxVadc_Protection_resultRegisterGroup2 = 50,
    IfxVadc_Protection_resultRegisterGroup3 = 51,
    IfxVadc_Protection_resultRegisterGroup4 = 52,
    IfxVadc_Protection_resultRegisterGroup5 = 53,
    IfxVadc_Protection_resultRegisterGroup6 = 54,
    IfxVadc_Protection_resultRegisterGroup7 = 55,
    IfxVadc_Protection_resultRegisterGroup8 = 56,
    IfxVadc_Protection_resultRegisterGroup9 = 57,
    IfxVadc_Protection_resultRegisterGroup10 = 58,
    IfxVadc_Protection_resultRegisterGroup11 = 59,
    IfxVadc_Protection_resultRegisterGroup12 = 60,
    IfxVadc_Protection_resultRegisterGroup13 = 61,
    IfxVadc_Protection_resultRegisterGroup14 = 62
} IfxVadc_Protection;



typedef enum
{
    IfxVadc_RequestSlotPriority_lowest = 0,
    IfxVadc_RequestSlotPriority_low = 1,
    IfxVadc_RequestSlotPriority_high = 2,
    IfxVadc_RequestSlotPriority_highest = 3
} IfxVadc_RequestSlotPriority;



typedef enum
{
    IfxVadc_RequestSlotStartMode_waitForStart = 0,
    IfxVadc_RequestSlotStartMode_cancelInjectRepeat = 1
} IfxVadc_RequestSlotStartMode;



typedef enum
{
    IfxVadc_RequestSource_queue = 0,
    IfxVadc_RequestSource_scan = 1,
    IfxVadc_RequestSource_background = 2
} IfxVadc_RequestSource;




typedef enum
{
    IfxVadc_SleepMode_enable = 0,
    IfxVadc_SleepMode_disable = 1
} IfxVadc_SleepMode;



typedef enum
{
    IfxVadc_SrcNr_group0 = 0,
    IfxVadc_SrcNr_group1 = 1,
    IfxVadc_SrcNr_group2 = 2,
    IfxVadc_SrcNr_group3 = 3,
    IfxVadc_SrcNr_shared0 = 4,
    IfxVadc_SrcNr_shared1 = 5,
    IfxVadc_SrcNr_shared2 = 6,
    IfxVadc_SrcNr_shared3 = 7
} IfxVadc_SrcNr;





typedef enum
{
    IfxVadc_Status_noError = 0,
    IfxVadc_Status_notInitialised = 1,
    IfxVadc_Status_invalidGroup = 2,
    IfxVadc_Status_invalidChannel = 3,
    IfxVadc_Status_queueFull = 4,
    IfxVadc_Status_noAccess = 5,
    IfxVadc_Status_channelsStillPending = 6
} IfxVadc_Status;



typedef enum
{
    IfxVadc_TriggerMode_noExternalTrigger = 0,
    IfxVadc_TriggerMode_uponFallingEdge = 1,
    IfxVadc_TriggerMode_uponRisingEdge = 2,
    IfxVadc_TriggerMode_uponAnyEdge = 3
} IfxVadc_TriggerMode;



typedef enum
{
    IfxVadc_TriggerSource_0 = 0,
    IfxVadc_TriggerSource_1,
    IfxVadc_TriggerSource_2,
    IfxVadc_TriggerSource_3,
    IfxVadc_TriggerSource_4,
    IfxVadc_TriggerSource_5,
    IfxVadc_TriggerSource_6,
    IfxVadc_TriggerSource_7,
    IfxVadc_TriggerSource_8,
    IfxVadc_TriggerSource_9,
    IfxVadc_TriggerSource_10,
    IfxVadc_TriggerSource_11,
    IfxVadc_TriggerSource_12,
    IfxVadc_TriggerSource_13,
    IfxVadc_TriggerSource_14,
    IfxVadc_TriggerSource_15
} IfxVadc_TriggerSource;
# 499 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadMode(Ifx_VADC_G *group, uint32 resultIdx, boolean waitForRead);






static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadModeForGlobalResultRegister(Ifx_VADC *vadc, boolean waitForRead);





static inline __attribute__ ((always_inline)) void IfxVadc_enableBackgroundScanSlotExternalTrigger(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getBackgroundScanGatingMode(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getBackgroundScanGatingSource(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getBackgroundScanSlotPriority(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getBackgroundScanSlotStartMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getBackgroundScanTriggerInput(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getBackgroundScanTriggerMode(Ifx_VADC *vadc);






static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum);
# 585 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_getGlobalResult(Ifx_VADC *vadc);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency);
# 629 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_getGroupResult(Ifx_VADC_G *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults);
# 663 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_getResult(Ifx_VADC_G *group, uint32 resultIdx);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoBackgroundScanEnabled(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestBackgroundScanSlotEnabled(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) void IfxVadc_setAutoBackgroundScan(Ifx_VADC *vadc, boolean autoBackgroundScanEnable);
# 713 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScan(Ifx_VADC *vadc, IfxVadc_GroupId groupId, uint32 channels, uint32 mask);







static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotGatingConfig(Ifx_VADC *vadc, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotTriggerConfig(Ifx_VADC *vadc, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource);
# 738 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_startBackgroundScan(Ifx_VADC *vadc);
# 748 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern IfxVadc_Status IfxVadc_getBackgroundScanStatus(Ifx_VADC *vadc);
# 785 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern Ifx_VADC_G_RES IfxVadc_getResultBasedOnRequestSource(Ifx_VADC *vadc, Ifx_VADC_G *group, IfxVadc_ChannelId channel, IfxVadc_RequestSource sourceType);
# 800 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_disableScanSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) void IfxVadc_enableScanSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getScanSlotGatingMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getScanSlotGatingSource(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getScanSlotPriority(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getScanSlotStartMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getScanSlotTriggerInput(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getScanSlotTriggerMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoScanEnabled(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestScanSlotEnabled(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) void IfxVadc_setAutoScan(Ifx_VADC_G *vadcG, boolean autoscanEnable);







static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotTriggerConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource);
# 886 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_startScan(Ifx_VADC_G *group);
# 896 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern IfxVadc_Status IfxVadc_getScanStatus(Ifx_VADC_G *group);
# 922 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_setScan(Ifx_VADC_G *group, uint32 channels, uint32 mask);
# 951 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_addToQueue(Ifx_VADC_G *group, IfxVadc_ChannelId channel, uint32 options);






static inline __attribute__ ((always_inline)) void IfxVadc_clearQueue(Ifx_VADC_G *vadcG, boolean flushQueue);





static inline __attribute__ ((always_inline)) void IfxVadc_disableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) void IfxVadc_enableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getQueueSlotGatingMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getQueueSlotGatingSource(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getQueueSlotPriority(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getQueueSlotStartMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getQueueSlotTriggerInput(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getQueueSlotTriggerMode(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestQueueSlotEnabled(Ifx_VADC_G *vadcG);







static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotTriggerOperatingConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource);





static inline __attribute__ ((always_inline)) void IfxVadc_startQueue(Ifx_VADC_G *group);
# 1050 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern IfxVadc_Status IfxVadc_getQueueStatus(Ifx_VADC_G *group);
# 1067 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_initEmuxPin(const IfxVadc_Emux_Out *emux, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxVadc_initGxBflPin(const IfxVadc_GxBfl_Out *gxBfl, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver);
# 1091 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) uint32 IfxVadc_calculateSampleTime(float32 analogFrequency, float32 sampleTime);
# 1101 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern float32 IfxVadc_getAdcAnalogFrequency(Ifx_VADC *vadc);





extern float32 IfxVadc_getAdcDigitalFrequency(Ifx_VADC *vadc);
# 1122 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_clearAllResultRequests(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) IfxVadc_ArbitrationRounds IfxVadc_getArbiterRoundLength(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP0 IfxVadc_getChannelResultServiceRequestNodePointer0(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP1 IfxVadc_getChannelResultServiceRequestNodePointer1(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP0 IfxVadc_getChannelServiceRequestNodePointer0(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) uint8 IfxVadc_getMasterIndex(Ifx_VADC_G *vadcG);





static inline __attribute__ ((always_inline)) void IfxVadc_resetGroup(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) void IfxVadc_setAnalogConvertControl(Ifx_VADC_G *vadcG, IfxVadc_AnalogConverterMode analogConverterMode);






static inline __attribute__ ((always_inline)) void IfxVadc_setArbitrationRoundLength(Ifx_VADC_G *vadcG, IfxVadc_ArbitrationRounds arbiterRoundLength);







static inline __attribute__ ((always_inline)) void IfxVadc_setGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1189 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);






static inline __attribute__ ((always_inline)) void IfxVadc_setMasterIndex(Ifx_VADC_G *vadcG, uint8 masterIndex);
# 1210 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_setArbiterPriority(Ifx_VADC_G *vadcG, boolean slotEnable, IfxVadc_RequestSlotPriority prio, IfxVadc_RequestSlotStartMode mode, IfxVadc_RequestSource slot);
# 1225 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_disableModule(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) void IfxVadc_enableModule(Ifx_VADC *vadc);






static inline __attribute__ ((always_inline)) uint8 IfxVadc_getAdcCalibrationActiveState(Ifx_VADC *vadc, uint8 adcCalGroupNum);





static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBCFG IfxVadc_getGlobalConfigValue(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) boolean IfxVadc_getStartupCalibration(Ifx_VADC *vadc);





static inline __attribute__ ((always_inline)) void IfxVadc_initiateStartupCalibration(Ifx_VADC *vadc);







static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1273 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);






static inline __attribute__ ((always_inline)) void IfxVadc_setSleepMode(Ifx_VADC *vadc, IfxVadc_SleepMode mode);
# 1291 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_disableAccess(Ifx_VADC *vadc, IfxVadc_Protection protectionSet);







extern void IfxVadc_disablePostCalibration(Ifx_VADC *vadc, IfxVadc_GroupId group, boolean disable);






extern void IfxVadc_enableAccess(Ifx_VADC *vadc, IfxVadc_Protection protectionSet);






extern void IfxVadc_enableGroupSync(Ifx_VADC *vadc, uint32 ccu6Num);




extern float32 IfxVadc_getAdcModuleFrequency(void);






extern volatile Ifx_SRC_SRCR *IfxVadc_getSrcAddress(IfxVadc_GroupId group, IfxVadc_SrcNr index);






extern void IfxVadc_initialiseAdcArbiterClock(Ifx_VADC *vadc, uint32 arbiterClockDivider);






extern void IfxVadc_initialiseAdcConverterClock(Ifx_VADC *vadc, uint32 converterClockDivider);






extern uint32 IfxVadc_initializeFAdcD(Ifx_VADC *vadc, uint32 fAdcD);






extern uint32 IfxVadc_initializeFAdcI(Ifx_VADC *vadc, uint32 fAdcI);






extern boolean IfxVadc_isPostCalibration(Ifx_VADC *vadc, IfxVadc_GroupId group);





extern void IfxVadc_resetKernel(Ifx_VADC *vadc);






extern void IfxVadc_selectPowerSupplyVoltage(Ifx_VADC *vadc, IfxVadc_LowSupplyVoltageSelect supplyVoltage);





extern void IfxVadc_startupCalibration(Ifx_VADC *vadc);
# 1395 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_clearChannelRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelId);







static inline __attribute__ ((always_inline)) void IfxVadc_enableFifoMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister, IfxVadc_FifoMode fifoMode);






static inline __attribute__ ((always_inline)) void IfxVadc_enableServiceRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister);





static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHASS IfxVadc_getAssignedChannels(Ifx_VADC_G *vadcG);






static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHCTR IfxVadc_getChannelControlConfig(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);






static inline __attribute__ ((always_inline)) IfxVadc_InputClasses IfxVadc_getChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);






static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency);






static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);







static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundResultTarget(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean globalResultUsage);







static inline __attribute__ ((always_inline)) void IfxVadc_setBoundaryMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundaryExtension boundaryMode);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_InputClasses inputClass);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelLimitCheckMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_LimitCheck limitCheck);






static inline __attribute__ ((always_inline)) void IfxVadc_setGroupPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex);







static inline __attribute__ ((always_inline)) void IfxVadc_setLowerBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection lowerBoundary);







static inline __attribute__ ((always_inline)) void IfxVadc_setReferenceInput(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelReference reference);







static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister);







static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister);







static inline __attribute__ ((always_inline)) void IfxVadc_setResultPosition(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean rightAlignedStorage);







static inline __attribute__ ((always_inline)) void IfxVadc_setSyncRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean synchonize);







static inline __attribute__ ((always_inline)) void IfxVadc_setUpperBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection upperBoundary);







static inline __attribute__ ((always_inline)) void IfxVadc_storeGroupResult(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelResult resultRegister);
# 1578 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern float32 IfxVadc_getChannelConversionTime(Ifx_VADC *vadc, IfxVadc_GroupId group, IfxVadc_InputClasses inputClass, float32 analogFrequency, float32 moduleFrequency, IfxVadc_ConversionType conversionMode);
# 1594 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency);






static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum);







static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency);







static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1634 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);







static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution);
# 1651 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupSampletime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime);







static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxInterfaceForGroup(Ifx_VADC *vadc, IfxVadc_EmuxInterface emuxInterface, IfxVadc_GroupId group);
# 1676 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
extern void IfxVadc_configExternalMultiplexerMode(Ifx_VADC *vadc, Ifx_VADC_G *vadcG, IfxVadc_ExternalMultiplexerMode mode, uint8 channels, IfxVadc_EmuxSelectValue startChannel, IfxVadc_EmuxCodingScheme code, IfxVadc_EmuxSampleTimeControl sampleTimeControl, IfxVadc_ChannelSelectionStyle channelSelectionStyle);
# 1688 "./0_Src/4_McHal/Tricore/Vadc/Std/IfxVadc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP1 IfxVadc_getChannelServiceRequestNodePointer1(Ifx_VADC_G *vadcG);







static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel);





static inline __attribute__ ((always_inline)) void IfxVadc_addToQueue(Ifx_VADC_G *group, IfxVadc_ChannelId channel, uint32 options)
{
    group->QINR0.U = channel | options;
}


static inline __attribute__ ((always_inline)) uint32 IfxVadc_calculateSampleTime(float32 analogFrequency, float32 sampleTime)
{
    uint32 ticks;

    ticks = (uint32)(sampleTime * analogFrequency) - 2;

    if (ticks > 31)
    {
        ticks = (ticks / 16) + 15;
    }

    ticks = __minu(ticks, 0xFFu);

    return ticks;
}


static inline __attribute__ ((always_inline)) void IfxVadc_clearAllResultRequests(Ifx_VADC_G *vadcG)
{
    vadcG->REFCLR.U = 0x0000FFFFu;
}


static inline __attribute__ ((always_inline)) void IfxVadc_clearChannelRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelId)
{
    vadcG->CEFCLR.U = 1 << channelId;
}


static inline __attribute__ ((always_inline)) void IfxVadc_clearQueue(Ifx_VADC_G *vadcG, boolean flushQueue)
{
    vadcG->QMR0.B.FLUSH = flushQueue;
}


static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadMode(Ifx_VADC_G *group, uint32 resultIdx, boolean waitForRead)
{
    group->RCR[resultIdx].B.WFR = waitForRead;
}


static inline __attribute__ ((always_inline)) void IfxVadc_configureWaitForReadModeForGlobalResultRegister(Ifx_VADC *vadc, boolean waitForRead)
{
    vadc->GLOBRCR.B.WFR = waitForRead;
}


static inline __attribute__ ((always_inline)) void IfxVadc_disableModule(Ifx_VADC *vadc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    vadc->CLC.B.DISR = 1;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxVadc_disableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->QMR0.B.ENTR = 0;
}


static inline __attribute__ ((always_inline)) void IfxVadc_disableScanSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->ASMR.B.ENTR = 0;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableBackgroundScanSlotExternalTrigger(Ifx_VADC *vadc)
{
    vadc->BRSMR.B.ENTR = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableFifoMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister, IfxVadc_FifoMode fifoMode)
{
    vadcG->RCR[resultRegister].B.FEN = fifoMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableModule(Ifx_VADC *vadc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(passwd);
    vadc->CLC.U = 0x00000000;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableQueueSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->QMR0.B.ENTR = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableScanSlotExternalTrigger(Ifx_VADC_G *vadcG)
{
    vadcG->ASMR.B.ENTR = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_enableServiceRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelResult resultRegister)
{
    vadcG->RCR[resultRegister].B.SRGEN = 1;
}


static inline __attribute__ ((always_inline)) uint8 IfxVadc_getAdcCalibrationActiveState(Ifx_VADC *vadc, uint8 adcCalGroupNum)
{
    uint8 status;
    status = vadc->G[adcCalGroupNum].ARBCFG.B.CAL;
    return status;
}


static inline __attribute__ ((always_inline)) IfxVadc_ArbitrationRounds IfxVadc_getArbiterRoundLength(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_ArbitrationRounds)vadcG->ARBCFG.B.ARBRND;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHASS IfxVadc_getAssignedChannels(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_CHASS assignChannels;
    assignChannels.U = vadcG->CHASS.U;
    return assignChannels;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getBackgroundScanGatingMode(Ifx_VADC *vadc)
{
    return (IfxVadc_GatingMode)vadc->BRSMR.B.ENGT;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getBackgroundScanGatingSource(Ifx_VADC *vadc)
{
    return (IfxVadc_GatingSource)vadc->BRSCTRL.B.GTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getBackgroundScanSlotPriority(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotPriority)vadcG->ARBPR.B.PRIO2;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getBackgroundScanSlotStartMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotStartMode)vadcG->ARBPR.B.CSM2;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getBackgroundScanTriggerInput(Ifx_VADC *vadc)
{
    return (IfxVadc_TriggerSource)vadc->BRSCTRL.B.XTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getBackgroundScanTriggerMode(Ifx_VADC *vadc)
{
    return (IfxVadc_TriggerMode)vadc->BRSCTRL.B.XTMODE;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CHCTR IfxVadc_getChannelControlConfig(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    Ifx_VADC_G_CHCTR tempChctr;
    tempChctr.U = vadcG->CHCTR[channelIndex].U;
    return tempChctr;
}


static inline __attribute__ ((always_inline)) IfxVadc_InputClasses IfxVadc_getChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    return (IfxVadc_InputClasses)vadcG->CHCTR[channelIndex].B.ICLSEL;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP0 IfxVadc_getChannelResultServiceRequestNodePointer0(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_REVNP0 resultServiceRequestNodePtr0;
    resultServiceRequestNodePtr0.U = vadcG->REVNP0.U;
    return resultServiceRequestNodePtr0;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_REVNP1 IfxVadc_getChannelResultServiceRequestNodePointer1(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_REVNP1 resultServiceRequestNodePtr1;
    resultServiceRequestNodePtr1.U = vadcG->REVNP1.U;
    return resultServiceRequestNodePtr1;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP0 IfxVadc_getChannelServiceRequestNodePointer0(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_CEVNP0 serviceRequestNodePtr;
    serviceRequestNodePtr.U = vadcG->CEVNP0.U;
    return serviceRequestNodePtr;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_CEVNP1 IfxVadc_getChannelServiceRequestNodePointer1(Ifx_VADC_G *vadcG)
{
    Ifx_VADC_G_CEVNP1 serviceRequestNodePtr;
    serviceRequestNodePtr.U = vadcG->CEVNP1.U;
    return serviceRequestNodePtr;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadc->GLOBICLASS[inputClassNum].B.CME;
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency)
{
    return (float32)((2) + vadc->GLOBICLASS[inputClassNum].B.STCE) / analogFrequency;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadcG->ICLASS[inputClassNum].B.CME;
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getEmuxGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency)
{
    return (float32)((2) + vadcG->ICLASS[inputClassNum].B.STCE) / analogFrequency;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBCFG IfxVadc_getGlobalConfigValue(Ifx_VADC *vadc)
{
    Ifx_VADC_GLOBCFG globCfg;
    globCfg.U = vadc->GLOBCFG.U;
    return globCfg;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadc->GLOBICLASS[inputClassNum].B.CMS;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_getGlobalResult(Ifx_VADC *vadc)
{
    Ifx_VADC_GLOBRES tmpGlobalResult;

    tmpGlobalResult.U = vadc->GLOBRES.U;

    return tmpGlobalResult;
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency)
{
    uint32 sampleTime = vadc->GLOBICLASS[inputClassNum].B.STCS;

    if (sampleTime > 16)
    {
        sampleTime = (sampleTime - 15) * 16;
    }

    return (float32)((2) + sampleTime) / analogFrequency;
}


static inline __attribute__ ((always_inline)) IfxVadc_ChannelResolution IfxVadc_getGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum)
{
    return (IfxVadc_ChannelResolution)vadcG->ICLASS[inputClassNum].B.CMS;
}


static inline __attribute__ ((always_inline)) void IfxVadc_getGroupResult(Ifx_VADC_G *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults)
{
    uint32 idx;

    for (idx = 0; idx < numResults; idx++)
    {
        results[idx].U = group->RES[resultOffset + idx].U;
    }
}


static inline __attribute__ ((always_inline)) float32 IfxVadc_getGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency)
{
    uint32 sampleTime = vadcG->ICLASS[inputClassNum].B.STCS;

    if (sampleTime > 16)
    {
        sampleTime = (sampleTime - 15) * 16;
    }

    return (float32)((2) + sampleTime) / analogFrequency;
}


static inline __attribute__ ((always_inline)) uint8 IfxVadc_getMasterIndex(Ifx_VADC_G *vadcG)
{
    uint8 masterIndex = 0;
    masterIndex = vadcG->SYNCTR.B.STSEL;
    return masterIndex;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getQueueSlotGatingMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingMode)vadcG->QMR0.B.ENGT;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getQueueSlotGatingSource(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingSource)vadcG->QCTRL0.B.GTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getQueueSlotPriority(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotPriority)vadcG->ARBPR.B.PRIO0;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getQueueSlotStartMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotStartMode)vadcG->ARBPR.B.CSM0;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getQueueSlotTriggerInput(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerSource)vadcG->QCTRL0.B.XTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getQueueSlotTriggerMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerMode)vadcG->QCTRL0.B.XTMODE;
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_getResult(Ifx_VADC_G *group, uint32 resultIdx)
{
    Ifx_VADC_G_RES tmpResult;

    tmpResult.U = group->RES[resultIdx].U;

    return tmpResult;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingMode IfxVadc_getScanSlotGatingMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingMode)vadcG->ASMR.B.ENGT;
}


static inline __attribute__ ((always_inline)) IfxVadc_GatingSource IfxVadc_getScanSlotGatingSource(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_GatingSource)vadcG->ASCTRL.B.GTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotPriority IfxVadc_getScanSlotPriority(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotPriority)vadcG->ARBPR.B.PRIO1;
}


static inline __attribute__ ((always_inline)) IfxVadc_RequestSlotStartMode IfxVadc_getScanSlotStartMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_RequestSlotStartMode)vadcG->ARBPR.B.CSM1;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerSource IfxVadc_getScanSlotTriggerInput(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerSource)vadcG->ASCTRL.B.XTSEL;
}


static inline __attribute__ ((always_inline)) IfxVadc_TriggerMode IfxVadc_getScanSlotTriggerMode(Ifx_VADC_G *vadcG)
{
    return (IfxVadc_TriggerMode)vadcG->ASCTRL.B.XTMODE;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_getStartupCalibration(Ifx_VADC *vadc)
{
    return (boolean)vadc->GLOBCFG.B.SUCAL;
}


static inline __attribute__ ((always_inline)) void IfxVadc_initEmuxPin(const IfxVadc_Emux_Out *emux, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(emux->pin.port, emux->pin.pinIndex, outputMode, emux->select);
    IfxPort_setPinPadDriver(emux->pin.port, emux->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxVadc_initGxBflPin(const IfxVadc_GxBfl_Out *gxBfl, IfxPort_OutputMode outputMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(gxBfl->pin.port, gxBfl->pin.pinIndex, outputMode, gxBfl->select);
    IfxPort_setPinPadDriver(gxBfl->pin.port, gxBfl->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxVadc_initiateStartupCalibration(Ifx_VADC *vadc)
{
    vadc->GLOBCFG.B.SUCAL = 1;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoBackgroundScanEnabled(Ifx_VADC *vadc)
{
    return (boolean)vadc->BRSMR.B.SCAN;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isAutoScanEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ASMR.B.SCAN;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestBackgroundScanSlotEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ARBPR.B.ASEN2;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestQueueSlotEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ARBPR.B.ASEN0;
}


static inline __attribute__ ((always_inline)) boolean IfxVadc_isRequestScanSlotEnabled(Ifx_VADC_G *vadcG)
{
    return (boolean)vadcG->ARBPR.B.ASEN1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_resetGroup(Ifx_VADC_G *vadcG)
{
    vadcG->ARBCFG.B.ANONC = IfxVadc_AnalogConverterMode_off;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setAnalogConvertControl(Ifx_VADC_G *vadcG, IfxVadc_AnalogConverterMode analogConverterMode)
{
    vadcG->ARBCFG.B.ANONC = analogConverterMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setArbitrationRoundLength(Ifx_VADC_G *vadcG, IfxVadc_ArbitrationRounds arbiterRoundLength)
{
    vadcG->ARBCFG.B.ARBRND = arbiterRoundLength;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setAutoBackgroundScan(Ifx_VADC *vadc, boolean autoBackgroundScanEnable)
{
    vadc->BRSMR.B.SCAN = autoBackgroundScanEnable;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setAutoScan(Ifx_VADC_G *vadcG, boolean autoscanEnable)
{
    vadcG->ASMR.B.SCAN = autoscanEnable;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    vadcG->CHASS.U &= ~(1 << channelIndex);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundResultTarget(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean globalResultUsage)
{
    vadcG->CHCTR[channelIndex].B.RESTBS = globalResultUsage;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScan(Ifx_VADC *vadc, IfxVadc_GroupId groupId, uint32 channels, uint32 mask)
{
    channels = (vadc->BRSSEL[groupId].U & ~mask) | channels;
    vadc->BRSSEL[groupId].U = channels;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotGatingConfig(Ifx_VADC *vadc, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode)
{
    Ifx_VADC_BRSCTRL brsctrl;
    brsctrl.U = vadc->BRSCTRL.U;
    brsctrl.B.GTWC = 1;
    brsctrl.B.GTSEL = gatingSource;
    vadc->BRSCTRL.U = brsctrl.U;
    vadc->BRSMR.B.ENGT = gatingMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBackgroundScanSlotTriggerConfig(Ifx_VADC *vadc, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource)
{
    Ifx_VADC_BRSCTRL brsctrl;
    brsctrl.U = vadc->BRSCTRL.U;
    brsctrl.B.XTWC = 1;
    brsctrl.B.XTMODE = triggerMode;
    brsctrl.B.XTSEL = triggerSource;
    vadc->BRSCTRL.U = brsctrl.U;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setBoundaryMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundaryExtension boundaryMode)
{
    vadcG->CHCTR[channelIndex].B.BNDSELX = boundaryMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel)
{
    vadcG->CEVNP0.U &= ~((0xfu) << (channel * 4));
    vadcG->CEVNP0.U |= (channelSrcNr << (channel * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelEventNodePointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr channelSrcNr, IfxVadc_ChannelId channel)
{
    vadcG->CEVNP1.U &= ~((0xfu) << (channel * 4));
    vadcG->CEVNP1.U |= (channelSrcNr << (channel * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelInputClass(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_InputClasses inputClass)
{
    vadcG->CHCTR[channelIndex].B.ICLSEL = inputClass;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setChannelLimitCheckMode(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_LimitCheck limitCheck)
{
    vadcG->CHCTR[channelIndex].B.CHEVMODE = limitCheck;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadc->GLOBICLASS[inputClassNum].B.CME = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadc->GLOBICLASS[inputClassNum].B.STCE = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadcG->ICLASS[inputClassNum].B.CME = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxGroupSampletime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadcG->ICLASS[inputClassNum].B.STCE = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setEmuxInterfaceForGroup(Ifx_VADC *vadc, IfxVadc_EmuxInterface emuxInterface, IfxVadc_GroupId group)
{
    if (emuxInterface == IfxVadc_EmuxInterface_0)
    {
        vadc->EMUXSEL.B.EMUXGRP0 = group;
    }
    else
    {
        vadc->EMUXSEL.B.EMUXGRP1 = group;
    }
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalResolution(Ifx_VADC *vadc, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadc->GLOBICLASS[inputClassNum].B.CMS = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGlobalSampleTime(Ifx_VADC *vadc, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadc->GLOBICLASS[inputClassNum].B.STCS = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGroupPriorityChannel(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex)
{
    vadcG->CHASS.U |= (1 << channelIndex);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGroupResolution(Ifx_VADC_G *vadcG, uint8 inputClassNum, IfxVadc_ChannelResolution resolution)
{
    vadcG->ICLASS[inputClassNum].B.CMS = resolution;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setGroupSampleTime(Ifx_VADC_G *vadcG, uint8 inputClassNum, float32 analogFrequency, float32 sampleTime)
{
    vadcG->ICLASS[inputClassNum].B.STCS = IfxVadc_calculateSampleTime(analogFrequency, sampleTime);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setLowerBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection lowerBoundary)
{
    vadcG->CHCTR[channelIndex].B.BNDSELL = lowerBoundary;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setMasterIndex(Ifx_VADC_G *vadcG, uint8 masterIndex)
{
    vadcG->SYNCTR.B.STSEL = (masterIndex % 4);
    vadcG->SYNCTR.U |= (0x00000008U << (masterIndex % 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode)
{
    Ifx_VADC_G_QCTRL0 qctrl0;
    qctrl0.U = vadcG->QCTRL0.U;
    qctrl0.B.GTWC = 1;
    qctrl0.B.GTSEL = gatingSource;
    vadcG->QCTRL0.U = qctrl0.U;
    vadcG->QMR0.B.ENGT = gatingMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setQueueSlotTriggerOperatingConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource)
{
    Ifx_VADC_G_QCTRL0 qctrl0;
    qctrl0.U = vadcG->QCTRL0.U;
    qctrl0.B.XTWC = 1;
    qctrl0.B.XTMODE = triggerMode;
    qctrl0.B.XTSEL = triggerSource;
    vadcG->QCTRL0.U = qctrl0.U;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setReferenceInput(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelReference reference)
{
    vadcG->CHCTR[channelIndex].B.REFSEL = reference;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer0(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister)
{
    vadcG->REVNP0.U &= ~((0xfu) << (resultRegister * 4));
    vadcG->REVNP0.U |= (resultSrcNr << (resultRegister * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setResultNodeEventPointer1(Ifx_VADC_G *vadcG, IfxVadc_SrcNr resultSrcNr, IfxVadc_ChannelResult resultRegister)
{
    vadcG->REVNP1.U &= ~((0xfu) << ((resultRegister - IfxVadc_ChannelResult_8) * 4));
    vadcG->REVNP1.U |= (resultSrcNr << ((resultRegister - IfxVadc_ChannelResult_8) * 4));
}


static inline __attribute__ ((always_inline)) void IfxVadc_setResultPosition(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean rightAlignedStorage)
{
    vadcG->CHCTR[channelIndex].B.RESPOS = rightAlignedStorage;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotGatingConfig(Ifx_VADC_G *vadcG, IfxVadc_GatingSource gatingSource, IfxVadc_GatingMode gatingMode)
{
    Ifx_VADC_G_ASCTRL asctrl;
    asctrl.U = vadcG->ASCTRL.U;
    asctrl.B.GTWC = 1;
    asctrl.B.GTSEL = gatingSource;
    vadcG->ASCTRL.U = asctrl.U;
    vadcG->ASMR.B.ENGT = gatingMode;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setScanSlotTriggerConfig(Ifx_VADC_G *vadcG, IfxVadc_TriggerMode triggerMode, IfxVadc_TriggerSource triggerSource)
{
    Ifx_VADC_G_ASCTRL asctrl;
    asctrl.U = vadcG->ASCTRL.U;
    asctrl.B.XTWC = 1;
    asctrl.B.XTMODE = triggerMode;
    asctrl.B.XTSEL = triggerSource;
    vadcG->ASCTRL.U = asctrl.U;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setSleepMode(Ifx_VADC *vadc, IfxVadc_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    vadc->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxVadc_setSyncRequest(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, boolean synchonize)
{
    vadcG->CHCTR[channelIndex].B.SYNC = synchonize;
}


static inline __attribute__ ((always_inline)) void IfxVadc_setUpperBoundary(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_BoundarySelection upperBoundary)
{
    vadcG->CHCTR[channelIndex].B.BNDSELU = upperBoundary;
}


static inline __attribute__ ((always_inline)) void IfxVadc_startBackgroundScan(Ifx_VADC *vadc)
{
    vadc->BRSMR.B.LDEV = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_startQueue(Ifx_VADC_G *group)
{
    group->QMR0.B.TREV = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_startScan(Ifx_VADC_G *group)
{
    group->ASMR.B.LDEV = 1;
}


static inline __attribute__ ((always_inline)) void IfxVadc_storeGroupResult(Ifx_VADC_G *vadcG, IfxVadc_ChannelId channelIndex, IfxVadc_ChannelResult resultRegister)
{
    vadcG->CHCTR[channelIndex].B.RESREG = resultRegister;
}
# 344 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h" 2





typedef uint8 IfxVadc_Adc_SYNCTR_STSEL;
# 359 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
typedef struct
{
    Ifx_VADC *vadc;
} IfxVadc_Adc;



typedef struct
{
    IfxVadc_GatingSource gatingSource;
    IfxVadc_TriggerSource triggerSource;
    IfxVadc_GatingMode gatingMode;
    IfxVadc_TriggerMode triggerMode;
} IfxVadc_Adc_GatingTriggerConfig;







typedef struct
{
    IfxVadc_ArbitrationRounds arbiterRoundLength;
    boolean requestSlotQueueEnabled;
    boolean requestSlotScanEnabled;
    boolean requestSlotBackgroundScanEnabled;
} IfxVadc_Adc_ArbiterConfig;



typedef struct
{
    boolean autoBackgroundScanEnabled;
    IfxVadc_Adc_GatingTriggerConfig triggerConfig;
    IfxVadc_RequestSlotPriority requestSlotPrio;
    IfxVadc_RequestSlotStartMode requestSlotStartMode;
} IfxVadc_Adc_BackgroundScanConfig;



typedef struct
{
    float32 sampleTime;
    IfxVadc_ChannelResolution resolution;
} IfxVadc_Adc_ClassConfig;



typedef struct
{
    IfxVadc_Adc module;
    Ifx_VADC_G *group;
    IfxVadc_GroupId groupId;
} IfxVadc_Adc_Group;



typedef struct
{
    boolean flushQueueAfterInit;
    IfxVadc_Adc_GatingTriggerConfig triggerConfig;
    IfxVadc_RequestSlotPriority requestSlotPrio;
    IfxVadc_RequestSlotStartMode requestSlotStartMode;
} IfxVadc_Adc_QueueConfig;



typedef struct
{
    boolean autoscanEnabled;
    IfxVadc_Adc_GatingTriggerConfig triggerConfig;
    IfxVadc_RequestSlotPriority requestSlotPrio;
    IfxVadc_RequestSlotStartMode requestSlotStartMode;
} IfxVadc_Adc_ScanConfig;



typedef struct
{
    IfxVadc_Emux_Out *pins[3];
    IfxPort_OutputMode outputMode;
    IfxPort_PadDriver padDriver;
} IfxVadc_Adc_EmuxPinConfig;





typedef struct
{
    IfxVadc_ChannelId channel;
    IfxVadc_ChannelResult resultreg;
    const IfxVadc_Adc_Group *group;
} IfxVadc_Adc_Channel;



typedef struct
{
    boolean globalResultUsage;
    boolean synchonize;
    boolean backgroundChannel;
    boolean rightAlignedStorage;
    Ifx_Priority resultPriority;
    Ifx_Priority channelPriority;
    IfxSrc_Tos resultServProvider;
    IfxSrc_Tos channelServProvider;
    IfxVadc_SrcNr resultSrcNr;
    IfxVadc_SrcNr channelSrcNr;
    IfxVadc_ChannelId channelId;
    IfxVadc_InputClasses inputClass;
    IfxVadc_ChannelReference reference;
    IfxVadc_ChannelResult resultRegister;
    IfxVadc_BoundarySelection lowerBoundary;
    IfxVadc_BoundarySelection upperBoundary;
    IfxVadc_BoundaryExtension boundaryMode;
    IfxVadc_LimitCheck limitCheck;
    const IfxVadc_Adc_Group *group;
} IfxVadc_Adc_ChannelConfig;



typedef struct
{
    Ifx_VADC *vadc;
    IfxVadc_Adc_ClassConfig globalInputClass[(2)];
    float32 digitalFrequency;
    float32 analogFrequency;
    float32 moduleFrequency;
    boolean startupCalibration;


    IfxVadc_LowSupplyVoltageSelect supplyVoltage;
} IfxVadc_Adc_Config;



typedef struct
{
    Ifx_VADC *vadc;
    IfxVadc_ExternalMultiplexerMode mode;
    IfxVadc_EmuxSelectValue startChannel;

    IfxVadc_EmuxCodingScheme code;
    IfxVadc_EmuxSampleTimeControl sampleTimeControl;
    IfxVadc_GroupId groupId;
    uint8 channels;
    IfxVadc_EmuxInterface emuxInterface;
    IfxVadc_Adc_EmuxPinConfig emuxOutPinConfig;
    IfxVadc_ChannelSelectionStyle channelSelectionStyle;
} IfxVadc_Adc_EmuxControl;



typedef struct
{
    const IfxVadc_Adc *module;
    IfxVadc_GroupId groupId;
    IfxVadc_GroupId master;
    IfxVadc_Adc_ClassConfig inputClass[(2)];
    IfxVadc_Adc_ScanConfig scanRequest;
    IfxVadc_Adc_QueueConfig queueRequest;
    IfxVadc_Adc_BackgroundScanConfig backgroundScanRequest;
    boolean disablePostCalibration;
    IfxVadc_Adc_ArbiterConfig arbiter;
} IfxVadc_Adc_GroupConfig;
# 543 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_deInitModule(IfxVadc_Adc *vadc);
# 553 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getModuleConfig(IfxVadc_Adc *vadc, IfxVadc_Adc_Config *config);
# 621 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResultBasedOnRequestSource(IfxVadc_Adc_Group *group, IfxVadc_ChannelId channel, IfxVadc_RequestSource sourceType);
# 631 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_disableModule(Ifx_VADC *vadc);
# 641 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern IfxVadc_Status IfxVadc_Adc_initModule(IfxVadc_Adc *vadc, const IfxVadc_Adc_Config *config);
# 651 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initModuleConfig(IfxVadc_Adc_Config *config, Ifx_VADC *vadc);
# 692 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G *IfxVadc_Adc_getGroupRegsFromGroup(const IfxVadc_Adc_Group *group);
# 779 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getGroupResult(IfxVadc_Adc_Group *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults);





static inline __attribute__ ((always_inline)) Ifx_VADC *IfxVadc_Adc_getVadcFromGroup(const IfxVadc_Adc_Group *group);
# 798 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_deInitGroup(IfxVadc_Adc_Group *group);
# 808 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_getGroupConfig(IfxVadc_Adc_Group *group, IfxVadc_Adc_GroupConfig *config);
# 818 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern IfxVadc_Status IfxVadc_Adc_initGroup(IfxVadc_Adc_Group *group, const IfxVadc_Adc_GroupConfig *config);
# 828 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initGroupConfig(IfxVadc_Adc_GroupConfig *config, IfxVadc_Adc *vadc);
# 847 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadMode(IfxVadc_Adc_Channel *channel, boolean waitForRead);
# 856 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResult(IfxVadc_Adc_Channel *channel);
# 870 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_getChannelConfig(IfxVadc_Adc_Channel *channel, IfxVadc_Adc_ChannelConfig *config);






extern float32 IfxVadc_Adc_getChannelConversionTime(IfxVadc_Adc_Channel *channel, IfxVadc_ConversionType conversionMode);
# 887 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern IfxVadc_Status IfxVadc_Adc_initChannel(IfxVadc_Adc_Channel *channel, const IfxVadc_Adc_ChannelConfig *config);
# 897 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initChannelConfig(IfxVadc_Adc_ChannelConfig *config, const IfxVadc_Adc_Group *group);
# 916 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadModeForGlobalResultRegister(IfxVadc_Adc *vadc, boolean waitForRead);





static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getBackgroundScanStatus(IfxVadc_Adc *vadc);
# 1011 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_Adc_getGlobalResult(IfxVadc_Adc *vadc);
# 1023 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setBackgroundScan(IfxVadc_Adc *vadc, IfxVadc_Adc_Group *group, uint32 channels, uint32 mask);
# 1032 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startBackgroundScan(IfxVadc_Adc *vadc);
# 1050 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getScanStatus(IfxVadc_Adc_Group *group);
# 1061 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setScan(IfxVadc_Adc_Group *group, uint32 channels, uint32 mask);
# 1070 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startScan(IfxVadc_Adc_Group *group);
# 1092 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_addToQueue(IfxVadc_Adc_Channel *channel, uint32 options);
# 1101 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_clearQueue(IfxVadc_Adc_Group *group);
# 1110 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getQueueStatus(IfxVadc_Adc_Group *group);
# 1119 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startQueue(IfxVadc_Adc_Group *group);
# 1135 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.h"
extern void IfxVadc_Adc_initExternalMultiplexerModeConfig(IfxVadc_Adc_EmuxControl *emuxConfig, Ifx_VADC *vadc);






extern void IfxVadc_Adc_initExternalMultiplexerMode(Ifx_VADC *vadc, const IfxVadc_Adc_EmuxControl *emuxControl);







static inline __attribute__ ((always_inline)) void IfxVadc_Adc_addToQueue(IfxVadc_Adc_Channel *channel, uint32 options)
{
    IfxVadc_addToQueue(channel->group->group, channel->channel, options);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_clearQueue(IfxVadc_Adc_Group *group)
{
    IfxVadc_clearQueue(group->group, 1);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadMode(IfxVadc_Adc_Channel *channel, boolean waitForRead)
{
    IfxVadc_configureWaitForReadMode(channel->group->group, channel->resultreg, waitForRead);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_configureWaitForReadModeForGlobalResultRegister(IfxVadc_Adc *vadc, boolean waitForRead)
{
    IfxVadc_configureWaitForReadModeForGlobalResultRegister(vadc->vadc, waitForRead);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_deInitModule(IfxVadc_Adc *vadc)
{
    Ifx_VADC *vadcSFR = vadc->vadc;

    IfxVadc_resetKernel(vadcSFR);
}


static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getBackgroundScanStatus(IfxVadc_Adc *vadc)
{
    return IfxVadc_getBackgroundScanStatus(vadc->vadc);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_GLOBRES IfxVadc_Adc_getGlobalResult(IfxVadc_Adc *vadc)
{
    return IfxVadc_getGlobalResult(vadc->vadc);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G *IfxVadc_Adc_getGroupRegsFromGroup(const IfxVadc_Adc_Group *group)
{
    return group->group;
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getGroupResult(IfxVadc_Adc_Group *group, Ifx_VADC_G_RES *results, uint32 resultOffset, uint32 numResults)
{
    IfxVadc_getGroupResult(group->group, results, resultOffset, numResults);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_getModuleConfig(IfxVadc_Adc *vadc, IfxVadc_Adc_Config *config)
{
    config->vadc = vadc->vadc;
    config->analogFrequency = IfxVadc_getAdcAnalogFrequency(vadc->vadc);
    config->digitalFrequency = IfxVadc_getAdcDigitalFrequency(vadc->vadc);
    config->globalInputClass[0].resolution = IfxVadc_getGlobalResolution(vadc->vadc, 0);
    config->globalInputClass[1].resolution = IfxVadc_getGlobalResolution(vadc->vadc, 1);
    config->globalInputClass[0].sampleTime = IfxVadc_getGlobalSampleTime(vadc->vadc, 0, config->analogFrequency);
    config->globalInputClass[1].sampleTime = IfxVadc_getGlobalSampleTime(vadc->vadc, 1, config->analogFrequency);
    config->moduleFrequency = IfxVadc_getAdcModuleFrequency();
    config->startupCalibration = IfxVadc_getStartupCalibration(vadc->vadc);
}


static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getQueueStatus(IfxVadc_Adc_Group *group)
{
    return IfxVadc_getQueueStatus(group->group);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResult(IfxVadc_Adc_Channel *channel)
{
    return IfxVadc_getResult(channel->group->group, channel->resultreg);
}


static inline __attribute__ ((always_inline)) Ifx_VADC_G_RES IfxVadc_Adc_getResultBasedOnRequestSource(IfxVadc_Adc_Group *group, IfxVadc_ChannelId channel, IfxVadc_RequestSource sourceType)
{
    return IfxVadc_getResultBasedOnRequestSource(group->module.vadc, group->group, channel, sourceType);
}


static inline __attribute__ ((always_inline)) IfxVadc_Status IfxVadc_Adc_getScanStatus(IfxVadc_Adc_Group *group)
{
    return IfxVadc_getScanStatus(group->group);
}


static inline __attribute__ ((always_inline)) Ifx_VADC *IfxVadc_Adc_getVadcFromGroup(const IfxVadc_Adc_Group *group)
{
    return group->module.vadc;
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setBackgroundScan(IfxVadc_Adc *vadc, IfxVadc_Adc_Group *group, uint32 channels, uint32 mask)
{
    IfxVadc_setBackgroundScan(vadc->vadc, group->groupId, channels, mask);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_setScan(IfxVadc_Adc_Group *group, uint32 channels, uint32 mask)
{
    IfxVadc_setScan(group->group, channels, mask);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startBackgroundScan(IfxVadc_Adc *vadc)
{
    IfxVadc_startBackgroundScan(vadc->vadc);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startQueue(IfxVadc_Adc_Group *group)
{
    IfxVadc_startQueue(group->group);
}


static inline __attribute__ ((always_inline)) void IfxVadc_Adc_startScan(IfxVadc_Adc_Group *group)
{
    IfxVadc_startScan(group->group);
}
# 30 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c" 2
# 42 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c"
static inline __attribute__ ((always_inline)) IfxVadc_GroupId IfxVadc_Adc_getMasterId(IfxVadc_GroupId slave, IfxVadc_Adc_SYNCTR_STSEL masterIndex);






static inline __attribute__ ((always_inline)) IfxVadc_Adc_SYNCTR_STSEL IfxVadc_Adc_getMasterKernelIndex(IfxVadc_GroupId slave, IfxVadc_GroupId master);
# 60 "0_Src/4_McHal/Tricore/Vadc/Adc/IfxVadc_Adc.c"
static const IfxVadc_Adc_SYNCTR_STSEL IfxVadc_Adc_masterIndex[(2)][(2)] = {

    {0, 1},
    {1, 0},
};







static inline __attribute__ ((always_inline)) IfxVadc_GroupId IfxVadc_Adc_getMasterId(IfxVadc_GroupId slave, IfxVadc_Adc_SYNCTR_STSEL masterIndex)
{
    uint8 i, idxOffset;
    IfxVadc_GroupId masterId = slave;

    if (masterIndex == 0)
    {
        masterId = slave;
    }
    else
    {
        idxOffset = (slave < 4) ? 0 : 4;

        for (i = 0; i < 4; i++)
        {
            if (IfxVadc_Adc_masterIndex[slave][i + idxOffset] == masterIndex)
            {
                return i + idxOffset;
            }
        }
    }

    return masterId;
}


static inline __attribute__ ((always_inline)) IfxVadc_Adc_SYNCTR_STSEL IfxVadc_Adc_getMasterKernelIndex(IfxVadc_GroupId slave, IfxVadc_GroupId master)
{
    return IfxVadc_Adc_masterIndex[slave][master];
}






void IfxVadc_Adc_deInitGroup(IfxVadc_Adc_Group *group)
{
    Ifx_VADC *vadc = IfxVadc_Adc_getVadcFromGroup(group);
    Ifx_VADC_G *vadcG = IfxVadc_Adc_getGroupRegsFromGroup(group);

    IfxVadc_GroupId groupIndex = group->groupId;


    IfxVadc_enableAccess(vadc, IfxVadc_Protection_initGroup0 + groupIndex);
    IfxVadc_resetGroup(vadcG);
    IfxVadc_disableAccess(vadc, IfxVadc_Protection_initGroup0 + groupIndex);
}


void IfxVadc_Adc_disableModule(Ifx_VADC *vadc)
{
    IfxVadc_disableModule(vadc);
}


void IfxVadc_Adc_getChannelConfig(IfxVadc_Adc_Channel *channel, IfxVadc_Adc_ChannelConfig *config)
{
    Ifx_VADC_G *vadcG = IfxVadc_Adc_getGroupRegsFromGroup(channel->group);
    IfxVadc_ChannelId channelIndex = channel->channel;

    config->channelId = channel->channel;
    config->group = channel->group;

    Ifx_VADC_G_CHCTR tempChctr;
    tempChctr.U = 0;
    tempChctr = IfxVadc_getChannelControlConfig(vadcG, channelIndex);

    config->inputClass = tempChctr.B.ICLSEL;
    config->reference = tempChctr.B.REFSEL;
    config->resultRegister = tempChctr.B.RESREG;
    config->globalResultUsage = tempChctr.B.RESTBS;
    config->lowerBoundary = tempChctr.B.BNDSELL;
    config->upperBoundary = tempChctr.B.BNDSELU;
    config->boundaryMode = tempChctr.B.BNDSELX;
    config->limitCheck = tempChctr.B.CHEVMODE;
    config->synchonize = tempChctr.B.SYNC;
    config->rightAlignedStorage = tempChctr.B.RESPOS;

    config->backgroundChannel = ((IfxVadc_getAssignedChannels(vadcG)).U & (1 << channelIndex)) ? 0 : 1;
    uint32 channelServiceRequestNodePtr;

    IfxVadc_GroupId groupIndex = channel->group->groupId;

    if (config->channelId < IfxVadc_ChannelId_8)
    {
        channelServiceRequestNodePtr = ((IfxVadc_getChannelServiceRequestNodePointer0(vadcG)).U >> (channel->channel * 4)) & 0xF;
    }
    else
    {
        channelServiceRequestNodePtr = ((IfxVadc_getChannelServiceRequestNodePointer1(vadcG)).U >> ((channel->channel - IfxVadc_ChannelId_8) * 4)) & 0xF;
    }

    volatile Ifx_SRC_SRCR *src = IfxVadc_getSrcAddress(groupIndex, channelServiceRequestNodePtr);

    if (src->B.SRE == 1)
    {
        config->channelSrcNr = channelServiceRequestNodePtr;
        config->channelPriority = src->B.SRPN;
        config->channelServProvider = src->B.TOS;
    }
    else
    {
        config->channelSrcNr = 0;
        config->channelPriority = 0;
        config->channelServProvider = 0;
    }

    uint32 resultServiceRequestNodePtr;

    if (config->resultRegister < IfxVadc_ChannelResult_8)
    {
        resultServiceRequestNodePtr = ((IfxVadc_getChannelResultServiceRequestNodePointer0(vadcG)).U >> (channel->channel * 4)) & 0xF;
    }
    else
    {
        resultServiceRequestNodePtr = ((IfxVadc_getChannelResultServiceRequestNodePointer1(vadcG)).U >> ((channel->channel - IfxVadc_ChannelResult_8) * 4)) & 0xF;
    }

    src = IfxVadc_getSrcAddress(groupIndex, resultServiceRequestNodePtr);

    if (src->B.SRE == 1)
    {
        config->resultSrcNr = resultServiceRequestNodePtr;
        config->resultPriority = src->B.SRPN;
        config->resultServProvider = src->B.TOS;
    }
    else
    {
        config->resultSrcNr = 0;
        config->resultPriority = 0;
        config->resultServProvider = 0;
    }
}


float32 IfxVadc_Adc_getChannelConversionTime(IfxVadc_Adc_Channel *channel, IfxVadc_ConversionType conversionMode)
{
    return IfxVadc_getChannelConversionTime(channel->group->module.vadc, channel->group->groupId, IfxVadc_getChannelInputClass(channel->group->group, channel->channel), IfxVadc_getAdcAnalogFrequency(channel->group->module.vadc), IfxVadc_getAdcModuleFrequency(), conversionMode);
}


void IfxVadc_Adc_getGroupConfig(IfxVadc_Adc_Group *group, IfxVadc_Adc_GroupConfig *config)
{
    uint8 inputClassNum;
    Ifx_VADC_G *vadcG = group->group;
    Ifx_VADC *vadc = group->module.vadc;
    float32 analogFrequency = IfxVadc_getAdcAnalogFrequency(vadc);

    config->groupId = group->groupId;
    config->module = &group->module;

    config->arbiter.arbiterRoundLength = IfxVadc_getArbiterRoundLength(vadcG);

    for (inputClassNum = 0; inputClassNum < (2); inputClassNum++)
    {
        config->inputClass[inputClassNum].resolution = IfxVadc_getGroupResolution(vadcG, inputClassNum);
        config->inputClass[inputClassNum].sampleTime = IfxVadc_getGroupSampleTime(vadcG, inputClassNum, analogFrequency);
    }

    if (IfxVadc_isRequestScanSlotEnabled(vadcG) == 1)
    {
        config->arbiter.requestSlotScanEnabled = 1;
        config->scanRequest.requestSlotPrio = IfxVadc_getScanSlotPriority(vadcG);
        config->scanRequest.requestSlotStartMode = IfxVadc_getScanSlotStartMode(vadcG);

        config->scanRequest.triggerConfig.triggerSource = IfxVadc_getScanSlotTriggerInput(vadcG);
        config->scanRequest.triggerConfig.triggerMode = IfxVadc_getScanSlotTriggerMode(vadcG);

        if (config->scanRequest.triggerConfig.triggerSource != IfxVadc_TriggerSource_15)
        {
            config->scanRequest.triggerConfig.gatingMode = IfxVadc_getScanSlotGatingMode(vadcG);
        }
        else if (config->scanRequest.triggerConfig.triggerMode != IfxVadc_TriggerMode_noExternalTrigger)
        {
            config->scanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;
        }

        config->scanRequest.triggerConfig.gatingSource = IfxVadc_getScanSlotGatingSource(vadcG);
        config->scanRequest.autoscanEnabled = IfxVadc_isAutoScanEnabled(vadcG);
    }
    else
    {
        config->scanRequest.autoscanEnabled = 0;
        config->scanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_disabled;
        config->scanRequest.triggerConfig.gatingSource = IfxVadc_GatingSource_0;
        config->scanRequest.triggerConfig.triggerMode = IfxVadc_TriggerMode_noExternalTrigger;
        config->scanRequest.triggerConfig.triggerSource = IfxVadc_TriggerSource_0;
    }

    if (IfxVadc_isRequestQueueSlotEnabled(vadcG) == 1)
    {
        config->arbiter.requestSlotQueueEnabled = 1;
        config->queueRequest.requestSlotPrio = IfxVadc_getQueueSlotPriority(vadcG);
        config->queueRequest.requestSlotStartMode = IfxVadc_getQueueSlotStartMode(vadcG);

        config->queueRequest.triggerConfig.triggerSource = IfxVadc_getQueueSlotTriggerInput(vadcG);
        config->queueRequest.triggerConfig.triggerMode = IfxVadc_getQueueSlotTriggerMode(vadcG);

        if (config->queueRequest.triggerConfig.triggerSource != IfxVadc_TriggerSource_15)
        {
            config->queueRequest.triggerConfig.gatingMode = IfxVadc_getQueueSlotGatingMode(vadcG);
        }
        else if (config->queueRequest.triggerConfig.triggerMode != IfxVadc_TriggerMode_noExternalTrigger)
        {
            config->queueRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;
        }

        config->queueRequest.triggerConfig.gatingSource = IfxVadc_getQueueSlotGatingSource(vadcG);
        config->queueRequest.flushQueueAfterInit = 0;
    }
    else
    {
        config->queueRequest.flushQueueAfterInit = 0;
        config->queueRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_disabled;
        config->queueRequest.triggerConfig.gatingSource = IfxVadc_GatingSource_0;
        config->queueRequest.triggerConfig.triggerMode = IfxVadc_TriggerMode_noExternalTrigger;
        config->queueRequest.triggerConfig.triggerSource = IfxVadc_TriggerSource_0;
    }

    if (IfxVadc_isRequestBackgroundScanSlotEnabled(vadcG) == 1)
    {
        config->arbiter.requestSlotBackgroundScanEnabled = 1;
        config->backgroundScanRequest.requestSlotPrio = IfxVadc_getBackgroundScanSlotPriority(vadcG);
        config->backgroundScanRequest.requestSlotStartMode = IfxVadc_getBackgroundScanSlotStartMode(vadcG);

        config->backgroundScanRequest.triggerConfig.triggerSource = IfxVadc_getBackgroundScanTriggerInput(vadc);
        config->backgroundScanRequest.triggerConfig.triggerMode = IfxVadc_getBackgroundScanTriggerMode(vadc);

        if (config->backgroundScanRequest.triggerConfig.triggerSource != IfxVadc_TriggerSource_15)
        {
            config->backgroundScanRequest.triggerConfig.gatingMode = IfxVadc_getBackgroundScanGatingMode(vadc);
        }
        else if (config->backgroundScanRequest.triggerConfig.triggerMode != IfxVadc_TriggerMode_noExternalTrigger)
        {
            config->backgroundScanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_always;
        }

        config->backgroundScanRequest.triggerConfig.gatingSource = IfxVadc_getBackgroundScanGatingSource(vadc);
        config->backgroundScanRequest.autoBackgroundScanEnabled = IfxVadc_isAutoBackgroundScanEnabled(vadc);
    }
    else
    {
        config->backgroundScanRequest.autoBackgroundScanEnabled = 0;
        config->backgroundScanRequest.triggerConfig.gatingMode = IfxVadc_GatingMode_disabled;
        config->backgroundScanRequest.triggerConfig.gatingSource = IfxVadc_GatingSource_0;
        config->backgroundScanRequest.triggerConfig.triggerMode = IfxVadc_TriggerMode_noExternalTrigger;
        config->backgroundScanRequest.triggerConfig.triggerSource = IfxVadc_TriggerSource_0;
    }

    config->master = IfxVadc_Adc_getMasterId(group->groupId, IfxVadc_getMasterIndex(vadcG));

    config->disablePostCalibration = ((IfxVadc_getGlobalConfigValue(vadc)).U >> ((16u) + group->groupId)) & 0x1;
}


IfxVadc_Status IfxVadc_Adc_initChannel(IfxVadc_Adc_Channel *channel, const IfxVadc_Adc_ChannelConfig *config)
{
    IfxVadc_Status Status = IfxVadc_Status_noError;
    Ifx_VADC *vadc = IfxVadc_Adc_getVadcFromGroup(config->group);
    Ifx_VADC_G *vadcG = IfxVadc_Adc_getGroupRegsFromGroup(config->group);

    channel->group = config->group;
    IfxVadc_GroupId groupIndex = channel->group->groupId;
    IfxVadc_ChannelId channelIndex = config->channelId;


    IfxVadc_enableAccess(vadc, IfxVadc_Protection_channelControl0 + groupIndex);


    {
        IfxVadc_setReferenceInput(vadcG, channelIndex, config->reference);
        IfxVadc_storeGroupResult(vadcG, channelIndex, config->resultRegister);
        IfxVadc_setLowerBoundary(vadcG, channelIndex, config->lowerBoundary);
        IfxVadc_setUpperBoundary(vadcG, channelIndex, config->lowerBoundary);
        IfxVadc_setSyncRequest(vadcG, channelIndex, config->synchonize);
        IfxVadc_setChannelInputClass(vadcG, channelIndex, config->inputClass);
        IfxVadc_setChannelLimitCheckMode(vadcG, channelIndex, config->limitCheck);
        IfxVadc_setResultPosition(vadcG, channelIndex, config->rightAlignedStorage);
        IfxVadc_setBackgroundResultTarget(vadcG, channelIndex, config->globalResultUsage);
        IfxVadc_setBoundaryMode(vadcG, channelIndex, config->boundaryMode);
    }

    IfxVadc_enableAccess(vadc, IfxVadc_Protection_initGroup0 + groupIndex);

    if (config->backgroundChannel == 0)
    {
        IfxVadc_setGroupPriorityChannel(vadcG, channelIndex);
    }
    else
    {
        IfxVadc_setBackgroundPriorityChannel(vadcG, channelIndex);
    }

    IfxVadc_disableAccess(vadc, IfxVadc_Protection_initGroup0 + groupIndex);

    if (config->channelPriority > 0)
    {
        volatile Ifx_SRC_SRCR *src = IfxVadc_getSrcAddress(groupIndex, config->channelSrcNr);

        if (config->channelId < IfxVadc_ChannelId_8)
        {
            IfxVadc_setChannelEventNodePointer0(vadcG, config->channelSrcNr, channel->channel);
        }
        else
        {
            IfxVadc_setChannelEventNodePointer1(vadcG, config->channelSrcNr, channel->channel);
        }

        IfxVadc_clearChannelRequest(vadcG, config->channelId);
        IfxSrc_init(src, config->channelServProvider, config->channelPriority);
        IfxSrc_enable(src);
    }
    else
    {


    }

    if (config->resultPriority > 0)
    {
        volatile Ifx_SRC_SRCR *src = IfxVadc_getSrcAddress(groupIndex, config->resultSrcNr);
        IfxVadc_enableServiceRequest(vadcG, config->resultRegister);

        if (config->resultRegister < IfxVadc_ChannelResult_8)
        {
            IfxVadc_setResultNodeEventPointer0(vadcG, config->resultSrcNr, config->resultRegister);
        }
        else
        {
            IfxVadc_setResultNodeEventPointer1(vadcG, config->resultSrcNr, config->resultRegister);
        }

        IfxVadc_clearAllResultRequests(vadcG);
        IfxSrc_init(src, config->resultServProvider, config->resultPriority);
        IfxSrc_enable(src);
    }
    else
    {


    }

    IfxVadc_disableAccess(vadc, IfxVadc_Protection_channelControl0 + groupIndex);

    channel->resultreg = config->resultRegister;
    channel->channel = config->channelId;

    return Status;
}


void IfxVadc_Adc_initChannelConfig(IfxVadc_Adc_ChannelConfig *config, const IfxVadc_Adc_Group *group)
{
    static const IfxVadc_Adc_ChannelConfig IfxVadc_Adc_defaultChannelConfig = {
        .channelId = IfxVadc_ChannelId_0,
        .group = ((void *)0),
        .inputClass = IfxVadc_InputClasses_group0,
        .reference = IfxVadc_ChannelReference_standard,
        .resultRegister = IfxVadc_ChannelResult_0,
        .globalResultUsage = 0,
        .lowerBoundary = IfxVadc_BoundarySelection_group0,
        .upperBoundary = IfxVadc_BoundarySelection_group0,
        .boundaryMode = IfxVadc_BoundaryExtension_standard,
        .limitCheck = IfxVadc_LimitCheck_noCheck,
        .synchonize = 0,
        .backgroundChannel = 0,
        .rightAlignedStorage = 0,
        .resultPriority = 0,
        .resultSrcNr = IfxVadc_SrcNr_group0,
        .resultServProvider = IfxSrc_Tos_cpu0,
        .channelPriority = 0,
        .channelSrcNr = IfxVadc_SrcNr_group0,
        .channelServProvider = IfxSrc_Tos_cpu0
    };
    *config = IfxVadc_Adc_defaultChannelConfig;
    config->group = group;
}


IfxVadc_Status IfxVadc_Adc_initGroup(IfxVadc_Adc_Group *group, const IfxVadc_Adc_GroupConfig *config)
{
    IfxVadc_Status status = IfxVadc_Status_noError;
    Ifx_VADC *vadc = config->module->vadc;
    Ifx_VADC_G *vadcG = &vadc->G[config->groupId];


    group->group = vadcG;
    group->module = *config->module;
    IfxVadc_GroupId groupIndex = config->groupId;
    group->groupId = groupIndex;
    float32 analogFrequency = IfxVadc_getAdcAnalogFrequency(vadc);

    uint8 inputClassNum;


    IfxVadc_enableAccess(vadc, IfxVadc_Protection_initGroup0 + groupIndex);

    if (config->arbiter.requestSlotQueueEnabled == 1)
    {

        IfxVadc_setArbiterPriority(vadcG, config->arbiter.requestSlotQueueEnabled, config->queueRequest.requestSlotPrio, config->queueRequest.requestSlotStartMode, IfxVadc_RequestSource_queue);
    }
    else
    {

        IfxVadc_setArbiterPriority(vadcG, 0, IfxVadc_RequestSlotPriority_lowest, IfxVadc_RequestSlotStartMode_waitForStart, IfxVadc_RequestSource_queue);
    }

    if (config->arbiter.requestSlotScanEnabled == 1)
    {


        IfxVadc_setArbiterPriority(vadcG, config->arbiter.requestSlotScanEnabled, config->scanRequest.requestSlotPrio, config->scanRequest.requestSlotStartMode, IfxVadc_RequestSource_scan);
    }
    else
    {

        IfxVadc_setArbiterPriority(vadcG, 0, IfxVadc_RequestSlotPriority_lowest, IfxVadc_RequestSlotStartMode_waitForStart, IfxVadc_RequestSource_scan);
    }

    if (config->arbiter.requestSlotBackgroundScanEnabled == 1)
    {


        IfxVadc_setArbiterPriority(vadcG, config->arbiter.requestSlotBackgroundScanEnabled, config->backgroundScanRequest.requestSlotPrio, config->backgroundScanRequest.requestSlotStartMode, IfxVadc_RequestSource_background);
    }
    else
    {

        IfxVadc_setArbiterPriority(vadcG, 0, IfxVadc_RequestSlotPriority_lowest, IfxVadc_RequestSlotStartMode_waitForStart, IfxVadc_RequestSource_background);
    }


    if (config->master != groupIndex)
    {
        uint8 masterIndex = IfxVadc_Adc_getMasterKernelIndex(groupIndex, config->master);
        IfxVadc_setMasterIndex(vadcG, masterIndex);
    }
    else
    {


    }



    IfxVadc_setAnalogConvertControl(vadcG, IfxVadc_AnalogConverterMode_off);

    IfxVadc_setArbitrationRoundLength(vadcG, config->arbiter.arbiterRoundLength);


    if (config->arbiter.requestSlotQueueEnabled == 1)
    {
        const IfxVadc_Adc_QueueConfig *queueSlot = &config->queueRequest;


        if (queueSlot->triggerConfig.triggerMode != IfxVadc_TriggerMode_noExternalTrigger)
        {

            IfxVadc_enableQueueSlotExternalTrigger(vadcG);
            IfxVadc_setQueueSlotTriggerOperatingConfig(vadcG, queueSlot->triggerConfig.triggerMode, queueSlot->triggerConfig.triggerSource);


            if (queueSlot->triggerConfig.triggerSource == IfxVadc_TriggerSource_15)
            {
                IfxVadc_setQueueSlotGatingConfig(vadcG, queueSlot->triggerConfig.gatingSource, IfxVadc_GatingMode_always);
            }
            else
            {

            }
        }
        else
        {

            IfxVadc_disableQueueSlotExternalTrigger(vadcG);
        }


        if ((queueSlot->triggerConfig.triggerSource != IfxVadc_TriggerSource_15))
        {
            IfxVadc_setQueueSlotGatingConfig(vadcG, queueSlot->triggerConfig.gatingSource, queueSlot->triggerConfig.gatingMode);
        }
        else
        {

        }

        IfxVadc_clearQueue(vadcG, (queueSlot->flushQueueAfterInit) ? 1 : 0);
    }
    else
    {

    }


    if (config->arbiter.requestSlotScanEnabled == 1)
    {
        const IfxVadc_Adc_ScanConfig *scanSlot = &config->scanRequest;


        if (scanSlot->triggerConfig.triggerMode != IfxVadc_TriggerMode_noExternalTrigger)
        {

            IfxVadc_enableScanSlotExternalTrigger(vadcG);

            IfxVadc_setScanSlotTriggerConfig(vadcG, scanSlot->triggerConfig.triggerMode, scanSlot->triggerConfig.triggerSource);

            if (scanSlot->triggerConfig.triggerSource == IfxVadc_TriggerSource_15)
            {
                IfxVadc_setScanSlotGatingConfig(vadcG, scanSlot->triggerConfig.gatingSource, IfxVadc_GatingMode_always);
            }
            else
            {

            }
        }
        else
        {
            IfxVadc_disableScanSlotExternalTrigger(vadcG);
        }


        if ((scanSlot->triggerConfig.triggerSource != IfxVadc_TriggerSource_15))
        {
            IfxVadc_setScanSlotGatingConfig(vadcG, scanSlot->triggerConfig.gatingSource, scanSlot->triggerConfig.gatingMode);
        }
        else
        {

        }

        IfxVadc_setAutoScan(vadcG, scanSlot->autoscanEnabled ? 1 : 0);
    }
    else
    {

    }

    if (config->arbiter.requestSlotBackgroundScanEnabled == 1)
    {
        const IfxVadc_Adc_BackgroundScanConfig *backgroundScanSlot = &config->backgroundScanRequest;


        if (backgroundScanSlot->triggerConfig.triggerMode != IfxVadc_TriggerMode_noExternalTrigger)
        {
            IfxVadc_enableBackgroundScanSlotExternalTrigger(vadc);

            IfxVadc_setBackgroundScanSlotTriggerConfig(vadc, backgroundScanSlot->triggerConfig.triggerMode, backgroundScanSlot->triggerConfig.triggerSource);

            if (backgroundScanSlot->triggerConfig.triggerSource == IfxVadc_TriggerSource_15)
            {
                IfxVadc_setBackgroundScanSlotGatingConfig(vadc, backgroundScanSlot->triggerConfig.gatingSource, IfxVadc_GatingMode_always);
            }
            else
            {

            }
        }
        else
        {

        }


        if ((backgroundScanSlot->triggerConfig.triggerSource != IfxVadc_TriggerSource_15))
        {
            IfxVadc_setBackgroundScanSlotGatingConfig(vadc, backgroundScanSlot->triggerConfig.gatingSource, backgroundScanSlot->triggerConfig.gatingMode);
        }
        else
        {

        }

        IfxVadc_setAutoBackgroundScan(vadc, backgroundScanSlot->autoBackgroundScanEnabled ? 1 : 0);
    }
    else
    {

    }


    IfxVadc_AnalogConverterMode convertMode = (config->master == groupIndex) ? IfxVadc_AnalogConverterMode_normalOperation : IfxVadc_AnalogConverterMode_off;
    IfxVadc_setAnalogConvertControl(vadcG, convertMode);


    IfxVadc_disablePostCalibration(vadc, groupIndex, config->disablePostCalibration);

    for (inputClassNum = 0; inputClassNum < (2); inputClassNum++)
    {

        IfxVadc_setGroupResolution(vadcG, inputClassNum, config->inputClass[inputClassNum].resolution);

        IfxVadc_setGroupSampleTime(vadcG, inputClassNum, analogFrequency, config->inputClass[inputClassNum].sampleTime);
    }

    IfxVadc_disableAccess(vadc, IfxVadc_Protection_initGroup0 + groupIndex);

    return status;
}


void IfxVadc_Adc_initGroupConfig(IfxVadc_Adc_GroupConfig *config, IfxVadc_Adc *vadc)
{
    static const IfxVadc_Adc_GroupConfig IfxVadc_Adc_defaultGroupConfig = {
        .arbiter = {
            .arbiterRoundLength = IfxVadc_ArbitrationRounds_4_slots,
            .requestSlotQueueEnabled = 0,
            .requestSlotScanEnabled = 0,
            .requestSlotBackgroundScanEnabled = 0,
        },
        .backgroundScanRequest = {
            .autoBackgroundScanEnabled = 0,
            .triggerConfig.gatingMode = IfxVadc_GatingMode_disabled,
            .triggerConfig.triggerMode = IfxVadc_TriggerMode_noExternalTrigger,
            .triggerConfig.gatingSource = IfxVadc_GatingSource_0,
            .triggerConfig.triggerSource = IfxVadc_TriggerSource_0,
            .requestSlotPrio = IfxVadc_RequestSlotPriority_low,
            .requestSlotStartMode = IfxVadc_RequestSlotStartMode_waitForStart,
        },
        .scanRequest = {
            .autoscanEnabled = 0,
            .triggerConfig.gatingMode = IfxVadc_GatingMode_disabled,
            .triggerConfig.gatingSource = IfxVadc_GatingSource_0,
            .triggerConfig.triggerMode = IfxVadc_TriggerMode_noExternalTrigger,
            .triggerConfig.triggerSource = IfxVadc_TriggerSource_0,
            .requestSlotPrio = IfxVadc_RequestSlotPriority_low,
            .requestSlotStartMode = IfxVadc_RequestSlotStartMode_waitForStart,
        },
        .queueRequest = {
            .flushQueueAfterInit = 1,
            .triggerConfig.gatingMode = IfxVadc_GatingMode_disabled,
            .triggerConfig.gatingSource = IfxVadc_GatingSource_0,
            .triggerConfig.triggerMode = IfxVadc_TriggerMode_noExternalTrigger,
            .triggerConfig.triggerSource = IfxVadc_TriggerSource_0,
            .requestSlotPrio = IfxVadc_RequestSlotPriority_low,
            .requestSlotStartMode = IfxVadc_RequestSlotStartMode_waitForStart,
        },

        .inputClass[0].resolution = IfxVadc_ChannelResolution_12bit,
        .inputClass[0].sampleTime = 1.0e-6,
        .inputClass[1].resolution = IfxVadc_ChannelResolution_12bit,
        .inputClass[1].sampleTime = 1.0e-6,
    };

    *config = IfxVadc_Adc_defaultGroupConfig;
    config->groupId = IfxVadc_GroupId_0;
    config->module = vadc;
    config->master = config->groupId;
    config->disablePostCalibration = 0;
}


IfxVadc_Status IfxVadc_Adc_initModule(IfxVadc_Adc *vadc, const IfxVadc_Adc_Config *config)
{
    IfxVadc_Status status = IfxVadc_Status_noError;
    Ifx_VADC *vadcSFR = config->vadc;
    vadc->vadc = vadcSFR;
    float32 analogFrequency;
    uint8 inputClassNum, groupNum;


    IfxVadc_enableModule(vadcSFR);
    IfxVadc_selectPowerSupplyVoltage(vadcSFR, config->supplyVoltage);


    if (IfxVadc_initializeFAdcI(vadcSFR, config->analogFrequency) == 0)
    {
        return IfxVadc_Status_notInitialised;
    }
    else
    {

    }


    IfxVadc_initializeFAdcD(vadcSFR, config->digitalFrequency);

    analogFrequency = IfxVadc_getAdcAnalogFrequency(vadcSFR);


    for (inputClassNum = 0; inputClassNum < (2); inputClassNum++)
    {

        IfxVadc_setGlobalResolution(vadcSFR, inputClassNum, config->globalInputClass[inputClassNum].resolution);

        IfxVadc_setGlobalSampleTime(vadcSFR, inputClassNum, analogFrequency, config->globalInputClass[inputClassNum].sampleTime);
    }


    if (config->startupCalibration == 1)
    {

        for (groupNum = 0; groupNum < (2); groupNum++)
        {
            IfxVadc_enableAccess(vadcSFR, IfxVadc_Protection_initGroup0 + groupNum);
            IfxVadc_setAnalogConvertControl(&vadcSFR->G[groupNum], IfxVadc_AnalogConverterMode_normalOperation);
            IfxVadc_disableAccess(vadcSFR, IfxVadc_Protection_initGroup0 + groupNum);
        }


        IfxVadc_startupCalibration(vadcSFR);
    }

    return status;
}


void IfxVadc_Adc_initModuleConfig(IfxVadc_Adc_Config *config, Ifx_VADC *vadc)
{
    config->vadc = vadc;
    config->analogFrequency = (20000000);

    config->digitalFrequency = IfxVadc_getAdcDigitalFrequency(vadc);
    config->moduleFrequency = IfxScuCcu_getSpbFrequency();
    config->globalInputClass[0].resolution = IfxVadc_ChannelResolution_12bit;
    config->globalInputClass[0].sampleTime = 1.0e-6;
    config->globalInputClass[1].resolution = IfxVadc_ChannelResolution_12bit;
    config->globalInputClass[1].sampleTime = 1.0e-6;
    config->startupCalibration = 0;
    config->supplyVoltage = IfxVadc_LowSupplyVoltageSelect_5V;
}


void IfxVadc_Adc_initExternalMultiplexerModeConfig(IfxVadc_Adc_EmuxControl *emuxConfig, Ifx_VADC *vadc)
{
    emuxConfig->vadc = vadc;
    emuxConfig->channels = 0;
    emuxConfig->groupId = IfxVadc_GroupId_0;
    emuxConfig->emuxInterface = IfxVadc_EmuxInterface_0;
    emuxConfig->startChannel = IfxVadc_EmuxSelectValue_0;
    emuxConfig->code = IfxVadc_EmuxCodingScheme_binary;
    emuxConfig->sampleTimeControl = IfxVadc_EmuxSampleTimeControl_settingChanges;
    emuxConfig->mode = IfxVadc_ExternalMultiplexerMode_softwareControl;
    emuxConfig->channelSelectionStyle = IfxVadc_ChannelSelectionStyle_channelNumber;
    IfxVadc_Adc_EmuxPinConfig defaultConfig = {
        .pins = {((void *)0)},
        .outputMode = IfxPort_OutputMode_pushPull,
        .padDriver = 0,
    };

    emuxConfig->emuxOutPinConfig = defaultConfig;
}


void IfxVadc_Adc_initExternalMultiplexerMode(Ifx_VADC *vadc, const IfxVadc_Adc_EmuxControl *emuxControl)
{
    uint8 count = 0;
    Ifx_VADC_G *vadcG = &vadc->G[emuxControl->groupId];
    IfxVadc_setEmuxInterfaceForGroup(vadc, emuxControl->emuxInterface, emuxControl->groupId);

    for (count = 0; count < 3; count++)
    {
        if (emuxControl->emuxOutPinConfig.pins[count] != ((void *)0))
        {
            IfxVadc_initEmuxPin(emuxControl->emuxOutPinConfig.pins[count], emuxControl->emuxOutPinConfig.outputMode, emuxControl->emuxOutPinConfig.padDriver);
        }
    }

    IfxVadc_configExternalMultiplexerMode(vadc, vadcG, emuxControl->mode, emuxControl->channels, emuxControl->startChannel, emuxControl->code, emuxControl->sampleTimeControl, emuxControl->channelSelectionStyle);
}
