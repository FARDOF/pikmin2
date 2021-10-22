.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global __vt__Q32og6Screen18CallBack_CatchPiki
__vt__Q32og6Screen18CallBack_CatchPiki:
	.4byte 0
	.4byte 0
	.4byte __dt__Q32og6Screen18CallBack_CatchPikiFv
	.4byte getChildCount__5CNodeFv
	.4byte update__Q32og6Screen18CallBack_CatchPikiFv
	.4byte draw__Q29P2DScreen4NodeFR8GraphicsR14J2DGrafContext
	.4byte doInit__Q29P2DScreen4NodeFv
	.4byte 0

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_8051D628
lbl_8051D628:
	.4byte 0x3ECCCCCD
.global lbl_8051D62C
lbl_8051D62C:
	.4byte 0x41F00000
.global lbl_8051D630
lbl_8051D630:
	.float 0.7
.global lbl_8051D634
lbl_8051D634:
	.4byte 0x00000000
.global lbl_8051D638
lbl_8051D638:
	.float 0.5
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q32og6Screen18CallBack_CatchPikiFv
__ct__Q32og6Screen18CallBack_CatchPikiFv:
/* 80307820 00304760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80307824 00304764  7C 08 02 A6 */	mflr r0
/* 80307828 00304768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030782C 0030476C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80307830 00304770  93 C1 00 08 */	stw r30, 8(r1)
/* 80307834 00304774  7C 7E 1B 78 */	mr r30, r3
/* 80307838 00304778  7F C0 F3 78 */	mr r0, r30
/* 8030783C 0030477C  7C 1F 03 78 */	mr r31, r0
/* 80307840 00304780  48 10 9B 51 */	bl __ct__5CNodeFv
/* 80307844 00304784  3C 60 80 4D */	lis r3, __vt__Q29P2DScreen4Node@ha
/* 80307848 00304788  3C 80 80 4D */	lis r4, __vt__Q29P2DScreen12CallBackNode@ha
/* 8030784C 0030478C  38 03 7B 0C */	addi r0, r3, __vt__Q29P2DScreen4Node@l
/* 80307850 00304790  3C 60 80 4E */	lis r3, __vt__Q32og6Screen18CallBack_CatchPiki@ha
/* 80307854 00304794  90 1F 00 00 */	stw r0, 0(r31)
/* 80307858 00304798  38 A0 00 00 */	li r5, 0
/* 8030785C 0030479C  38 84 7F 2C */	addi r4, r4, __vt__Q29P2DScreen12CallBackNode@l
/* 80307860 003047A0  38 03 80 08 */	addi r0, r3, __vt__Q32og6Screen18CallBack_CatchPiki@l
/* 80307864 003047A4  90 BF 00 18 */	stw r5, 0x18(r31)
/* 80307868 003047A8  38 7E 00 28 */	addi r3, r30, 0x28
/* 8030786C 003047AC  90 9F 00 00 */	stw r4, 0(r31)
/* 80307870 003047B0  90 1E 00 00 */	stw r0, 0(r30)
/* 80307874 003047B4  48 02 15 91 */	bl __ct__Q32og6Screen8ScaleMgrFv
/* 80307878 003047B8  38 00 00 00 */	li r0, 0
/* 8030787C 003047BC  7F C3 F3 78 */	mr r3, r30
/* 80307880 003047C0  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80307884 003047C4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80307888 003047C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030788C 003047CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80307890 003047D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80307894 003047D4  7C 08 03 A6 */	mtlr r0
/* 80307898 003047D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030789C 003047DC  4E 80 00 20 */	blr 

.global __dt__Q32og6Screen8ScaleMgrFv
__dt__Q32og6Screen8ScaleMgrFv:
/* 803078A0 003047E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803078A4 003047E4  7C 08 02 A6 */	mflr r0
/* 803078A8 003047E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803078AC 003047EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803078B0 003047F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803078B4 003047F4  41 82 00 10 */	beq lbl_803078C4
/* 803078B8 003047F8  7C 80 07 35 */	extsh. r0, r4
/* 803078BC 003047FC  40 81 00 08 */	ble lbl_803078C4
/* 803078C0 00304800  4B D1 C7 F5 */	bl __dl__FPv
lbl_803078C4:
/* 803078C4 00304804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803078C8 00304808  7F E3 FB 78 */	mr r3, r31
/* 803078CC 0030480C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803078D0 00304810  7C 08 03 A6 */	mtlr r0
/* 803078D4 00304814  38 21 00 10 */	addi r1, r1, 0x10
/* 803078D8 00304818  4E 80 00 20 */	blr 

.global init__Q32og6Screen18CallBack_CatchPikiFP9J2DScreenUxPUlP10JKRArchive
init__Q32og6Screen18CallBack_CatchPikiFP9J2DScreenUxPUlP10JKRArchive:
/* 803078DC 0030481C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803078E0 00304820  7C 08 02 A6 */	mflr r0
/* 803078E4 00304824  90 01 00 34 */	stw r0, 0x34(r1)
/* 803078E8 00304828  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 803078EC 0030482C  7C 79 1B 78 */	mr r25, r3
/* 803078F0 00304830  7C 83 23 78 */	mr r3, r4
/* 803078F4 00304834  7C FA 3B 78 */	mr r26, r7
/* 803078F8 00304838  7D 1B 43 78 */	mr r27, r8
/* 803078FC 0030483C  81 84 00 00 */	lwz r12, 0(r4)
/* 80307900 00304840  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80307904 00304844  7D 89 03 A6 */	mtctr r12
/* 80307908 00304848  4E 80 04 21 */	bctrl 
/* 8030790C 0030484C  90 79 00 20 */	stw r3, 0x20(r25)
/* 80307910 00304850  3C 80 80 4D */	lis r4, PikiIconTextureName__Q22og6Screen@ha
/* 80307914 00304854  3C 60 80 51 */	lis r3, PikiIconTextureResTIMG__Q22og6Screen@ha
/* 80307918 00304858  3B 80 00 00 */	li r28, 0
/* 8030791C 0030485C  93 59 00 1C */	stw r26, 0x1c(r25)
/* 80307920 00304860  3B C4 7A C0 */	addi r30, r4, PikiIconTextureName__Q22og6Screen@l
/* 80307924 00304864  3B A3 3B B0 */	addi r29, r3, PikiIconTextureResTIMG__Q22og6Screen@l
/* 80307928 00304868  3F E0 54 49 */	lis r31, 0x54494D47@ha
/* 8030792C 0030486C  80 1A 00 00 */	lwz r0, 0(r26)
/* 80307930 00304870  90 19 00 24 */	stw r0, 0x24(r25)
lbl_80307934:
/* 80307934 00304874  7F 63 DB 78 */	mr r3, r27
/* 80307938 00304878  38 9F 4D 47 */	addi r4, r31, 0x54494D47@l
/* 8030793C 0030487C  81 9B 00 00 */	lwz r12, 0(r27)
/* 80307940 00304880  80 BE 00 00 */	lwz r5, 0(r30)
/* 80307944 00304884  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80307948 00304888  7D 89 03 A6 */	mtctr r12
/* 8030794C 0030488C  4E 80 04 21 */	bctrl 
/* 80307950 00304890  3B 9C 00 01 */	addi r28, r28, 1
/* 80307954 00304894  90 7D 00 00 */	stw r3, 0(r29)
/* 80307958 00304898  2C 1C 00 13 */	cmpwi r28, 0x13
/* 8030795C 0030489C  3B DE 00 04 */	addi r30, r30, 4
/* 80307960 003048A0  3B BD 00 04 */	addi r29, r29, 4
/* 80307964 003048A4  41 80 FF D0 */	blt lbl_80307934
/* 80307968 003048A8  80 9A 00 00 */	lwz r4, 0(r26)
/* 8030796C 003048AC  7F 23 CB 78 */	mr r3, r25
/* 80307970 003048B0  48 00 01 1D */	bl setPikiIcon__Q32og6Screen18CallBack_CatchPikiFi
/* 80307974 003048B4  7F 23 CB 78 */	mr r3, r25
/* 80307978 003048B8  81 99 00 00 */	lwz r12, 0(r25)
/* 8030797C 003048BC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80307980 003048C0  7D 89 03 A6 */	mtctr r12
/* 80307984 003048C4  4E 80 04 21 */	bctrl 
/* 80307988 003048C8  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8030798C 003048CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80307990 003048D0  7C 08 03 A6 */	mtlr r0
/* 80307994 003048D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80307998 003048D8  4E 80 00 20 */	blr 

.global update__Q32og6Screen18CallBack_CatchPikiFv
update__Q32og6Screen18CallBack_CatchPikiFv:
/* 8030799C 003048DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803079A0 003048E0  7C 08 02 A6 */	mflr r0
/* 803079A4 003048E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803079A8 003048E8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 803079AC 003048EC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 803079B0 003048F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803079B4 003048F4  93 C1 00 08 */	stw r30, 8(r1)
/* 803079B8 003048F8  7C 7E 1B 78 */	mr r30, r3
/* 803079BC 003048FC  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 803079C0 00304900  28 04 00 00 */	cmplwi r4, 0
/* 803079C4 00304904  41 82 00 A8 */	beq lbl_80307A6C
/* 803079C8 00304908  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 803079CC 0030490C  28 00 00 00 */	cmplwi r0, 0
/* 803079D0 00304910  41 82 00 9C */	beq lbl_80307A6C
/* 803079D4 00304914  83 E4 00 00 */	lwz r31, 0(r4)
/* 803079D8 00304918  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 803079DC 0030491C  7C 1F 00 40 */	cmplw r31, r0
/* 803079E0 00304920  41 82 00 30 */	beq lbl_80307A10
/* 803079E4 00304924  28 1F 00 13 */	cmplwi r31, 0x13
/* 803079E8 00304928  40 80 00 28 */	bge lbl_80307A10
/* 803079EC 0030492C  7F E4 FB 78 */	mr r4, r31
/* 803079F0 00304930  48 00 00 9D */	bl setPikiIcon__Q32og6Screen18CallBack_CatchPikiFi
/* 803079F4 00304934  C0 22 F2 C8 */	lfs f1, lbl_8051D628@sda21(r2)
/* 803079F8 00304938  38 7E 00 28 */	addi r3, r30, 0x28
/* 803079FC 0030493C  C0 42 F2 CC */	lfs f2, lbl_8051D62C@sda21(r2)
/* 80307A00 00304940  C0 62 F2 D0 */	lfs f3, lbl_8051D630@sda21(r2)
/* 80307A04 00304944  C0 82 F2 D4 */	lfs f4, lbl_8051D634@sda21(r2)
/* 80307A08 00304948  48 02 14 D1 */	bl up__Q32og6Screen8ScaleMgrFffff
/* 80307A0C 0030494C  93 FE 00 24 */	stw r31, 0x24(r30)
lbl_80307A10:
/* 80307A10 00304950  38 7E 00 28 */	addi r3, r30, 0x28
/* 80307A14 00304954  48 02 15 71 */	bl calc__Q32og6Screen8ScaleMgrFv
/* 80307A18 00304958  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80307A1C 0030495C  FF E0 08 90 */	fmr f31, f1
/* 80307A20 00304960  C0 42 F2 D8 */	lfs f2, lbl_8051D638@sda21(r2)
/* 80307A24 00304964  38 80 00 7A */	li r4, 0x7a
/* 80307A28 00304968  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80307A2C 0030496C  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 80307A30 00304970  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80307A34 00304974  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80307A38 00304978  EC 84 18 28 */	fsubs f4, f4, f3
/* 80307A3C 0030497C  C0 62 F2 D4 */	lfs f3, lbl_8051D634@sda21(r2)
/* 80307A40 00304980  EC 01 00 28 */	fsubs f0, f1, f0
/* 80307A44 00304984  EC 24 00 B2 */	fmuls f1, f4, f2
/* 80307A48 00304988  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80307A4C 0030498C  4B D3 09 B5 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 80307A50 00304990  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80307A54 00304994  D3 E3 00 CC */	stfs f31, 0xcc(r3)
/* 80307A58 00304998  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 80307A5C 0030499C  81 83 00 00 */	lwz r12, 0(r3)
/* 80307A60 003049A0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80307A64 003049A4  7D 89 03 A6 */	mtctr r12
/* 80307A68 003049A8  4E 80 04 21 */	bctrl 
lbl_80307A6C:
/* 80307A6C 003049AC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80307A70 003049B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80307A74 003049B4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80307A78 003049B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80307A7C 003049BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80307A80 003049C0  7C 08 03 A6 */	mtlr r0
/* 80307A84 003049C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80307A88 003049C8  4E 80 00 20 */	blr 

.global setPikiIcon__Q32og6Screen18CallBack_CatchPikiFi
setPikiIcon__Q32og6Screen18CallBack_CatchPikiFi:
/* 80307A8C 003049CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80307A90 003049D0  7C 08 02 A6 */	mflr r0
/* 80307A94 003049D4  2C 04 00 13 */	cmpwi r4, 0x13
/* 80307A98 003049D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80307A9C 003049DC  40 80 00 2C */	bge lbl_80307AC8
/* 80307AA0 003049E0  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80307AA4 003049E4  3C C0 80 51 */	lis r6, PikiIconTextureResTIMG__Q22og6Screen@ha
/* 80307AA8 003049E8  54 80 10 3A */	slwi r0, r4, 2
/* 80307AAC 003049EC  38 A0 00 00 */	li r5, 0
/* 80307AB0 003049F0  81 83 00 00 */	lwz r12, 0(r3)
/* 80307AB4 003049F4  38 86 3B B0 */	addi r4, r6, PikiIconTextureResTIMG__Q22og6Screen@l
/* 80307AB8 003049F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80307ABC 003049FC  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 80307AC0 00304A00  7D 89 03 A6 */	mtctr r12
/* 80307AC4 00304A04  4E 80 04 21 */	bctrl 
lbl_80307AC8:
/* 80307AC8 00304A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80307ACC 00304A0C  7C 08 03 A6 */	mtlr r0
/* 80307AD0 00304A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80307AD4 00304A14  4E 80 00 20 */	blr 

.global __dt__Q32og6Screen18CallBack_CatchPikiFv
__dt__Q32og6Screen18CallBack_CatchPikiFv:
/* 80307AD8 00304A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80307ADC 00304A1C  7C 08 02 A6 */	mflr r0
/* 80307AE0 00304A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80307AE4 00304A24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80307AE8 00304A28  7C 9F 23 78 */	mr r31, r4
/* 80307AEC 00304A2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80307AF0 00304A30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80307AF4 00304A34  41 82 00 48 */	beq lbl_80307B3C
/* 80307AF8 00304A38  3C 80 80 4E */	lis r4, __vt__Q32og6Screen18CallBack_CatchPiki@ha
/* 80307AFC 00304A3C  38 04 80 08 */	addi r0, r4, __vt__Q32og6Screen18CallBack_CatchPiki@l
/* 80307B00 00304A40  90 1E 00 00 */	stw r0, 0(r30)
/* 80307B04 00304A44  41 82 00 28 */	beq lbl_80307B2C
/* 80307B08 00304A48  3C 80 80 4D */	lis r4, __vt__Q29P2DScreen12CallBackNode@ha
/* 80307B0C 00304A4C  38 04 7F 2C */	addi r0, r4, __vt__Q29P2DScreen12CallBackNode@l
/* 80307B10 00304A50  90 1E 00 00 */	stw r0, 0(r30)
/* 80307B14 00304A54  41 82 00 18 */	beq lbl_80307B2C
/* 80307B18 00304A58  3C A0 80 4D */	lis r5, __vt__Q29P2DScreen4Node@ha
/* 80307B1C 00304A5C  38 80 00 00 */	li r4, 0
/* 80307B20 00304A60  38 05 7B 0C */	addi r0, r5, __vt__Q29P2DScreen4Node@l
/* 80307B24 00304A64  90 1E 00 00 */	stw r0, 0(r30)
/* 80307B28 00304A68  48 10 9A 61 */	bl __dt__5CNodeFv
lbl_80307B2C:
/* 80307B2C 00304A6C  7F E0 07 35 */	extsh. r0, r31
/* 80307B30 00304A70  40 81 00 0C */	ble lbl_80307B3C
/* 80307B34 00304A74  7F C3 F3 78 */	mr r3, r30
/* 80307B38 00304A78  4B D1 C5 7D */	bl __dl__FPv
lbl_80307B3C:
/* 80307B3C 00304A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80307B40 00304A80  7F C3 F3 78 */	mr r3, r30
/* 80307B44 00304A84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80307B48 00304A88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80307B4C 00304A8C  7C 08 03 A6 */	mtlr r0
/* 80307B50 00304A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80307B54 00304A94  4E 80 00 20 */	blr 
