#ifndef __OSALLOC_H__
#define __OSALLOC_H__

#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

void* OSInitAlloc(void* arenaStart, void* arenaEnd, s32 maxHeaps);

#ifdef __cplusplus
}
#endif

#endif
