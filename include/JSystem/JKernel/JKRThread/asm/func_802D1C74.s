/* 802D1C74 002CEBB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802D1C78 002CEBB8  7C 08 02 A6 */	mflr r0
/* 802D1C7C 002CEBBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802D1C80 002CEBC0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802D1C84 002CEBC4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0
/* 802D1C88 002CEBC8  39 61 00 40 */	addi r11, r1, 0x40
/* 802D1C8C 002CEBCC  48 09 05 41 */	bl func_803621CC
/* 802D1C90 002CEBD0  7C 7A 1B 78 */	mr r26, r3
/* 802D1C94 002CEBD4  7C 9B 23 78 */	mr r27, r4
/* 802D1C98 002CEBD8  7C BC 2B 79 */	or. r28, r5, r5
/* 802D1C9C 002CEBDC  3C 60 80 3A */	lis r3, lbl_8039CFA8@ha
/* 802D1CA0 002CEBE0  38 63 CF A8 */	addi r3, r3, lbl_8039CFA8@l 
/* 802D1CA4 002CEBE4  3B 23 00 5D */	addi r25, r3, 0x5d
/* 802D1CA8 002CEBE8  3B A3 00 7F */	addi r29, r3, 0x7f
/* 802D1CAC 002CEBEC  41 82 00 34 */	beq lbl_802D1CE0
/* 802D1CB0 002CEBF0  7F 83 E3 78 */	mr r3, r28
/* 802D1CB4 002CEBF4  48 01 59 39 */	bl JUTConsole_NS_clear
/* 802D1CB8 002CEBF8  7F 83 E3 78 */	mr r3, r28
/* 802D1CBC 002CEBFC  7F 24 CB 78 */	mr r4, r25
/* 802D1CC0 002CEC00  80 AD 8E 34 */	lwz r5, lbl_804513B4-_SDA_BASE_(r13)
/* 802D1CC4 002CEC04  80 DA 00 1C */	lwz r6, 0x1c(r26)
/* 802D1CC8 002CEC08  80 FA 00 10 */	lwz r7, 0x10(r26)
/* 802D1CCC 002CEC0C  4C C6 31 82 */	crclr 6
/* 802D1CD0 002CEC10  48 01 5E E9 */	bl JUTConsole_NS_print_f
/* 802D1CD4 002CEC14  7F 83 E3 78 */	mr r3, r28
/* 802D1CD8 002CEC18  7F A4 EB 78 */	mr r4, r29
/* 802D1CDC 002CEC1C  48 01 5F 5D */	bl JUTConsole_NS_print
lbl_802D1CE0:
/* 802D1CE0 002CEC20  3C 60 80 43 */	lis r3, lbl_8043428C@ha
/* 802D1CE4 002CEC24  83 C3 42 8C */	lwz r30, lbl_8043428C@l(r3)
/* 802D1CE8 002CEC28  48 00 01 04 */	b lbl_802D1DEC
lbl_802D1CEC:
/* 802D1CEC 002CEC2C  83 3E 00 00 */	lwz r25, 0(r30)
/* 802D1CF0 002CEC30  88 19 00 60 */	lbz r0, 0x60(r25)
/* 802D1CF4 002CEC34  28 00 00 00 */	cmplwi r0, 0
/* 802D1CF8 002CEC38  41 82 00 F0 */	beq lbl_802D1DE8
/* 802D1CFC 002CEC3C  3B A0 00 00 */	li r29, 0
/* 802D1D00 002CEC40  28 1B 00 00 */	cmplwi r27, 0
/* 802D1D04 002CEC44  41 82 00 34 */	beq lbl_802D1D38
/* 802D1D08 002CEC48  7F 65 DB 78 */	mr r5, r27
/* 802D1D0C 002CEC4C  48 00 00 20 */	b lbl_802D1D2C
lbl_802D1D10:
/* 802D1D10 002CEC50  80 65 00 00 */	lwz r3, 0(r5)
/* 802D1D14 002CEC54  80 19 00 70 */	lwz r0, 0x70(r25)
/* 802D1D18 002CEC58  7C 03 00 00 */	cmpw r3, r0
/* 802D1D1C 002CEC5C  40 82 00 0C */	bne lbl_802D1D28
/* 802D1D20 002CEC60  7C 9D 23 78 */	mr r29, r4
/* 802D1D24 002CEC64  48 00 00 14 */	b lbl_802D1D38
lbl_802D1D28:
/* 802D1D28 002CEC68  38 A5 00 08 */	addi r5, r5, 8
lbl_802D1D2C:
/* 802D1D2C 002CEC6C  80 85 00 04 */	lwz r4, 4(r5)
/* 802D1D30 002CEC70  28 04 00 00 */	cmplwi r4, 0
/* 802D1D34 002CEC74  40 82 FF DC */	bne lbl_802D1D10
lbl_802D1D38:
/* 802D1D38 002CEC78  28 1D 00 00 */	cmplwi r29, 0
/* 802D1D3C 002CEC7C  40 82 00 24 */	bne lbl_802D1D60
/* 802D1D40 002CEC80  38 61 00 08 */	addi r3, r1, 8
/* 802D1D44 002CEC84  3C 80 80 3A */	lis r4, lbl_8039CFA8@ha
/* 802D1D48 002CEC88  38 84 CF A8 */	addi r4, r4, lbl_8039CFA8@l
/* 802D1D4C 002CEC8C  38 84 00 A7 */	addi r4, r4, 0xa7
/* 802D1D50 002CEC90  80 B9 00 70 */	lwz r5, 0x70(r25)
/* 802D1D54 002CEC94  4C C6 31 82 */	crclr 6
/* 802D1D58 002CEC98  48 09 47 85 */	bl func_803664DC
/* 802D1D5C 002CEC9C  3B A1 00 08 */	addi r29, r1, 8
lbl_802D1D60:
/* 802D1D60 002CECA0  83 F9 00 68 */	lwz r31, 0x68(r25)
/* 802D1D64 002CECA4  80 7A 00 18 */	lwz r3, 0x18(r26)
/* 802D1D68 002CECA8  80 9A 00 1C */	lwz r4, 0x1c(r26)
/* 802D1D6C 002CECAC  48 09 09 51 */	bl func_803626BC
/* 802D1D70 002CECB0  80 19 00 64 */	lwz r0, 0x64(r25)
/* 802D1D74 002CECB4  C8 42 C5 C8 */	lfd f2, lbl_80455FC8-_SDA2_BASE_(r2)
/* 802D1D78 002CECB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802D1D7C 002CECBC  3C 00 43 30 */	lis r0, 0x4330
/* 802D1D80 002CECC0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802D1D84 002CECC4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802D1D88 002CECC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 802D1D8C 002CECCC  EF E0 08 24 */	fdivs f31, f0, f1
/* 802D1D90 002CECD0  C0 02 C5 C0 */	lfs f0, lbl_80455FC0-_SDA2_BASE_(r2)
/* 802D1D94 002CECD4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802D1D98 002CECD8  48 09 03 15 */	bl func_803620AC
/* 802D1D9C 002CECDC  7C 79 1B 78 */	mr r25, r3
/* 802D1DA0 002CECE0  C0 02 C5 C4 */	lfs f0, lbl_80455FC4-_SDA2_BASE_(r2)
/* 802D1DA4 002CECE4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 802D1DA8 002CECE8  48 09 03 05 */	bl func_803620AC
/* 802D1DAC 002CECEC  38 80 00 0A */	li r4, 0xa
/* 802D1DB0 002CECF0  7C 03 23 96 */	divwu r0, r3, r4
/* 802D1DB4 002CECF4  7C 00 21 D6 */	mullw r0, r0, r4
/* 802D1DB8 002CECF8  7D 00 18 50 */	subf r8, r0, r3
/* 802D1DBC 002CECFC  28 1C 00 00 */	cmplwi r28, 0
/* 802D1DC0 002CED00  41 82 00 28 */	beq lbl_802D1DE8
/* 802D1DC4 002CED04  7F 83 E3 78 */	mr r3, r28
/* 802D1DC8 002CED08  3C 80 80 3A */	lis r4, lbl_8039CFA8@ha
/* 802D1DCC 002CED0C  38 84 CF A8 */	addi r4, r4, lbl_8039CFA8@l
/* 802D1DD0 002CED10  38 84 00 AA */	addi r4, r4, 0xaa
/* 802D1DD4 002CED14  7F A5 EB 78 */	mr r5, r29
/* 802D1DD8 002CED18  7F E6 FB 78 */	mr r6, r31
/* 802D1DDC 002CED1C  7F 27 CB 78 */	mr r7, r25
/* 802D1DE0 002CED20  4C C6 31 82 */	crclr 6
/* 802D1DE4 002CED24  48 01 5D D5 */	bl JUTConsole_NS_print_f
lbl_802D1DE8:
/* 802D1DE8 002CED28  83 DE 00 0C */	lwz r30, 0xc(r30)
lbl_802D1DEC:
/* 802D1DEC 002CED2C  28 1E 00 00 */	cmplwi r30, 0
/* 802D1DF0 002CED30  40 82 FE FC */	bne lbl_802D1CEC
/* 802D1DF4 002CED34  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0
/* 802D1DF8 002CED38  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802D1DFC 002CED3C  39 61 00 40 */	addi r11, r1, 0x40
/* 802D1E00 002CED40  48 09 04 19 */	bl _restgpr_25 // func_80362218
/* 802D1E04 002CED44  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802D1E08 002CED48  7C 08 03 A6 */	mtlr r0
/* 802D1E0C 002CED4C  38 21 00 50 */	addi r1, r1, 0x50
/* 802D1E10 002CED50  4E 80 00 20 */	blr
