#ifndef __OSTHREAD_H__
#define __OSTHREAD_H__

#include "dolphin/os/OSContext.h"

#ifdef __cplusplus
extern "C" {
#endif

#define OS_THREAD_SPECIFIC_MAX 2

typedef s32 OSPriority;

typedef void (*OSIdleFunction)(void* param);
typedef void (*OSSwitchThreadCallback)(struct OSThread* from, struct OSThread* to);

typedef struct OSThreadQueue {
    /* 0x00 */ struct OSThread* head;
    /* 0x04 */ struct OSThread* tail;
} OSThreadQueue; // size = 0x08

typedef struct OSThreadLink {
    /* 0x00 */ struct OSThread* next;
    /* 0x04 */ struct OSThread* prev;
} OSThreadLink; // size = 0x08

typedef struct OSMutexQueue {
    /* 0x00 */ struct OSMutex* head;
    /* 0x04 */ struct OSMutex* tail;
} OSMutexQueue; // size = 0x08

typedef struct OSMutexLink {
    /* 0x00 */ struct OSMutex* next;
    /* 0x04 */ struct OSMutex* prev;
} OSMutexLink; // size = 0x08

typedef struct OSThread {
    /* 0x000 */ OSContext context;
    /* 0x2C8 */ u16 state;
    /* 0x2CA */ u16 attr;
    /* 0x2CC */ s32 suspend;
    /* 0x2D0 */ OSPriority priority;
    /* 0x2D4 */ OSPriority base;
    /* 0x2D8 */ void* val;
    /* 0x2DC */ OSThreadQueue* queue;
    /* 0x2F0 */ OSThreadLink link;
    /* 0x2F8 */ OSThreadQueue queueJoin;
    /* 0x300 */ struct OSMutex* mutex;
    /* 0x304 */ OSMutexQueue queueMutex;
    /* 0x30C */ OSThreadLink linkActive;
    /* 0x314 */ u8* stackBase;
    /* 0x318 */ u32* stackEnd;
    /* 0x31C */ s32 error;
    /* 0x320 */ void* specific[OS_THREAD_SPECIFIC_MAX]; // thread specific data
} OSThread; // size = 0x328

OSThread* OSGetCurrentThread(void);
BOOL OSIsThreadSuspended(OSThread* thread);
BOOL OSIsThreadTerminated(OSThread* thread);
s32 OSEnableScheduler(void);
s32 OSDisableScheduler(void);
long OSCheckActiveThreads(void);

BOOL OSCreateThread(OSThread* thread, void* (*func)(void *), void* param, void* stack, u32 stackSize, OSPriority priority, u16 attr);
void OSCancelThread(OSThread* thread);
BOOL OSJoinThread(OSThread* thread, void** val);
void OSDetachThread(OSThread* thread);
s32 OSResumeThread(OSThread* thread);
s32 OSSuspendThread(OSThread* thread);
BOOL OSSetThreadPriority(OSThread* thread, OSPriority priority);
OSPriority OSGetThreadPriority(OSThread* thread);

OSSwitchThreadCallback OSSetSwitchThreadCallback(OSSwitchThreadCallback callback);

#ifdef __cplusplus
}
#endif

#endif
