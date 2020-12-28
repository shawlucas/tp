#ifndef __IOS_RESTYPES_H__
#define __IOS_RESTYPES_H__

#include "types.h"

#define _IOSE_  1

/* Definitions of messages that should be handled by resource managers */
#define IOS_OPEN     0
#define IOS_CLOSE    1
#define IOS_READ     2
#define IOS_WRITE    3
#define IOS_SEEK     4
#define IOS_IOCTL    5
#define IOS_IOCTLV   6 

#define IOS_REPLY    7
#define IOS_IPC_MSG  8
#define IOS_IPC_ACK  9

/*
 * Useful for code which wishes to define additional message types
 * that go in a Resource Manager queue.
 */
#define MAX_RM_MESG_NUM 5

/* max path length */
#define IOS_PATH_MAX 63

typedef u32 IOSResourceHandle;

/* Definitions of structs used for different types of requests 
 * sent to the resource manager.
 */
typedef struct {
    const char *path;
    u32 flags;
//    IOSUid uid; 
//    IOSGid gid;
} IOSResourceOpen;

typedef struct {
    u8 *outPtr;
    u32 outLen;
} IOSResourceRead;

typedef struct {
    u8 *inPtr;
    u32 inLen;
} IOSResourceWrite;

typedef struct {
    s32 offset;
    u32 whence;
} IOSResourceSeek;

typedef struct {
    u32 cmd;
    u8 *inPtr;
    u32 inLen;
    u8 *outPtr;
    u32 outLen;
} IOSResourceIoctl;

typedef struct {
    u8 *base;
    u32 length;
} IOSIoVector;

typedef struct {
    u32 cmd;
    u32 readCount;
    u32 writeCount;
    IOSIoVector *vector;
} IOSResourceIoctlv;


typedef struct {
    /* Notes: changing the size of cmd from u32 may break DI code - CSA */
    u32 cmd;            /* Identifies request as Open, Read, Write, etc */
    s32 status;         /* return status */
    IOSResourceHandle handle; /* Identifies caller to RM. */
    union {               /* Request based on kind of cmd */
        IOSResourceOpen open;
        IOSResourceRead read;
        IOSResourceWrite write;
        IOSResourceSeek seek;
        IOSResourceIoctl ioctl;
        IOSResourceIoctlv ioctlv;
    } args;
} IOSResourceRequest;

#endif
