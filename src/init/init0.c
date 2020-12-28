#include "dolphin/os.h"

void __check_pad3(void) {
    u16* t = (u16 *)0x800030E4;

    if ((*t & 0xEEF) != 0xEEF) {
        return;
    }

    OSResetSystem(0, 0, 0);
}

extern u8 Debug_BBA;

void __set_debug_bba(void) {
    Debug_BBA = 1;
}

u8 __get_debug_bba(void) {
    return Debug_BBA;
}

