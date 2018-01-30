# 1 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.c"
# 1 "D:\\GitRepo\\InfineonRacer\\2_src\\InfineonRacer_TC23xA//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.c"
# 29 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.c"
# 1 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.h" 1
# 41 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.h"
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
# 42 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxGtm_cfg.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Impl/IfxGtm_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
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
# 46 "./0_Src/4_McHal/Tricore/_Impl/IfxGtm_cfg.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/Ifx_TypesReg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h" 2





typedef struct _Ifx_GTM_ACCEN0_Bits
{
    volatile unsigned int EN0 : 1;
    volatile unsigned int EN1 : 1;
    volatile unsigned int EN2 : 1;
    volatile unsigned int EN3 : 1;
    volatile unsigned int EN4 : 1;
    volatile unsigned int EN5 : 1;
    volatile unsigned int EN6 : 1;
    volatile unsigned int EN7 : 1;
    volatile unsigned int EN8 : 1;
    volatile unsigned int EN9 : 1;
    volatile unsigned int EN10 : 1;
    volatile unsigned int EN11 : 1;
    volatile unsigned int EN12 : 1;
    volatile unsigned int EN13 : 1;
    volatile unsigned int EN14 : 1;
    volatile unsigned int EN15 : 1;
    volatile unsigned int EN16 : 1;
    volatile unsigned int EN17 : 1;
    volatile unsigned int EN18 : 1;
    volatile unsigned int EN19 : 1;
    volatile unsigned int EN20 : 1;
    volatile unsigned int EN21 : 1;
    volatile unsigned int EN22 : 1;
    volatile unsigned int EN23 : 1;
    volatile unsigned int EN24 : 1;
    volatile unsigned int EN25 : 1;
    volatile unsigned int EN26 : 1;
    volatile unsigned int EN27 : 1;
    volatile unsigned int EN28 : 1;
    volatile unsigned int EN29 : 1;
    volatile unsigned int EN30 : 1;
    volatile unsigned int EN31 : 1;
} Ifx_GTM_ACCEN0_Bits;


typedef struct _Ifx_GTM_ACCEN1_Bits
{
    volatile unsigned int reserved_0 : 32;
} Ifx_GTM_ACCEN1_Bits;


typedef struct _Ifx_GTM_ADCTRIG0OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ADCTRIG0OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG1OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ADCTRIG1OUT0_Bits;


typedef struct _Ifx_GTM_AEI_ADDR_XPT_Bits
{
    volatile unsigned int TO_ADDR : 20;
    volatile unsigned int TO_W1R0 : 1;
    volatile unsigned int reserved_21 : 11;
} Ifx_GTM_AEI_ADDR_XPT_Bits;


typedef struct _Ifx_GTM_BRIDGE_MODE_Bits
{
    volatile unsigned int BRG_MODE : 1;
    volatile unsigned int MSK_WR_RSP : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int MODE_UP_PGR : 1;
    volatile unsigned int BUFF_OVL : 1;
    volatile unsigned int reserved_10 : 2;
    volatile unsigned int SYNC_INPUT_REG : 1;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int BRG_RST : 1;
    volatile unsigned int reserved_17 : 7;
    volatile unsigned int BUFF_DPT : 8;
} Ifx_GTM_BRIDGE_MODE_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR1_Bits
{
    volatile unsigned int NEW_TRAN_PTR : 5;
    volatile unsigned int FIRST_RSP_PTR : 5;
    volatile unsigned int TRAN_IN_PGR : 5;
    volatile unsigned int ABT_TRAN_PGR : 5;
    volatile unsigned int FBC : 6;
    volatile unsigned int RSP_TRAN_RDY : 6;
} Ifx_GTM_BRIDGE_PTR1_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR2_Bits
{
    volatile unsigned int TRAN_IN_PGR2 : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_BRIDGE_PTR2_Bits;


typedef struct _Ifx_GTM_CLC_Bits
{
    volatile unsigned int DISR : 1;
    volatile unsigned int DISS : 1;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int EDIS : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CLC_Bits;


typedef struct _Ifx_GTM_CMU_CLK0_5_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK0_5_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_6_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK6_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_6_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_7_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK7_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_7_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_EN_Bits
{
    volatile unsigned int EN_CLK0 : 2;
    volatile unsigned int EN_CLK1 : 2;
    volatile unsigned int EN_CLK2 : 2;
    volatile unsigned int EN_CLK3 : 2;
    volatile unsigned int EN_CLK4 : 2;
    volatile unsigned int EN_CLK5 : 2;
    volatile unsigned int EN_CLK6 : 2;
    volatile unsigned int EN_CLK7 : 2;
    volatile unsigned int EN_ECLK0 : 2;
    volatile unsigned int EN_ECLK1 : 2;
    volatile unsigned int EN_ECLK2 : 2;
    volatile unsigned int EN_FXCLK : 2;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK_EN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_DEN_Bits
{
    volatile unsigned int ECLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_NUM_Bits
{
    volatile unsigned int ECLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_FXCLK_CTRL_Bits
{
    volatile unsigned int FXCLK_SEL : 4;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CMU_FXCLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_DEN_Bits
{
    volatile unsigned int GCLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_NUM_Bits
{
    volatile unsigned int GCLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_NUM_Bits;


typedef struct _Ifx_GTM_CTRL_Bits
{
    volatile unsigned int RF_PROT : 1;
    volatile unsigned int TO_MODE : 1;
    volatile unsigned int reserved_2 : 2;
    volatile unsigned int TO_VAL : 5;
    volatile unsigned int reserved_9 : 23;
} Ifx_GTM_CTRL_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL1_Bits
{
    volatile unsigned int O1SEL_0 : 1;
    volatile unsigned int reserved_1 : 2;
    volatile unsigned int SWAP_0 : 1;
    volatile unsigned int O1F_0 : 2;
    volatile unsigned int reserved_6 : 2;
    volatile unsigned int O1SEL_1 : 1;
    volatile unsigned int I1SEL_1 : 1;
    volatile unsigned int SH_EN_1 : 1;
    volatile unsigned int SWAP_1 : 1;
    volatile unsigned int O1F_1 : 2;
    volatile unsigned int reserved_14 : 2;
    volatile unsigned int O1SEL_2 : 1;
    volatile unsigned int I1SEL_2 : 1;
    volatile unsigned int SH_EN_2 : 1;
    volatile unsigned int SWAP_2 : 1;
    volatile unsigned int O1F_2 : 2;
    volatile unsigned int reserved_22 : 2;
    volatile unsigned int O1SEL_3 : 1;
    volatile unsigned int I1SEL_3 : 1;
    volatile unsigned int SH_EN_3 : 1;
    volatile unsigned int SWAP_3 : 1;
    volatile unsigned int O1F_3 : 2;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_DTM_CH_CTRL1_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL2_Bits
{
    volatile unsigned int POL0_0 : 1;
    volatile unsigned int OC0_0 : 1;
    volatile unsigned int SL0_0 : 1;
    volatile unsigned int DT0_0 : 1;
    volatile unsigned int POL1_0 : 1;
    volatile unsigned int OC1_0 : 1;
    volatile unsigned int SL1_0 : 1;
    volatile unsigned int DT1_0 : 1;
    volatile unsigned int POL0_1 : 1;
    volatile unsigned int OC0_1 : 1;
    volatile unsigned int SL0_1 : 1;
    volatile unsigned int DT0_1 : 1;
    volatile unsigned int POL1_1 : 1;
    volatile unsigned int OC1_1 : 1;
    volatile unsigned int SL1_1 : 1;
    volatile unsigned int DT1_1 : 1;
    volatile unsigned int POL0_2 : 1;
    volatile unsigned int OC0_2 : 1;
    volatile unsigned int SL0_2 : 1;
    volatile unsigned int DT0_2 : 1;
    volatile unsigned int POL1_2 : 1;
    volatile unsigned int OC1_2 : 1;
    volatile unsigned int SL1_2 : 1;
    volatile unsigned int DT1_2 : 1;
    volatile unsigned int POL0_3 : 1;
    volatile unsigned int OC0_3 : 1;
    volatile unsigned int SL0_3 : 1;
    volatile unsigned int DT0_3 : 1;
    volatile unsigned int POL1_3 : 1;
    volatile unsigned int OC1_3 : 1;
    volatile unsigned int SL1_3 : 1;
    volatile unsigned int DT1_3 : 1;
} Ifx_GTM_DTM_CH_CTRL2_Bits;


typedef struct _Ifx_GTM_DTM_CH_CTRL2_SR_Bits
{
    volatile unsigned int POL0_0_SR : 1;
    volatile unsigned int OC0_0_SR : 1;
    volatile unsigned int SL0_0_SR : 1;
    volatile unsigned int DT0_0_SR : 1;
    volatile unsigned int POL1_0_SR : 1;
    volatile unsigned int OC1_0_SR : 1;
    volatile unsigned int SL1_0_SR : 1;
    volatile unsigned int DT1_0_SR : 1;
    volatile unsigned int POL0_1_SR : 1;
    volatile unsigned int OC0_1_SR : 1;
    volatile unsigned int SL0_1_SR : 1;
    volatile unsigned int DT0_1_SR : 1;
    volatile unsigned int POL1_1_SR : 1;
    volatile unsigned int OC1_1_SR : 1;
    volatile unsigned int SL1_1_SR : 1;
    volatile unsigned int DT1_1_SR : 1;
    volatile unsigned int POL0_2_SR : 1;
    volatile unsigned int OC0_2_SR : 1;
    volatile unsigned int SL0_2_SR : 1;
    volatile unsigned int DT0_2_SR : 1;
    volatile unsigned int POL1_2_SR : 1;
    volatile unsigned int OC1_2_SR : 1;
    volatile unsigned int SL1_2_SR : 1;
    volatile unsigned int DT1_2_SR : 1;
    volatile unsigned int POL0_3_SR : 1;
    volatile unsigned int OC0_3_SR : 1;
    volatile unsigned int SL0_3_SR : 1;
    volatile unsigned int DT0_3_SR : 1;
    volatile unsigned int POL1_3_SR : 1;
    volatile unsigned int OC1_3_SR : 1;
    volatile unsigned int SL1_3_SR : 1;
    volatile unsigned int DT1_3_SR : 1;
} Ifx_GTM_DTM_CH_CTRL2_SR_Bits;


typedef struct _Ifx_GTM_DTM_CTRL_Bits
{
    volatile unsigned int CLK_SEL : 2;
    volatile unsigned int reserved_2 : 2;
    volatile unsigned int UPD_MODE : 3;
    volatile unsigned int reserved_7 : 25;
} Ifx_GTM_DTM_CTRL_Bits;


typedef struct _Ifx_GTM_DTM_DTV_CH_Bits
{
    volatile unsigned int RELRISE : 10;
    volatile unsigned int reserved_10 : 6;
    volatile unsigned int RELFALL : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_GTM_DTM_DTV_CH_Bits;


typedef struct _Ifx_GTM_DTM_PS_CTRL_Bits
{
    volatile unsigned int RELBLK : 10;
    volatile unsigned int reserved_10 : 6;
    volatile unsigned int PSU_IN_SEL : 1;
    volatile unsigned int IN_POL : 1;
    volatile unsigned int reserved_18 : 2;
    volatile unsigned int SHIFT_SEL : 2;
    volatile unsigned int reserved_22 : 10;
} Ifx_GTM_DTM_PS_CTRL_Bits;


typedef struct _Ifx_GTM_EIRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_EIRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_HW_CONF_Bits
{
    volatile unsigned int GRSTEN : 1;
    volatile unsigned int BRIDGE_MODE_RST : 1;
    volatile unsigned int AEI_IN : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int TOM_OUT_RST : 1;
    volatile unsigned int TOM_TRIG_CHAIN : 3;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int IRQ_MODE_LEVEL : 1;
    volatile unsigned int IRQ_MODE_PULSE : 1;
    volatile unsigned int IRQ_MODE_PULSE_NOTIFY : 1;
    volatile unsigned int IRQ_MODE_SINGLE_PULSE : 1;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_HW_CONF_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_0_Bits
{
    volatile unsigned int reserved_0 : 4;
    volatile unsigned int AEI_IRQ : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_ICM_IRQG_0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_2_Bits
{
    volatile unsigned int TIM0_CH0_IRQ : 1;
    volatile unsigned int TIM0_CH1_IRQ : 1;
    volatile unsigned int TIM0_CH2_IRQ : 1;
    volatile unsigned int TIM0_CH3_IRQ : 1;
    volatile unsigned int TIM0_CH4_IRQ : 1;
    volatile unsigned int TIM0_CH5_IRQ : 1;
    volatile unsigned int TIM0_CH6_IRQ : 1;
    volatile unsigned int TIM0_CH7_IRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_6_Bits
{
    volatile unsigned int TOM0_CH0_IRQ : 1;
    volatile unsigned int TOM0_CH1_IRQ : 1;
    volatile unsigned int TOM0_CH2_IRQ : 1;
    volatile unsigned int TOM0_CH3_IRQ : 1;
    volatile unsigned int TOM0_CH4_IRQ : 1;
    volatile unsigned int TOM0_CH5_IRQ : 1;
    volatile unsigned int TOM0_CH6_IRQ : 1;
    volatile unsigned int TOM0_CH7_IRQ : 1;
    volatile unsigned int TOM0_CH8_IRQ : 1;
    volatile unsigned int TOM0_CH9_IRQ : 1;
    volatile unsigned int TOM0_CH10_IRQ : 1;
    volatile unsigned int TOM0_CH11_IRQ : 1;
    volatile unsigned int TOM0_CH12_IRQ : 1;
    volatile unsigned int TOM0_CH13_IRQ : 1;
    volatile unsigned int TOM0_CH14_IRQ : 1;
    volatile unsigned int TOM0_CH15_IRQ : 1;
    volatile unsigned int TOM1_CH0_IRQ : 1;
    volatile unsigned int TOM1_CH1_IRQ : 1;
    volatile unsigned int TOM1_CH2_IRQ : 1;
    volatile unsigned int TOM1_CH3_IRQ : 1;
    volatile unsigned int TOM1_CH4_IRQ : 1;
    volatile unsigned int TOM1_CH5_IRQ : 1;
    volatile unsigned int TOM1_CH6_IRQ : 1;
    volatile unsigned int TOM1_CH7_IRQ : 1;
    volatile unsigned int TOM1_CH8_IRQ : 1;
    volatile unsigned int TOM1_CH9_IRQ : 1;
    volatile unsigned int TOM1_CH10_IRQ : 1;
    volatile unsigned int TOM1_CH11_IRQ : 1;
    volatile unsigned int TOM1_CH12_IRQ : 1;
    volatile unsigned int TOM1_CH13_IRQ : 1;
    volatile unsigned int TOM1_CH14_IRQ : 1;
    volatile unsigned int TOM1_CH15_IRQ : 1;
} Ifx_GTM_ICM_IRQG_6_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI1_Bits
{
    volatile unsigned int TIM0_CH0_EIRQ : 1;
    volatile unsigned int TIM0_CH1_EIRQ : 1;
    volatile unsigned int TIM0_CH2_EIRQ : 1;
    volatile unsigned int TIM0_CH3_EIRQ : 1;
    volatile unsigned int TIM0_CH4_EIRQ : 1;
    volatile unsigned int TIM0_CH5_EIRQ : 1;
    volatile unsigned int TIM0_CH6_EIRQ : 1;
    volatile unsigned int TIM0_CH7_EIRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_CEI1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_Bits
{
    volatile unsigned int GTM_EIRQ : 1;
    volatile unsigned int reserved_1 : 3;
    volatile unsigned int TIM0_EIRQ : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_ICM_IRQG_MEI_Bits;


typedef struct _Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_T_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 2;
    volatile unsigned int SEL1 : 2;
    volatile unsigned int SEL2 : 2;
    volatile unsigned int SEL3 : 2;
    volatile unsigned int SEL4 : 2;
    volatile unsigned int SEL5 : 2;
    volatile unsigned int SEL6 : 2;
    volatile unsigned int SEL7 : 2;
    volatile unsigned int SEL8 : 2;
    volatile unsigned int SEL9 : 2;
    volatile unsigned int SEL10 : 2;
    volatile unsigned int SEL11 : 2;
    volatile unsigned int SEL12 : 2;
    volatile unsigned int SEL13 : 2;
    volatile unsigned int SEL14 : 2;
    volatile unsigned int SEL15 : 2;
} Ifx_GTM_INOUTSEL_T_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_TIM_INSEL_Bits
{
    volatile unsigned int CH0SEL : 4;
    volatile unsigned int CH1SEL : 4;
    volatile unsigned int CH2SEL : 4;
    volatile unsigned int CH3SEL : 4;
    volatile unsigned int CH4SEL : 4;
    volatile unsigned int CH5SEL : 4;
    volatile unsigned int CH6SEL : 4;
    volatile unsigned int CH7SEL : 4;
} Ifx_GTM_INOUTSEL_TIM_INSEL_Bits;


typedef struct _Ifx_GTM_IRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_IRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_IRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_EN_Bits;


typedef struct _Ifx_GTM_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_AEI_TO_XPT : 1;
    volatile unsigned int TRG_AEI_USP_ADDR : 1;
    volatile unsigned int TRG_AEI_IM_ADDR : 1;
    volatile unsigned int TRG_AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_IRQ_NOTIFY_Bits
{
    volatile unsigned int AEI_TO_XPT : 1;
    volatile unsigned int AEI_USP_ADDR : 1;
    volatile unsigned int AEI_IM_ADDR : 1;
    volatile unsigned int AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_KRST0_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int RSTSTAT : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_KRST0_Bits;


typedef struct _Ifx_GTM_KRST1_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRST1_Bits;


typedef struct _Ifx_GTM_KRSTCLR_Bits
{
    volatile unsigned int CLR : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRSTCLR_Bits;


typedef struct _Ifx_GTM_OCS_Bits
{
    volatile unsigned int reserved_0 : 24;
    volatile unsigned int SUS : 4;
    volatile unsigned int SUS_P : 1;
    volatile unsigned int SUSSTA : 1;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OCS_Bits;


typedef struct _Ifx_GTM_ODA_Bits
{
    volatile unsigned int DDREN : 1;
    volatile unsigned int DREN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ODA_Bits;


typedef struct _Ifx_GTM_OTBU0T_Bits
{
    volatile unsigned int CV : 27;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int CM : 2;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OTBU0T_Bits;


typedef struct _Ifx_GTM_OTBU1T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU1T_Bits;


typedef struct _Ifx_GTM_OTBU2T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU2T_Bits;


typedef struct _Ifx_GTM_OTSC0_Bits
{
    volatile unsigned int B0LMT : 3;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int B0LMI : 4;
    volatile unsigned int B0HMT : 3;
    volatile unsigned int reserved_11 : 1;
    volatile unsigned int B0HMI : 4;
    volatile unsigned int B1LMT : 3;
    volatile unsigned int reserved_19 : 1;
    volatile unsigned int B1LMI : 4;
    volatile unsigned int B1HMT : 3;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int B1HMI : 4;
} Ifx_GTM_OTSC0_Bits;


typedef struct _Ifx_GTM_OTSS_Bits
{
    volatile unsigned int OTGB0 : 4;
    volatile unsigned int reserved_4 : 4;
    volatile unsigned int OTGB1 : 4;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int OTGB2 : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_OTSS_Bits;


typedef struct _Ifx_GTM_REV_Bits
{
    volatile unsigned int STEP : 8;
    volatile unsigned int NO : 4;
    volatile unsigned int MINOR : 4;
    volatile unsigned int MAJOR : 4;
    volatile unsigned int DEV_CODE0 : 4;
    volatile unsigned int DEV_CODE1 : 4;
    volatile unsigned int DEV_CODE2 : 4;
} Ifx_GTM_REV_Bits;


typedef struct _Ifx_GTM_RST_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_RST_Bits;


typedef struct _Ifx_GTM_TBU_CH0_BASE_Bits
{
    volatile unsigned int BASE : 27;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TBU_CH0_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH0_CTRL_Bits
{
    volatile unsigned int LOW_RES : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH0_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH1_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH1_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH1_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH1_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH2_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH2_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH2_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH2_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CHEN_Bits
{
    volatile unsigned int ENDIS_CH0 : 2;
    volatile unsigned int ENDIS_CH1 : 2;
    volatile unsigned int ENDIS_CH2 : 2;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TBU_CHEN_Bits;


typedef struct _Ifx_GTM_TIM_AUX_IN_SRC_Bits
{
    volatile unsigned int SRC_CH0 : 1;
    volatile unsigned int SRC_CH1 : 1;
    volatile unsigned int SRC_CH2 : 1;
    volatile unsigned int SRC_CH3 : 1;
    volatile unsigned int SRC_CH4 : 1;
    volatile unsigned int SRC_CH5 : 1;
    volatile unsigned int SRC_CH6 : 1;
    volatile unsigned int SRC_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_AUX_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNT_Bits
{
    volatile unsigned int CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_CNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNTS_Bits
{
    volatile unsigned int CNTS : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_CNTS_Bits;


typedef struct _Ifx_GTM_TIM_CH_CTRL_Bits
{
    volatile unsigned int TIM_EN : 1;
    volatile unsigned int TIM_MODE : 3;
    volatile unsigned int OSM : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int CICTRL : 1;
    volatile unsigned int TBU0x_SEL : 1;
    volatile unsigned int GPR0_SEL : 2;
    volatile unsigned int GPR1_SEL : 2;
    volatile unsigned int CNTS_SEL : 1;
    volatile unsigned int DSL : 1;
    volatile unsigned int ISL : 1;
    volatile unsigned int ECNT_RESET : 1;
    volatile unsigned int FLT_EN : 1;
    volatile unsigned int FLT_CNT_FRQ : 2;
    volatile unsigned int EXT_CAP_EN : 1;
    volatile unsigned int FLT_MODE_RE : 1;
    volatile unsigned int FLT_CTR_RE : 1;
    volatile unsigned int FLT_MODE_FE : 1;
    volatile unsigned int FLT_CTR_FE : 1;
    volatile unsigned int CLK_SEL : 3;
    volatile unsigned int FR_ECNT_OFL : 1;
    volatile unsigned int EGPR0_SEL : 1;
    volatile unsigned int EGPR1_SEL : 1;
    volatile unsigned int TOCTRL : 2;
} Ifx_GTM_TIM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECNT_Bits
{
    volatile unsigned int ECNT : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TIM_CH_ECNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECTRL_Bits
{
    volatile unsigned int EXT_CAP_SRC : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_TIM_CH_ECTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_EIRQ_EN_Bits
{
    volatile unsigned int NEWVAL_EIRQ_EN : 1;
    volatile unsigned int ECNTOFL_EIRQ_EN : 1;
    volatile unsigned int CNTOFL_EIRQ_EN : 1;
    volatile unsigned int GPRzOFL_EIRQ_EN : 1;
    volatile unsigned int TODET_EIRQ_EN : 1;
    volatile unsigned int GLITCHDET_EIRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_FE_Bits
{
    volatile unsigned int FLT_FE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_FE_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_RE_Bits
{
    volatile unsigned int FLT_RE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_RE_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR0_Bits
{
    volatile unsigned int GPR0 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR0_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR1_Bits
{
    volatile unsigned int GPR1 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR1_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_EN_Bits
{
    volatile unsigned int NEWVAL_IRQ_EN : 1;
    volatile unsigned int ECNTOFL_IRQ_EN : 1;
    volatile unsigned int CNTOFL_IRQ_EN : 1;
    volatile unsigned int GPRzOFL_IRQ_EN : 1;
    volatile unsigned int TODET_IRQ_EN : 1;
    volatile unsigned int GLITCHDET_IRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEWVAL : 1;
    volatile unsigned int TRG_ECNTOFL : 1;
    volatile unsigned int TRG_CNTOFL : 1;
    volatile unsigned int TRG_GPRzOFL : 1;
    volatile unsigned int TRG_TODET : 1;
    volatile unsigned int TRG_GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TIM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEWVAL : 1;
    volatile unsigned int ECNTOFL : 1;
    volatile unsigned int CNTOFL : 1;
    volatile unsigned int GPRzOFL : 1;
    volatile unsigned int TODET : 1;
    volatile unsigned int GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUC_Bits
{
    volatile unsigned int TO_CNT : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_CH_TDUC_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUV_Bits
{
    volatile unsigned int TOV : 8;
    volatile unsigned int reserved_8 : 20;
    volatile unsigned int TCS : 3;
    volatile unsigned int reserved_31 : 1;
} Ifx_GTM_TIM_CH_TDUV_Bits;


typedef struct _Ifx_GTM_TIM_IN_SRC_Bits
{
    volatile unsigned int VAL_0 : 2;
    volatile unsigned int MODE_0 : 2;
    volatile unsigned int VAL_1 : 2;
    volatile unsigned int MODE_1 : 2;
    volatile unsigned int VAL_2 : 2;
    volatile unsigned int MODE_2 : 2;
    volatile unsigned int VAL_3 : 2;
    volatile unsigned int MODE_3 : 2;
    volatile unsigned int VAL_4 : 2;
    volatile unsigned int MODE_4 : 2;
    volatile unsigned int VAL_5 : 2;
    volatile unsigned int MODE_5 : 2;
    volatile unsigned int VAL_6 : 2;
    volatile unsigned int MODE_6 : 2;
    volatile unsigned int VAL_7 : 2;
    volatile unsigned int MODE_7 : 2;
} Ifx_GTM_TIM_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_INP_VAL_Bits
{
    volatile unsigned int F_OUT : 8;
    volatile unsigned int F_IN : 8;
    volatile unsigned int TIM_IN : 8;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_INP_VAL_Bits;


typedef struct _Ifx_GTM_TIM_RST_Bits
{
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_RST_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM0_Bits
{
    volatile unsigned int CM0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM1_Bits
{
    volatile unsigned int CM1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_TOM_CH_CN0_Bits
{
    volatile unsigned int CN0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CTRL_Bits
{
    volatile unsigned int reserved_0 : 11;
    volatile unsigned int SL : 1;
    volatile unsigned int CLK_SRC_SR : 3;
    volatile unsigned int reserved_15 : 5;
    volatile unsigned int RST_CCU0 : 1;
    volatile unsigned int OSM_TRIG : 1;
    volatile unsigned int EXT_TRIG : 1;
    volatile unsigned int EXTTRIGOUT : 1;
    volatile unsigned int TRIGOUT : 1;
    volatile unsigned int reserved_25 : 1;
    volatile unsigned int OSM : 1;
    volatile unsigned int BITREV : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_TOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN : 1;
    volatile unsigned int CCU1TC_IRQ_EN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC0 : 1;
    volatile unsigned int TRG_CCU1TC0 : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC : 1;
    volatile unsigned int CCU1TC : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR0_Bits
{
    volatile unsigned int SR0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR1_Bits
{
    volatile unsigned int SR1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_TOM_CH_STAT_Bits
{
    volatile unsigned int OL : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_TOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC0_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC1_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN0_Bits B;
} Ifx_GTM_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ACCEN1_Bits B;
} Ifx_GTM_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG0OUT0_Bits B;
} Ifx_GTM_ADCTRIG0OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ADCTRIG1OUT0_Bits B;
} Ifx_GTM_ADCTRIG1OUT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_AEI_ADDR_XPT_Bits B;
} Ifx_GTM_AEI_ADDR_XPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_MODE_Bits B;
} Ifx_GTM_BRIDGE_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR1_Bits B;
} Ifx_GTM_BRIDGE_PTR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_BRIDGE_PTR2_Bits B;
} Ifx_GTM_BRIDGE_PTR2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CLC_Bits B;
} Ifx_GTM_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK0_5_CTRL_Bits B;
} Ifx_GTM_CMU_CLK0_5_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_6_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_6_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_7_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_7_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_CLK_EN_Bits B;
} Ifx_GTM_CMU_CLK_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_DEN_Bits B;
} Ifx_GTM_CMU_ECLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_ECLK_NUM_Bits B;
} Ifx_GTM_CMU_ECLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_FXCLK_CTRL_Bits B;
} Ifx_GTM_CMU_FXCLK_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_DEN_Bits B;
} Ifx_GTM_CMU_GCLK_DEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CMU_GCLK_NUM_Bits B;
} Ifx_GTM_CMU_GCLK_NUM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_CTRL_Bits B;
} Ifx_GTM_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL1_Bits B;
} Ifx_GTM_DTM_CH_CTRL1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL2_Bits B;
} Ifx_GTM_DTM_CH_CTRL2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CH_CTRL2_SR_Bits B;
} Ifx_GTM_DTM_CH_CTRL2_SR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_CTRL_Bits B;
} Ifx_GTM_DTM_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_DTV_CH_Bits B;
} Ifx_GTM_DTM_DTV_CH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_DTM_PS_CTRL_Bits B;
} Ifx_GTM_DTM_PS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_EIRQ_EN_Bits B;
} Ifx_GTM_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_HW_CONF_Bits B;
} Ifx_GTM_HW_CONF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_0_Bits B;
} Ifx_GTM_ICM_IRQG_0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_2_Bits B;
} Ifx_GTM_ICM_IRQG_2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_6_Bits B;
} Ifx_GTM_ICM_IRQG_6;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_CEI1_Bits B;
} Ifx_GTM_ICM_IRQG_CEI1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ICM_IRQG_MEI_Bits B;
} Ifx_GTM_ICM_IRQG_MEI;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_T_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_T_OUTSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_INOUTSEL_TIM_INSEL_Bits B;
} Ifx_GTM_INOUTSEL_TIM_INSEL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_EN_Bits B;
} Ifx_GTM_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_FORCINT_Bits B;
} Ifx_GTM_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_MODE_Bits B;
} Ifx_GTM_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_IRQ_NOTIFY_Bits B;
} Ifx_GTM_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST0_Bits B;
} Ifx_GTM_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRST1_Bits B;
} Ifx_GTM_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_KRSTCLR_Bits B;
} Ifx_GTM_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OCS_Bits B;
} Ifx_GTM_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_ODA_Bits B;
} Ifx_GTM_ODA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU0T_Bits B;
} Ifx_GTM_OTBU0T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU1T_Bits B;
} Ifx_GTM_OTBU1T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTBU2T_Bits B;
} Ifx_GTM_OTBU2T;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSC0_Bits B;
} Ifx_GTM_OTSC0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_OTSS_Bits B;
} Ifx_GTM_OTSS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_REV_Bits B;
} Ifx_GTM_REV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_RST_Bits B;
} Ifx_GTM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_BASE_Bits B;
} Ifx_GTM_TBU_CH0_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH0_CTRL_Bits B;
} Ifx_GTM_TBU_CH0_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_BASE_Bits B;
} Ifx_GTM_TBU_CH1_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH1_CTRL_Bits B;
} Ifx_GTM_TBU_CH1_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_BASE_Bits B;
} Ifx_GTM_TBU_CH2_BASE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CH2_CTRL_Bits B;
} Ifx_GTM_TBU_CH2_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TBU_CHEN_Bits B;
} Ifx_GTM_TBU_CHEN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_AUX_IN_SRC_Bits B;
} Ifx_GTM_TIM_AUX_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNT_Bits B;
} Ifx_GTM_TIM_CH_CNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CNTS_Bits B;
} Ifx_GTM_TIM_CH_CNTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_CTRL_Bits B;
} Ifx_GTM_TIM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECNT_Bits B;
} Ifx_GTM_TIM_CH_ECNT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_ECTRL_Bits B;
} Ifx_GTM_TIM_CH_ECTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_EIRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_EIRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_FE_Bits B;
} Ifx_GTM_TIM_CH_FLT_FE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_FLT_RE_Bits B;
} Ifx_GTM_TIM_CH_FLT_RE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR0_Bits B;
} Ifx_GTM_TIM_CH_GPR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_GPR1_Bits B;
} Ifx_GTM_TIM_CH_GPR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TIM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TIM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUC_Bits B;
} Ifx_GTM_TIM_CH_TDUC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_CH_TDUV_Bits B;
} Ifx_GTM_TIM_CH_TDUV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_IN_SRC_Bits B;
} Ifx_GTM_TIM_IN_SRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_INP_VAL_Bits B;
} Ifx_GTM_TIM_INP_VAL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TIM_RST_Bits B;
} Ifx_GTM_TIM_RST;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM0_Bits B;
} Ifx_GTM_TOM_CH_CM0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CM1_Bits B;
} Ifx_GTM_TOM_CH_CM1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CN0_Bits B;
} Ifx_GTM_TOM_CH_CN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_CTRL_Bits B;
} Ifx_GTM_TOM_CH_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TOM_CH_IRQ_EN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TOM_CH_IRQ_FORCINT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TOM_CH_IRQ_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR0_Bits B;
} Ifx_GTM_TOM_CH_SR0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_SR1_Bits B;
} Ifx_GTM_TOM_CH_SR1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_CH_STAT_Bits B;
} Ifx_GTM_TOM_CH_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC0_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC0_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC1_ACT_TB;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_GLB_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC1_INT_TRIG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT;
# 2140 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_CLK0_5
{
    Ifx_GTM_CMU_CLK0_5_CTRL CTRL;
} Ifx_GTM_CMU_CLK0_5;


typedef volatile struct _Ifx_GTM_CMU_CLK_6
{
    Ifx_GTM_CMU_CLK_6_CTRL CTRL;
} Ifx_GTM_CMU_CLK_6;


typedef volatile struct _Ifx_GTM_CMU_CLK_7
{
    Ifx_GTM_CMU_CLK_7_CTRL CTRL;
} Ifx_GTM_CMU_CLK_7;


typedef volatile struct _Ifx_GTM_CMU_ECLK
{
    Ifx_GTM_CMU_ECLK_NUM NUM;
    Ifx_GTM_CMU_ECLK_DEN DEN;
} Ifx_GTM_CMU_ECLK;


typedef volatile struct _Ifx_GTM_CMU_FXCLK
{
    Ifx_GTM_CMU_FXCLK_CTRL CTRL;
} Ifx_GTM_CMU_FXCLK;


typedef volatile struct _Ifx_GTM_INOUTSEL_CAN
{
    Ifx_GTM_INOUTSEL_CAN_OUTSEL OUTSEL;
} Ifx_GTM_INOUTSEL_CAN;


typedef volatile struct _Ifx_GTM_INOUTSEL_T
{
    Ifx_GTM_INOUTSEL_T_OUTSEL OUTSEL[8];
} Ifx_GTM_INOUTSEL_T;


typedef volatile struct _Ifx_GTM_INOUTSEL_TIM
{
    Ifx_GTM_INOUTSEL_TIM_INSEL INSEL;
    unsigned char reserved_4[28];
} Ifx_GTM_INOUTSEL_TIM;


typedef volatile struct _Ifx_GTM_TIM_CH
{
    Ifx_GTM_TIM_CH_GPR0 GPR0;
    Ifx_GTM_TIM_CH_GPR1 GPR1;
    Ifx_GTM_TIM_CH_CNT CNT;
    Ifx_GTM_TIM_CH_ECNT ECNT;
    Ifx_GTM_TIM_CH_CNTS CNTS;
    Ifx_GTM_TIM_CH_TDUC TDUC;
    Ifx_GTM_TIM_CH_TDUV TDUV;
    Ifx_GTM_TIM_CH_FLT_RE FLT_RE;
    Ifx_GTM_TIM_CH_FLT_FE FLT_FE;
    Ifx_GTM_TIM_CH_CTRL CTRL;
    Ifx_GTM_TIM_CH_ECTRL ECTRL;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TIM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TIM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TIM_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_TIM_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_40[52];
} Ifx_GTM_TIM_CH;


typedef volatile struct _Ifx_GTM_TOM_CH
{
    Ifx_GTM_TOM_CH_CTRL CTRL;
    Ifx_GTM_TOM_CH_SR0 SR0;
    Ifx_GTM_TOM_CH_SR1 SR1;
    Ifx_GTM_TOM_CH_CM0 CM0;
    Ifx_GTM_TOM_CH_CM1 CM1;
    Ifx_GTM_TOM_CH_CN0 CN0;
    Ifx_GTM_TOM_CH_STAT STAT;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TOM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TOM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TOM_CH_IRQ_MODE IRQ_MODE;
    unsigned char reserved_2C[4];
} Ifx_GTM_TOM_CH;
# 2239 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRIDGE
{
    Ifx_GTM_BRIDGE_MODE MODE;
    Ifx_GTM_BRIDGE_PTR1 PTR1;
    Ifx_GTM_BRIDGE_PTR2 PTR2;
} Ifx_GTM_BRIDGE;


typedef volatile struct _Ifx_GTM_CMU
{
    Ifx_GTM_CMU_CLK_EN CLK_EN;
    Ifx_GTM_CMU_GCLK_NUM GCLK_NUM;
    Ifx_GTM_CMU_GCLK_DEN GCLK_DEN;
    Ifx_GTM_CMU_CLK0_5 CLK0_5[6];
    Ifx_GTM_CMU_CLK_6 CLK_6;
    Ifx_GTM_CMU_CLK_7 CLK_7;
    Ifx_GTM_CMU_ECLK ECLK[3];
    Ifx_GTM_CMU_FXCLK FXCLK;
} Ifx_GTM_CMU;


typedef volatile struct _Ifx_GTM_DTM
{
    Ifx_GTM_DTM_CTRL CTRL;
    Ifx_GTM_DTM_CH_CTRL1 CH_CTRL1;
    Ifx_GTM_DTM_CH_CTRL2 CH_CTRL2;
    Ifx_GTM_DTM_CH_CTRL2_SR CH_CTRL2_SR;
    Ifx_GTM_DTM_PS_CTRL PS_CTRL;
    Ifx_GTM_DTM_DTV_CH DTV_CH[4];
} Ifx_GTM_DTM;


typedef volatile struct _Ifx_GTM_ICM
{
    Ifx_GTM_ICM_IRQG_0 IRQG_0;
    unsigned char reserved_4[4];
    Ifx_GTM_ICM_IRQG_2 IRQG_2;
    unsigned char reserved_C[12];
    Ifx_GTM_ICM_IRQG_6 IRQG_6;
    unsigned char reserved_1C[20];
    Ifx_GTM_ICM_IRQG_MEI IRQG_MEI;
    unsigned char reserved_34[4];
    Ifx_GTM_ICM_IRQG_CEI1 IRQG_CEI1;
} Ifx_GTM_ICM;


typedef volatile struct _Ifx_GTM_INOUTSEL
{
    Ifx_GTM_INOUTSEL_TIM TIM[1];
    Ifx_GTM_INOUTSEL_T T;
    unsigned char reserved_40[80];
    Ifx_GTM_INOUTSEL_CAN CAN;
} Ifx_GTM_INOUTSEL;


typedef volatile struct _Ifx_GTM_TBU
{
    Ifx_GTM_TBU_CHEN CHEN;
    Ifx_GTM_TBU_CH0_CTRL CH0_CTRL;
    Ifx_GTM_TBU_CH0_BASE CH0_BASE;
    Ifx_GTM_TBU_CH1_CTRL CH1_CTRL;
    Ifx_GTM_TBU_CH1_BASE CH1_BASE;
    Ifx_GTM_TBU_CH2_CTRL CH2_CTRL;
    Ifx_GTM_TBU_CH2_BASE CH2_BASE;
} Ifx_GTM_TBU;


typedef volatile struct _Ifx_GTM_TIM
{
    Ifx_GTM_TIM_CH CH0;
    Ifx_GTM_TIM_INP_VAL INP_VAL;
    Ifx_GTM_TIM_IN_SRC IN_SRC;
    Ifx_GTM_TIM_RST RST;
    Ifx_GTM_TIM_CH CH1;
    unsigned char reserved_F4[12];
    Ifx_GTM_TIM_CH CH2;
    unsigned char reserved_174[12];
    Ifx_GTM_TIM_CH CH3;
    unsigned char reserved_1F4[12];
    Ifx_GTM_TIM_CH CH4;
    unsigned char reserved_274[12];
    Ifx_GTM_TIM_CH CH5;
    unsigned char reserved_2F4[12];
    Ifx_GTM_TIM_CH CH6;
    unsigned char reserved_374[12];
    Ifx_GTM_TIM_CH CH7;
    unsigned char reserved_3F4[12];
} Ifx_GTM_TIM;


typedef volatile struct _Ifx_GTM_TOM
{
    Ifx_GTM_TOM_CH CH0;
    Ifx_GTM_TOM_TGC0_GLB_CTRL TGC0_GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB TGC0_ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL TGC0_FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG TGC0_INT_TRIG;
    Ifx_GTM_TOM_CH CH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL TGC0_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT TGC0_ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL TGC0_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT TGC0_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH2;
    unsigned char reserved_B0[16];
    Ifx_GTM_TOM_CH CH3;
    unsigned char reserved_F0[16];
    Ifx_GTM_TOM_CH CH4;
    unsigned char reserved_130[16];
    Ifx_GTM_TOM_CH CH5;
    unsigned char reserved_170[16];
    Ifx_GTM_TOM_CH CH6;
    unsigned char reserved_1B0[16];
    Ifx_GTM_TOM_CH CH7;
    unsigned char reserved_1F0[16];
    Ifx_GTM_TOM_CH CH8;
    Ifx_GTM_TOM_TGC1_GLB_CTRL TGC1_GLB_CTRL;
    Ifx_GTM_TOM_TGC1_ACT_TB TGC1_ACT_TB;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL TGC1_FUPD_CTRL;
    Ifx_GTM_TOM_TGC1_INT_TRIG TGC1_INT_TRIG;
    Ifx_GTM_TOM_CH CH9;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL TGC1_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT TGC1_ENDIS_STAT;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL TGC1_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT TGC1_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH10;
    unsigned char reserved_2B0[16];
    Ifx_GTM_TOM_CH CH11;
    unsigned char reserved_2F0[16];
    Ifx_GTM_TOM_CH CH12;
    unsigned char reserved_330[16];
    Ifx_GTM_TOM_CH CH13;
    unsigned char reserved_370[16];
    Ifx_GTM_TOM_CH CH14;
    unsigned char reserved_3B0[16];
    Ifx_GTM_TOM_CH CH15;
    unsigned char reserved_3F0[1040];
} Ifx_GTM_TOM;
# 2388 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM
{
    Ifx_GTM_REV REV;
    Ifx_GTM_RST RST;
    Ifx_GTM_CTRL CTRL;
    Ifx_GTM_AEI_ADDR_XPT AEI_ADDR_XPT;
    Ifx_GTM_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_IRQ_EN IRQ_EN;
    Ifx_GTM_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_IRQ_MODE IRQ_MODE;
    Ifx_GTM_EIRQ_EN EIRQ_EN;
    Ifx_GTM_HW_CONF HW_CONF;
    unsigned char reserved_28[8];
    Ifx_GTM_BRIDGE BRIDGE;
    unsigned char reserved_3C[4];
    Ifx_GTM_TIM_AUX_IN_SRC TIM_AUX_IN_SRC[1];
    unsigned char reserved_44[188];
    Ifx_GTM_TBU TBU;
    unsigned char reserved_11C[484];
    Ifx_GTM_CMU CMU;
    unsigned char reserved_348[696];
    Ifx_GTM_ICM ICM;
    unsigned char reserved_63C[2500];
    Ifx_GTM_TIM TIM[1];
    unsigned char reserved_1400[27648];
    Ifx_GTM_TOM TOM[2];
    unsigned char reserved_9000[41024];
    Ifx_GTM_DTM DTM1;
    unsigned char reserved_13064[220];
    Ifx_GTM_DTM DTM5;
    unsigned char reserved_13164[576412];
    Ifx_GTM_CLC CLC;
    unsigned char reserved_9FD04[12];
    Ifx_GTM_INOUTSEL INOUTSEL;
    unsigned char reserved_9FDA4[12];
    Ifx_GTM_ADCTRIG0OUT0 ADCTRIG0OUT0;
    unsigned char reserved_9FDB4[4];
    Ifx_GTM_ADCTRIG1OUT0 ADCTRIG1OUT0;
    unsigned char reserved_9FDBC[8];
    Ifx_GTM_OTBU0T OTBU0T;
    Ifx_GTM_OTBU1T OTBU1T;
    Ifx_GTM_OTBU2T OTBU2T;
    Ifx_GTM_OTSS OTSS;
    Ifx_GTM_OTSC0 OTSC0;
    unsigned char reserved_9FDD8[4];
    Ifx_GTM_ODA ODA;
    unsigned char reserved_9FDE0[8];
    Ifx_GTM_OCS OCS;
    Ifx_GTM_KRSTCLR KRSTCLR;
    Ifx_GTM_KRST1 KRST1;
    Ifx_GTM_KRST0 KRST0;
    Ifx_GTM_ACCEN1 ACCEN1;
    Ifx_GTM_ACCEN0 ACCEN0;
    unsigned char reserved_9FE00[512];
} Ifx_GTM;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_reg.h" 2
# 48 "./0_Src/4_McHal/Tricore/_Impl/IfxGtm_cfg.h" 2
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
# 49 "./0_Src/4_McHal/Tricore/_Impl/IfxGtm_cfg.h" 2
# 166 "./0_Src/4_McHal/Tricore/_Impl/IfxGtm_cfg.h"
typedef volatile struct IfxGtm_Tom_TGC Ifx_GTM_TOM_TGC;
# 176 "./0_Src/4_McHal/Tricore/_Impl/IfxGtm_cfg.h"
typedef enum
{
    IfxGtm_Dpll_SubInc_1 = 0,
    IfxGtm_Dpll_SubInc_2
} IfxGtm_Dpll_SubInc;



typedef enum
{
    IfxGtm_FeatureControl_disabled = 0,
    IfxGtm_FeatureControl_disable = 1,
    IfxGtm_FeatureControl_enable = 2,
    IfxGtm_FeatureControl_enabled = 3
} IfxGtm_FeatureControl;



typedef enum
{
    IfxGtm_Tim_0
} IfxGtm_Tim;



typedef enum
{
    IfxGtm_Tim_Ch_0,
    IfxGtm_Tim_Ch_1,
    IfxGtm_Tim_Ch_2,
    IfxGtm_Tim_Ch_3,
    IfxGtm_Tim_Ch_4,
    IfxGtm_Tim_Ch_5,
    IfxGtm_Tim_Ch_6,
    IfxGtm_Tim_Ch_7
} IfxGtm_Tim_Ch;



typedef enum
{
    IfxGtm_Tom_0,
    IfxGtm_Tom_1
} IfxGtm_Tom;



typedef enum
{
    IfxGtm_Tom_Ch_none = -1,
    IfxGtm_Tom_Ch_0,
    IfxGtm_Tom_Ch_1,
    IfxGtm_Tom_Ch_2,
    IfxGtm_Tom_Ch_3,
    IfxGtm_Tom_Ch_4,
    IfxGtm_Tom_Ch_5,
    IfxGtm_Tom_Ch_6,
    IfxGtm_Tom_Ch_7,
    IfxGtm_Tom_Ch_8,
    IfxGtm_Tom_Ch_9,
    IfxGtm_Tom_Ch_10,
    IfxGtm_Tom_Ch_11,
    IfxGtm_Tom_Ch_12,
    IfxGtm_Tom_Ch_13,
    IfxGtm_Tom_Ch_14,
    IfxGtm_Tom_Ch_15
} IfxGtm_Tom_Ch;



typedef enum
{
    IfxGtm_Tom_Tgc_0,
    IfxGtm_Tom_Tgc_1
} IfxGtm_Tom_Tgc;
# 262 "./0_Src/4_McHal/Tricore/_Impl/IfxGtm_cfg.h"
struct IfxGtm_Tom_TGC
{
    Ifx_GTM_TOM_TGC0_GLB_CTRL GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG INT_TRIG;
    Ifx_GTM_TOM_CH xxxCH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT OUTEN_STAT;
};
# 43 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.h" 2
# 1 "./0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tim.h" 1
# 47 "./0_Src/4_McHal/Tricore/Gtm/Std/IfxGtm_Tim.h"
typedef enum
{
    IfxGtm_Tim_CntsSel_cntReg = 0,
    IfxGtm_Tim_CntsSel_tbuTs0
} IfxGtm_Tim_CntsSel;



typedef enum
{
    IfxGtm_Tim_FilterCounter_upDown = 0,
    IfxGtm_Tim_FilterCounter_hold
} IfxGtm_Tim_FilterCounter;



typedef enum
{
    IfxGtm_Tim_FilterMode_immediateEdge = 0,
    IfxGtm_Tim_FilterMode_individualDeglitch
} IfxGtm_Tim_FilterMode;

typedef enum
{
    IfxGtm_Tim_GprSel_tbuTs0 = 0,
    IfxGtm_Tim_GprSel_tbuTs1,
    IfxGtm_Tim_GprSel_tbuTs2,
    IfxGtm_Tim_GprSel_cnts
} IfxGtm_Tim_GprSel;

typedef enum
{
    IfxGtm_Tim_Input_external = 0,
    IfxGtm_Tim_Input_adjacent
} IfxGtm_Tim_Input;

typedef enum
{
    IfxGtm_Tim_Mode_pwmMeasurement = 0,
    IfxGtm_Tim_Mode_pulseIntegration,
    IfxGtm_Tim_Mode_inputEvent,
    IfxGtm_Tim_Mode_inputPrescaler,
    IfxGtm_Tim_Mode_bitCompression
} IfxGtm_Tim_Mode;
# 44 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.h" 2
# 53 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.h"
typedef enum
{
    IfxGtm_Trig_AdcGroup_0,
    IfxGtm_Trig_AdcGroup_1,
    IfxGtm_Trig_AdcGroup_2,
    IfxGtm_Trig_AdcGroup_3
} IfxGtm_Trig_AdcGroup;



typedef enum
{
    IfxGtm_Trig_AdcTrig_0,
    IfxGtm_Trig_AdcTrig_1,
    IfxGtm_Trig_AdcTrig_count
} IfxGtm_Trig_AdcTrig;



typedef enum
{
    IfxGtm_Trig_AdcTrigChannel_1,
    IfxGtm_Trig_AdcTrigChannel_2,
    IfxGtm_Trig_AdcTrigChannel_3,
    IfxGtm_Trig_AdcTrigChannel_4,
    IfxGtm_Trig_AdcTrigChannel_5,
    IfxGtm_Trig_AdcTrigChannel_6,
    IfxGtm_Trig_AdcTrigChannel_7,
    IfxGtm_Trig_AdcTrigChannel_8,
    IfxGtm_Trig_AdcTrigChannel_9,
    IfxGtm_Trig_AdcTrigChannel_10,
    IfxGtm_Trig_AdcTrigChannel_11,
    IfxGtm_Trig_AdcTrigChannel_12,
    IfxGtm_Trig_AdcTrigChannel_13,
    IfxGtm_Trig_AdcTrigChannel_14,
    IfxGtm_Trig_AdcTrigChannel_15,
    IfxGtm_Trig_AdcTrigChannel_count
} IfxGtm_Trig_AdcTrigChannel;



typedef enum
{
    IfxGtm_Trig_AdcTrigSource_tom0,
    IfxGtm_Trig_AdcTrigSource_tom1,
    IfxGtm_Trig_AdcTrigSource_count
} IfxGtm_Trig_AdcTrigSource;
# 118 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.h"
extern boolean IfxGtm_Trig_toVadc(Ifx_GTM *gtm, IfxGtm_Trig_AdcGroup adcGroup, IfxGtm_Trig_AdcTrig adcTrig, IfxGtm_Trig_AdcTrigSource source, IfxGtm_Trig_AdcTrigChannel channel);
# 30 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.c" 2
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
# 31 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.c" 2
# 39 "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.c"
typedef struct
{
    sint8 config;
} IfxGtm_Trig_Channel;





typedef struct
{
    IfxGtm_Trig_Channel channel[IfxGtm_Trig_AdcTrigChannel_count];
} IfxGtm_Trig_Source;





typedef struct
{
    IfxGtm_Trig_Source source[IfxGtm_Trig_AdcTrigSource_count];
} IfxGtm_Trig_Trigger;





typedef struct
{
    IfxGtm_Trig_Trigger trigger[IfxGtm_Trig_AdcTrig_count];
} IfxGtm_Trig_AdcTrig_Table;







static const IfxGtm_Trig_AdcTrig_Table IfxGtm_Trig_AdcTrig_tableAdc0_1 = {
    .trigger = {
        {.source = {



                               {.channel = { {.config = 0x01}, {.config = 0x02}, {.config = 0x03}, {.config = 0x04}, {.config = 0x05}, {.config = 0x06}, {.config = 0x07},
                                                 {.config = 0x08}, {.config = 0x09}, {.config = 0x0A}, {.config = 0x0B}, {.config = 0x0C}, {.config = 0x0D}, {.config = 0x0E}, {.config = 0x0F}}},

                               {.channel = { {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF},
                                                 {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}}},
                           }},

        {.source = {



                               {.channel = { {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF},
                                                 {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}}},

                               {.channel = { {.config = 0x01}, {.config = 0x02}, {.config = 0x03}, {.config = 0x04}, {.config = 0x05}, {.config = 0x06}, {.config = 0x07},
                                                 {.config = 0x08}, {.config = 0x09}, {.config = 0x0A}, {.config = 0x0B}, {.config = 0x0C}, {.config = 0x0D}, {.config = 0x0E}, {.config = 0x0F}}},
                           }},
    }
};

static const IfxGtm_Trig_AdcTrig_Table IfxGtm_Trig_AdcTrig_tableAdc2_3 = {
    .trigger = {
        {.source = {



                               {.channel = { {.config = 0x01}, {.config = 0x02}, {.config = 0x03}, {.config = 0x04}, {.config = 0x05}, {.config = 0x06}, {.config = 0x07},
                                                 {.config = 0x08}, {.config = 0x09}, {.config = 0x0A}, {.config = 0x0B}, {.config = 0x0C}, {.config = 0x0D}, {.config = 0x0E}, {.config = 0x0F}}},

                               {.channel = { {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF},
                                                 {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}}},
                           }},

        {.source = {



                               {.channel = { {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF},
                                                 {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}, {.config = 0xFF}}},

                               {.channel = { {.config = 0x01}, {.config = 0x02}, {.config = 0x03}, {.config = 0x04}, {.config = 0x05}, {.config = 0x06}, {.config = 0x07},
                                                 {.config = 0x08}, {.config = 0x09}, {.config = 0x0A}, {.config = 0x0B}, {.config = 0x0C}, {.config = 0x0D}, {.config = 0x0E}, {.config = 0x0F}}},
                           }},
    }
};





boolean IfxGtm_Trig_toVadc(Ifx_GTM *gtm, IfxGtm_Trig_AdcGroup adcGroup, IfxGtm_Trig_AdcTrig adcTrig, IfxGtm_Trig_AdcTrigSource source, IfxGtm_Trig_AdcTrigChannel channel)
{
    const IfxGtm_Trig_AdcTrig_Table *table = ((void *)0);
    uint8 config;

    boolean result = 0;

    switch (adcGroup)
    {
    case IfxGtm_Trig_AdcGroup_0:
    case IfxGtm_Trig_AdcGroup_1:
        table = &IfxGtm_Trig_AdcTrig_tableAdc0_1;
        break;
    case IfxGtm_Trig_AdcGroup_2:
    case IfxGtm_Trig_AdcGroup_3:
        table = &IfxGtm_Trig_AdcTrig_tableAdc2_3;
        break;
    default:
        break;
    }

    if (table != ((void *)0))
    {
        config = table->trigger[adcTrig].source[source].channel[channel].config;
        result = config != 0xFF;
        uint32 shift = adcGroup * 4;
        uint32 mask = 0xFU << shift;
        uint32 value = config << shift;

        switch (adcTrig)
        {
        case IfxGtm_Trig_AdcTrig_0:
            __ldmst_c(&(gtm->ADCTRIG0OUT0.U), mask, value);
            break;
        case IfxGtm_Trig_AdcTrig_1:
            __ldmst_c(&(gtm->ADCTRIG1OUT0.U), mask, value);
            break;
        default:
            result = 0;
            break;
        }
    }

    (((result) || ((2) > Assert_verboseLevel)) ? ((void)0) : Ifx_Assert_doLevel((2),"result", "0_Src/4_McHal/Tricore/Gtm/Trig/IfxGtm_Trig.c", 176, __func__));

    return result;
}
