#ifndef _global_h_
#define _global_h_

#define ARRAY_SIZE(o) (sizeof((o)) / sizeof(*(o)))

struct Vec {
    float x, y, z;
};

#include "dolphin/types.h"

#include "functions.h"
#include "dolphin/os.h"
#include "variables.h"

#endif