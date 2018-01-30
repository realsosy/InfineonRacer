# 1 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.c"
# 1 "D:\\GitRepo\\InfineonRacer\\2_src\\InfineonRacer_TC23xA//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.c"
# 26 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.c"
# 1 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h" 1
# 31 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h"
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
# 32 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxEray_cfg.h" 1
# 60 "./0_Src/4_McHal/Tricore/_Impl/IfxEray_cfg.h"
typedef enum
{
    IfxEray_NodeId_a = 0,
    IfxEray_NodeId_b = 1,
    IfxEray_NodeId_none = -1
} IfxEray_NodeId;
# 33 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h" 2
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
# 34 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h" 2





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
# 96 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.h"
extern const IfxEray_Rxd_In *IfxEray_Rxd_In_pinTable[1][2][4];


extern const IfxEray_Txd_Out *IfxEray_Txd_Out_pinTable[1][2][4];


extern const IfxEray_Txen_Out *IfxEray_Txen_Out_pinTable[1][2][4];
# 27 "0_Src/4_McHal/Tricore/_PinMap/IfxEray_PinMap.c" 2

IfxEray_Rxd_In IfxEray0_RXDA0_P14_8_IN = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_a, {&(*(Ifx_P *)0xF003B400u), 8}, Ifx_RxSel_a};
IfxEray_Rxd_In IfxEray0_RXDA1_P11_9_IN = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_a, {&(*(Ifx_P *)0xF003B100u), 9}, Ifx_RxSel_b};
IfxEray_Rxd_In IfxEray0_RXDA2_P02_1_IN = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_a, {&(*(Ifx_P *)0xF003A200u), 1}, Ifx_RxSel_c};
IfxEray_Rxd_In IfxEray0_RXDA3_P14_1_IN = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_a, {&(*(Ifx_P *)0xF003B400u), 1}, Ifx_RxSel_d};
IfxEray_Rxd_In IfxEray0_RXDB0_P14_7_IN = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003B400u), 7}, Ifx_RxSel_a};
IfxEray_Rxd_In IfxEray0_RXDB1_P11_10_IN = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003B100u),10}, Ifx_RxSel_b};
IfxEray_Rxd_In IfxEray0_RXDB2_P02_3_IN = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003A200u), 3}, Ifx_RxSel_c};
IfxEray_Rxd_In IfxEray0_RXDB3_P14_1_IN = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003B400u), 1}, Ifx_RxSel_d};
IfxEray_Txd_Out IfxEray0_TXDA_P02_0_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_a, {&(*(Ifx_P *)0xF003A200u), 0}, IfxPort_OutputIdx_alt6};
IfxEray_Txd_Out IfxEray0_TXDA_P11_3_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_a, {&(*(Ifx_P *)0xF003B100u), 3}, IfxPort_OutputIdx_alt4};
IfxEray_Txd_Out IfxEray0_TXDA_P14_0_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_a, {&(*(Ifx_P *)0xF003B400u), 0}, IfxPort_OutputIdx_alt3};
IfxEray_Txd_Out IfxEray0_TXDB_P02_2_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003A200u), 2}, IfxPort_OutputIdx_alt6};
IfxEray_Txd_Out IfxEray0_TXDB_P11_12_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003B100u),12}, IfxPort_OutputIdx_alt4};
IfxEray_Txd_Out IfxEray0_TXDB_P14_0_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003B400u), 0}, IfxPort_OutputIdx_alt4};
IfxEray_Txd_Out IfxEray0_TXDB_P14_5_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003B400u), 5}, IfxPort_OutputIdx_alt6};
IfxEray_Txen_Out IfxEray0_TXENA_P02_4_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_a, {&(*(Ifx_P *)0xF003A200u), 4}, IfxPort_OutputIdx_alt6};
IfxEray_Txen_Out IfxEray0_TXENA_P11_6_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_a, {&(*(Ifx_P *)0xF003B100u), 6}, IfxPort_OutputIdx_alt4};
IfxEray_Txen_Out IfxEray0_TXENB_P02_5_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003A200u), 5}, IfxPort_OutputIdx_alt6};
IfxEray_Txen_Out IfxEray0_TXENB_P11_11_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003B100u),11}, IfxPort_OutputIdx_alt6};
IfxEray_Txen_Out IfxEray0_TXENB_P11_6_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003B100u), 6}, IfxPort_OutputIdx_alt2};
IfxEray_Txen_Out IfxEray0_TXENB_P14_6_OUT = {&(*(Ifx_ERAY *)0xF001C000u), IfxEray_NodeId_b, {&(*(Ifx_P *)0xF003B400u), 6}, IfxPort_OutputIdx_alt6};


const IfxEray_Rxd_In *IfxEray_Rxd_In_pinTable[1][2][4] = {
    {
        {
            &IfxEray0_RXDA0_P14_8_IN,
            &IfxEray0_RXDA1_P11_9_IN,
            &IfxEray0_RXDA2_P02_1_IN,
            &IfxEray0_RXDA3_P14_1_IN
        },
        {
            &IfxEray0_RXDB0_P14_7_IN,
            &IfxEray0_RXDB1_P11_10_IN,
            &IfxEray0_RXDB2_P02_3_IN,
            &IfxEray0_RXDB3_P14_1_IN
        }
    }
};

const IfxEray_Txd_Out *IfxEray_Txd_Out_pinTable[1][2][4] = {
    {
        {
            &IfxEray0_TXDA_P14_0_OUT,
            &IfxEray0_TXDA_P11_3_OUT,
            &IfxEray0_TXDA_P02_0_OUT,
            ((void *)0)
        },
        {
            &IfxEray0_TXDB_P14_0_OUT,
            &IfxEray0_TXDB_P14_5_OUT,
            &IfxEray0_TXDB_P11_12_OUT,
            &IfxEray0_TXDB_P02_2_OUT
        }
    }
};

const IfxEray_Txen_Out *IfxEray_Txen_Out_pinTable[1][2][4] = {
    {
        {
            &IfxEray0_TXENA_P11_6_OUT,
            &IfxEray0_TXENA_P02_4_OUT,
            ((void *)0),
            ((void *)0)
        },
        {
            &IfxEray0_TXENB_P14_6_OUT,
            &IfxEray0_TXENB_P11_6_OUT,
            &IfxEray0_TXENB_P11_11_OUT,
            &IfxEray0_TXENB_P02_5_OUT
        }
    }
};
