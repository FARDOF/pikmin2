.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
	.4byte __sinit_khPayDept_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_80499160
lbl_80499160:
	.asciz "khPayDept.cpp"
	.skip 2
.global lbl_80499170
lbl_80499170:
	.asciz "0_48.bti"
	.skip 3
.global lbl_8049917C
lbl_8049917C:
	.asciz "1_48.bti"
	.skip 3
.global lbl_80499188
lbl_80499188:
	.asciz "2_48.bti"
	.skip 3
.global lbl_80499194
lbl_80499194:
	.asciz "3_48.bti"
	.skip 3
.global lbl_804991A0
lbl_804991A0:
	.asciz "4_48.bti"
	.skip 3
.global lbl_804991AC
lbl_804991AC:
	.asciz "5_48.bti"
	.skip 3
.global lbl_804991B8
lbl_804991B8:
	.asciz "6_48.bti"
	.skip 3
.global lbl_804991C4
lbl_804991C4:
	.asciz "7_48.bti"
	.skip 3
.global lbl_804991D0
lbl_804991D0:
	.asciz "8_48.bti"
	.skip 3
.global lbl_804991DC
lbl_804991DC:
	.asciz "9_48.bti"
	.skip 3
.global lbl_804991E8
lbl_804991E8:
	.asciz "hensai_demo_parsent.blo"
.global lbl_80499200
lbl_80499200:
	.asciz "hensai_demo_parsent.bck"
.global lbl_80499218
lbl_80499218:
	.asciz "hensai_demo_parsent.bpk"
	.4byte lbl_804991E8
	.4byte lbl_80499200
	.4byte lbl_80499218
.global lbl_8049923C
lbl_8049923C:
	.asciz "hensai_demo_kanryo.blo"
	.skip 1
.global lbl_80499254
lbl_80499254:
	.asciz "hensai_demo_kanryo.bck"
	.skip 1
.global lbl_8049926C
lbl_8049926C:
	.asciz "hensai_demo_kanryo.bpk"
	.skip 1
	.4byte lbl_8049923C
	.4byte lbl_80499254
	.4byte lbl_8049926C
.global lbl_80499290
lbl_80499290:
	.asciz "hensai_demo_otakara.blo"
.global lbl_804992A8
lbl_804992A8:
	.asciz "hensai_demo_otakara.bck"
.global lbl_804992C0
lbl_804992C0:
	.asciz "hensai_demo_otakara.bpk"
	.4byte lbl_80499290
	.4byte lbl_804992A8
	.4byte lbl_804992C0
.global lbl_804992E4
lbl_804992E4:
	.asciz "disp member err"
	.asciz "hensai_demo_parsent.szs"
	.asciz "hensai_demo_kanryo.szs"
	.skip 1
	.asciz "hensai_demo_otakara.szs"
	.asciz "screenObj.h"
	.asciz "P2Assert"
	.skip 7

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global cpNumTexLargeName__Q22kh6Screen
cpNumTexLargeName__Q22kh6Screen:
	.4byte lbl_80499170
	.4byte lbl_8049917C
	.4byte lbl_80499188
	.4byte lbl_80499194
	.4byte lbl_804991A0
	.4byte lbl_804991AC
	.4byte lbl_804991B8
	.4byte lbl_804991C4
	.4byte lbl_804991D0
	.4byte lbl_804991DC
.global __vt__Q32kh6Screen12ScenePayDept
__vt__Q32kh6Screen12ScenePayDept:
	.4byte 0
	.4byte 0
	.4byte getSceneType__Q32kh6Screen12ScenePayDeptFv
	.4byte getOwnerID__Q32kh6Screen12ScenePayDeptFv
	.4byte getMemberID__Q32kh6Screen12ScenePayDeptFv
	.4byte isUseBackupSceneInfo__Q32kh6Screen12ScenePayDeptFv
	.4byte isDrawInDemo__Q26Screen9SceneBaseCFv
	.4byte getResName__Q32kh6Screen12ScenePayDeptCFv
	.4byte doCreateObj__Q32kh6Screen12ScenePayDeptFP10JKRArchive
	.4byte doUserCallBackFunc__Q32kh6Screen12ScenePayDeptFPQ28Resource10MgrCommand
	.4byte setPort__Q26Screen9SceneBaseFR8Graphics
	.4byte doUpdateActive__Q26Screen9SceneBaseFv
	.4byte doConfirmSetScene__Q26Screen9SceneBaseFRQ26Screen11SetSceneArg
	.4byte doConfirmStartScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
	.4byte doConfirmEndScene__Q26Screen9SceneBaseFRPQ26Screen11EndSceneArg
	.4byte doStart__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
	.4byte doEnd__Q26Screen9SceneBaseFPQ26Screen11EndSceneArg
	.4byte setDefaultDispMember__Q26Screen9SceneBaseFv
	.4byte doSetBackupScene__Q26Screen9SceneBaseFRQ26Screen11SetSceneArg
	.4byte doGetFinishState__Q26Screen9SceneBaseFv
.global __vt__Q32kh6Screen10ObjPayDept
__vt__Q32kh6Screen10ObjPayDept:
	.4byte 0
	.4byte 0
	.4byte __dt__Q32kh6Screen10ObjPayDeptFv
	.4byte getChildCount__5CNodeFv
	.4byte 0
	.4byte 0
	.4byte "@24@__dt__Q32kh6Screen10ObjPayDeptFv"
	.4byte update__Q26Screen7ObjBaseFv
	.4byte draw__Q26Screen7ObjBaseFR8Graphics
	.4byte start__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
	.4byte end__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
	.4byte setOwner__Q26Screen7ObjBaseFPQ26Screen9SceneBase
	.4byte getOwner__Q26Screen7ObjBaseCFv
	.4byte create__Q26Screen7ObjBaseFP10JKRArchive
	.4byte confirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
	.4byte confirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
	.4byte confirmEndScene__Q26Screen7ObjBaseFPQ26Screen11EndSceneArg
	.4byte doStart__Q26Screen7ObjBaseFPCQ26Screen13StartSceneArg
	.4byte doEnd__Q26Screen7ObjBaseFPCQ26Screen11EndSceneArg
	.4byte doCreate__Q32kh6Screen10ObjPayDeptFP10JKRArchive
	.4byte doUpdateFadein__Q32kh6Screen10ObjPayDeptFv
	.4byte doUpdateFadeinFinish__Q26Screen7ObjBaseFv
	.4byte doUpdate__Q32kh6Screen10ObjPayDeptFv
	.4byte doUpdateFinish__Q26Screen7ObjBaseFv
	.4byte doUpdateFadeout__Q26Screen7ObjBaseFv
	.4byte doUpdateFadeoutFinish__Q32kh6Screen10ObjPayDeptFv
	.4byte doDraw__Q32kh6Screen10ObjPayDeptFR8Graphics
	.4byte doConfirmSetScene__Q26Screen7ObjBaseFRQ26Screen11SetSceneArg
	.4byte doConfirmStartScene__Q26Screen7ObjBaseFPQ26Screen13StartSceneArg
	.4byte doConfirmEndScene__Q26Screen7ObjBaseFRPQ26Screen11EndSceneArg
.global __vt__Q32kh6Screen11DispPayDept
__vt__Q32kh6Screen11DispPayDept:
	.4byte 0
	.4byte 0
	.4byte getSize__Q32kh6Screen11DispPayDeptFv
	.4byte getOwnerID__Q32kh6Screen11DispPayDeptFv
	.4byte getMemberID__Q32kh6Screen11DispPayDeptFv
	.4byte doSetSubMemberAll__Q32og6Screen14DispMemberBaseFv

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global msVal__Q32kh6Screen10ObjPayDept
msVal__Q32kh6Screen10ObjPayDept:
	.skip 0x8

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_805201E8
lbl_805201E8:
	.4byte 0x00000000
	.4byte 0x00000000
.global lbl_805201F0
lbl_805201F0:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_805201F8
lbl_805201F8:
	.asciz "failed"
	.skip 1
.global lbl_80520200
lbl_80520200:
	.4byte 0x00000000
.global lbl_80520204
lbl_80520204:
	.float 1.0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q32kh6Screen11DispPayDeptFQ42kh6Screen11DispPayDept11PayDeptTypei
__ct__Q32kh6Screen11DispPayDeptFQ42kh6Screen11DispPayDept11PayDeptTypei:
/* 8040F1E0 0040C120  3C E0 80 4B */	lis r7, __vt__Q32og6Screen14DispMemberBase@ha
/* 8040F1E4 0040C124  3C C0 80 4F */	lis r6, __vt__Q32kh6Screen11DispPayDept@ha
/* 8040F1E8 0040C128  38 07 11 48 */	addi r0, r7, __vt__Q32og6Screen14DispMemberBase@l
/* 8040F1EC 0040C12C  38 E0 00 00 */	li r7, 0
/* 8040F1F0 0040C130  90 03 00 00 */	stw r0, 0(r3)
/* 8040F1F4 0040C134  38 06 B3 D0 */	addi r0, r6, __vt__Q32kh6Screen11DispPayDept@l
/* 8040F1F8 0040C138  90 E3 00 04 */	stw r7, 4(r3)
/* 8040F1FC 0040C13C  90 03 00 00 */	stw r0, 0(r3)
/* 8040F200 0040C140  90 83 00 08 */	stw r4, 8(r3)
/* 8040F204 0040C144  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8040F208 0040C148  4E 80 00 20 */	blr 

.global doCreate__Q32kh6Screen10ObjPayDeptFP10JKRArchive
doCreate__Q32kh6Screen10ObjPayDeptFP10JKRArchive:
/* 8040F20C 0040C14C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8040F210 0040C150  7C 08 02 A6 */	mflr r0
/* 8040F214 0040C154  3C A0 80 4A */	lis r5, lbl_80499160@ha
/* 8040F218 0040C158  90 01 00 44 */	stw r0, 0x44(r1)
/* 8040F21C 0040C15C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8040F220 0040C160  3B E5 91 60 */	addi r31, r5, lbl_80499160@l
/* 8040F224 0040C164  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8040F228 0040C168  7C 9E 23 78 */	mr r30, r4
/* 8040F22C 0040C16C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8040F230 0040C170  7C 7D 1B 78 */	mr r29, r3
/* 8040F234 0040C174  93 81 00 30 */	stw r28, 0x30(r1)
/* 8040F238 0040C178  81 7F 00 D0 */	lwz r11, 0xd0(r31)
/* 8040F23C 0040C17C  81 5F 00 D4 */	lwz r10, 0xd4(r31)
/* 8040F240 0040C180  81 3F 00 D8 */	lwz r9, 0xd8(r31)
/* 8040F244 0040C184  81 1F 01 24 */	lwz r8, 0x124(r31)
/* 8040F248 0040C188  80 FF 01 28 */	lwz r7, 0x128(r31)
/* 8040F24C 0040C18C  80 DF 01 2C */	lwz r6, 0x12c(r31)
/* 8040F250 0040C190  80 BF 01 78 */	lwz r5, 0x178(r31)
/* 8040F254 0040C194  80 9F 01 7C */	lwz r4, 0x17c(r31)
/* 8040F258 0040C198  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 8040F25C 0040C19C  91 61 00 20 */	stw r11, 0x20(r1)
/* 8040F260 0040C1A0  91 41 00 24 */	stw r10, 0x24(r1)
/* 8040F264 0040C1A4  91 21 00 28 */	stw r9, 0x28(r1)
/* 8040F268 0040C1A8  91 01 00 14 */	stw r8, 0x14(r1)
/* 8040F26C 0040C1AC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8040F270 0040C1B0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8040F274 0040C1B4  90 A1 00 08 */	stw r5, 8(r1)
/* 8040F278 0040C1B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8040F27C 0040C1BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040F280 0040C1C0  48 04 4D 29 */	bl getDispMember__Q26Screen7ObjBaseFv
/* 8040F284 0040C1C4  3C 80 44 45 */	lis r4, 0x44455054@ha
/* 8040F288 0040C1C8  3C A0 50 41 */	lis r5, 0x5041595F@ha
/* 8040F28C 0040C1CC  38 C4 50 54 */	addi r6, r4, 0x44455054@l
/* 8040F290 0040C1D0  38 80 4B 48 */	li r4, 0x4b48
/* 8040F294 0040C1D4  38 A5 59 5F */	addi r5, r5, 0x5041595F@l
/* 8040F298 0040C1D8  4B F0 00 85 */	bl isID__Q32og6Screen14DispMemberBaseFUlUx
/* 8040F29C 0040C1DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8040F2A0 0040C1E0  40 82 00 18 */	bne lbl_8040F2B8
/* 8040F2A4 0040C1E4  38 7F 00 00 */	addi r3, r31, 0
/* 8040F2A8 0040C1E8  38 BF 01 84 */	addi r5, r31, 0x184
/* 8040F2AC 0040C1EC  38 80 00 5B */	li r4, 0x5b
/* 8040F2B0 0040C1F0  4C C6 31 82 */	crclr 6
/* 8040F2B4 0040C1F4  4B C1 B3 8D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8040F2B8:
/* 8040F2B8 0040C1F8  7F A3 EB 78 */	mr r3, r29
/* 8040F2BC 0040C1FC  48 04 4C ED */	bl getDispMember__Q26Screen7ObjBaseFv
/* 8040F2C0 0040C200  7C 7F 1B 78 */	mr r31, r3
/* 8040F2C4 0040C204  3B 80 00 00 */	li r28, 0
/* 8040F2C8 0040C208  80 03 00 08 */	lwz r0, 8(r3)
/* 8040F2CC 0040C20C  2C 00 00 01 */	cmpwi r0, 1
/* 8040F2D0 0040C210  41 82 00 28 */	beq lbl_8040F2F8
/* 8040F2D4 0040C214  40 80 00 10 */	bge lbl_8040F2E4
/* 8040F2D8 0040C218  2C 00 00 00 */	cmpwi r0, 0
/* 8040F2DC 0040C21C  40 80 00 14 */	bge lbl_8040F2F0
/* 8040F2E0 0040C220  48 00 00 24 */	b lbl_8040F304
lbl_8040F2E4:
/* 8040F2E4 0040C224  2C 00 00 03 */	cmpwi r0, 3
/* 8040F2E8 0040C228  40 80 00 1C */	bge lbl_8040F304
/* 8040F2EC 0040C22C  48 00 00 14 */	b lbl_8040F300
lbl_8040F2F0:
/* 8040F2F0 0040C230  3B 81 00 20 */	addi r28, r1, 0x20
/* 8040F2F4 0040C234  48 00 00 10 */	b lbl_8040F304
lbl_8040F2F8:
/* 8040F2F8 0040C238  3B 81 00 14 */	addi r28, r1, 0x14
/* 8040F2FC 0040C23C  48 00 00 08 */	b lbl_8040F304
lbl_8040F300:
/* 8040F300 0040C240  3B 81 00 08 */	addi r28, r1, 8
lbl_8040F304:
/* 8040F304 0040C244  38 60 01 48 */	li r3, 0x148
/* 8040F308 0040C248  4B C1 4B 9D */	bl __nw__FUl
/* 8040F30C 0040C24C  7C 60 1B 79 */	or. r0, r3, r3
/* 8040F310 0040C250  41 82 00 0C */	beq lbl_8040F31C
/* 8040F314 0040C254  48 02 5A 99 */	bl __ct__Q29P2DScreen10Mgr_tuningFv
/* 8040F318 0040C258  7C 60 1B 78 */	mr r0, r3
lbl_8040F31C:
/* 8040F31C 0040C25C  90 1D 00 38 */	stw r0, 0x38(r29)
/* 8040F320 0040C260  7F C6 F3 78 */	mr r6, r30
/* 8040F324 0040C264  3C A0 00 04 */	lis r5, 4
/* 8040F328 0040C268  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8040F32C 0040C26C  80 9C 00 00 */	lwz r4, 0(r28)
/* 8040F330 0040C270  4B C3 02 F5 */	bl set__9J2DScreenFPCcUlP10JKRArchive
/* 8040F334 0040C274  80 7C 00 04 */	lwz r3, 4(r28)
/* 8040F338 0040C278  7F C4 F3 78 */	mr r4, r30
/* 8040F33C 0040C27C  4B C1 3C DD */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8040F340 0040C280  4B C3 85 DD */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8040F344 0040C284  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8040F348 0040C288  7F C4 F3 78 */	mr r4, r30
/* 8040F34C 0040C28C  80 7C 00 08 */	lwz r3, 8(r28)
/* 8040F350 0040C290  4B C1 3C C9 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8040F354 0040C294  4B C3 85 C9 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8040F358 0040C298  90 7D 00 40 */	stw r3, 0x40(r29)
/* 8040F35C 0040C29C  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8040F360 0040C2A0  80 9D 00 3C */	lwz r4, 0x3c(r29)
/* 8040F364 0040C2A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8040F368 0040C2A8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8040F36C 0040C2AC  7D 89 03 A6 */	mtctr r12
/* 8040F370 0040C2B0  4E 80 04 21 */	bctrl 
/* 8040F374 0040C2B4  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8040F378 0040C2B8  80 9D 00 40 */	lwz r4, 0x40(r29)
/* 8040F37C 0040C2BC  81 83 00 00 */	lwz r12, 0(r3)
/* 8040F380 0040C2C0  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8040F384 0040C2C4  7D 89 03 A6 */	mtctr r12
/* 8040F388 0040C2C8  4E 80 04 21 */	bctrl 
/* 8040F38C 0040C2CC  80 1F 00 08 */	lwz r0, 8(r31)
/* 8040F390 0040C2D0  2C 00 00 00 */	cmpwi r0, 0
/* 8040F394 0040C2D4  40 82 00 60 */	bne lbl_8040F3F4
/* 8040F398 0040C2D8  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8040F39C 0040C2DC  3C 80 52 4F */	lis r4, 0x524F4F54@ha
/* 8040F3A0 0040C2E0  38 C4 4F 54 */	addi r6, r4, 0x524F4F54@l
/* 8040F3A4 0040C2E4  83 DF 00 0C */	lwz r30, 0xc(r31)
/* 8040F3A8 0040C2E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8040F3AC 0040C2EC  38 A0 00 00 */	li r5, 0
/* 8040F3B0 0040C2F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8040F3B4 0040C2F4  7D 89 03 A6 */	mtctr r12
/* 8040F3B8 0040C2F8  4E 80 04 21 */	bctrl 
/* 8040F3BC 0040C2FC  3C A0 66 66 */	lis r5, 0x66666667@ha
/* 8040F3C0 0040C300  7C 64 1B 78 */	mr r4, r3
/* 8040F3C4 0040C304  38 05 66 67 */	addi r0, r5, 0x66666667@l
/* 8040F3C8 0040C308  7F A3 EB 78 */	mr r3, r29
/* 8040F3CC 0040C30C  7C 00 F0 96 */	mulhw r0, r0, r30
/* 8040F3D0 0040C310  7C 06 16 70 */	srawi r6, r0, 2
/* 8040F3D4 0040C314  7C 00 16 70 */	srawi r0, r0, 2
/* 8040F3D8 0040C318  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8040F3DC 0040C31C  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 8040F3E0 0040C320  7C 00 2A 14 */	add r0, r0, r5
/* 8040F3E4 0040C324  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8040F3E8 0040C328  7C A6 3A 14 */	add r5, r6, r7
/* 8040F3EC 0040C32C  7C C0 F0 50 */	subf r6, r0, r30
/* 8040F3F0 0040C330  48 00 03 65 */	bl searchNumPane__Q32kh6Screen10ObjPayDeptFP7J2DPaneii
lbl_8040F3F4:
/* 8040F3F4 0040C334  80 1F 00 08 */	lwz r0, 8(r31)
/* 8040F3F8 0040C338  2C 00 00 01 */	cmpwi r0, 1
/* 8040F3FC 0040C33C  41 82 00 30 */	beq lbl_8040F42C
/* 8040F400 0040C340  40 80 00 10 */	bge lbl_8040F410
/* 8040F404 0040C344  2C 00 00 00 */	cmpwi r0, 0
/* 8040F408 0040C348  40 80 00 14 */	bge lbl_8040F41C
/* 8040F40C 0040C34C  48 00 00 3C */	b lbl_8040F448
lbl_8040F410:
/* 8040F410 0040C350  2C 00 00 03 */	cmpwi r0, 3
/* 8040F414 0040C354  40 80 00 34 */	bge lbl_8040F448
/* 8040F418 0040C358  48 00 00 24 */	b lbl_8040F43C
lbl_8040F41C:
/* 8040F41C 0040C35C  3C 60 C0 01 */	lis r3, 0xC0011021@ha
/* 8040F420 0040C360  38 63 10 21 */	addi r3, r3, 0xC0011021@l
/* 8040F424 0040C364  48 05 C3 4D */	bl PSStart2DStream__FUl
/* 8040F428 0040C368  48 00 00 20 */	b lbl_8040F448
lbl_8040F42C:
/* 8040F42C 0040C36C  3C 60 C0 01 */	lis r3, 0xC0011020@ha
/* 8040F430 0040C370  38 63 10 20 */	addi r3, r3, 0xC0011020@l
/* 8040F434 0040C374  48 05 C3 3D */	bl PSStart2DStream__FUl
/* 8040F438 0040C378  48 00 00 10 */	b lbl_8040F448
lbl_8040F43C:
/* 8040F43C 0040C37C  3C 60 C0 01 */	lis r3, 0xC0011020@ha
/* 8040F440 0040C380  38 63 10 20 */	addi r3, r3, 0xC0011020@l
/* 8040F444 0040C384  48 05 C3 2D */	bl PSStart2DStream__FUl
lbl_8040F448:
/* 8040F448 0040C388  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8040F44C 0040C38C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8040F450 0040C390  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8040F454 0040C394  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8040F458 0040C398  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8040F45C 0040C39C  7C 08 03 A6 */	mtlr r0
/* 8040F460 0040C3A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8040F464 0040C3A4  4E 80 00 20 */	blr 

.global doUpdateFadein__Q32kh6Screen10ObjPayDeptFv
doUpdateFadein__Q32kh6Screen10ObjPayDeptFv:
/* 8040F468 0040C3A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F46C 0040C3AC  7C 08 02 A6 */	mflr r0
/* 8040F470 0040C3B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F474 0040C3B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040F478 0040C3B8  7C 7F 1B 78 */	mr r31, r3
/* 8040F47C 0040C3BC  48 04 4B 2D */	bl getDispMember__Q26Screen7ObjBaseFv
/* 8040F480 0040C3C0  3C 80 44 45 */	lis r4, 0x44455054@ha
/* 8040F484 0040C3C4  3C A0 50 41 */	lis r5, 0x5041595F@ha
/* 8040F488 0040C3C8  38 C4 50 54 */	addi r6, r4, 0x44455054@l
/* 8040F48C 0040C3CC  38 80 4B 48 */	li r4, 0x4b48
/* 8040F490 0040C3D0  38 A5 59 5F */	addi r5, r5, 0x5041595F@l
/* 8040F494 0040C3D4  4B EF FE 89 */	bl isID__Q32og6Screen14DispMemberBaseFUlUx
/* 8040F498 0040C3D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8040F49C 0040C3DC  40 82 00 20 */	bne lbl_8040F4BC
/* 8040F4A0 0040C3E0  3C 60 80 4A */	lis r3, lbl_80499160@ha
/* 8040F4A4 0040C3E4  3C A0 80 4A */	lis r5, lbl_804992E4@ha
/* 8040F4A8 0040C3E8  38 63 91 60 */	addi r3, r3, lbl_80499160@l
/* 8040F4AC 0040C3EC  38 80 00 96 */	li r4, 0x96
/* 8040F4B0 0040C3F0  38 A5 92 E4 */	addi r5, r5, lbl_804992E4@l
/* 8040F4B4 0040C3F4  4C C6 31 82 */	crclr 6
/* 8040F4B8 0040C3F8  4B C1 B1 89 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8040F4BC:
/* 8040F4BC 0040C3FC  7F E3 FB 78 */	mr r3, r31
/* 8040F4C0 0040C400  48 04 4A E9 */	bl getDispMember__Q26Screen7ObjBaseFv
/* 8040F4C4 0040C404  80 03 00 08 */	lwz r0, 8(r3)
/* 8040F4C8 0040C408  38 80 FF FF */	li r4, -1
/* 8040F4CC 0040C40C  2C 00 00 01 */	cmpwi r0, 1
/* 8040F4D0 0040C410  41 82 00 28 */	beq lbl_8040F4F8
/* 8040F4D4 0040C414  40 80 00 10 */	bge lbl_8040F4E4
/* 8040F4D8 0040C418  2C 00 00 00 */	cmpwi r0, 0
/* 8040F4DC 0040C41C  40 80 00 14 */	bge lbl_8040F4F0
/* 8040F4E0 0040C420  48 00 00 24 */	b lbl_8040F504
lbl_8040F4E4:
/* 8040F4E4 0040C424  2C 00 00 03 */	cmpwi r0, 3
/* 8040F4E8 0040C428  40 80 00 1C */	bge lbl_8040F504
/* 8040F4EC 0040C42C  48 00 00 14 */	b lbl_8040F500
lbl_8040F4F0:
/* 8040F4F0 0040C430  38 80 18 25 */	li r4, 0x1825
/* 8040F4F4 0040C434  48 00 00 10 */	b lbl_8040F504
lbl_8040F4F8:
/* 8040F4F8 0040C438  38 80 18 44 */	li r4, 0x1844
/* 8040F4FC 0040C43C  48 00 00 08 */	b lbl_8040F504
lbl_8040F500:
/* 8040F500 0040C440  38 80 18 45 */	li r4, 0x1845
lbl_8040F504:
/* 8040F504 0040C444  3C 04 00 01 */	addis r0, r4, 1
/* 8040F508 0040C448  28 00 FF FF */	cmplwi r0, 0xffff
/* 8040F50C 0040C44C  41 82 00 10 */	beq lbl_8040F51C
/* 8040F510 0040C450  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 8040F514 0040C454  38 A0 00 00 */	li r5, 0
/* 8040F518 0040C458  4B F2 91 19 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
lbl_8040F51C:
/* 8040F51C 0040C45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040F520 0040C460  38 60 00 01 */	li r3, 1
/* 8040F524 0040C464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040F528 0040C468  7C 08 03 A6 */	mtlr r0
/* 8040F52C 0040C46C  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F530 0040C470  4E 80 00 20 */	blr 

.global doUpdate__Q32kh6Screen10ObjPayDeptFv
doUpdate__Q32kh6Screen10ObjPayDeptFv:
/* 8040F534 0040C474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F538 0040C478  7C 08 02 A6 */	mflr r0
/* 8040F53C 0040C47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F540 0040C480  48 00 01 39 */	bl updateAnimation__Q32kh6Screen10ObjPayDeptFv
/* 8040F544 0040C484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040F548 0040C488  7C 08 03 A6 */	mtlr r0
/* 8040F54C 0040C48C  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F550 0040C490  4E 80 00 20 */	blr 

.global doUpdateFadeoutFinish__Q32kh6Screen10ObjPayDeptFv
doUpdateFadeoutFinish__Q32kh6Screen10ObjPayDeptFv:
/* 8040F554 0040C494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F558 0040C498  7C 08 02 A6 */	mflr r0
/* 8040F55C 0040C49C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F560 0040C4A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040F564 0040C4A4  7C 7F 1B 78 */	mr r31, r3
/* 8040F568 0040C4A8  48 05 C3 09 */	bl PSStop2DStream__Fv
/* 8040F56C 0040C4AC  7F E3 FB 78 */	mr r3, r31
/* 8040F570 0040C4B0  48 04 4A 39 */	bl getDispMember__Q26Screen7ObjBaseFv
/* 8040F574 0040C4B4  3C 80 44 45 */	lis r4, 0x44455054@ha
/* 8040F578 0040C4B8  3C A0 50 41 */	lis r5, 0x5041595F@ha
/* 8040F57C 0040C4BC  38 C4 50 54 */	addi r6, r4, 0x44455054@l
/* 8040F580 0040C4C0  38 80 4B 48 */	li r4, 0x4b48
/* 8040F584 0040C4C4  38 A5 59 5F */	addi r5, r5, 0x5041595F@l
/* 8040F588 0040C4C8  4B EF FD 95 */	bl isID__Q32og6Screen14DispMemberBaseFUlUx
/* 8040F58C 0040C4CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8040F590 0040C4D0  40 82 00 20 */	bne lbl_8040F5B0
/* 8040F594 0040C4D4  3C 60 80 4A */	lis r3, lbl_80499160@ha
/* 8040F598 0040C4D8  3C A0 80 4A */	lis r5, lbl_804992E4@ha
/* 8040F59C 0040C4DC  38 63 91 60 */	addi r3, r3, lbl_80499160@l
/* 8040F5A0 0040C4E0  38 80 00 B7 */	li r4, 0xb7
/* 8040F5A4 0040C4E4  38 A5 92 E4 */	addi r5, r5, lbl_804992E4@l
/* 8040F5A8 0040C4E8  4C C6 31 82 */	crclr 6
/* 8040F5AC 0040C4EC  4B C1 B0 95 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8040F5B0:
/* 8040F5B0 0040C4F0  7F E3 FB 78 */	mr r3, r31
/* 8040F5B4 0040C4F4  48 04 49 F5 */	bl getDispMember__Q26Screen7ObjBaseFv
/* 8040F5B8 0040C4F8  80 03 00 08 */	lwz r0, 8(r3)
/* 8040F5BC 0040C4FC  2C 00 00 00 */	cmpwi r0, 0
/* 8040F5C0 0040C500  40 82 00 40 */	bne lbl_8040F600
/* 8040F5C4 0040C504  7F E3 FB 78 */	mr r3, r31
/* 8040F5C8 0040C508  81 9F 00 00 */	lwz r12, 0(r31)
/* 8040F5CC 0040C50C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8040F5D0 0040C510  7D 89 03 A6 */	mtctr r12
/* 8040F5D4 0040C514  4E 80 04 21 */	bctrl 
/* 8040F5D8 0040C518  48 04 29 E9 */	bl setBackupScene__Q26Screen9SceneBaseFv
/* 8040F5DC 0040C51C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8040F5E0 0040C520  41 82 00 20 */	beq lbl_8040F600
/* 8040F5E4 0040C524  7F E3 FB 78 */	mr r3, r31
/* 8040F5E8 0040C528  81 9F 00 00 */	lwz r12, 0(r31)
/* 8040F5EC 0040C52C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8040F5F0 0040C530  7D 89 03 A6 */	mtctr r12
/* 8040F5F4 0040C534  4E 80 04 21 */	bctrl 
/* 8040F5F8 0040C538  38 80 00 00 */	li r4, 0
/* 8040F5FC 0040C53C  48 04 29 65 */	bl startScene__Q26Screen9SceneBaseFPQ26Screen13StartSceneArg
lbl_8040F600:
/* 8040F600 0040C540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040F604 0040C544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040F608 0040C548  7C 08 03 A6 */	mtlr r0
/* 8040F60C 0040C54C  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F610 0040C550  4E 80 00 20 */	blr 

.global doDraw__Q32kh6Screen10ObjPayDeptFR8Graphics
doDraw__Q32kh6Screen10ObjPayDeptFR8Graphics:
/* 8040F614 0040C554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F618 0040C558  7C 08 02 A6 */	mflr r0
/* 8040F61C 0040C55C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F620 0040C560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040F624 0040C564  7C 9F 23 78 */	mr r31, r4
/* 8040F628 0040C568  93 C1 00 08 */	stw r30, 8(r1)
/* 8040F62C 0040C56C  7C 7E 1B 78 */	mr r30, r3
/* 8040F630 0040C570  38 7F 00 BC */	addi r3, r31, 0xbc
/* 8040F634 0040C574  81 84 00 BC */	lwz r12, 0xbc(r4)
/* 8040F638 0040C578  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8040F63C 0040C57C  7D 89 03 A6 */	mtctr r12
/* 8040F640 0040C580  4E 80 04 21 */	bctrl 
/* 8040F644 0040C584  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F648 0040C588  7F E4 FB 78 */	mr r4, r31
/* 8040F64C 0040C58C  38 BF 00 BC */	addi r5, r31, 0xbc
/* 8040F650 0040C590  81 83 00 00 */	lwz r12, 0(r3)
/* 8040F654 0040C594  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8040F658 0040C598  7D 89 03 A6 */	mtctr r12
/* 8040F65C 0040C59C  4E 80 04 21 */	bctrl 
/* 8040F660 0040C5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040F664 0040C5A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040F668 0040C5A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040F66C 0040C5AC  7C 08 03 A6 */	mtlr r0
/* 8040F670 0040C5B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F674 0040C5B4  4E 80 00 20 */	blr 

.global updateAnimation__Q32kh6Screen10ObjPayDeptFv
updateAnimation__Q32kh6Screen10ObjPayDeptFv:
/* 8040F678 0040C5B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040F67C 0040C5BC  7C 08 02 A6 */	mflr r0
/* 8040F680 0040C5C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040F684 0040C5C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8040F688 0040C5C8  3B E0 00 00 */	li r31, 0
/* 8040F68C 0040C5CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8040F690 0040C5D0  7C 7E 1B 78 */	mr r30, r3
/* 8040F694 0040C5D4  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8040F698 0040C5D8  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8040F69C 0040C5DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8040F6A0 0040C5E0  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8040F6A4 0040C5E4  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 8040F6A8 0040C5E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8040F6AC 0040C5EC  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F6B0 0040C5F0  4B C3 14 7D */	bl animation__9J2DScreenFv
/* 8040F6B4 0040C5F4  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8040F6B8 0040C5F8  3C 00 43 30 */	lis r0, 0x4330
/* 8040F6BC 0040C5FC  C0 0D 9A C0 */	lfs f0, msVal__Q32kh6Screen10ObjPayDept@sda21(r13)
/* 8040F6C0 0040C600  90 01 00 08 */	stw r0, 8(r1)
/* 8040F6C4 0040C604  EC 01 00 2A */	fadds f0, f1, f0
/* 8040F6C8 0040C608  C8 42 1E 90 */	lfd f2, lbl_805201F0@sda21(r2)
/* 8040F6CC 0040C60C  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8040F6D0 0040C610  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8040F6D4 0040C614  C0 0D 9A C0 */	lfs f0, msVal__Q32kh6Screen10ObjPayDept@sda21(r13)
/* 8040F6D8 0040C618  EC 01 00 2A */	fadds f0, f1, f0
/* 8040F6DC 0040C61C  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8040F6E0 0040C620  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 8040F6E4 0040C624  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8040F6E8 0040C628  A8 63 00 06 */	lha r3, 6(r3)
/* 8040F6EC 0040C62C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8040F6F0 0040C630  90 61 00 0C */	stw r3, 0xc(r1)
/* 8040F6F4 0040C634  C8 01 00 08 */	lfd f0, 8(r1)
/* 8040F6F8 0040C638  EC 00 10 28 */	fsubs f0, f0, f2
/* 8040F6FC 0040C63C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040F700 0040C640  4C 41 13 82 */	cror 2, 1, 2
/* 8040F704 0040C644  41 82 00 30 */	beq lbl_8040F734
/* 8040F708 0040C648  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 8040F70C 0040C64C  90 01 00 08 */	stw r0, 8(r1)
/* 8040F710 0040C650  A8 03 00 06 */	lha r0, 6(r3)
/* 8040F714 0040C654  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8040F718 0040C658  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040F71C 0040C65C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040F720 0040C660  C8 01 00 08 */	lfd f0, 8(r1)
/* 8040F724 0040C664  EC 00 10 28 */	fsubs f0, f0, f2
/* 8040F728 0040C668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040F72C 0040C66C  4C 41 13 82 */	cror 2, 1, 2
/* 8040F730 0040C670  40 82 00 08 */	bne lbl_8040F738
lbl_8040F734:
/* 8040F734 0040C674  3B E0 00 01 */	li r31, 1
lbl_8040F738:
/* 8040F738 0040C678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040F73C 0040C67C  7F E3 FB 78 */	mr r3, r31
/* 8040F740 0040C680  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040F744 0040C684  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8040F748 0040C688  7C 08 03 A6 */	mtlr r0
/* 8040F74C 0040C68C  38 21 00 20 */	addi r1, r1, 0x20
/* 8040F750 0040C690  4E 80 00 20 */	blr 

.global searchNumPane__Q32kh6Screen10ObjPayDeptFP7J2DPaneii
searchNumPane__Q32kh6Screen10ObjPayDeptFP7J2DPaneii:
/* 8040F754 0040C694  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8040F758 0040C698  7C 08 02 A6 */	mflr r0
/* 8040F75C 0040C69C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8040F760 0040C6A0  38 00 00 32 */	li r0, 0x32
/* 8040F764 0040C6A4  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 8040F768 0040C6A8  7C 96 23 78 */	mr r22, r4
/* 8040F76C 0040C6AC  3C 80 6B 65 */	lis r4, 0x6B657461@ha
/* 8040F770 0040C6B0  7C 7E 1B 78 */	mr r30, r3
/* 8040F774 0040C6B4  38 84 74 61 */	addi r4, r4, 0x6B657461@l
/* 8040F778 0040C6B8  7C BF 2B 78 */	mr r31, r5
/* 8040F77C 0040C6BC  7C DD 33 78 */	mr r29, r6
/* 8040F780 0040C6C0  80 F6 00 18 */	lwz r7, 0x18(r22)
/* 8040F784 0040C6C4  81 16 00 1C */	lwz r8, 0x1c(r22)
/* 8040F788 0040C6C8  7C E0 02 78 */	xor r0, r7, r0
/* 8040F78C 0040C6CC  7D 03 22 78 */	xor r3, r8, r4
/* 8040F790 0040C6D0  7C 60 03 79 */	or. r0, r3, r0
/* 8040F794 0040C6D4  40 82 00 28 */	bne lbl_8040F7BC
/* 8040F798 0040C6D8  3C 60 80 4F */	lis r3, cpNumTexLargeName__Q22kh6Screen@ha
/* 8040F79C 0040C6DC  57 E0 10 3A */	slwi r0, r31, 2
/* 8040F7A0 0040C6E0  38 83 B2 E0 */	addi r4, r3, cpNumTexLargeName__Q22kh6Screen@l
/* 8040F7A4 0040C6E4  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F7A8 0040C6E8  80 B6 00 10 */	lwz r5, 0x10(r22)
/* 8040F7AC 0040C6EC  80 D6 00 14 */	lwz r6, 0x14(r22)
/* 8040F7B0 0040C6F0  7C E4 00 2E */	lwzx r7, r4, r0
/* 8040F7B4 0040C6F4  4B FF BC DD */	bl setTex__Q22kh6ScreenFP9J2DScreenUxPCc
/* 8040F7B8 0040C6F8  48 00 00 34 */	b lbl_8040F7EC
lbl_8040F7BC:
/* 8040F7BC 0040C6FC  38 00 00 31 */	li r0, 0x31
/* 8040F7C0 0040C700  7C E0 02 78 */	xor r0, r7, r0
/* 8040F7C4 0040C704  7C 60 03 79 */	or. r0, r3, r0
/* 8040F7C8 0040C708  40 82 00 24 */	bne lbl_8040F7EC
/* 8040F7CC 0040C70C  3C 60 80 4F */	lis r3, cpNumTexLargeName__Q22kh6Screen@ha
/* 8040F7D0 0040C710  57 A0 10 3A */	slwi r0, r29, 2
/* 8040F7D4 0040C714  38 83 B2 E0 */	addi r4, r3, cpNumTexLargeName__Q22kh6Screen@l
/* 8040F7D8 0040C718  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F7DC 0040C71C  80 B6 00 10 */	lwz r5, 0x10(r22)
/* 8040F7E0 0040C720  80 D6 00 14 */	lwz r6, 0x14(r22)
/* 8040F7E4 0040C724  7C E4 00 2E */	lwzx r7, r4, r0
/* 8040F7E8 0040C728  4B FF BC A9 */	bl setTex__Q22kh6ScreenFP9J2DScreenUxPCc
lbl_8040F7EC:
/* 8040F7EC 0040C72C  82 F6 00 DC */	lwz r23, 0xdc(r22)
/* 8040F7F0 0040C730  28 17 00 00 */	cmplwi r23, 0
/* 8040F7F4 0040C734  41 82 00 08 */	beq lbl_8040F7FC
/* 8040F7F8 0040C738  3A F7 FF F4 */	addi r23, r23, -12
lbl_8040F7FC:
/* 8040F7FC 0040C73C  3C 80 80 4F */	lis r4, cpNumTexLargeName__Q22kh6Screen@ha
/* 8040F800 0040C740  3C 60 6B 65 */	lis r3, 0x6B657461@ha
/* 8040F804 0040C744  57 E5 10 3A */	slwi r5, r31, 2
/* 8040F808 0040C748  57 A0 10 3A */	slwi r0, r29, 2
/* 8040F80C 0040C74C  38 84 B2 E0 */	addi r4, r4, cpNumTexLargeName__Q22kh6Screen@l
/* 8040F810 0040C750  3B 43 74 61 */	addi r26, r3, 0x6B657461@l
/* 8040F814 0040C754  7F 64 2A 14 */	add r27, r4, r5
/* 8040F818 0040C758  7F 84 02 14 */	add r28, r4, r0
/* 8040F81C 0040C75C  48 00 02 38 */	b lbl_8040FA54
lbl_8040F820:
/* 8040F820 0040C760  82 D7 00 0C */	lwz r22, 0xc(r23)
/* 8040F824 0040C764  38 00 00 32 */	li r0, 0x32
/* 8040F828 0040C768  80 96 00 18 */	lwz r4, 0x18(r22)
/* 8040F82C 0040C76C  80 B6 00 1C */	lwz r5, 0x1c(r22)
/* 8040F830 0040C770  7C 80 02 78 */	xor r0, r4, r0
/* 8040F834 0040C774  7C A3 D2 78 */	xor r3, r5, r26
/* 8040F838 0040C778  7C 60 03 79 */	or. r0, r3, r0
/* 8040F83C 0040C77C  40 82 00 1C */	bne lbl_8040F858
/* 8040F840 0040C780  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F844 0040C784  80 B6 00 10 */	lwz r5, 0x10(r22)
/* 8040F848 0040C788  80 D6 00 14 */	lwz r6, 0x14(r22)
/* 8040F84C 0040C78C  80 FB 00 00 */	lwz r7, 0(r27)
/* 8040F850 0040C790  4B FF BC 41 */	bl setTex__Q22kh6ScreenFP9J2DScreenUxPCc
/* 8040F854 0040C794  48 00 00 34 */	b lbl_8040F888
lbl_8040F858:
/* 8040F858 0040C798  3C 60 6B 65 */	lis r3, 0x6B657461@ha
/* 8040F85C 0040C79C  38 00 00 31 */	li r0, 0x31
/* 8040F860 0040C7A0  38 63 74 61 */	addi r3, r3, 0x6B657461@l
/* 8040F864 0040C7A4  7C A3 1A 78 */	xor r3, r5, r3
/* 8040F868 0040C7A8  7C 80 02 78 */	xor r0, r4, r0
/* 8040F86C 0040C7AC  7C 60 03 79 */	or. r0, r3, r0
/* 8040F870 0040C7B0  40 82 00 18 */	bne lbl_8040F888
/* 8040F874 0040C7B4  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F878 0040C7B8  80 B6 00 10 */	lwz r5, 0x10(r22)
/* 8040F87C 0040C7BC  80 D6 00 14 */	lwz r6, 0x14(r22)
/* 8040F880 0040C7C0  80 FC 00 00 */	lwz r7, 0(r28)
/* 8040F884 0040C7C4  4B FF BC 0D */	bl setTex__Q22kh6ScreenFP9J2DScreenUxPCc
lbl_8040F888:
/* 8040F888 0040C7C8  38 76 00 DC */	addi r3, r22, 0xdc
/* 8040F88C 0040C7CC  4B C1 43 95 */	bl getFirstLink__10JSUPtrListCFv
/* 8040F890 0040C7D0  28 03 00 00 */	cmplwi r3, 0
/* 8040F894 0040C7D4  41 82 00 08 */	beq lbl_8040F89C
/* 8040F898 0040C7D8  38 63 FF F4 */	addi r3, r3, -12
lbl_8040F89C:
/* 8040F89C 0040C7DC  7C 78 1B 78 */	mr r24, r3
/* 8040F8A0 0040C7E0  48 00 01 9C */	b lbl_8040FA3C
lbl_8040F8A4:
/* 8040F8A4 0040C7E4  7F 03 C3 78 */	mr r3, r24
/* 8040F8A8 0040C7E8  4B C2 90 95 */	bl "getObject__17JSUTree<7J2DPane>CFv"
/* 8040F8AC 0040C7EC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 8040F8B0 0040C7F0  38 00 00 32 */	li r0, 0x32
/* 8040F8B4 0040C7F4  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 8040F8B8 0040C7F8  7C 76 1B 78 */	mr r22, r3
/* 8040F8BC 0040C7FC  7C 80 02 78 */	xor r0, r4, r0
/* 8040F8C0 0040C800  7C A3 D2 78 */	xor r3, r5, r26
/* 8040F8C4 0040C804  7C 60 03 79 */	or. r0, r3, r0
/* 8040F8C8 0040C808  40 82 00 1C */	bne lbl_8040F8E4
/* 8040F8CC 0040C80C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F8D0 0040C810  80 B6 00 10 */	lwz r5, 0x10(r22)
/* 8040F8D4 0040C814  80 D6 00 14 */	lwz r6, 0x14(r22)
/* 8040F8D8 0040C818  80 FB 00 00 */	lwz r7, 0(r27)
/* 8040F8DC 0040C81C  4B FF BB B5 */	bl setTex__Q22kh6ScreenFP9J2DScreenUxPCc
/* 8040F8E0 0040C820  48 00 00 34 */	b lbl_8040F914
lbl_8040F8E4:
/* 8040F8E4 0040C824  3C 60 6B 65 */	lis r3, 0x6B657461@ha
/* 8040F8E8 0040C828  38 00 00 31 */	li r0, 0x31
/* 8040F8EC 0040C82C  38 63 74 61 */	addi r3, r3, 0x6B657461@l
/* 8040F8F0 0040C830  7C A3 1A 78 */	xor r3, r5, r3
/* 8040F8F4 0040C834  7C 80 02 78 */	xor r0, r4, r0
/* 8040F8F8 0040C838  7C 60 03 79 */	or. r0, r3, r0
/* 8040F8FC 0040C83C  40 82 00 18 */	bne lbl_8040F914
/* 8040F900 0040C840  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F904 0040C844  80 B6 00 10 */	lwz r5, 0x10(r22)
/* 8040F908 0040C848  80 D6 00 14 */	lwz r6, 0x14(r22)
/* 8040F90C 0040C84C  80 FC 00 00 */	lwz r7, 0(r28)
/* 8040F910 0040C850  4B FF BB 81 */	bl setTex__Q22kh6ScreenFP9J2DScreenUxPCc
lbl_8040F914:
/* 8040F914 0040C854  3B 36 00 DC */	addi r25, r22, 0xdc
/* 8040F918 0040C858  7F 23 CB 78 */	mr r3, r25
/* 8040F91C 0040C85C  4B C2 90 0D */	bl "getFirstChild__17JSUTree<7J2DPane>CFv"
/* 8040F920 0040C860  90 61 00 0C */	stw r3, 0xc(r1)
/* 8040F924 0040C864  48 00 00 F4 */	b lbl_8040FA18
lbl_8040F928:
/* 8040F928 0040C868  38 61 00 0C */	addi r3, r1, 0xc
/* 8040F92C 0040C86C  4B EF 3B BD */	bl "getObject__25JSUTreeIterator<7J2DPane>CFv"
/* 8040F930 0040C870  7C 76 1B 78 */	mr r22, r3
/* 8040F934 0040C874  4B EF A4 65 */	bl getUserInfo__7J2DPaneCFv
/* 8040F938 0040C878  38 00 00 32 */	li r0, 0x32
/* 8040F93C 0040C87C  7C 84 D2 78 */	xor r4, r4, r26
/* 8040F940 0040C880  7C 60 02 78 */	xor r0, r3, r0
/* 8040F944 0040C884  7C 80 03 79 */	or. r0, r4, r0
/* 8040F948 0040C888  40 82 00 24 */	bne lbl_8040F96C
/* 8040F94C 0040C88C  7E C3 B3 78 */	mr r3, r22
/* 8040F950 0040C890  4B EF 3B AD */	bl getTagName__7J2DPaneCFv
/* 8040F954 0040C894  7C 65 1B 78 */	mr r5, r3
/* 8040F958 0040C898  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F95C 0040C89C  80 FB 00 00 */	lwz r7, 0(r27)
/* 8040F960 0040C8A0  7C 86 23 78 */	mr r6, r4
/* 8040F964 0040C8A4  4B FF BB 2D */	bl setTex__Q22kh6ScreenFP9J2DScreenUxPCc
/* 8040F968 0040C8A8  48 00 00 44 */	b lbl_8040F9AC
lbl_8040F96C:
/* 8040F96C 0040C8AC  7E C3 B3 78 */	mr r3, r22
/* 8040F970 0040C8B0  4B EF A4 29 */	bl getUserInfo__7J2DPaneCFv
/* 8040F974 0040C8B4  3C A0 6B 65 */	lis r5, 0x6B657461@ha
/* 8040F978 0040C8B8  38 00 00 31 */	li r0, 0x31
/* 8040F97C 0040C8BC  38 A5 74 61 */	addi r5, r5, 0x6B657461@l
/* 8040F980 0040C8C0  7C 84 2A 78 */	xor r4, r4, r5
/* 8040F984 0040C8C4  7C 60 02 78 */	xor r0, r3, r0
/* 8040F988 0040C8C8  7C 80 03 79 */	or. r0, r4, r0
/* 8040F98C 0040C8CC  40 82 00 20 */	bne lbl_8040F9AC
/* 8040F990 0040C8D0  7E C3 B3 78 */	mr r3, r22
/* 8040F994 0040C8D4  4B EF 3B 69 */	bl getTagName__7J2DPaneCFv
/* 8040F998 0040C8D8  7C 65 1B 78 */	mr r5, r3
/* 8040F99C 0040C8DC  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040F9A0 0040C8E0  80 FC 00 00 */	lwz r7, 0(r28)
/* 8040F9A4 0040C8E4  7C 86 23 78 */	mr r6, r4
/* 8040F9A8 0040C8E8  4B FF BA E9 */	bl setTex__Q22kh6ScreenFP9J2DScreenUxPCc
lbl_8040F9AC:
/* 8040F9AC 0040C8EC  7E C3 B3 78 */	mr r3, r22
/* 8040F9B0 0040C8F0  4B EF 3B 45 */	bl getPaneTree__7J2DPaneFv
/* 8040F9B4 0040C8F4  7C 76 1B 78 */	mr r22, r3
/* 8040F9B8 0040C8F8  4B C2 8F 71 */	bl "getFirstChild__17JSUTree<7J2DPane>CFv"
/* 8040F9BC 0040C8FC  7C 64 1B 78 */	mr r4, r3
/* 8040F9C0 0040C900  38 61 00 08 */	addi r3, r1, 8
/* 8040F9C4 0040C904  4B C2 8F 51 */	bl "__ct__25JSUTreeIterator<7J2DPane>FP17JSUTree<7J2DPane>"
/* 8040F9C8 0040C908  48 00 00 28 */	b lbl_8040F9F0
lbl_8040F9CC:
/* 8040F9CC 0040C90C  38 61 00 08 */	addi r3, r1, 8
/* 8040F9D0 0040C910  4B EF 3B 19 */	bl "getObject__25JSUTreeIterator<7J2DPane>CFv"
/* 8040F9D4 0040C914  7C 64 1B 78 */	mr r4, r3
/* 8040F9D8 0040C918  7F C3 F3 78 */	mr r3, r30
/* 8040F9DC 0040C91C  7F E5 FB 78 */	mr r5, r31
/* 8040F9E0 0040C920  7F A6 EB 78 */	mr r6, r29
/* 8040F9E4 0040C924  4B FF FD 71 */	bl searchNumPane__Q32kh6Screen10ObjPayDeptFP7J2DPaneii
/* 8040F9E8 0040C928  38 61 00 08 */	addi r3, r1, 8
/* 8040F9EC 0040C92C  4B C2 8F 0D */	bl "__pp__25JSUTreeIterator<7J2DPane>Fv"
lbl_8040F9F0:
/* 8040F9F0 0040C930  7E C3 B3 78 */	mr r3, r22
/* 8040F9F4 0040C934  4B C2 8E FD */	bl "getEndChild__17JSUTree<7J2DPane>CFv"
/* 8040F9F8 0040C938  7C 64 1B 78 */	mr r4, r3
/* 8040F9FC 0040C93C  38 61 00 08 */	addi r3, r1, 8
/* 8040FA00 0040C940  4B C2 8E D9 */	bl "__ne__25JSUTreeIterator<7J2DPane>CFPC17JSUTree<7J2DPane>"
/* 8040FA04 0040C944  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8040FA08 0040C948  40 82 FF C4 */	bne lbl_8040F9CC
/* 8040FA0C 0040C94C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8040FA10 0040C950  4B C2 8E B5 */	bl "getNextChild__17JSUTree<7J2DPane>CFv"
/* 8040FA14 0040C954  90 61 00 0C */	stw r3, 0xc(r1)
lbl_8040FA18:
/* 8040FA18 0040C958  7F 23 CB 78 */	mr r3, r25
/* 8040FA1C 0040C95C  4B C2 8E D5 */	bl "getEndChild__17JSUTree<7J2DPane>CFv"
/* 8040FA20 0040C960  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8040FA24 0040C964  7C 00 18 40 */	cmplw r0, r3
/* 8040FA28 0040C968  40 82 FF 00 */	bne lbl_8040F928
/* 8040FA2C 0040C96C  83 18 00 18 */	lwz r24, 0x18(r24)
/* 8040FA30 0040C970  28 18 00 00 */	cmplwi r24, 0
/* 8040FA34 0040C974  41 82 00 08 */	beq lbl_8040FA3C
/* 8040FA38 0040C978  3B 18 FF F4 */	addi r24, r24, -12
lbl_8040FA3C:
/* 8040FA3C 0040C97C  28 18 00 00 */	cmplwi r24, 0
/* 8040FA40 0040C980  40 82 FE 64 */	bne lbl_8040F8A4
/* 8040FA44 0040C984  82 F7 00 18 */	lwz r23, 0x18(r23)
/* 8040FA48 0040C988  28 17 00 00 */	cmplwi r23, 0
/* 8040FA4C 0040C98C  41 82 00 08 */	beq lbl_8040FA54
/* 8040FA50 0040C990  3A F7 FF F4 */	addi r23, r23, -12
lbl_8040FA54:
/* 8040FA54 0040C994  28 17 00 00 */	cmplwi r23, 0
/* 8040FA58 0040C998  40 82 FD C8 */	bne lbl_8040F820
/* 8040FA5C 0040C99C  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 8040FA60 0040C9A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8040FA64 0040C9A4  7C 08 03 A6 */	mtlr r0
/* 8040FA68 0040C9A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8040FA6C 0040C9AC  4E 80 00 20 */	blr 

.global doUserCallBackFunc__Q32kh6Screen12ScenePayDeptFPQ28Resource10MgrCommand
doUserCallBackFunc__Q32kh6Screen12ScenePayDeptFPQ28Resource10MgrCommand:
/* 8040FA70 0040C9B0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8040FA74 0040C9B4  7C 08 02 A6 */	mflr r0
/* 8040FA78 0040C9B8  3C C0 80 4A */	lis r6, lbl_80499160@ha
/* 8040FA7C 0040C9BC  3C A0 44 45 */	lis r5, 0x44455054@ha
/* 8040FA80 0040C9C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8040FA84 0040C9C4  3C 80 50 41 */	lis r4, 0x5041595F@ha
/* 8040FA88 0040C9C8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8040FA8C 0040C9CC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8040FA90 0040C9D0  3B C6 91 60 */	addi r30, r6, lbl_80499160@l
/* 8040FA94 0040C9D4  38 C5 50 54 */	addi r6, r5, 0x44455054@l
/* 8040FA98 0040C9D8  38 A4 59 5F */	addi r5, r4, 0x5041595F@l
/* 8040FA9C 0040C9DC  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8040FAA0 0040C9E0  7C 7D 1B 78 */	mr r29, r3
/* 8040FAA4 0040C9E4  38 80 4B 48 */	li r4, 0x4b48
/* 8040FAA8 0040C9E8  80 63 02 1C */	lwz r3, 0x21c(r3)
/* 8040FAAC 0040C9EC  4B EF F8 71 */	bl isID__Q32og6Screen14DispMemberBaseFUlUx
/* 8040FAB0 0040C9F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8040FAB4 0040C9F4  40 82 00 18 */	bne lbl_8040FACC
/* 8040FAB8 0040C9F8  38 7E 00 00 */	addi r3, r30, 0
/* 8040FABC 0040C9FC  38 BE 01 84 */	addi r5, r30, 0x184
/* 8040FAC0 0040CA00  38 80 01 03 */	li r4, 0x103
/* 8040FAC4 0040CA04  4C C6 31 82 */	crclr 6
/* 8040FAC8 0040CA08  4B C1 AB 79 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8040FACC:
/* 8040FACC 0040CA0C  80 7D 02 1C */	lwz r3, 0x21c(r29)
/* 8040FAD0 0040CA10  80 03 00 08 */	lwz r0, 8(r3)
/* 8040FAD4 0040CA14  2C 00 00 01 */	cmpwi r0, 1
/* 8040FAD8 0040CA18  41 82 00 30 */	beq lbl_8040FB08
/* 8040FADC 0040CA1C  40 80 00 10 */	bge lbl_8040FAEC
/* 8040FAE0 0040CA20  2C 00 00 00 */	cmpwi r0, 0
/* 8040FAE4 0040CA24  40 80 00 14 */	bge lbl_8040FAF8
/* 8040FAE8 0040CA28  48 00 00 3C */	b lbl_8040FB24
lbl_8040FAEC:
/* 8040FAEC 0040CA2C  2C 00 00 03 */	cmpwi r0, 3
/* 8040FAF0 0040CA30  40 80 00 34 */	bge lbl_8040FB24
/* 8040FAF4 0040CA34  48 00 00 24 */	b lbl_8040FB18
lbl_8040FAF8:
/* 8040FAF8 0040CA38  38 7D 00 04 */	addi r3, r29, 4
/* 8040FAFC 0040CA3C  38 9E 01 94 */	addi r4, r30, 0x194
/* 8040FB00 0040CA40  4B F0 84 4D */	bl makeLanguageResName__Q22og9newScreenFPcPCc
/* 8040FB04 0040CA44  48 00 00 20 */	b lbl_8040FB24
lbl_8040FB08:
/* 8040FB08 0040CA48  38 7D 00 04 */	addi r3, r29, 4
/* 8040FB0C 0040CA4C  38 9E 01 AC */	addi r4, r30, 0x1ac
/* 8040FB10 0040CA50  4B F0 84 3D */	bl makeLanguageResName__Q22og9newScreenFPcPCc
/* 8040FB14 0040CA54  48 00 00 10 */	b lbl_8040FB24
lbl_8040FB18:
/* 8040FB18 0040CA58  38 7D 00 04 */	addi r3, r29, 4
/* 8040FB1C 0040CA5C  38 9E 01 C4 */	addi r4, r30, 0x1c4
/* 8040FB20 0040CA60  4B F0 84 2D */	bl makeLanguageResName__Q22og9newScreenFPcPCc
lbl_8040FB24:
/* 8040FB24 0040CA64  38 61 00 08 */	addi r3, r1, 8
/* 8040FB28 0040CA68  38 9D 00 04 */	addi r4, r29, 4
/* 8040FB2C 0040CA6C  48 03 CA AD */	bl __ct__Q212LoadResource3ArgFPCc
/* 8040FB30 0040CA70  80 6D 9C 28 */	lwz r3, gLoadResourceMgr@sda21(r13)
/* 8040FB34 0040CA74  38 81 00 08 */	addi r4, r1, 8
/* 8040FB38 0040CA78  48 03 CB DD */	bl mountArchive__Q212LoadResource3MgrFRQ212LoadResource3Arg
/* 8040FB3C 0040CA7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8040FB40 0040CA80  41 82 00 5C */	beq lbl_8040FB9C
/* 8040FB44 0040CA84  38 60 00 4C */	li r3, 0x4c
/* 8040FB48 0040CA88  4B C1 43 5D */	bl __nw__FUl
/* 8040FB4C 0040CA8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8040FB50 0040CA90  41 82 00 38 */	beq lbl_8040FB88
/* 8040FB54 0040CA94  48 04 3F 95 */	bl __ct__Q26Screen7ObjBaseFv
/* 8040FB58 0040CA98  3C 60 80 4F */	lis r3, __vt__Q32kh6Screen10ObjPayDept@ha
/* 8040FB5C 0040CA9C  38 00 00 00 */	li r0, 0
/* 8040FB60 0040CAA0  38 63 B3 58 */	addi r3, r3, __vt__Q32kh6Screen10ObjPayDept@l
/* 8040FB64 0040CAA4  C0 02 1E 88 */	lfs f0, lbl_805201E8@sda21(r2)
/* 8040FB68 0040CAA8  90 7E 00 00 */	stw r3, 0(r30)
/* 8040FB6C 0040CAAC  38 63 00 10 */	addi r3, r3, 0x10
/* 8040FB70 0040CAB0  90 7E 00 18 */	stw r3, 0x18(r30)
/* 8040FB74 0040CAB4  90 1E 00 38 */	stw r0, 0x38(r30)
/* 8040FB78 0040CAB8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8040FB7C 0040CABC  90 1E 00 40 */	stw r0, 0x40(r30)
/* 8040FB80 0040CAC0  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8040FB84 0040CAC4  D0 1E 00 44 */	stfs f0, 0x44(r30)
lbl_8040FB88:
/* 8040FB88 0040CAC8  80 BF 00 34 */	lwz r5, 0x34(r31)
/* 8040FB8C 0040CACC  7F A3 EB 78 */	mr r3, r29
/* 8040FB90 0040CAD0  7F C4 F3 78 */	mr r4, r30
/* 8040FB94 0040CAD4  48 04 21 E1 */	bl registObj__Q26Screen9SceneBaseFPQ26Screen7ObjBaseP10JKRArchive
/* 8040FB98 0040CAD8  48 00 00 18 */	b lbl_8040FBB0
lbl_8040FB9C:
/* 8040FB9C 0040CADC  38 7E 00 00 */	addi r3, r30, 0
/* 8040FBA0 0040CAE0  38 80 01 15 */	li r4, 0x115
/* 8040FBA4 0040CAE4  38 A2 1E 98 */	addi r5, r2, lbl_805201F8@sda21
/* 8040FBA8 0040CAE8  4C C6 31 82 */	crclr 6
/* 8040FBAC 0040CAEC  4B C1 AA 95 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8040FBB0:
/* 8040FBB0 0040CAF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8040FBB4 0040CAF4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8040FBB8 0040CAF8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8040FBBC 0040CAFC  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8040FBC0 0040CB00  7C 08 03 A6 */	mtlr r0
/* 8040FBC4 0040CB04  38 21 00 50 */	addi r1, r1, 0x50
/* 8040FBC8 0040CB08  4E 80 00 20 */	blr 

.global getResName__Q32kh6Screen12ScenePayDeptCFv
getResName__Q32kh6Screen12ScenePayDeptCFv:
/* 8040FBCC 0040CB0C  38 62 1E A0 */	addi r3, r2, lbl_80520200@sda21
/* 8040FBD0 0040CB10  4E 80 00 20 */	blr 

.global isUseBackupSceneInfo__Q32kh6Screen12ScenePayDeptFv
isUseBackupSceneInfo__Q32kh6Screen12ScenePayDeptFv:
/* 8040FBD4 0040CB14  38 60 00 01 */	li r3, 1
/* 8040FBD8 0040CB18  4E 80 00 20 */	blr 

.global getSceneType__Q32kh6Screen12ScenePayDeptFv
getSceneType__Q32kh6Screen12ScenePayDeptFv:
/* 8040FBDC 0040CB1C  38 60 4E 27 */	li r3, 0x4e27
/* 8040FBE0 0040CB20  4E 80 00 20 */	blr 

.global getOwnerID__Q32kh6Screen12ScenePayDeptFv
getOwnerID__Q32kh6Screen12ScenePayDeptFv:
/* 8040FBE4 0040CB24  38 60 4B 48 */	li r3, 0x4b48
/* 8040FBE8 0040CB28  4E 80 00 20 */	blr 

.global getMemberID__Q32kh6Screen12ScenePayDeptFv
getMemberID__Q32kh6Screen12ScenePayDeptFv:
/* 8040FBEC 0040CB2C  3C 80 44 45 */	lis r4, 0x44455054@ha
/* 8040FBF0 0040CB30  3C 60 50 41 */	lis r3, 0x5041595F@ha
/* 8040FBF4 0040CB34  38 84 50 54 */	addi r4, r4, 0x44455054@l
/* 8040FBF8 0040CB38  38 63 59 5F */	addi r3, r3, 0x5041595F@l
/* 8040FBFC 0040CB3C  4E 80 00 20 */	blr 

.global doCreateObj__Q32kh6Screen12ScenePayDeptFP10JKRArchive
doCreateObj__Q32kh6Screen12ScenePayDeptFP10JKRArchive:
/* 8040FC00 0040CB40  4E 80 00 20 */	blr 

.global __dt__Q32kh6Screen10ObjPayDeptFv
__dt__Q32kh6Screen10ObjPayDeptFv:
/* 8040FC04 0040CB44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040FC08 0040CB48  7C 08 02 A6 */	mflr r0
/* 8040FC0C 0040CB4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040FC10 0040CB50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040FC14 0040CB54  7C 9F 23 78 */	mr r31, r4
/* 8040FC18 0040CB58  93 C1 00 08 */	stw r30, 8(r1)
/* 8040FC1C 0040CB5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8040FC20 0040CB60  41 82 00 74 */	beq lbl_8040FC94
/* 8040FC24 0040CB64  3C 80 80 4F */	lis r4, __vt__Q32kh6Screen10ObjPayDept@ha
/* 8040FC28 0040CB68  38 84 B3 58 */	addi r4, r4, __vt__Q32kh6Screen10ObjPayDept@l
/* 8040FC2C 0040CB6C  90 9E 00 00 */	stw r4, 0(r30)
/* 8040FC30 0040CB70  38 04 00 10 */	addi r0, r4, 0x10
/* 8040FC34 0040CB74  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8040FC38 0040CB78  41 82 00 4C */	beq lbl_8040FC84
/* 8040FC3C 0040CB7C  3C 80 80 4F */	lis r4, __vt__Q26Screen7ObjBase@ha
/* 8040FC40 0040CB80  38 84 D7 58 */	addi r4, r4, __vt__Q26Screen7ObjBase@l
/* 8040FC44 0040CB84  90 9E 00 00 */	stw r4, 0(r30)
/* 8040FC48 0040CB88  38 04 00 10 */	addi r0, r4, 0x10
/* 8040FC4C 0040CB8C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8040FC50 0040CB90  41 82 00 34 */	beq lbl_8040FC84
/* 8040FC54 0040CB94  3C 80 80 4E */	lis r4, __vt__Q26Screen8IObjBase@ha
/* 8040FC58 0040CB98  38 84 82 40 */	addi r4, r4, __vt__Q26Screen8IObjBase@l
/* 8040FC5C 0040CB9C  90 9E 00 00 */	stw r4, 0(r30)
/* 8040FC60 0040CBA0  38 04 00 10 */	addi r0, r4, 0x10
/* 8040FC64 0040CBA4  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8040FC68 0040CBA8  48 00 19 69 */	bl del__5CNodeFv
/* 8040FC6C 0040CBAC  38 7E 00 18 */	addi r3, r30, 0x18
/* 8040FC70 0040CBB0  38 80 00 00 */	li r4, 0
/* 8040FC74 0040CBB4  4B C0 D3 C1 */	bl __dt__11JKRDisposerFv
/* 8040FC78 0040CBB8  7F C3 F3 78 */	mr r3, r30
/* 8040FC7C 0040CBBC  38 80 00 00 */	li r4, 0
/* 8040FC80 0040CBC0  48 00 19 09 */	bl __dt__5CNodeFv
lbl_8040FC84:
/* 8040FC84 0040CBC4  7F E0 07 35 */	extsh. r0, r31
/* 8040FC88 0040CBC8  40 81 00 0C */	ble lbl_8040FC94
/* 8040FC8C 0040CBCC  7F C3 F3 78 */	mr r3, r30
/* 8040FC90 0040CBD0  4B C1 44 25 */	bl __dl__FPv
lbl_8040FC94:
/* 8040FC94 0040CBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040FC98 0040CBD8  7F C3 F3 78 */	mr r3, r30
/* 8040FC9C 0040CBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040FCA0 0040CBE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040FCA4 0040CBE4  7C 08 03 A6 */	mtlr r0
/* 8040FCA8 0040CBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8040FCAC 0040CBEC  4E 80 00 20 */	blr 

.global getSize__Q32kh6Screen11DispPayDeptFv
getSize__Q32kh6Screen11DispPayDeptFv:
/* 8040FCB0 0040CBF0  38 60 00 10 */	li r3, 0x10
/* 8040FCB4 0040CBF4  4E 80 00 20 */	blr 

.global getOwnerID__Q32kh6Screen11DispPayDeptFv
getOwnerID__Q32kh6Screen11DispPayDeptFv:
/* 8040FCB8 0040CBF8  38 60 4B 48 */	li r3, 0x4b48
/* 8040FCBC 0040CBFC  4E 80 00 20 */	blr 

.global getMemberID__Q32kh6Screen11DispPayDeptFv
getMemberID__Q32kh6Screen11DispPayDeptFv:
/* 8040FCC0 0040CC00  3C 80 44 45 */	lis r4, 0x44455054@ha
/* 8040FCC4 0040CC04  3C 60 50 41 */	lis r3, 0x5041595F@ha
/* 8040FCC8 0040CC08  38 84 50 54 */	addi r4, r4, 0x44455054@l
/* 8040FCCC 0040CC0C  38 63 59 5F */	addi r3, r3, 0x5041595F@l
/* 8040FCD0 0040CC10  4E 80 00 20 */	blr 

.global __sinit_khPayDept_cpp
__sinit_khPayDept_cpp:
/* 8040FCD4 0040CC14  C0 02 1E A4 */	lfs f0, lbl_80520204@sda21(r2)
/* 8040FCD8 0040CC18  D0 0D 9A C0 */	stfs f0, msVal__Q32kh6Screen10ObjPayDept@sda21(r13)
/* 8040FCDC 0040CC1C  4E 80 00 20 */	blr 

.global "@24@__dt__Q32kh6Screen10ObjPayDeptFv"
"@24@__dt__Q32kh6Screen10ObjPayDeptFv":
/* 8040FCE0 0040CC20  38 63 FF E8 */	addi r3, r3, -24
/* 8040FCE4 0040CC24  4B FF FF 20 */	b __dt__Q32kh6Screen10ObjPayDeptFv
