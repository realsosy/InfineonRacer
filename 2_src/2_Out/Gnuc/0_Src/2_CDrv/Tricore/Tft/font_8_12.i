# 1 "0_Src/2_CDrv/Tricore/Tft/font_8_12.c"
# 1 "D:\\GitRepo\\InfineonRacer\\2_src\\InfineonRacer_TC23xA//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/2_CDrv/Tricore/Tft/font_8_12.c"


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
# 4 "0_Src/2_CDrv/Tricore/Tft/font_8_12.c" 2
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
# 5 "0_Src/2_CDrv/Tricore/Tft/font_8_12.c" 2
# 1 "0_Src/2_CDrv/Tricore/Tft/font_8_12.h" 1
# 14 "0_Src/2_CDrv/Tricore/Tft/font_8_12.h"
extern const uint8 __font_bitmap__8_12[256*12];
# 6 "0_Src/2_CDrv/Tricore/Tft/font_8_12.c" 2
# 265 "0_Src/2_CDrv/Tricore/Tft/font_8_12.c"
const uint8 __font_bitmap__8_12[256*12] = {


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x7E,
    0xC3,
    0x81,
    0xA5,
    0x81,
    0xBD,
    0x99,
    0xC3,
    0x7E,
    0x00,
    0x00,


    0x00,
    0x7E,
    0xFF,
    0xFF,
    0xDB,
    0xFF,
    0xC3,
    0xE7,
    0xFF,
    0x7E,
    0x00,
    0x00,


    0x00,
    0x00,
    0x44,
    0xEE,
    0xFE,
    0xFE,
    0xFE,
    0x7C,
    0x38,
    0x10,
    0x00,
    0x00,


    0x00,
    0x10,
    0x38,
    0x7C,
    0xFE,
    0xFE,
    0x7C,
    0x38,
    0x10,
    0x00,
    0x00,
    0x00,


    0x00,
    0x18,
    0x3C,
    0x3C,
    0xFF,
    0xE7,
    0xE7,
    0x18,
    0x18,
    0x7E,
    0x00,
    0x00,


    0x00,
    0x18,
    0x3C,
    0x7E,
    0xFF,
    0xFF,
    0x7E,
    0x18,
    0x18,
    0x7E,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x3C,
    0x7E,
    0x7E,
    0x3C,
    0x00,
    0x00,
    0x00,
    0x00,


    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xC3,
    0x81,
    0x81,
    0xC3,
    0xFF,
    0xFF,
    0xFF,
    0xFF,


    0x00,
    0x00,
    0x3C,
    0x7E,
    0x66,
    0x42,
    0x42,
    0x66,
    0x7E,
    0x3C,
    0x00,
    0x00,


    0xFF,
    0xFF,
    0xC3,
    0x81,
    0x99,
    0xBD,
    0xBD,
    0x99,
    0x81,
    0xC3,
    0xFF,
    0xFF,


    0x00,
    0x3E,
    0x0E,
    0x3A,
    0x72,
    0xF8,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x3C,
    0x66,
    0x66,
    0x66,
    0x3C,
    0x18,
    0x7E,
    0x18,
    0x18,
    0x00,
    0x00,


    0x00,
    0x1F,
    0x19,
    0x19,
    0x1F,
    0x18,
    0x18,
    0x78,
    0xF8,
    0x70,
    0x00,
    0x00,


    0x00,
    0x7F,
    0x63,
    0x7F,
    0x63,
    0x63,
    0x63,
    0x67,
    0xE7,
    0xE6,
    0xC0,
    0x00,


    0x00,
    0x00,
    0x18,
    0xDB,
    0x7E,
    0xE7,
    0xE7,
    0x7E,
    0xDB,
    0x18,
    0x00,
    0x00,


    0x00,
    0x80,
    0xC0,
    0xE0,
    0xF8,
    0xFE,
    0xF8,
    0xE0,
    0xC0,
    0x80,
    0x00,
    0x00,


    0x00,
    0x02,
    0x06,
    0x0E,
    0x3E,
    0xFE,
    0x3E,
    0x0E,
    0x06,
    0x02,
    0x00,
    0x00,


    0x00,
    0x18,
    0x3C,
    0x7E,
    0x18,
    0x18,
    0x18,
    0x7E,
    0x3C,
    0x18,
    0x00,
    0x00,


    0x00,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x00,
    0x00,
    0x66,
    0x66,
    0x00,
    0x00,


    0x00,
    0x7F,
    0xDB,
    0xDB,
    0xDB,
    0x7B,
    0x1B,
    0x1B,
    0x1B,
    0x1B,
    0x00,
    0x00,


    0x00,
    0x7E,
    0x63,
    0x30,
    0x3C,
    0x66,
    0x66,
    0x3C,
    0x0C,
    0xC6,
    0x7E,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFE,
    0xFE,
    0xFE,
    0x00,
    0x00,


    0x00,
    0x18,
    0x3C,
    0x7E,
    0x18,
    0x18,
    0x18,
    0x7E,
    0x3C,
    0x18,
    0x7E,
    0x00,


    0x00,
    0x18,
    0x3C,
    0x7E,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x00,
    0x00,


    0x00,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x7E,
    0x3C,
    0x18,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x18,
    0x0C,
    0xFE,
    0x0C,
    0x18,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x30,
    0x60,
    0xFE,
    0x60,
    0x30,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xC0,
    0xC0,
    0xC0,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x24,
    0x66,
    0xFF,
    0x66,
    0x24,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x10,
    0x10,
    0x38,
    0x38,
    0x7C,
    0x7C,
    0xFE,
    0xFE,
    0x00,
    0x00,


    0x00,
    0x00,
    0xFE,
    0xFE,
    0x7C,
    0x7C,
    0x38,
    0x38,
    0x10,
    0x10,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x30,
    0x78,
    0x78,
    0x78,
    0x30,
    0x30,
    0x00,
    0x30,
    0x30,
    0x00,
    0x00,


    0x00,
    0x66,
    0x66,
    0x66,
    0x24,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x6C,
    0x6C,
    0xFE,
    0x6C,
    0x6C,
    0x6C,
    0xFE,
    0x6C,
    0x6C,
    0x00,
    0x00,


    0x30,
    0x30,
    0x7C,
    0xC0,
    0xC0,
    0x78,
    0x0C,
    0x0C,
    0xF8,
    0x30,
    0x30,
    0x00,


    0x00,
    0x00,
    0x00,
    0xC4,
    0xCC,
    0x18,
    0x30,
    0x60,
    0xCC,
    0x8C,
    0x00,
    0x00,


    0x00,
    0x70,
    0xD8,
    0xD8,
    0x70,
    0xFA,
    0xDE,
    0xCC,
    0xDC,
    0x76,
    0x00,
    0x00,


    0x00,
    0x30,
    0x30,
    0x30,
    0x60,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x0C,
    0x18,
    0x30,
    0x60,
    0x60,
    0x60,
    0x30,
    0x18,
    0x0C,
    0x00,
    0x00,


    0x00,
    0x60,
    0x30,
    0x18,
    0x0C,
    0x0C,
    0x0C,
    0x18,
    0x30,
    0x60,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x66,
    0x3C,
    0xFF,
    0x3C,
    0x66,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x18,
    0x18,
    0x7E,
    0x18,
    0x18,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x38,
    0x38,
    0x60,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x38,
    0x38,
    0x00,
    0x00,


    0x00,
    0x00,
    0x02,
    0x06,
    0x0C,
    0x18,
    0x30,
    0x60,
    0xC0,
    0x80,
    0x00,
    0x00,


    0x00,
    0x7C,
    0xC6,
    0xCE,
    0xDE,
    0xD6,
    0xF6,
    0xE6,
    0xC6,
    0x7C,
    0x00,
    0x00,


    0x00,
    0x10,
    0x30,
    0xF0,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0xFC,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0xCC,
    0x0C,
    0x18,
    0x30,
    0x60,
    0xCC,
    0xFC,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0x0C,
    0x0C,
    0x38,
    0x0C,
    0x0C,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x0C,
    0x1C,
    0x3C,
    0x6C,
    0xCC,
    0xFE,
    0x0C,
    0x0C,
    0x1E,
    0x00,
    0x00,


    0x00,
    0xFC,
    0xC0,
    0xC0,
    0xC0,
    0xF8,
    0x0C,
    0x0C,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x38,
    0x60,
    0xC0,
    0xC0,
    0xF8,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0xFE,
    0xC6,
    0xC6,
    0x06,
    0x0C,
    0x18,
    0x30,
    0x30,
    0x30,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0xCC,
    0xEC,
    0x78,
    0xDC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0x7C,
    0x18,
    0x18,
    0x30,
    0x70,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x38,
    0x38,
    0x00,
    0x00,
    0x38,
    0x38,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x38,
    0x38,
    0x00,
    0x00,
    0x38,
    0x38,
    0x18,
    0x30,
    0x00,


    0x00,
    0x0C,
    0x18,
    0x30,
    0x60,
    0xC0,
    0x60,
    0x30,
    0x18,
    0x0C,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x7E,
    0x00,
    0x7E,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x60,
    0x30,
    0x18,
    0x0C,
    0x06,
    0x0C,
    0x18,
    0x30,
    0x60,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0x0C,
    0x18,
    0x30,
    0x30,
    0x00,
    0x30,
    0x30,
    0x00,
    0x00,


    0x00,
    0x7C,
    0xC6,
    0xC6,
    0xDE,
    0xDE,
    0xDE,
    0xC0,
    0xC0,
    0x7C,
    0x00,
    0x00,


    0x00,
    0x30,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xFC,
    0xCC,
    0xCC,
    0xCC,
    0x00,
    0x00,


    0x00,
    0xFC,
    0x66,
    0x66,
    0x66,
    0x7C,
    0x66,
    0x66,
    0x66,
    0xFC,
    0x00,
    0x00,


    0x00,
    0x3C,
    0x66,
    0xC6,
    0xC0,
    0xC0,
    0xC0,
    0xC6,
    0x66,
    0x3C,
    0x00,
    0x00,


    0x00,
    0xF8,
    0x6C,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x6C,
    0xF8,
    0x00,
    0x00,


    0x00,
    0xFE,
    0x62,
    0x60,
    0x64,
    0x7C,
    0x64,
    0x60,
    0x62,
    0xFE,
    0x00,
    0x00,


    0x00,
    0xFE,
    0x66,
    0x62,
    0x64,
    0x7C,
    0x64,
    0x60,
    0x60,
    0xF0,
    0x00,
    0x00,


    0x00,
    0x3C,
    0x66,
    0xC6,
    0xC0,
    0xC0,
    0xCE,
    0xC6,
    0x66,
    0x3E,
    0x00,
    0x00,


    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xFC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x00,
    0x00,


    0x00,
    0x78,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x78,
    0x00,
    0x00,


    0x00,
    0x1E,
    0x0C,
    0x0C,
    0x0C,
    0x0C,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0xE6,
    0x66,
    0x6C,
    0x6C,
    0x78,
    0x6C,
    0x6C,
    0x66,
    0xE6,
    0x00,
    0x00,


    0x00,
    0xF0,
    0x60,
    0x60,
    0x60,
    0x60,
    0x62,
    0x66,
    0x66,
    0xFE,
    0x00,
    0x00,


    0x00,
    0xC6,
    0xEE,
    0xFE,
    0xFE,
    0xD6,
    0xC6,
    0xC6,
    0xC6,
    0xC6,
    0x00,
    0x00,


    0x00,
    0xC6,
    0xC6,
    0xE6,
    0xF6,
    0xFE,
    0xDE,
    0xCE,
    0xC6,
    0xC6,
    0x00,
    0x00,


    0x00,
    0x38,
    0x6C,
    0xC6,
    0xC6,
    0xC6,
    0xC6,
    0xC6,
    0x6C,
    0x38,
    0x00,
    0x00,


    0x00,
    0xFC,
    0x66,
    0x66,
    0x66,
    0x7C,
    0x60,
    0x60,
    0x60,
    0xF0,
    0x00,
    0x00,


    0x00,
    0x38,
    0x6C,
    0xC6,
    0xC6,
    0xC6,
    0xCE,
    0xDE,
    0x7C,
    0x0C,
    0x1E,
    0x00,


    0x00,
    0xFC,
    0x66,
    0x66,
    0x66,
    0x7C,
    0x6C,
    0x66,
    0x66,
    0xE6,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0xCC,
    0xC0,
    0x70,
    0x18,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0xFC,
    0xB4,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x78,
    0x00,
    0x00,


    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x30,
    0x00,
    0x00,


    0x00,
    0xC6,
    0xC6,
    0xC6,
    0xC6,
    0xD6,
    0xD6,
    0x6C,
    0x6C,
    0x6C,
    0x00,
    0x00,


    0x00,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x30,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0x00,
    0x00,


    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x30,
    0x30,
    0x30,
    0x78,
    0x00,
    0x00,


    0x00,
    0xFE,
    0xCE,
    0x98,
    0x18,
    0x30,
    0x60,
    0x62,
    0xC6,
    0xFE,
    0x00,
    0x00,


    0x00,
    0x3C,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x30,
    0x3C,
    0x00,
    0x00,


    0x00,
    0x00,
    0x80,
    0xC0,
    0x60,
    0x30,
    0x18,
    0x0C,
    0x06,
    0x02,
    0x00,
    0x00,


    0x00,
    0x3C,
    0x0C,
    0x0C,
    0x0C,
    0x0C,
    0x0C,
    0x0C,
    0x0C,
    0x3C,
    0x00,
    0x00,


    0x10,
    0x38,
    0x6C,
    0xC6,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x00,


    0x30,
    0x30,
    0x18,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x78,
    0x0C,
    0x7C,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x00,
    0xE0,
    0x60,
    0x60,
    0x7C,
    0x66,
    0x66,
    0x66,
    0x66,
    0xDC,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x78,
    0xCC,
    0xC0,
    0xC0,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x1C,
    0x0C,
    0x0C,
    0x7C,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x78,
    0xCC,
    0xFC,
    0xC0,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x38,
    0x6C,
    0x60,
    0x60,
    0xF8,
    0x60,
    0x60,
    0x60,
    0xF0,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x76,
    0xCC,
    0xCC,
    0xCC,
    0x7C,
    0x0C,
    0xCC,
    0x78,


    0x00,
    0xE0,
    0x60,
    0x60,
    0x6C,
    0x76,
    0x66,
    0x66,
    0x66,
    0xE6,
    0x00,
    0x00,


    0x00,
    0x18,
    0x18,
    0x00,
    0x78,
    0x18,
    0x18,
    0x18,
    0x18,
    0x7E,
    0x00,
    0x00,


    0x00,
    0x0C,
    0x0C,
    0x00,
    0x3C,
    0x0C,
    0x0C,
    0x0C,
    0x0C,
    0xCC,
    0xCC,
    0x78,


    0x00,
    0xE0,
    0x60,
    0x60,
    0x66,
    0x6C,
    0x78,
    0x6C,
    0x66,
    0xE6,
    0x00,
    0x00,


    0x00,
    0x78,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x7E,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xFC,
    0xD6,
    0xD6,
    0xD6,
    0xD6,
    0xC6,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xF8,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xDC,
    0x66,
    0x66,
    0x66,
    0x66,
    0x7C,
    0x60,
    0xF0,


    0x00,
    0x00,
    0x00,
    0x00,
    0x76,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x7C,
    0x0C,
    0x1E,


    0x00,
    0x00,
    0x00,
    0x00,
    0xEC,
    0x6E,
    0x76,
    0x60,
    0x60,
    0xF0,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x78,
    0xCC,
    0x60,
    0x18,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x00,
    0x20,
    0x60,
    0xFC,
    0x60,
    0x60,
    0x60,
    0x6C,
    0x38,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x30,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xC6,
    0xC6,
    0xD6,
    0xD6,
    0x6C,
    0x6C,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xC6,
    0x6C,
    0x38,
    0x38,
    0x6C,
    0xC6,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x66,
    0x66,
    0x66,
    0x66,
    0x3C,
    0x0C,
    0x18,
    0xF0,


    0x00,
    0x00,
    0x00,
    0x00,
    0xFC,
    0x8C,
    0x18,
    0x60,
    0xC4,
    0xFC,
    0x00,
    0x00,


    0x00,
    0x1C,
    0x30,
    0x30,
    0x60,
    0xC0,
    0x60,
    0x30,
    0x30,
    0x1C,
    0x00,
    0x00,


    0x00,
    0x18,
    0x18,
    0x18,
    0x18,
    0x00,
    0x18,
    0x18,
    0x18,
    0x18,
    0x00,
    0x00,


    0x00,
    0xE0,
    0x30,
    0x30,
    0x18,
    0x0C,
    0x18,
    0x30,
    0x30,
    0xE0,
    0x00,
    0x00,


    0x00,
    0x73,
    0xDA,
    0xCE,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x10,
    0x38,
    0x6C,
    0xC6,
    0xC6,
    0xFE,
    0x00,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0xCC,
    0xC0,
    0xC0,
    0xC0,
    0xCC,
    0xCC,
    0x78,
    0x30,
    0xF0,


    0x00,
    0xCC,
    0xCC,
    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x0C,
    0x18,
    0x30,
    0x00,
    0x78,
    0xCC,
    0xFC,
    0xC0,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x30,
    0x78,
    0xCC,
    0x00,
    0x78,
    0x0C,
    0x7C,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x00,
    0xCC,
    0xCC,
    0x00,
    0x78,
    0x0C,
    0x7C,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0xC0,
    0x60,
    0x30,
    0x00,
    0x78,
    0x0C,
    0x7C,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x38,
    0x6C,
    0x6C,
    0x38,
    0xF8,
    0x0C,
    0x7C,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x78,
    0xCC,
    0xC0,
    0xC0,
    0xCC,
    0x78,
    0x30,
    0xF0,


    0x30,
    0x78,
    0xCC,
    0x00,
    0x78,
    0xCC,
    0xFC,
    0xC0,
    0xC0,
    0x7C,
    0x00,
    0x00,


    0x00,
    0xCC,
    0xCC,
    0x00,
    0x78,
    0xCC,
    0xFC,
    0xC0,
    0xC0,
    0x7C,
    0x00,
    0x00,


    0xC0,
    0x60,
    0x30,
    0x00,
    0x78,
    0xCC,
    0xFC,
    0xC0,
    0xC0,
    0x7C,
    0x00,
    0x00,


    0x00,
    0x6C,
    0x6C,
    0x00,
    0x78,
    0x18,
    0x18,
    0x18,
    0x18,
    0x7E,
    0x00,
    0x00,


    0x10,
    0x38,
    0x6C,
    0x00,
    0x78,
    0x18,
    0x18,
    0x18,
    0x18,
    0x7E,
    0x00,
    0x00,


    0x60,
    0x30,
    0x18,
    0x00,
    0x78,
    0x18,
    0x18,
    0x18,
    0x18,
    0x7E,
    0x00,
    0x00,


    0x00,
    0xCC,
    0x00,
    0x30,
    0x78,
    0xCC,
    0xCC,
    0xFC,
    0xCC,
    0xCC,
    0x00,
    0x00,


    0x78,
    0xCC,
    0xCC,
    0x78,
    0x78,
    0xCC,
    0xCC,
    0xFC,
    0xCC,
    0xCC,
    0x00,
    0x00,


    0x0C,
    0x18,
    0x30,
    0xFC,
    0xC4,
    0xC0,
    0xF8,
    0xC0,
    0xC4,
    0xFC,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xFE,
    0x1B,
    0x7F,
    0xD8,
    0xD8,
    0xEF,
    0x00,
    0x00,


    0x00,
    0x3E,
    0x78,
    0xD8,
    0xD8,
    0xFE,
    0xD8,
    0xD8,
    0xD8,
    0xDE,
    0x00,
    0x00,


    0x30,
    0x78,
    0xCC,
    0x00,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0xCC,
    0xCC,
    0x00,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0xC0,
    0x60,
    0x30,
    0x00,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x30,
    0x78,
    0xCC,
    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0xC0,
    0x60,
    0x30,
    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x00,
    0x66,
    0x66,
    0x00,
    0x66,
    0x66,
    0x66,
    0x66,
    0x3C,
    0x0C,
    0x18,
    0xF0,


    0xCC,
    0x00,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0xCC,
    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x30,
    0x30,
    0x78,
    0xCC,
    0xC0,
    0xC0,
    0xCC,
    0x78,
    0x30,
    0x30,
    0x00,


    0x3C,
    0x66,
    0x60,
    0x60,
    0x60,
    0xFC,
    0x60,
    0x60,
    0xC0,
    0xFE,
    0x00,
    0x00,


    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0xFC,
    0x30,
    0xFC,
    0x30,
    0x30,
    0x00,
    0x00,


    0xF0,
    0x88,
    0x88,
    0x88,
    0xF0,
    0x88,
    0x9E,
    0x8C,
    0x8D,
    0x86,
    0x00,
    0x00,


    0x0E,
    0x1B,
    0x18,
    0x18,
    0x7E,
    0x18,
    0x18,
    0x18,
    0xD8,
    0x70,
    0x00,
    0x00,


    0x0C,
    0x18,
    0x30,
    0x00,
    0x78,
    0x0C,
    0x7C,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x0C,
    0x18,
    0x30,
    0x00,
    0x78,
    0x18,
    0x18,
    0x18,
    0x18,
    0x7E,
    0x00,
    0x00,


    0x0C,
    0x18,
    0x30,
    0x00,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x0C,
    0x18,
    0x30,
    0x00,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x76,
    0x00,
    0x00,


    0x00,
    0x76,
    0xDC,
    0x00,
    0xF8,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x00,
    0x00,


    0x76,
    0xDC,
    0x00,
    0xC6,
    0xE6,
    0xF6,
    0xDE,
    0xCE,
    0xC6,
    0xC6,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0xCC,
    0x7E,
    0x00,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x30,
    0x30,
    0x00,
    0x30,
    0x60,
    0xC0,
    0xC0,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFC,
    0xC0,
    0xC0,
    0xC0,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFC,
    0x0C,
    0x0C,
    0x0C,
    0x00,
    0x00,
    0x00,


    0x00,
    0x42,
    0xC6,
    0xCC,
    0xD8,
    0x30,
    0x6E,
    0xC3,
    0x86,
    0x0C,
    0x1F,
    0x00,


    0x00,
    0x63,
    0xE6,
    0x6C,
    0x78,
    0x37,
    0x6F,
    0xDB,
    0xB3,
    0x3F,
    0x03,
    0x00,


    0x00,
    0x30,
    0x30,
    0x00,
    0x30,
    0x30,
    0x78,
    0x78,
    0x78,
    0x30,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x33,
    0x66,
    0xCC,
    0xCC,
    0x66,
    0x33,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xCC,
    0x66,
    0x33,
    0x33,
    0x66,
    0xCC,
    0x00,
    0x00,


    0x24,
    0x92,
    0x49,
    0x24,
    0x92,
    0x49,
    0x24,
    0x92,
    0x49,
    0x24,
    0x92,
    0x49,


    0x55,
    0xAA,
    0x55,
    0xAA,
    0x55,
    0xAA,
    0x55,
    0xAA,
    0x55,
    0xAA,
    0x55,
    0xAA,


    0x6D,
    0xDB,
    0xB6,
    0x6D,
    0xDB,
    0xB6,
    0x6D,
    0xDB,
    0xB6,
    0x6D,
    0xDB,
    0xB6,


    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,


    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0xF8,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,


    0x18,
    0x18,
    0x18,
    0x18,
    0xF8,
    0x18,
    0x18,
    0xF8,
    0x18,
    0x18,
    0x18,
    0x18,


    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0xE6,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFE,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,


    0x00,
    0x00,
    0x00,
    0x00,
    0xF8,
    0x18,
    0x18,
    0xF8,
    0x18,
    0x18,
    0x18,
    0x18,


    0x66,
    0x66,
    0x66,
    0x66,
    0xE6,
    0x06,
    0x06,
    0xE6,
    0x66,
    0x66,
    0x66,
    0x66,


    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,


    0x00,
    0x00,
    0x00,
    0x00,
    0xFE,
    0x06,
    0x06,
    0xE6,
    0x66,
    0x66,
    0x66,
    0x66,


    0x66,
    0x66,
    0x66,
    0x66,
    0xE6,
    0x06,
    0x06,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,


    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0xFE,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x18,
    0x18,
    0x18,
    0x18,
    0xF8,
    0x18,
    0x18,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xF8,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,


    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x1F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,


    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x1F,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0xFF,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,


    0x18,
    0x18,
    0x18,
    0x18,
    0x1F,
    0x18,
    0x18,
    0x1F,
    0x18,
    0x18,
    0x18,
    0x18,


    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x67,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,


    0x66,
    0x66,
    0x66,
    0x66,
    0x67,
    0x60,
    0x60,
    0x7F,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x7F,
    0x60,
    0x60,
    0x67,
    0x66,
    0x66,
    0x66,
    0x66,


    0x66,
    0x66,
    0x66,
    0x66,
    0xE7,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0xE7,
    0x66,
    0x66,
    0x66,
    0x66,


    0x66,
    0x66,
    0x66,
    0x66,
    0x67,
    0x60,
    0x60,
    0x67,
    0x66,
    0x66,
    0x66,
    0x66,


    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,


    0x66,
    0x66,
    0x66,
    0x66,
    0xE7,
    0x00,
    0x00,
    0xE7,
    0x66,
    0x66,
    0x66,
    0x66,


    0x18,
    0x18,
    0x18,
    0x18,
    0xFF,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,


    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x00,
    0x00,
    0xFF,
    0x18,
    0x18,
    0x18,
    0x18,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,


    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x7F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x18,
    0x18,
    0x18,
    0x18,
    0x1F,
    0x18,
    0x18,
    0x1F,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x1F,
    0x18,
    0x18,
    0x1F,
    0x18,
    0x18,
    0x18,
    0x18,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x7F,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,


    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0xE7,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,


    0x18,
    0x18,
    0x18,
    0x18,
    0xFF,
    0x00,
    0x00,
    0xFF,
    0x18,
    0x18,
    0x18,
    0x18,


    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0xF8,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1F,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,


    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,


    0xF0,
    0xF0,
    0xF0,
    0xF0,
    0xF0,
    0xF0,
    0xF0,
    0xF0,
    0xF0,
    0xF0,
    0xF0,
    0xF0,


    0x0F,
    0x0F,
    0x0F,
    0x0F,
    0x0F,
    0x0F,
    0x0F,
    0x0F,
    0x0F,
    0x0F,
    0x0F,
    0x0F,


    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0xFF,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x76,
    0xDE,
    0xCC,
    0xCC,
    0xDE,
    0x76,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0xCC,
    0xD8,
    0xCC,
    0xCC,
    0xCC,
    0xF8,
    0xC0,
    0x60,
    0x00,


    0x00,
    0xFC,
    0xCC,
    0xCC,
    0xC0,
    0xC0,
    0xC0,
    0xC0,
    0xC0,
    0xC0,
    0x00,
    0x00,


    0x00,
    0xFE,
    0x6C,
    0x6C,
    0x6C,
    0x6C,
    0x6C,
    0x6C,
    0x6C,
    0x66,
    0x00,
    0x00,


    0x00,
    0xFC,
    0xC4,
    0x64,
    0x60,
    0x30,
    0x60,
    0x64,
    0xC4,
    0xFC,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x7E,
    0xC8,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x66,
    0x66,
    0x66,
    0x66,
    0x66,
    0x7B,
    0x60,
    0xC0,


    0x00,
    0x00,
    0x00,
    0x76,
    0xDC,
    0x18,
    0x18,
    0x18,
    0x18,
    0x0E,
    0x00,
    0x00,


    0x00,
    0xFC,
    0x30,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x30,
    0xFC,
    0x00,
    0x00,


    0x00,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xFC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x7C,
    0xC6,
    0xC6,
    0xC6,
    0xC6,
    0x6C,
    0x6C,
    0x6C,
    0xEE,
    0x00,
    0x00,


    0x00,
    0x3C,
    0x60,
    0x30,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x78,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x76,
    0xDB,
    0xDB,
    0xDB,
    0x6E,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x06,
    0x7C,
    0xDE,
    0xD6,
    0xF6,
    0x7C,
    0xC0,
    0x00,
    0x00,
    0x00,


    0x00,
    0x3C,
    0x60,
    0xC0,
    0xC0,
    0xFC,
    0xC0,
    0xC0,
    0x60,
    0x3C,
    0x00,
    0x00,


    0x00,
    0x00,
    0x78,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0xCC,
    0x00,
    0x00,


    0x00,
    0x00,
    0xFC,
    0x00,
    0x00,
    0xFC,
    0x00,
    0x00,
    0xFC,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x30,
    0x30,
    0xFC,
    0x30,
    0x30,
    0x00,
    0xFC,
    0x00,
    0x00,
    0x00,


    0x00,
    0x60,
    0x30,
    0x18,
    0x18,
    0x30,
    0x60,
    0x00,
    0xFC,
    0x00,
    0x00,
    0x00,


    0x00,
    0x18,
    0x30,
    0x60,
    0x60,
    0x30,
    0x18,
    0x00,
    0xFC,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x0E,
    0x1B,
    0x1B,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,


    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18,
    0xD8,
    0xD8,
    0x70,
    0x00,
    0x00,


    0x00,
    0x00,
    0x30,
    0x30,
    0x00,
    0xFC,
    0x00,
    0x30,
    0x30,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x73,
    0xDB,
    0xCE,
    0x00,
    0x73,
    0xDB,
    0xCE,
    0x00,
    0x00,
    0x00,


    0x00,
    0x3C,
    0x66,
    0x66,
    0x66,
    0x3C,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x1C,
    0x1C,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x18,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x07,
    0x04,
    0x04,
    0x04,
    0x44,
    0x64,
    0x34,
    0x1C,
    0x0C,
    0x00,
    0x00,


    0x00,
    0xD8,
    0x6C,
    0x6C,
    0x6C,
    0x6C,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x78,
    0x0C,
    0x18,
    0x30,
    0x7C,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,


    0x00,
    0x00,
    0x3C,
    0x3C,
    0x3C,
    0x3C,
    0x3C,
    0x3C,
    0x3C,
    0x3C,
    0x00,
    0x00,


    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
};
