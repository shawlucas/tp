/* readData__10JKRDvdFileFPvll __ct__10JKRDvdFileFv::readData(void *, long, long) */
/* missing reference */
/* 802D99B4 002D68F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D99B8 002D68F8  7C 08 02 A6 */	mflr r0
/* 802D99BC 002D68FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D99C0 002D6900  39 61 00 20 */	addi r11, r1, 0x20
/* 802D99C4 002D6904  48 08 88 11 */	bl _savegpr_27
/* 802D99C8 002D6908  7C 7B 1B 78 */	mr r27, r3
/* 802D99CC 002D690C  7C 9C 23 78 */	mr r28, r4
/* 802D99D0 002D6910  7C BD 2B 78 */	mr r29, r5
/* 802D99D4 002D6914  7C DE 33 78 */	mr r30, r6
/* 802D99D8 002D6918  38 7B 00 1C */	addi r3, r27, 0x1c
/* 802D99DC 002D691C  48 06 56 65 */	bl OSLockMutex
/* 802D99E0 002D6920  80 1B 00 F4 */	lwz r0, 0xf4(r27)
/* 802D99E4 002D6924  28 00 00 00 */	cmplwi r0, 0
/* 802D99E8 002D6928  41 82 00 14 */	beq lbl_802D99FC
/* 802D99EC 002D692C  38 7B 00 1C */	addi r3, r27, 0x1c
/* 802D99F0 002D6930  48 06 57 2D */	bl OSUnlockMutex
/* 802D99F4 002D6934  38 60 FF FF */	li r3, -1
/* 802D99F8 002D6938  48 00 00 58 */	b lbl_802D9A50
lbl_802D99FC:
/* 802D99FC 002D693C  48 06 72 89 */	bl OSGetCurrentThread
/* 802D9A00 002D6940  90 7B 00 F4 */	stw r3, 0xf4(r27)
/* 802D9A04 002D6944  3B E0 FF FF */	li r31, -1
/* 802D9A08 002D6948  38 7B 00 5C */	addi r3, r27, 0x5c
/* 802D9A0C 002D694C  7F 84 E3 78 */	mr r4, r28
/* 802D9A10 002D6950  7F A5 EB 78 */	mr r5, r29
/* 802D9A14 002D6954  7F C6 F3 78 */	mr r6, r30
/* 802D9A18 002D6958  3C E0 80 2E */	lis r7, doneProcess__10JKRDvdFileFlP11DVDFileInfo@ha
/* 802D9A1C 002D695C  38 E7 9A C4 */	addi r7, r7, doneProcess__10JKRDvdFileFlP11DVDFileInfo@l
/* 802D9A20 002D6960  39 00 00 02 */	li r8, 2
/* 802D9A24 002D6964  48 06 F3 31 */	bl DVDReadAsyncPrio
/* 802D9A28 002D6968  2C 03 00 00 */	cmpwi r3, 0
/* 802D9A2C 002D696C  41 82 00 10 */	beq lbl_802D9A3C
/* 802D9A30 002D6970  7F 63 DB 78 */	mr r3, r27
/* 802D9A34 002D6974  48 00 00 3D */	bl sync__10JKRDvdFileFv
/* 802D9A38 002D6978  7C 7F 1B 78 */	mr r31, r3
lbl_802D9A3C:
/* 802D9A3C 002D697C  38 00 00 00 */	li r0, 0
/* 802D9A40 002D6980  90 1B 00 F4 */	stw r0, 0xf4(r27)
/* 802D9A44 002D6984  38 7B 00 1C */	addi r3, r27, 0x1c
/* 802D9A48 002D6988  48 06 56 D5 */	bl OSUnlockMutex
/* 802D9A4C 002D698C  7F E3 FB 78 */	mr r3, r31
lbl_802D9A50:
/* 802D9A50 002D6990  39 61 00 20 */	addi r11, r1, 0x20
/* 802D9A54 002D6994  48 08 87 CD */	bl _restgpr_27
/* 802D9A58 002D6998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9A5C 002D699C  7C 08 03 A6 */	mtlr r0
/* 802D9A60 002D69A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D9A64 002D69A4  4E 80 00 20 */	blr
