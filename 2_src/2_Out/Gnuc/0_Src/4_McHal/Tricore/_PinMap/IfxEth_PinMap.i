# 1 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.c"
# 1 "D:\\GitRepo\\InfineonRacer\\2_src\\InfineonRacer_TC23xA//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.c"
# 26 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.c"
# 1 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h" 1
# 31 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/Ifx_TypesReg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h" 2





typedef struct _Ifx_ETH_ACCEN0_Bits
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
} Ifx_ETH_ACCEN0_Bits;


typedef struct _Ifx_ETH_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_ETH_ACCEN1_Bits;


typedef struct _Ifx_ETH_AHB_OR_AXI_STATUS_Bits
{
    unsigned int AXWHSTS : 1;
    unsigned int AXIRDSTS : 1;
    unsigned int reserved_2 : 30;
} Ifx_ETH_AHB_OR_AXI_STATUS_Bits;


typedef struct _Ifx_ETH_BUS_MODE_Bits
{
    unsigned int SWR : 1;
    unsigned int DA : 1;
    unsigned int DSL : 5;
    unsigned int ATDS : 1;
    unsigned int PBL : 6;
    unsigned int PR : 2;
    unsigned int FB : 1;
    unsigned int RPBL : 6;
    unsigned int USP : 1;
    unsigned int PBLx8 : 1;
    unsigned int AAL : 1;
    unsigned int MB : 1;
    unsigned int TXPR : 1;
    unsigned int PRWG : 2;
    unsigned int reserved_30 : 2;
} Ifx_ETH_BUS_MODE_Bits;


typedef struct _Ifx_ETH_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 30;
} Ifx_ETH_CLC_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits
{
    unsigned int CURRBUFAPTR : 32;
} Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits
{
    unsigned int CURRDESAPTR : 32;
} Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits
{
    unsigned int CURTBUFAPTR : 32;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits;


typedef struct _Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits
{
    unsigned int CURTDESAPTR : 32;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits;


typedef struct _Ifx_ETH_DEBUG_Bits
{
    unsigned int RPESTS : 1;
    unsigned int RFCFCSTS : 2;
    unsigned int reserved_3 : 1;
    unsigned int RWCSTS : 1;
    unsigned int RRCSTS : 2;
    unsigned int reserved_7 : 1;
    unsigned int RXFSTS : 2;
    unsigned int reserved_10 : 6;
    unsigned int TPESTS : 1;
    unsigned int TFCSTS : 2;
    unsigned int TXPAUSED : 1;
    unsigned int TRCSTS : 2;
    unsigned int TWCSTS : 1;
    unsigned int reserved_23 : 1;
    unsigned int TXFSTS : 1;
    unsigned int TXSTSFSTS : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_DEBUG_Bits;


typedef struct _Ifx_ETH_FLOW_CONTROL_Bits
{
    unsigned int FCA_BPA : 1;
    unsigned int TFE : 1;
    unsigned int RFE : 1;
    unsigned int UP : 1;
    unsigned int PLT : 2;
    unsigned int reserved_6 : 1;
    unsigned int DZPQ : 1;
    unsigned int reserved_8 : 8;
    unsigned int PT : 16;
} Ifx_ETH_FLOW_CONTROL_Bits;


typedef struct _Ifx_ETH_GMII_ADDRESS_Bits
{
    unsigned int GB : 1;
    unsigned int GW : 1;
    unsigned int CR : 4;
    unsigned int GR : 5;
    unsigned int PA : 5;
    unsigned int reserved_16 : 16;
} Ifx_ETH_GMII_ADDRESS_Bits;


typedef struct _Ifx_ETH_GMII_DATA_Bits
{
    unsigned int GD : 16;
    unsigned int reserved_16 : 16;
} Ifx_ETH_GMII_DATA_Bits;


typedef struct _Ifx_ETH_GPCTL_Bits
{
    unsigned int ALTI0 : 2;
    unsigned int ALTI1 : 2;
    unsigned int ALTI2 : 2;
    unsigned int ALTI3 : 2;
    unsigned int ALTI4 : 2;
    unsigned int ALTI5 : 2;
    unsigned int ALTI6 : 2;
    unsigned int ALTI7 : 2;
    unsigned int ALTI8 : 2;
    unsigned int ALTI9 : 2;
    unsigned int ALTI10 : 2;
    unsigned int reserved_22 : 2;
    unsigned int EPR : 1;
    unsigned int DIV : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_GPCTL_Bits;


typedef struct _Ifx_ETH_HASH_TABLE_HIGH_Bits
{
    unsigned int HTH : 32;
} Ifx_ETH_HASH_TABLE_HIGH_Bits;


typedef struct _Ifx_ETH_HASH_TABLE_LOW_Bits
{
    unsigned int HTL : 32;
} Ifx_ETH_HASH_TABLE_LOW_Bits;


typedef struct _Ifx_ETH_HW_FEATURE_Bits
{
    unsigned int MIISEL : 1;
    unsigned int GMIISEL : 1;
    unsigned int HDSEL : 1;
    unsigned int EXTHASHEN : 1;
    unsigned int HASHSEL : 1;
    unsigned int ADDMACADRSEL : 1;
    unsigned int PCSSEL : 1;
    unsigned int L3L4FLTREN : 1;
    unsigned int SMASEL : 1;
    unsigned int RWKSEL : 1;
    unsigned int MGKSEL : 1;
    unsigned int MMCSEL : 1;
    unsigned int TSVER1SEL : 1;
    unsigned int TSVER2SEL : 1;
    unsigned int EEESEL : 1;
    unsigned int AVSEL : 1;
    unsigned int TXCOESEL : 1;
    unsigned int RXTYP1COE : 1;
    unsigned int RXTYP2COE : 1;
    unsigned int RXFIFOSIZE : 1;
    unsigned int RXCHCNT : 2;
    unsigned int TXCHCNT : 2;
    unsigned int ENHDESSEL : 1;
    unsigned int INTTSEN : 1;
    unsigned int FLEXIPPSEN : 1;
    unsigned int SAVLANINS : 1;
    unsigned int ACTPHYIF : 3;
    unsigned int reserved_31 : 1;
} Ifx_ETH_HW_FEATURE_Bits;


typedef struct _Ifx_ETH_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_ETH_ID_Bits;


typedef struct _Ifx_ETH_INTERRUPT_ENABLE_Bits
{
    unsigned int TIE : 1;
    unsigned int TSE : 1;
    unsigned int TUE : 1;
    unsigned int TJE : 1;
    unsigned int OVE : 1;
    unsigned int UNE : 1;
    unsigned int RIE : 1;
    unsigned int RUE : 1;
    unsigned int RSE : 1;
    unsigned int RWE : 1;
    unsigned int ETE : 1;
    unsigned int reserved_11 : 2;
    unsigned int FBE : 1;
    unsigned int ERE : 1;
    unsigned int AIE : 1;
    unsigned int NIE : 1;
    unsigned int reserved_17 : 15;
} Ifx_ETH_INTERRUPT_ENABLE_Bits;


typedef struct _Ifx_ETH_INTERRUPT_MASK_Bits
{
    unsigned int RGSMIIIM : 1;
    unsigned int PCSLCHGIM : 1;
    unsigned int PCSANCIM : 1;
    unsigned int PMTIM : 1;
    unsigned int reserved_4 : 5;
    unsigned int TSIM : 1;
    unsigned int LPIIM : 1;
    unsigned int reserved_11 : 21;
} Ifx_ETH_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_INTERRUPT_STATUS_Bits
{
    unsigned int RGSMIIIS : 1;
    unsigned int PCSLCHGIS : 1;
    unsigned int PCSANCIS : 1;
    unsigned int PMTIS : 1;
    unsigned int MMCIS : 1;
    unsigned int MMCRXIS : 1;
    unsigned int MMCTXIS : 1;
    unsigned int MMCRXIPIS : 1;
    unsigned int reserved_8 : 1;
    unsigned int TSIS : 1;
    unsigned int LPIIS : 1;
    unsigned int reserved_11 : 21;
} Ifx_ETH_INTERRUPT_STATUS_Bits;


typedef struct _Ifx_ETH_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_ETH_KRST0_Bits;


typedef struct _Ifx_ETH_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_ETH_KRST1_Bits;


typedef struct _Ifx_ETH_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_ETH_KRSTCLR_Bits;


typedef struct _Ifx_ETH_MAC_ADDRESS_HIGH_Bits
{
    unsigned int ADDRHI : 16;
    unsigned int reserved_16 : 8;
    unsigned int MBC : 6;
    unsigned int SA : 1;
    unsigned int AE : 1;
} Ifx_ETH_MAC_ADDRESS_HIGH_Bits;


typedef struct _Ifx_ETH_MAC_ADDRESS_LOW_Bits
{
    unsigned int ADDRLO : 32;
} Ifx_ETH_MAC_ADDRESS_LOW_Bits;


typedef struct _Ifx_ETH_MAC_CONFIGURATION_Bits
{
    unsigned int PRELEN : 2;
    unsigned int RE : 1;
    unsigned int TE : 1;
    unsigned int DC : 1;
    unsigned int BL : 2;
    unsigned int ACS : 1;
    unsigned int LUD : 1;
    unsigned int DR : 1;
    unsigned int IPC : 1;
    unsigned int DM : 1;
    unsigned int LM : 1;
    unsigned int DO : 1;
    unsigned int FES : 1;
    unsigned int PS : 1;
    unsigned int DCRS : 1;
    unsigned int IFG : 3;
    unsigned int JE : 1;
    unsigned int BE : 1;
    unsigned int JD : 1;
    unsigned int WD : 1;
    unsigned int TC : 1;
    unsigned int CST : 1;
    unsigned int SFTERR : 1;
    unsigned int TWOKPE : 1;
    unsigned int SARC : 3;
    unsigned int reserved_31 : 1;
} Ifx_ETH_MAC_CONFIGURATION_Bits;


typedef struct _Ifx_ETH_MAC_FRAME_FILTER_Bits
{
    unsigned int PR : 1;
    unsigned int HUC : 1;
    unsigned int HMC : 1;
    unsigned int DAIF : 1;
    unsigned int PM : 1;
    unsigned int DBF : 1;
    unsigned int PCF : 2;
    unsigned int SAIF : 1;
    unsigned int SAF : 1;
    unsigned int HPF : 1;
    unsigned int reserved_11 : 5;
    unsigned int VTFE : 1;
    unsigned int reserved_17 : 3;
    unsigned int IPFE : 1;
    unsigned int DNTU : 1;
    unsigned int reserved_22 : 9;
    unsigned int RA : 1;
} Ifx_ETH_MAC_FRAME_FILTER_Bits;


typedef struct _Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits
{
    unsigned int MISFRMCNT : 16;
    unsigned int MISCNTOVF : 1;
    unsigned int OVFFRMCNT : 11;
    unsigned int OVFCNTOVF : 1;
    unsigned int reserved_29 : 3;
} Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits;


typedef struct _Ifx_ETH_MMC_CONTROL_Bits
{
    unsigned int CNTRST : 1;
    unsigned int CNTSTOPRO : 1;
    unsigned int RSTONRD : 1;
    unsigned int CNTFREEZ : 1;
    unsigned int CNTPRST : 1;
    unsigned int CNTPRSTLVL : 1;
    unsigned int reserved_6 : 2;
    unsigned int UCDBC : 1;
    unsigned int reserved_9 : 23;
} Ifx_ETH_MMC_CONTROL_Bits;


typedef struct _Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits
{
    unsigned int RXIPV4GFIS : 1;
    unsigned int RXIPV4HERFIS : 1;
    unsigned int RXIPV4NOPAYFIS : 1;
    unsigned int RXIPV4FRAGFIS : 1;
    unsigned int RXIPV4UDSBLFIS : 1;
    unsigned int RXIPV6GFIS : 1;
    unsigned int RXIPV6HERFIS : 1;
    unsigned int RXIPV6NOPAYFIS : 1;
    unsigned int RXUDPGFIS : 1;
    unsigned int RXUDPERFIS : 1;
    unsigned int RXTCPGFIS : 1;
    unsigned int RXTCPERFIS : 1;
    unsigned int RXICMPGFIS : 1;
    unsigned int RXICMPERFIS : 1;
    unsigned int reserved_14 : 2;
    unsigned int RXIPV4GOIS : 1;
    unsigned int RXIPV4HEROIS : 1;
    unsigned int RXIPV4NOPAYOIS : 1;
    unsigned int RXIPV4FRAGOIS : 1;
    unsigned int RXIPV4UDSBLOIS : 1;
    unsigned int RXIPV6GOIS : 1;
    unsigned int RXIPV6HEROIS : 1;
    unsigned int RXIPV6NOPAYOIS : 1;
    unsigned int RXUDPGOIS : 1;
    unsigned int RXUDPEROIS : 1;
    unsigned int RXTCPGOIS : 1;
    unsigned int RXTCPEROIS : 1;
    unsigned int RXICMPGOIS : 1;
    unsigned int RXICMPEROIS : 1;
    unsigned int reserved_30 : 2;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits
{
    unsigned int RXIPV4GFIM : 1;
    unsigned int RXIPV4HERFIM : 1;
    unsigned int RXIPV4NOPAYFIM : 1;
    unsigned int RXIPV4FRAGFIM : 1;
    unsigned int RXIPV4UDSBLFIM : 1;
    unsigned int RXIPV6GFIM : 1;
    unsigned int RXIPV6HERFIM : 1;
    unsigned int RXIPV6NOPAYFIM : 1;
    unsigned int RXUDPGFIM : 1;
    unsigned int RXUDPERFIM : 1;
    unsigned int RXTCPGFIM : 1;
    unsigned int RXTCPERFIM : 1;
    unsigned int RXICMPGFIM : 1;
    unsigned int RXICMPERFIM : 1;
    unsigned int reserved_14 : 2;
    unsigned int RXIPV4GOIM : 1;
    unsigned int RXIPV4HEROIM : 1;
    unsigned int RXIPV4NOPAYOIM : 1;
    unsigned int RXIPV4FRAGOIM : 1;
    unsigned int RXIPV4UDSBLOIM : 1;
    unsigned int RXIPV6GOIM : 1;
    unsigned int RXIPV6HEROIM : 1;
    unsigned int RXIPV6NOPAYOIM : 1;
    unsigned int RXUDPGOIM : 1;
    unsigned int RXUDPEROIM : 1;
    unsigned int RXTCPGOIM : 1;
    unsigned int RXTCPEROIM : 1;
    unsigned int RXICMPGOIM : 1;
    unsigned int RXICMPEROIM : 1;
    unsigned int reserved_30 : 2;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits
{
    unsigned int RXGBFRMIS : 1;
    unsigned int RXGBOCTIS : 1;
    unsigned int RXGOCTIS : 1;
    unsigned int RXBCGFIS : 1;
    unsigned int RXMCGFIS : 1;
    unsigned int RXCRCERFIS : 1;
    unsigned int RXALGNERFIS : 1;
    unsigned int RXRUNTFIS : 1;
    unsigned int RXJABERFIS : 1;
    unsigned int RXUSIZEGFIS : 1;
    unsigned int RXOSIZEGFIS : 1;
    unsigned int RX64OCTGBFIS : 1;
    unsigned int RX65T127OCTGBFIS : 1;
    unsigned int RX128T255OCTGBFIS : 1;
    unsigned int RX256T511OCTGBFIS : 1;
    unsigned int RX512T1023OCTGBFIS : 1;
    unsigned int RX1024TMAXOCTGBFIS : 1;
    unsigned int RXUCGFIS : 1;
    unsigned int RXLENERFIS : 1;
    unsigned int RXORANGEFIS : 1;
    unsigned int RXPAUSFIS : 1;
    unsigned int RXFOVFIS : 1;
    unsigned int RXVLANGBFIS : 1;
    unsigned int RXWDOGFIS : 1;
    unsigned int RXRCVERRFIS : 1;
    unsigned int RXCTRLFIS : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits
{
    unsigned int RXGBFRMIM : 1;
    unsigned int RXGBOCTIM : 1;
    unsigned int RXGOCTIM : 1;
    unsigned int RXBCGFIM : 1;
    unsigned int RXMCGFIM : 1;
    unsigned int RXCRCERFIM : 1;
    unsigned int RXALGNERFIM : 1;
    unsigned int RXRUNTFIM : 1;
    unsigned int RXJABERFIM : 1;
    unsigned int RXUSIZEGFIM : 1;
    unsigned int RXOSIZEGFIM : 1;
    unsigned int RX64OCTGBFIM : 1;
    unsigned int RX65T127OCTGBFIM : 1;
    unsigned int RX128T255OCTGBFIM : 1;
    unsigned int RX256T511OCTGBFIM : 1;
    unsigned int RX512T1023OCTGBFIM : 1;
    unsigned int RX1024TMAXOCTGBFIM : 1;
    unsigned int RXUCGFIM : 1;
    unsigned int RXLENERFIM : 1;
    unsigned int RXORANGEFIM : 1;
    unsigned int RXPAUSFIM : 1;
    unsigned int RXFOVFIM : 1;
    unsigned int RXVLANGBFIM : 1;
    unsigned int RXWDOGFIM : 1;
    unsigned int RXRCVERRFIM : 1;
    unsigned int RXCTRLFIM : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits
{
    unsigned int TXGBOCTIS : 1;
    unsigned int TXGBFRMIS : 1;
    unsigned int TXBCGFIS : 1;
    unsigned int TXMCGFIS : 1;
    unsigned int TX64OCTGBFIS : 1;
    unsigned int TX65T127OCTGBFIS : 1;
    unsigned int TX128T255OCTGBFIS : 1;
    unsigned int TX256T511OCTGBFIS : 1;
    unsigned int TX512T1023OCTGBFIS : 1;
    unsigned int TX1024TMAXOCTGBFIS : 1;
    unsigned int TXUCGBFIS : 1;
    unsigned int TXMCGBFIS : 1;
    unsigned int TXBCGBFIS : 1;
    unsigned int TXUFLOWERFIS : 1;
    unsigned int TXSCOLGFIS : 1;
    unsigned int TXMCOLGFIS : 1;
    unsigned int TXDEFFIS : 1;
    unsigned int TXLATCOLFIS : 1;
    unsigned int TXEXCOLFIS : 1;
    unsigned int TXCARERFIS : 1;
    unsigned int TXGOCTIS : 1;
    unsigned int TXGFRMIS : 1;
    unsigned int TXEXDEFFIS : 1;
    unsigned int TXPAUSFIS : 1;
    unsigned int TXVLANGFIS : 1;
    unsigned int TXOSIZEGFIS : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits;


typedef struct _Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits
{
    unsigned int TXGBOCTIM : 1;
    unsigned int TXGBFRMIM : 1;
    unsigned int TXBCGFIM : 1;
    unsigned int TXMCGFIM : 1;
    unsigned int TX64OCTGBFIM : 1;
    unsigned int TX65T127OCTGBFIM : 1;
    unsigned int TX128T255OCTGBFIM : 1;
    unsigned int TX256T511OCTGBFIM : 1;
    unsigned int TX512T1023OCTGBFIM : 1;
    unsigned int TX1024TMAXOCTGBFIM : 1;
    unsigned int TXUCGBFIM : 1;
    unsigned int TXMCGBFIM : 1;
    unsigned int TXBCGBFIM : 1;
    unsigned int TXUFLOWERFIM : 1;
    unsigned int TXSCOLGFIM : 1;
    unsigned int TXMCOLGFIM : 1;
    unsigned int TXDEFFIM : 1;
    unsigned int TXLATCOLFIM : 1;
    unsigned int TXEXCOLFIM : 1;
    unsigned int TXCARERFIM : 1;
    unsigned int TXGOCTIM : 1;
    unsigned int TXGFRMIM : 1;
    unsigned int TXEXDEFFIM : 1;
    unsigned int TXPAUSFIM : 1;
    unsigned int TXVLANGFIM : 1;
    unsigned int TXOSIZEGFIM : 1;
    unsigned int reserved_26 : 6;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits;


typedef struct _Ifx_ETH_OPERATION_MODE_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SR : 1;
    unsigned int OSF : 1;
    unsigned int RTC : 2;
    unsigned int reserved_5 : 1;
    unsigned int FUF : 1;
    unsigned int FEF : 1;
    unsigned int EFC : 1;
    unsigned int RFA : 2;
    unsigned int RFD : 2;
    unsigned int ST : 1;
    unsigned int TTC : 3;
    unsigned int reserved_17 : 3;
    unsigned int FTF : 1;
    unsigned int TSF : 1;
    unsigned int RFD_2 : 1;
    unsigned int RFA_2 : 1;
    unsigned int DFF : 1;
    unsigned int RSF : 1;
    unsigned int DT : 1;
    unsigned int reserved_27 : 5;
} Ifx_ETH_OPERATION_MODE_Bits;


typedef struct _Ifx_ETH_PMT_CONTROL_STATUS_Bits
{
    unsigned int PWRDWN : 1;
    unsigned int MGKPKTEN : 1;
    unsigned int RWKPKTEN : 1;
    unsigned int reserved_3 : 2;
    unsigned int MGKPRCVD : 1;
    unsigned int RWKPRCVD : 1;
    unsigned int reserved_7 : 2;
    unsigned int GLBLUCAST : 1;
    unsigned int reserved_10 : 21;
    unsigned int RWKFILTRST : 1;
} Ifx_ETH_PMT_CONTROL_STATUS_Bits;


typedef struct _Ifx_ETH_PPS_CONTROL_Bits
{
    unsigned int PPSCTRL_PPSCMD : 4;
    unsigned int PPSEN0 : 1;
    unsigned int TRGTMODSEL0 : 2;
    unsigned int reserved_7 : 1;
    unsigned int PPSCMD1 : 3;
    unsigned int reserved_11 : 2;
    unsigned int TRGTMODSEL1 : 2;
    unsigned int reserved_15 : 1;
    unsigned int PPSCMD2 : 3;
    unsigned int reserved_19 : 2;
    unsigned int TRGTMODSEL2 : 2;
    unsigned int reserved_23 : 1;
    unsigned int PPSCMD3 : 3;
    unsigned int reserved_27 : 2;
    unsigned int TRGTMODSEL3 : 2;
    unsigned int reserved_31 : 1;
} Ifx_ETH_PPS_CONTROL_Bits;


typedef struct _Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int RDESLA : 30;
} Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits;


typedef struct _Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits
{
    unsigned int RIWT : 8;
    unsigned int reserved_8 : 24;
} Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits;


typedef struct _Ifx_ETH_RECEIVE_POLL_DEMAND_Bits
{
    unsigned int RPD : 32;
} Ifx_ETH_RECEIVE_POLL_DEMAND_Bits;


typedef struct _Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits
{
    unsigned int WKUPFRMFTR : 32;
} Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits;



typedef struct _Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX1024_MAXOCTGB : 32;
} Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX128_255OCTGB : 32;
} Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX256_511OCTGB : 32;
} Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX512_1023OCTGB : 32;
} Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX64OCTGB : 32;
} Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int RX65_127OCTGB : 32;
} Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits
{
    unsigned int RXALGNERR : 32;
} Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits
{
    unsigned int RXBCASTG : 32;
} Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits
{
    unsigned int RXCTRLG : 32;
} Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits
{
    unsigned int RXCRCERR : 32;
} Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits
{
    unsigned int RXFIFOOVFL : 32;
} Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits
{
    unsigned int RXFRMGB : 32;
} Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits
{
    unsigned int RXJABERR : 32;
} Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits
{
    unsigned int RXLENERR : 32;
} Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits
{
    unsigned int RXMCASTG : 32;
} Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits
{
    unsigned int RXOCTGB : 32;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits
{
    unsigned int RXOCTG : 32;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits
{
    unsigned int RXOUTOFRNG : 32;
} Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits
{
    unsigned int RXOVERSZG : 32;
} Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_PAUSE_FRAMES_Bits
{
    unsigned int RXPAUSEFRM : 32;
} Ifx_ETH_RX_PAUSE_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits
{
    unsigned int RXRCVERR : 32;
} Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits
{
    unsigned int RXRUNTERR : 32;
} Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits
{
    unsigned int RXUNDERSZG : 32;
} Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits
{
    unsigned int RXUCASTG : 32;
} Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits
{
    unsigned int RXVLANFRGB : 32;
} Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits
{
    unsigned int RXWDGERR : 32;
} Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_ERROR_FRAMES_Bits
{
    unsigned int RXICMPERRFRM : 32;
} Ifx_ETH_RXICMP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_ERROR_OCTETS_Bits
{
    unsigned int RXICMPERROCT : 32;
} Ifx_ETH_RXICMP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXICMP_GOOD_FRAMES_Bits
{
    unsigned int RXICMPGDFRM : 32;
} Ifx_ETH_RXICMP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXICMP_GOOD_OCTETS_Bits
{
    unsigned int RXICMPGDOCT : 32;
} Ifx_ETH_RXICMP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits
{
    unsigned int RXIPV4FRAGFRM : 32;
} Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits
{
    unsigned int RXIPV4FRAGOCT : 32;
} Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits
{
    unsigned int RXIPV4GDFRM : 32;
} Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits
{
    unsigned int RXIPV4GDOCT : 32;
} Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits
{
    unsigned int RXIPV4HDRERRFRM : 32;
} Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits
{
    unsigned int RXIPV4HDRERROCT : 32;
} Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits
{
    unsigned int RXIPV4NOPAYFRM : 32;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits
{
    unsigned int RXIPV4NOPAYOCT : 32;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits
{
    unsigned int RXIPV4UDSBLOCT : 32;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits;



typedef struct _Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits
{
    unsigned int RXIPV4UDSBLFRM : 32;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits
{
    unsigned int RXIPV6GDFRM : 32;
} Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits
{
    unsigned int RXIPV6GDOCT : 32;
} Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits
{
    unsigned int RXIPV6HDRERRFRM : 32;
} Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits
{
    unsigned int RXIPV6HDRERROCT : 32;
} Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits
{
    unsigned int RXIPV6NOPAYFRM : 32;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits
{
    unsigned int RXIPV6NOPAYOCT : 32;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXTCP_ERROR_FRAMES_Bits
{
    unsigned int RXTCPERRFRM : 32;
} Ifx_ETH_RXTCP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXTCP_ERROR_OCTETS_Bits
{
    unsigned int RXTCPERROCT : 32;
} Ifx_ETH_RXTCP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXTCP_GOOD_FRAMES_Bits
{
    unsigned int RXTCPGDFRM : 32;
} Ifx_ETH_RXTCP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXTCP_GOOD_OCTETS_Bits
{
    unsigned int RXTCPGDOCT : 32;
} Ifx_ETH_RXTCP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_RXUDP_ERROR_FRAMES_Bits
{
    unsigned int RXUDPERRFRM : 32;
} Ifx_ETH_RXUDP_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_RXUDP_ERROR_OCTETS_Bits
{
    unsigned int RXUDPERROCT : 32;
} Ifx_ETH_RXUDP_ERROR_OCTETS_Bits;


typedef struct _Ifx_ETH_RXUDP_GOOD_FRAMES_Bits
{
    unsigned int RXUDPGDFRM : 32;
} Ifx_ETH_RXUDP_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_RXUDP_GOOD_OCTETS_Bits
{
    unsigned int RXUDPGDOCT : 32;
} Ifx_ETH_RXUDP_GOOD_OCTETS_Bits;


typedef struct _Ifx_ETH_STATUS_Bits
{
    unsigned int TI : 1;
    unsigned int TPS : 1;
    unsigned int TU : 1;
    unsigned int TJT : 1;
    unsigned int OVF : 1;
    unsigned int UNF : 1;
    unsigned int RI : 1;
    unsigned int RU : 1;
    unsigned int RPS : 1;
    unsigned int RWT : 1;
    unsigned int ETI : 1;
    unsigned int reserved_11 : 2;
    unsigned int FBI : 1;
    unsigned int ERI : 1;
    unsigned int AIS : 1;
    unsigned int NIS : 1;
    unsigned int RS : 3;
    unsigned int TS : 3;
    unsigned int EB : 3;
    unsigned int GLI : 1;
    unsigned int GMI : 1;
    unsigned int GPI : 1;
    unsigned int TTI : 1;
    unsigned int GLPII : 1;
    unsigned int reserved_31 : 1;
} Ifx_ETH_STATUS_Bits;


typedef struct _Ifx_ETH_SUB_SECOND_INCREMENT_Bits
{
    unsigned int SSINC : 8;
    unsigned int reserved_8 : 24;
} Ifx_ETH_SUB_SECOND_INCREMENT_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits
{
    unsigned int TSHWR : 16;
    unsigned int reserved_16 : 16;
} Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits
{
    unsigned int TSSS : 31;
    unsigned int reserved_31 : 1;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits
{
    unsigned int TSSS : 31;
    unsigned int ADDSUB : 1;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_SECONDS_Bits
{
    unsigned int TSS : 32;
} Ifx_ETH_SYSTEM_TIME_SECONDS_Bits;


typedef struct _Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits
{
    unsigned int TSS : 32;
} Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits;


typedef struct _Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits
{
    unsigned int TTSLO : 31;
    unsigned int TRGTBUSY : 1;
} Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits;


typedef struct _Ifx_ETH_TARGET_TIME_SECONDS_Bits
{
    unsigned int TSTR : 32;
} Ifx_ETH_TARGET_TIME_SECONDS_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_ADDEND_Bits
{
    unsigned int TSAR : 32;
} Ifx_ETH_TIMESTAMP_ADDEND_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_CONTROL_Bits
{
    unsigned int TSENA : 1;
    unsigned int TSCFUPDT : 1;
    unsigned int TSINIT : 1;
    unsigned int TSUPDT : 1;
    unsigned int TSTRIG : 1;
    unsigned int TSADDREG : 1;
    unsigned int reserved_6 : 2;
    unsigned int TSENALL : 1;
    unsigned int TSCTRLSSR : 1;
    unsigned int TSVER2ENA : 1;
    unsigned int TSIPENA : 1;
    unsigned int TSIPV6ENA : 1;
    unsigned int TSIPV4ENA : 1;
    unsigned int TSEVNTENA : 1;
    unsigned int TSMSTRENA : 1;
    unsigned int SNAPTYPSEL : 2;
    unsigned int TSENMACADDR : 1;
    unsigned int reserved_19 : 5;
    unsigned int ATSFC : 1;
    unsigned int ATSEN0 : 1;
    unsigned int ATSEN1 : 1;
    unsigned int ATSEN2 : 1;
    unsigned int ATSEN3 : 1;
    unsigned int reserved_29 : 3;
} Ifx_ETH_TIMESTAMP_CONTROL_Bits;


typedef struct _Ifx_ETH_TIMESTAMP_STATUS_Bits
{
    unsigned int TSSOVF : 1;
    unsigned int TSTARGT : 1;
    unsigned int AUXTSTRIG : 1;
    unsigned int TSTRGTERR : 1;
    unsigned int TSTARGT1 : 1;
    unsigned int TSTRGTERR1 : 1;
    unsigned int TSTARGT2 : 1;
    unsigned int TSTRGTERR2 : 1;
    unsigned int TSTARGT3 : 1;
    unsigned int TSTRGTERR3 : 1;
    unsigned int reserved_10 : 6;
    unsigned int ATSSTN : 4;
    unsigned int reserved_20 : 4;
    unsigned int ATSSTM : 1;
    unsigned int ATSNS : 5;
    unsigned int reserved_30 : 2;
} Ifx_ETH_TIMESTAMP_STATUS_Bits;


typedef struct _Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int TDESLA : 30;
} Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits;


typedef struct _Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits
{
    unsigned int TPD : 32;
} Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits;



typedef struct _Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX1024_MAXOCTGB : 32;
} Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX128_255OCTGB : 32;
} Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX256_511OCTGB : 32;
} Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX512_1023OCTGB : 32;
} Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX64OCTGB : 32;
} Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits;



typedef struct _Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits
{
    unsigned int TX65_127OCTGB : 32;
} Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXBCASTGB : 32;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits
{
    unsigned int TXBCASTG : 32;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits
{
    unsigned int TXCARR : 32;
} Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_DEFERRED_FRAMES_Bits
{
    unsigned int TXDEFRD : 32;
} Ifx_ETH_TX_DEFERRED_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits
{
    unsigned int TXEXSCOL : 32;
} Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits
{
    unsigned int TXEXSDEF : 32;
} Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits;


typedef struct _Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits
{
    unsigned int TXFRMGB : 32;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits
{
    unsigned int TXFRMG : 32;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits
{
    unsigned int TXLATECOL : 32;
} Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXMCASTGB : 32;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits
{
    unsigned int TXMCASTG : 32;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits;



typedef struct _Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits
{
    unsigned int TXMULTCOLG : 32;
} Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits
{
    unsigned int TXOCTGB : 32;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits
{
    unsigned int TXOCTG : 32;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits;


typedef struct _Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits
{
    unsigned int TXOSIZG : 32;
} Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_TX_PAUSE_FRAMES_Bits
{
    unsigned int TXPAUSE : 32;
} Ifx_ETH_TX_PAUSE_FRAMES_Bits;



typedef struct _Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits
{
    unsigned int TXSNGLCOLG : 32;
} Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits
{
    unsigned int TXUNDRFLW : 32;
} Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits;


typedef struct _Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits
{
    unsigned int TXUCASTGB : 32;
} Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits;


typedef struct _Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits
{
    unsigned int TXVLANG : 32;
} Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits;


typedef struct _Ifx_ETH_VERSION_Bits
{
    unsigned int SNPSVER : 8;
    unsigned int USERVER : 8;
    unsigned int reserved_16 : 16;
} Ifx_ETH_VERSION_Bits;


typedef struct _Ifx_ETH_VLAN_TAG_Bits
{
    unsigned int VL : 16;
    unsigned int ETV : 1;
    unsigned int VTIM : 1;
    unsigned int ESVL : 1;
    unsigned int VTHM : 1;
    unsigned int reserved_20 : 12;
} Ifx_ETH_VLAN_TAG_Bits;







typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_ACCEN0_Bits B;
} Ifx_ETH_ACCEN0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_ACCEN1_Bits B;
} Ifx_ETH_ACCEN1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_AHB_OR_AXI_STATUS_Bits B;
} Ifx_ETH_AHB_OR_AXI_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_BUS_MODE_Bits B;
} Ifx_ETH_BUS_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CLC_Bits B;
} Ifx_ETH_CLC;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS_Bits B;
} Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR_Bits B;
} Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS_Bits B;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR_Bits B;
} Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_DEBUG_Bits B;
} Ifx_ETH_DEBUG;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_FLOW_CONTROL_Bits B;
} Ifx_ETH_FLOW_CONTROL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_GMII_ADDRESS_Bits B;
} Ifx_ETH_GMII_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_GMII_DATA_Bits B;
} Ifx_ETH_GMII_DATA;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_GPCTL_Bits B;
} Ifx_ETH_GPCTL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_HASH_TABLE_HIGH_Bits B;
} Ifx_ETH_HASH_TABLE_HIGH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_HASH_TABLE_LOW_Bits B;
} Ifx_ETH_HASH_TABLE_LOW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_HW_FEATURE_Bits B;
} Ifx_ETH_HW_FEATURE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_ID_Bits B;
} Ifx_ETH_ID;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_INTERRUPT_ENABLE_Bits B;
} Ifx_ETH_INTERRUPT_ENABLE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_INTERRUPT_MASK_Bits B;
} Ifx_ETH_INTERRUPT_MASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_INTERRUPT_STATUS_Bits B;
} Ifx_ETH_INTERRUPT_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_KRST0_Bits B;
} Ifx_ETH_KRST0;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_KRST1_Bits B;
} Ifx_ETH_KRST1;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_KRSTCLR_Bits B;
} Ifx_ETH_KRSTCLR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MAC_ADDRESS_HIGH_Bits B;
} Ifx_ETH_MAC_ADDRESS_HIGH;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MAC_ADDRESS_LOW_Bits B;
} Ifx_ETH_MAC_ADDRESS_LOW;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MAC_CONFIGURATION_Bits B;
} Ifx_ETH_MAC_CONFIGURATION;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MAC_FRAME_FILTER_Bits B;
} Ifx_ETH_MAC_FRAME_FILTER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER_Bits B;
} Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_CONTROL_Bits B;
} Ifx_ETH_MMC_CONTROL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_Bits B;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT_Bits B;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_Bits B;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK_Bits B;
} Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_OPERATION_MODE_Bits B;
} Ifx_ETH_OPERATION_MODE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_PMT_CONTROL_STATUS_Bits B;
} Ifx_ETH_PMT_CONTROL_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_PPS_CONTROL_Bits B;
} Ifx_ETH_PPS_CONTROL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS_Bits B;
} Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER_Bits B;
} Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RECEIVE_POLL_DEMAND_Bits B;
} Ifx_ETH_RECEIVE_POLL_DEMAND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER_Bits B;
} Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_BROADCAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_BROADCAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_CONTROL_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_CONTROL_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_CRC_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_CRC_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES_Bits B;
} Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_JABBER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_JABBER_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_LENGTH_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_LENGTH_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_MULTICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_MULTICAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_OCTET_COUNT_GOOD_Bits B;
} Ifx_ETH_RX_OCTET_COUNT_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES_Bits B;
} Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_PAUSE_FRAMES_Bits B;
} Ifx_ETH_RX_PAUSE_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_RECEIVE_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_RECEIVE_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_RUNT_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_RUNT_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_UNICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_RX_UNICAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES_Bits B;
} Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXICMP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXICMP_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXICMP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXICMP_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXICMP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXICMP_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXICMP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXICMP_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS_Bits B;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES_Bits B;
} Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES_Bits B;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS_Bits B;
} Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXTCP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXTCP_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXTCP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXTCP_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXTCP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXTCP_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXTCP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXTCP_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXUDP_ERROR_FRAMES_Bits B;
} Ifx_ETH_RXUDP_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXUDP_ERROR_OCTETS_Bits B;
} Ifx_ETH_RXUDP_ERROR_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXUDP_GOOD_FRAMES_Bits B;
} Ifx_ETH_RXUDP_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_RXUDP_GOOD_OCTETS_Bits B;
} Ifx_ETH_RXUDP_GOOD_OCTETS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_STATUS_Bits B;
} Ifx_ETH_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SUB_SECOND_INCREMENT_Bits B;
} Ifx_ETH_SUB_SECOND_INCREMENT;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE_Bits B;
} Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_SECONDS_Bits B;
} Ifx_ETH_SYSTEM_TIME_SECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE_Bits B;
} Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TARGET_TIME_NANOSECONDS_Bits B;
} Ifx_ETH_TARGET_TIME_NANOSECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TARGET_TIME_SECONDS_Bits B;
} Ifx_ETH_TARGET_TIME_SECONDS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TIMESTAMP_ADDEND_Bits B;
} Ifx_ETH_TIMESTAMP_ADDEND;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TIMESTAMP_CONTROL_Bits B;
} Ifx_ETH_TIMESTAMP_CONTROL;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TIMESTAMP_STATUS_Bits B;
} Ifx_ETH_TIMESTAMP_STATUS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS_Bits B;
} Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TRANSMIT_POLL_DEMAND_Bits B;
} Ifx_ETH_TRANSMIT_POLL_DEMAND;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_CARRIER_ERROR_FRAMES_Bits B;
} Ifx_ETH_TX_CARRIER_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_DEFERRED_FRAMES_Bits B;
} Ifx_ETH_TX_DEFERRED_FRAMES;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES_Bits B;
} Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR_Bits B;
} Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_FRAME_COUNT_GOOD_Bits B;
} Ifx_ETH_TX_FRAME_COUNT_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_LATE_COLLISION_FRAMES_Bits B;
} Ifx_ETH_TX_LATE_COLLISION_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES_Bits B;
} Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_OCTET_COUNT_GOOD_Bits B;
} Ifx_ETH_TX_OCTET_COUNT_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD_Bits B;
} Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_OSIZE_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_OSIZE_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_PAUSE_FRAMES_Bits B;
} Ifx_ETH_TX_PAUSE_FRAMES;



typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES_Bits B;
} Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES_Bits B;
} Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD_Bits B;
} Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_TX_VLAN_FRAMES_GOOD_Bits B;
} Ifx_ETH_TX_VLAN_FRAMES_GOOD;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_VERSION_Bits B;
} Ifx_ETH_VERSION;


typedef union
{
    unsigned int U;
    signed int I;
    Ifx_ETH_VLAN_TAG_Bits B;
} Ifx_ETH_VLAN_TAG;
# 2534 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
typedef volatile struct _Ifx_ETH_MAC_ADDRESS
{
    Ifx_ETH_MAC_ADDRESS_HIGH HIGH;
    Ifx_ETH_MAC_ADDRESS_LOW LOW;
} Ifx_ETH_MAC_ADDRESS;
# 2551 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_regdef.h"
typedef volatile struct _Ifx_ETH
{
    Ifx_ETH_CLC CLC;
    Ifx_ETH_ID ID;
    Ifx_ETH_GPCTL GPCTL;
    Ifx_ETH_ACCEN0 ACCEN0;
    Ifx_ETH_ACCEN1 ACCEN1;
    Ifx_ETH_KRST0 KRST0;
    Ifx_ETH_KRST1 KRST1;
    Ifx_ETH_KRSTCLR KRSTCLR;
    unsigned char reserved_20[4064];
    Ifx_ETH_MAC_CONFIGURATION MAC_CONFIGURATION;
    Ifx_ETH_MAC_FRAME_FILTER MAC_FRAME_FILTER;
    Ifx_ETH_HASH_TABLE_HIGH HASH_TABLE_HIGH;
    Ifx_ETH_HASH_TABLE_LOW HASH_TABLE_LOW;
    Ifx_ETH_GMII_ADDRESS GMII_ADDRESS;
    Ifx_ETH_GMII_DATA GMII_DATA;
    Ifx_ETH_FLOW_CONTROL FLOW_CONTROL;
    Ifx_ETH_VLAN_TAG VLAN_TAG;
    Ifx_ETH_VERSION VERSION;
    Ifx_ETH_DEBUG DEBUG;
    Ifx_ETH_REMOTE_WAKE_UP_FRAME_FILTER REMOTE_WAKE_UP_FRAME_FILTER;
    Ifx_ETH_PMT_CONTROL_STATUS PMT_CONTROL_STATUS;
    unsigned char reserved_1030[8];
    Ifx_ETH_INTERRUPT_STATUS INTERRUPT_STATUS;
    Ifx_ETH_INTERRUPT_MASK INTERRUPT_MASK;
    Ifx_ETH_MAC_ADDRESS MAC_ADDRESS_G0[16];
    unsigned char reserved_10C0[64];
    Ifx_ETH_MMC_CONTROL MMC_CONTROL;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT MMC_RECEIVE_INTERRUPT;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT MMC_TRANSMIT_INTERRUPT;
    Ifx_ETH_MMC_RECEIVE_INTERRUPT_MASK MMC_RECEIVE_INTERRUPT_MASK;
    Ifx_ETH_MMC_TRANSMIT_INTERRUPT_MASK MMC_TRANSMIT_INTERRUPT_MASK;
    Ifx_ETH_TX_OCTET_COUNT_GOOD_BAD TX_OCTET_COUNT_GOOD_BAD;
    Ifx_ETH_TX_FRAME_COUNT_GOOD_BAD TX_FRAME_COUNT_GOOD_BAD;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD TX_BROADCAST_FRAMES_GOOD;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD TX_MULTICAST_FRAMES_GOOD;
    Ifx_ETH_TX_64OCTETS_FRAMES_GOOD_BAD TX_64OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_65TO127OCTETS_FRAMES_GOOD_BAD TX_65TO127OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_128TO255OCTETS_FRAMES_GOOD_BAD TX_128TO255OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_256TO511OCTETS_FRAMES_GOOD_BAD TX_256TO511OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_512TO1023OCTETS_FRAMES_GOOD_BAD TX_512TO1023OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD TX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_UNICAST_FRAMES_GOOD_BAD TX_UNICAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_MULTICAST_FRAMES_GOOD_BAD TX_MULTICAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_BROADCAST_FRAMES_GOOD_BAD TX_BROADCAST_FRAMES_GOOD_BAD;
    Ifx_ETH_TX_UNDERFLOW_ERROR_FRAMES TX_UNDERFLOW_ERROR_FRAMES;
    Ifx_ETH_TX_SINGLE_COLLISION_GOOD_FRAMES TX_SINGLE_COLLISION_GOOD_FRAMES;
    Ifx_ETH_TX_MULTIPLE_COLLISION_GOOD_FRAMES TX_MULTIPLE_COLLISION_GOOD_FRAMES;
    Ifx_ETH_TX_DEFERRED_FRAMES TX_DEFERRED_FRAMES;
    Ifx_ETH_TX_LATE_COLLISION_FRAMES TX_LATE_COLLISION_FRAMES;
    Ifx_ETH_TX_EXCESSIVE_COLLISION_FRAMES TX_EXCESSIVE_COLLISION_FRAMES;
    Ifx_ETH_TX_CARRIER_ERROR_FRAMES TX_CARRIER_ERROR_FRAMES;
    Ifx_ETH_TX_OCTET_COUNT_GOOD TX_OCTET_COUNT_GOOD;
    Ifx_ETH_TX_FRAME_COUNT_GOOD TX_FRAME_COUNT_GOOD;
    Ifx_ETH_TX_EXCESSIVE_DEFERRAL_ERROR TX_EXCESSIVE_DEFERRAL_ERROR;
    Ifx_ETH_TX_PAUSE_FRAMES TX_PAUSE_FRAMES;
    Ifx_ETH_TX_VLAN_FRAMES_GOOD TX_VLAN_FRAMES_GOOD;
    Ifx_ETH_TX_OSIZE_FRAMES_GOOD TX_OSIZE_FRAMES_GOOD;
    unsigned char reserved_117C[4];
    Ifx_ETH_RX_FRAMES_COUNT_GOOD_BAD RX_FRAMES_COUNT_GOOD_BAD;
    Ifx_ETH_RX_OCTET_COUNT_GOOD_BAD RX_OCTET_COUNT_GOOD_BAD;
    Ifx_ETH_RX_OCTET_COUNT_GOOD RX_OCTET_COUNT_GOOD;
    Ifx_ETH_RX_BROADCAST_FRAMES_GOOD RX_BROADCAST_FRAMES_GOOD;
    Ifx_ETH_RX_MULTICAST_FRAMES_GOOD RX_MULTICAST_FRAMES_GOOD;
    Ifx_ETH_RX_CRC_ERROR_FRAMES RX_CRC_ERROR_FRAMES;
    Ifx_ETH_RX_ALIGNMENT_ERROR_FRAMES RX_ALIGNMENT_ERROR_FRAMES;
    Ifx_ETH_RX_RUNT_ERROR_FRAMES RX_RUNT_ERROR_FRAMES;
    Ifx_ETH_RX_JABBER_ERROR_FRAMES RX_JABBER_ERROR_FRAMES;
    Ifx_ETH_RX_UNDERSIZE_FRAMES_GOOD RX_UNDERSIZE_FRAMES_GOOD;
    Ifx_ETH_RX_OVERSIZE_FRAMES_GOOD RX_OVERSIZE_FRAMES_GOOD;
    Ifx_ETH_RX_64OCTETS_FRAMES_GOOD_BAD RX_64OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_65TO127OCTETS_FRAMES_GOOD_BAD RX_65TO127OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_128TO255OCTETS_FRAMES_GOOD_BAD RX_128TO255OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_256TO511OCTETS_FRAMES_GOOD_BAD RX_256TO511OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_512TO1023OCTETS_FRAMES_GOOD_BAD RX_512TO1023OCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD RX_1024TOMAXOCTETS_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_UNICAST_FRAMES_GOOD RX_UNICAST_FRAMES_GOOD;
    Ifx_ETH_RX_LENGTH_ERROR_FRAMES RX_LENGTH_ERROR_FRAMES;
    Ifx_ETH_RX_OUT_OF_RANGE_TYPE_FRAMES RX_OUT_OF_RANGE_TYPE_FRAMES;
    Ifx_ETH_RX_PAUSE_FRAMES RX_PAUSE_FRAMES;
    Ifx_ETH_RX_FIFO_OVERFLOW_FRAMES RX_FIFO_OVERFLOW_FRAMES;
    Ifx_ETH_RX_VLAN_FRAMES_GOOD_BAD RX_VLAN_FRAMES_GOOD_BAD;
    Ifx_ETH_RX_WATCHDOG_ERROR_FRAMES RX_WATCHDOG_ERROR_FRAMES;
    Ifx_ETH_RX_RECEIVE_ERROR_FRAMES RX_RECEIVE_ERROR_FRAMES;
    Ifx_ETH_RX_CONTROL_FRAMES_GOOD RX_CONTROL_FRAMES_GOOD;
    unsigned char reserved_11E8[24];
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT_MASK MMC_IPC_RECEIVE_INTERRUPT_MASK;
    unsigned char reserved_1204[4];
    Ifx_ETH_MMC_IPC_RECEIVE_INTERRUPT MMC_IPC_RECEIVE_INTERRUPT;
    unsigned char reserved_120C[4];
    Ifx_ETH_RXIPV4_GOOD_FRAMES RXIPV4_GOOD_FRAMES;
    Ifx_ETH_RXIPV4_HEADER_ERROR_FRAMES RXIPV4_HEADER_ERROR_FRAMES;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_FRAMES RXIPV4_NO_PAYLOAD_FRAMES;
    Ifx_ETH_RXIPV4_FRAGMENTED_FRAMES RXIPV4_FRAGMENTED_FRAMES;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES RXIPV4_UDP_CHECKSUM_DISABLED_FRAMES;
    Ifx_ETH_RXIPV6_GOOD_FRAMES RXIPV6_GOOD_FRAMES;
    Ifx_ETH_RXIPV6_HEADER_ERROR_FRAMES RXIPV6_HEADER_ERROR_FRAMES;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_FRAMES RXIPV6_NO_PAYLOAD_FRAMES;
    Ifx_ETH_RXUDP_GOOD_FRAMES RXUDP_GOOD_FRAMES;
    Ifx_ETH_RXUDP_ERROR_FRAMES RXUDP_ERROR_FRAMES;
    Ifx_ETH_RXTCP_GOOD_FRAMES RXTCP_GOOD_FRAMES;
    Ifx_ETH_RXTCP_ERROR_FRAMES RXTCP_ERROR_FRAMES;
    Ifx_ETH_RXICMP_GOOD_FRAMES RXICMP_GOOD_FRAMES;
    Ifx_ETH_RXICMP_ERROR_FRAMES RXICMP_ERROR_FRAMES;
    unsigned char reserved_1248[8];
    Ifx_ETH_RXIPV4_GOOD_OCTETS RXIPV4_GOOD_OCTETS;
    Ifx_ETH_RXIPV4_HEADER_ERROR_OCTETS RXIPV4_HEADER_ERROR_OCTETS;
    Ifx_ETH_RXIPV4_NO_PAYLOAD_OCTETS RXIPV4_NO_PAYLOAD_OCTETS;
    Ifx_ETH_RXIPV4_FRAGMENTED_OCTETS RXIPV4_FRAGMENTED_OCTETS;
    Ifx_ETH_RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS RXIPV4_UDP_CHECKSUM_DISABLE_OCTETS;
    Ifx_ETH_RXIPV6_GOOD_OCTETS RXIPV6_GOOD_OCTETS;
    Ifx_ETH_RXIPV6_HEADER_ERROR_OCTETS RXIPV6_HEADER_ERROR_OCTETS;
    Ifx_ETH_RXIPV6_NO_PAYLOAD_OCTETS RXIPV6_NO_PAYLOAD_OCTETS;
    Ifx_ETH_RXUDP_GOOD_OCTETS RXUDP_GOOD_OCTETS;
    Ifx_ETH_RXUDP_ERROR_OCTETS RXUDP_ERROR_OCTETS;
    Ifx_ETH_RXTCP_GOOD_OCTETS RXTCP_GOOD_OCTETS;
    Ifx_ETH_RXTCP_ERROR_OCTETS RXTCP_ERROR_OCTETS;
    Ifx_ETH_RXICMP_GOOD_OCTETS RXICMP_GOOD_OCTETS;
    Ifx_ETH_RXICMP_ERROR_OCTETS RXICMP_ERROR_OCTETS;
    unsigned char reserved_1288[1144];
    Ifx_ETH_TIMESTAMP_CONTROL TIMESTAMP_CONTROL;
    Ifx_ETH_SUB_SECOND_INCREMENT SUB_SECOND_INCREMENT;
    Ifx_ETH_SYSTEM_TIME_SECONDS SYSTEM_TIME_SECONDS;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS SYSTEM_TIME_NANOSECONDS;
    Ifx_ETH_SYSTEM_TIME_SECONDS_UPDATE SYSTEM_TIME_SECONDS_UPDATE;
    Ifx_ETH_SYSTEM_TIME_NANOSECONDS_UPDATE SYSTEM_TIME_NANOSECONDS_UPDATE;
    Ifx_ETH_TIMESTAMP_ADDEND TIMESTAMP_ADDEND;
    Ifx_ETH_TARGET_TIME_SECONDS TARGET_TIME_SECONDS;
    Ifx_ETH_TARGET_TIME_NANOSECONDS TARGET_TIME_NANOSECONDS;
    Ifx_ETH_SYSTEM_TIME_HIGHER_WORD_SECONDS SYSTEM_TIME_HIGHER_WORD_SECONDS;
    Ifx_ETH_TIMESTAMP_STATUS TIMESTAMP_STATUS;
    Ifx_ETH_PPS_CONTROL PPS_CONTROL;
    unsigned char reserved_1730[208];
    Ifx_ETH_MAC_ADDRESS MAC_ADDRESS_G1[16];
    unsigned char reserved_1880[1920];
    Ifx_ETH_BUS_MODE BUS_MODE;
    Ifx_ETH_TRANSMIT_POLL_DEMAND TRANSMIT_POLL_DEMAND;
    Ifx_ETH_RECEIVE_POLL_DEMAND RECEIVE_POLL_DEMAND;
    Ifx_ETH_RECEIVE_DESCRIPTOR_LIST_ADDRESS RECEIVE_DESCRIPTOR_LIST_ADDRESS;
    Ifx_ETH_TRANSMIT_DESCRIPTOR_LIST_ADDRESS TRANSMIT_DESCRIPTOR_LIST_ADDRESS;
    Ifx_ETH_STATUS STATUS;
    Ifx_ETH_OPERATION_MODE OPERATION_MODE;
    Ifx_ETH_INTERRUPT_ENABLE INTERRUPT_ENABLE;
    Ifx_ETH_MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER MISSED_FRAME_AND_BUFFER_OVERFLOW_COUNTER;
    Ifx_ETH_RECEIVE_INTERRUPT_WATCHDOG_TIMER RECEIVE_INTERRUPT_WATCHDOG_TIMER;
    unsigned char reserved_2028[4];
    Ifx_ETH_AHB_OR_AXI_STATUS AHB_OR_AXI_STATUS;
    unsigned char reserved_2030[24];
    Ifx_ETH_CURRENT_HOST_TRANSMIT_DESCRIPTOR CURRENT_HOST_TRANSMIT_DESCRIPTOR;
    Ifx_ETH_CURRENT_HOST_RECEIVE_DESCRIPTOR CURRENT_HOST_RECEIVE_DESCRIPTOR;
    Ifx_ETH_CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS CURRENT_HOST_TRANSMIT_BUFFER_ADDRESS;
    Ifx_ETH_CURRENT_HOST_RECEIVE_BUFFER_ADDRESS CURRENT_HOST_RECEIVE_BUFFER_ADDRESS;
    Ifx_ETH_HW_FEATURE HW_FEATURE;
    unsigned char reserved_205C[164];
} Ifx_ETH;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxEth_reg.h" 2
# 32 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxEth_cfg.h" 1
# 33 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h" 2
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
# 34 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h" 2





typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Crs_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Crsdv_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxdv_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Refclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Txclk_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxd_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Col_In;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Mdc_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel inSelect;
    IfxPort_OutputIdx outSelect;
} IfxEth_Mdio_InOut;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txd_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txen_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxEth_Txer_Out;


typedef const struct
{
    Ifx_ETH* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxEth_Rxer_In;

extern IfxEth_Col_In IfxEth_COL_P10_2_IN;
extern IfxEth_Crs_In IfxEth_CRSB_P11_11_IN;
extern IfxEth_Crs_In IfxEth_CRSC_P10_1_IN;
extern IfxEth_Crsdv_In IfxEth_CRSDVA_P11_11_IN;
extern IfxEth_Mdc_Out IfxEth_MDC_P02_8_OUT;
extern IfxEth_Mdc_Out IfxEth_MDC_P21_2_OUT;
extern IfxEth_Mdio_InOut IfxEth_MDIO_P00_0_INOUT;
extern IfxEth_Mdio_InOut IfxEth_MDIO_P21_3_INOUT;
extern IfxEth_Refclk_In IfxEth_REFCLK_P11_12_IN;
extern IfxEth_Rxclk_In IfxEth_RXCLKA_P11_12_IN;
extern IfxEth_Rxd_In IfxEth_RXD0A_P11_10_IN;
extern IfxEth_Rxd_In IfxEth_RXD1A_P11_9_IN;
extern IfxEth_Rxd_In IfxEth_RXD2A_P11_8_IN;
extern IfxEth_Rxd_In IfxEth_RXD3B_P10_5_IN;
extern IfxEth_Rxdv_In IfxEth_RXDVA_P11_11_IN;
extern IfxEth_Rxer_In IfxEth_RXERB_P21_7_IN;
extern IfxEth_Rxer_In IfxEth_RXERC_P10_3_IN;
extern IfxEth_Txclk_In IfxEth_TXCLKB_P11_12_IN;
extern IfxEth_Txclk_In IfxEth_TXCLKC_P13_1_IN;
extern IfxEth_Txd_Out IfxEth_TXD0_P11_3_OUT;
extern IfxEth_Txd_Out IfxEth_TXD1_P11_2_OUT;
extern IfxEth_Txd_Out IfxEth_TXD2_P13_3_OUT;
extern IfxEth_Txd_Out IfxEth_TXD3_P13_2_OUT;
extern IfxEth_Txen_Out IfxEth_TXEN_P11_6_OUT;
extern IfxEth_Txer_Out IfxEth_TXER_P13_0_OUT;
# 196 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.h"
extern const IfxEth_Col_In *IfxEth_Col_In_pinTable[1][2];


extern const IfxEth_Crs_In *IfxEth_Crs_In_pinTable[1][3];


extern const IfxEth_Crsdv_In *IfxEth_Crsdv_In_pinTable[1][1];


extern const IfxEth_Mdc_Out *IfxEth_Mdc_Out_pinTable[1][2];


extern const IfxEth_Mdio_InOut *IfxEth_Mdio_InOut_pinTable[1][2];


extern const IfxEth_Refclk_In *IfxEth_Refclk_In_pinTable[1][1];


extern const IfxEth_Rxclk_In *IfxEth_Rxclk_In_pinTable[1][1];


extern const IfxEth_Rxd_In *IfxEth_Rxd_In_pinTable[1][1];


extern const IfxEth_Rxdv_In *IfxEth_Rxdv_In_pinTable[1][1];


extern const IfxEth_Rxer_In *IfxEth_Rxer_In_pinTable[1][3];


extern const IfxEth_Txclk_In *IfxEth_Txclk_In_pinTable[1][3];


extern const IfxEth_Txd_Out *IfxEth_Txd_Out_pinTable[1][4];


extern const IfxEth_Txen_Out *IfxEth_Txen_Out_pinTable[1][1];


extern const IfxEth_Txer_Out *IfxEth_Txer_Out_pinTable[1][1];
# 27 "0_Src/4_McHal/Tricore/_PinMap/IfxEth_PinMap.c" 2

IfxEth_Col_In IfxEth_COL_P10_2_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B000u), 2}, Ifx_RxSel_b};
IfxEth_Crs_In IfxEth_CRSB_P11_11_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u),11}, Ifx_RxSel_b};
IfxEth_Crs_In IfxEth_CRSC_P10_1_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B000u), 1}, Ifx_RxSel_c};
IfxEth_Crsdv_In IfxEth_CRSDVA_P11_11_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u),11}, Ifx_RxSel_a};
IfxEth_Mdc_Out IfxEth_MDC_P02_8_OUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003A200u), 8}, IfxPort_OutputIdx_alt6};
IfxEth_Mdc_Out IfxEth_MDC_P21_2_OUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003C100u), 2}, IfxPort_OutputIdx_alt5};
IfxEth_Mdio_InOut IfxEth_MDIO_P00_0_INOUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003A000u), 0}, Ifx_RxSel_b, IfxPort_OutputIdx_alt1};
IfxEth_Mdio_InOut IfxEth_MDIO_P21_3_INOUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003C100u), 3}, Ifx_RxSel_b, IfxPort_OutputIdx_alt1};
IfxEth_Refclk_In IfxEth_REFCLK_P11_12_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u),12}, Ifx_RxSel_a};
IfxEth_Rxclk_In IfxEth_RXCLKA_P11_12_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u),12}, Ifx_RxSel_a};
IfxEth_Rxd_In IfxEth_RXD0A_P11_10_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u),10}, Ifx_RxSel_a};
IfxEth_Rxd_In IfxEth_RXD1A_P11_9_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u), 9}, Ifx_RxSel_a};
IfxEth_Rxd_In IfxEth_RXD2A_P11_8_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u), 8}, Ifx_RxSel_a};
IfxEth_Rxd_In IfxEth_RXD3B_P10_5_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B000u), 5}, Ifx_RxSel_a};
IfxEth_Rxdv_In IfxEth_RXDVA_P11_11_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u),11}, Ifx_RxSel_a};
IfxEth_Rxer_In IfxEth_RXERB_P21_7_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003C100u), 7}, Ifx_RxSel_b};
IfxEth_Rxer_In IfxEth_RXERC_P10_3_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B000u), 3}, Ifx_RxSel_c};
IfxEth_Txclk_In IfxEth_TXCLKB_P11_12_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u),12}, Ifx_RxSel_b};
IfxEth_Txclk_In IfxEth_TXCLKC_P13_1_IN = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B300u), 1}, Ifx_RxSel_c};
IfxEth_Txd_Out IfxEth_TXD0_P11_3_OUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u), 3}, IfxPort_OutputIdx_alt6};
IfxEth_Txd_Out IfxEth_TXD1_P11_2_OUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u), 2}, IfxPort_OutputIdx_alt6};
IfxEth_Txd_Out IfxEth_TXD2_P13_3_OUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B300u), 3}, IfxPort_OutputIdx_alt6};
IfxEth_Txd_Out IfxEth_TXD3_P13_2_OUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B300u), 2}, IfxPort_OutputIdx_alt6};
IfxEth_Txen_Out IfxEth_TXEN_P11_6_OUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B100u), 6}, IfxPort_OutputIdx_alt6};
IfxEth_Txer_Out IfxEth_TXER_P13_0_OUT = {&(*(Ifx_ETH *)0xF001D000u), {&(*(Ifx_P *)0xF003B300u), 0}, IfxPort_OutputIdx_alt6};


const IfxEth_Col_In *IfxEth_Col_In_pinTable[1][2] = {
    {
        ((void *)0),
        &IfxEth_COL_P10_2_IN
    }
};

const IfxEth_Crs_In *IfxEth_Crs_In_pinTable[1][3] = {
    {
        ((void *)0),
        &IfxEth_CRSB_P11_11_IN,
        &IfxEth_CRSC_P10_1_IN
    }
};

const IfxEth_Crsdv_In *IfxEth_Crsdv_In_pinTable[1][1] = {
    {
        &IfxEth_CRSDVA_P11_11_IN
    }
};

const IfxEth_Mdc_Out *IfxEth_Mdc_Out_pinTable[1][2] = {
    {
        &IfxEth_MDC_P02_8_OUT,
        &IfxEth_MDC_P21_2_OUT
    }
};

const IfxEth_Mdio_InOut *IfxEth_Mdio_InOut_pinTable[1][2] = {
    {
        ((void *)0),
        &IfxEth_MDIO_P00_0_INOUT
    }
};

const IfxEth_Refclk_In *IfxEth_Refclk_In_pinTable[1][1] = {
    {
        &IfxEth_REFCLK_P11_12_IN
    }
};

const IfxEth_Rxclk_In *IfxEth_Rxclk_In_pinTable[1][1] = {
    {
        &IfxEth_RXCLKA_P11_12_IN
    }
};

const IfxEth_Rxd_In *IfxEth_Rxd_In_pinTable[1][1] = {
    {
        &IfxEth_RXD1A_P11_9_IN
    }
};

const IfxEth_Rxdv_In *IfxEth_Rxdv_In_pinTable[1][1] = {
    {
        &IfxEth_RXDVA_P11_11_IN
    }
};

const IfxEth_Rxer_In *IfxEth_Rxer_In_pinTable[1][3] = {
    {
        ((void *)0),
        &IfxEth_RXERB_P21_7_IN,
        &IfxEth_RXERC_P10_3_IN
    }
};

const IfxEth_Txclk_In *IfxEth_Txclk_In_pinTable[1][3] = {
    {
        ((void *)0),
        &IfxEth_TXCLKB_P11_12_IN,
        &IfxEth_TXCLKC_P13_1_IN
    }
};

const IfxEth_Txd_Out *IfxEth_Txd_Out_pinTable[1][4] = {
    {
        &IfxEth_TXD3_P13_2_OUT,
        &IfxEth_TXD2_P13_3_OUT,
        &IfxEth_TXD1_P11_2_OUT,
        &IfxEth_TXD0_P11_3_OUT
    }
};

const IfxEth_Txen_Out *IfxEth_Txen_Out_pinTable[1][1] = {
    {
        &IfxEth_TXEN_P11_6_OUT
    }
};

const IfxEth_Txer_Out *IfxEth_Txer_Out_pinTable[1][1] = {
    {
        &IfxEth_TXER_P13_0_OUT
    }
};
