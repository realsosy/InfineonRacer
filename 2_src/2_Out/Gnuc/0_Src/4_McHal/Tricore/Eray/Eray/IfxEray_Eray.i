# 1 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.c"
# 1 "D:\\GitRepo\\InfineonRacer\\2_src\\InfineonRacer_TC23xA//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.c"
# 29 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.c"
# 1 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h" 1
# 501 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
# 1 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h" 1
# 49 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxEray_cfg.h" 1
# 60 "./0_Src/4_McHal/Tricore/_Impl/IfxEray_cfg.h"
typedef enum
{
    IfxEray_NodeId_a = 0,
    IfxEray_NodeId_b = 1,
    IfxEray_NodeId_none = -1
} IfxEray_NodeId;
# 50 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_regdef.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_regdef.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/Ifx_TypesReg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_regdef.h" 2





typedef struct _Ifx_ERAY_ACCEN0_Bits
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
} Ifx_ERAY_ACCEN0_Bits;


typedef struct _Ifx_ERAY_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_ERAY_ACCEN1_Bits;


typedef struct _Ifx_ERAY_ACS_Bits
{
    unsigned int VFRA : 1;
    unsigned int SEDA : 1;
    unsigned int CEDA : 1;
    unsigned int CIA : 1;
    unsigned int SBVA : 1;
    unsigned int reserved_5 : 3;
    unsigned int VFRB : 1;
    unsigned int SEDB : 1;
    unsigned int CEDB : 1;
    unsigned int CIB : 1;
    unsigned int SBVB : 1;
    unsigned int reserved_13 : 19;
} Ifx_ERAY_ACS_Bits;


typedef struct _Ifx_ERAY_CCEV_Bits
{
    unsigned int CCFC : 4;
    unsigned int reserved_4 : 2;
    unsigned int ERRM : 2;
    unsigned int PTAC : 5;
    unsigned int reserved_13 : 19;
} Ifx_ERAY_CCEV_Bits;


typedef struct _Ifx_ERAY_CCSV_Bits
{
    unsigned int POCS : 6;
    unsigned int FSI : 1;
    unsigned int HRQ : 1;
    unsigned int SLM : 2;
    unsigned int reserved_10 : 2;
    unsigned int CSNI : 1;
    unsigned int CSAI : 1;
    unsigned int CSI : 1;
    unsigned int reserved_15 : 1;
    unsigned int WSV : 3;
    unsigned int RCA : 5;
    unsigned int PSL : 6;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_CCSV_Bits;


typedef struct _Ifx_ERAY_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 4;
    unsigned int RMC : 3;
    unsigned int reserved_11 : 21;
} Ifx_ERAY_CLC_Bits;


typedef struct _Ifx_ERAY_CREL_Bits
{
    unsigned int DAY : 8;
    unsigned int MON : 8;
    unsigned int YEAR : 4;
    unsigned int SUBSTEP : 4;
    unsigned int STEP : 4;
    unsigned int REL : 4;
} Ifx_ERAY_CREL_Bits;


typedef struct _Ifx_ERAY_CUST1_Bits
{
    unsigned int INT0 : 1;
    unsigned int OEN : 1;
    unsigned int IEN : 1;
    unsigned int IBFS : 1;
    unsigned int IBF1PAG : 1;
    unsigned int reserved_5 : 2;
    unsigned int IBF2PAG : 1;
    unsigned int reserved_8 : 2;
    unsigned int RISA : 2;
    unsigned int RISB : 2;
    unsigned int STPWTS : 2;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_CUST1_Bits;


typedef struct _Ifx_ERAY_CUST3_Bits
{
    unsigned int TO : 32;
} Ifx_ERAY_CUST3_Bits;


typedef struct _Ifx_ERAY_EIER_Bits
{
    unsigned int PEMCE : 1;
    unsigned int CNAE : 1;
    unsigned int SFBME : 1;
    unsigned int SFOE : 1;
    unsigned int CCFE : 1;
    unsigned int CCLE : 1;
    unsigned int EERRE : 1;
    unsigned int RFOE : 1;
    unsigned int EFAE : 1;
    unsigned int IIBAE : 1;
    unsigned int IOBAE : 1;
    unsigned int MHFE : 1;
    unsigned int reserved_12 : 4;
    unsigned int EDAE : 1;
    unsigned int LTVAE : 1;
    unsigned int TABAE : 1;
    unsigned int reserved_19 : 5;
    unsigned int EDBE : 1;
    unsigned int LTVBE : 1;
    unsigned int TABBE : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_EIER_Bits;


typedef struct _Ifx_ERAY_EIES_Bits
{
    unsigned int PEMCE : 1;
    unsigned int CNAE : 1;
    unsigned int SFBME : 1;
    unsigned int SFOE : 1;
    unsigned int CCFE : 1;
    unsigned int CCLE : 1;
    unsigned int EERRE : 1;
    unsigned int RFOE : 1;
    unsigned int EFAE : 1;
    unsigned int IIBAE : 1;
    unsigned int IOBAE : 1;
    unsigned int MHFE : 1;
    unsigned int reserved_12 : 4;
    unsigned int EDAE : 1;
    unsigned int LTVAE : 1;
    unsigned int TABAE : 1;
    unsigned int reserved_19 : 5;
    unsigned int EDBE : 1;
    unsigned int LTVBE : 1;
    unsigned int TABBE : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_EIES_Bits;


typedef struct _Ifx_ERAY_EILS_Bits
{
    unsigned int PEMCL : 1;
    unsigned int CNAL : 1;
    unsigned int SFBML : 1;
    unsigned int SFOL : 1;
    unsigned int CCFL : 1;
    unsigned int CCLL : 1;
    unsigned int EERRL : 1;
    unsigned int RFOL : 1;
    unsigned int EFAL : 1;
    unsigned int IIBAL : 1;
    unsigned int IOBAL : 1;
    unsigned int MHFL : 1;
    unsigned int reserved_12 : 4;
    unsigned int EDAL : 1;
    unsigned int LTVAL : 1;
    unsigned int TABAL : 1;
    unsigned int reserved_19 : 5;
    unsigned int EDBL : 1;
    unsigned int LTVBL : 1;
    unsigned int TABBL : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_EILS_Bits;


typedef struct _Ifx_ERAY_EIR_Bits
{
    unsigned int PEMC : 1;
    unsigned int CNA : 1;
    unsigned int SFBM : 1;
    unsigned int SFO : 1;
    unsigned int CCF : 1;
    unsigned int CCL : 1;
    unsigned int EERR : 1;
    unsigned int RFO : 1;
    unsigned int EFA : 1;
    unsigned int IIBA : 1;
    unsigned int IOBA : 1;
    unsigned int MHF : 1;
    unsigned int reserved_12 : 4;
    unsigned int EDA : 1;
    unsigned int LTVA : 1;
    unsigned int TABA : 1;
    unsigned int reserved_19 : 5;
    unsigned int EDB : 1;
    unsigned int LTVB : 1;
    unsigned int TABB : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_EIR_Bits;


typedef struct _Ifx_ERAY_ENDN_Bits
{
    unsigned int ETV : 32;
} Ifx_ERAY_ENDN_Bits;


typedef struct _Ifx_ERAY_ESID_Bits
{
    unsigned int EID : 10;
    unsigned int reserved_10 : 4;
    unsigned int RXEA : 1;
    unsigned int RXEB : 1;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_ESID_Bits;


typedef struct _Ifx_ERAY_FCL_Bits
{
    unsigned int CL : 8;
    unsigned int reserved_8 : 24;
} Ifx_ERAY_FCL_Bits;


typedef struct _Ifx_ERAY_FRF_Bits
{
    unsigned int CH : 2;
    unsigned int FID : 11;
    unsigned int reserved_13 : 3;
    unsigned int CYF : 7;
    unsigned int RSS : 1;
    unsigned int RNF : 1;
    unsigned int reserved_25 : 7;
} Ifx_ERAY_FRF_Bits;


typedef struct _Ifx_ERAY_FRFM_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int MFID : 11;
    unsigned int reserved_13 : 19;
} Ifx_ERAY_FRFM_Bits;


typedef struct _Ifx_ERAY_FSR_Bits
{
    unsigned int RFNE : 1;
    unsigned int RFCL : 1;
    unsigned int RFO : 1;
    unsigned int reserved_3 : 5;
    unsigned int RFFL : 8;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_FSR_Bits;


typedef struct _Ifx_ERAY_GTUC01_Bits
{
    unsigned int UT : 20;
    unsigned int reserved_20 : 12;
} Ifx_ERAY_GTUC01_Bits;


typedef struct _Ifx_ERAY_GTUC02_Bits
{
    unsigned int MPC : 14;
    unsigned int reserved_14 : 2;
    unsigned int SNM : 4;
    unsigned int reserved_20 : 12;
} Ifx_ERAY_GTUC02_Bits;


typedef struct _Ifx_ERAY_GTUC03_Bits
{
    unsigned int UIOA : 8;
    unsigned int UIOB : 8;
    unsigned int MIOA : 7;
    unsigned int reserved_23 : 1;
    unsigned int MIOB : 7;
    unsigned int reserved_31 : 1;
} Ifx_ERAY_GTUC03_Bits;


typedef struct _Ifx_ERAY_GTUC04_Bits
{
    unsigned int NIT : 14;
    unsigned int reserved_14 : 2;
    unsigned int OCS : 14;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_GTUC04_Bits;


typedef struct _Ifx_ERAY_GTUC05_Bits
{
    unsigned int DCA : 8;
    unsigned int DCB : 8;
    unsigned int CDD : 5;
    unsigned int reserved_21 : 3;
    unsigned int DEC : 8;
} Ifx_ERAY_GTUC05_Bits;


typedef struct _Ifx_ERAY_GTUC06_Bits
{
    unsigned int ASR : 11;
    unsigned int reserved_11 : 5;
    unsigned int MOD : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_GTUC06_Bits;


typedef struct _Ifx_ERAY_GTUC07_Bits
{
    unsigned int SSL : 10;
    unsigned int reserved_10 : 6;
    unsigned int NSS : 10;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_GTUC07_Bits;


typedef struct _Ifx_ERAY_GTUC08_Bits
{
    unsigned int MSL : 6;
    unsigned int reserved_6 : 10;
    unsigned int NMS : 13;
    unsigned int reserved_29 : 3;
} Ifx_ERAY_GTUC08_Bits;


typedef struct _Ifx_ERAY_GTUC09_Bits
{
    unsigned int APO : 6;
    unsigned int reserved_6 : 2;
    unsigned int MAPO : 5;
    unsigned int reserved_13 : 3;
    unsigned int DSI : 2;
    unsigned int reserved_18 : 14;
} Ifx_ERAY_GTUC09_Bits;


typedef struct _Ifx_ERAY_GTUC10_Bits
{
    unsigned int MOC : 14;
    unsigned int reserved_14 : 2;
    unsigned int MRC : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_GTUC10_Bits;


typedef struct _Ifx_ERAY_GTUC11_Bits
{
    unsigned int EOCC : 2;
    unsigned int reserved_2 : 6;
    unsigned int ERCC : 2;
    unsigned int reserved_10 : 6;
    unsigned int EOC : 3;
    unsigned int reserved_19 : 5;
    unsigned int ERC : 3;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_GTUC11_Bits;


typedef struct _Ifx_ERAY_IBCM_Bits
{
    unsigned int LHSH : 1;
    unsigned int LDSH : 1;
    unsigned int STXRH : 1;
    unsigned int reserved_3 : 13;
    unsigned int LHSS : 1;
    unsigned int LDSS : 1;
    unsigned int STXRS : 1;
    unsigned int reserved_19 : 13;
} Ifx_ERAY_IBCM_Bits;


typedef struct _Ifx_ERAY_IBCR_Bits
{
    unsigned int IBRH : 7;
    unsigned int reserved_7 : 8;
    unsigned int IBSYH : 1;
    unsigned int IBRS : 7;
    unsigned int reserved_23 : 8;
    unsigned int IBSYS : 1;
} Ifx_ERAY_IBCR_Bits;


typedef struct _Ifx_ERAY_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_ERAY_ID_Bits;


typedef struct _Ifx_ERAY_ILE_Bits
{
    unsigned int EINT0 : 1;
    unsigned int EINT1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_ERAY_ILE_Bits;


typedef struct _Ifx_ERAY_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_ERAY_KRST0_Bits;


typedef struct _Ifx_ERAY_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_ERAY_KRST1_Bits;


typedef struct _Ifx_ERAY_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_ERAY_KRSTCLR_Bits;


typedef struct _Ifx_ERAY_LCK_Bits
{
    unsigned int CLK : 8;
    unsigned int TMK : 8;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_LCK_Bits;


typedef struct _Ifx_ERAY_LDTS_Bits
{
    unsigned int LDTA : 11;
    unsigned int reserved_11 : 5;
    unsigned int LDTB : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_LDTS_Bits;


typedef struct _Ifx_ERAY_MBS_Bits
{
    unsigned int VFRA : 1;
    unsigned int VFRB : 1;
    unsigned int SEOA : 1;
    unsigned int SEOB : 1;
    unsigned int CEOA : 1;
    unsigned int CEOB : 1;
    unsigned int SVOA : 1;
    unsigned int SVOB : 1;
    unsigned int TCIA : 1;
    unsigned int TCIB : 1;
    unsigned int ESA : 1;
    unsigned int ESB : 1;
    unsigned int MLST : 1;
    unsigned int reserved_13 : 1;
    unsigned int FTA : 1;
    unsigned int FTB : 1;
    unsigned int CCS : 6;
    unsigned int reserved_22 : 2;
    unsigned int RCIS : 1;
    unsigned int SFIS : 1;
    unsigned int SYNS : 1;
    unsigned int NFIS : 1;
    unsigned int PPIS : 1;
    unsigned int RESS : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_MBS_Bits;


typedef struct _Ifx_ERAY_MBSC1_Bits
{
    unsigned int MBC0 : 1;
    unsigned int MBC1 : 1;
    unsigned int MBC2 : 1;
    unsigned int MBC3 : 1;
    unsigned int MBC4 : 1;
    unsigned int MBC5 : 1;
    unsigned int MBC6 : 1;
    unsigned int MBC7 : 1;
    unsigned int MBC8 : 1;
    unsigned int MBC9 : 1;
    unsigned int MBC10 : 1;
    unsigned int MBC11 : 1;
    unsigned int MBC12 : 1;
    unsigned int MBC13 : 1;
    unsigned int MBC14 : 1;
    unsigned int MBC15 : 1;
    unsigned int MBC16 : 1;
    unsigned int MBC17 : 1;
    unsigned int MBC18 : 1;
    unsigned int MBC19 : 1;
    unsigned int MBC20 : 1;
    unsigned int MBC21 : 1;
    unsigned int MBC22 : 1;
    unsigned int MBC23 : 1;
    unsigned int MBC24 : 1;
    unsigned int MBC25 : 1;
    unsigned int MBC26 : 1;
    unsigned int MBC27 : 1;
    unsigned int MBC28 : 1;
    unsigned int MBC29 : 1;
    unsigned int MBC30 : 1;
    unsigned int MBC31 : 1;
} Ifx_ERAY_MBSC1_Bits;


typedef struct _Ifx_ERAY_MBSC2_Bits
{
    unsigned int MBC32 : 1;
    unsigned int MBC33 : 1;
    unsigned int MBC34 : 1;
    unsigned int MBC35 : 1;
    unsigned int MBC36 : 1;
    unsigned int MBC37 : 1;
    unsigned int MBC38 : 1;
    unsigned int MBC39 : 1;
    unsigned int MBC40 : 1;
    unsigned int MBC41 : 1;
    unsigned int MBC42 : 1;
    unsigned int MBC43 : 1;
    unsigned int MBC44 : 1;
    unsigned int MBC45 : 1;
    unsigned int MBC46 : 1;
    unsigned int MBC47 : 1;
    unsigned int MBC48 : 1;
    unsigned int MBC49 : 1;
    unsigned int MBC50 : 1;
    unsigned int MBC51 : 1;
    unsigned int MBC52 : 1;
    unsigned int MBC53 : 1;
    unsigned int MBC54 : 1;
    unsigned int MBC55 : 1;
    unsigned int MBC56 : 1;
    unsigned int MBC57 : 1;
    unsigned int MBC58 : 1;
    unsigned int MBC59 : 1;
    unsigned int MBC60 : 1;
    unsigned int MBC61 : 1;
    unsigned int MBC62 : 1;
    unsigned int MBC63 : 1;
} Ifx_ERAY_MBSC2_Bits;


typedef struct _Ifx_ERAY_MBSC3_Bits
{
    unsigned int MBC64 : 1;
    unsigned int MBC65 : 1;
    unsigned int MBC66 : 1;
    unsigned int MBC67 : 1;
    unsigned int MBC68 : 1;
    unsigned int MBC69 : 1;
    unsigned int MBC70 : 1;
    unsigned int MBC71 : 1;
    unsigned int MBC72 : 1;
    unsigned int MBC73 : 1;
    unsigned int MBC74 : 1;
    unsigned int MBC75 : 1;
    unsigned int MBC76 : 1;
    unsigned int MBC77 : 1;
    unsigned int MBC78 : 1;
    unsigned int MBC79 : 1;
    unsigned int MBC80 : 1;
    unsigned int MBC81 : 1;
    unsigned int MBC82 : 1;
    unsigned int MBC83 : 1;
    unsigned int MBC84 : 1;
    unsigned int MBC85 : 1;
    unsigned int MBC86 : 1;
    unsigned int MBC87 : 1;
    unsigned int MBC88 : 1;
    unsigned int MBC89 : 1;
    unsigned int MBC90 : 1;
    unsigned int MBC91 : 1;
    unsigned int MBC92 : 1;
    unsigned int MBC93 : 1;
    unsigned int MBC94 : 1;
    unsigned int MBC95 : 1;
} Ifx_ERAY_MBSC3_Bits;


typedef struct _Ifx_ERAY_MBSC4_Bits
{
    unsigned int MBC96 : 1;
    unsigned int MBC97 : 1;
    unsigned int MBC98 : 1;
    unsigned int MBC99 : 1;
    unsigned int MBC100 : 1;
    unsigned int MBC101 : 1;
    unsigned int MBC102 : 1;
    unsigned int MBC103 : 1;
    unsigned int MBC104 : 1;
    unsigned int MBC105 : 1;
    unsigned int MBC106 : 1;
    unsigned int MBC107 : 1;
    unsigned int MBC108 : 1;
    unsigned int MBC109 : 1;
    unsigned int MBC110 : 1;
    unsigned int MBC111 : 1;
    unsigned int MBC112 : 1;
    unsigned int MBC113 : 1;
    unsigned int MBC114 : 1;
    unsigned int MBC115 : 1;
    unsigned int MBC116 : 1;
    unsigned int MBC117 : 1;
    unsigned int MBC118 : 1;
    unsigned int MBC119 : 1;
    unsigned int MBC120 : 1;
    unsigned int MBC121 : 1;
    unsigned int MBC122 : 1;
    unsigned int MBC123 : 1;
    unsigned int MBC124 : 1;
    unsigned int MBC125 : 1;
    unsigned int MBC126 : 1;
    unsigned int MBC127 : 1;
} Ifx_ERAY_MBSC4_Bits;


typedef struct _Ifx_ERAY_MHDC_Bits
{
    unsigned int SFDL : 7;
    unsigned int reserved_7 : 9;
    unsigned int SLT : 13;
    unsigned int reserved_29 : 3;
} Ifx_ERAY_MHDC_Bits;


typedef struct _Ifx_ERAY_MHDF_Bits
{
    unsigned int SNUA : 1;
    unsigned int SNUB : 1;
    unsigned int FNFA : 1;
    unsigned int FNFB : 1;
    unsigned int TBFA : 1;
    unsigned int TBFB : 1;
    unsigned int TNSA : 1;
    unsigned int TNSB : 1;
    unsigned int WAHP : 1;
    unsigned int reserved_9 : 23;
} Ifx_ERAY_MHDF_Bits;


typedef struct _Ifx_ERAY_MHDS_Bits
{
    unsigned int EIBF : 1;
    unsigned int EOBF : 1;
    unsigned int EMR : 1;
    unsigned int ETBF1 : 1;
    unsigned int ETBF2 : 1;
    unsigned int FMBD : 1;
    unsigned int MFMB : 1;
    unsigned int CRAM : 1;
    unsigned int FMB : 7;
    unsigned int reserved_15 : 1;
    unsigned int MBT : 7;
    unsigned int reserved_23 : 1;
    unsigned int MBU : 7;
    unsigned int reserved_31 : 1;
} Ifx_ERAY_MHDS_Bits;


typedef struct _Ifx_ERAY_MRC_Bits
{
    unsigned int FDB : 8;
    unsigned int FFB : 8;
    unsigned int LCB : 8;
    unsigned int SEC : 2;
    unsigned int SPLM : 1;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_MRC_Bits;


typedef struct _Ifx_ERAY_MSIC1_Bits
{
    unsigned int MSIP0 : 1;
    unsigned int MSIP1 : 1;
    unsigned int MSIP2 : 1;
    unsigned int MSIP3 : 1;
    unsigned int MSIP4 : 1;
    unsigned int MSIP5 : 1;
    unsigned int MSIP6 : 1;
    unsigned int MSIP7 : 1;
    unsigned int MSIP8 : 1;
    unsigned int MSIP9 : 1;
    unsigned int MSIP10 : 1;
    unsigned int MSIP11 : 1;
    unsigned int MSIP12 : 1;
    unsigned int MSIP13 : 1;
    unsigned int MSIP14 : 1;
    unsigned int MSIP15 : 1;
    unsigned int MSIP16 : 1;
    unsigned int MSIP17 : 1;
    unsigned int MSIP18 : 1;
    unsigned int MSIP19 : 1;
    unsigned int MSIP20 : 1;
    unsigned int MSIP21 : 1;
    unsigned int MSIP22 : 1;
    unsigned int MSIP23 : 1;
    unsigned int MSIP24 : 1;
    unsigned int MSIP25 : 1;
    unsigned int MSIP26 : 1;
    unsigned int MSIP27 : 1;
    unsigned int MSIP28 : 1;
    unsigned int MSIP29 : 1;
    unsigned int MSIP30 : 1;
    unsigned int MSIP31 : 1;
} Ifx_ERAY_MSIC1_Bits;


typedef struct _Ifx_ERAY_MSIC2_Bits
{
    unsigned int MSIP32 : 1;
    unsigned int MSIP33 : 1;
    unsigned int MSIP34 : 1;
    unsigned int MSIP35 : 1;
    unsigned int MSIP36 : 1;
    unsigned int MSIP37 : 1;
    unsigned int MSIP38 : 1;
    unsigned int MSIP39 : 1;
    unsigned int MSIP40 : 1;
    unsigned int MSIP41 : 1;
    unsigned int MSIP42 : 1;
    unsigned int MSIP43 : 1;
    unsigned int MSIP44 : 1;
    unsigned int MSIP45 : 1;
    unsigned int MSIP46 : 1;
    unsigned int MSIP47 : 1;
    unsigned int MSIP48 : 1;
    unsigned int MSIP49 : 1;
    unsigned int MSIP50 : 1;
    unsigned int MSIP51 : 1;
    unsigned int MSIP52 : 1;
    unsigned int MSIP53 : 1;
    unsigned int MSIP54 : 1;
    unsigned int MSIP55 : 1;
    unsigned int MSIP56 : 1;
    unsigned int MSIP57 : 1;
    unsigned int MSIP58 : 1;
    unsigned int MSIP59 : 1;
    unsigned int MSIP60 : 1;
    unsigned int MSIP61 : 1;
    unsigned int MSIP62 : 1;
    unsigned int MSIP63 : 1;
} Ifx_ERAY_MSIC2_Bits;


typedef struct _Ifx_ERAY_MSIC3_Bits
{
    unsigned int MSIP64 : 1;
    unsigned int MSIP65 : 1;
    unsigned int MSIP66 : 1;
    unsigned int MSIP67 : 1;
    unsigned int MSIP68 : 1;
    unsigned int MSIP69 : 1;
    unsigned int MSIP70 : 1;
    unsigned int MSIP71 : 1;
    unsigned int MSIP72 : 1;
    unsigned int MSIP73 : 1;
    unsigned int MSIP74 : 1;
    unsigned int MSIP75 : 1;
    unsigned int MSIP76 : 1;
    unsigned int MSIP77 : 1;
    unsigned int MSIP78 : 1;
    unsigned int MSIP79 : 1;
    unsigned int MSIP80 : 1;
    unsigned int MSIP81 : 1;
    unsigned int MSIP82 : 1;
    unsigned int MSIP83 : 1;
    unsigned int MSIP84 : 1;
    unsigned int MSIP85 : 1;
    unsigned int MSIP86 : 1;
    unsigned int MSIP87 : 1;
    unsigned int MSIP88 : 1;
    unsigned int MSIP89 : 1;
    unsigned int MSIP90 : 1;
    unsigned int MSIP91 : 1;
    unsigned int MSIP92 : 1;
    unsigned int MSIP93 : 1;
    unsigned int MSIP94 : 1;
    unsigned int MSIP95 : 1;
} Ifx_ERAY_MSIC3_Bits;


typedef struct _Ifx_ERAY_MSIC4_Bits
{
    unsigned int MSIP96 : 1;
    unsigned int MSIP97 : 1;
    unsigned int MSIP98 : 1;
    unsigned int MSIP99 : 1;
    unsigned int MSIP100 : 1;
    unsigned int MSIP101 : 1;
    unsigned int MSIP102 : 1;
    unsigned int MSIP103 : 1;
    unsigned int MSIP104 : 1;
    unsigned int MSIP105 : 1;
    unsigned int MSIP106 : 1;
    unsigned int MSIP107 : 1;
    unsigned int MSIP108 : 1;
    unsigned int MSIP109 : 1;
    unsigned int MSIP110 : 1;
    unsigned int MSIP111 : 1;
    unsigned int MSIP112 : 1;
    unsigned int MSIP113 : 1;
    unsigned int MSIP114 : 1;
    unsigned int MSIP115 : 1;
    unsigned int MSIP116 : 1;
    unsigned int MSIP117 : 1;
    unsigned int MSIP118 : 1;
    unsigned int MSIP119 : 1;
    unsigned int MSIP120 : 1;
    unsigned int MSIP121 : 1;
    unsigned int MSIP122 : 1;
    unsigned int MSIP123 : 1;
    unsigned int MSIP124 : 1;
    unsigned int MSIP125 : 1;
    unsigned int MSIP126 : 1;
    unsigned int MSIP127 : 1;
} Ifx_ERAY_MSIC4_Bits;


typedef struct _Ifx_ERAY_MTCCV_Bits
{
    unsigned int MTV : 14;
    unsigned int reserved_14 : 2;
    unsigned int CCV : 6;
    unsigned int reserved_22 : 10;
} Ifx_ERAY_MTCCV_Bits;


typedef struct _Ifx_ERAY_NDAT1_Bits
{
    unsigned int ND0 : 1;
    unsigned int ND1 : 1;
    unsigned int ND2 : 1;
    unsigned int ND3 : 1;
    unsigned int ND4 : 1;
    unsigned int ND5 : 1;
    unsigned int ND6 : 1;
    unsigned int ND7 : 1;
    unsigned int ND8 : 1;
    unsigned int ND9 : 1;
    unsigned int ND10 : 1;
    unsigned int ND11 : 1;
    unsigned int ND12 : 1;
    unsigned int ND13 : 1;
    unsigned int ND14 : 1;
    unsigned int ND15 : 1;
    unsigned int ND16 : 1;
    unsigned int ND17 : 1;
    unsigned int ND18 : 1;
    unsigned int ND19 : 1;
    unsigned int ND20 : 1;
    unsigned int ND21 : 1;
    unsigned int ND22 : 1;
    unsigned int ND23 : 1;
    unsigned int ND24 : 1;
    unsigned int ND25 : 1;
    unsigned int ND26 : 1;
    unsigned int ND27 : 1;
    unsigned int ND28 : 1;
    unsigned int ND29 : 1;
    unsigned int ND30 : 1;
    unsigned int ND31 : 1;
} Ifx_ERAY_NDAT1_Bits;


typedef struct _Ifx_ERAY_NDAT2_Bits
{
    unsigned int ND32 : 1;
    unsigned int ND33 : 1;
    unsigned int ND34 : 1;
    unsigned int ND35 : 1;
    unsigned int ND36 : 1;
    unsigned int ND37 : 1;
    unsigned int ND38 : 1;
    unsigned int ND39 : 1;
    unsigned int ND40 : 1;
    unsigned int ND41 : 1;
    unsigned int ND42 : 1;
    unsigned int ND43 : 1;
    unsigned int ND44 : 1;
    unsigned int ND45 : 1;
    unsigned int ND46 : 1;
    unsigned int ND47 : 1;
    unsigned int ND48 : 1;
    unsigned int ND49 : 1;
    unsigned int ND50 : 1;
    unsigned int ND51 : 1;
    unsigned int ND52 : 1;
    unsigned int ND53 : 1;
    unsigned int ND54 : 1;
    unsigned int ND55 : 1;
    unsigned int ND56 : 1;
    unsigned int ND57 : 1;
    unsigned int ND58 : 1;
    unsigned int ND59 : 1;
    unsigned int ND60 : 1;
    unsigned int ND61 : 1;
    unsigned int ND62 : 1;
    unsigned int ND63 : 1;
} Ifx_ERAY_NDAT2_Bits;


typedef struct _Ifx_ERAY_NDAT3_Bits
{
    unsigned int ND64 : 1;
    unsigned int ND65 : 1;
    unsigned int ND66 : 1;
    unsigned int ND67 : 1;
    unsigned int ND68 : 1;
    unsigned int ND69 : 1;
    unsigned int ND70 : 1;
    unsigned int ND71 : 1;
    unsigned int ND72 : 1;
    unsigned int ND73 : 1;
    unsigned int ND74 : 1;
    unsigned int ND75 : 1;
    unsigned int ND76 : 1;
    unsigned int ND77 : 1;
    unsigned int ND78 : 1;
    unsigned int ND79 : 1;
    unsigned int ND80 : 1;
    unsigned int ND81 : 1;
    unsigned int ND82 : 1;
    unsigned int ND83 : 1;
    unsigned int ND84 : 1;
    unsigned int ND85 : 1;
    unsigned int ND86 : 1;
    unsigned int ND87 : 1;
    unsigned int ND88 : 1;
    unsigned int ND89 : 1;
    unsigned int ND90 : 1;
    unsigned int ND91 : 1;
    unsigned int ND92 : 1;
    unsigned int ND93 : 1;
    unsigned int ND94 : 1;
    unsigned int ND95 : 1;
} Ifx_ERAY_NDAT3_Bits;


typedef struct _Ifx_ERAY_NDAT4_Bits
{
    unsigned int ND96 : 1;
    unsigned int ND97 : 1;
    unsigned int ND98 : 1;
    unsigned int ND99 : 1;
    unsigned int ND100 : 1;
    unsigned int ND101 : 1;
    unsigned int ND102 : 1;
    unsigned int ND103 : 1;
    unsigned int ND104 : 1;
    unsigned int ND105 : 1;
    unsigned int ND106 : 1;
    unsigned int ND107 : 1;
    unsigned int ND108 : 1;
    unsigned int ND109 : 1;
    unsigned int ND110 : 1;
    unsigned int ND111 : 1;
    unsigned int ND112 : 1;
    unsigned int ND113 : 1;
    unsigned int ND114 : 1;
    unsigned int ND115 : 1;
    unsigned int ND116 : 1;
    unsigned int ND117 : 1;
    unsigned int ND118 : 1;
    unsigned int ND119 : 1;
    unsigned int ND120 : 1;
    unsigned int ND121 : 1;
    unsigned int ND122 : 1;
    unsigned int ND123 : 1;
    unsigned int ND124 : 1;
    unsigned int ND125 : 1;
    unsigned int ND126 : 1;
    unsigned int ND127 : 1;
} Ifx_ERAY_NDAT4_Bits;


typedef struct _Ifx_ERAY_NDIC1_Bits
{
    unsigned int NDIP0 : 1;
    unsigned int NDIP1 : 1;
    unsigned int NDIP2 : 1;
    unsigned int NDIP3 : 1;
    unsigned int NDIP4 : 1;
    unsigned int NDIP5 : 1;
    unsigned int NDIP6 : 1;
    unsigned int NDIP7 : 1;
    unsigned int NDIP8 : 1;
    unsigned int NDIP9 : 1;
    unsigned int NDIP10 : 1;
    unsigned int NDIP11 : 1;
    unsigned int NDIP12 : 1;
    unsigned int NDIP13 : 1;
    unsigned int NDIP14 : 1;
    unsigned int NDIP15 : 1;
    unsigned int NDIP16 : 1;
    unsigned int NDIP17 : 1;
    unsigned int NDIP18 : 1;
    unsigned int NDIP19 : 1;
    unsigned int NDIP20 : 1;
    unsigned int NDIP21 : 1;
    unsigned int NDIP22 : 1;
    unsigned int NDIP23 : 1;
    unsigned int NDIP24 : 1;
    unsigned int NDIP25 : 1;
    unsigned int NDIP26 : 1;
    unsigned int NDIP27 : 1;
    unsigned int NDIP28 : 1;
    unsigned int NDIP29 : 1;
    unsigned int NDIP30 : 1;
    unsigned int NDIP31 : 1;
} Ifx_ERAY_NDIC1_Bits;


typedef struct _Ifx_ERAY_NDIC2_Bits
{
    unsigned int NDIP32 : 1;
    unsigned int NDIP33 : 1;
    unsigned int NDIP34 : 1;
    unsigned int NDIP35 : 1;
    unsigned int NDIP36 : 1;
    unsigned int NDIP37 : 1;
    unsigned int NDIP38 : 1;
    unsigned int NDIP39 : 1;
    unsigned int NDIP40 : 1;
    unsigned int NDIP41 : 1;
    unsigned int NDIP42 : 1;
    unsigned int NDIP43 : 1;
    unsigned int NDIP44 : 1;
    unsigned int NDIP45 : 1;
    unsigned int NDIP46 : 1;
    unsigned int NDIP47 : 1;
    unsigned int NDIP48 : 1;
    unsigned int NDIP49 : 1;
    unsigned int NDIP50 : 1;
    unsigned int NDIP51 : 1;
    unsigned int NDIP52 : 1;
    unsigned int NDIP53 : 1;
    unsigned int NDIP54 : 1;
    unsigned int NDIP55 : 1;
    unsigned int NDIP56 : 1;
    unsigned int NDIP57 : 1;
    unsigned int NDIP58 : 1;
    unsigned int NDIP59 : 1;
    unsigned int NDIP60 : 1;
    unsigned int NDIP61 : 1;
    unsigned int NDIP62 : 1;
    unsigned int NDIP63 : 1;
} Ifx_ERAY_NDIC2_Bits;


typedef struct _Ifx_ERAY_NDIC3_Bits
{
    unsigned int NDIP64 : 1;
    unsigned int NDIP65 : 1;
    unsigned int NDIP66 : 1;
    unsigned int NDIP67 : 1;
    unsigned int NDIP68 : 1;
    unsigned int NDIP69 : 1;
    unsigned int NDIP70 : 1;
    unsigned int NDIP71 : 1;
    unsigned int NDIP72 : 1;
    unsigned int NDIP73 : 1;
    unsigned int NDIP74 : 1;
    unsigned int NDIP75 : 1;
    unsigned int NDIP76 : 1;
    unsigned int NDIP77 : 1;
    unsigned int NDIP78 : 1;
    unsigned int NDIP79 : 1;
    unsigned int NDIP80 : 1;
    unsigned int NDIP81 : 1;
    unsigned int NDIP82 : 1;
    unsigned int NDIP83 : 1;
    unsigned int NDIP84 : 1;
    unsigned int NDIP85 : 1;
    unsigned int NDIP86 : 1;
    unsigned int NDIP87 : 1;
    unsigned int NDIP88 : 1;
    unsigned int NDIP89 : 1;
    unsigned int NDIP90 : 1;
    unsigned int NDIP91 : 1;
    unsigned int NDIP92 : 1;
    unsigned int NDIP93 : 1;
    unsigned int NDIP94 : 1;
    unsigned int NDIP95 : 1;
} Ifx_ERAY_NDIC3_Bits;


typedef struct _Ifx_ERAY_NDIC4_Bits
{
    unsigned int NDIP96 : 1;
    unsigned int NDIP97 : 1;
    unsigned int NDIP98 : 1;
    unsigned int NDIP99 : 1;
    unsigned int NDIP100 : 1;
    unsigned int NDIP101 : 1;
    unsigned int NDIP102 : 1;
    unsigned int NDIP103 : 1;
    unsigned int NDIP104 : 1;
    unsigned int NDIP105 : 1;
    unsigned int NDIP106 : 1;
    unsigned int NDIP107 : 1;
    unsigned int NDIP108 : 1;
    unsigned int NDIP109 : 1;
    unsigned int NDIP110 : 1;
    unsigned int NDIP111 : 1;
    unsigned int NDIP112 : 1;
    unsigned int NDIP113 : 1;
    unsigned int NDIP114 : 1;
    unsigned int NDIP115 : 1;
    unsigned int NDIP116 : 1;
    unsigned int NDIP117 : 1;
    unsigned int NDIP118 : 1;
    unsigned int NDIP119 : 1;
    unsigned int NDIP120 : 1;
    unsigned int NDIP121 : 1;
    unsigned int NDIP122 : 1;
    unsigned int NDIP123 : 1;
    unsigned int NDIP124 : 1;
    unsigned int NDIP125 : 1;
    unsigned int NDIP126 : 1;
    unsigned int NDIP127 : 1;
} Ifx_ERAY_NDIC4_Bits;


typedef struct _Ifx_ERAY_NEMC_Bits
{
    unsigned int NML : 4;
    unsigned int reserved_4 : 28;
} Ifx_ERAY_NEMC_Bits;


typedef struct _Ifx_ERAY_NMV_Bits
{
    unsigned int NM : 32;
} Ifx_ERAY_NMV_Bits;


typedef struct _Ifx_ERAY_OBCM_Bits
{
    unsigned int RHSS : 1;
    unsigned int RDSS : 1;
    unsigned int reserved_2 : 14;
    unsigned int RHSH : 1;
    unsigned int RDSH : 1;
    unsigned int reserved_18 : 14;
} Ifx_ERAY_OBCM_Bits;


typedef struct _Ifx_ERAY_OBCR_Bits
{
    unsigned int OBRS : 7;
    unsigned int reserved_7 : 1;
    unsigned int VIEW : 1;
    unsigned int REQ : 1;
    unsigned int reserved_10 : 5;
    unsigned int OBSYS : 1;
    unsigned int OBRH : 7;
    unsigned int reserved_23 : 9;
} Ifx_ERAY_OBCR_Bits;


typedef struct _Ifx_ERAY_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_OCS_Bits;


typedef struct _Ifx_ERAY_OCV_Bits
{
    unsigned int OCV : 19;
    unsigned int reserved_19 : 13;
} Ifx_ERAY_OCV_Bits;


typedef struct _Ifx_ERAY_OSID_Bits
{
    unsigned int OID : 10;
    unsigned int reserved_10 : 4;
    unsigned int RXOA : 1;
    unsigned int RXOB : 1;
    unsigned int reserved_16 : 16;
} Ifx_ERAY_OSID_Bits;


typedef struct _Ifx_ERAY_OTSS_Bits
{
    unsigned int OTGB0 : 2;
    unsigned int reserved_2 : 6;
    unsigned int OTGB1 : 2;
    unsigned int reserved_10 : 6;
    unsigned int OTGB2 : 1;
    unsigned int reserved_17 : 15;
} Ifx_ERAY_OTSS_Bits;


typedef struct _Ifx_ERAY_PRTC1_Bits
{
    unsigned int TSST : 4;
    unsigned int CASM : 7;
    unsigned int reserved_11 : 1;
    unsigned int SPP : 2;
    unsigned int BRP : 2;
    unsigned int RXW : 9;
    unsigned int reserved_25 : 1;
    unsigned int RWP : 6;
} Ifx_ERAY_PRTC1_Bits;


typedef struct _Ifx_ERAY_PRTC2_Bits
{
    unsigned int RXI : 6;
    unsigned int reserved_6 : 2;
    unsigned int RXL : 6;
    unsigned int reserved_14 : 2;
    unsigned int TXI : 8;
    unsigned int TXL : 6;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_PRTC2_Bits;


typedef struct _Ifx_ERAY_RCV_Bits
{
    unsigned int RCV : 12;
    unsigned int reserved_12 : 20;
} Ifx_ERAY_RCV_Bits;


typedef struct _Ifx_ERAY_RDDS_Bits
{
    unsigned int MDRB0 : 8;
    unsigned int MDRB1 : 8;
    unsigned int MDRB2 : 8;
    unsigned int MDRB3 : 8;
} Ifx_ERAY_RDDS_Bits;


typedef struct _Ifx_ERAY_RDHS1_Bits
{
    unsigned int FID : 11;
    unsigned int reserved_11 : 5;
    unsigned int CYC : 7;
    unsigned int reserved_23 : 1;
    unsigned int CHA : 1;
    unsigned int CHB : 1;
    unsigned int CFG : 1;
    unsigned int PPIT : 1;
    unsigned int TXM : 1;
    unsigned int MBI : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_RDHS1_Bits;


typedef struct _Ifx_ERAY_RDHS2_Bits
{
    unsigned int CRC : 11;
    unsigned int reserved_11 : 5;
    unsigned int PLC : 7;
    unsigned int reserved_23 : 1;
    unsigned int PLR : 7;
    unsigned int reserved_31 : 1;
} Ifx_ERAY_RDHS2_Bits;


typedef struct _Ifx_ERAY_RDHS3_Bits
{
    unsigned int DP : 11;
    unsigned int reserved_11 : 5;
    unsigned int RCC : 6;
    unsigned int reserved_22 : 2;
    unsigned int RCI : 1;
    unsigned int SFI : 1;
    unsigned int SYN : 1;
    unsigned int NFI : 1;
    unsigned int PPI : 1;
    unsigned int RES : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_RDHS3_Bits;


typedef struct _Ifx_ERAY_SCV_Bits
{
    unsigned int SCCA : 11;
    unsigned int reserved_11 : 5;
    unsigned int SCCB : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_SCV_Bits;


typedef struct _Ifx_ERAY_SFS_Bits
{
    unsigned int VSAE : 4;
    unsigned int VSAO : 4;
    unsigned int VSBE : 4;
    unsigned int VSBO : 4;
    unsigned int MOCS : 1;
    unsigned int OCLR : 1;
    unsigned int MRCS : 1;
    unsigned int RCLR : 1;
    unsigned int reserved_20 : 12;
} Ifx_ERAY_SFS_Bits;


typedef struct _Ifx_ERAY_SIER_Bits
{
    unsigned int WSTE : 1;
    unsigned int CASE : 1;
    unsigned int CYCSE : 1;
    unsigned int TXIE : 1;
    unsigned int RXIE : 1;
    unsigned int RFNEE : 1;
    unsigned int RFCLE : 1;
    unsigned int NMVCE : 1;
    unsigned int TI0E : 1;
    unsigned int TI1E : 1;
    unsigned int TIBCE : 1;
    unsigned int TOBCE : 1;
    unsigned int SWEE : 1;
    unsigned int SUCSE : 1;
    unsigned int MBSIE : 1;
    unsigned int SDSE : 1;
    unsigned int WUPAE : 1;
    unsigned int MTSAE : 1;
    unsigned int reserved_18 : 6;
    unsigned int WUPBE : 1;
    unsigned int MTSBE : 1;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_SIER_Bits;


typedef struct _Ifx_ERAY_SIES_Bits
{
    unsigned int WSTE : 1;
    unsigned int CASE : 1;
    unsigned int CYCSE : 1;
    unsigned int TXIE : 1;
    unsigned int RXIE : 1;
    unsigned int RFNEE : 1;
    unsigned int RFCLE : 1;
    unsigned int NMVCE : 1;
    unsigned int TI0E : 1;
    unsigned int TI1E : 1;
    unsigned int TIBCE : 1;
    unsigned int TOBCE : 1;
    unsigned int SWEE : 1;
    unsigned int SUCSE : 1;
    unsigned int MBSIE : 1;
    unsigned int SDSE : 1;
    unsigned int WUPAE : 1;
    unsigned int MTSAE : 1;
    unsigned int reserved_18 : 6;
    unsigned int WUPBE : 1;
    unsigned int MTSBE : 1;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_SIES_Bits;


typedef struct _Ifx_ERAY_SILS_Bits
{
    unsigned int WSTL : 1;
    unsigned int CASL : 1;
    unsigned int CYCSL : 1;
    unsigned int TXIL : 1;
    unsigned int RXIL : 1;
    unsigned int RFNEL : 1;
    unsigned int RFCLL : 1;
    unsigned int NMVCL : 1;
    unsigned int TI0L : 1;
    unsigned int TI1L : 1;
    unsigned int TIBCL : 1;
    unsigned int TOBCL : 1;
    unsigned int SWEL : 1;
    unsigned int SUCSL : 1;
    unsigned int MBSIL : 1;
    unsigned int SDSL : 1;
    unsigned int WUPAL : 1;
    unsigned int MTSAL : 1;
    unsigned int reserved_18 : 6;
    unsigned int WUPBL : 1;
    unsigned int MTSBL : 1;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_SILS_Bits;


typedef struct _Ifx_ERAY_SIR_Bits
{
    unsigned int WST : 1;
    unsigned int CAS : 1;
    unsigned int CYCS : 1;
    unsigned int TXI : 1;
    unsigned int RXI : 1;
    unsigned int RFNE : 1;
    unsigned int RFCL : 1;
    unsigned int NMVC : 1;
    unsigned int TI0 : 1;
    unsigned int TI1 : 1;
    unsigned int TIBC : 1;
    unsigned int TOBC : 1;
    unsigned int SWE : 1;
    unsigned int SUCS : 1;
    unsigned int MBSI : 1;
    unsigned int SDS : 1;
    unsigned int WUPA : 1;
    unsigned int MTSA : 1;
    unsigned int reserved_18 : 6;
    unsigned int WUPB : 1;
    unsigned int MTSB : 1;
    unsigned int reserved_26 : 6;
} Ifx_ERAY_SIR_Bits;


typedef struct _Ifx_ERAY_STPW1_Bits
{
    unsigned int ESWT : 1;
    unsigned int SWMS : 1;
    unsigned int EDGE : 1;
    unsigned int SSWT : 1;
    unsigned int EETP : 1;
    unsigned int EINT0 : 1;
    unsigned int EINT1 : 1;
    unsigned int reserved_7 : 1;
    unsigned int SCCV : 6;
    unsigned int reserved_14 : 2;
    unsigned int SMTV : 14;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_STPW1_Bits;


typedef struct _Ifx_ERAY_STPW2_Bits
{
    unsigned int SSCVA : 11;
    unsigned int reserved_11 : 5;
    unsigned int SSCVB : 11;
    unsigned int reserved_27 : 5;
} Ifx_ERAY_STPW2_Bits;


typedef struct _Ifx_ERAY_SUCC1_Bits
{
    unsigned int CMD : 4;
    unsigned int reserved_4 : 3;
    unsigned int PBSY : 1;
    unsigned int TXST : 1;
    unsigned int TXSY : 1;
    unsigned int reserved_10 : 1;
    unsigned int CSA : 5;
    unsigned int PTA : 5;
    unsigned int WUCS : 1;
    unsigned int TSM : 1;
    unsigned int HCSE : 1;
    unsigned int MTSA : 1;
    unsigned int MTSB : 1;
    unsigned int CCHA : 1;
    unsigned int CCHB : 1;
    unsigned int reserved_28 : 4;
} Ifx_ERAY_SUCC1_Bits;


typedef struct _Ifx_ERAY_SUCC2_Bits
{
    unsigned int LT : 21;
    unsigned int reserved_21 : 3;
    unsigned int LTN : 4;
    unsigned int reserved_28 : 4;
} Ifx_ERAY_SUCC2_Bits;


typedef struct _Ifx_ERAY_SUCC3_Bits
{
    unsigned int WCP : 4;
    unsigned int WCF : 4;
    unsigned int reserved_8 : 24;
} Ifx_ERAY_SUCC3_Bits;


typedef struct _Ifx_ERAY_SWNIT_Bits
{
    unsigned int SESA : 1;
    unsigned int SBSA : 1;
    unsigned int TCSA : 1;
    unsigned int SESB : 1;
    unsigned int SBSB : 1;
    unsigned int TCSB : 1;
    unsigned int MTSA : 1;
    unsigned int MTSB : 1;
    unsigned int SENA : 1;
    unsigned int SBNA : 1;
    unsigned int SENB : 1;
    unsigned int SBNB : 1;
    unsigned int reserved_12 : 20;
} Ifx_ERAY_SWNIT_Bits;


typedef struct _Ifx_ERAY_T0C_Bits
{
    unsigned int T0RC : 1;
    unsigned int T0MS : 1;
    unsigned int reserved_2 : 6;
    unsigned int T0CC : 7;
    unsigned int reserved_15 : 1;
    unsigned int T0MO : 14;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_T0C_Bits;


typedef struct _Ifx_ERAY_T1C_Bits
{
    unsigned int T1RC : 1;
    unsigned int T1MS : 1;
    unsigned int reserved_2 : 14;
    unsigned int T1MC : 14;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_T1C_Bits;


typedef struct _Ifx_ERAY_TEST1_Bits
{
    unsigned int WRTEN : 1;
    unsigned int ELBE : 1;
    unsigned int reserved_2 : 2;
    unsigned int TMC : 2;
    unsigned int reserved_6 : 2;
    unsigned int AOA : 1;
    unsigned int AOB : 1;
    unsigned int reserved_10 : 6;
    unsigned int RXA : 1;
    unsigned int RXB : 1;
    unsigned int TXA : 1;
    unsigned int TXB : 1;
    unsigned int TXENA : 1;
    unsigned int TXENB : 1;
    unsigned int reserved_22 : 2;
    unsigned int CERA : 4;
    unsigned int CERB : 4;
} Ifx_ERAY_TEST1_Bits;


typedef struct _Ifx_ERAY_TEST2_Bits
{
    unsigned int RS : 3;
    unsigned int reserved_3 : 1;
    unsigned int SSEL : 3;
    unsigned int reserved_7 : 7;
    unsigned int WRECC : 1;
    unsigned int reserved_15 : 17;
} Ifx_ERAY_TEST2_Bits;


typedef struct _Ifx_ERAY_TXRQ1_Bits
{
    unsigned int TXR0 : 1;
    unsigned int TXR1 : 1;
    unsigned int TXR2 : 1;
    unsigned int TXR3 : 1;
    unsigned int TXR4 : 1;
    unsigned int TXR5 : 1;
    unsigned int TXR6 : 1;
    unsigned int TXR7 : 1;
    unsigned int TXR8 : 1;
    unsigned int TXR9 : 1;
    unsigned int TXR10 : 1;
    unsigned int TXR11 : 1;
    unsigned int TXR12 : 1;
    unsigned int TXR13 : 1;
    unsigned int TXR14 : 1;
    unsigned int TXR15 : 1;
    unsigned int TXR16 : 1;
    unsigned int TXR17 : 1;
    unsigned int TXR18 : 1;
    unsigned int TXR19 : 1;
    unsigned int TXR20 : 1;
    unsigned int TXR21 : 1;
    unsigned int TXR22 : 1;
    unsigned int TXR23 : 1;
    unsigned int TXR24 : 1;
    unsigned int TXR25 : 1;
    unsigned int TXR26 : 1;
    unsigned int TXR27 : 1;
    unsigned int TXR28 : 1;
    unsigned int TXR29 : 1;
    unsigned int TXR30 : 1;
    unsigned int TXR31 : 1;
} Ifx_ERAY_TXRQ1_Bits;


typedef struct _Ifx_ERAY_TXRQ2_Bits
{
    unsigned int TXR32 : 1;
    unsigned int TXR33 : 1;
    unsigned int TXR34 : 1;
    unsigned int TXR35 : 1;
    unsigned int TXR36 : 1;
    unsigned int TXR37 : 1;
    unsigned int TXR38 : 1;
    unsigned int TXR39 : 1;
    unsigned int TXR40 : 1;
    unsigned int TXR41 : 1;
    unsigned int TXR42 : 1;
    unsigned int TXR43 : 1;
    unsigned int TXR44 : 1;
    unsigned int TXR45 : 1;
    unsigned int TXR46 : 1;
    unsigned int TXR47 : 1;
    unsigned int TXR48 : 1;
    unsigned int TXR49 : 1;
    unsigned int TXR50 : 1;
    unsigned int TXR51 : 1;
    unsigned int TXR52 : 1;
    unsigned int TXR53 : 1;
    unsigned int TXR54 : 1;
    unsigned int TXR55 : 1;
    unsigned int TXR56 : 1;
    unsigned int TXR57 : 1;
    unsigned int TXR58 : 1;
    unsigned int TXR59 : 1;
    unsigned int TXR60 : 1;
    unsigned int TXR61 : 1;
    unsigned int TXR62 : 1;
    unsigned int TXR63 : 1;
} Ifx_ERAY_TXRQ2_Bits;


typedef struct _Ifx_ERAY_TXRQ3_Bits
{
    unsigned int TXR64 : 1;
    unsigned int TXR65 : 1;
    unsigned int TXR66 : 1;
    unsigned int TXR67 : 1;
    unsigned int TXR68 : 1;
    unsigned int TXR69 : 1;
    unsigned int TXR70 : 1;
    unsigned int TXR71 : 1;
    unsigned int TXR72 : 1;
    unsigned int TXR73 : 1;
    unsigned int TXR74 : 1;
    unsigned int TXR75 : 1;
    unsigned int TXR76 : 1;
    unsigned int TXR77 : 1;
    unsigned int TXR78 : 1;
    unsigned int TXR79 : 1;
    unsigned int TXR80 : 1;
    unsigned int TXR81 : 1;
    unsigned int TXR82 : 1;
    unsigned int TXR83 : 1;
    unsigned int TXR84 : 1;
    unsigned int TXR85 : 1;
    unsigned int TXR86 : 1;
    unsigned int TXR87 : 1;
    unsigned int TXR88 : 1;
    unsigned int TXR89 : 1;
    unsigned int TXR90 : 1;
    unsigned int TXR91 : 1;
    unsigned int TXR92 : 1;
    unsigned int TXR93 : 1;
    unsigned int TXR94 : 1;
    unsigned int TXR95 : 1;
} Ifx_ERAY_TXRQ3_Bits;


typedef struct _Ifx_ERAY_TXRQ4_Bits
{
    unsigned int TXR96 : 1;
    unsigned int TXR97 : 1;
    unsigned int TXR98 : 1;
    unsigned int TXR99 : 1;
    unsigned int TXR100 : 1;
    unsigned int TXR101 : 1;
    unsigned int TXR102 : 1;
    unsigned int TXR103 : 1;
    unsigned int TXR104 : 1;
    unsigned int TXR105 : 1;
    unsigned int TXR106 : 1;
    unsigned int TXR107 : 1;
    unsigned int TXR108 : 1;
    unsigned int TXR109 : 1;
    unsigned int TXR110 : 1;
    unsigned int TXR111 : 1;
    unsigned int TXR112 : 1;
    unsigned int TXR113 : 1;
    unsigned int TXR114 : 1;
    unsigned int TXR115 : 1;
    unsigned int TXR116 : 1;
    unsigned int TXR117 : 1;
    unsigned int TXR118 : 1;
    unsigned int TXR119 : 1;
    unsigned int TXR120 : 1;
    unsigned int TXR121 : 1;
    unsigned int TXR122 : 1;
    unsigned int TXR123 : 1;
    unsigned int TXR124 : 1;
    unsigned int TXR125 : 1;
    unsigned int TXR126 : 1;
    unsigned int TXR127 : 1;
} Ifx_ERAY_TXRQ4_Bits;


typedef struct _Ifx_ERAY_WRDS_Bits
{
    unsigned int MDWB0 : 8;
    unsigned int MDWB1 : 8;
    unsigned int MDWB2 : 8;
    unsigned int MDWB3 : 8;
} Ifx_ERAY_WRDS_Bits;


typedef struct _Ifx_ERAY_WRHS1_Bits
{
    unsigned int FID : 11;
    unsigned int reserved_11 : 5;
    unsigned int CYC : 7;
    unsigned int reserved_23 : 1;
    unsigned int CHA : 1;
    unsigned int CHB : 1;
    unsigned int CFG : 1;
    unsigned int PPIT : 1;
    unsigned int TXM : 1;
    unsigned int MBI : 1;
    unsigned int reserved_30 : 2;
} Ifx_ERAY_WRHS1_Bits;


typedef struct _Ifx_ERAY_WRHS2_Bits
{
    unsigned int CRC : 11;
    unsigned int reserved_11 : 5;
    unsigned int PLC : 7;
    unsigned int reserved_23 : 9;
} Ifx_ERAY_WRHS2_Bits;


typedef struct _Ifx_ERAY_WRHS3_Bits
{
    unsigned int DP : 11;
    unsigned int reserved_11 : 21;
} Ifx_ERAY_WRHS3_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_ACCEN0_Bits B;
} Ifx_ERAY_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_ACCEN1_Bits B;
} Ifx_ERAY_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_ACS_Bits B;
} Ifx_ERAY_ACS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_CCEV_Bits B;
} Ifx_ERAY_CCEV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_CCSV_Bits B;
} Ifx_ERAY_CCSV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_CLC_Bits B;
} Ifx_ERAY_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_CREL_Bits B;
} Ifx_ERAY_CREL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_CUST1_Bits B;
} Ifx_ERAY_CUST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_CUST3_Bits B;
} Ifx_ERAY_CUST3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_EIER_Bits B;
} Ifx_ERAY_EIER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_EIES_Bits B;
} Ifx_ERAY_EIES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_EILS_Bits B;
} Ifx_ERAY_EILS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_EIR_Bits B;
} Ifx_ERAY_EIR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_ENDN_Bits B;
} Ifx_ERAY_ENDN;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_ESID_Bits B;
} Ifx_ERAY_ESID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_FCL_Bits B;
} Ifx_ERAY_FCL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_FRF_Bits B;
} Ifx_ERAY_FRF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_FRFM_Bits B;
} Ifx_ERAY_FRFM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_FSR_Bits B;
} Ifx_ERAY_FSR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC01_Bits B;
} Ifx_ERAY_GTUC01;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC02_Bits B;
} Ifx_ERAY_GTUC02;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC03_Bits B;
} Ifx_ERAY_GTUC03;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC04_Bits B;
} Ifx_ERAY_GTUC04;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC05_Bits B;
} Ifx_ERAY_GTUC05;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC06_Bits B;
} Ifx_ERAY_GTUC06;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC07_Bits B;
} Ifx_ERAY_GTUC07;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC08_Bits B;
} Ifx_ERAY_GTUC08;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC09_Bits B;
} Ifx_ERAY_GTUC09;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC10_Bits B;
} Ifx_ERAY_GTUC10;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_GTUC11_Bits B;
} Ifx_ERAY_GTUC11;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_IBCM_Bits B;
} Ifx_ERAY_IBCM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_IBCR_Bits B;
} Ifx_ERAY_IBCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_ID_Bits B;
} Ifx_ERAY_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_ILE_Bits B;
} Ifx_ERAY_ILE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_KRST0_Bits B;
} Ifx_ERAY_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_KRST1_Bits B;
} Ifx_ERAY_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_KRSTCLR_Bits B;
} Ifx_ERAY_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_LCK_Bits B;
} Ifx_ERAY_LCK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_LDTS_Bits B;
} Ifx_ERAY_LDTS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MBS_Bits B;
} Ifx_ERAY_MBS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MBSC1_Bits B;
} Ifx_ERAY_MBSC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MBSC2_Bits B;
} Ifx_ERAY_MBSC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MBSC3_Bits B;
} Ifx_ERAY_MBSC3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MBSC4_Bits B;
} Ifx_ERAY_MBSC4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MHDC_Bits B;
} Ifx_ERAY_MHDC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MHDF_Bits B;
} Ifx_ERAY_MHDF;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MHDS_Bits B;
} Ifx_ERAY_MHDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MRC_Bits B;
} Ifx_ERAY_MRC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MSIC1_Bits B;
} Ifx_ERAY_MSIC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MSIC2_Bits B;
} Ifx_ERAY_MSIC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MSIC3_Bits B;
} Ifx_ERAY_MSIC3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MSIC4_Bits B;
} Ifx_ERAY_MSIC4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_MTCCV_Bits B;
} Ifx_ERAY_MTCCV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NDAT1_Bits B;
} Ifx_ERAY_NDAT1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NDAT2_Bits B;
} Ifx_ERAY_NDAT2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NDAT3_Bits B;
} Ifx_ERAY_NDAT3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NDAT4_Bits B;
} Ifx_ERAY_NDAT4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NDIC1_Bits B;
} Ifx_ERAY_NDIC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NDIC2_Bits B;
} Ifx_ERAY_NDIC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NDIC3_Bits B;
} Ifx_ERAY_NDIC3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NDIC4_Bits B;
} Ifx_ERAY_NDIC4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NEMC_Bits B;
} Ifx_ERAY_NEMC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_NMV_Bits B;
} Ifx_ERAY_NMV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_OBCM_Bits B;
} Ifx_ERAY_OBCM;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_OBCR_Bits B;
} Ifx_ERAY_OBCR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_OCS_Bits B;
} Ifx_ERAY_OCS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_OCV_Bits B;
} Ifx_ERAY_OCV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_OSID_Bits B;
} Ifx_ERAY_OSID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_OTSS_Bits B;
} Ifx_ERAY_OTSS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_PRTC1_Bits B;
} Ifx_ERAY_PRTC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_PRTC2_Bits B;
} Ifx_ERAY_PRTC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_RCV_Bits B;
} Ifx_ERAY_RCV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_RDDS_Bits B;
} Ifx_ERAY_RDDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_RDHS1_Bits B;
} Ifx_ERAY_RDHS1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_RDHS2_Bits B;
} Ifx_ERAY_RDHS2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_RDHS3_Bits B;
} Ifx_ERAY_RDHS3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SCV_Bits B;
} Ifx_ERAY_SCV;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SFS_Bits B;
} Ifx_ERAY_SFS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SIER_Bits B;
} Ifx_ERAY_SIER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SIES_Bits B;
} Ifx_ERAY_SIES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SILS_Bits B;
} Ifx_ERAY_SILS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SIR_Bits B;
} Ifx_ERAY_SIR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_STPW1_Bits B;
} Ifx_ERAY_STPW1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_STPW2_Bits B;
} Ifx_ERAY_STPW2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SUCC1_Bits B;
} Ifx_ERAY_SUCC1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SUCC2_Bits B;
} Ifx_ERAY_SUCC2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SUCC3_Bits B;
} Ifx_ERAY_SUCC3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_SWNIT_Bits B;
} Ifx_ERAY_SWNIT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_T0C_Bits B;
} Ifx_ERAY_T0C;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_T1C_Bits B;
} Ifx_ERAY_T1C;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_TEST1_Bits B;
} Ifx_ERAY_TEST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_TEST2_Bits B;
} Ifx_ERAY_TEST2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_TXRQ1_Bits B;
} Ifx_ERAY_TXRQ1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_TXRQ2_Bits B;
} Ifx_ERAY_TXRQ2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_TXRQ3_Bits B;
} Ifx_ERAY_TXRQ3;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_TXRQ4_Bits B;
} Ifx_ERAY_TXRQ4;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_WRDS_Bits B;
} Ifx_ERAY_WRDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_WRHS1_Bits B;
} Ifx_ERAY_WRHS1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_WRHS2_Bits B;
} Ifx_ERAY_WRHS2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ERAY_WRHS3_Bits B;
} Ifx_ERAY_WRHS3;
# 2636 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_regdef.h"
typedef volatile struct _Ifx_ERAY
{
    Ifx_ERAY_CLC CLC;
    Ifx_ERAY_CUST1 CUST1;
    Ifx_ERAY_ID ID;
    Ifx_ERAY_CUST3 CUST3;
    Ifx_ERAY_TEST1 TEST1;
    Ifx_ERAY_TEST2 TEST2;
    unsigned char reserved_18[4];
    Ifx_ERAY_LCK LCK;
    Ifx_ERAY_EIR EIR;
    Ifx_ERAY_SIR SIR;
    Ifx_ERAY_EILS EILS;
    Ifx_ERAY_SILS SILS;
    Ifx_ERAY_EIES EIES;
    Ifx_ERAY_EIER EIER;
    Ifx_ERAY_SIES SIES;
    Ifx_ERAY_SIER SIER;
    Ifx_ERAY_ILE ILE;
    Ifx_ERAY_T0C T0C;
    Ifx_ERAY_T1C T1C;
    Ifx_ERAY_STPW1 STPW1;
    Ifx_ERAY_STPW2 STPW2;
    unsigned char reserved_54[44];
    Ifx_ERAY_SUCC1 SUCC1;
    Ifx_ERAY_SUCC2 SUCC2;
    Ifx_ERAY_SUCC3 SUCC3;
    Ifx_ERAY_NEMC NEMC;
    Ifx_ERAY_PRTC1 PRTC1;
    Ifx_ERAY_PRTC2 PRTC2;
    Ifx_ERAY_MHDC MHDC;
    unsigned char reserved_9C[4];
    Ifx_ERAY_GTUC01 GTUC01;
    Ifx_ERAY_GTUC02 GTUC02;
    Ifx_ERAY_GTUC03 GTUC03;
    Ifx_ERAY_GTUC04 GTUC04;
    Ifx_ERAY_GTUC05 GTUC05;
    Ifx_ERAY_GTUC06 GTUC06;
    Ifx_ERAY_GTUC07 GTUC07;
    Ifx_ERAY_GTUC08 GTUC08;
    Ifx_ERAY_GTUC09 GTUC09;
    Ifx_ERAY_GTUC10 GTUC10;
    Ifx_ERAY_GTUC11 GTUC11;
    unsigned char reserved_CC[52];
    Ifx_ERAY_CCSV CCSV;
    Ifx_ERAY_CCEV CCEV;
    unsigned char reserved_108[8];
    Ifx_ERAY_SCV SCV;
    Ifx_ERAY_MTCCV MTCCV;
    Ifx_ERAY_RCV RCV;
    Ifx_ERAY_OCV OCV;
    Ifx_ERAY_SFS SFS;
    Ifx_ERAY_SWNIT SWNIT;
    Ifx_ERAY_ACS ACS;
    unsigned char reserved_12C[4];
    Ifx_ERAY_ESID ESID_1S[15];
    unsigned char reserved_16C[4];
    Ifx_ERAY_OSID OSID_1S[15];
    unsigned char reserved_1AC[4];
    Ifx_ERAY_NMV NMV_1S[3];
    unsigned char reserved_1BC[324];
    Ifx_ERAY_MRC MRC;
    Ifx_ERAY_FRF FRF;
    Ifx_ERAY_FRFM FRFM;
    Ifx_ERAY_FCL FCL;
    Ifx_ERAY_MHDS MHDS;
    Ifx_ERAY_LDTS LDTS;
    Ifx_ERAY_FSR FSR;
    Ifx_ERAY_MHDF MHDF;
    Ifx_ERAY_TXRQ1 TXRQ1;
    Ifx_ERAY_TXRQ2 TXRQ2;
    Ifx_ERAY_TXRQ3 TXRQ3;
    Ifx_ERAY_TXRQ4 TXRQ4;
    Ifx_ERAY_NDAT1 NDAT1;
    Ifx_ERAY_NDAT2 NDAT2;
    Ifx_ERAY_NDAT3 NDAT3;
    Ifx_ERAY_NDAT4 NDAT4;
    Ifx_ERAY_MBSC1 MBSC1;
    Ifx_ERAY_MBSC2 MBSC2;
    Ifx_ERAY_MBSC3 MBSC3;
    Ifx_ERAY_MBSC4 MBSC4;
    unsigned char reserved_350[88];
    Ifx_ERAY_NDIC1 NDIC1;
    Ifx_ERAY_NDIC2 NDIC2;
    Ifx_ERAY_NDIC3 NDIC3;
    Ifx_ERAY_NDIC4 NDIC4;
    Ifx_ERAY_MSIC1 MSIC1;
    Ifx_ERAY_MSIC2 MSIC2;
    Ifx_ERAY_MSIC3 MSIC3;
    Ifx_ERAY_MSIC4 MSIC4;
    unsigned char reserved_3C8[40];
    Ifx_ERAY_CREL CREL;
    Ifx_ERAY_ENDN ENDN;
    unsigned char reserved_3F8[8];
    Ifx_ERAY_WRDS WRDS_1S[64];
    Ifx_ERAY_WRHS1 WRHS1;
    Ifx_ERAY_WRHS2 WRHS2;
    Ifx_ERAY_WRHS3 WRHS3;
    unsigned char reserved_50C[4];
    Ifx_ERAY_IBCM IBCM;
    Ifx_ERAY_IBCR IBCR;
    unsigned char reserved_518[232];
    Ifx_ERAY_RDDS RDDS_1S[64];
    Ifx_ERAY_RDHS1 RDHS1;
    Ifx_ERAY_RDHS2 RDHS2;
    Ifx_ERAY_RDHS3 RDHS3;
    Ifx_ERAY_MBS MBS;
    Ifx_ERAY_OBCM OBCM;
    Ifx_ERAY_OBCR OBCR;
    unsigned char reserved_718[344];
    Ifx_ERAY_OTSS OTSS;
    unsigned char reserved_874[116];
    Ifx_ERAY_OCS OCS;
    Ifx_ERAY_KRSTCLR KRSTCLR;
    Ifx_ERAY_KRST1 KRST1;
    Ifx_ERAY_KRST0 KRST0;
    Ifx_ERAY_ACCEN1 ACCEN1;
    Ifx_ERAY_ACCEN0 ACCEN0;
    unsigned char reserved_900[1792];
} Ifx_ERAY;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_reg.h" 2
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h" 2

# 1 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 1
# 43 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
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
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 2
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
# 34 "./0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h" 2





typedef const struct
{
    Ifx_ERAY* module;
    IfxEray_NodeId nodeId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEray_Rxd_In;


typedef const struct
{
    Ifx_ERAY* module;
    IfxEray_NodeId nodeId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEray_Txd_Out;


typedef const struct
{
    Ifx_ERAY* module;
    IfxEray_NodeId nodeId;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEray_Txen_Out;

extern IfxEray_Rxd_In IfxEray0_RXDA0_P14_8_IN;
extern IfxEray_Rxd_In IfxEray0_RXDA1_P11_9_IN;
extern IfxEray_Rxd_In IfxEray0_RXDA2_P02_1_IN;
extern IfxEray_Rxd_In IfxEray0_RXDA3_P14_1_IN;
extern IfxEray_Rxd_In IfxEray0_RXDB0_P14_7_IN;
extern IfxEray_Rxd_In IfxEray0_RXDB1_P11_10_IN;
extern IfxEray_Rxd_In IfxEray0_RXDB2_P02_3_IN;
extern IfxEray_Rxd_In IfxEray0_RXDB3_P14_1_IN;
extern IfxEray_Txd_Out IfxEray0_TXDA_P02_0_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDA_P11_3_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDA_P14_0_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDB_P02_2_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDB_P11_12_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDB_P14_0_OUT;
extern IfxEray_Txd_Out IfxEray0_TXDB_P14_5_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENA_P02_4_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENA_P11_6_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENB_P02_5_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENB_P11_11_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENB_P11_6_OUT;
extern IfxEray_Txen_Out IfxEray0_TXENB_P14_6_OUT;
# 96 "./0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h"
extern const IfxEray_Rxd_In *IfxEray_Rxd_In_pinTable[1][2][4];


extern const IfxEray_Txd_Out *IfxEray_Txd_Out_pinTable[1][2][4];


extern const IfxEray_Txen_Out *IfxEray_Txen_Out_pinTable[1][2][4];
# 51 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEray_reg.h" 1
# 52 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h" 2
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

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
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
# 53 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h" 2
# 62 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
typedef enum
{
    IfxEray_Baudrate_10 = 0,
    IfxEray_Baudrate_5 = 1,
    IfxEray_Baudrate_2_5 = 2
} IfxEray_Baudrate;



typedef enum
{
    IfxEray_BufferDirection_receive = 0,
    IfxEray_BufferDirection_transmit = 1
} IfxEray_BufferDirection;



typedef enum
{
    IfxEray_Channel_a = 0,
    IfxEray_Channel_b = 1
} IfxEray_Channel;



typedef enum
{
    IfxEray_ClearErrorFlag_pemc = 1,
    IfxEray_ClearErrorFlag_cna = 2,
    IfxEray_ClearErrorFlag_sfbm = 4,
    IfxEray_ClearErrorFlag_sfo = 8,
    IfxEray_ClearErrorFlag_ccf = 16,
    IfxEray_ClearErrorFlag_ccl = 32,
    IfxEray_ClearErrorFlag_eerr = 64,
    IfxEray_ClearErrorFlag_rfo = 128,
    IfxEray_ClearErrorFlag_efa = 256,
    IfxEray_ClearErrorFlag_iiba = 512,
    IfxEray_ClearErrorFlag_ioba = 1024,
    IfxEray_ClearErrorFlag_mhf = 2048,
    IfxEray_ClearErrorFlag_eda = 65536,
    IfxEray_ClearErrorFlag_ltva = 131072,
    IfxEray_ClearErrorFlag_taba = 262144,
    IfxEray_ClearErrorFlag_edb = 16777216,
    IfxEray_ClearErrorFlag_ltvb = 33554432,
    IfxEray_ClearErrorFlag_tabb = 67108864
} IfxEray_ClearErrorFlag;



typedef enum
{
    IfxEray_ClearStatusFlag_wst = 1,
    IfxEray_ClearStatusFlag_cas = 2,
    IfxEray_ClearStatusFlag_cycs = 4,
    IfxEray_ClearStatusFlag_txi = 8,
    IfxEray_ClearStatusFlag_rxi = 16,
    IfxEray_ClearStatusFlag_rfne = 32,
    IfxEray_ClearStatusFlag_rfcl = 64,
    IfxEray_ClearStatusFlag_nmvc = 128,
    IfxEray_ClearStatusFlag_ti0 = 256,
    IfxEray_ClearStatusFlag_ti1 = 512,
    IfxEray_ClearStatusFlag_tibc = 1024,
    IfxEray_ClearStatusFlag_tobc = 2048,
    IfxEray_ClearStatusFlag_swe = 4096,
    IfxEray_ClearStatusFlag_sucs = 8192,
    IfxEray_ClearStatusFlag_mbsi = 16384,
    IfxEray_ClearStatusFlag_sds = 32768,
    IfxEray_ClearStatusFlag_wupa = 65536,
    IfxEray_ClearStatusFlag_mtsa = 131072,
    IfxEray_ClearStatusFlag_wupb = 16777216,
    IfxEray_ClearStatusFlag_mtsb = 33554432
} IfxEray_ClearStatusFlag;



typedef enum
{
    IfxEray_ClockDivider_none = 0,
    IfxEray_ClockDivider_1 = 1,
    IfxEray_ClockDivider_2,
    IfxEray_ClockDivider_3,
    IfxEray_ClockDivider_4,
    IfxEray_ClockDivider_5,
    IfxEray_ClockDivider_6,
    IfxEray_ClockDivider_7
} IfxEray_ClockDivider;



typedef enum
{
    IfxEray_ExternalOffset_noCorrection = 1,
    IfxEray_ExternalOffset_correctionSubtracted = 2,
    IfxEray_ExternalOffset_correctionAdded = 3
} IfxEray_ExternalOffset;



typedef enum
{
    IfxEray_ExternalOffsetCorrection_0 = 0,
    IfxEray_ExternalOffsetCorrection_1,
    IfxEray_ExternalOffsetCorrection_2,
    IfxEray_ExternalOffsetCorrection_3,
    IfxEray_ExternalOffsetCorrection_4,
    IfxEray_ExternalOffsetCorrection_5,
    IfxEray_ExternalOffsetCorrection_6,
    IfxEray_ExternalOffsetCorrection_7
} IfxEray_ExternalOffsetCorrection;



typedef enum
{
    IfxEray_ExternalRate_noCorrection = 1,
    IfxEray_ExternalRate_correctionSubtracted = 2,
    IfxEray_ExternalRate_correctionAdded = 3
} IfxEray_ExternalRate;



typedef enum
{
    IfxEray_ExternalRateCorrection_0 = 0,
    IfxEray_ExternalRateCorrection_1,
    IfxEray_ExternalRateCorrection_2,
    IfxEray_ExternalRateCorrection_3,
    IfxEray_ExternalRateCorrection_4,
    IfxEray_ExternalRateCorrection_5,
    IfxEray_ExternalRateCorrection_6,
    IfxEray_ExternalRateCorrection_7
} IfxEray_ExternalRateCorrection;



typedef enum
{
    IfxEray_IdleDynamicSlots_0 = 0,
    IfxEray_IdleDynamicSlots_1,
    IfxEray_IdleDynamicSlots_2
} IfxEray_IdleDynamicSlots;



typedef enum
{
    IfxEray_ListenTimeOutNoise_2 = 1,
    IfxEray_ListenTimeOutNoise_3,
    IfxEray_ListenTimeOutNoise_4,
    IfxEray_ListenTimeOutNoise_5,
    IfxEray_ListenTimeOutNoise_6,
    IfxEray_ListenTimeOutNoise_7,
    IfxEray_ListenTimeOutNoise_8,
    IfxEray_ListenTimeOutNoise_9,
    IfxEray_ListenTimeOutNoise_10,
    IfxEray_ListenTimeOutNoise_11,
    IfxEray_ListenTimeOutNoise_12,
    IfxEray_ListenTimeOutNoise_13,
    IfxEray_ListenTimeOutNoise_14,
    IfxEray_ListenTimeOutNoise_15,
    IfxEray_ListenTimeOutNoise_16
} IfxEray_ListenTimeOutNoise;



typedef enum
{
    IfxEray_MaxSynchFrames_2 = 2,
    IfxEray_MaxSynchFrames_3,
    IfxEray_MaxSynchFrames_4,
    IfxEray_MaxSynchFrames_5,
    IfxEray_MaxSynchFrames_6,
    IfxEray_MaxSynchFrames_7,
    IfxEray_MaxSynchFrames_8,
    IfxEray_MaxSynchFrames_9,
    IfxEray_MaxSynchFrames_10,
    IfxEray_MaxSynchFrames_11,
    IfxEray_MaxSynchFrames_12,
    IfxEray_MaxSynchFrames_13,
    IfxEray_MaxSynchFrames_14,
    IfxEray_MaxSynchFrames_15
} IfxEray_MaxSynchFrames;



typedef enum
{
    IfxEray_PocCommand_notAccepted = 0,
    IfxEray_PocCommand_config = 1,
    IfxEray_PocCommand_ready = 2,
    IfxEray_PocCommand_wakeup = 3,
    IfxEray_PocCommand_run = 4,
    IfxEray_PocCommand_allSlots = 5,
    IfxEray_PocCommand_halt = 6,
    IfxEray_PocCommand_freeze = 7,
    IfxEray_PocCommand_sendMts = 8,
    IfxEray_PocCommand_coldStart = 9,
    IfxEray_PocCommand_reset = 10,
    IfxEray_PocCommand_monitor = 11,
    IfxEray_PocCommand_clearRam = 12
} IfxEray_PocCommand;



typedef enum
{
    IfxEray_PocState_defaultConfig = 0,
    IfxEray_PocState_ready = 1,
    IfxEray_PocState_normalActive = 2,
    IfxEray_PocState_normalPassive = 3,
    IfxEray_PocState_halt = 4,
    IfxEray_PocState_monitor = 5,
    IfxEray_PocState_config = 15,
    IfxEray_PocState_wakeupStandby = 16,
    IfxEray_PocState_wakeupListen = 17,
    IfxEray_PocState_wakeupSend = 18,
    IfxEray_PocState_wakeupDetect = 19,
    IfxEray_PocState_startup = 32,
    IfxEray_PocState_coldStartListen = 33,
    IfxEray_PocState_collisionResolution = 34,
    IfxEray_PocState_consistencyCheck = 35,
    IfxEray_PocState_gap = 36,
    IfxEray_PocState_join = 37,
    IfxEray_PocState_integrationCheck = 38,
    IfxEray_PocState_integrationListen = 39,
    IfxEray_PocState_integrationConsistencyCheck = 40,
    IfxEray_PocState_initializeSchedule = 41,
    IfxEray_PocState_staruAborted = 42,
    IfxEray_PocState_startupSucced = 43
} IfxEray_PocState;



typedef enum
{
    IfxEray_ReceiveChannel_both = 0,
    IfxEray_ReceiveChannel_b = 1,
    IfxEray_ReceiveChannel_a = 2,
    IfxEray_ReceiveChannel_none = 3
} IfxEray_ReceiveChannel;




typedef enum
{
    IfxEray_SleepMode_enable = 0,
    IfxEray_SleepMode_disable = 1
} IfxEray_SleepMode;



typedef enum
{
    IfxEray_StrobePosition_5 = 0,
    IfxEray_StrobePosition_4 = 1,
    IfxEray_StrobePosition_6 = 2
} IfxEray_StrobePosition;



typedef enum
{
    IfxEray_TransmissionMode_continuous = 0,
    IfxEray_TransmissionMode_singleShot = 1
} IfxEray_TransmissionMode;



typedef enum
{
    IfxEray_TransmissionSlotMode_all = 0,
    IfxEray_TransmissionSlotMode_single = 1
} IfxEray_TransmissionSlotMode;



typedef enum
{
    IfxEray_WakeupChannel_a = 0,
    IfxEray_WakeupChannel_b = 1
} IfxEray_WakeupChannel;
# 355 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
typedef struct
{
    uint16 frameId;
    uint8 cycleCode;
    boolean channelAFiltered;
    boolean channelBFiltered;
    IfxEray_BufferDirection bufferDirection;
    boolean transmitPayloadIndicatior;
    IfxEray_TransmissionMode transmissionMode;
    boolean bufferServiceEnabled;
    uint8 payloadLength;
    uint16 dataPointer;
    boolean startupFrameIndicator;
    boolean syncFrameIndicator;
} IfxEray_Header;



typedef struct
{
    uint16 frameId : 11;
    uint8 payloadLength : 7;
    uint16 headerCrc : 11;
    uint8 reservedBit : 1;
    uint8 nullFrameIndicator : 1;
    uint8 syncFrame : 1;
    uint8 startupFrame : 1;
    uint8 cycleNumber : 7;
    uint8 payloadPreambleIndicator : 1;
} IfxEray_ReceivedHeader;



typedef struct
{
    boolean headerTransfered;
    boolean dataTransfered;
    boolean transferRequested;
    uint8 bufferIndex;
} IfxEray_SlotConfig;
# 410 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_clearErrorFlag(Ifx_ERAY *eray, IfxEray_ClearErrorFlag errorFlag);






static inline __attribute__ ((always_inline)) void IfxEray_clearStatusFlag(Ifx_ERAY *eray, IfxEray_ClearStatusFlag statusFlag);





static inline __attribute__ ((always_inline)) Ifx_ERAY_EIR IfxEray_getErrorInterrupts(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInputBufferBusySrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInterruptLine0SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInterruptLine1SrcPtr(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) boolean IfxEray_getMessageBufferInterruptStatus(Ifx_ERAY *eray, uint8 messageBuffer);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getMessageBufferStatus0SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getMessageBufferStatus1SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getNewDataInterrupt0SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getNewDataInterrupt1SrcPtr(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) boolean IfxEray_getNewDataInterruptStatus(Ifx_ERAY *eray, uint8 ndat);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getOutputBufferBusySrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) Ifx_ERAY_SIR IfxEray_getStatusInterrupts(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getTimerInterrupt0SrcPtr(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getTimerInterrupt1SrcPtr(Ifx_ERAY *eray);
# 513 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern void IfxEray_clearAllFlags(Ifx_ERAY *eray);





extern void IfxEray_enableInterruptLines(Ifx_ERAY *eray);







extern void IfxEray_setMessageBufferInterruptDestination(Ifx_ERAY *eray, uint8 messageBuffer, uint8 messageBufferDestination);







extern void IfxEray_setNewDataInterruptDestination(Ifx_ERAY *eray, uint8 ndat, uint8 ndatDestination);
# 551 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_initRxPin(const IfxEray_Rxd_In *rx, IfxPort_InputMode rxMode);







static inline __attribute__ ((always_inline)) void IfxEray_initTxEnPin(const IfxEray_Txen_Out *txEn, IfxPort_OutputMode txEnMode, IfxPort_PadDriver padDriver);







static inline __attribute__ ((always_inline)) void IfxEray_initTxPin(const IfxEray_Txd_Out *tx, IfxPort_OutputMode txMode, IfxPort_PadDriver padDriver);
# 582 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_enableModule(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) void IfxEray_setSleepMode(Ifx_ERAY *eray, IfxEray_SleepMode mode);
# 599 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern void IfxEray_resetModule(Ifx_ERAY *eray);
# 614 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) Ifx_ERAY_FSR IfxEray_getFifoStatus(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) boolean IfxEray_getInputBufferBusyHostStatus(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) uint8 IfxEray_getInputBufferBusyShadowStatus(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) uint8 IfxEray_getOutputBuffer(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) boolean IfxEray_getOutputBufferBusyShadowStatus(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) IfxEray_PocState IfxEray_getPocState(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) IfxEray_WakeupChannel IfxEray_getWakeupPatternReceivedChannel(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) void IfxEray_waitForPocState(Ifx_ERAY *eray, IfxEray_PocState pocState);
# 668 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern boolean IfxEray_changePocState(Ifx_ERAY *eray, IfxEray_PocCommand pocCommand);





extern void IfxEray_setPocReady(Ifx_ERAY *eray);
# 690 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_receiveHeader(Ifx_ERAY *eray, boolean headerReceived);






static inline __attribute__ ((always_inline)) void IfxEray_sendHeader(Ifx_ERAY *eray, boolean headerTransfered);






static inline __attribute__ ((always_inline)) void IfxEray_setActiveCyclePairs(Ifx_ERAY *eray, uint8 numberOfCyclePairsForActive);





static inline __attribute__ ((always_inline)) void IfxEray_setAutoDelayBuffers(Ifx_ERAY *eray);






static inline __attribute__ ((always_inline)) void IfxEray_setBaudrate(Ifx_ERAY *eray, IfxEray_Baudrate baudrate);






static inline __attribute__ ((always_inline)) void IfxEray_setBufferReconfigSecure(Ifx_ERAY *eray, uint8 secureValue);







static inline __attribute__ ((always_inline)) void IfxEray_setChannelAInitialOffsets(Ifx_ERAY *eray, uint8 channelAMicrotickInitialOffset, uint8 channelAMacrotickInitialOffset);







static inline __attribute__ ((always_inline)) void IfxEray_setChannelBInitialOffsets(Ifx_ERAY *eray, uint8 channelBMicrotickInitialOffset, uint8 channelBMacrotickInitialOffset);







static inline __attribute__ ((always_inline)) void IfxEray_setChannelsReceiveDelay(Ifx_ERAY *eray, uint8 channelAReceptionDelay, uint8 channelBReceptionDelay);







static inline __attribute__ ((always_inline)) void IfxEray_setClockCorrectionCycles(Ifx_ERAY *eray, uint8 clockCorrectionCyclesPassive, uint8 clockCorrectionCyclesHalt);






static inline __attribute__ ((always_inline)) void IfxEray_setClockSynchErrorHalt(Ifx_ERAY *eray, boolean clockSyncErrorHalt);







static inline __attribute__ ((always_inline)) void IfxEray_setClusterDriftValues(Ifx_ERAY *eray, uint8 clusterDrift, uint16 maxDriftOffset);






static inline __attribute__ ((always_inline)) void IfxEray_setClusterStartupDeviation(Ifx_ERAY *eray, uint16 acceptedStartupDeviation);






static inline __attribute__ ((always_inline)) void IfxEray_setCollisionAvoidanceDuration(Ifx_ERAY *eray, uint8 collisionAvoidanceDuration);






static inline __attribute__ ((always_inline)) void IfxEray_setCycleDurationMacroticks(Ifx_ERAY *eray, uint16 macroticks);






static inline __attribute__ ((always_inline)) void IfxEray_setCycleDurationMicroticks(Ifx_ERAY *eray, uint32 microticks);






static inline __attribute__ ((always_inline)) void IfxEray_setDecodingCorrectionValue(Ifx_ERAY *eray, uint8 decodingCorrection);
# 815 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setDynamicSlots(Ifx_ERAY *eray, uint8 dynamicSlotLength, uint16 dynamicSlotCount, IfxEray_IdleDynamicSlots idleDynamicSlots);







static inline __attribute__ ((always_inline)) void IfxEray_setExternalCorrectionControl(Ifx_ERAY *eray, IfxEray_ExternalOffset externalOffset, IfxEray_ExternalRate externalRate);







static inline __attribute__ ((always_inline)) void IfxEray_setExternalCorrectionValues(Ifx_ERAY *eray, IfxEray_ExternalOffsetCorrection externalOffsetCorrection, IfxEray_ExternalRateCorrection externalRateCorrection);






static inline __attribute__ ((always_inline)) void IfxEray_setFifoBufferStartIndex(Ifx_ERAY *eray, uint8 fifoBufferStartIndex);
# 848 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setFifoFilterConfigurations(Ifx_ERAY *eray, uint16 rejectedFrameId, uint8 filteredCycleNumber, boolean fifoNullFramesRejected, uint16 frameIdFilter);
# 857 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setFifoMessageBufferConfigurations(Ifx_ERAY *eray, IfxEray_ReceiveChannel receiveChannel, boolean staticFifoDisabled, uint8 fifoDepth);






static inline __attribute__ ((always_inline)) void IfxEray_setFirstDynamicBuffer(Ifx_ERAY *eray, uint8 firstDynamicBuffer);







static inline __attribute__ ((always_inline)) void IfxEray_setListenTimeOuts(Ifx_ERAY *eray, uint32 listenTimeOut, IfxEray_ListenTimeOutNoise listenTimeOutNoise);






static inline __attribute__ ((always_inline)) void IfxEray_setMaxColdStartAttempts(Ifx_ERAY *eray, uint8 maxColdStartAttempts);







static inline __attribute__ ((always_inline)) void IfxEray_setMaxCorrectionValues(Ifx_ERAY *eray, uint16 maxOffsetCorrection, uint16 maxRateCorrection);






static inline __attribute__ ((always_inline)) void IfxEray_setMaxSynchFrames(Ifx_ERAY *eray, IfxEray_MaxSynchFrames maxSyncFrames);






static inline __attribute__ ((always_inline)) void IfxEray_setMessageBufferCount(Ifx_ERAY *eray, uint8 numberOfMessageBuffers);







static inline __attribute__ ((always_inline)) void IfxEray_setMessageHandlerConfigurations(Ifx_ERAY *eray, uint8 staticFramepayload, uint8 latestTransmissionStart);






static inline __attribute__ ((always_inline)) void IfxEray_setNetworkStartIdleTime(Ifx_ERAY *eray, uint16 networkStartIdleTime);






static inline __attribute__ ((always_inline)) void IfxEray_setNetworkVectorLength(Ifx_ERAY *eray, uint32 networkVectorLength);







static inline __attribute__ ((always_inline)) void IfxEray_setNodeChannels(Ifx_ERAY *eray, boolean channelAConnectedNode, boolean channelBConnectedNode);






static inline __attribute__ ((always_inline)) void IfxEray_setOffsetCorrection(Ifx_ERAY *eray, uint16 correctionOffset);






static inline __attribute__ ((always_inline)) void IfxEray_setReceiveRequest(Ifx_ERAY *eray, boolean receiveRequested);
# 954 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setReceiveWakeupTimes(Ifx_ERAY *eray, uint8 receiveWakeupTestDuration, uint8 receiveWakeupIdleTime, uint8 receiveWakeupLowTime);






static inline __attribute__ ((always_inline)) void IfxEray_setRxBufferNumber(Ifx_ERAY *eray, uint8 bufferIndex);







static inline __attribute__ ((always_inline)) void IfxEray_setSlotActionPoints(Ifx_ERAY *eray, uint8 staticActionPoint, uint8 dynamicActionPoint);







static inline __attribute__ ((always_inline)) void IfxEray_setStaticSlots(Ifx_ERAY *eray, uint16 staticSlotLength, uint16 staticSlotsCount);






static inline __attribute__ ((always_inline)) void IfxEray_setStrobePosition(Ifx_ERAY *eray, IfxEray_StrobePosition strobePosition);







static inline __attribute__ ((always_inline)) void IfxEray_setSymbolChannels(Ifx_ERAY *eray, boolean channelASymbolTransmitted, boolean channelBSymbolTransmitted);






static inline __attribute__ ((always_inline)) void IfxEray_setTransmissionSlotMode(Ifx_ERAY *eray, IfxEray_TransmissionSlotMode transmissionSlotMode);






static inline __attribute__ ((always_inline)) void IfxEray_setTransmissionStartTime(Ifx_ERAY *eray, uint16 transmissionStartTime);






static inline __attribute__ ((always_inline)) void IfxEray_setTransmitRequest(Ifx_ERAY *eray, boolean transferRequested);
# 1022 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_setTransmitWakeupTimes(Ifx_ERAY *eray, uint8 transmitWakeupRepetitions, uint8 transmitWakeupIdleTime, uint8 transmitWakeupLowTime);







static inline __attribute__ ((always_inline)) void IfxEray_setTransmittedFrames(Ifx_ERAY *eray, boolean startupFrameTransmitted, boolean synchFrameTransmitted);






static inline __attribute__ ((always_inline)) void IfxEray_setTxBufferNumber(Ifx_ERAY *eray, uint8 bufferIndex);






static inline __attribute__ ((always_inline)) void IfxEray_setViewData(Ifx_ERAY *eray, boolean swapRequested);






static inline __attribute__ ((always_inline)) void IfxEray_setWakeupPatternChannel(Ifx_ERAY *eray, IfxEray_WakeupChannel wakeupPatternChannel);
# 1067 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) void IfxEray_receiveData(Ifx_ERAY *eray, boolean dataReceived);






static inline __attribute__ ((always_inline)) void IfxEray_sendData(Ifx_ERAY *eray, boolean dataTransfered);
# 1087 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern uint16 IfxEray_calcHeaderCrc(uint8 payloadLength, uint16 frameId, boolean startupFrameIndicator, boolean syncFrameIndicator);







extern void IfxEray_readData(Ifx_ERAY *eray, uint32 *data, uint8 payloadLength);
# 1104 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern void IfxEray_readFrame(Ifx_ERAY *eray, IfxEray_ReceivedHeader *header, uint32 *data, Ifx_SizeT maxPayloadLength);
# 1113 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
extern void IfxEray_setSlot(Ifx_ERAY *eray, const IfxEray_Header *header, const uint32 *data, const IfxEray_SlotConfig *slotConfig);







extern void IfxEray_writeData(Ifx_ERAY *eray, const uint32 *data, uint8 payloadLength);
# 1133 "./0_Src/4_McHal/Tricore/Eray/Std/IfxEray.h"
static inline __attribute__ ((always_inline)) uint8 IfxEray_getFifoIndex(Ifx_ERAY *eray);





static inline __attribute__ ((always_inline)) void IfxEray_clearErrorFlag(Ifx_ERAY *eray, IfxEray_ClearErrorFlag errorFlag)
{
    eray->EIR.U = errorFlag;
}


static inline __attribute__ ((always_inline)) void IfxEray_clearStatusFlag(Ifx_ERAY *eray, IfxEray_ClearStatusFlag statusFlag)
{
    eray->SIR.U = statusFlag;
}


static inline __attribute__ ((always_inline)) void IfxEray_enableModule(Ifx_ERAY *eray)
{

    eray->CLC.U = 0x00000100;


    if (eray->CLC.U)
    {}
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_EIR IfxEray_getErrorInterrupts(Ifx_ERAY *eray)
{
    Ifx_ERAY_EIR interruptFlags;
    interruptFlags.U = eray->EIR.U;
    return interruptFlags;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_getFifoIndex(Ifx_ERAY *eray)
{
    return eray->MRC.B.FFB;
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_FSR IfxEray_getFifoStatus(Ifx_ERAY *eray)
{
    Ifx_ERAY_FSR fifoStatus;
    fifoStatus.U = eray->FSR.U;
    return fifoStatus;
}


static inline __attribute__ ((always_inline)) boolean IfxEray_getInputBufferBusyHostStatus(Ifx_ERAY *eray)
{
    return (eray->IBCR.B.IBSYH == 1) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_getInputBufferBusyShadowStatus(Ifx_ERAY *eray)
{
    return (eray->IBCR.B.IBSYS == 1) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInputBufferBusySrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].IBUSY;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInterruptLine0SrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].INT[0];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getInterruptLine1SrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].INT[1];
}


static inline __attribute__ ((always_inline)) boolean IfxEray_getMessageBufferInterruptStatus(Ifx_ERAY *eray, uint8 messageBuffer)
{
    uint8 ix = messageBuffer / 32;
    uint32 mask = 1 << (messageBuffer % 32);
    Ifx_ERAY_MBSC1 *mbscSFR = (Ifx_ERAY_MBSC1 *)((uint32)&eray->MBSC1 + 4 * ix);
    boolean messageBufferInterrupt = (mbscSFR->U & mask) ? 1 : 0;

    return messageBufferInterrupt;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getMessageBufferStatus0SrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].MBSC[0];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getMessageBufferStatus1SrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].MBSC[1];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getNewDataInterrupt0SrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].NDAT[0];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getNewDataInterrupt1SrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].NDAT[1];
}


static inline __attribute__ ((always_inline)) boolean IfxEray_getNewDataInterruptStatus(Ifx_ERAY *eray, uint8 ndat)
{
    uint8 ix = ndat / 32;
    uint32 mask = 1 << (ndat % 32);
    Ifx_ERAY_NDAT1 *ndatSFR = (Ifx_ERAY_NDAT1 *)((uint32)&eray->NDAT1 + 4 * ix);
    boolean ndatInterrupt = (ndatSFR->U & mask) ? 1 : 0;

    return ndatInterrupt;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_getOutputBuffer(Ifx_ERAY *eray)
{
    return eray->OBCR.B.OBRH;
}


static inline __attribute__ ((always_inline)) boolean IfxEray_getOutputBufferBusyShadowStatus(Ifx_ERAY *eray)
{
    return (eray->OBCR.B.OBSYS == 1) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getOutputBufferBusySrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].OBUSY;
}


static inline __attribute__ ((always_inline)) IfxEray_PocState IfxEray_getPocState(Ifx_ERAY *eray)
{
    return (IfxEray_PocState)eray->CCSV.B.POCS;
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_SIR IfxEray_getStatusInterrupts(Ifx_ERAY *eray)
{
    Ifx_ERAY_SIR interruptFlags;
    interruptFlags.U = eray->SIR.U;
    return interruptFlags;
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getTimerInterrupt0SrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].TINT[0];
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxEray_getTimerInterrupt1SrcPtr(Ifx_ERAY *eray)
{
    return &(*(Ifx_SRC *)0xF0038000u).ERAY.ERAY[0].TINT[1];
}


static inline __attribute__ ((always_inline)) IfxEray_WakeupChannel IfxEray_getWakeupPatternReceivedChannel(Ifx_ERAY *eray)
{
    IfxEray_WakeupChannel wakeupChannel = IfxEray_WakeupChannel_a;

    if (eray->SIR.B.WUPA == 1)
    {
        wakeupChannel = IfxEray_WakeupChannel_a;
    }
    else if (eray->SIR.B.WUPB == 1)
    {
        wakeupChannel = IfxEray_WakeupChannel_b;
    }

    return wakeupChannel;
}


static inline __attribute__ ((always_inline)) void IfxEray_initRxPin(const IfxEray_Rxd_In *rx, IfxPort_InputMode rxMode)
{
    IfxPort_setPinModeInput(rx->pin.port, rx->pin.pinIndex, rxMode);

    if (rx->nodeId == IfxEray_NodeId_a)
    {
        rx->module->CUST1.B.RISA = rx->select;
    }
    else
    {
        rx->module->CUST1.B.RISB = rx->select;
    }
}


static inline __attribute__ ((always_inline)) void IfxEray_initTxEnPin(const IfxEray_Txen_Out *txEn, IfxPort_OutputMode txEnMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(txEn->pin.port, txEn->pin.pinIndex, txEnMode, txEn->select);
    IfxPort_setPinPadDriver(txEn->pin.port, txEn->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxEray_initTxPin(const IfxEray_Txd_Out *tx, IfxPort_OutputMode txMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(tx->pin.port, tx->pin.pinIndex, txMode, tx->select);
    IfxPort_setPinPadDriver(tx->pin.port, tx->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxEray_receiveData(Ifx_ERAY *eray, boolean dataReceived)
{
    eray->OBCM.B.RDSS = dataReceived;
}


static inline __attribute__ ((always_inline)) void IfxEray_receiveHeader(Ifx_ERAY *eray, boolean headerReceived)
{
    eray->OBCM.B.RHSS = headerReceived;
}


static inline __attribute__ ((always_inline)) void IfxEray_sendData(Ifx_ERAY *eray, boolean dataTransfered)
{
    eray->IBCM.B.LDSH = dataTransfered;
}


static inline __attribute__ ((always_inline)) void IfxEray_sendHeader(Ifx_ERAY *eray, boolean headerTransfered)
{
    eray->IBCM.B.LHSH = headerTransfered;
}


static inline __attribute__ ((always_inline)) void IfxEray_setActiveCyclePairs(Ifx_ERAY *eray, uint8 numberOfCyclePairsForActive)
{
    eray->SUCC1.B.PTA = numberOfCyclePairsForActive;
}


static inline __attribute__ ((always_inline)) void IfxEray_setAutoDelayBuffers(Ifx_ERAY *eray)
{
    eray->CUST1.B.IEN = 1;
    eray->CUST1.B.OEN = 1;
    eray->CUST3.U = 0xFFFFFFFF;
}


static inline __attribute__ ((always_inline)) void IfxEray_setBaudrate(Ifx_ERAY *eray, IfxEray_Baudrate baudrate)
{
    eray->PRTC1.B.BRP = baudrate;
}


static inline __attribute__ ((always_inline)) void IfxEray_setBufferReconfigSecure(Ifx_ERAY *eray, uint8 secureValue)
{
    eray->MRC.B.SEC = secureValue;
}


static inline __attribute__ ((always_inline)) void IfxEray_setChannelAInitialOffsets(Ifx_ERAY *eray, uint8 channelAMicrotickInitialOffset, uint8 channelAMacrotickInitialOffset)
{
    eray->GTUC03.B.UIOA = channelAMicrotickInitialOffset;
    eray->GTUC03.B.MIOA = channelAMacrotickInitialOffset;
}


static inline __attribute__ ((always_inline)) void IfxEray_setChannelBInitialOffsets(Ifx_ERAY *eray, uint8 channelBMicrotickInitialOffset, uint8 channelBMacrotickInitialOffset)
{
    eray->GTUC03.B.UIOB = channelBMicrotickInitialOffset;
    eray->GTUC03.B.MIOB = channelBMacrotickInitialOffset;
}


static inline __attribute__ ((always_inline)) void IfxEray_setChannelsReceiveDelay(Ifx_ERAY *eray, uint8 channelAReceptionDelay, uint8 channelBReceptionDelay)
{
    eray->GTUC05.B.DCA = channelAReceptionDelay;
    eray->GTUC05.B.DCB = channelBReceptionDelay;
}


static inline __attribute__ ((always_inline)) void IfxEray_setClockCorrectionCycles(Ifx_ERAY *eray, uint8 clockCorrectionCyclesPassive, uint8 clockCorrectionCyclesHalt)
{
    Ifx_ERAY_SUCC3 succ3;
    succ3.U = 0;
    succ3.B.WCP = clockCorrectionCyclesPassive;
    succ3.B.WCF = clockCorrectionCyclesHalt;
    eray->SUCC3.U = succ3.U;
}


static inline __attribute__ ((always_inline)) void IfxEray_setClockSynchErrorHalt(Ifx_ERAY *eray, boolean clockSyncErrorHalt)
{
    eray->SUCC1.B.HCSE = clockSyncErrorHalt;
}


static inline __attribute__ ((always_inline)) void IfxEray_setClusterDriftValues(Ifx_ERAY *eray, uint8 clusterDrift, uint16 maxDriftOffset)
{
    eray->GTUC05.B.CDD = clusterDrift;
    eray->GTUC06.B.MOD = maxDriftOffset;
}


static inline __attribute__ ((always_inline)) void IfxEray_setClusterStartupDeviation(Ifx_ERAY *eray, uint16 acceptedStartupDeviation)
{
    eray->GTUC06.B.ASR = acceptedStartupDeviation;
}


static inline __attribute__ ((always_inline)) void IfxEray_setCollisionAvoidanceDuration(Ifx_ERAY *eray, uint8 collisionAvoidanceDuration)
{
    eray->PRTC1.B.CASM = collisionAvoidanceDuration;
}


static inline __attribute__ ((always_inline)) void IfxEray_setCycleDurationMacroticks(Ifx_ERAY *eray, uint16 macroticks)
{
    eray->GTUC02.B.MPC = macroticks;
}


static inline __attribute__ ((always_inline)) void IfxEray_setCycleDurationMicroticks(Ifx_ERAY *eray, uint32 microticks)
{
    eray->GTUC01.U = microticks;
}


static inline __attribute__ ((always_inline)) void IfxEray_setDecodingCorrectionValue(Ifx_ERAY *eray, uint8 decodingCorrection)
{
    eray->GTUC05.B.DEC = decodingCorrection;
}


static inline __attribute__ ((always_inline)) void IfxEray_setDynamicSlots(Ifx_ERAY *eray, uint8 dynamicSlotLength, uint16 dynamicSlotCount, IfxEray_IdleDynamicSlots idleDynamicSlots)
{
    eray->GTUC08.B.MSL = dynamicSlotLength;
    eray->GTUC08.B.NMS = dynamicSlotCount;
    eray->GTUC09.B.DSI = idleDynamicSlots;
}


static inline __attribute__ ((always_inline)) void IfxEray_setExternalCorrectionControl(Ifx_ERAY *eray, IfxEray_ExternalOffset externalOffset, IfxEray_ExternalRate externalRate)
{
    eray->GTUC11.B.EOCC = externalOffset;
    eray->GTUC11.B.ERCC = externalRate;
}


static inline __attribute__ ((always_inline)) void IfxEray_setExternalCorrectionValues(Ifx_ERAY *eray, IfxEray_ExternalOffsetCorrection externalOffsetCorrection, IfxEray_ExternalRateCorrection externalRateCorrection)
{
    eray->GTUC11.B.EOC = externalOffsetCorrection;
    eray->GTUC11.B.ERC = externalRateCorrection;
}


static inline __attribute__ ((always_inline)) void IfxEray_setFifoBufferStartIndex(Ifx_ERAY *eray, uint8 fifoBufferStartIndex)
{

    eray->MRC.B.FFB = fifoBufferStartIndex;
}


static inline __attribute__ ((always_inline)) void IfxEray_setFifoFilterConfigurations(Ifx_ERAY *eray, uint16 rejectedFrameId, uint8 filteredCycleNumber, boolean fifoNullFramesRejected, uint16 frameIdFilter)
{
    eray->FRF.B.FID = rejectedFrameId;
    eray->FRF.B.CYF = filteredCycleNumber;
    eray->FRF.B.RNF = fifoNullFramesRejected;
    eray->FRFM.B.MFID = frameIdFilter;
}


static inline __attribute__ ((always_inline)) void IfxEray_setFifoMessageBufferConfigurations(Ifx_ERAY *eray, IfxEray_ReceiveChannel receiveChannel, boolean staticFifoDisabled, uint8 fifoDepth)
{
    eray->FRF.B.CH = receiveChannel;
    eray->FRF.B.RSS = staticFifoDisabled;
    eray->FCL.U = fifoDepth;
}


static inline __attribute__ ((always_inline)) void IfxEray_setFirstDynamicBuffer(Ifx_ERAY *eray, uint8 firstDynamicBuffer)
{

    eray->MRC.B.FDB = firstDynamicBuffer;
}


static inline __attribute__ ((always_inline)) void IfxEray_setListenTimeOuts(Ifx_ERAY *eray, uint32 listenTimeOut, IfxEray_ListenTimeOutNoise listenTimeOutNoise)
{
    Ifx_ERAY_SUCC2 succ2;
    succ2.U = 0;
    succ2.B.LT = listenTimeOut;
    succ2.B.LTN = listenTimeOutNoise;
    eray->SUCC2.U = succ2.U;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMaxColdStartAttempts(Ifx_ERAY *eray, uint8 maxColdStartAttempts)
{
    eray->SUCC1.B.CSA = maxColdStartAttempts;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMaxCorrectionValues(Ifx_ERAY *eray, uint16 maxOffsetCorrection, uint16 maxRateCorrection)
{
    eray->GTUC10.B.MOC = maxOffsetCorrection;
    eray->GTUC10.B.MRC = maxRateCorrection;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMaxSynchFrames(Ifx_ERAY *eray, IfxEray_MaxSynchFrames maxSyncFrames)
{
    eray->GTUC02.B.SNM = maxSyncFrames;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMessageBufferCount(Ifx_ERAY *eray, uint8 numberOfMessageBuffers)
{
    eray->MRC.B.LCB = numberOfMessageBuffers - 1;
}


static inline __attribute__ ((always_inline)) void IfxEray_setMessageHandlerConfigurations(Ifx_ERAY *eray, uint8 staticFramepayload, uint8 latestTransmissionStart)
{
    Ifx_ERAY_MHDC mhdc;
    mhdc.U = 0;
    mhdc.B.SFDL = staticFramepayload;
    mhdc.B.SLT = latestTransmissionStart;
    eray->MHDC.U = mhdc.U;
}


static inline __attribute__ ((always_inline)) void IfxEray_setNetworkStartIdleTime(Ifx_ERAY *eray, uint16 networkStartIdleTime)
{
    eray->GTUC04.B.NIT = networkStartIdleTime;
}


static inline __attribute__ ((always_inline)) void IfxEray_setNetworkVectorLength(Ifx_ERAY *eray, uint32 networkVectorLength)
{
    eray->NEMC.U = networkVectorLength;
}


static inline __attribute__ ((always_inline)) void IfxEray_setNodeChannels(Ifx_ERAY *eray, boolean channelAConnectedNode, boolean channelBConnectedNode)
{
    eray->SUCC1.B.CCHA = channelAConnectedNode;
    eray->SUCC1.B.CCHB = channelBConnectedNode;
}


static inline __attribute__ ((always_inline)) void IfxEray_setOffsetCorrection(Ifx_ERAY *eray, uint16 correctionOffset)
{
    eray->GTUC04.B.OCS = correctionOffset;
}


static inline __attribute__ ((always_inline)) void IfxEray_setReceiveRequest(Ifx_ERAY *eray, boolean receiveRequested)
{
    eray->OBCR.B.REQ = receiveRequested;
}


static inline __attribute__ ((always_inline)) void IfxEray_setReceiveWakeupTimes(Ifx_ERAY *eray, uint8 receiveWakeupTestDuration, uint8 receiveWakeupIdleTime, uint8 receiveWakeupLowTime)
{
    eray->PRTC1.B.RXW = receiveWakeupTestDuration;
    eray->PRTC2.B.RXI = receiveWakeupIdleTime;
    eray->PRTC2.B.RXL = receiveWakeupLowTime;
}


static inline __attribute__ ((always_inline)) void IfxEray_setRxBufferNumber(Ifx_ERAY *eray, uint8 bufferIndex)
{
    eray->OBCR.B.OBRS = bufferIndex;
}


static inline __attribute__ ((always_inline)) void IfxEray_setSleepMode(Ifx_ERAY *eray, IfxEray_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    eray->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxEray_setSlotActionPoints(Ifx_ERAY *eray, uint8 staticActionPoint, uint8 dynamicActionPoint)
{
    eray->GTUC09.B.MAPO = dynamicActionPoint;
    eray->GTUC09.B.APO = staticActionPoint;
}


static inline __attribute__ ((always_inline)) void IfxEray_setStaticSlots(Ifx_ERAY *eray, uint16 staticSlotLength, uint16 staticSlotsCount)
{
    eray->GTUC07.B.SSL = staticSlotLength;
    eray->GTUC07.B.NSS = staticSlotsCount;
}


static inline __attribute__ ((always_inline)) void IfxEray_setStrobePosition(Ifx_ERAY *eray, IfxEray_StrobePosition strobePosition)
{
    eray->PRTC1.B.SPP = strobePosition;
}


static inline __attribute__ ((always_inline)) void IfxEray_setSymbolChannels(Ifx_ERAY *eray, boolean channelASymbolTransmitted, boolean channelBSymbolTransmitted)
{
    eray->SUCC1.B.MTSA = channelASymbolTransmitted;
    eray->SUCC1.B.MTSB = channelBSymbolTransmitted;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmissionSlotMode(Ifx_ERAY *eray, IfxEray_TransmissionSlotMode transmissionSlotMode)
{
    eray->SUCC1.B.TSM = transmissionSlotMode;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmissionStartTime(Ifx_ERAY *eray, uint16 transmissionStartTime)
{
    eray->PRTC1.B.TSST = transmissionStartTime;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmitRequest(Ifx_ERAY *eray, boolean transferRequested)
{
    eray->IBCM.B.STXRH = transferRequested;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmitWakeupTimes(Ifx_ERAY *eray, uint8 transmitWakeupRepetitions, uint8 transmitWakeupIdleTime, uint8 transmitWakeupLowTime)
{
    eray->PRTC1.B.RWP = transmitWakeupRepetitions;
    eray->PRTC2.B.TXI = transmitWakeupIdleTime;
    eray->PRTC2.B.TXL = transmitWakeupLowTime;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTransmittedFrames(Ifx_ERAY *eray, boolean startupFrameTransmitted, boolean synchFrameTransmitted)
{
    eray->SUCC1.B.TXST = startupFrameTransmitted;
    eray->SUCC1.B.TXSY = synchFrameTransmitted;
}


static inline __attribute__ ((always_inline)) void IfxEray_setTxBufferNumber(Ifx_ERAY *eray, uint8 bufferIndex)
{
    eray->IBCR.B.IBRH = bufferIndex;
}


static inline __attribute__ ((always_inline)) void IfxEray_setViewData(Ifx_ERAY *eray, boolean swapRequested)
{
    eray->OBCR.B.VIEW = swapRequested;
}


static inline __attribute__ ((always_inline)) void IfxEray_setWakeupPatternChannel(Ifx_ERAY *eray, IfxEray_WakeupChannel wakeupPatternChannel)
{
    eray->SUCC1.B.WUCS = wakeupPatternChannel;
}


static inline __attribute__ ((always_inline)) void IfxEray_waitForPocState(Ifx_ERAY *eray, IfxEray_PocState pocState)
{
    while (eray->CCSV.B.POCS != (uint8)pocState)
    {}
}
# 502 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h" 2
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
# 503 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h" 2

# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 1
# 109 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
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
# 505 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h" 2
# 514 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
typedef struct
{
    uint32 microticksPerCycle;
} IfxEray_Eray_Gtu01Config;



typedef struct
{
    uint16 macroticksPerCycle;
    uint8 maxSyncFrames;
} IfxEray_Eray_Gtu02Config;



typedef struct
{
    uint8 channelAMicrotickInitialOffset;
    uint8 channelBMicrotickInitialOffset;
    uint8 channelAMacrotickInitialOffset;
    uint8 channelBMacrotickInitialOffset;
} IfxEray_Eray_Gtu03Config;



typedef struct
{
    uint16 networkStartIdleTime;
    uint16 correctionOffset;
} IfxEray_Eray_Gtu04Config;



typedef struct
{
    uint8 channelAReceptionDelay;
    uint8 channelBReceptionDelay;
    uint8 clusterDrift;
    uint8 decodingCorrection;
} IfxEray_Eray_Gtu05Config;



typedef struct
{
    uint16 acceptedStartupDeviation;
    uint16 maxDriftOffset;
} IfxEray_Eray_Gtu06Config;



typedef struct
{
    uint16 staticSlotLength;
    uint16 staticSlotsCount;
} IfxEray_Eray_Gtu07Config;



typedef struct
{
    uint8 dynamicSlotLength;
    uint16 dynamicSlotCount;
} IfxEray_Eray_Gtu08Config;



typedef struct
{
    uint8 staticActionPoint;
    uint8 dynamicActionPoint;
    IfxEray_IdleDynamicSlots idleDynamicSlots;
} IfxEray_Eray_Gtu09Config;



typedef struct
{
    uint16 maxOffsetCorrection;
    uint16 maxRateCorrection;
} IfxEray_Eray_Gtu10Config;



typedef struct
{
    IfxEray_ExternalOffsetCorrection externalOffsetCorrection;
    IfxEray_ExternalRateCorrection externalRateCorrection;
    IfxEray_ExternalOffset externalOffset;
    IfxEray_ExternalRate externalRate;
} IfxEray_Eray_Gtu11Config;







typedef struct
{
    IfxEray_Eray_Gtu01Config gtu01Config;
    IfxEray_Eray_Gtu02Config gtu02Config;
    IfxEray_Eray_Gtu03Config gtu03Config;
    IfxEray_Eray_Gtu04Config gtu04Config;
    IfxEray_Eray_Gtu05Config gtu05Config;
    IfxEray_Eray_Gtu06Config gtu06Config;
    IfxEray_Eray_Gtu07Config gtu07Config;
    IfxEray_Eray_Gtu08Config gtu08Config;
    IfxEray_Eray_Gtu09Config gtu09Config;
    IfxEray_Eray_Gtu10Config gtu10Config;
    IfxEray_Eray_Gtu11Config gtu11Config;
} IfxEray_Eray_GTUConfig;



typedef struct
{
    IfxPort_InputMode rxInMode;
    IfxPort_OutputMode txOutMode;
    IfxPort_PadDriver pinDriver;
    IfxPort_OutputMode txEnOutMode;
    const IfxEray_Rxd_In *rxIn;
    const IfxEray_Txd_Out *txOut;
    const IfxEray_Txen_Out *txEnOut;
} IfxEray_Eray_NodeA;



typedef struct
{
    IfxPort_InputMode rxInMode;
    IfxPort_OutputMode txOutMode;
    IfxPort_PadDriver pinDriver;
    IfxPort_OutputMode txEnOutMode;
    const IfxEray_Rxd_In *rxIn;
    const IfxEray_Txd_Out *txOut;
    const IfxEray_Txen_Out *txEnOut;
} IfxEray_Eray_NodeB;



typedef struct
{
    uint8 collisionAvoidanceDuration;
    IfxEray_StrobePosition strobePosition;
    IfxEray_Baudrate baudrate;
    uint8 receiveWakeupTestDuration;
    uint8 transmitWakeupRepetitions;
    uint16 transmissionStartTime;
} IfxEray_Eray_Prtc1Control;



typedef struct
{
    uint8 receiveWakeupIdleTime;
    uint8 receiveWakeupLowTime;
    uint8 transmitWakeupIdleTime;
    uint8 transmitWakeupLowTime;
} IfxEray_Eray_Prtc2Control;



typedef struct
{
    boolean startupFrameTransmitted;
    boolean syncFrameTransmitted;
    uint8 maxColdStartAttempts;
    uint8 numberOfCyclePairsForActive;
    IfxEray_WakeupChannel wakeupPatternChannel;
    IfxEray_TransmissionSlotMode transmissionSlotMode;
    boolean clockSyncErrorHalt;
    boolean channelASymbolTransmitted;
    boolean channelBSymbolTransmitted;
    boolean channelAConnectedNode;
    boolean channelBConnectedNode;
} IfxEray_Eray_Succ1Config;



typedef struct
{
    uint32 listenTimeOut;
    IfxEray_ListenTimeOutNoise listenTimeOutNoise;
} IfxEray_Eray_Succ2Config;



typedef struct
{
    uint8 clockCorrectionCyclesPassive;
    uint8 clockCorrectionCyclesHalt;
} IfxEray_Eray_Succ3Config;







typedef struct
{
    uint32 networkVectorLength;
    uint8 staticFramepayload;
    uint8 latestTransmissionStart;
    IfxEray_Eray_GTUConfig gtuConfig;
    IfxEray_Eray_Succ1Config succ1Config;
    IfxEray_Eray_Succ2Config succ2Config;
    IfxEray_Eray_Succ3Config succ3Config;
    IfxEray_Eray_Prtc1Control prtc1Control;
    IfxEray_Eray_Prtc2Control prtc2Control;
} IfxEray_Eray_ControllerConfig;



typedef struct
{
    uint16 int0Priority;
    uint16 int1Priority;
    uint16 tint0Priority;
    uint16 tint1Priority;
    uint16 ndat0Priority;
    uint16 ndat1Priority;
    uint16 mbsc0Priority;
    uint16 mbsc1Priority;
    uint16 ibusyPriority;
    uint16 obusyPriority;
    IfxSrc_Tos int0IsrProvider;
    IfxSrc_Tos int1IsrProvider;
    IfxSrc_Tos tint0IsrProvider;
    IfxSrc_Tos tint1IsrProvider;
    IfxSrc_Tos ndat0IsrProvider;
    IfxSrc_Tos ndat1IsrProvider;
    IfxSrc_Tos mbsc0IsrProvider;
    IfxSrc_Tos mbsc1IsrProvider;
    IfxSrc_Tos ibusyIsrProvider;
    IfxSrc_Tos obusyIsrProvider;
} IfxEray_Eray_Interrupt;



typedef struct
{
    uint8 firstDynamicBuffer;
    uint8 numberOfMessageBuffers;
    uint32 fifoBufferStartIndex;
    uint8 fifoDepth;
    uint16 frameIdFilter;
    IfxEray_ReceiveChannel receiveChannel;
    uint16 rejectedFrameId;
    uint8 filteredCycleNumber;
    boolean staticFifoDisabled;
    boolean fifoNullFramesRejected;
    boolean bufferReconfigEnabled;
    boolean fifoConfigured;
    IfxEray_Header *header[128];
    IfxEray_SlotConfig *slotControl[128];
    uint32 *data[128];
} IfxEray_Eray_MessageRAMConfig;







typedef struct
{
    const IfxEray_Eray_NodeA *nodeAPins;
    const IfxEray_Eray_NodeB *nodeBPins;
} IfxEray_Eray_Pins;







typedef struct
{
    Ifx_ERAY *eray;
} IfxEray_Eray;



typedef struct
{
    IfxEray_Header *header;
    uint32 data[64];
    IfxEray_SlotConfig *slotControl;
} IfxEray_Eray_BufferReconfig;



typedef struct
{
    Ifx_ERAY *module;
    IfxEray_Eray_Interrupt interrupt;
} IfxEray_Eray_Config;



typedef struct
{
    IfxEray_Eray_MessageRAMConfig messageRAMConfig;
    IfxEray_Eray_ControllerConfig controllerConfig;
    const IfxEray_Eray_Pins *pins;
} IfxEray_Eray_NodeConfig;



typedef struct
{
    boolean headerReceived;
    boolean dataReceived;
    boolean swapRequested;
    boolean receiveRequested;
    uint8 bufferIndex;
} IfxEray_Eray_ReceiveControl;



typedef struct
{
    IfxEray_ReceivedHeader header;
    uint32 data[64];
} IfxEray_Eray_ReceivedFrame;



typedef struct
{
    boolean headerTransfered;
    boolean dataTransfered;
    boolean transferRequested;
    uint8 bufferIndex;
} IfxEray_Eray_TransmitControl;
# 868 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_deInitModule(IfxEray_Eray *eray);
# 882 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_initModule(IfxEray_Eray *eray, const IfxEray_Eray_Config *config);
# 892 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_initModuleConfig(IfxEray_Eray_Config *config, Ifx_ERAY *eray);
# 911 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_Node_init(IfxEray_Eray *eray, const IfxEray_Eray_NodeConfig *config);
# 920 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_Node_initConfig(IfxEray_Eray_NodeConfig *config);
# 938 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_allowColdStart(IfxEray_Eray *eray);
# 948 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_bufferReconfig(IfxEray_Eray *eray, IfxEray_Eray_BufferReconfig *reconfigBuffer);






static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_changePocState(IfxEray_Eray *eray, IfxEray_PocCommand PocCommand);







static inline __attribute__ ((always_inline)) void IfxEray_Eray_readData(IfxEray_Eray *eray, uint32 *data, uint8 payloadLength);
# 974 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_readFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceivedFrame *frame, Ifx_SizeT maxPayloadLength);
# 983 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_setPocAllSlots(IfxEray_Eray *eray);
# 992 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_startCommunication(IfxEray_Eray *eray);
# 1002 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_wakeUpChannel(IfxEray_Eray *eray, IfxEray_Channel channel);
# 1011 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_wakeUpCluster(IfxEray_Eray *eray);
# 1022 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_writeData(IfxEray_Eray *eray, uint32 *data, uint8 payloadLength);
# 1036 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_receiveFifoFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceiveControl *config);
# 1046 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_receiveFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceiveControl *config);
# 1056 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
extern void IfxEray_Eray_transmitFrame(IfxEray_Eray *eray, IfxEray_Eray_TransmitControl *transmitControl);
# 1071 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) IfxEray_PocState IfxEray_Eray_getPocState(IfxEray_Eray *eray);
# 1080 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) IfxEray_WakeupChannel IfxEray_Eray_getWakeupPatternReceivedChannel(IfxEray_Eray *eray);
# 1096 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_clearErrorFlag(IfxEray_Eray *eray, IfxEray_ClearErrorFlag errorFlag);






static inline __attribute__ ((always_inline)) void IfxEray_Eray_clearStatusFlag(IfxEray_Eray *eray, IfxEray_ClearStatusFlag statusFlag);





static inline __attribute__ ((always_inline)) Ifx_ERAY_EIR IfxEray_Eray_getErrorInterrupts(IfxEray_Eray *eray);






static inline __attribute__ ((always_inline)) uint8 IfxEray_Eray_getMessageBufferInterruptStatus(IfxEray_Eray *eray, uint8 messageBuffer);






static inline __attribute__ ((always_inline)) uint8 IfxEray_Eray_getNewDataInterruptStatus(IfxEray_Eray *eray, uint8 ndat);





static inline __attribute__ ((always_inline)) Ifx_ERAY_SIR IfxEray_Eray_getStatusInterrupts(IfxEray_Eray *eray);
# 1140 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_setMessageBufferInterruptDestination(IfxEray_Eray *eray, uint8 messageBuffer, uint8 messageBufferDestination);
# 1151 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.h"
static inline __attribute__ ((always_inline)) void IfxEray_Eray_setNewDataInterruptDestination(IfxEray_Eray *eray, uint8 ndat, uint8 ndatDestination);







static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_allowColdStart(IfxEray_Eray *eray)
{
    return IfxEray_changePocState(eray->eray, IfxEray_PocCommand_coldStart);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_bufferReconfig(IfxEray_Eray *eray, IfxEray_Eray_BufferReconfig *reconfigBuffer)
{
    IfxEray_setSlot(eray->eray, reconfigBuffer->header, reconfigBuffer->data, reconfigBuffer->slotControl);
}


static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_changePocState(IfxEray_Eray *eray, IfxEray_PocCommand PocCommand)
{
    boolean status = IfxEray_changePocState(eray->eray, PocCommand);
    return status;
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_clearErrorFlag(IfxEray_Eray *eray, IfxEray_ClearErrorFlag errorFlag)
{
    IfxEray_clearErrorFlag(eray->eray, errorFlag);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_clearStatusFlag(IfxEray_Eray *eray, IfxEray_ClearStatusFlag statusFlag)
{
    IfxEray_clearStatusFlag(eray->eray, statusFlag);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_deInitModule(IfxEray_Eray *eray)
{

    IfxEray_resetModule(eray->eray);
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_EIR IfxEray_Eray_getErrorInterrupts(IfxEray_Eray *eray)
{
    Ifx_ERAY_EIR interruptFlags;
    interruptFlags = IfxEray_getErrorInterrupts(eray->eray);
    return interruptFlags;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_Eray_getMessageBufferInterruptStatus(IfxEray_Eray *eray, uint8 messageBuffer)
{
    uint8 messageBufferInterrupt = IfxEray_getMessageBufferInterruptStatus(eray->eray, messageBuffer);
    return messageBufferInterrupt;
}


static inline __attribute__ ((always_inline)) uint8 IfxEray_Eray_getNewDataInterruptStatus(IfxEray_Eray *eray, uint8 ndat)
{
    uint8 ndatInterrupt = IfxEray_getNewDataInterruptStatus(eray->eray, ndat);
    return ndatInterrupt;
}


static inline __attribute__ ((always_inline)) IfxEray_PocState IfxEray_Eray_getPocState(IfxEray_Eray *eray)
{
    return IfxEray_getPocState(eray->eray);
}


static inline __attribute__ ((always_inline)) Ifx_ERAY_SIR IfxEray_Eray_getStatusInterrupts(IfxEray_Eray *eray)
{
    Ifx_ERAY_SIR statusInterrupts = IfxEray_getStatusInterrupts(eray->eray);
    return statusInterrupts;
}


static inline __attribute__ ((always_inline)) IfxEray_WakeupChannel IfxEray_Eray_getWakeupPatternReceivedChannel(IfxEray_Eray *eray)
{
    IfxEray_WakeupChannel rxWakeupChannel;
    rxWakeupChannel = IfxEray_getWakeupPatternReceivedChannel(eray->eray);

    return rxWakeupChannel;
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_readData(IfxEray_Eray *eray, uint32 *data, uint8 payloadLength)
{
    IfxEray_readData(eray->eray, data, payloadLength);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_readFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceivedFrame *frame, Ifx_SizeT maxPayloadLength)
{
    IfxEray_readFrame(eray->eray, &(frame->header), frame->data, maxPayloadLength);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_setMessageBufferInterruptDestination(IfxEray_Eray *eray, uint8 messageBuffer, uint8 messageBufferDestination)
{
    IfxEray_setMessageBufferInterruptDestination(eray->eray, messageBuffer, messageBufferDestination);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_setNewDataInterruptDestination(IfxEray_Eray *eray, uint8 ndat, uint8 ndatDestination)
{
    IfxEray_setNewDataInterruptDestination(eray->eray, ndat, ndatDestination);
}


static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_setPocAllSlots(IfxEray_Eray *eray)
{
    return IfxEray_changePocState(eray->eray, IfxEray_PocCommand_allSlots);
}


static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_startCommunication(IfxEray_Eray *eray)
{
    return IfxEray_changePocState(eray->eray, IfxEray_PocCommand_run);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_wakeUpChannel(IfxEray_Eray *eray, IfxEray_Channel channel)
{
    Ifx_ERAY *eraySFR = eray->eray;
    boolean result = IfxEray_changePocState(eraySFR, IfxEray_PocCommand_config);

    if (result == 1)
    {
        eraySFR->SUCC1.B.WUCS = channel;
        IfxEray_setPocReady(eray->eray);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxEray_Eray_wakeUpCluster(IfxEray_Eray *eray)
{
    return IfxEray_changePocState(eray->eray, IfxEray_PocCommand_wakeup);
}


static inline __attribute__ ((always_inline)) void IfxEray_Eray_writeData(IfxEray_Eray *eray, uint32 *data, uint8 payloadLength)
{
    IfxEray_writeData(eray->eray, data, payloadLength);
}
# 30 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.c" 2
# 1 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h" 1
# 213 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxMtu_cfg.h" 1
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxMtu_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxMtu_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxMtu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxMtu_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxMtu_regdef.h"
typedef struct _Ifx_MTU_ACCEN0_Bits
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
} Ifx_MTU_ACCEN0_Bits;


typedef struct _Ifx_MTU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_MTU_ACCEN1_Bits;


typedef struct _Ifx_MTU_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int Resvd : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_MTU_CLC_Bits;


typedef struct _Ifx_MTU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_MTU_ID_Bits;


typedef struct _Ifx_MTU_MEMMAP_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CPU2DxMAP : 2;
    unsigned int reserved_3 : 1;
    unsigned int CPU2PxMAP : 2;
    unsigned int reserved_6 : 1;
    unsigned int CPU1DxMAP : 2;
    unsigned int reserved_9 : 1;
    unsigned int CPU1PxMAP : 2;
    unsigned int reserved_12 : 3;
    unsigned int CPU0PCMAP : 1;
    unsigned int reserved_16 : 1;
    unsigned int CPU0PTMAP : 1;
    unsigned int CPU0DxMAP : 2;
    unsigned int reserved_20 : 12;
} Ifx_MTU_MEMMAP_Bits;


typedef struct _Ifx_MTU_MEMSTAT0_Bits
{
    unsigned int CPU2DSAIU : 1;
    unsigned int reserved_1 : 1;
    unsigned int CPU2DTAIU : 1;
    unsigned int CPU2PSAIU : 1;
    unsigned int reserved_4 : 1;
    unsigned int CPU2PTAIU : 1;
    unsigned int CPU1DSAIU : 1;
    unsigned int reserved_7 : 1;
    unsigned int CPU1DTAIU : 1;
    unsigned int CPU1PSAIU : 1;
    unsigned int reserved_10 : 1;
    unsigned int CPU1PTAIU : 1;
    unsigned int reserved_12 : 2;
    unsigned int CPU0DSAIU : 1;
    unsigned int reserved_15 : 1;
    unsigned int CPU0PSAIU : 1;
    unsigned int CPU0PTAIU : 1;
    unsigned int reserved_18 : 1;
    unsigned int CPU0DxAIU : 1;
    unsigned int CPU1DS2AIU : 1;
    unsigned int CPU2DS2AIU : 1;
    unsigned int reserved_22 : 1;
    unsigned int HSMCAIU : 1;
    unsigned int HSMTAIU : 1;
    unsigned int HSMRAIU : 1;
    unsigned int FSI0AIU : 1;
    unsigned int CPU0DS2AIU : 1;
    unsigned int reserved_28 : 4;
} Ifx_MTU_MEMSTAT0_Bits;


typedef struct _Ifx_MTU_MEMSTAT1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_MTU_MEMSTAT1_Bits;


typedef struct _Ifx_MTU_MEMSTAT2_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_MTU_MEMSTAT2_Bits;


typedef struct _Ifx_MTU_MEMTEST0_Bits
{
    unsigned int CPU2XEN : 6;
    unsigned int CPU1XEN : 6;
    unsigned int LMUEN : 1;
    unsigned int MMCDSEN : 1;
    unsigned int CPU0DSEN : 1;
    unsigned int Res : 1;
    unsigned int CPU0PSEN : 1;
    unsigned int CPU0PTEN : 1;
    unsigned int reserved_18 : 1;
    unsigned int CPU0DTEN : 1;
    unsigned int CPUXDS2EN : 2;
    unsigned int ETHEN : 1;
    unsigned int reserved_23 : 3;
    unsigned int FSI0EN : 1;
    unsigned int CPU0DS2EN : 1;
    unsigned int GTMFEN : 1;
    unsigned int GTMM0EN : 1;
    unsigned int GTMM1EN : 1;
    unsigned int GTM1AEN : 1;
} Ifx_MTU_MEMTEST0_Bits;


typedef struct _Ifx_MTU_MEMTEST1_Bits
{
    unsigned int GTM1BEN : 1;
    unsigned int GTM2EN : 1;
    unsigned int PSI5EN : 1;
    unsigned int reserved_3 : 1;
    unsigned int MCAN0EN : 1;
    unsigned int MCAN1EN : 1;
    unsigned int ERAY0OEN : 1;
    unsigned int ERAY0TEN : 1;
    unsigned int ERAY0MEN : 1;
    unsigned int ERAY1XEN : 3;
    unsigned int STBY1EN : 1;
    unsigned int MCDSEN : 1;
    unsigned int EMEML0EN : 1;
    unsigned int EMEML1EN : 1;
    unsigned int EMEML2EN : 1;
    unsigned int EMEML3EN : 1;
    unsigned int EMEMLXEN : 12;
    unsigned int EMEMUXEN : 2;
} Ifx_MTU_MEMTEST1_Bits;


typedef struct _Ifx_MTU_MEMTEST2_Bits
{
    unsigned int EMEMUxEN : 14;
    unsigned int CIF0EN : 1;
    unsigned int DAMEN : 1;
    unsigned int CIFxEN : 2;
    unsigned int STBY2EN : 1;
    unsigned int DMAEN : 1;
    unsigned int XTM0EN : 1;
    unsigned int XTM1EN : 1;
    unsigned int FFT0EN : 1;
    unsigned int FFT1EN : 1;
    unsigned int reserved_24 : 8;
} Ifx_MTU_MEMTEST2_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_ACCEN0_Bits B;
} Ifx_MTU_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_ACCEN1_Bits B;
} Ifx_MTU_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_CLC_Bits B;
} Ifx_MTU_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_ID_Bits B;
} Ifx_MTU_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMMAP_Bits B;
} Ifx_MTU_MEMMAP;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMSTAT0_Bits B;
} Ifx_MTU_MEMSTAT0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMSTAT1_Bits B;
} Ifx_MTU_MEMSTAT1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMSTAT2_Bits B;
} Ifx_MTU_MEMSTAT2;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMTEST0_Bits B;
} Ifx_MTU_MEMTEST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMTEST1_Bits B;
} Ifx_MTU_MEMTEST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_MTU_MEMTEST2_Bits B;
} Ifx_MTU_MEMTEST2;
# 334 "./0_Src/4_McHal/Tricore/_Reg/IfxMtu_regdef.h"
typedef volatile struct _Ifx_MTU
{
    Ifx_MTU_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_MTU_ID ID;
    unsigned char reserved_C[4];
    Ifx_MTU_MEMTEST0 MEMTEST0;
    Ifx_MTU_MEMTEST1 MEMTEST1;
    Ifx_MTU_MEMTEST2 MEMTEST2;
    Ifx_MTU_MEMMAP MEMMAP;
    unsigned char reserved_20[24];
    Ifx_MTU_MEMSTAT0 MEMSTAT0;
    Ifx_MTU_MEMSTAT1 MEMSTAT1;
    Ifx_MTU_MEMSTAT2 MEMSTAT2;
    unsigned char reserved_44[180];
    Ifx_MTU_ACCEN1 ACCEN1;
    Ifx_MTU_ACCEN0 ACCEN0;
    unsigned char reserved_100[1];
} Ifx_MTU;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxMtu_reg.h" 2
# 42 "./0_Src/4_McHal/Tricore/_Impl/IfxMtu_cfg.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxMc_reg.h" 1
# 297 "./0_Src/4_McHal/Tricore/_Reg/IfxMc_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxMc_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxMc_regdef.h"
typedef struct _Ifx_MC_CONFIG0_Bits
{
    volatile unsigned short ACCSTYPE : 8;
    volatile unsigned short reserved_8 : 4;
    volatile unsigned short NUMACCS : 4;
} Ifx_MC_CONFIG0_Bits;


typedef struct _Ifx_MC_CONFIG1_Bits
{
    volatile unsigned short ACCSPAT : 8;
    volatile unsigned short SELFASTB : 4;
    volatile unsigned short AG_MOD : 4;
} Ifx_MC_CONFIG1_Bits;


typedef struct _Ifx_MC_ECCD_Bits
{
    volatile unsigned short SERR : 1;
    volatile unsigned short CERR : 1;
    volatile unsigned short UERR : 1;
    volatile unsigned short AERR : 1;
    volatile unsigned short TRC : 1;
    volatile unsigned short VAL : 5;
    volatile unsigned short reserved_10 : 1;
    volatile unsigned short CENE : 1;
    volatile unsigned short UENE : 1;
    volatile unsigned short AENE : 1;
    volatile unsigned short ECE : 1;
    volatile unsigned short EOV : 1;
} Ifx_MC_ECCD_Bits;


typedef struct _Ifx_MC_ECCS_Bits
{
    volatile unsigned short CENE : 1;
    volatile unsigned short UENE : 1;
    volatile unsigned short AENE : 1;
    volatile unsigned short ECE : 1;
    volatile unsigned short TRE : 1;
    volatile unsigned short BFLE : 1;
    volatile unsigned short SFLE : 2;
    volatile unsigned short ECCMAP : 2;
    volatile unsigned short TC_WAY_SEL : 2;
    volatile unsigned short reserved_12 : 4;
} Ifx_MC_ECCS_Bits;


typedef struct _Ifx_MC_ETRR_Bits
{
    volatile unsigned short ADDR : 13;
    volatile unsigned short MBI : 3;
} Ifx_MC_ETRR_Bits;


typedef struct _Ifx_MC_MCONTROL_Bits
{
    volatile unsigned short START : 1;
    volatile unsigned short RESUME : 1;
    volatile unsigned short ESTF : 1;
    volatile unsigned short DIR : 1;
    volatile unsigned short DINIT : 1;
    volatile unsigned short RCADR : 1;
    volatile unsigned short ROWTOG : 1;
    volatile unsigned short BITTOG : 1;
    volatile unsigned short GP_BASE : 1;
    volatile unsigned short FAILDMP : 1;
    volatile unsigned short Res4 : 5;
    volatile unsigned short reserved_15 : 1;
} Ifx_MC_MCONTROL_Bits;


typedef struct _Ifx_MC_MSTATUS_Bits
{
    volatile unsigned short DONE : 1;
    volatile unsigned short FAIL : 1;
    volatile unsigned short FDA : 1;
    volatile unsigned short SFAIL : 1;
    volatile unsigned short reserved_4 : 12;
} Ifx_MC_MSTATUS_Bits;


typedef struct _Ifx_MC_RANGE_Bits
{
    volatile unsigned short ADDR : 15;
    volatile unsigned short RAEN : 1;
} Ifx_MC_RANGE_Bits;


typedef struct _Ifx_MC_RDBFL_Bits
{
    volatile unsigned short WDATA : 16;
} Ifx_MC_RDBFL_Bits;


typedef struct _Ifx_MC_REVID_Bits
{
    volatile unsigned short REV_ID : 16;
} Ifx_MC_REVID_Bits;







typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_CONFIG0_Bits B;
} Ifx_MC_CONFIG0;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_CONFIG1_Bits B;
} Ifx_MC_CONFIG1;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_ECCD_Bits B;
} Ifx_MC_ECCD;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_ECCS_Bits B;
} Ifx_MC_ECCS;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_ETRR_Bits B;
} Ifx_MC_ETRR;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_MCONTROL_Bits B;
} Ifx_MC_MCONTROL;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_MSTATUS_Bits B;
} Ifx_MC_MSTATUS;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_RANGE_Bits B;
} Ifx_MC_RANGE;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_RDBFL_Bits B;
} Ifx_MC_RDBFL;


typedef union
{
    unsigned short U;
    signed short I;
    Ifx_MC_REVID_Bits B;
} Ifx_MC_REVID;
# 239 "./0_Src/4_McHal/Tricore/_Reg/IfxMc_regdef.h"
typedef volatile struct _Ifx_MC
{
    Ifx_MC_CONFIG0 CONFIG0;
    Ifx_MC_CONFIG1 CONFIG1;
    Ifx_MC_MCONTROL MCONTROL;
    Ifx_MC_MSTATUS MSTATUS;
    Ifx_MC_RANGE RANGE;
    unsigned char reserved_A[2];
    Ifx_MC_REVID REVID;
    Ifx_MC_ECCS ECCS;
    Ifx_MC_ECCD ECCD;
    Ifx_MC_ETRR ETRR[5];
    unsigned char reserved_1C[132];
    Ifx_MC_RDBFL RDBFL[40];
    unsigned char reserved_F0[16];
} Ifx_MC;
# 298 "./0_Src/4_McHal/Tricore/_Reg/IfxMc_reg.h" 2
# 43 "./0_Src/4_McHal/Tricore/_Impl/IfxMtu_cfg.h" 2
# 66 "./0_Src/4_McHal/Tricore/_Impl/IfxMtu_cfg.h"
typedef enum
{
    IfxMtu_MbistSel_none = -1,
    IfxMtu_MbistSel_miniMcds = 13,
    IfxMtu_MbistSel_cpu0Dspr = 14,
    IfxMtu_MbistSel_cpu0Pspr = 16,
    IfxMtu_MbistSel_cpu0Ptag = 17,
    IfxMtu_MbistSel_ethermac = 22,
    IfxMtu_MbistSel_mod1 = 23,
    IfxMtu_MbistSel_mod2 = 24,
    IfxMtu_MbistSel_mod3 = 25,
    IfxMtu_MbistSel_mod4 = 26,
    IfxMtu_MbistSel_mcan = 36,
    IfxMtu_MbistSel_mcan1 = 37,
    IfxMtu_MbistSel_erayObf = 38,
    IfxMtu_MbistSel_erayIbfTbf = 39,
    IfxMtu_MbistSel_erayMbf = 40,
    IfxMtu_MbistSel_mcds = 45,
    IfxMtu_MbistSel_emem0 = 46,
    IfxMtu_MbistSel_emem1 = 47,
    IfxMtu_MbistSel_emem2 = 48,
    IfxMtu_MbistSel_emem3 = 49,
    IfxMtu_MbistSel_emem4 = 50,
    IfxMtu_MbistSel_emem5 = 51,
    IfxMtu_MbistSel_emem6 = 52,
    IfxMtu_MbistSel_emem7 = 53,
    IfxMtu_MbistSel_lmu = 79,
    IfxMtu_MbistSel_ememXtm0 = 84,
    IfxMtu_MbistSel_ememXtm1 = 85,
    IfxMtu_MbistSel_fft0 = 86,
    IfxMtu_MbistSel_fft1 = 87
} IfxMtu_MbistSel;







typedef struct
{
    uint8 numBlocks;
    uint16 dataSize;
    uint8 eccSize;
    uint8 eccInvPos0;
    uint8 eccInvPos1;
    uint32 mbistDelay;
} IfxMtu_SramItem;





extern const IfxMtu_SramItem IfxMtu_sramTable[(88)];
# 214 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxMc_bf.h" 1
# 215 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h" 2
# 231 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
static inline __attribute__ ((always_inline)) void IfxMtu_enableModule(void);




static inline __attribute__ ((always_inline)) boolean IfxMtu_isModuleEnabled(void);
# 257 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern void IfxMtu_disableMbistShell(IfxMtu_MbistSel mbistSel);
# 283 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern void IfxMtu_enableMbistShell(IfxMtu_MbistSel mbistSel);







extern boolean IfxMtu_isAutoInitRunning(IfxMtu_MbistSel mbistSel);
# 310 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern void IfxMtu_clearSram(IfxMtu_MbistSel mbistSel);
# 320 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern void IfxMtu_clearSramContinue(IfxMtu_MbistSel mbistSel);
# 332 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern void IfxMtu_clearSramStart(IfxMtu_MbistSel mbistSel);
# 342 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern boolean IfxMtu_isMbistDone(IfxMtu_MbistSel mbistSel);
# 352 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern void IfxMtu_readSramAddress(IfxMtu_MbistSel mbistSel, uint16 sramAddress);
# 363 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern uint8 IfxMtu_runCheckerBoardTest(IfxMtu_MbistSel mbistSel, uint8 rangeSel, uint8 rangeAddrUp, uint8 rangeAddrLow, uint16 *errorAddr, uint32 numberRedundancyLines);
# 374 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern uint8 IfxMtu_runMarchUTest(IfxMtu_MbistSel mbistSel, uint8 rangeSel, uint8 rangeAddrUp, uint8 rangeAddrLow, uint16 *errorAddr);
# 392 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern uint8 IfxMtu_runNonDestructiveInversionTest(IfxMtu_MbistSel mbistSel, uint8 rangeSel, uint8 rangeAddrUp, uint8 rangeAddrLow, uint16 *errorAddr);






extern void IfxMtu_writeSramAddress(IfxMtu_MbistSel mbistSel, uint16 sramAddress);
# 418 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern void IfxMtu_clearErrorTracking(IfxMtu_MbistSel mbistSel);
# 428 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern void IfxMtu_enableErrorTracking(IfxMtu_MbistSel mbistSel, boolean enable);
# 441 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern uint32 IfxMtu_getSystemAddress(IfxMtu_MbistSel mbistSel, Ifx_MC_ETRR trackedSramAddress);
# 491 "./0_Src/4_McHal/Tricore/Mtu/Std/IfxMtu.h"
extern uint8 IfxMtu_getTrackedSramAddresses(IfxMtu_MbistSel mbistSel, Ifx_MC_ETRR *trackedSramAddresses);





extern boolean IfxMtu_isErrorTrackingEnabled(IfxMtu_MbistSel mbistSel);






extern boolean IfxMtu_isErrorTrackingOverflow(IfxMtu_MbistSel mbistSel);







static inline __attribute__ ((always_inline)) void IfxMtu_enableModule(void)
{

    (*(volatile Ifx_MTU_CLC *)0xF0060000u).U = 0x0;
}


static inline __attribute__ ((always_inline)) boolean IfxMtu_isModuleEnabled(void)
{
    return (*(volatile Ifx_MTU_CLC *)0xF0060000u).B.DISS == 0;
}
# 31 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.c" 2
# 44 "0_Src/4_McHal/Tricore/Eray/Eray/IfxEray_Eray.c"
static void IfxEray_Eray_Node_initCommunicationController(IfxEray_Eray *eray, const IfxEray_Eray_ControllerConfig *config);






static void IfxEray_Eray_Node_initGTU(IfxEray_Eray *eray, const IfxEray_Eray_GTUConfig *config);






static void IfxEray_Eray_Node_initMessageRAM(IfxEray_Eray *eray, const IfxEray_Eray_MessageRAMConfig *config);







void IfxEray_Eray_Node_init(IfxEray_Eray *eray, const IfxEray_Eray_NodeConfig *config)
{
    Ifx_ERAY *eraySFR = eray->eray;

    IfxEray_clearAllFlags(eraySFR);


    if (IfxEray_getPocState(eraySFR) != IfxEray_PocState_config)
    {
        IfxEray_changePocState(eraySFR, IfxEray_PocCommand_freeze);
        IfxEray_waitForPocState(eraySFR, IfxEray_PocState_halt);
        IfxEray_changePocState(eraySFR, IfxEray_PocCommand_config);
        IfxEray_waitForPocState(eraySFR, IfxEray_PocState_defaultConfig);
        IfxEray_changePocState(eraySFR, IfxEray_PocCommand_config);
        IfxEray_waitForPocState(eraySFR, IfxEray_PocState_config);
    }


    IfxEray_enableInterruptLines(eraySFR);
    IfxEray_setAutoDelayBuffers(eraySFR);

    IfxEray_Eray_Node_initMessageRAM(eray, &config->messageRAMConfig);

    IfxEray_Eray_Node_initCommunicationController(eray, &config->controllerConfig);

    const IfxEray_Eray_Pins *pins = config->pins;

    if (pins != ((void *)0))
    {
        const IfxEray_Eray_NodeA *nodeAPins = pins->nodeAPins;

        if (nodeAPins != ((void *)0))
        {
            const IfxEray_Rxd_In *rx = nodeAPins->rxIn;

            if (rx != ((void *)0))
            {
                IfxEray_initRxPin(rx, nodeAPins->rxInMode);
            }

            const IfxEray_Txd_Out *tx = nodeAPins->txOut;

            if (tx != ((void *)0))
            {
                IfxEray_initTxPin(tx, nodeAPins->txOutMode, nodeAPins->pinDriver);
            }

            const IfxEray_Txen_Out *txEn = nodeAPins->txEnOut;

            if (txEn != ((void *)0))
            {
                IfxEray_initTxEnPin(txEn, nodeAPins->txEnOutMode, nodeAPins->pinDriver);
            }
        }

        const IfxEray_Eray_NodeB *nodeBPins = pins->nodeBPins;

        if (nodeBPins != ((void *)0))
        {
            const IfxEray_Rxd_In *rx = nodeBPins->rxIn;

            if (rx != ((void *)0))
            {
                IfxEray_initRxPin(rx, nodeBPins->rxInMode);
            }

            const IfxEray_Txd_Out *tx = nodeBPins->txOut;

            if (tx != ((void *)0))
            {
                IfxEray_initTxPin(tx, nodeBPins->txOutMode, nodeBPins->pinDriver);
            }

            const IfxEray_Txen_Out *txEn = nodeBPins->txEnOut;

            if (txEn != ((void *)0))
            {
                IfxEray_initTxEnPin(txEn, nodeBPins->txEnOutMode, nodeBPins->pinDriver);
            }
        }
    }


    IfxEray_setPocReady(eraySFR);
}


static void IfxEray_Eray_Node_initCommunicationController(IfxEray_Eray *eray, const IfxEray_Eray_ControllerConfig *config)
{
    Ifx_ERAY *eraySFR = eray->eray;

    IfxEray_setTransmittedFrames(eraySFR, config->succ1Config.startupFrameTransmitted, config->succ1Config.syncFrameTransmitted);
    IfxEray_setMaxColdStartAttempts(eraySFR, config->succ1Config.maxColdStartAttempts);
    IfxEray_setActiveCyclePairs(eraySFR, config->succ1Config.numberOfCyclePairsForActive);
    IfxEray_setWakeupPatternChannel(eraySFR, config->succ1Config.wakeupPatternChannel);
    IfxEray_setTransmissionSlotMode(eraySFR, config->succ1Config.transmissionSlotMode);
    IfxEray_setClockSynchErrorHalt(eraySFR, config->succ1Config.clockSyncErrorHalt);
    IfxEray_setSymbolChannels(eraySFR, config->succ1Config.channelASymbolTransmitted, config->succ1Config.channelBSymbolTransmitted);
    IfxEray_setNodeChannels(eraySFR, config->succ1Config.channelAConnectedNode, config->succ1Config.channelBConnectedNode);

    IfxEray_setListenTimeOuts(eraySFR, config->succ2Config.listenTimeOut, config->succ2Config.listenTimeOutNoise);

    IfxEray_setClockCorrectionCycles(eraySFR, config->succ3Config.clockCorrectionCyclesPassive, config->succ3Config.clockCorrectionCyclesHalt);

    IfxEray_setNetworkVectorLength(eraySFR, config->networkVectorLength);

    IfxEray_setTransmissionStartTime(eraySFR, config->prtc1Control.transmissionStartTime);
    IfxEray_setCollisionAvoidanceDuration(eraySFR, config->prtc1Control.collisionAvoidanceDuration);
    IfxEray_setStrobePosition(eraySFR, config->prtc1Control.strobePosition);
    IfxEray_setBaudrate(eraySFR, config->prtc1Control.baudrate);
    IfxEray_setReceiveWakeupTimes(eraySFR, config->prtc1Control.receiveWakeupTestDuration, config->prtc2Control.receiveWakeupIdleTime, config->prtc2Control.receiveWakeupLowTime
        );
    IfxEray_setTransmitWakeupTimes(eraySFR, config->prtc1Control.transmitWakeupRepetitions, config->prtc2Control.transmitWakeupIdleTime, config->prtc2Control.transmitWakeupLowTime);

    IfxEray_setMessageHandlerConfigurations(eraySFR, config->staticFramepayload, config->latestTransmissionStart);

    IfxEray_Eray_Node_initGTU(eray, &config->gtuConfig);
}


void IfxEray_Eray_Node_initConfig(IfxEray_Eray_NodeConfig *config)
{

    const IfxEray_Eray_NodeConfig nodeConfig = {
        .messageRAMConfig = {
            .firstDynamicBuffer = 0,
            .numberOfMessageBuffers = 0,
            .fifoBufferStartIndex = 0x80,
            .fifoDepth = 30,
            .frameIdFilter = 0x7FD,
            .receiveChannel = IfxEray_ReceiveChannel_a,
            .rejectedFrameId = 2,
            .filteredCycleNumber = 0,
            .staticFifoDisabled = 0,
            .fifoNullFramesRejected = 0,
            .bufferReconfigEnabled = 1,
            .fifoConfigured = 0
        },

        .controllerConfig = {
            .networkVectorLength = 0x2,
            .staticFramepayload = 0x4,
            .latestTransmissionStart = 0x3F,

            .prtc1Control = {
                .transmissionStartTime = 0xA,
                .collisionAvoidanceDuration = 0x61,
                .strobePosition = IfxEray_StrobePosition_5,
                .baudrate = IfxEray_Baudrate_10,
                .receiveWakeupTestDuration = 0x8C,
                .transmitWakeupRepetitions = 0x2
            },

            .prtc2Control = {
                .receiveWakeupIdleTime = 0x2D,
                .receiveWakeupLowTime = 0x12,
                .transmitWakeupIdleTime = 0x2D,
                .transmitWakeupLowTime = 0x12
            },

            .succ1Config = {
                .channelAConnectedNode = 1,
                .channelBConnectedNode = 1,
                .channelASymbolTransmitted = 0,
                .channelBSymbolTransmitted = 0,
                .clockSyncErrorHalt = 1,
                .transmissionSlotMode = IfxEray_TransmissionSlotMode_single,
                .wakeupPatternChannel = IfxEray_WakeupChannel_a,
                .numberOfCyclePairsForActive = 0x7,
                .maxColdStartAttempts = 0x1F,
                .syncFrameTransmitted = 1,
                .startupFrameTransmitted = 1
            },

            .succ2Config = {
                .listenTimeOut = 0x13972,
                .listenTimeOutNoise = IfxEray_ListenTimeOutNoise_16
            },

            .succ3Config = {
                .clockCorrectionCyclesPassive = 0x1,
                .clockCorrectionCyclesHalt = 0x1
            },

            .gtuConfig = {
                .gtu01Config.microticksPerCycle = 0x9C40,

                .gtu02Config = {
                    .macroticksPerCycle = 0x3E8,
                    .maxSyncFrames = 0x4
                },

                .gtu03Config = {
                    .channelAMicrotickInitialOffset = 0x19,
                    .channelBMicrotickInitialOffset = 0x19,
                    .channelAMacrotickInitialOffset = 0xA,
                    .channelBMacrotickInitialOffset = 0x2
                },

                .gtu04Config = {
                    .networkStartIdleTime = 0x38E,
                    .correctionOffset = 0x394
                },

                .gtu05Config = {
                    .channelAReceptionDelay = 0x4,
                    .channelBReceptionDelay = 0x4,
                    .clusterDrift = 1,
                    .decodingCorrection = 0x34
                },

                .gtu06Config = {
                    .acceptedStartupDeviation = 0x81,
                    .maxDriftOffset = 0xD2
                },

                .gtu07Config = {
                    .staticSlotLength = 0x32,
                    .staticSlotsCount = 0xC
                },

                .gtu08Config = {
                    .dynamicSlotLength = 4,
                    .dynamicSlotCount = 0x4B,
                },

                .gtu09Config = {
                    .idleDynamicSlots = IfxEray_IdleDynamicSlots_1,
                    .staticActionPoint = 8,
                    .dynamicActionPoint = 3
                },

                .gtu10Config = {
                    .maxOffsetCorrection = 0x32,
                    .maxRateCorrection = 0xD2
                },

                .gtu11Config = {
                    .externalOffsetCorrection = IfxEray_ExternalOffsetCorrection_0,
                    .externalRateCorrection = IfxEray_ExternalRateCorrection_0,
                    .externalOffset = IfxEray_ExternalOffset_noCorrection,
                    .externalRate = IfxEray_ExternalRate_noCorrection
                },
            },
        },
        .pins = ((void *)0)
    };

    *config = nodeConfig;
}


static void IfxEray_Eray_Node_initGTU(IfxEray_Eray *eray, const IfxEray_Eray_GTUConfig *config)
{
    Ifx_ERAY *eraySFR = eray->eray;

    IfxEray_setCycleDurationMicroticks(eraySFR, config->gtu01Config.microticksPerCycle);
    IfxEray_setCycleDurationMacroticks(eraySFR, config->gtu02Config.macroticksPerCycle);
    IfxEray_setMaxSynchFrames(eraySFR, config->gtu02Config.maxSyncFrames);
    IfxEray_setChannelAInitialOffsets(eraySFR, config->gtu03Config.channelAMicrotickInitialOffset, config->gtu03Config.channelAMacrotickInitialOffset);
    IfxEray_setChannelBInitialOffsets(eraySFR, config->gtu03Config.channelBMicrotickInitialOffset, config->gtu03Config.channelBMacrotickInitialOffset);
    IfxEray_setNetworkStartIdleTime(eraySFR, config->gtu04Config.networkStartIdleTime);
    IfxEray_setOffsetCorrection(eraySFR, config->gtu04Config.correctionOffset);
    IfxEray_setChannelsReceiveDelay(eraySFR, config->gtu05Config.channelAReceptionDelay, config->gtu05Config.channelBReceptionDelay);
    IfxEray_setDecodingCorrectionValue(eraySFR, config->gtu05Config.decodingCorrection);
    IfxEray_setClusterDriftValues(eraySFR, config->gtu05Config.clusterDrift, config->gtu06Config.maxDriftOffset);
    IfxEray_setClusterStartupDeviation(eraySFR, config->gtu06Config.acceptedStartupDeviation);
    IfxEray_setStaticSlots(eraySFR, config->gtu07Config.staticSlotLength, config->gtu07Config.staticSlotsCount);
    IfxEray_setDynamicSlots(eraySFR, config->gtu08Config.dynamicSlotLength, config->gtu08Config.dynamicSlotCount, config->gtu09Config.idleDynamicSlots);
    IfxEray_setSlotActionPoints(eraySFR, config->gtu09Config.staticActionPoint, config->gtu09Config.dynamicActionPoint);
    IfxEray_setMaxCorrectionValues(eraySFR, config->gtu10Config.maxOffsetCorrection, config->gtu10Config.maxRateCorrection);
    IfxEray_setExternalCorrectionControl(eraySFR, config->gtu11Config.externalOffset, config->gtu11Config.externalRate);
    IfxEray_setExternalCorrectionValues(eraySFR, config->gtu11Config.externalOffsetCorrection, config->gtu11Config.externalRateCorrection);
}


static void IfxEray_Eray_Node_initMessageRAM(IfxEray_Eray *eray, const IfxEray_Eray_MessageRAMConfig *config)
{
    Ifx_ERAY *eraySFR = eray->eray;
    uint32 bufferCount;

    IfxEray_setFirstDynamicBuffer(eraySFR, config->firstDynamicBuffer);




    IfxEray_setMessageBufferCount(eraySFR, config->numberOfMessageBuffers);


    if (config->fifoConfigured == 1)
    {
        IfxEray_setFifoBufferStartIndex(eraySFR, (uint8)config->fifoBufferStartIndex);
        IfxEray_setFifoMessageBufferConfigurations(eraySFR, config->receiveChannel, config->staticFifoDisabled, config->fifoDepth);
        IfxEray_setFifoFilterConfigurations(eraySFR, config->rejectedFrameId, config->filteredCycleNumber, config->fifoNullFramesRejected, config->frameIdFilter);
    }
    else
    {

        IfxEray_setFifoBufferStartIndex(eraySFR, (uint8)config->fifoBufferStartIndex);
    }

    if (config->bufferReconfigEnabled == 1)
    {

        IfxEray_setBufferReconfigSecure(eraySFR, 0);
    }
    else
    {

        IfxEray_setBufferReconfigSecure(eraySFR, 2);
    }

    for (bufferCount = 0; bufferCount < config->numberOfMessageBuffers; bufferCount++)
    {
        IfxEray_setSlot(eraySFR, config->header[bufferCount], config->data[bufferCount], config->slotControl[bufferCount]);
    }
}


void IfxEray_Eray_initModule(IfxEray_Eray *eray, const IfxEray_Eray_Config *config)
{
    eray->eray = config->module;
    Ifx_ERAY *eraySFR = config->module;

    {
        uint16 password = IfxScuWdt_getCpuWatchdogPassword();
        IfxScuWdt_clearCpuEndinit(password);
        IfxMtu_enableModule();
        IfxScuWdt_setCpuEndinit(password);
    }

    {
        uint16 password = IfxScuWdt_getSafetyWatchdogPassword();
        IfxScuWdt_clearSafetyEndinit(password);
        IfxMtu_clearSram(IfxMtu_MbistSel_erayObf);
        IfxMtu_clearSram(IfxMtu_MbistSel_erayIbfTbf);
        IfxMtu_clearSram(IfxMtu_MbistSel_erayMbf);

        IfxScuWdt_setSafetyEndinit(password);
    }

    {
        uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
        IfxScuWdt_clearCpuEndinit(passwd);

        IfxEray_enableModule(eraySFR);
        IfxScuWdt_setCpuEndinit(passwd);
    }



    {
        if (config->interrupt.int0Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getInterruptLine0SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.int0IsrProvider, config->interrupt.int0Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.int1Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getInterruptLine1SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.int1IsrProvider, config->interrupt.int1Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.tint0Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getTimerInterrupt0SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.tint0IsrProvider, config->interrupt.tint0Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.tint1Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getTimerInterrupt1SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.tint1IsrProvider, config->interrupt.tint1Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.mbsc0Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getMessageBufferStatus0SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.mbsc0IsrProvider, config->interrupt.mbsc0Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.mbsc1Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getMessageBufferStatus1SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.mbsc1IsrProvider, config->interrupt.mbsc1Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.ibusyPriority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getInputBufferBusySrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.ibusyIsrProvider, config->interrupt.ibusyPriority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.obusyPriority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getOutputBufferBusySrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.obusyIsrProvider, config->interrupt.obusyPriority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.ndat0Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getNewDataInterrupt0SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.ndat0IsrProvider, config->interrupt.ndat0Priority);
            IfxSrc_enable(src);
        }

        if (config->interrupt.ndat1Priority != 0)
        {
            volatile Ifx_SRC_SRCR *src = IfxEray_getNewDataInterrupt1SrcPtr(eraySFR);
            IfxSrc_init(src, config->interrupt.ndat1IsrProvider, config->interrupt.ndat1Priority);
            IfxSrc_enable(src);
        }
    }
}


void IfxEray_Eray_initModuleConfig(IfxEray_Eray_Config *config, Ifx_ERAY *eray)
{
    config->module = eray;
    config->interrupt.int0IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.int1IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.tint0IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.tint1IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.ndat0IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.ndat1IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.mbsc0IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.mbsc1IsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.ibusyIsrProvider = IfxSrc_Tos_cpu0;
    config->interrupt.obusyIsrProvider = IfxSrc_Tos_cpu0;

    config->interrupt.int0Priority = 0;
    config->interrupt.int1Priority = 0;
    config->interrupt.tint0Priority = 0;
    config->interrupt.tint1Priority = 0;
    config->interrupt.ndat0Priority = 0;
    config->interrupt.ndat1Priority = 0;
    config->interrupt.mbsc0Priority = 0;
    config->interrupt.mbsc1Priority = 0;
    config->interrupt.ibusyPriority = 0;
    config->interrupt.obusyPriority = 0;
}


void IfxEray_Eray_receiveFifoFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceiveControl *config)
{
    Ifx_ERAY *eraySFR = eray->eray;

    Ifx_ERAY_FSR fifoStatus = IfxEray_getFifoStatus(eraySFR);


    if (fifoStatus.B.RFNE == 1)
    {
        if (fifoStatus.B.RFO == 1)
        {

        }
        else
        {
            while (IfxEray_getOutputBufferBusyShadowStatus(eraySFR) == 1)
            {}

            IfxEray_receiveHeader(eraySFR, config->headerReceived);
            IfxEray_receiveData(eraySFR, config->dataReceived);

            IfxEray_setRxBufferNumber(eraySFR, IfxEray_getFifoIndex(eraySFR));
            IfxEray_setReceiveRequest(eraySFR, config->receiveRequested);

            while (IfxEray_getOutputBufferBusyShadowStatus(eraySFR))
            {}

            if (config->swapRequested && (IfxEray_getOutputBuffer(eraySFR) != config->bufferIndex))
            {
                IfxEray_setViewData(eraySFR, config->swapRequested);
            }
        }
    }
}


void IfxEray_Eray_receiveFrame(IfxEray_Eray *eray, IfxEray_Eray_ReceiveControl *config)
{
    Ifx_ERAY *eraySFR = eray->eray;

    while (IfxEray_getOutputBufferBusyShadowStatus(eraySFR) == 1)
    {}

    IfxEray_receiveHeader(eraySFR, config->headerReceived);
    IfxEray_receiveData(eraySFR, config->dataReceived);
    IfxEray_setRxBufferNumber(eraySFR, config->bufferIndex);
    IfxEray_setReceiveRequest(eraySFR, config->receiveRequested);

    while (IfxEray_getOutputBufferBusyShadowStatus(eraySFR) == 1)
    {}

    if (config->swapRequested && (IfxEray_getOutputBuffer(eraySFR) != config->bufferIndex))
    {
        IfxEray_setViewData(eraySFR, config->swapRequested);
    }
}


void IfxEray_Eray_transmitFrame(IfxEray_Eray *eray, IfxEray_Eray_TransmitControl *transmitControl)
{
    Ifx_ERAY *eraySFR = eray->eray;

    while (IfxEray_getInputBufferBusyHostStatus(eraySFR) == 1)
    {}

    IfxEray_sendHeader(eraySFR, transmitControl->headerTransfered);
    IfxEray_sendData(eraySFR, transmitControl->dataTransfered);
    IfxEray_setTransmitRequest(eraySFR, transmitControl->transferRequested);
    IfxEray_setTxBufferNumber(eraySFR, transmitControl->bufferIndex);

    while (IfxEray_getInputBufferBusyShadowStatus(eraySFR) == 1)
    {}

    while (IfxEray_getInputBufferBusyHostStatus(eraySFR) == 1)
    {}
}
