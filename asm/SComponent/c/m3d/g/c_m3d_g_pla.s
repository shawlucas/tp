.include "macros.inc"

.section .text, "ax" # 8026f3dc


.global cM3dGPla_X1_
cM3dGPla_X1_:
/* 8026F3DC 0026C31C  3C A0 80 3A */	lis r5, lbl_803A37C0@ha
/* 8026F3E0 0026C320  38 05 37 C0 */	addi r0, r5, lbl_803A37C0@l
/* 8026F3E4 0026C324  90 03 00 10 */	stw r0, 0x10(r3)
/* 8026F3E8 0026C328  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F3EC 0026C32C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F3F0 0026C330  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026F3F4 0026C334  D0 03 00 04 */	stfs f0, 4(r3)
/* 8026F3F8 0026C338  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F3FC 0026C33C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026F400 0026C340  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8026F404 0026C344  4E 80 00 20 */	blr 

.global cM3dGPla_NS_crossInfLin
cM3dGPla_NS_crossInfLin:
/* 8026F408 0026C348  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026F40C 0026C34C  7C 08 02 A6 */	mflr r0
/* 8026F410 0026C350  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026F414 0026C354  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8026F418 0026C358  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8026F41C 0026C35C  39 61 00 20 */	addi r11, r1, 0x20
/* 8026F420 0026C360  48 0F 2D B9 */	bl _savegpr_28
/* 8026F424 0026C364  7C 7C 1B 78 */	mr r28, r3
/* 8026F428 0026C368  7C 9D 23 78 */	mr r29, r4
/* 8026F42C 0026C36C  7C BE 2B 78 */	mr r30, r5
/* 8026F430 0026C370  7C DF 33 78 */	mr r31, r6
/* 8026F434 0026C374  48 0D 7D 61 */	bl PSVECDotProduct
/* 8026F438 0026C378  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8026F43C 0026C37C  EF E0 08 2A */	fadds f31, f0, f1
/* 8026F440 0026C380  7F 83 E3 78 */	mr r3, r28
/* 8026F444 0026C384  7F C4 F3 78 */	mr r4, r30
/* 8026F448 0026C388  48 0D 7D 4D */	bl PSVECDotProduct
/* 8026F44C 0026C38C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8026F450 0026C390  EC 00 08 2A */	fadds f0, f0, f1
/* 8026F454 0026C394  EC 5F 00 28 */	fsubs f2, f31, f0
/* 8026F458 0026C398  FC 00 12 10 */	fabs f0, f2
/* 8026F45C 0026C39C  FC 20 00 18 */	frsp f1, f0
/* 8026F460 0026C3A0  C0 0D 8C 00 */	lfs f0, lbl_80451180-_SDA_BASE_(r13)
/* 8026F464 0026C3A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026F468 0026C3A8  40 80 00 24 */	bge lbl_8026F48C
/* 8026F46C 0026C3AC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026F470 0026C3B0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026F474 0026C3B4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026F478 0026C3B8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026F47C 0026C3BC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026F480 0026C3C0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8026F484 0026C3C4  38 60 00 00 */	li r3, 0
/* 8026F488 0026C3C8  48 00 00 1C */	b lbl_8026F4A4
lbl_8026F48C:
/* 8026F48C 0026C3CC  7F A3 EB 78 */	mr r3, r29
/* 8026F490 0026C3D0  7F C4 F3 78 */	mr r4, r30
/* 8026F494 0026C3D4  EC 3F 10 24 */	fdivs f1, f31, f2
/* 8026F498 0026C3D8  7F E5 FB 78 */	mr r5, r31
/* 8026F49C 0026C3DC  4B FF 91 15 */	bl cM3d_InDivPos2
/* 8026F4A0 0026C3E0  38 60 00 01 */	li r3, 1
lbl_8026F4A4:
/* 8026F4A4 0026C3E4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8026F4A8 0026C3E8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8026F4AC 0026C3EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8026F4B0 0026C3F0  48 0F 2D 75 */	bl _restgpr_28
/* 8026F4B4 0026C3F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026F4B8 0026C3F8  7C 08 03 A6 */	mtlr r0
/* 8026F4BC 0026C3FC  38 21 00 30 */	addi r1, r1, 0x30
/* 8026F4C0 0026C400  4E 80 00 20 */	blr 

.global cM3dGPla_NS_SetupNP0
cM3dGPla_NS_SetupNP0:
/* 8026F4C4 0026C404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F4C8 0026C408  7C 08 02 A6 */	mflr r0
/* 8026F4CC 0026C40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F4D0 0026C410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026F4D4 0026C414  93 C1 00 08 */	stw r30, 8(r1)
/* 8026F4D8 0026C418  7C 7E 1B 78 */	mr r30, r3
/* 8026F4DC 0026C41C  7C BF 2B 78 */	mr r31, r5
/* 8026F4E0 0026C420  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F4E4 0026C424  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F4E8 0026C428  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026F4EC 0026C42C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8026F4F0 0026C430  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F4F4 0026C434  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026F4F8 0026C438  7F C4 F3 78 */	mr r4, r30
/* 8026F4FC 0026C43C  48 0D 7B F9 */	bl PSVECNormalize
/* 8026F500 0026C440  7F C3 F3 78 */	mr r3, r30
/* 8026F504 0026C444  7F E4 FB 78 */	mr r4, r31
/* 8026F508 0026C448  48 0D 7C 8D */	bl PSVECDotProduct
/* 8026F50C 0026C44C  FC 00 08 50 */	fneg f0, f1
/* 8026F510 0026C450  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8026F514 0026C454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026F518 0026C458  83 C1 00 08 */	lwz r30, 8(r1)
/* 8026F51C 0026C45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F520 0026C460  7C 08 03 A6 */	mtlr r0
/* 8026F524 0026C464  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F528 0026C468  4E 80 00 20 */	blr 

.global cM3dGPla_NS_SetupNP
cM3dGPla_NS_SetupNP:
/* 8026F52C 0026C46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F530 0026C470  7C 08 02 A6 */	mflr r0
/* 8026F534 0026C474  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F538 0026C478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026F53C 0026C47C  7C 7F 1B 78 */	mr r31, r3
/* 8026F540 0026C480  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F544 0026C484  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F548 0026C488  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026F54C 0026C48C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8026F550 0026C490  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F554 0026C494  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026F558 0026C498  7C A4 2B 78 */	mr r4, r5
/* 8026F55C 0026C49C  48 0D 7C 39 */	bl PSVECDotProduct
/* 8026F560 0026C4A0  FC 00 08 50 */	fneg f0, f1
/* 8026F564 0026C4A4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8026F568 0026C4A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026F56C 0026C4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F570 0026C4B0  7C 08 03 A6 */	mtlr r0
/* 8026F574 0026C4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F578 0026C4B8  4E 80 00 20 */	blr 

.global cM3dGPla_NS_getCrossY
cM3dGPla_NS_getCrossY:
/* 8026F57C 0026C4BC  C0 63 00 04 */	lfs f3, 4(r3)
/* 8026F580 0026C4C0  FC 00 1A 10 */	fabs f0, f3
/* 8026F584 0026C4C4  FC 20 00 18 */	frsp f1, f0
/* 8026F588 0026C4C8  C0 0D 8C 00 */	lfs f0, lbl_80451180-_SDA_BASE_(r13)
/* 8026F58C 0026C4CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026F590 0026C4D0  40 80 00 0C */	bge lbl_8026F59C
/* 8026F594 0026C4D4  38 60 00 00 */	li r3, 0
/* 8026F598 0026C4D8  4E 80 00 20 */	blr 
lbl_8026F59C:
/* 8026F59C 0026C4DC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026F5A0 0026C4E0  FC 20 00 50 */	fneg f1, f0
/* 8026F5A4 0026C4E4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F5A8 0026C4E8  EC 41 00 32 */	fmuls f2, f1, f0
/* 8026F5AC 0026C4EC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8026F5B0 0026C4F0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F5B4 0026C4F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8026F5B8 0026C4F8  EC 22 00 28 */	fsubs f1, f2, f0
/* 8026F5BC 0026C4FC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8026F5C0 0026C500  EC 01 00 28 */	fsubs f0, f1, f0
/* 8026F5C4 0026C504  EC 00 18 24 */	fdivs f0, f0, f3
/* 8026F5C8 0026C508  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026F5CC 0026C50C  38 60 00 01 */	li r3, 1
/* 8026F5D0 0026C510  4E 80 00 20 */	blr 

.global cM3dGPla_NS_getCrossYLessD
cM3dGPla_NS_getCrossYLessD:
/* 8026F5D4 0026C514  C0 63 00 04 */	lfs f3, 4(r3)
/* 8026F5D8 0026C518  FC 00 1A 10 */	fabs f0, f3
/* 8026F5DC 0026C51C  FC 20 00 18 */	frsp f1, f0
/* 8026F5E0 0026C520  C0 0D 8C 00 */	lfs f0, lbl_80451180-_SDA_BASE_(r13)
/* 8026F5E4 0026C524  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026F5E8 0026C528  40 80 00 0C */	bge lbl_8026F5F4
/* 8026F5EC 0026C52C  38 60 00 00 */	li r3, 0
/* 8026F5F0 0026C530  4E 80 00 20 */	blr 
lbl_8026F5F4:
/* 8026F5F4 0026C534  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026F5F8 0026C538  FC 20 00 50 */	fneg f1, f0
/* 8026F5FC 0026C53C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F600 0026C540  EC 41 00 32 */	fmuls f2, f1, f0
/* 8026F604 0026C544  C0 23 00 08 */	lfs f1, 8(r3)
/* 8026F608 0026C548  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F60C 0026C54C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8026F610 0026C550  EC 02 00 28 */	fsubs f0, f2, f0
/* 8026F614 0026C554  EC 00 18 24 */	fdivs f0, f0, f3
/* 8026F618 0026C558  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026F61C 0026C55C  38 60 00 01 */	li r3, 1
/* 8026F620 0026C560  4E 80 00 20 */	blr 

.global cM3dGPla_NS_Set
cM3dGPla_NS_Set:
/* 8026F624 0026C564  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026F628 0026C568  D0 03 00 00 */	stfs f0, 0(r3)
/* 8026F62C 0026C56C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8026F630 0026C570  D0 03 00 04 */	stfs f0, 4(r3)
/* 8026F634 0026C574  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026F638 0026C578  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026F63C 0026C57C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8026F640 0026C580  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8026F644 0026C584  4E 80 00 20 */	blr 

