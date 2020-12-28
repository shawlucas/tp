#ifndef __OSMUTEX_H__
#define __OSMUTEX_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "types.h"
#include "ios/iostypes.h"
#include "dolphin/os/OSThread.h"

typedef struct OSMutex {
    /* 0x00 */ s32 count;
    /* 0x04 */ IOSMessageQueueId mqid;
    /* 0x08 */ IOSMessage mq[1];
} OSMutex; // size = 0xC

typedef struct OSCond {
    /* 0x00 */ OSThreadQueue queue;
} OSCond; // size = 0x4

void OSInitMutex(OSMutex* mutex);
void OSLockMutex(OSMutex* mutex);
void OSUnlockMutex(OSMutex* mutex);

#ifdef __cplusplus
}
#endif

#endif
