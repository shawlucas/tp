#ifndef __OS_H__
#define __OS_H__

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Arena API */

/* void* */ u32 OSGetArenaHi(void);
/* void* */ u32 OSGetArenaLo(void); 
void OSSetArenaHi(void* newHi);
void OSSetArenaLo(void* newLo);

void* OSAllocFromArenaLo(u32 size, u32 align);
void* OSAllocFromArenaHi(u32 size, u32 align);

/* Basic OS API */

u32 OSGetConsoleType(void);

typedef enum OSSoundMode {
    SOUND_MODE_MONO = 0,
    SOUND_MODE_STEREO = 1,

    __SOUND_MODE_FORCE_ENUM_U32 = 0xffffffff,
} OSSoundMode;

OSSoundMode OSGetSoundMode(void);
void OSSetSoundMode(OSSoundMode mode);

/* Advanced OS APIs */
#include "dolphin/os/OSAlloc.h"
#include "dolphin/os/OSCache.h"
#include "dolphin/os/OSContext.h"
#include "dolphin/os/OSMessage.h"
#include "dolphin/os/OSMutex.h"
#include "dolphin/os/OSReset.h"
#include "dolphin/os/OSThread.h"

void OSReport_Error(char* fmt, ...);
void OSReportInit(void);
void OSAttention(char* msg, ...);

/* Interrupt API */

BOOL OSDisableInterrupts(void);
BOOL OSEnableInterrupts (void);
BOOL OSRestoreInterrupts(BOOL level);

/* Real-Time Clock API */
typedef s64 OSTime;
typedef u32 OSTick;

OSTime OSGetTime(void);
OSTick OSGetTick(void);
OSTime OSGetTime(void);

typedef struct OSCalendarTime
{
    s32 seconds;
    s32 minutes;
    s32 hours;
    s32 day_of_month;
    s32 month;
    s32 year;
    s32 week_day;
    s32 year_day;
    s32 milliseconds;
    s32 microseconds;
} OSCalendarTime;

OSTime OSCalendarTimeToTicks(OSCalendarTime* td);
void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime* td);


/* other */
void _restgpr_26(void);
void _savegpr_26(void);
void func_8036221C(void);
void func_803621D0(void);
void func_803620AC(void);
void func_803626BC(void);
void func_803664DC(void);
void _restgpr_29(void);
void _savegpr_29(void);
void _restgpr_28(void);
void _savegpr_28(void);
void _restgpr_27(void);
void _savegpr_27(void);
void _savegpr_26(void);
void _restgpr_26(void);

#ifdef __cplusplus
}
#endif

#endif
