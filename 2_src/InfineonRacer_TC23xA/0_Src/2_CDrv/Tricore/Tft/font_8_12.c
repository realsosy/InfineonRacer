// Created from bdf2c Version 3, (c) 2009, 2010 by Lutz Sammer
//      License AGPLv3: GNU Affero General Public License version 3
#include <Cpu/Std/Ifx_Types.h>
#include <Cpu/Std/IfxCpu_Intrinsics.h>
#include "font_8_12.h"

#define ________ 0x00
#define _______X 0x01
#define ______X_ 0x02
#define ______XX 0x03
#define _____X__ 0x04
#define _____X_X 0x05
#define _____XX_ 0x06
#define _____XXX 0x07
#define ____X___ 0x08
#define ____X__X 0x09
#define ____X_X_ 0x0A
#define ____X_XX 0x0B
#define ____XX__ 0x0C
#define ____XX_X 0x0D
#define ____XXX_ 0x0E
#define ____XXXX 0x0F
#define ___X____ 0x10
#define ___X___X 0x11
#define ___X__X_ 0x12
#define ___X__XX 0x13
#define ___X_X__ 0x14
#define ___X_X_X 0x15
#define ___X_XX_ 0x16
#define ___X_XXX 0x17
#define ___XX___ 0x18
#define ___XX__X 0x19
#define ___XX_X_ 0x1A
#define ___XX_XX 0x1B
#define ___XXX__ 0x1C
#define ___XXX_X 0x1D
#define ___XXXX_ 0x1E
#define ___XXXXX 0x1F
#define __X_____ 0x20
#define __X____X 0x21
#define __X___X_ 0x22
#define __X___XX 0x23
#define __X__X__ 0x24
#define __X__X_X 0x25
#define __X__XX_ 0x26
#define __X__XXX 0x27
#define __X_X___ 0x28
#define __X_X__X 0x29
#define __X_X_X_ 0x2A
#define __X_X_XX 0x2B
#define __X_XX__ 0x2C
#define __X_XX_X 0x2D
#define __X_XXX_ 0x2E
#define __X_XXXX 0x2F
#define __XX____ 0x30
#define __XX___X 0x31
#define __XX__X_ 0x32
#define __XX__XX 0x33
#define __XX_X__ 0x34
#define __XX_X_X 0x35
#define __XX_XX_ 0x36
#define __XX_XXX 0x37
#define __XXX___ 0x38
#define __XXX__X 0x39
#define __XXX_X_ 0x3A
#define __XXX_XX 0x3B
#define __XXXX__ 0x3C
#define __XXXX_X 0x3D
#define __XXXXX_ 0x3E
#define __XXXXXX 0x3F
#define _X______ 0x40
#define _X_____X 0x41
#define _X____X_ 0x42
#define _X____XX 0x43
#define _X___X__ 0x44
#define _X___X_X 0x45
#define _X___XX_ 0x46
#define _X___XXX 0x47
#define _X__X___ 0x48
#define _X__X__X 0x49
#define _X__X_X_ 0x4A
#define _X__X_XX 0x4B
#define _X__XX__ 0x4C
#define _X__XX_X 0x4D
#define _X__XXX_ 0x4E
#define _X__XXXX 0x4F
#define _X_X____ 0x50
#define _X_X___X 0x51
#define _X_X__X_ 0x52
#define _X_X__XX 0x53
#define _X_X_X__ 0x54
#define _X_X_X_X 0x55
#define _X_X_XX_ 0x56
#define _X_X_XXX 0x57
#define _X_XX___ 0x58
#define _X_XX__X 0x59
#define _X_XX_X_ 0x5A
#define _X_XX_XX 0x5B
#define _X_XXX__ 0x5C
#define _X_XXX_X 0x5D
#define _X_XXXX_ 0x5E
#define _X_XXXXX 0x5F
#define _XX_____ 0x60
#define _XX____X 0x61
#define _XX___X_ 0x62
#define _XX___XX 0x63
#define _XX__X__ 0x64
#define _XX__X_X 0x65
#define _XX__XX_ 0x66
#define _XX__XXX 0x67
#define _XX_X___ 0x68
#define _XX_X__X 0x69
#define _XX_X_X_ 0x6A
#define _XX_X_XX 0x6B
#define _XX_XX__ 0x6C
#define _XX_XX_X 0x6D
#define _XX_XXX_ 0x6E
#define _XX_XXXX 0x6F
#define _XXX____ 0x70
#define _XXX___X 0x71
#define _XXX__X_ 0x72
#define _XXX__XX 0x73
#define _XXX_X__ 0x74
#define _XXX_X_X 0x75
#define _XXX_XX_ 0x76
#define _XXX_XXX 0x77
#define _XXXX___ 0x78
#define _XXXX__X 0x79
#define _XXXX_X_ 0x7A
#define _XXXX_XX 0x7B
#define _XXXXX__ 0x7C
#define _XXXXX_X 0x7D
#define _XXXXXX_ 0x7E
#define _XXXXXXX 0x7F
#define X_______ 0x80
#define X______X 0x81
#define X_____X_ 0x82
#define X_____XX 0x83
#define X____X__ 0x84
#define X____X_X 0x85
#define X____XX_ 0x86
#define X____XXX 0x87
#define X___X___ 0x88
#define X___X__X 0x89
#define X___X_X_ 0x8A
#define X___X_XX 0x8B
#define X___XX__ 0x8C
#define X___XX_X 0x8D
#define X___XXX_ 0x8E
#define X___XXXX 0x8F
#define X__X____ 0x90
#define X__X___X 0x91
#define X__X__X_ 0x92
#define X__X__XX 0x93
#define X__X_X__ 0x94
#define X__X_X_X 0x95
#define X__X_XX_ 0x96
#define X__X_XXX 0x97
#define X__XX___ 0x98
#define X__XX__X 0x99
#define X__XX_X_ 0x9A
#define X__XX_XX 0x9B
#define X__XXX__ 0x9C
#define X__XXX_X 0x9D
#define X__XXXX_ 0x9E
#define X__XXXXX 0x9F
#define X_X_____ 0xA0
#define X_X____X 0xA1
#define X_X___X_ 0xA2
#define X_X___XX 0xA3
#define X_X__X__ 0xA4
#define X_X__X_X 0xA5
#define X_X__XX_ 0xA6
#define X_X__XXX 0xA7
#define X_X_X___ 0xA8
#define X_X_X__X 0xA9
#define X_X_X_X_ 0xAA
#define X_X_X_XX 0xAB
#define X_X_XX__ 0xAC
#define X_X_XX_X 0xAD
#define X_X_XXX_ 0xAE
#define X_X_XXXX 0xAF
#define X_XX____ 0xB0
#define X_XX___X 0xB1
#define X_XX__X_ 0xB2
#define X_XX__XX 0xB3
#define X_XX_X__ 0xB4
#define X_XX_X_X 0xB5
#define X_XX_XX_ 0xB6
#define X_XX_XXX 0xB7
#define X_XXX___ 0xB8
#define X_XXX__X 0xB9
#define X_XXX_X_ 0xBA
#define X_XXX_XX 0xBB
#define X_XXXX__ 0xBC
#define X_XXXX_X 0xBD
#define X_XXXXX_ 0xBE
#define X_XXXXXX 0xBF
#define XX______ 0xC0
#define XX_____X 0xC1
#define XX____X_ 0xC2
#define XX____XX 0xC3
#define XX___X__ 0xC4
#define XX___X_X 0xC5
#define XX___XX_ 0xC6
#define XX___XXX 0xC7
#define XX__X___ 0xC8
#define XX__X__X 0xC9
#define XX__X_X_ 0xCA
#define XX__X_XX 0xCB
#define XX__XX__ 0xCC
#define XX__XX_X 0xCD
#define XX__XXX_ 0xCE
#define XX__XXXX 0xCF
#define XX_X____ 0xD0
#define XX_X___X 0xD1
#define XX_X__X_ 0xD2
#define XX_X__XX 0xD3
#define XX_X_X__ 0xD4
#define XX_X_X_X 0xD5
#define XX_X_XX_ 0xD6
#define XX_X_XXX 0xD7
#define XX_XX___ 0xD8
#define XX_XX__X 0xD9
#define XX_XX_X_ 0xDA
#define XX_XX_XX 0xDB
#define XX_XXX__ 0xDC
#define XX_XXX_X 0xDD
#define XX_XXXX_ 0xDE
#define XX_XXXXX 0xDF
#define XXX_____ 0xE0
#define XXX____X 0xE1
#define XXX___X_ 0xE2
#define XXX___XX 0xE3
#define XXX__X__ 0xE4
#define XXX__X_X 0xE5
#define XXX__XX_ 0xE6
#define XXX__XXX 0xE7
#define XXX_X___ 0xE8
#define XXX_X__X 0xE9
#define XXX_X_X_ 0xEA
#define XXX_X_XX 0xEB
#define XXX_XX__ 0xEC
#define XXX_XX_X 0xED
#define XXX_XXX_ 0xEE
#define XXX_XXXX 0xEF
#define XXXX____ 0xF0
#define XXXX___X 0xF1
#define XXXX__X_ 0xF2
#define XXXX__XX 0xF3
#define XXXX_X__ 0xF4
#define XXXX_X_X 0xF5
#define XXXX_XX_ 0xF6
#define XXXX_XXX 0xF7
#define XXXXX___ 0xF8
#define XXXXX__X 0xF9
#define XXXXX_X_ 0xFA
#define XXXXX_XX 0xFB
#define XXXXXX__ 0xFC
#define XXXXXX_X 0xFD
#define XXXXXXX_ 0xFE
#define XXXXXXXX 0xFF

        /// character bitmap for each encoding
const uint8 __font_bitmap__8_12[256*FONT_YSIZE] = {
    //   0 $00 '0'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    //   1 $01 '1'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXXXX_,
    XX____XX,
    X______X,
    X_X__X_X,
    X______X,
    X_XXXX_X,
    X__XX__X,
    XX____XX,
    _XXXXXX_,
    ________,
    ________,
    //   2 $02 '2'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXXXX_,
    XXXXXXXX,
    XXXXXXXX,
    XX_XX_XX,
    XXXXXXXX,
    XX____XX,
    XXX__XXX,
    XXXXXXXX,
    _XXXXXX_,
    ________,
    ________,
    //   3 $03 '3'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    _X___X__,
    XXX_XXX_,
    XXXXXXX_,
    XXXXXXX_,
    XXXXXXX_,
    _XXXXX__,
    __XXX___,
    ___X____,
    ________,
    ________,
    //   4 $04 '4'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___X____,
    __XXX___,
    _XXXXX__,
    XXXXXXX_,
    XXXXXXX_,
    _XXXXX__,
    __XXX___,
    ___X____,
    ________,
    ________,
    ________,
    //   5 $05 '5'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XX___,
    __XXXX__,
    __XXXX__,
    XXXXXXXX,
    XXX__XXX,
    XXX__XXX,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ________,
    ________,
    //   6 $06 '6'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XX___,
    __XXXX__,
    _XXXXXX_,
    XXXXXXXX,
    XXXXXXXX,
    _XXXXXX_,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ________,
    ________,
    //   7 $07 '7'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    __XXXX__,
    _XXXXXX_,
    _XXXXXX_,
    __XXXX__,
    ________,
    ________,
    ________,
    ________,
    //   8 $08 '8'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XX____XX,
    X______X,
    X______X,
    XX____XX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    //   9 $09 '9'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    __XXXX__,
    _XXXXXX_,
    _XX__XX_,
    _X____X_,
    _X____X_,
    _XX__XX_,
    _XXXXXX_,
    __XXXX__,
    ________,
    ________,
    //  10 $0a '10'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XXXXXXXX,
    XXXXXXXX,
    XX____XX,
    X______X,
    X__XX__X,
    X_XXXX_X,
    X_XXXX_X,
    X__XX__X,
    X______X,
    XX____XX,
    XXXXXXXX,
    XXXXXXXX,
    //  11 $0b '11'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXXX_,
    ____XXX_,
    __XXX_X_,
    _XXX__X_,
    XXXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    //  12 $0c '12'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXX__,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    __XXXX__,
    ___XX___,
    _XXXXXX_,
    ___XX___,
    ___XX___,
    ________,
    ________,
    //  13 $0d '13'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XXXXX,
    ___XX__X,
    ___XX__X,
    ___XXXXX,
    ___XX___,
    ___XX___,
    _XXXX___,
    XXXXX___,
    _XXX____,
    ________,
    ________,
    //  14 $0e '14'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXXXXX,
    _XX___XX,
    _XXXXXXX,
    _XX___XX,
    _XX___XX,
    _XX___XX,
    _XX__XXX,
    XXX__XXX,
    XXX__XX_,
    XX______,
    ________,
    //  15 $0f '15'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ___XX___,
    XX_XX_XX,
    _XXXXXX_,
    XXX__XXX,
    XXX__XXX,
    _XXXXXX_,
    XX_XX_XX,
    ___XX___,
    ________,
    ________,
    //  16 $10 '16'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    X_______,
    XX______,
    XXX_____,
    XXXXX___,
    XXXXXXX_,
    XXXXX___,
    XXX_____,
    XX______,
    X_______,
    ________,
    ________,
    //  17 $11 '17'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ______X_,
    _____XX_,
    ____XXX_,
    __XXXXX_,
    XXXXXXX_,
    __XXXXX_,
    ____XXX_,
    _____XX_,
    ______X_,
    ________,
    ________,
    //  18 $12 '18'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XX___,
    __XXXX__,
    _XXXXXX_,
    ___XX___,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    __XXXX__,
    ___XX___,
    ________,
    ________,
    //  19 $13 '19'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    ________,
    ________,
    _XX__XX_,
    _XX__XX_,
    ________,
    ________,
    //  20 $14 '20'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXXXXX,
    XX_XX_XX,
    XX_XX_XX,
    XX_XX_XX,
    _XXXX_XX,
    ___XX_XX,
    ___XX_XX,
    ___XX_XX,
    ___XX_XX,
    ________,
    ________,
    //  21 $15 '21'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXXXX_,
    _XX___XX,
    __XX____,
    __XXXX__,
    _XX__XX_,
    _XX__XX_,
    __XXXX__,
    ____XX__,
    XX___XX_,
    _XXXXXX_,
    ________,
    //  22 $16 '22'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXXX_,
    XXXXXXX_,
    XXXXXXX_,
    ________,
    ________,
    //  23 $17 '23'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XX___,
    __XXXX__,
    _XXXXXX_,
    ___XX___,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    __XXXX__,
    ___XX___,
    _XXXXXX_,
    ________,
    //  24 $18 '24'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XX___,
    __XXXX__,
    _XXXXXX_,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ________,
    ________,
    //  25 $19 '25'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    __XXXX__,
    ___XX___,
    ________,
    ________,
    //  26 $1a '26'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ___XX___,
    ____XX__,
    XXXXXXX_,
    ____XX__,
    ___XX___,
    ________,
    ________,
    ________,
    ________,
    //  27 $1b '27'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    __XX____,
    _XX_____,
    XXXXXXX_,
    _XX_____,
    __XX____,
    ________,
    ________,
    ________,
    ________,
    //  28 $1c '28'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XX______,
    XX______,
    XX______,
    XXXXXXX_,
    ________,
    ________,
    ________,
    ________,
    //  29 $1d '29'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    __X__X__,
    _XX__XX_,
    XXXXXXXX,
    _XX__XX_,
    __X__X__,
    ________,
    ________,
    ________,
    ________,
    //  30 $1e '30'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ___X____,
    ___X____,
    __XXX___,
    __XXX___,
    _XXXXX__,
    _XXXXX__,
    XXXXXXX_,
    XXXXXXX_,
    ________,
    ________,
    //  31 $1f '31'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    XXXXXXX_,
    XXXXXXX_,
    _XXXXX__,
    _XXXXX__,
    __XXX___,
    __XXX___,
    ___X____,
    ___X____,
    ________,
    ________,
    //  32 $20 '32'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    //  33 $21 '33'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XX____,
    _XXXX___,
    _XXXX___,
    _XXXX___,
    __XX____,
    __XX____,
    ________,
    __XX____,
    __XX____,
    ________,
    ________,
    //  34 $22 '34'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    __X__X__,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    //  35 $23 '35'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XX_XX__,
    _XX_XX__,
    XXXXXXX_,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    XXXXXXX_,
    _XX_XX__,
    _XX_XX__,
    ________,
    ________,
    //  36 $24 '36'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    __XX____,
    __XX____,
    _XXXXX__,
    XX______,
    XX______,
    _XXXX___,
    ____XX__,
    ____XX__,
    XXXXX___,
    __XX____,
    __XX____,
    ________,
    //  37 $25 '37'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    XX___X__,
    XX__XX__,
    ___XX___,
    __XX____,
    _XX_____,
    XX__XX__,
    X___XX__,
    ________,
    ________,
    //  38 $26 '38'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXX____,
    XX_XX___,
    XX_XX___,
    _XXX____,
    XXXXX_X_,
    XX_XXXX_,
    XX__XX__,
    XX_XXX__,
    _XXX_XX_,
    ________,
    ________,
    //  39 $27 '39'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XX____,
    __XX____,
    __XX____,
    _XX_____,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    //  40 $28 '40'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ____XX__,
    ___XX___,
    __XX____,
    _XX_____,
    _XX_____,
    _XX_____,
    __XX____,
    ___XX___,
    ____XX__,
    ________,
    ________,
    //  41 $29 '41'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XX_____,
    __XX____,
    ___XX___,
    ____XX__,
    ____XX__,
    ____XX__,
    ___XX___,
    __XX____,
    _XX_____,
    ________,
    ________,
    //  42 $2a '42'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    _XX__XX_,
    __XXXX__,
    XXXXXXXX,
    __XXXX__,
    _XX__XX_,
    ________,
    ________,
    ________,
    ________,
    //  43 $2b '43'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ___XX___,
    ___XX___,
    ________,
    ________,
    ________,
    ________,
    //  44 $2c '44'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    __XXX___,
    __XXX___,
    _XX_____,
    ________,
    //  45 $2d '45'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXXX_,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    //  46 $2e '46'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    __XXX___,
    __XXX___,
    ________,
    ________,
    //  47 $2f '47'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ______X_,
    _____XX_,
    ____XX__,
    ___XX___,
    __XX____,
    _XX_____,
    XX______,
    X_______,
    ________,
    ________,
    //  48 $30 '48'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXXX__,
    XX___XX_,
    XX__XXX_,
    XX_XXXX_,
    XX_X_XX_,
    XXXX_XX_,
    XXX__XX_,
    XX___XX_,
    _XXXXX__,
    ________,
    ________,
    //  49 $31 '49'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___X____,
    __XX____,
    XXXX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    XXXXXX__,
    ________,
    ________,
    //  50 $32 '50'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    ____XX__,
    ___XX___,
    __XX____,
    _XX_____,
    XX__XX__,
    XXXXXX__,
    ________,
    ________,
    //  51 $33 '51'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    ____XX__,
    ____XX__,
    __XXX___,
    ____XX__,
    ____XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    //  52 $34 '52'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ____XX__,
    ___XXX__,
    __XXXX__,
    _XX_XX__,
    XX__XX__,
    XXXXXXX_,
    ____XX__,
    ____XX__,
    ___XXXX_,
    ________,
    ________,
    //  53 $35 '53'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXX__,
    XX______,
    XX______,
    XX______,
    XXXXX___,
    ____XX__,
    ____XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    //  54 $36 '54'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXX___,
    _XX_____,
    XX______,
    XX______,
    XXXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    //  55 $37 '55'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXXX_,
    XX___XX_,
    XX___XX_,
    _____XX_,
    ____XX__,
    ___XX___,
    __XX____,
    __XX____,
    __XX____,
    ________,
    ________,
    //  56 $38 '56'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XXX_XX__,
    _XXXX___,
    XX_XXX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    //  57 $39 '57'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXXX__,
    ___XX___,
    ___XX___,
    __XX____,
    _XXX____,
    ________,
    ________,
    //  58 $3a '58'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    __XXX___,
    __XXX___,
    ________,
    ________,
    __XXX___,
    __XXX___,
    ________,
    ________,
    ________,
    //  59 $3b '59'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    __XXX___,
    __XXX___,
    ________,
    ________,
    __XXX___,
    __XXX___,
    ___XX___,
    __XX____,
    ________,
    //  60 $3c '60'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ____XX__,
    ___XX___,
    __XX____,
    _XX_____,
    XX______,
    _XX_____,
    __XX____,
    ___XX___,
    ____XX__,
    ________,
    ________,
    //  61 $3d '61'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXXXXX_,
    ________,
    _XXXXXX_,
    ________,
    ________,
    ________,
    ________,
    ________,
    //  62 $3e '62'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XX_____,
    __XX____,
    ___XX___,
    ____XX__,
    _____XX_,
    ____XX__,
    ___XX___,
    __XX____,
    _XX_____,
    ________,
    ________,
    //  63 $3f '63'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    ____XX__,
    ___XX___,
    __XX____,
    __XX____,
    ________,
    __XX____,
    __XX____,
    ________,
    ________,
    //  64 $40 '64'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXXX__,
    XX___XX_,
    XX___XX_,
    XX_XXXX_,
    XX_XXXX_,
    XX_XXXX_,
    XX______,
    XX______,
    _XXXXX__,
    ________,
    ________,
    //  65 $41 '65'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XX____,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XXXXXX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    ________,
    ________,
    //  66 $42 '66'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXX__,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XXXXX__,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXXXXX__,
    ________,
    ________,
    //  67 $43 '67'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXX__,
    _XX__XX_,
    XX___XX_,
    XX______,
    XX______,
    XX______,
    XX___XX_,
    _XX__XX_,
    __XXXX__,
    ________,
    ________,
    //  68 $44 '68'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXX___,
    _XX_XX__,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX_XX__,
    XXXXX___,
    ________,
    ________,
    //  69 $45 '69'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXXX_,
    _XX___X_,
    _XX_____,
    _XX__X__,
    _XXXXX__,
    _XX__X__,
    _XX_____,
    _XX___X_,
    XXXXXXX_,
    ________,
    ________,
    //  70 $46 '70'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXXX_,
    _XX__XX_,
    _XX___X_,
    _XX__X__,
    _XXXXX__,
    _XX__X__,
    _XX_____,
    _XX_____,
    XXXX____,
    ________,
    ________,
    //  71 $47 '71'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXX__,
    _XX__XX_,
    XX___XX_,
    XX______,
    XX______,
    XX__XXX_,
    XX___XX_,
    _XX__XX_,
    __XXXXX_,
    ________,
    ________,
    //  72 $48 '72'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XXXXXX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    ________,
    ________,
    //  73 $49 '73'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    _XXXX___,
    ________,
    ________,
    //  74 $4a '74'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XXXX_,
    ____XX__,
    ____XX__,
    ____XX__,
    ____XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    //  75 $4b '75'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXX__XX_,
    _XX__XX_,
    _XX_XX__,
    _XX_XX__,
    _XXXX___,
    _XX_XX__,
    _XX_XX__,
    _XX__XX_,
    XXX__XX_,
    ________,
    ________,
    //  76 $4c '76'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXX____,
    _XX_____,
    _XX_____,
    _XX_____,
    _XX_____,
    _XX___X_,
    _XX__XX_,
    _XX__XX_,
    XXXXXXX_,
    ________,
    ________,
    //  77 $4d '77'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX___XX_,
    XXX_XXX_,
    XXXXXXX_,
    XXXXXXX_,
    XX_X_XX_,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    ________,
    ________,
    //  78 $4e '78'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX___XX_,
    XX___XX_,
    XXX__XX_,
    XXXX_XX_,
    XXXXXXX_,
    XX_XXXX_,
    XX__XXX_,
    XX___XX_,
    XX___XX_,
    ________,
    ________,
    //  79 $4f '79'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXX___,
    _XX_XX__,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    _XX_XX__,
    __XXX___,
    ________,
    ________,
    //  80 $50 '80'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXX__,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XXXXX__,
    _XX_____,
    _XX_____,
    _XX_____,
    XXXX____,
    ________,
    ________,
    //  81 $51 '81'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXX___,
    _XX_XX__,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    XX__XXX_,
    XX_XXXX_,
    _XXXXX__,
    ____XX__,
    ___XXXX_,
    ________,
    //  82 $52 '82'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXX__,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XXXXX__,
    _XX_XX__,
    _XX__XX_,
    _XX__XX_,
    XXX__XX_,
    ________,
    ________,
    //  83 $53 '83'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX______,
    _XXX____,
    ___XX___,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    //  84 $54 '84'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXX__,
    X_XX_X__,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    _XXXX___,
    ________,
    ________,
    //  85 $55 '85'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    //  86 $56 '86'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    __XX____,
    ________,
    ________,
    //  87 $57 '87'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    XX_X_XX_,
    XX_X_XX_,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    ________,
    ________,
    //  88 $58 '88'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    __XX____,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    ________,
    ________,
    //  89 $59 '89'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    __XX____,
    __XX____,
    __XX____,
    _XXXX___,
    ________,
    ________,
    //  90 $5a '90'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXXX_,
    XX__XXX_,
    X__XX___,
    ___XX___,
    __XX____,
    _XX_____,
    _XX___X_,
    XX___XX_,
    XXXXXXX_,
    ________,
    ________,
    //  91 $5b '91'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXX__,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XX____,
    __XXXX__,
    ________,
    ________,
    //  92 $5c '92'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    X_______,
    XX______,
    _XX_____,
    __XX____,
    ___XX___,
    ____XX__,
    _____XX_,
    ______X_,
    ________,
    ________,
    //  93 $5d '93'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXX__,
    ____XX__,
    ____XX__,
    ____XX__,
    ____XX__,
    ____XX__,
    ____XX__,
    ____XX__,
    __XXXX__,
    ________,
    ________,
    //  94 $5e '94'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___X____,
    __XXX___,
    _XX_XX__,
    XX___XX_,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    //  95 $5f '95'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXXXX,
    ________,
    //  96 $60 '96'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    __XX____,
    __XX____,
    ___XX___,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    //  97 $61 '97'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXXX___,
    ____XX__,
    _XXXXX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    //  98 $62 '98'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXX_____,
    _XX_____,
    _XX_____,
    _XXXXX__,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XX_XXX__,
    ________,
    ________,
    //  99 $63 '99'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXXX___,
    XX__XX__,
    XX______,
    XX______,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 100 $64 '100'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XXX__,
    ____XX__,
    ____XX__,
    _XXXXX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 101 $65 '101'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXXX___,
    XX__XX__,
    XXXXXX__,
    XX______,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 102 $66 '102'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXX___,
    _XX_XX__,
    _XX_____,
    _XX_____,
    XXXXX___,
    _XX_____,
    _XX_____,
    _XX_____,
    XXXX____,
    ________,
    ________,
    // 103 $67 '103'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXX_XX_,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXXX__,
    ____XX__,
    XX__XX__,
    _XXXX___,
    // 104 $68 '104'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXX_____,
    _XX_____,
    _XX_____,
    _XX_XX__,
    _XXX_XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXX__XX_,
    ________,
    ________,
    // 105 $69 '105'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XX___,
    ___XX___,
    ________,
    _XXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ________,
    ________,
    // 106 $6a '106'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ____XX__,
    ____XX__,
    ________,
    __XXXX__,
    ____XX__,
    ____XX__,
    ____XX__,
    ____XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    // 107 $6b '107'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXX_____,
    _XX_____,
    _XX_____,
    _XX__XX_,
    _XX_XX__,
    _XXXX___,
    _XX_XX__,
    _XX__XX_,
    XXX__XX_,
    ________,
    ________,
    // 108 $6c '108'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ________,
    ________,
    // 109 $6d '109'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXXXXX__,
    XX_X_XX_,
    XX_X_XX_,
    XX_X_XX_,
    XX_X_XX_,
    XX___XX_,
    ________,
    ________,
    // 110 $6e '110'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    ________,
    ________,
    // 111 $6f '111'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 112 $70 '112'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XX_XXX__,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XXXXX__,
    _XX_____,
    XXXX____,
    // 113 $71 '113'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXX_XX_,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXXX__,
    ____XX__,
    ___XXXX_,
    // 114 $72 '114'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXX_XX__,
    _XX_XXX_,
    _XXX_XX_,
    _XX_____,
    _XX_____,
    XXXX____,
    ________,
    ________,
    // 115 $73 '115'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXXX___,
    XX__XX__,
    _XX_____,
    ___XX___,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 116 $74 '116'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    __X_____,
    _XX_____,
    XXXXXX__,
    _XX_____,
    _XX_____,
    _XX_____,
    _XX_XX__,
    __XXX___,
    ________,
    ________,
    // 117 $75 '117'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 118 $76 '118'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    __XX____,
    ________,
    ________,
    // 119 $77 '119'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XX___XX_,
    XX___XX_,
    XX_X_XX_,
    XX_X_XX_,
    _XX_XX__,
    _XX_XX__,
    ________,
    ________,
    // 120 $78 '120'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XX___XX_,
    _XX_XX__,
    __XXX___,
    __XXX___,
    _XX_XX__,
    XX___XX_,
    ________,
    ________,
    // 121 $79 '121'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    __XXXX__,
    ____XX__,
    ___XX___,
    XXXX____,
    // 122 $7a '122'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXXXXX__,
    X___XX__,
    ___XX___,
    _XX_____,
    XX___X__,
    XXXXXX__,
    ________,
    ________,
    // 123 $7b '123'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XXX__,
    __XX____,
    __XX____,
    _XX_____,
    XX______,
    _XX_____,
    __XX____,
    __XX____,
    ___XXX__,
    ________,
    ________,
    // 124 $7c '124'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ________,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ________,
    ________,
    // 125 $7d '125'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXX_____,
    __XX____,
    __XX____,
    ___XX___,
    ____XX__,
    ___XX___,
    __XX____,
    __XX____,
    XXX_____,
    ________,
    ________,
    // 126 $7e '126'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXX__XX,
    XX_XX_X_,
    XX__XXX_,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 127 $7f '127'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ___X____,
    __XXX___,
    _XX_XX__,
    XX___XX_,
    XX___XX_,
    XXXXXXX_,
    ________,
    ________,
    ________,
    // 128 $80 '128'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX______,
    XX______,
    XX______,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    __XX____,
    XXXX____,
    // 129 $81 '129'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    XX__XX__,
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 130 $82 '130'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ____XX__,
    ___XX___,
    __XX____,
    ________,
    _XXXX___,
    XX__XX__,
    XXXXXX__,
    XX______,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 131 $83 '131'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    __XX____,
    _XXXX___,
    XX__XX__,
    ________,
    _XXXX___,
    ____XX__,
    _XXXXX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 132 $84 '132'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    XX__XX__,
    ________,
    _XXXX___,
    ____XX__,
    _XXXXX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 133 $85 '133'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XX______,
    _XX_____,
    __XX____,
    ________,
    _XXXX___,
    ____XX__,
    _XXXXX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 134 $86 '134'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    __XXX___,
    _XX_XX__,
    _XX_XX__,
    __XXX___,
    XXXXX___,
    ____XX__,
    _XXXXX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 135 $87 '135'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXXX___,
    XX__XX__,
    XX______,
    XX______,
    XX__XX__,
    _XXXX___,
    __XX____,
    XXXX____,
    // 136 $88 '136'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    __XX____,
    _XXXX___,
    XX__XX__,
    ________,
    _XXXX___,
    XX__XX__,
    XXXXXX__,
    XX______,
    XX______,
    _XXXXX__,
    ________,
    ________,
    // 137 $89 '137'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    XX__XX__,
    ________,
    _XXXX___,
    XX__XX__,
    XXXXXX__,
    XX______,
    XX______,
    _XXXXX__,
    ________,
    ________,
    // 138 $8a '138'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XX______,
    _XX_____,
    __XX____,
    ________,
    _XXXX___,
    XX__XX__,
    XXXXXX__,
    XX______,
    XX______,
    _XXXXX__,
    ________,
    ________,
    // 139 $8b '139'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XX_XX__,
    _XX_XX__,
    ________,
    _XXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ________,
    ________,
    // 140 $8c '140'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___X____,
    __XXX___,
    _XX_XX__,
    ________,
    _XXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ________,
    ________,
    // 141 $8d '141'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX_____,
    __XX____,
    ___XX___,
    ________,
    _XXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ________,
    ________,
    // 142 $8e '142'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    ________,
    __XX____,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XXXXXX__,
    XX__XX__,
    XX__XX__,
    ________,
    ________,
    // 143 $8f '143'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XXXX___,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XXXXXX__,
    XX__XX__,
    XX__XX__,
    ________,
    ________,
    // 144 $90 '144'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ____XX__,
    ___XX___,
    __XX____,
    XXXXXX__,
    XX___X__,
    XX______,
    XXXXX___,
    XX______,
    XX___X__,
    XXXXXX__,
    ________,
    ________,
    // 145 $91 '145'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXXXXXX_,
    ___XX_XX,
    _XXXXXXX,
    XX_XX___,
    XX_XX___,
    XXX_XXXX,
    ________,
    ________,
    // 146 $92 '146'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXXX_,
    _XXXX___,
    XX_XX___,
    XX_XX___,
    XXXXXXX_,
    XX_XX___,
    XX_XX___,
    XX_XX___,
    XX_XXXX_,
    ________,
    ________,
    // 147 $93 '147'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    __XX____,
    _XXXX___,
    XX__XX__,
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 148 $94 '148'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX__XX__,
    XX__XX__,
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 149 $95 '149'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XX______,
    _XX_____,
    __XX____,
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 150 $96 '150'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    __XX____,
    _XXXX___,
    XX__XX__,
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 151 $97 '151'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XX______,
    _XX_____,
    __XX____,
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 152 $98 '152'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XX__XX_,
    _XX__XX_,
    ________,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    __XXXX__,
    ____XX__,
    ___XX___,
    XXXX____,
    // 153 $99 '153'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XX__XX__,
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 154 $9a '154'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XX__XX__,
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 155 $9b '155'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XX____,
    __XX____,
    _XXXX___,
    XX__XX__,
    XX______,
    XX______,
    XX__XX__,
    _XXXX___,
    __XX____,
    __XX____,
    ________,
    // 156 $9c '156'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    __XXXX__,
    _XX__XX_,
    _XX_____,
    _XX_____,
    _XX_____,
    XXXXXX__,
    _XX_____,
    _XX_____,
    XX______,
    XXXXXXX_,
    ________,
    ________,
    // 157 $9d '157'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    XXXXXX__,
    __XX____,
    XXXXXX__,
    __XX____,
    __XX____,
    ________,
    ________,
    // 158 $9e '158'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XXXX____,
    X___X___,
    X___X___,
    X___X___,
    XXXX____,
    X___X___,
    X__XXXX_,
    X___XX__,
    X___XX_X,
    X____XX_,
    ________,
    ________,
    // 159 $9f '159'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ____XXX_,
    ___XX_XX,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ___XX___,
    ___XX___,
    ___XX___,
    XX_XX___,
    _XXX____,
    ________,
    ________,
    // 160 $a0 '160'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ____XX__,
    ___XX___,
    __XX____,
    ________,
    _XXXX___,
    ____XX__,
    _XXXXX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 161 $a1 '161'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ____XX__,
    ___XX___,
    __XX____,
    ________,
    _XXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    _XXXXXX_,
    ________,
    ________,
    // 162 $a2 '162'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ____XX__,
    ___XX___,
    __XX____,
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 163 $a3 '163'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ____XX__,
    ___XX___,
    __XX____,
    ________,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXX_XX_,
    ________,
    ________,
    // 164 $a4 '164'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXX_XX_,
    XX_XXX__,
    ________,
    XXXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    ________,
    ________,
    // 165 $a5 '165'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XXX_XX_,
    XX_XXX__,
    ________,
    XX___XX_,
    XXX__XX_,
    XXXX_XX_,
    XX_XXXX_,
    XX__XXX_,
    XX___XX_,
    XX___XX_,
    ________,
    ________,
    // 166 $a6 '166'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    _XXXXXX_,
    ________,
    XXXXXXX_,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 167 $a7 '167'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    XXXXXXX_,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 168 $a8 '168'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XX____,
    __XX____,
    ________,
    __XX____,
    _XX_____,
    XX______,
    XX______,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 169 $a9 '169'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXX__,
    XX______,
    XX______,
    XX______,
    ________,
    ________,
    ________,
    // 170 $aa '170'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXX__,
    ____XX__,
    ____XX__,
    ____XX__,
    ________,
    ________,
    ________,
    // 171 $ab '171'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _X____X_,
    XX___XX_,
    XX__XX__,
    XX_XX___,
    __XX____,
    _XX_XXX_,
    XX____XX,
    X____XX_,
    ____XX__,
    ___XXXXX,
    ________,
    // 172 $ac '172'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XX___XX,
    XXX__XX_,
    _XX_XX__,
    _XXXX___,
    __XX_XXX,
    _XX_XXXX,
    XX_XX_XX,
    X_XX__XX,
    __XXXXXX,
    ______XX,
    ________,
    // 173 $ad '173'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XX____,
    __XX____,
    ________,
    __XX____,
    __XX____,
    _XXXX___,
    _XXXX___,
    _XXXX___,
    __XX____,
    ________,
    ________,
    // 174 $ae '174'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    __XX__XX,
    _XX__XX_,
    XX__XX__,
    XX__XX__,
    _XX__XX_,
    __XX__XX,
    ________,
    ________,
    // 175 $af '175'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XX__XX__,
    _XX__XX_,
    __XX__XX,
    __XX__XX,
    _XX__XX_,
    XX__XX__,
    ________,
    ________,
    // 176 $b0 '176'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    __X__X__,
    X__X__X_,
    _X__X__X,
    __X__X__,
    X__X__X_,
    _X__X__X,
    __X__X__,
    X__X__X_,
    _X__X__X,
    __X__X__,
    X__X__X_,
    _X__X__X,
    // 177 $b1 '177'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _X_X_X_X,
    X_X_X_X_,
    _X_X_X_X,
    X_X_X_X_,
    _X_X_X_X,
    X_X_X_X_,
    _X_X_X_X,
    X_X_X_X_,
    _X_X_X_X,
    X_X_X_X_,
    _X_X_X_X,
    X_X_X_X_,
    // 178 $b2 '178'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX_XX_X,
    XX_XX_XX,
    X_XX_XX_,
    _XX_XX_X,
    XX_XX_XX,
    X_XX_XX_,
    _XX_XX_X,
    XX_XX_XX,
    X_XX_XX_,
    _XX_XX_X,
    XX_XX_XX,
    X_XX_XX_,
    // 179 $b3 '179'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 180 $b4 '180'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    XXXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 181 $b5 '181'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    XXXXX___,
    ___XX___,
    ___XX___,
    XXXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 182 $b6 '182'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 183 $b7 '183'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXXX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 184 $b8 '184'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXXXX___,
    ___XX___,
    ___XX___,
    XXXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 185 $b9 '185'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXX__XX_,
    _____XX_,
    _____XX_,
    XXX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 186 $ba '186'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 187 $bb '187'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXXXXXX_,
    _____XX_,
    _____XX_,
    XXX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 188 $bc '188'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXX__XX_,
    _____XX_,
    _____XX_,
    XXXXXXX_,
    ________,
    ________,
    ________,
    ________,
    // 189 $bd '189'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXXXXXX_,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 190 $be '190'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    XXXXX___,
    ___XX___,
    ___XX___,
    XXXXX___,
    ________,
    ________,
    ________,
    ________,
    // 191 $bf '191'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 192 $c0 '192'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XXXXX,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 193 $c1 '193'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    XXXXXXXX,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 194 $c2 '194'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXXXX,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 195 $c3 '195'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XXXXX,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 196 $c4 '196'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXXXX,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 197 $c5 '197'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    XXXXXXXX,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 198 $c6 '198'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XXXXX,
    ___XX___,
    ___XX___,
    ___XXXXX,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 199 $c7 '199'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XXX,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 200 $c8 '200'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XXX,
    _XX_____,
    _XX_____,
    _XXXXXXX,
    ________,
    ________,
    ________,
    ________,
    // 201 $c9 '201'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXXXXXX,
    _XX_____,
    _XX_____,
    _XX__XXX,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 202 $ca '202'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXX__XXX,
    ________,
    ________,
    XXXXXXXX,
    ________,
    ________,
    ________,
    ________,
    // 203 $cb '203'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXXXXXXX,
    ________,
    ________,
    XXX__XXX,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 204 $cc '204'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XXX,
    _XX_____,
    _XX_____,
    _XX__XXX,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 205 $cd '205'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXXXXXXX,
    ________,
    ________,
    XXXXXXXX,
    ________,
    ________,
    ________,
    ________,
    // 206 $ce '206'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXX__XXX,
    ________,
    ________,
    XXX__XXX,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 207 $cf '207'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    XXXXXXXX,
    ________,
    ________,
    XXXXXXXX,
    ________,
    ________,
    ________,
    ________,
    // 208 $d0 '208'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXXXXXXX,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 209 $d1 '209'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    XXXXXXXX,
    ________,
    ________,
    XXXXXXXX,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 210 $d2 '210'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXXXX,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 211 $d3 '211'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XXXXXXX,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 212 $d4 '212'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XXXXX,
    ___XX___,
    ___XX___,
    ___XXXXX,
    ________,
    ________,
    ________,
    ________,
    // 213 $d5 '213'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ___XXXXX,
    ___XX___,
    ___XX___,
    ___XXXXX,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 214 $d6 '214'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    _XXXXXXX,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 215 $d7 '215'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    XXX__XXX,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    // 216 $d8 '216'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    XXXXXXXX,
    ________,
    ________,
    XXXXXXXX,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 217 $d9 '217'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    XXXXX___,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 218 $da '218'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ___XXXXX,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 219 $db '219'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    // 220 $dc '220'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    // 221 $dd '221'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XXXX____,
    XXXX____,
    XXXX____,
    XXXX____,
    XXXX____,
    XXXX____,
    XXXX____,
    XXXX____,
    XXXX____,
    XXXX____,
    XXXX____,
    XXXX____,
    // 222 $de '222'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ____XXXX,
    ____XXXX,
    ____XXXX,
    ____XXXX,
    ____XXXX,
    ____XXXX,
    ____XXXX,
    ____XXXX,
    ____XXXX,
    ____XXXX,
    ____XXXX,
    ____XXXX,
    // 223 $df '223'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    XXXXXXXX,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 224 $e0 '224'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXX_XX_,
    XX_XXXX_,
    XX__XX__,
    XX__XX__,
    XX_XXXX_,
    _XXX_XX_,
    ________,
    ________,
    // 225 $e1 '225'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX_XX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XXXXX___,
    XX______,
    _XX_____,
    ________,
    // 226 $e2 '226'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXX__,
    XX__XX__,
    XX__XX__,
    XX______,
    XX______,
    XX______,
    XX______,
    XX______,
    XX______,
    ________,
    ________,
    // 227 $e3 '227'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXXX_,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    _XX__XX_,
    ________,
    ________,
    // 228 $e4 '228'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXX__,
    XX___X__,
    _XX__X__,
    _XX_____,
    __XX____,
    _XX_____,
    _XX__X__,
    XX___X__,
    XXXXXX__,
    ________,
    ________,
    // 229 $e5 '229'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XXXXXX_,
    XX__X___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 230 $e6 '230'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    _XXXX_XX,
    _XX_____,
    XX______,
    // 231 $e7 '231'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    _XXX_XX_,
    XX_XXX__,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ____XXX_,
    ________,
    ________,
    // 232 $e8 '232'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XXXXXX__,
    __XX____,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    __XX____,
    XXXXXX__,
    ________,
    ________,
    // 233 $e9 '233'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XXXXXX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 234 $ea '234'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXXX__,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    XX___XX_,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    XXX_XXX_,
    ________,
    ________,
    // 235 $eb '235'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXX__,
    _XX_____,
    __XX____,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    _XXXX___,
    ________,
    ________,
    // 236 $ec '236'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    _XXX_XX_,
    XX_XX_XX,
    XX_XX_XX,
    XX_XX_XX,
    _XX_XXX_,
    ________,
    ________,
    ________,
    ________,
    // 237 $ed '237'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    _____XX_,
    _XXXXX__,
    XX_XXXX_,
    XX_X_XX_,
    XXXX_XX_,
    _XXXXX__,
    XX______,
    ________,
    ________,
    ________,
    // 238 $ee '238'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXX__,
    _XX_____,
    XX______,
    XX______,
    XXXXXX__,
    XX______,
    XX______,
    _XX_____,
    __XXXX__,
    ________,
    ________,
    // 239 $ef '239'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    _XXXX___,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    XX__XX__,
    ________,
    ________,
    // 240 $f0 '240'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    XXXXXX__,
    ________,
    ________,
    XXXXXX__,
    ________,
    ________,
    XXXXXX__,
    ________,
    ________,
    ________,
    // 241 $f1 '241'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    __XX____,
    __XX____,
    XXXXXX__,
    __XX____,
    __XX____,
    ________,
    XXXXXX__,
    ________,
    ________,
    ________,
    // 242 $f2 '242'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XX_____,
    __XX____,
    ___XX___,
    ___XX___,
    __XX____,
    _XX_____,
    ________,
    XXXXXX__,
    ________,
    ________,
    ________,
    // 243 $f3 '243'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ___XX___,
    __XX____,
    _XX_____,
    _XX_____,
    __XX____,
    ___XX___,
    ________,
    XXXXXX__,
    ________,
    ________,
    ________,
    // 244 $f4 '244'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ____XXX_,
    ___XX_XX,
    ___XX_XX,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    // 245 $f5 '245'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    ___XX___,
    XX_XX___,
    XX_XX___,
    _XXX____,
    ________,
    ________,
    // 246 $f6 '246'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    __XX____,
    __XX____,
    ________,
    XXXXXX__,
    ________,
    __XX____,
    __XX____,
    ________,
    ________,
    ________,
    // 247 $f7 '247'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    _XXX__XX,
    XX_XX_XX,
    XX__XXX_,
    ________,
    _XXX__XX,
    XX_XX_XX,
    XX__XXX_,
    ________,
    ________,
    ________,
    // 248 $f8 '248'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    __XXXX__,
    _XX__XX_,
    _XX__XX_,
    _XX__XX_,
    __XXXX__,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 249 $f9 '249'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ___XXX__,
    ___XXX__,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 250 $fa '250'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ___XX___,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 251 $fb '251'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _____XXX,
    _____X__,
    _____X__,
    _____X__,
    _X___X__,
    _XX__X__,
    __XX_X__,
    ___XXX__,
    ____XX__,
    ________,
    ________,
    // 252 $fc '252'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    XX_XX___,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    _XX_XX__,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 253 $fd '253'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    _XXXX___,
    ____XX__,
    ___XX___,
    __XX____,
    _XXXXX__,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    // 254 $fe '254'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    __XXXX__,
    __XXXX__,
    __XXXX__,
    __XXXX__,
    __XXXX__,
    __XXXX__,
    __XXXX__,
    __XXXX__,
    ________,
    ________,
    // 255 $ff '255'
    //      width 8, bbx 0, bby 0, bbw 8, bbh 12
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
    ________,
};
