/* 8009ACE0 00097C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009ACE4 00097C24  7C 08 02 A6 */	mflr r0
/* 8009ACE8 00097C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009ACEC 00097C2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009ACF0 00097C30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009ACF4 00097C34  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009ACF8 00097C38  38 80 00 13 */	li r4, 0x13
/* 8009ACFC 00097C3C  38 A0 00 01 */	li r5, 1
/* 8009AD00 00097C40  4B F9 83 31 */	bl getItem__17dSv_player_item_cCFib
/* 8009AD04 00097C44  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009AD08 00097C48  20 00 00 91 */	subfic r0, r0, 0x91
/* 8009AD0C 00097C4C  7C 00 00 34 */	cntlzw r0, r0
/* 8009AD10 00097C50  54 03 D9 7E */	srwi r3, r0, 5
/* 8009AD14 00097C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009AD18 00097C58  7C 08 03 A6 */	mtlr r0
/* 8009AD1C 00097C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8009AD20 00097C60  4E 80 00 20 */	blr 