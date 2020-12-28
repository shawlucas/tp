#ifndef __OSCONTEXT_H__
#define __OSCONTEXT_H__

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSContext {
    /* 0x000 */ u32 gpr[32]; // General-Purpose Registers
    /* 0x080 */ u32 cr;
    /* 0x084 */ u32 lr;
    /* 0x088 */ u32 ctr;
    /* 0x08C */ u32 xer;
    /* 0x090 */ f64 fpr[32]; // Floating-point registers
    /* 0x190 */ u32 pad_190;
    /* 0x194 */ u32 fpscr;
    /* 0x198 */ u32 ssr0; // Exception handling register
    /* 0x19C */ u32 ssr1; // Exception handling register
    /* 0x1A0 */ u16 spinLockCount;
    /* 0x1A2 */ u16 state;
    /* 0x1A4 */ u32 gqr[8];
    /* 0x1C4 */ u32 pad_1C4;
    /* 0x1C8 */ f64 psf[32];
} OSContext; // size = 0x2C8

#ifdef __cplusplus
}
#endif

#endif
