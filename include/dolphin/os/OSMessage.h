#ifndef __OSMESSAGE_H_
#define __OSMESSAGE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "dolphin/os/OSThread.h"

typedef void* OSMessage;

typedef struct OSMessageQueue {
    /* 0x00 */ OSThreadQueue queueSend;
    /* 0x08 */ OSThreadQueue queueReceive;
    /* 0x10 */ OSMessage* msgArray;
    /* 0x14 */ s32 msgCount;
    /* 0x18 */ s32 firstIndex;
    /* 0x1C */ s32 usedCount;
} OSMessageQueue; // size = 0x20

void OSInitMessageQueue(OSMessageQueue* mq, OSMessage* msgArray, s32 msgCount);
BOOL OSSendMessage(OSMessageQueue* mq, OSMessage msg, s32 flags);
BOOL OSJamMessage(OSMessageQueue* mq, OSMessage msg, s32 flags);
BOOL OSReceiveMessage(OSMessageQueue* mq, OSMessage* msg, s32 flags);

#ifdef __cplusplus
}
#endif

#endif
