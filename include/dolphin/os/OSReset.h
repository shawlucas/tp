#ifndef __OSRESET_H__
#define __OSRESET_H__

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

void OSResetSystem(s32 reset, u32 resetCode, BOOL forceMenu);
u32 OSGetResetCode(void);
void OSGetSaveRegion(void** start, void** end);
void OSGetSavedRegion(void** start, void** end);
void OSSetSaveRegion(void* start, void* end);

#ifdef __cplusplus
}
#endif

#endif
