.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
.4byte __sinit_gameSystem_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_8047FBB8
lbl_8047FBB8:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x67616D65
	.4byte 0x53797374
	.4byte 0x656D0000
.global lbl_8047FBD0
lbl_8047FBD0:
	.4byte 0x44796E50
	.4byte 0x61727469
	.4byte 0x636C6500
.global lbl_8047FBDC
lbl_8047FBDC:
	.4byte 0x75736572
	.4byte 0x2F416265
	.4byte 0x2F74696D
	.4byte 0x652F7469
	.4byte 0x6D652E69
	.4byte 0x6E690000
	.4byte 0x44796E61
	.4byte 0x6D696373
	.4byte 0x00000000
	.4byte 0x8373834E
	.4byte 0x837E8393
	.4byte 0x8EF10000
	.4byte 0x8352838A
	.4byte 0x83578387
	.4byte 0x8393836F
	.4byte 0x83628374
	.4byte 0x8340974C
	.4byte 0x8CF80000
	.4byte 0x00000000

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global lbl_804B5B50
lbl_804B5B50:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.global __vt__Q24Game18OptimiseController
__vt__Q24Game18OptimiseController:
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game18OptimiseControllerFv
.global __vt__Q24Game10GameSystem
__vt__Q24Game10GameSystem:
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game10GameSystemFv
	.4byte getChildCount__5CNodeFv
	.4byte "getObject__29Container<16GenericObjectMgr>FPv"
	.4byte "getNext__33NodeObjectMgr<16GenericObjectMgr>FPv"
	.4byte "getStart__33NodeObjectMgr<16GenericObjectMgr>Fv"
	.4byte "getEnd__33NodeObjectMgr<16GenericObjectMgr>Fv"
	.4byte "get__33NodeObjectMgr<16GenericObjectMgr>FPv"
	.4byte "getAt__29Container<16GenericObjectMgr>Fi"
	.4byte "getTo__29Container<16GenericObjectMgr>Fv"
	.4byte 0
	.4byte 0
	.4byte "@28@doAnimation__Q24Game10GameSystemFv"
	.4byte "@28@doEntry__Q24Game10GameSystemFv"
	.4byte "@28@doSetView__Q24Game10GameSystemFi"
	.4byte "@28@doViewCalc__Q24Game10GameSystemFv"
	.4byte "@28@doSimulation__Q24Game10GameSystemFf"
	.4byte "@28@doDirectDraw__Q24Game10GameSystemFR8Graphics"
	.4byte "@28@doSimpleDraw__Q24Game10GameSystemFP8Viewport"
	.4byte loadResources__16GenericObjectMgrFv
	.4byte "@28@resetMgr__33NodeObjectMgr<16GenericObjectMgr>Fv"
	.4byte pausable__16GenericObjectMgrFv
	.4byte frozenable__16GenericObjectMgrFv
	.4byte getMatrixLoadType__16GenericObjectMgrFv
	.4byte doAnimation__Q24Game10GameSystemFv
	.4byte doEntry__Q24Game10GameSystemFv
	.4byte doSetView__Q24Game10GameSystemFi
	.4byte doViewCalc__Q24Game10GameSystemFv
	.4byte doSimulation__Q24Game10GameSystemFf
	.4byte doDirectDraw__Q24Game10GameSystemFR8Graphics
	.4byte "resetMgr__33NodeObjectMgr<16GenericObjectMgr>Fv"
	.4byte startFrame__Q24Game10GameSystemFv
	.4byte endFrame__Q24Game10GameSystemFv
	.4byte doSimpleDraw__Q24Game10GameSystemFP8Viewport
	.4byte directDraw__Q24Game10GameSystemFR8Graphics
	.4byte startFadeout__Q24Game10GameSystemFf
	.4byte startFadein__Q24Game10GameSystemFf
	.4byte startFadeoutin__Q24Game10GameSystemFf
	.4byte startFadeblack__Q24Game10GameSystemFv
	.4byte startFadewhite__Q24Game10GameSystemFv
	.4byte 0

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global lbl_80515A60
lbl_80515A60:
	.skip 0x4
.global lbl_80515A64
lbl_80515A64:
	.skip 0x4
.global gameSystem__4Game
gameSystem__4Game:
	.skip 0x4
.global mInstance__Q24Game18OptimiseController
mInstance__Q24Game18OptimiseController:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q24Game10GameSystemFPQ24Game15BaseGameSection
__ct__Q24Game10GameSystemFPQ24Game15BaseGameSection:
/* 801B4A80 001B19C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B4A84 001B19C4  7C 08 02 A6 */	mflr r0
/* 801B4A88 001B19C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B4A8C 001B19CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B4A90 001B19D0  7C 9F 23 78 */	mr r31, r4
/* 801B4A94 001B19D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B4A98 001B19D8  7C 7E 1B 78 */	mr r30, r3
/* 801B4A9C 001B19DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801B4AA0 001B19E0  7F DD F3 78 */	mr r29, r30
/* 801B4AA4 001B19E4  93 81 00 10 */	stw r28, 0x10(r1)
/* 801B4AA8 001B19E8  48 25 C8 E9 */	bl __ct__5CNodeFv
/* 801B4AAC 001B19EC  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 801B4AB0 001B19F0  3C 60 80 4B */	lis r3, "__vt__29Container<16GenericObjectMgr>"@ha
/* 801B4AB4 001B19F4  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 801B4AB8 001B19F8  3C A0 80 4B */	lis r5, __vt__16GenericObjectMgr@ha
/* 801B4ABC 001B19FC  90 1E 00 00 */	stw r0, 0(r30)
/* 801B4AC0 001B1A00  38 03 1C B0 */	addi r0, r3, "__vt__29Container<16GenericObjectMgr>"@l
/* 801B4AC4 001B1A04  3C 80 80 4B */	lis r4, "__vt__29ObjectMgr<16GenericObjectMgr>"@ha
/* 801B4AC8 001B1A08  3C 60 80 4B */	lis r3, "__vt__33NodeObjectMgr<16GenericObjectMgr>"@ha
/* 801B4ACC 001B1A0C  90 1E 00 00 */	stw r0, 0(r30)
/* 801B4AD0 001B1A10  38 00 00 00 */	li r0, 0
/* 801B4AD4 001B1A14  38 C4 1C 34 */	addi r6, r4, "__vt__29ObjectMgr<16GenericObjectMgr>"@l
/* 801B4AD8 001B1A18  38 83 1B B4 */	addi r4, r3, "__vt__33NodeObjectMgr<16GenericObjectMgr>"@l
/* 801B4ADC 001B1A1C  98 1E 00 18 */	stb r0, 0x18(r30)
/* 801B4AE0 001B1A20  38 05 B5 F0 */	addi r0, r5, __vt__16GenericObjectMgr@l
/* 801B4AE4 001B1A24  3B 9D 00 20 */	addi r28, r29, 0x20
/* 801B4AE8 001B1A28  38 A6 00 2C */	addi r5, r6, 0x2c
/* 801B4AEC 001B1A2C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 801B4AF0 001B1A30  38 04 00 2C */	addi r0, r4, 0x2c
/* 801B4AF4 001B1A34  7F 83 E3 78 */	mr r3, r28
/* 801B4AF8 001B1A38  90 DE 00 00 */	stw r6, 0(r30)
/* 801B4AFC 001B1A3C  90 BE 00 1C */	stw r5, 0x1c(r30)
/* 801B4B00 001B1A40  90 9D 00 00 */	stw r4, 0(r29)
/* 801B4B04 001B1A44  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 801B4B08 001B1A48  48 25 C8 89 */	bl __ct__5CNodeFv
/* 801B4B0C 001B1A4C  3C 80 80 4B */	lis r4, "__vt__31TObjectNode<16GenericObjectMgr>"@ha
/* 801B4B10 001B1A50  3C 60 80 4B */	lis r3, __vt__Q24Game10GameSystem@ha
/* 801B4B14 001B1A54  38 84 1B A4 */	addi r4, r4, "__vt__31TObjectNode<16GenericObjectMgr>"@l
/* 801B4B18 001B1A58  38 00 00 00 */	li r0, 0
/* 801B4B1C 001B1A5C  90 9C 00 00 */	stw r4, 0(r28)
/* 801B4B20 001B1A60  38 83 5B 68 */	addi r4, r3, __vt__Q24Game10GameSystem@l
/* 801B4B24 001B1A64  38 64 00 2C */	addi r3, r4, 0x2c
/* 801B4B28 001B1A68  90 9E 00 00 */	stw r4, 0(r30)
/* 801B4B2C 001B1A6C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 801B4B30 001B1A70  98 1E 00 3C */	stb r0, 0x3c(r30)
/* 801B4B34 001B1A74  93 FE 00 58 */	stw r31, 0x58(r30)
/* 801B4B38 001B1A78  90 1E 00 44 */	stw r0, 0x44(r30)
/* 801B4B3C 001B1A7C  90 1E 00 54 */	stw r0, 0x54(r30)
/* 801B4B40 001B1A80  4B F8 54 C9 */	bl globalInstance__13DynamicsParmsFv
/* 801B4B44 001B1A84  48 07 96 B9 */	bl globalInstance__12CellMgrParmsFv
/* 801B4B48 001B1A88  38 00 00 00 */	li r0, 0
/* 801B4B4C 001B1A8C  98 1E 00 3C */	stb r0, 0x3c(r30)
/* 801B4B50 001B1A90  48 00 15 69 */	bl globalInstance__Q24Game18OptimiseControllerFv
/* 801B4B54 001B1A94  38 00 00 00 */	li r0, 0
/* 801B4B58 001B1A98  7F C3 F3 78 */	mr r3, r30
/* 801B4B5C 001B1A9C  98 1E 00 4D */	stb r0, 0x4d(r30)
/* 801B4B60 001B1AA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B4B64 001B1AA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B4B68 001B1AA8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801B4B6C 001B1AAC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801B4B70 001B1AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B4B74 001B1AB4  7C 08 03 A6 */	mtlr r0
/* 801B4B78 001B1AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 801B4B7C 001B1ABC  4E 80 00 20 */	blr 

.global __dt__Q24Game10GameSystemFv
__dt__Q24Game10GameSystemFv:
/* 801B4B80 001B1AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4B84 001B1AC4  7C 08 02 A6 */	mflr r0
/* 801B4B88 001B1AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4B8C 001B1ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4B90 001B1AD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801B4B94 001B1AD4  93 C1 00 08 */	stw r30, 8(r1)
/* 801B4B98 001B1AD8  7C 9E 23 78 */	mr r30, r4
/* 801B4B9C 001B1ADC  41 82 00 B0 */	beq lbl_801B4C4C
/* 801B4BA0 001B1AE0  3C 60 80 4B */	lis r3, __vt__Q24Game10GameSystem@ha
/* 801B4BA4 001B1AE4  38 63 5B 68 */	addi r3, r3, __vt__Q24Game10GameSystem@l
/* 801B4BA8 001B1AE8  90 7F 00 00 */	stw r3, 0(r31)
/* 801B4BAC 001B1AEC  38 03 00 2C */	addi r0, r3, 0x2c
/* 801B4BB0 001B1AF0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801B4BB4 001B1AF4  48 00 16 11 */	bl deleteInstance__Q24Game18OptimiseControllerFv
/* 801B4BB8 001B1AF8  28 1F 00 00 */	cmplwi r31, 0
/* 801B4BBC 001B1AFC  41 82 00 80 */	beq lbl_801B4C3C
/* 801B4BC0 001B1B00  3C 60 80 4B */	lis r3, "__vt__33NodeObjectMgr<16GenericObjectMgr>"@ha
/* 801B4BC4 001B1B04  34 1F 00 20 */	addic. r0, r31, 0x20
/* 801B4BC8 001B1B08  38 63 1B B4 */	addi r3, r3, "__vt__33NodeObjectMgr<16GenericObjectMgr>"@l
/* 801B4BCC 001B1B0C  90 7F 00 00 */	stw r3, 0(r31)
/* 801B4BD0 001B1B10  38 03 00 2C */	addi r0, r3, 0x2c
/* 801B4BD4 001B1B14  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801B4BD8 001B1B18  41 82 00 1C */	beq lbl_801B4BF4
/* 801B4BDC 001B1B1C  3C 80 80 4B */	lis r4, "__vt__31TObjectNode<16GenericObjectMgr>"@ha
/* 801B4BE0 001B1B20  38 7F 00 20 */	addi r3, r31, 0x20
/* 801B4BE4 001B1B24  38 04 1B A4 */	addi r0, r4, "__vt__31TObjectNode<16GenericObjectMgr>"@l
/* 801B4BE8 001B1B28  38 80 00 00 */	li r4, 0
/* 801B4BEC 001B1B2C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801B4BF0 001B1B30  48 25 C9 99 */	bl __dt__5CNodeFv
lbl_801B4BF4:
/* 801B4BF4 001B1B34  28 1F 00 00 */	cmplwi r31, 0
/* 801B4BF8 001B1B38  41 82 00 44 */	beq lbl_801B4C3C
/* 801B4BFC 001B1B3C  3C 60 80 4B */	lis r3, "__vt__29ObjectMgr<16GenericObjectMgr>"@ha
/* 801B4C00 001B1B40  38 63 1C 34 */	addi r3, r3, "__vt__29ObjectMgr<16GenericObjectMgr>"@l
/* 801B4C04 001B1B44  90 7F 00 00 */	stw r3, 0(r31)
/* 801B4C08 001B1B48  38 03 00 2C */	addi r0, r3, 0x2c
/* 801B4C0C 001B1B4C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801B4C10 001B1B50  41 82 00 2C */	beq lbl_801B4C3C
/* 801B4C14 001B1B54  3C 60 80 4B */	lis r3, "__vt__29Container<16GenericObjectMgr>"@ha
/* 801B4C18 001B1B58  38 03 1C B0 */	addi r0, r3, "__vt__29Container<16GenericObjectMgr>"@l
/* 801B4C1C 001B1B5C  90 1F 00 00 */	stw r0, 0(r31)
/* 801B4C20 001B1B60  41 82 00 1C */	beq lbl_801B4C3C
/* 801B4C24 001B1B64  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 801B4C28 001B1B68  7F E3 FB 78 */	mr r3, r31
/* 801B4C2C 001B1B6C  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 801B4C30 001B1B70  38 80 00 00 */	li r4, 0
/* 801B4C34 001B1B74  90 1F 00 00 */	stw r0, 0(r31)
/* 801B4C38 001B1B78  48 25 C9 51 */	bl __dt__5CNodeFv
lbl_801B4C3C:
/* 801B4C3C 001B1B7C  7F C0 07 35 */	extsh. r0, r30
/* 801B4C40 001B1B80  40 81 00 0C */	ble lbl_801B4C4C
/* 801B4C44 001B1B84  7F E3 FB 78 */	mr r3, r31
/* 801B4C48 001B1B88  4B E6 F4 6D */	bl __dl__FPv
lbl_801B4C4C:
/* 801B4C4C 001B1B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4C50 001B1B90  7F E3 FB 78 */	mr r3, r31
/* 801B4C54 001B1B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4C58 001B1B98  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4C5C 001B1B9C  7C 08 03 A6 */	mtlr r0
/* 801B4C60 001B1BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4C64 001B1BA4  4E 80 00 20 */	blr 

.global init__Q24Game10GameSystemFv
init__Q24Game10GameSystemFv:
/* 801B4C68 001B1BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4C6C 001B1BAC  7C 08 02 A6 */	mflr r0
/* 801B4C70 001B1BB0  38 A0 00 00 */	li r5, 0
/* 801B4C74 001B1BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4C78 001B1BB8  38 00 00 00 */	li r0, 0
/* 801B4C7C 001B1BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4C80 001B1BC0  7C 7F 1B 78 */	mr r31, r3
/* 801B4C84 001B1BC4  98 03 00 4D */	stb r0, 0x4d(r3)
/* 801B4C88 001B1BC8  3C 60 80 48 */	lis r3, lbl_8047FBD0@ha
/* 801B4C8C 001B1BCC  38 83 FB D0 */	addi r4, r3, lbl_8047FBD0@l
/* 801B4C90 001B1BD0  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 801B4C94 001B1BD4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 801B4C98 001B1BD8  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801B4C9C 001B1BDC  48 26 E6 C1 */	bl heapStatusStart__6SystemFPcP7JKRHeap
/* 801B4CA0 001B1BE0  38 60 00 30 */	li r3, 0x30
/* 801B4CA4 001B1BE4  4B E6 F2 01 */	bl __nw__FUl
/* 801B4CA8 001B1BE8  7C 60 1B 79 */	or. r0, r3, r3
/* 801B4CAC 001B1BEC  41 82 00 10 */	beq lbl_801B4CBC
/* 801B4CB0 001B1BF0  38 80 02 00 */	li r4, 0x200
/* 801B4CB4 001B1BF4  4B FF 32 89 */	bl __ct__Q24Game14DynParticleMgrFi
/* 801B4CB8 001B1BF8  7C 60 1B 78 */	mr r0, r3
lbl_801B4CBC:
/* 801B4CBC 001B1BFC  3C 60 80 48 */	lis r3, lbl_8047FBD0@ha
/* 801B4CC0 001B1C00  90 0D 93 90 */	stw r0, dynParticleMgr__4Game@sda21(r13)
/* 801B4CC4 001B1C04  38 83 FB D0 */	addi r4, r3, lbl_8047FBD0@l
/* 801B4CC8 001B1C08  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801B4CCC 001B1C0C  48 26 E6 99 */	bl heapStatusEnd__6SystemFPc
/* 801B4CD0 001B1C10  38 60 00 5C */	li r3, 0x5c
/* 801B4CD4 001B1C14  4B E6 F1 D1 */	bl __nw__FUl
/* 801B4CD8 001B1C18  7C 60 1B 79 */	or. r0, r3, r3
/* 801B4CDC 001B1C1C  41 82 00 0C */	beq lbl_801B4CE8
/* 801B4CE0 001B1C20  48 00 15 D1 */	bl __ct__Q24Game11AIConstantsFv
/* 801B4CE4 001B1C24  7C 60 1B 78 */	mr r0, r3
lbl_801B4CE8:
/* 801B4CE8 001B1C28  90 0D 93 F0 */	stw r0, _aiConstants__4Game@sda21(r13)
/* 801B4CEC 001B1C2C  4B FE AF 09 */	bl initialise__Q24Game8StickersFv
/* 801B4CF0 001B1C30  48 01 C0 C9 */	bl clear__Q24Game8GameStatFv
/* 801B4CF4 001B1C34  38 00 00 00 */	li r0, 0
/* 801B4CF8 001B1C38  38 60 02 44 */	li r3, 0x244
/* 801B4CFC 001B1C3C  98 1F 00 4A */	stb r0, 0x4a(r31)
/* 801B4D00 001B1C40  98 1F 00 49 */	stb r0, 0x49(r31)
/* 801B4D04 001B1C44  98 1F 00 4B */	stb r0, 0x4b(r31)
/* 801B4D08 001B1C48  98 1F 00 4C */	stb r0, 0x4c(r31)
/* 801B4D0C 001B1C4C  4B E6 F1 99 */	bl __nw__FUl
/* 801B4D10 001B1C50  7C 60 1B 79 */	or. r0, r3, r3
/* 801B4D14 001B1C54  41 82 00 0C */	beq lbl_801B4D20
/* 801B4D18 001B1C58  4B F7 1E E9 */	bl __ct__Q24Game7TimeMgrFv
/* 801B4D1C 001B1C5C  7C 60 1B 78 */	mr r0, r3
lbl_801B4D20:
/* 801B4D20 001B1C60  90 1F 00 40 */	stw r0, 0x40(r31)
/* 801B4D24 001B1C64  3C 60 80 48 */	lis r3, lbl_8047FBDC@ha
/* 801B4D28 001B1C68  38 83 FB DC */	addi r4, r3, lbl_8047FBDC@l
/* 801B4D2C 001B1C6C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801B4D30 001B1C70  4B F7 26 D1 */	bl loadSettingFile__Q24Game7TimeMgrFPc
/* 801B4D34 001B1C74  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801B4D38 001B1C78  80 03 02 40 */	lwz r0, 0x240(r3)
/* 801B4D3C 001B1C7C  60 00 00 01 */	ori r0, r0, 1
/* 801B4D40 001B1C80  90 03 02 40 */	stw r0, 0x240(r3)
/* 801B4D44 001B1C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4D48 001B1C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4D4C 001B1C8C  7C 08 03 A6 */	mtlr r0
/* 801B4D50 001B1C90  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4D54 001B1C94  4E 80 00 20 */	blr 

.global calcFrameDist__Q24Game10GameSystemFi
calcFrameDist__Q24Game10GameSystemFi:
/* 801B4D58 001B1C98  80 A3 00 50 */	lwz r5, 0x50(r3)
/* 801B4D5C 001B1C9C  3C 00 40 00 */	lis r0, 0x4000
/* 801B4D60 001B1CA0  7C 04 00 50 */	subf r0, r4, r0
/* 801B4D64 001B1CA4  7C 05 20 00 */	cmpw r5, r4
/* 801B4D68 001B1CA8  7C 60 2A 14 */	add r3, r0, r5
/* 801B4D6C 001B1CAC  4D 80 00 20 */	bltlr 
/* 801B4D70 001B1CB0  7C 64 28 50 */	subf r3, r4, r5
/* 801B4D74 001B1CB4  4E 80 00 20 */	blr 

.global startFrame__Q24Game10GameSystemFv
startFrame__Q24Game10GameSystemFv:
/* 801B4D78 001B1CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4D7C 001B1CBC  7C 08 02 A6 */	mflr r0
/* 801B4D80 001B1CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4D84 001B1CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4D88 001B1CC8  7C 7F 1B 78 */	mr r31, r3
/* 801B4D8C 001B1CCC  88 63 00 4B */	lbz r3, 0x4b(r3)
/* 801B4D90 001B1CD0  28 03 00 00 */	cmplwi r3, 0
/* 801B4D94 001B1CD4  41 82 00 0C */	beq lbl_801B4DA0
/* 801B4D98 001B1CD8  38 03 FF FF */	addi r0, r3, -1
/* 801B4D9C 001B1CDC  98 1F 00 4B */	stb r0, 0x4b(r31)
lbl_801B4DA0:
/* 801B4DA0 001B1CE0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 801B4DA4 001B1CE4  3C 00 40 00 */	lis r0, 0x4000
/* 801B4DA8 001B1CE8  38 63 00 01 */	addi r3, r3, 1
/* 801B4DAC 001B1CEC  90 7F 00 50 */	stw r3, 0x50(r31)
/* 801B4DB0 001B1CF0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 801B4DB4 001B1CF4  7C 03 00 00 */	cmpw r3, r0
/* 801B4DB8 001B1CF8  40 81 00 0C */	ble lbl_801B4DC4
/* 801B4DBC 001B1CFC  38 00 00 00 */	li r0, 0
/* 801B4DC0 001B1D00  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_801B4DC4:
/* 801B4DC4 001B1D04  80 6D 92 C8 */	lwz r3, cellMgr__4Game@sda21(r13)
/* 801B4DC8 001B1D08  4B FA 1F 7D */	bl initFrame__Q24Game11CellPyramidFv
/* 801B4DCC 001B1D0C  80 6D 93 50 */	lwz r3, collisionUpdateMgr__4Game@sda21(r13)
/* 801B4DD0 001B1D10  4B FE 19 C5 */	bl update__Q24Game9UpdateMgrFv
/* 801B4DD4 001B1D14  7F E3 FB 78 */	mr r3, r31
/* 801B4DD8 001B1D18  48 00 01 F1 */	bl paused__Q24Game10GameSystemFv
/* 801B4DDC 001B1D1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4DE0 001B1D20  40 82 00 60 */	bne lbl_801B4E40
/* 801B4DE4 001B1D24  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 801B4DE8 001B1D28  28 00 00 00 */	cmplwi r0, 0
/* 801B4DEC 001B1D2C  40 82 00 54 */	bne lbl_801B4E40
/* 801B4DF0 001B1D30  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 801B4DF4 001B1D34  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801B4DF8 001B1D38  40 82 00 48 */	bne lbl_801B4E40
/* 801B4DFC 001B1D3C  7F E3 FB 78 */	mr r3, r31
/* 801B4E00 001B1D40  48 00 01 C1 */	bl paused_soft__Q24Game10GameSystemFv
/* 801B4E04 001B1D44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B4E08 001B1D48  40 82 00 38 */	bne lbl_801B4E40
/* 801B4E0C 001B1D4C  80 6D 9B 54 */	lwz r3, moviePlayer__4Game@sda21(r13)
/* 801B4E10 001B1D50  28 03 00 00 */	cmplwi r3, 0
/* 801B4E14 001B1D54  41 82 00 10 */	beq lbl_801B4E24
/* 801B4E18 001B1D58  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801B4E1C 001B1D5C  2C 00 00 00 */	cmpwi r0, 0
/* 801B4E20 001B1D60  40 82 00 20 */	bne lbl_801B4E40
lbl_801B4E24:
/* 801B4E24 001B1D64  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 801B4E28 001B1D68  80 63 00 40 */	lwz r3, 0x40(r3)
/* 801B4E2C 001B1D6C  80 03 02 18 */	lwz r0, 0x218(r3)
/* 801B4E30 001B1D70  2C 00 00 00 */	cmpwi r0, 0
/* 801B4E34 001B1D74  41 82 00 0C */	beq lbl_801B4E40
/* 801B4E38 001B1D78  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801B4E3C 001B1D7C  4B F7 24 E9 */	bl update__Q24Game7TimeMgrFv
lbl_801B4E40:
/* 801B4E40 001B1D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4E44 001B1D84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4E48 001B1D88  7C 08 03 A6 */	mtlr r0
/* 801B4E4C 001B1D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4E50 001B1D90  4E 80 00 20 */	blr 

.global endFrame__Q24Game10GameSystemFv
endFrame__Q24Game10GameSystemFv:
/* 801B4E54 001B1D94  88 83 00 4B */	lbz r4, 0x4b(r3)
/* 801B4E58 001B1D98  28 04 00 00 */	cmplwi r4, 0
/* 801B4E5C 001B1D9C  4D 82 00 20 */	beqlr 
/* 801B4E60 001B1DA0  38 04 FF FF */	addi r0, r4, -1
/* 801B4E64 001B1DA4  98 03 00 4B */	stb r0, 0x4b(r3)
/* 801B4E68 001B1DA8  4E 80 00 20 */	blr 

.global startFadeout__Q24Game10GameSystemFf
startFadeout__Q24Game10GameSystemFf:
/* 801B4E6C 001B1DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4E70 001B1DB0  7C 08 02 A6 */	mflr r0
/* 801B4E74 001B1DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4E78 001B1DB8  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801B4E7C 001B1DBC  28 03 00 00 */	cmplwi r3, 0
/* 801B4E80 001B1DC0  41 82 00 14 */	beq lbl_801B4E94
/* 801B4E84 001B1DC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4E88 001B1DC8  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801B4E8C 001B1DCC  7D 89 03 A6 */	mtctr r12
/* 801B4E90 001B1DD0  4E 80 04 21 */	bctrl 
lbl_801B4E94:
/* 801B4E94 001B1DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4E98 001B1DD8  7C 08 03 A6 */	mtlr r0
/* 801B4E9C 001B1DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4EA0 001B1DE0  4E 80 00 20 */	blr 

.global startFadein__Q24Game10GameSystemFf
startFadein__Q24Game10GameSystemFf:
/* 801B4EA4 001B1DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4EA8 001B1DE8  7C 08 02 A6 */	mflr r0
/* 801B4EAC 001B1DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4EB0 001B1DF0  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801B4EB4 001B1DF4  28 03 00 00 */	cmplwi r3, 0
/* 801B4EB8 001B1DF8  41 82 00 14 */	beq lbl_801B4ECC
/* 801B4EBC 001B1DFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4EC0 001B1E00  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 801B4EC4 001B1E04  7D 89 03 A6 */	mtctr r12
/* 801B4EC8 001B1E08  4E 80 04 21 */	bctrl 
lbl_801B4ECC:
/* 801B4ECC 001B1E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4ED0 001B1E10  7C 08 03 A6 */	mtlr r0
/* 801B4ED4 001B1E14  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4ED8 001B1E18  4E 80 00 20 */	blr 

.global startFadeoutin__Q24Game10GameSystemFf
startFadeoutin__Q24Game10GameSystemFf:
/* 801B4EDC 001B1E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4EE0 001B1E20  7C 08 02 A6 */	mflr r0
/* 801B4EE4 001B1E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4EE8 001B1E28  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801B4EEC 001B1E2C  28 03 00 00 */	cmplwi r3, 0
/* 801B4EF0 001B1E30  41 82 00 14 */	beq lbl_801B4F04
/* 801B4EF4 001B1E34  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4EF8 001B1E38  81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 801B4EFC 001B1E3C  7D 89 03 A6 */	mtctr r12
/* 801B4F00 001B1E40  4E 80 04 21 */	bctrl 
lbl_801B4F04:
/* 801B4F04 001B1E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4F08 001B1E48  7C 08 03 A6 */	mtlr r0
/* 801B4F0C 001B1E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4F10 001B1E50  4E 80 00 20 */	blr 

.global startFadeblack__Q24Game10GameSystemFv
startFadeblack__Q24Game10GameSystemFv:
/* 801B4F14 001B1E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4F18 001B1E58  7C 08 02 A6 */	mflr r0
/* 801B4F1C 001B1E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4F20 001B1E60  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801B4F24 001B1E64  28 03 00 00 */	cmplwi r3, 0
/* 801B4F28 001B1E68  41 82 00 14 */	beq lbl_801B4F3C
/* 801B4F2C 001B1E6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4F30 001B1E70  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 801B4F34 001B1E74  7D 89 03 A6 */	mtctr r12
/* 801B4F38 001B1E78  4E 80 04 21 */	bctrl 
lbl_801B4F3C:
/* 801B4F3C 001B1E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4F40 001B1E80  7C 08 03 A6 */	mtlr r0
/* 801B4F44 001B1E84  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4F48 001B1E88  4E 80 00 20 */	blr 

.global startFadewhite__Q24Game10GameSystemFv
startFadewhite__Q24Game10GameSystemFv:
/* 801B4F4C 001B1E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4F50 001B1E90  7C 08 02 A6 */	mflr r0
/* 801B4F54 001B1E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4F58 001B1E98  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801B4F5C 001B1E9C  28 03 00 00 */	cmplwi r3, 0
/* 801B4F60 001B1EA0  41 82 00 14 */	beq lbl_801B4F74
/* 801B4F64 001B1EA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4F68 001B1EA8  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 801B4F6C 001B1EAC  7D 89 03 A6 */	mtctr r12
/* 801B4F70 001B1EB0  4E 80 04 21 */	bctrl 
lbl_801B4F74:
/* 801B4F74 001B1EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4F78 001B1EB8  7C 08 03 A6 */	mtlr r0
/* 801B4F7C 001B1EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4F80 001B1EC0  4E 80 00 20 */	blr 

.global setMoviePause__Q24Game10GameSystemFbPc
setMoviePause__Q24Game10GameSystemFbPc:
/* 801B4F84 001B1EC4  98 83 00 4D */	stb r4, 0x4d(r3)
/* 801B4F88 001B1EC8  4E 80 00 20 */	blr 

.global setFrozen__Q24Game10GameSystemFbPc
setFrozen__Q24Game10GameSystemFbPc:
/* 801B4F8C 001B1ECC  98 83 00 4A */	stb r4, 0x4a(r3)
/* 801B4F90 001B1ED0  4E 80 00 20 */	blr 

.global setPause__Q24Game10GameSystemFbPci
setPause__Q24Game10GameSystemFbPci:
/* 801B4F94 001B1ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4F98 001B1ED8  7C 08 02 A6 */	mflr r0
/* 801B4F9C 001B1EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4FA0 001B1EE0  7C A0 2B 78 */	mr r0, r5
/* 801B4FA4 001B1EE4  7C C5 33 78 */	mr r5, r6
/* 801B4FA8 001B1EE8  7C 06 03 78 */	mr r6, r0
/* 801B4FAC 001B1EEC  48 00 00 45 */	bl startPause__Q24Game10GameSystemFbiPc
/* 801B4FB0 001B1EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4FB4 001B1EF4  7C 08 03 A6 */	mtlr r0
/* 801B4FB8 001B1EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4FBC 001B1EFC  4E 80 00 20 */	blr 

.global paused_soft__Q24Game10GameSystemFv
paused_soft__Q24Game10GameSystemFv:
/* 801B4FC0 001B1F00  88 63 00 4C */	lbz r3, 0x4c(r3)
/* 801B4FC4 001B1F04  4E 80 00 20 */	blr 

.global paused__Q24Game10GameSystemFv
paused__Q24Game10GameSystemFv:
/* 801B4FC8 001B1F08  88 03 00 4B */	lbz r0, 0x4b(r3)
/* 801B4FCC 001B1F0C  28 00 00 00 */	cmplwi r0, 0
/* 801B4FD0 001B1F10  40 82 00 18 */	bne lbl_801B4FE8
/* 801B4FD4 001B1F14  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 801B4FD8 001B1F18  28 00 00 00 */	cmplwi r0, 0
/* 801B4FDC 001B1F1C  41 82 00 0C */	beq lbl_801B4FE8
/* 801B4FE0 001B1F20  38 60 00 01 */	li r3, 1
/* 801B4FE4 001B1F24  4E 80 00 20 */	blr 
lbl_801B4FE8:
/* 801B4FE8 001B1F28  38 60 00 00 */	li r3, 0
/* 801B4FEC 001B1F2C  4E 80 00 20 */	blr 

.global startPause__Q24Game10GameSystemFbiPc
startPause__Q24Game10GameSystemFbiPc:
/* 801B4FF0 001B1F30  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801B4FF4 001B1F34  41 82 00 38 */	beq lbl_801B502C
/* 801B4FF8 001B1F38  88 03 00 4B */	lbz r0, 0x4b(r3)
/* 801B4FFC 001B1F3C  28 00 00 00 */	cmplwi r0, 0
/* 801B5000 001B1F40  40 82 00 18 */	bne lbl_801B5018
/* 801B5004 001B1F44  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 801B5008 001B1F48  28 00 00 00 */	cmplwi r0, 0
/* 801B500C 001B1F4C  41 82 00 0C */	beq lbl_801B5018
/* 801B5010 001B1F50  38 00 00 01 */	li r0, 1
/* 801B5014 001B1F54  48 00 00 08 */	b lbl_801B501C
lbl_801B5018:
/* 801B5018 001B1F58  38 00 00 00 */	li r0, 0
lbl_801B501C:
/* 801B501C 001B1F5C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801B5020 001B1F60  41 82 00 0C */	beq lbl_801B502C
/* 801B5024 001B1F64  38 60 00 01 */	li r3, 1
/* 801B5028 001B1F68  4E 80 00 20 */	blr 
lbl_801B502C:
/* 801B502C 001B1F6C  98 A3 00 4B */	stb r5, 0x4b(r3)
/* 801B5030 001B1F70  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 801B5034 001B1F74  98 83 00 4C */	stb r4, 0x4c(r3)
/* 801B5038 001B1F78  7C 03 03 78 */	mr r3, r0
/* 801B503C 001B1F7C  4E 80 00 20 */	blr 

.global setDrawBuffer__Q24Game10GameSystemFi
setDrawBuffer__Q24Game10GameSystemFi:
/* 801B5040 001B1F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5044 001B1F84  7C 08 02 A6 */	mflr r0
/* 801B5048 001B1F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B504C 001B1F8C  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801B5050 001B1F90  28 03 00 00 */	cmplwi r3, 0
/* 801B5054 001B1F94  41 82 00 08 */	beq lbl_801B505C
/* 801B5058 001B1F98  4B F9 C4 05 */	bl setDrawBuffer__Q24Game15BaseGameSectionFi
lbl_801B505C:
/* 801B505C 001B1F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5060 001B1FA0  7C 08 03 A6 */	mtlr r0
/* 801B5064 001B1FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5068 001B1FA8  4E 80 00 20 */	blr 

.global getLightMgr__Q24Game10GameSystemFv
getLightMgr__Q24Game10GameSystemFv:
/* 801B506C 001B1FAC  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801B5070 001B1FB0  80 63 01 28 */	lwz r3, 0x128(r3)
/* 801B5074 001B1FB4  4E 80 00 20 */	blr 

.global doAnimation__Q24Game10GameSystemFv
doAnimation__Q24Game10GameSystemFv:
/* 801B5078 001B1FB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B507C 001B1FBC  7C 08 02 A6 */	mflr r0
/* 801B5080 001B1FC0  3C 80 80 4B */	lis r4, "__vt__28Iterator<16GenericObjectMgr>"@ha
/* 801B5084 001B1FC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B5088 001B1FC8  38 00 00 00 */	li r0, 0
/* 801B508C 001B1FCC  38 84 1B 5C */	addi r4, r4, "__vt__28Iterator<16GenericObjectMgr>"@l
/* 801B5090 001B1FD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B5094 001B1FD4  7C 7F 1B 78 */	mr r31, r3
/* 801B5098 001B1FD8  28 00 00 00 */	cmplwi r0, 0
/* 801B509C 001B1FDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B50A0 001B1FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B50A4 001B1FE4  90 81 00 08 */	stw r4, 8(r1)
/* 801B50A8 001B1FE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B50AC 001B1FEC  93 E1 00 10 */	stw r31, 0x10(r1)
/* 801B50B0 001B1FF0  40 82 00 1C */	bne lbl_801B50CC
/* 801B50B4 001B1FF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B50B8 001B1FF8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B50BC 001B1FFC  7D 89 03 A6 */	mtctr r12
/* 801B50C0 001B2000  4E 80 04 21 */	bctrl 
/* 801B50C4 001B2004  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B50C8 001B2008  48 00 01 EC */	b lbl_801B52B4
lbl_801B50CC:
/* 801B50CC 001B200C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B50D0 001B2010  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B50D4 001B2014  7D 89 03 A6 */	mtctr r12
/* 801B50D8 001B2018  4E 80 04 21 */	bctrl 
/* 801B50DC 001B201C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B50E0 001B2020  48 00 00 58 */	b lbl_801B5138
lbl_801B50E4:
/* 801B50E4 001B2024  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B50E8 001B2028  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B50EC 001B202C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B50F0 001B2030  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B50F4 001B2034  7D 89 03 A6 */	mtctr r12
/* 801B50F8 001B2038  4E 80 04 21 */	bctrl 
/* 801B50FC 001B203C  7C 64 1B 78 */	mr r4, r3
/* 801B5100 001B2040  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5104 001B2044  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5108 001B2048  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B510C 001B204C  7D 89 03 A6 */	mtctr r12
/* 801B5110 001B2050  4E 80 04 21 */	bctrl 
/* 801B5114 001B2054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5118 001B2058  40 82 01 9C */	bne lbl_801B52B4
/* 801B511C 001B205C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5120 001B2060  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5124 001B2064  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5128 001B2068  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B512C 001B206C  7D 89 03 A6 */	mtctr r12
/* 801B5130 001B2070  4E 80 04 21 */	bctrl 
/* 801B5134 001B2074  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5138:
/* 801B5138 001B2078  81 81 00 08 */	lwz r12, 8(r1)
/* 801B513C 001B207C  38 61 00 08 */	addi r3, r1, 8
/* 801B5140 001B2080  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5144 001B2084  7D 89 03 A6 */	mtctr r12
/* 801B5148 001B2088  4E 80 04 21 */	bctrl 
/* 801B514C 001B208C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5150 001B2090  41 82 FF 94 */	beq lbl_801B50E4
/* 801B5154 001B2094  48 00 01 60 */	b lbl_801B52B4
lbl_801B5158:
/* 801B5158 001B2098  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B515C 001B209C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5160 001B20A0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5164 001B20A4  7D 89 03 A6 */	mtctr r12
/* 801B5168 001B20A8  4E 80 04 21 */	bctrl 
/* 801B516C 001B20AC  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 801B5170 001B20B0  7C 7E 1B 78 */	mr r30, r3
/* 801B5174 001B20B4  28 00 00 00 */	cmplwi r0, 0
/* 801B5178 001B20B8  40 82 00 18 */	bne lbl_801B5190
/* 801B517C 001B20BC  88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 801B5180 001B20C0  28 00 00 00 */	cmplwi r0, 0
/* 801B5184 001B20C4  41 82 00 0C */	beq lbl_801B5190
/* 801B5188 001B20C8  38 00 00 01 */	li r0, 1
/* 801B518C 001B20CC  48 00 00 08 */	b lbl_801B5194
lbl_801B5190:
/* 801B5190 001B20D0  38 00 00 00 */	li r0, 0
lbl_801B5194:
/* 801B5194 001B20D4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801B5198 001B20D8  41 82 00 24 */	beq lbl_801B51BC
/* 801B519C 001B20DC  7F C3 F3 78 */	mr r3, r30
/* 801B51A0 001B20E0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B51A4 001B20E4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B51A8 001B20E8  7D 89 03 A6 */	mtctr r12
/* 801B51AC 001B20EC  4E 80 04 21 */	bctrl 
/* 801B51B0 001B20F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B51B4 001B20F4  40 82 00 44 */	bne lbl_801B51F8
/* 801B51B8 001B20F8  48 00 00 2C */	b lbl_801B51E4
lbl_801B51BC:
/* 801B51BC 001B20FC  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 801B51C0 001B2100  28 00 00 00 */	cmplwi r0, 0
/* 801B51C4 001B2104  41 82 00 20 */	beq lbl_801B51E4
/* 801B51C8 001B2108  7F C3 F3 78 */	mr r3, r30
/* 801B51CC 001B210C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B51D0 001B2110  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801B51D4 001B2114  7D 89 03 A6 */	mtctr r12
/* 801B51D8 001B2118  4E 80 04 21 */	bctrl 
/* 801B51DC 001B211C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B51E0 001B2120  40 82 00 18 */	bne lbl_801B51F8
lbl_801B51E4:
/* 801B51E4 001B2124  7F C3 F3 78 */	mr r3, r30
/* 801B51E8 001B2128  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B51EC 001B212C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B51F0 001B2130  7D 89 03 A6 */	mtctr r12
/* 801B51F4 001B2134  4E 80 04 21 */	bctrl 
lbl_801B51F8:
/* 801B51F8 001B2138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B51FC 001B213C  28 00 00 00 */	cmplwi r0, 0
/* 801B5200 001B2140  40 82 00 24 */	bne lbl_801B5224
/* 801B5204 001B2144  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5208 001B2148  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B520C 001B214C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5210 001B2150  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5214 001B2154  7D 89 03 A6 */	mtctr r12
/* 801B5218 001B2158  4E 80 04 21 */	bctrl 
/* 801B521C 001B215C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5220 001B2160  48 00 00 94 */	b lbl_801B52B4
lbl_801B5224:
/* 801B5224 001B2164  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5228 001B2168  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B522C 001B216C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5230 001B2170  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5234 001B2174  7D 89 03 A6 */	mtctr r12
/* 801B5238 001B2178  4E 80 04 21 */	bctrl 
/* 801B523C 001B217C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5240 001B2180  48 00 00 58 */	b lbl_801B5298
lbl_801B5244:
/* 801B5244 001B2184  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5248 001B2188  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B524C 001B218C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5250 001B2190  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5254 001B2194  7D 89 03 A6 */	mtctr r12
/* 801B5258 001B2198  4E 80 04 21 */	bctrl 
/* 801B525C 001B219C  7C 64 1B 78 */	mr r4, r3
/* 801B5260 001B21A0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5264 001B21A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5268 001B21A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B526C 001B21AC  7D 89 03 A6 */	mtctr r12
/* 801B5270 001B21B0  4E 80 04 21 */	bctrl 
/* 801B5274 001B21B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5278 001B21B8  40 82 00 3C */	bne lbl_801B52B4
/* 801B527C 001B21BC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5280 001B21C0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5284 001B21C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5288 001B21C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B528C 001B21CC  7D 89 03 A6 */	mtctr r12
/* 801B5290 001B21D0  4E 80 04 21 */	bctrl 
/* 801B5294 001B21D4  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5298:
/* 801B5298 001B21D8  81 81 00 08 */	lwz r12, 8(r1)
/* 801B529C 001B21DC  38 61 00 08 */	addi r3, r1, 8
/* 801B52A0 001B21E0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B52A4 001B21E4  7D 89 03 A6 */	mtctr r12
/* 801B52A8 001B21E8  4E 80 04 21 */	bctrl 
/* 801B52AC 001B21EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B52B0 001B21F0  41 82 FF 94 */	beq lbl_801B5244
lbl_801B52B4:
/* 801B52B4 001B21F4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B52B8 001B21F8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B52BC 001B21FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801B52C0 001B2200  7D 89 03 A6 */	mtctr r12
/* 801B52C4 001B2204  4E 80 04 21 */	bctrl 
/* 801B52C8 001B2208  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B52CC 001B220C  7C 04 18 40 */	cmplw r4, r3
/* 801B52D0 001B2210  40 82 FE 88 */	bne lbl_801B5158
/* 801B52D4 001B2214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B52D8 001B2218  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B52DC 001B221C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B52E0 001B2220  7C 08 03 A6 */	mtlr r0
/* 801B52E4 001B2224  38 21 00 20 */	addi r1, r1, 0x20
/* 801B52E8 001B2228  4E 80 00 20 */	blr 

.global doEntry__Q24Game10GameSystemFv
doEntry__Q24Game10GameSystemFv:
/* 801B52EC 001B222C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B52F0 001B2230  7C 08 02 A6 */	mflr r0
/* 801B52F4 001B2234  3C 80 80 4B */	lis r4, "__vt__28Iterator<16GenericObjectMgr>"@ha
/* 801B52F8 001B2238  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B52FC 001B223C  38 00 00 00 */	li r0, 0
/* 801B5300 001B2240  38 84 1B 5C */	addi r4, r4, "__vt__28Iterator<16GenericObjectMgr>"@l
/* 801B5304 001B2244  28 00 00 00 */	cmplwi r0, 0
/* 801B5308 001B2248  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B530C 001B224C  90 81 00 08 */	stw r4, 8(r1)
/* 801B5310 001B2250  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B5314 001B2254  90 61 00 10 */	stw r3, 0x10(r1)
/* 801B5318 001B2258  40 82 00 1C */	bne lbl_801B5334
/* 801B531C 001B225C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5320 001B2260  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5324 001B2264  7D 89 03 A6 */	mtctr r12
/* 801B5328 001B2268  4E 80 04 21 */	bctrl 
/* 801B532C 001B226C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5330 001B2270  48 00 01 70 */	b lbl_801B54A0
lbl_801B5334:
/* 801B5334 001B2274  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5338 001B2278  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B533C 001B227C  7D 89 03 A6 */	mtctr r12
/* 801B5340 001B2280  4E 80 04 21 */	bctrl 
/* 801B5344 001B2284  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5348 001B2288  48 00 00 58 */	b lbl_801B53A0
lbl_801B534C:
/* 801B534C 001B228C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5350 001B2290  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5354 001B2294  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5358 001B2298  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B535C 001B229C  7D 89 03 A6 */	mtctr r12
/* 801B5360 001B22A0  4E 80 04 21 */	bctrl 
/* 801B5364 001B22A4  7C 64 1B 78 */	mr r4, r3
/* 801B5368 001B22A8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B536C 001B22AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5370 001B22B0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5374 001B22B4  7D 89 03 A6 */	mtctr r12
/* 801B5378 001B22B8  4E 80 04 21 */	bctrl 
/* 801B537C 001B22BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5380 001B22C0  40 82 01 20 */	bne lbl_801B54A0
/* 801B5384 001B22C4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5388 001B22C8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B538C 001B22CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5390 001B22D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5394 001B22D4  7D 89 03 A6 */	mtctr r12
/* 801B5398 001B22D8  4E 80 04 21 */	bctrl 
/* 801B539C 001B22DC  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B53A0:
/* 801B53A0 001B22E0  81 81 00 08 */	lwz r12, 8(r1)
/* 801B53A4 001B22E4  38 61 00 08 */	addi r3, r1, 8
/* 801B53A8 001B22E8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B53AC 001B22EC  7D 89 03 A6 */	mtctr r12
/* 801B53B0 001B22F0  4E 80 04 21 */	bctrl 
/* 801B53B4 001B22F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B53B8 001B22F8  41 82 FF 94 */	beq lbl_801B534C
/* 801B53BC 001B22FC  48 00 00 E4 */	b lbl_801B54A0
lbl_801B53C0:
/* 801B53C0 001B2300  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B53C4 001B2304  81 83 00 00 */	lwz r12, 0(r3)
/* 801B53C8 001B2308  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B53CC 001B230C  7D 89 03 A6 */	mtctr r12
/* 801B53D0 001B2310  4E 80 04 21 */	bctrl 
/* 801B53D4 001B2314  81 83 00 00 */	lwz r12, 0(r3)
/* 801B53D8 001B2318  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B53DC 001B231C  7D 89 03 A6 */	mtctr r12
/* 801B53E0 001B2320  4E 80 04 21 */	bctrl 
/* 801B53E4 001B2324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B53E8 001B2328  28 00 00 00 */	cmplwi r0, 0
/* 801B53EC 001B232C  40 82 00 24 */	bne lbl_801B5410
/* 801B53F0 001B2330  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B53F4 001B2334  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B53F8 001B2338  81 83 00 00 */	lwz r12, 0(r3)
/* 801B53FC 001B233C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5400 001B2340  7D 89 03 A6 */	mtctr r12
/* 801B5404 001B2344  4E 80 04 21 */	bctrl 
/* 801B5408 001B2348  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B540C 001B234C  48 00 00 94 */	b lbl_801B54A0
lbl_801B5410:
/* 801B5410 001B2350  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5414 001B2354  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5418 001B2358  81 83 00 00 */	lwz r12, 0(r3)
/* 801B541C 001B235C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5420 001B2360  7D 89 03 A6 */	mtctr r12
/* 801B5424 001B2364  4E 80 04 21 */	bctrl 
/* 801B5428 001B2368  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B542C 001B236C  48 00 00 58 */	b lbl_801B5484
lbl_801B5430:
/* 801B5430 001B2370  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5434 001B2374  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5438 001B2378  81 83 00 00 */	lwz r12, 0(r3)
/* 801B543C 001B237C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5440 001B2380  7D 89 03 A6 */	mtctr r12
/* 801B5444 001B2384  4E 80 04 21 */	bctrl 
/* 801B5448 001B2388  7C 64 1B 78 */	mr r4, r3
/* 801B544C 001B238C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5450 001B2390  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5454 001B2394  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5458 001B2398  7D 89 03 A6 */	mtctr r12
/* 801B545C 001B239C  4E 80 04 21 */	bctrl 
/* 801B5460 001B23A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5464 001B23A4  40 82 00 3C */	bne lbl_801B54A0
/* 801B5468 001B23A8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B546C 001B23AC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5470 001B23B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5474 001B23B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5478 001B23B8  7D 89 03 A6 */	mtctr r12
/* 801B547C 001B23BC  4E 80 04 21 */	bctrl 
/* 801B5480 001B23C0  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5484:
/* 801B5484 001B23C4  81 81 00 08 */	lwz r12, 8(r1)
/* 801B5488 001B23C8  38 61 00 08 */	addi r3, r1, 8
/* 801B548C 001B23CC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5490 001B23D0  7D 89 03 A6 */	mtctr r12
/* 801B5494 001B23D4  4E 80 04 21 */	bctrl 
/* 801B5498 001B23D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B549C 001B23DC  41 82 FF 94 */	beq lbl_801B5430
lbl_801B54A0:
/* 801B54A0 001B23E0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B54A4 001B23E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B54A8 001B23E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801B54AC 001B23EC  7D 89 03 A6 */	mtctr r12
/* 801B54B0 001B23F0  4E 80 04 21 */	bctrl 
/* 801B54B4 001B23F4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B54B8 001B23F8  7C 04 18 40 */	cmplw r4, r3
/* 801B54BC 001B23FC  40 82 FF 04 */	bne lbl_801B53C0
/* 801B54C0 001B2400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B54C4 001B2404  7C 08 03 A6 */	mtlr r0
/* 801B54C8 001B2408  38 21 00 20 */	addi r1, r1, 0x20
/* 801B54CC 001B240C  4E 80 00 20 */	blr 

.global doSetView__Q24Game10GameSystemFi
doSetView__Q24Game10GameSystemFi:
/* 801B54D0 001B2410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B54D4 001B2414  7C 08 02 A6 */	mflr r0
/* 801B54D8 001B2418  3C A0 80 4B */	lis r5, "__vt__28Iterator<16GenericObjectMgr>"@ha
/* 801B54DC 001B241C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B54E0 001B2420  38 00 00 00 */	li r0, 0
/* 801B54E4 001B2424  38 A5 1B 5C */	addi r5, r5, "__vt__28Iterator<16GenericObjectMgr>"@l
/* 801B54E8 001B2428  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B54EC 001B242C  28 00 00 00 */	cmplwi r0, 0
/* 801B54F0 001B2430  7C 9F 23 78 */	mr r31, r4
/* 801B54F4 001B2434  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B54F8 001B2438  90 A1 00 08 */	stw r5, 8(r1)
/* 801B54FC 001B243C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B5500 001B2440  90 61 00 10 */	stw r3, 0x10(r1)
/* 801B5504 001B2444  40 82 00 1C */	bne lbl_801B5520
/* 801B5508 001B2448  81 83 00 00 */	lwz r12, 0(r3)
/* 801B550C 001B244C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5510 001B2450  7D 89 03 A6 */	mtctr r12
/* 801B5514 001B2454  4E 80 04 21 */	bctrl 
/* 801B5518 001B2458  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B551C 001B245C  48 00 01 74 */	b lbl_801B5690
lbl_801B5520:
/* 801B5520 001B2460  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5524 001B2464  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5528 001B2468  7D 89 03 A6 */	mtctr r12
/* 801B552C 001B246C  4E 80 04 21 */	bctrl 
/* 801B5530 001B2470  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5534 001B2474  48 00 00 58 */	b lbl_801B558C
lbl_801B5538:
/* 801B5538 001B2478  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B553C 001B247C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5540 001B2480  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5544 001B2484  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5548 001B2488  7D 89 03 A6 */	mtctr r12
/* 801B554C 001B248C  4E 80 04 21 */	bctrl 
/* 801B5550 001B2490  7C 64 1B 78 */	mr r4, r3
/* 801B5554 001B2494  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5558 001B2498  81 83 00 00 */	lwz r12, 0(r3)
/* 801B555C 001B249C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5560 001B24A0  7D 89 03 A6 */	mtctr r12
/* 801B5564 001B24A4  4E 80 04 21 */	bctrl 
/* 801B5568 001B24A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B556C 001B24AC  40 82 01 24 */	bne lbl_801B5690
/* 801B5570 001B24B0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5574 001B24B4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5578 001B24B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B557C 001B24BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5580 001B24C0  7D 89 03 A6 */	mtctr r12
/* 801B5584 001B24C4  4E 80 04 21 */	bctrl 
/* 801B5588 001B24C8  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B558C:
/* 801B558C 001B24CC  81 81 00 08 */	lwz r12, 8(r1)
/* 801B5590 001B24D0  38 61 00 08 */	addi r3, r1, 8
/* 801B5594 001B24D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5598 001B24D8  7D 89 03 A6 */	mtctr r12
/* 801B559C 001B24DC  4E 80 04 21 */	bctrl 
/* 801B55A0 001B24E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B55A4 001B24E4  41 82 FF 94 */	beq lbl_801B5538
/* 801B55A8 001B24E8  48 00 00 E8 */	b lbl_801B5690
lbl_801B55AC:
/* 801B55AC 001B24EC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B55B0 001B24F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B55B4 001B24F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B55B8 001B24F8  7D 89 03 A6 */	mtctr r12
/* 801B55BC 001B24FC  4E 80 04 21 */	bctrl 
/* 801B55C0 001B2500  81 83 00 00 */	lwz r12, 0(r3)
/* 801B55C4 001B2504  7F E4 FB 78 */	mr r4, r31
/* 801B55C8 001B2508  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B55CC 001B250C  7D 89 03 A6 */	mtctr r12
/* 801B55D0 001B2510  4E 80 04 21 */	bctrl 
/* 801B55D4 001B2514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B55D8 001B2518  28 00 00 00 */	cmplwi r0, 0
/* 801B55DC 001B251C  40 82 00 24 */	bne lbl_801B5600
/* 801B55E0 001B2520  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B55E4 001B2524  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B55E8 001B2528  81 83 00 00 */	lwz r12, 0(r3)
/* 801B55EC 001B252C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B55F0 001B2530  7D 89 03 A6 */	mtctr r12
/* 801B55F4 001B2534  4E 80 04 21 */	bctrl 
/* 801B55F8 001B2538  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B55FC 001B253C  48 00 00 94 */	b lbl_801B5690
lbl_801B5600:
/* 801B5600 001B2540  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5604 001B2544  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5608 001B2548  81 83 00 00 */	lwz r12, 0(r3)
/* 801B560C 001B254C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5610 001B2550  7D 89 03 A6 */	mtctr r12
/* 801B5614 001B2554  4E 80 04 21 */	bctrl 
/* 801B5618 001B2558  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B561C 001B255C  48 00 00 58 */	b lbl_801B5674
lbl_801B5620:
/* 801B5620 001B2560  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5624 001B2564  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5628 001B2568  81 83 00 00 */	lwz r12, 0(r3)
/* 801B562C 001B256C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5630 001B2570  7D 89 03 A6 */	mtctr r12
/* 801B5634 001B2574  4E 80 04 21 */	bctrl 
/* 801B5638 001B2578  7C 64 1B 78 */	mr r4, r3
/* 801B563C 001B257C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5640 001B2580  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5644 001B2584  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5648 001B2588  7D 89 03 A6 */	mtctr r12
/* 801B564C 001B258C  4E 80 04 21 */	bctrl 
/* 801B5650 001B2590  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5654 001B2594  40 82 00 3C */	bne lbl_801B5690
/* 801B5658 001B2598  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B565C 001B259C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5660 001B25A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5664 001B25A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5668 001B25A8  7D 89 03 A6 */	mtctr r12
/* 801B566C 001B25AC  4E 80 04 21 */	bctrl 
/* 801B5670 001B25B0  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5674:
/* 801B5674 001B25B4  81 81 00 08 */	lwz r12, 8(r1)
/* 801B5678 001B25B8  38 61 00 08 */	addi r3, r1, 8
/* 801B567C 001B25BC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5680 001B25C0  7D 89 03 A6 */	mtctr r12
/* 801B5684 001B25C4  4E 80 04 21 */	bctrl 
/* 801B5688 001B25C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B568C 001B25CC  41 82 FF 94 */	beq lbl_801B5620
lbl_801B5690:
/* 801B5690 001B25D0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5694 001B25D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5698 001B25D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801B569C 001B25DC  7D 89 03 A6 */	mtctr r12
/* 801B56A0 001B25E0  4E 80 04 21 */	bctrl 
/* 801B56A4 001B25E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B56A8 001B25E8  7C 04 18 40 */	cmplw r4, r3
/* 801B56AC 001B25EC  40 82 FF 00 */	bne lbl_801B55AC
/* 801B56B0 001B25F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B56B4 001B25F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B56B8 001B25F8  7C 08 03 A6 */	mtlr r0
/* 801B56BC 001B25FC  38 21 00 20 */	addi r1, r1, 0x20
/* 801B56C0 001B2600  4E 80 00 20 */	blr 

.global doViewCalc__Q24Game10GameSystemFv
doViewCalc__Q24Game10GameSystemFv:
/* 801B56C4 001B2604  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B56C8 001B2608  7C 08 02 A6 */	mflr r0
/* 801B56CC 001B260C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B56D0 001B2610  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B56D4 001B2614  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801B56D8 001B2618  88 0D 84 10 */	lbz r0, sOptDraw__Q24Game15BaseGameSection@sda21(r13)
/* 801B56DC 001B261C  28 00 00 01 */	cmplwi r0, 1
/* 801B56E0 001B2620  41 81 01 D0 */	bgt lbl_801B58B0
/* 801B56E4 001B2624  38 00 00 00 */	li r0, 0
/* 801B56E8 001B2628  3C 80 80 4B */	lis r4, "__vt__28Iterator<16GenericObjectMgr>"@ha
/* 801B56EC 001B262C  38 84 1B 5C */	addi r4, r4, "__vt__28Iterator<16GenericObjectMgr>"@l
/* 801B56F0 001B2630  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B56F4 001B2634  28 00 00 00 */	cmplwi r0, 0
/* 801B56F8 001B2638  90 81 00 18 */	stw r4, 0x18(r1)
/* 801B56FC 001B263C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801B5700 001B2640  90 61 00 20 */	stw r3, 0x20(r1)
/* 801B5704 001B2644  40 82 00 1C */	bne lbl_801B5720
/* 801B5708 001B2648  81 83 00 00 */	lwz r12, 0(r3)
/* 801B570C 001B264C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5710 001B2650  7D 89 03 A6 */	mtctr r12
/* 801B5714 001B2654  4E 80 04 21 */	bctrl 
/* 801B5718 001B2658  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801B571C 001B265C  48 00 01 70 */	b lbl_801B588C
lbl_801B5720:
/* 801B5720 001B2660  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5724 001B2664  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5728 001B2668  7D 89 03 A6 */	mtctr r12
/* 801B572C 001B266C  4E 80 04 21 */	bctrl 
/* 801B5730 001B2670  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801B5734 001B2674  48 00 00 58 */	b lbl_801B578C
lbl_801B5738:
/* 801B5738 001B2678  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B573C 001B267C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801B5740 001B2680  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5744 001B2684  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5748 001B2688  7D 89 03 A6 */	mtctr r12
/* 801B574C 001B268C  4E 80 04 21 */	bctrl 
/* 801B5750 001B2690  7C 64 1B 78 */	mr r4, r3
/* 801B5754 001B2694  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801B5758 001B2698  81 83 00 00 */	lwz r12, 0(r3)
/* 801B575C 001B269C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5760 001B26A0  7D 89 03 A6 */	mtctr r12
/* 801B5764 001B26A4  4E 80 04 21 */	bctrl 
/* 801B5768 001B26A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B576C 001B26AC  40 82 01 20 */	bne lbl_801B588C
/* 801B5770 001B26B0  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B5774 001B26B4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801B5778 001B26B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B577C 001B26BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5780 001B26C0  7D 89 03 A6 */	mtctr r12
/* 801B5784 001B26C4  4E 80 04 21 */	bctrl 
/* 801B5788 001B26C8  90 61 00 1C */	stw r3, 0x1c(r1)
lbl_801B578C:
/* 801B578C 001B26CC  81 81 00 18 */	lwz r12, 0x18(r1)
/* 801B5790 001B26D0  38 61 00 18 */	addi r3, r1, 0x18
/* 801B5794 001B26D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5798 001B26D8  7D 89 03 A6 */	mtctr r12
/* 801B579C 001B26DC  4E 80 04 21 */	bctrl 
/* 801B57A0 001B26E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B57A4 001B26E4  41 82 FF 94 */	beq lbl_801B5738
/* 801B57A8 001B26E8  48 00 00 E4 */	b lbl_801B588C
lbl_801B57AC:
/* 801B57AC 001B26EC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B57B0 001B26F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B57B4 001B26F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B57B8 001B26F8  7D 89 03 A6 */	mtctr r12
/* 801B57BC 001B26FC  4E 80 04 21 */	bctrl 
/* 801B57C0 001B2700  81 83 00 00 */	lwz r12, 0(r3)
/* 801B57C4 001B2704  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B57C8 001B2708  7D 89 03 A6 */	mtctr r12
/* 801B57CC 001B270C  4E 80 04 21 */	bctrl 
/* 801B57D0 001B2710  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B57D4 001B2714  28 00 00 00 */	cmplwi r0, 0
/* 801B57D8 001B2718  40 82 00 24 */	bne lbl_801B57FC
/* 801B57DC 001B271C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B57E0 001B2720  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801B57E4 001B2724  81 83 00 00 */	lwz r12, 0(r3)
/* 801B57E8 001B2728  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B57EC 001B272C  7D 89 03 A6 */	mtctr r12
/* 801B57F0 001B2730  4E 80 04 21 */	bctrl 
/* 801B57F4 001B2734  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801B57F8 001B2738  48 00 00 94 */	b lbl_801B588C
lbl_801B57FC:
/* 801B57FC 001B273C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B5800 001B2740  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801B5804 001B2744  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5808 001B2748  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B580C 001B274C  7D 89 03 A6 */	mtctr r12
/* 801B5810 001B2750  4E 80 04 21 */	bctrl 
/* 801B5814 001B2754  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801B5818 001B2758  48 00 00 58 */	b lbl_801B5870
lbl_801B581C:
/* 801B581C 001B275C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B5820 001B2760  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801B5824 001B2764  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5828 001B2768  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B582C 001B276C  7D 89 03 A6 */	mtctr r12
/* 801B5830 001B2770  4E 80 04 21 */	bctrl 
/* 801B5834 001B2774  7C 64 1B 78 */	mr r4, r3
/* 801B5838 001B2778  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801B583C 001B277C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5840 001B2780  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5844 001B2784  7D 89 03 A6 */	mtctr r12
/* 801B5848 001B2788  4E 80 04 21 */	bctrl 
/* 801B584C 001B278C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5850 001B2790  40 82 00 3C */	bne lbl_801B588C
/* 801B5854 001B2794  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B5858 001B2798  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801B585C 001B279C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5860 001B27A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5864 001B27A4  7D 89 03 A6 */	mtctr r12
/* 801B5868 001B27A8  4E 80 04 21 */	bctrl 
/* 801B586C 001B27AC  90 61 00 1C */	stw r3, 0x1c(r1)
lbl_801B5870:
/* 801B5870 001B27B0  81 81 00 18 */	lwz r12, 0x18(r1)
/* 801B5874 001B27B4  38 61 00 18 */	addi r3, r1, 0x18
/* 801B5878 001B27B8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B587C 001B27BC  7D 89 03 A6 */	mtctr r12
/* 801B5880 001B27C0  4E 80 04 21 */	bctrl 
/* 801B5884 001B27C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5888 001B27C8  41 82 FF 94 */	beq lbl_801B581C
lbl_801B588C:
/* 801B588C 001B27CC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B5890 001B27D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5894 001B27D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801B5898 001B27D8  7D 89 03 A6 */	mtctr r12
/* 801B589C 001B27DC  4E 80 04 21 */	bctrl 
/* 801B58A0 001B27E0  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801B58A4 001B27E4  7C 04 18 40 */	cmplw r4, r3
/* 801B58A8 001B27E8  40 82 FF 04 */	bne lbl_801B57AC
/* 801B58AC 001B27EC  48 00 02 04 */	b lbl_801B5AB0
lbl_801B58B0:
/* 801B58B0 001B27F0  38 00 00 00 */	li r0, 0
/* 801B58B4 001B27F4  88 AD 86 80 */	lbz r5, viewCalcMode__Q28SysShape5Model@sda21(r13)
/* 801B58B8 001B27F8  3C 80 80 4B */	lis r4, "__vt__28Iterator<16GenericObjectMgr>"@ha
/* 801B58BC 001B27FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B58C0 001B2800  38 84 1B 5C */	addi r4, r4, "__vt__28Iterator<16GenericObjectMgr>"@l
/* 801B58C4 001B2804  7C A5 00 34 */	cntlzw r5, r5
/* 801B58C8 001B2808  28 00 00 00 */	cmplwi r0, 0
/* 801B58CC 001B280C  90 81 00 08 */	stw r4, 8(r1)
/* 801B58D0 001B2810  54 BE D9 7E */	srwi r30, r5, 5
/* 801B58D4 001B2814  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B58D8 001B2818  90 61 00 10 */	stw r3, 0x10(r1)
/* 801B58DC 001B281C  40 82 00 1C */	bne lbl_801B58F8
/* 801B58E0 001B2820  81 83 00 00 */	lwz r12, 0(r3)
/* 801B58E4 001B2824  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B58E8 001B2828  7D 89 03 A6 */	mtctr r12
/* 801B58EC 001B282C  4E 80 04 21 */	bctrl 
/* 801B58F0 001B2830  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B58F4 001B2834  48 00 00 8C */	b lbl_801B5980
lbl_801B58F8:
/* 801B58F8 001B2838  81 83 00 00 */	lwz r12, 0(r3)
/* 801B58FC 001B283C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5900 001B2840  7D 89 03 A6 */	mtctr r12
/* 801B5904 001B2844  4E 80 04 21 */	bctrl 
/* 801B5908 001B2848  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B590C 001B284C  48 00 00 58 */	b lbl_801B5964
lbl_801B5910:
/* 801B5910 001B2850  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5914 001B2854  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5918 001B2858  81 83 00 00 */	lwz r12, 0(r3)
/* 801B591C 001B285C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5920 001B2860  7D 89 03 A6 */	mtctr r12
/* 801B5924 001B2864  4E 80 04 21 */	bctrl 
/* 801B5928 001B2868  7C 64 1B 78 */	mr r4, r3
/* 801B592C 001B286C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5930 001B2870  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5934 001B2874  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5938 001B2878  7D 89 03 A6 */	mtctr r12
/* 801B593C 001B287C  4E 80 04 21 */	bctrl 
/* 801B5940 001B2880  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5944 001B2884  40 82 00 3C */	bne lbl_801B5980
/* 801B5948 001B2888  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B594C 001B288C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5950 001B2890  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5954 001B2894  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5958 001B2898  7D 89 03 A6 */	mtctr r12
/* 801B595C 001B289C  4E 80 04 21 */	bctrl 
/* 801B5960 001B28A0  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5964:
/* 801B5964 001B28A4  81 81 00 08 */	lwz r12, 8(r1)
/* 801B5968 001B28A8  38 61 00 08 */	addi r3, r1, 8
/* 801B596C 001B28AC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5970 001B28B0  7D 89 03 A6 */	mtctr r12
/* 801B5974 001B28B4  4E 80 04 21 */	bctrl 
/* 801B5978 001B28B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B597C 001B28BC  41 82 FF 94 */	beq lbl_801B5910
lbl_801B5980:
/* 801B5980 001B28C0  57 DF 06 3E */	clrlwi r31, r30, 0x18
/* 801B5984 001B28C4  48 00 01 0C */	b lbl_801B5A90
lbl_801B5988:
/* 801B5988 001B28C8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B598C 001B28CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5990 001B28D0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5994 001B28D4  7D 89 03 A6 */	mtctr r12
/* 801B5998 001B28D8  4E 80 04 21 */	bctrl 
/* 801B599C 001B28DC  28 1F 00 00 */	cmplwi r31, 0
/* 801B59A0 001B28E0  7C 7E 1B 78 */	mr r30, r3
/* 801B59A4 001B28E4  40 82 00 1C */	bne lbl_801B59C0
/* 801B59A8 001B28E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B59AC 001B28EC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801B59B0 001B28F0  7D 89 03 A6 */	mtctr r12
/* 801B59B4 001B28F4  4E 80 04 21 */	bctrl 
/* 801B59B8 001B28F8  2C 03 00 01 */	cmpwi r3, 1
/* 801B59BC 001B28FC  41 82 00 18 */	beq lbl_801B59D4
lbl_801B59C0:
/* 801B59C0 001B2900  7F C3 F3 78 */	mr r3, r30
/* 801B59C4 001B2904  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B59C8 001B2908  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B59CC 001B290C  7D 89 03 A6 */	mtctr r12
/* 801B59D0 001B2910  4E 80 04 21 */	bctrl 
lbl_801B59D4:
/* 801B59D4 001B2914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B59D8 001B2918  28 00 00 00 */	cmplwi r0, 0
/* 801B59DC 001B291C  40 82 00 24 */	bne lbl_801B5A00
/* 801B59E0 001B2920  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B59E4 001B2924  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B59E8 001B2928  81 83 00 00 */	lwz r12, 0(r3)
/* 801B59EC 001B292C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B59F0 001B2930  7D 89 03 A6 */	mtctr r12
/* 801B59F4 001B2934  4E 80 04 21 */	bctrl 
/* 801B59F8 001B2938  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B59FC 001B293C  48 00 00 94 */	b lbl_801B5A90
lbl_801B5A00:
/* 801B5A00 001B2940  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5A04 001B2944  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5A08 001B2948  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5A0C 001B294C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5A10 001B2950  7D 89 03 A6 */	mtctr r12
/* 801B5A14 001B2954  4E 80 04 21 */	bctrl 
/* 801B5A18 001B2958  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5A1C 001B295C  48 00 00 58 */	b lbl_801B5A74
lbl_801B5A20:
/* 801B5A20 001B2960  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5A24 001B2964  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5A28 001B2968  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5A2C 001B296C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5A30 001B2970  7D 89 03 A6 */	mtctr r12
/* 801B5A34 001B2974  4E 80 04 21 */	bctrl 
/* 801B5A38 001B2978  7C 64 1B 78 */	mr r4, r3
/* 801B5A3C 001B297C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5A40 001B2980  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5A44 001B2984  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5A48 001B2988  7D 89 03 A6 */	mtctr r12
/* 801B5A4C 001B298C  4E 80 04 21 */	bctrl 
/* 801B5A50 001B2990  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5A54 001B2994  40 82 00 3C */	bne lbl_801B5A90
/* 801B5A58 001B2998  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5A5C 001B299C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5A60 001B29A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5A64 001B29A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5A68 001B29A8  7D 89 03 A6 */	mtctr r12
/* 801B5A6C 001B29AC  4E 80 04 21 */	bctrl 
/* 801B5A70 001B29B0  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5A74:
/* 801B5A74 001B29B4  81 81 00 08 */	lwz r12, 8(r1)
/* 801B5A78 001B29B8  38 61 00 08 */	addi r3, r1, 8
/* 801B5A7C 001B29BC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5A80 001B29C0  7D 89 03 A6 */	mtctr r12
/* 801B5A84 001B29C4  4E 80 04 21 */	bctrl 
/* 801B5A88 001B29C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5A8C 001B29CC  41 82 FF 94 */	beq lbl_801B5A20
lbl_801B5A90:
/* 801B5A90 001B29D0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5A94 001B29D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5A98 001B29D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801B5A9C 001B29DC  7D 89 03 A6 */	mtctr r12
/* 801B5AA0 001B29E0  4E 80 04 21 */	bctrl 
/* 801B5AA4 001B29E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5AA8 001B29E8  7C 04 18 40 */	cmplw r4, r3
/* 801B5AAC 001B29EC  40 82 FE DC */	bne lbl_801B5988
lbl_801B5AB0:
/* 801B5AB0 001B29F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B5AB4 001B29F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B5AB8 001B29F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801B5ABC 001B29FC  7C 08 03 A6 */	mtlr r0
/* 801B5AC0 001B2A00  38 21 00 30 */	addi r1, r1, 0x30
/* 801B5AC4 001B2A04  4E 80 00 20 */	blr 

.global doSimulation__Q24Game10GameSystemFf
doSimulation__Q24Game10GameSystemFf:
/* 801B5AC8 001B2A08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B5ACC 001B2A0C  7C 08 02 A6 */	mflr r0
/* 801B5AD0 001B2A10  3C 80 80 4B */	lis r4, "__vt__28Iterator<16GenericObjectMgr>"@ha
/* 801B5AD4 001B2A14  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B5AD8 001B2A18  38 00 00 00 */	li r0, 0
/* 801B5ADC 001B2A1C  38 84 1B 5C */	addi r4, r4, "__vt__28Iterator<16GenericObjectMgr>"@l
/* 801B5AE0 001B2A20  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 801B5AE4 001B2A24  FF E0 08 90 */	fmr f31, f1
/* 801B5AE8 001B2A28  28 00 00 00 */	cmplwi r0, 0
/* 801B5AEC 001B2A2C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801B5AF0 001B2A30  7C 7F 1B 78 */	mr r31, r3
/* 801B5AF4 001B2A34  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801B5AF8 001B2A38  90 81 00 08 */	stw r4, 8(r1)
/* 801B5AFC 001B2A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5B00 001B2A40  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B5B04 001B2A44  93 E1 00 10 */	stw r31, 0x10(r1)
/* 801B5B08 001B2A48  40 82 00 1C */	bne lbl_801B5B24
/* 801B5B0C 001B2A4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5B10 001B2A50  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5B14 001B2A54  7D 89 03 A6 */	mtctr r12
/* 801B5B18 001B2A58  4E 80 04 21 */	bctrl 
/* 801B5B1C 001B2A5C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5B20 001B2A60  48 00 01 F0 */	b lbl_801B5D10
lbl_801B5B24:
/* 801B5B24 001B2A64  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5B28 001B2A68  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5B2C 001B2A6C  7D 89 03 A6 */	mtctr r12
/* 801B5B30 001B2A70  4E 80 04 21 */	bctrl 
/* 801B5B34 001B2A74  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5B38 001B2A78  48 00 00 58 */	b lbl_801B5B90
lbl_801B5B3C:
/* 801B5B3C 001B2A7C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5B40 001B2A80  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5B44 001B2A84  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5B48 001B2A88  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5B4C 001B2A8C  7D 89 03 A6 */	mtctr r12
/* 801B5B50 001B2A90  4E 80 04 21 */	bctrl 
/* 801B5B54 001B2A94  7C 64 1B 78 */	mr r4, r3
/* 801B5B58 001B2A98  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5B5C 001B2A9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5B60 001B2AA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5B64 001B2AA4  7D 89 03 A6 */	mtctr r12
/* 801B5B68 001B2AA8  4E 80 04 21 */	bctrl 
/* 801B5B6C 001B2AAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5B70 001B2AB0  40 82 01 A0 */	bne lbl_801B5D10
/* 801B5B74 001B2AB4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5B78 001B2AB8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5B7C 001B2ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5B80 001B2AC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5B84 001B2AC4  7D 89 03 A6 */	mtctr r12
/* 801B5B88 001B2AC8  4E 80 04 21 */	bctrl 
/* 801B5B8C 001B2ACC  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5B90:
/* 801B5B90 001B2AD0  81 81 00 08 */	lwz r12, 8(r1)
/* 801B5B94 001B2AD4  38 61 00 08 */	addi r3, r1, 8
/* 801B5B98 001B2AD8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5B9C 001B2ADC  7D 89 03 A6 */	mtctr r12
/* 801B5BA0 001B2AE0  4E 80 04 21 */	bctrl 
/* 801B5BA4 001B2AE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5BA8 001B2AE8  41 82 FF 94 */	beq lbl_801B5B3C
/* 801B5BAC 001B2AEC  48 00 01 64 */	b lbl_801B5D10
lbl_801B5BB0:
/* 801B5BB0 001B2AF0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5BB4 001B2AF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5BB8 001B2AF8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5BBC 001B2AFC  7D 89 03 A6 */	mtctr r12
/* 801B5BC0 001B2B00  4E 80 04 21 */	bctrl 
/* 801B5BC4 001B2B04  88 1F 00 4B */	lbz r0, 0x4b(r31)
/* 801B5BC8 001B2B08  7C 7E 1B 78 */	mr r30, r3
/* 801B5BCC 001B2B0C  28 00 00 00 */	cmplwi r0, 0
/* 801B5BD0 001B2B10  40 82 00 18 */	bne lbl_801B5BE8
/* 801B5BD4 001B2B14  88 1F 00 4C */	lbz r0, 0x4c(r31)
/* 801B5BD8 001B2B18  28 00 00 00 */	cmplwi r0, 0
/* 801B5BDC 001B2B1C  41 82 00 0C */	beq lbl_801B5BE8
/* 801B5BE0 001B2B20  38 00 00 01 */	li r0, 1
/* 801B5BE4 001B2B24  48 00 00 08 */	b lbl_801B5BEC
lbl_801B5BE8:
/* 801B5BE8 001B2B28  38 00 00 00 */	li r0, 0
lbl_801B5BEC:
/* 801B5BEC 001B2B2C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801B5BF0 001B2B30  41 82 00 24 */	beq lbl_801B5C14
/* 801B5BF4 001B2B34  7F C3 F3 78 */	mr r3, r30
/* 801B5BF8 001B2B38  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B5BFC 001B2B3C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B5C00 001B2B40  7D 89 03 A6 */	mtctr r12
/* 801B5C04 001B2B44  4E 80 04 21 */	bctrl 
/* 801B5C08 001B2B48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5C0C 001B2B4C  40 82 00 48 */	bne lbl_801B5C54
/* 801B5C10 001B2B50  48 00 00 2C */	b lbl_801B5C3C
lbl_801B5C14:
/* 801B5C14 001B2B54  88 1F 00 4A */	lbz r0, 0x4a(r31)
/* 801B5C18 001B2B58  28 00 00 00 */	cmplwi r0, 0
/* 801B5C1C 001B2B5C  41 82 00 20 */	beq lbl_801B5C3C
/* 801B5C20 001B2B60  7F C3 F3 78 */	mr r3, r30
/* 801B5C24 001B2B64  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B5C28 001B2B68  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801B5C2C 001B2B6C  7D 89 03 A6 */	mtctr r12
/* 801B5C30 001B2B70  4E 80 04 21 */	bctrl 
/* 801B5C34 001B2B74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5C38 001B2B78  40 82 00 1C */	bne lbl_801B5C54
lbl_801B5C3C:
/* 801B5C3C 001B2B7C  7F C3 F3 78 */	mr r3, r30
/* 801B5C40 001B2B80  FC 20 F8 90 */	fmr f1, f31
/* 801B5C44 001B2B84  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B5C48 001B2B88  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5C4C 001B2B8C  7D 89 03 A6 */	mtctr r12
/* 801B5C50 001B2B90  4E 80 04 21 */	bctrl 
lbl_801B5C54:
/* 801B5C54 001B2B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5C58 001B2B98  28 00 00 00 */	cmplwi r0, 0
/* 801B5C5C 001B2B9C  40 82 00 24 */	bne lbl_801B5C80
/* 801B5C60 001B2BA0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5C64 001B2BA4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5C68 001B2BA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5C6C 001B2BAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5C70 001B2BB0  7D 89 03 A6 */	mtctr r12
/* 801B5C74 001B2BB4  4E 80 04 21 */	bctrl 
/* 801B5C78 001B2BB8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5C7C 001B2BBC  48 00 00 94 */	b lbl_801B5D10
lbl_801B5C80:
/* 801B5C80 001B2BC0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5C84 001B2BC4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5C88 001B2BC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5C8C 001B2BCC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5C90 001B2BD0  7D 89 03 A6 */	mtctr r12
/* 801B5C94 001B2BD4  4E 80 04 21 */	bctrl 
/* 801B5C98 001B2BD8  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5C9C 001B2BDC  48 00 00 58 */	b lbl_801B5CF4
lbl_801B5CA0:
/* 801B5CA0 001B2BE0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5CA4 001B2BE4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5CA8 001B2BE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5CAC 001B2BEC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5CB0 001B2BF0  7D 89 03 A6 */	mtctr r12
/* 801B5CB4 001B2BF4  4E 80 04 21 */	bctrl 
/* 801B5CB8 001B2BF8  7C 64 1B 78 */	mr r4, r3
/* 801B5CBC 001B2BFC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5CC0 001B2C00  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5CC4 001B2C04  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5CC8 001B2C08  7D 89 03 A6 */	mtctr r12
/* 801B5CCC 001B2C0C  4E 80 04 21 */	bctrl 
/* 801B5CD0 001B2C10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5CD4 001B2C14  40 82 00 3C */	bne lbl_801B5D10
/* 801B5CD8 001B2C18  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5CDC 001B2C1C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5CE0 001B2C20  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5CE4 001B2C24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5CE8 001B2C28  7D 89 03 A6 */	mtctr r12
/* 801B5CEC 001B2C2C  4E 80 04 21 */	bctrl 
/* 801B5CF0 001B2C30  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5CF4:
/* 801B5CF4 001B2C34  81 81 00 08 */	lwz r12, 8(r1)
/* 801B5CF8 001B2C38  38 61 00 08 */	addi r3, r1, 8
/* 801B5CFC 001B2C3C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5D00 001B2C40  7D 89 03 A6 */	mtctr r12
/* 801B5D04 001B2C44  4E 80 04 21 */	bctrl 
/* 801B5D08 001B2C48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5D0C 001B2C4C  41 82 FF 94 */	beq lbl_801B5CA0
lbl_801B5D10:
/* 801B5D10 001B2C50  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5D14 001B2C54  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5D18 001B2C58  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801B5D1C 001B2C5C  7D 89 03 A6 */	mtctr r12
/* 801B5D20 001B2C60  4E 80 04 21 */	bctrl 
/* 801B5D24 001B2C64  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5D28 001B2C68  7C 04 18 40 */	cmplw r4, r3
/* 801B5D2C 001B2C6C  40 82 FE 84 */	bne lbl_801B5BB0
/* 801B5D30 001B2C70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B5D34 001B2C74  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 801B5D38 001B2C78  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801B5D3C 001B2C7C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801B5D40 001B2C80  7C 08 03 A6 */	mtlr r0
/* 801B5D44 001B2C84  38 21 00 30 */	addi r1, r1, 0x30
/* 801B5D48 001B2C88  4E 80 00 20 */	blr 

.global doSimpleDraw__Q24Game10GameSystemFP8Viewport
doSimpleDraw__Q24Game10GameSystemFP8Viewport:
/* 801B5D4C 001B2C8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B5D50 001B2C90  7C 08 02 A6 */	mflr r0
/* 801B5D54 001B2C94  3C A0 80 4B */	lis r5, "__vt__28Iterator<16GenericObjectMgr>"@ha
/* 801B5D58 001B2C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B5D5C 001B2C9C  38 00 00 00 */	li r0, 0
/* 801B5D60 001B2CA0  38 A5 1B 5C */	addi r5, r5, "__vt__28Iterator<16GenericObjectMgr>"@l
/* 801B5D64 001B2CA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B5D68 001B2CA8  28 00 00 00 */	cmplwi r0, 0
/* 801B5D6C 001B2CAC  7C 9F 23 78 */	mr r31, r4
/* 801B5D70 001B2CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5D74 001B2CB4  90 A1 00 08 */	stw r5, 8(r1)
/* 801B5D78 001B2CB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B5D7C 001B2CBC  90 61 00 10 */	stw r3, 0x10(r1)
/* 801B5D80 001B2CC0  40 82 00 1C */	bne lbl_801B5D9C
/* 801B5D84 001B2CC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5D88 001B2CC8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5D8C 001B2CCC  7D 89 03 A6 */	mtctr r12
/* 801B5D90 001B2CD0  4E 80 04 21 */	bctrl 
/* 801B5D94 001B2CD4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5D98 001B2CD8  48 00 01 74 */	b lbl_801B5F0C
lbl_801B5D9C:
/* 801B5D9C 001B2CDC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5DA0 001B2CE0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5DA4 001B2CE4  7D 89 03 A6 */	mtctr r12
/* 801B5DA8 001B2CE8  4E 80 04 21 */	bctrl 
/* 801B5DAC 001B2CEC  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5DB0 001B2CF0  48 00 00 58 */	b lbl_801B5E08
lbl_801B5DB4:
/* 801B5DB4 001B2CF4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5DB8 001B2CF8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5DBC 001B2CFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5DC0 001B2D00  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5DC4 001B2D04  7D 89 03 A6 */	mtctr r12
/* 801B5DC8 001B2D08  4E 80 04 21 */	bctrl 
/* 801B5DCC 001B2D0C  7C 64 1B 78 */	mr r4, r3
/* 801B5DD0 001B2D10  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5DD4 001B2D14  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5DD8 001B2D18  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5DDC 001B2D1C  7D 89 03 A6 */	mtctr r12
/* 801B5DE0 001B2D20  4E 80 04 21 */	bctrl 
/* 801B5DE4 001B2D24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5DE8 001B2D28  40 82 01 24 */	bne lbl_801B5F0C
/* 801B5DEC 001B2D2C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5DF0 001B2D30  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5DF4 001B2D34  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5DF8 001B2D38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5DFC 001B2D3C  7D 89 03 A6 */	mtctr r12
/* 801B5E00 001B2D40  4E 80 04 21 */	bctrl 
/* 801B5E04 001B2D44  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5E08:
/* 801B5E08 001B2D48  81 81 00 08 */	lwz r12, 8(r1)
/* 801B5E0C 001B2D4C  38 61 00 08 */	addi r3, r1, 8
/* 801B5E10 001B2D50  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5E14 001B2D54  7D 89 03 A6 */	mtctr r12
/* 801B5E18 001B2D58  4E 80 04 21 */	bctrl 
/* 801B5E1C 001B2D5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5E20 001B2D60  41 82 FF 94 */	beq lbl_801B5DB4
/* 801B5E24 001B2D64  48 00 00 E8 */	b lbl_801B5F0C
lbl_801B5E28:
/* 801B5E28 001B2D68  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5E2C 001B2D6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5E30 001B2D70  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5E34 001B2D74  7D 89 03 A6 */	mtctr r12
/* 801B5E38 001B2D78  4E 80 04 21 */	bctrl 
/* 801B5E3C 001B2D7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5E40 001B2D80  7F E4 FB 78 */	mr r4, r31
/* 801B5E44 001B2D84  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5E48 001B2D88  7D 89 03 A6 */	mtctr r12
/* 801B5E4C 001B2D8C  4E 80 04 21 */	bctrl 
/* 801B5E50 001B2D90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5E54 001B2D94  28 00 00 00 */	cmplwi r0, 0
/* 801B5E58 001B2D98  40 82 00 24 */	bne lbl_801B5E7C
/* 801B5E5C 001B2D9C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5E60 001B2DA0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5E64 001B2DA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5E68 001B2DA8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5E6C 001B2DAC  7D 89 03 A6 */	mtctr r12
/* 801B5E70 001B2DB0  4E 80 04 21 */	bctrl 
/* 801B5E74 001B2DB4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5E78 001B2DB8  48 00 00 94 */	b lbl_801B5F0C
lbl_801B5E7C:
/* 801B5E7C 001B2DBC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5E80 001B2DC0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5E84 001B2DC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5E88 001B2DC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5E8C 001B2DCC  7D 89 03 A6 */	mtctr r12
/* 801B5E90 001B2DD0  4E 80 04 21 */	bctrl 
/* 801B5E94 001B2DD4  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B5E98 001B2DD8  48 00 00 58 */	b lbl_801B5EF0
lbl_801B5E9C:
/* 801B5E9C 001B2DDC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5EA0 001B2DE0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5EA4 001B2DE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5EA8 001B2DE8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801B5EAC 001B2DEC  7D 89 03 A6 */	mtctr r12
/* 801B5EB0 001B2DF0  4E 80 04 21 */	bctrl 
/* 801B5EB4 001B2DF4  7C 64 1B 78 */	mr r4, r3
/* 801B5EB8 001B2DF8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B5EBC 001B2DFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5EC0 001B2E00  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5EC4 001B2E04  7D 89 03 A6 */	mtctr r12
/* 801B5EC8 001B2E08  4E 80 04 21 */	bctrl 
/* 801B5ECC 001B2E0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5ED0 001B2E10  40 82 00 3C */	bne lbl_801B5F0C
/* 801B5ED4 001B2E14  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5ED8 001B2E18  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5EDC 001B2E1C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5EE0 001B2E20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801B5EE4 001B2E24  7D 89 03 A6 */	mtctr r12
/* 801B5EE8 001B2E28  4E 80 04 21 */	bctrl 
/* 801B5EEC 001B2E2C  90 61 00 0C */	stw r3, 0xc(r1)
lbl_801B5EF0:
/* 801B5EF0 001B2E30  81 81 00 08 */	lwz r12, 8(r1)
/* 801B5EF4 001B2E34  38 61 00 08 */	addi r3, r1, 8
/* 801B5EF8 001B2E38  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801B5EFC 001B2E3C  7D 89 03 A6 */	mtctr r12
/* 801B5F00 001B2E40  4E 80 04 21 */	bctrl 
/* 801B5F04 001B2E44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B5F08 001B2E48  41 82 FF 94 */	beq lbl_801B5E9C
lbl_801B5F0C:
/* 801B5F0C 001B2E4C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B5F10 001B2E50  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5F14 001B2E54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801B5F18 001B2E58  7D 89 03 A6 */	mtctr r12
/* 801B5F1C 001B2E5C  4E 80 04 21 */	bctrl 
/* 801B5F20 001B2E60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B5F24 001B2E64  7C 04 18 40 */	cmplw r4, r3
/* 801B5F28 001B2E68  40 82 FF 00 */	bne lbl_801B5E28
/* 801B5F2C 001B2E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B5F30 001B2E70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B5F34 001B2E74  7C 08 03 A6 */	mtlr r0
/* 801B5F38 001B2E78  38 21 00 20 */	addi r1, r1, 0x20
/* 801B5F3C 001B2E7C  4E 80 00 20 */	blr 

.global doDirectDraw__Q24Game10GameSystemFR8Graphics
doDirectDraw__Q24Game10GameSystemFR8Graphics:
/* 801B5F40 001B2E80  4E 80 00 20 */	blr 

.global directDraw__Q24Game10GameSystemFR8Graphics
directDraw__Q24Game10GameSystemFR8Graphics:
/* 801B5F44 001B2E84  4E 80 00 20 */	blr 

.global addObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
addObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr:
/* 801B5F48 001B2E88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B5F4C 001B2E8C  7C 08 02 A6 */	mflr r0
/* 801B5F50 001B2E90  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B5F54 001B2E94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B5F58 001B2E98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B5F5C 001B2E9C  7C 9E 23 78 */	mr r30, r4
/* 801B5F60 001B2EA0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801B5F64 001B2EA4  7C 7D 1B 78 */	mr r29, r3
/* 801B5F68 001B2EA8  38 60 00 1C */	li r3, 0x1c
/* 801B5F6C 001B2EAC  4B E6 DF 39 */	bl __nw__FUl
/* 801B5F70 001B2EB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801B5F74 001B2EB4  41 82 00 14 */	beq lbl_801B5F88
/* 801B5F78 001B2EB8  48 25 B4 19 */	bl __ct__5CNodeFv
/* 801B5F7C 001B2EBC  3C 60 80 4B */	lis r3, "__vt__31TObjectNode<16GenericObjectMgr>"@ha
/* 801B5F80 001B2EC0  38 03 1B A4 */	addi r0, r3, "__vt__31TObjectNode<16GenericObjectMgr>"@l
/* 801B5F84 001B2EC4  90 1F 00 00 */	stw r0, 0(r31)
lbl_801B5F88:
/* 801B5F88 001B2EC8  93 DF 00 18 */	stw r30, 0x18(r31)
/* 801B5F8C 001B2ECC  7F E4 FB 78 */	mr r4, r31
/* 801B5F90 001B2ED0  38 7D 00 20 */	addi r3, r29, 0x20
/* 801B5F94 001B2ED4  48 25 B4 75 */	bl add__5CNodeFP5CNode
/* 801B5F98 001B2ED8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B5F9C 001B2EDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B5FA0 001B2EE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B5FA4 001B2EE4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801B5FA8 001B2EE8  7C 08 03 A6 */	mtlr r0
/* 801B5FAC 001B2EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 801B5FB0 001B2EF0  4E 80 00 20 */	blr 

.global detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr
detachObjectMgr__Q24Game10GameSystemFP16GenericObjectMgr:
/* 801B5FB4 001B2EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5FB8 001B2EF8  7C 08 02 A6 */	mflr r0
/* 801B5FBC 001B2EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5FC0 001B2F00  48 00 02 4D */	bl "delNode__33NodeObjectMgr<16GenericObjectMgr>FP16GenericObjectMgr"
/* 801B5FC4 001B2F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5FC8 001B2F08  7C 08 03 A6 */	mtlr r0
/* 801B5FCC 001B2F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5FD0 001B2F10  4E 80 00 20 */	blr 

.global "addObjectMgr_reuse__Q24Game10GameSystemFP31TObjectNode<16GenericObjectMgr>"
"addObjectMgr_reuse__Q24Game10GameSystemFP31TObjectNode<16GenericObjectMgr>":
/* 801B5FD4 001B2F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5FD8 001B2F18  7C 08 02 A6 */	mflr r0
/* 801B5FDC 001B2F1C  38 63 00 20 */	addi r3, r3, 0x20
/* 801B5FE0 001B2F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5FE4 001B2F24  48 25 B4 25 */	bl add__5CNodeFP5CNode
/* 801B5FE8 001B2F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5FEC 001B2F2C  7C 08 03 A6 */	mtlr r0
/* 801B5FF0 001B2F30  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5FF4 001B2F34  4E 80 00 20 */	blr 

.global detachObjectMgr_reuse__Q24Game10GameSystemFP16GenericObjectMgr
detachObjectMgr_reuse__Q24Game10GameSystemFP16GenericObjectMgr:
/* 801B5FF8 001B2F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5FFC 001B2F3C  7C 08 02 A6 */	mflr r0
/* 801B6000 001B2F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B6004 001B2F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B6008 001B2F48  83 E3 00 30 */	lwz r31, 0x30(r3)
/* 801B600C 001B2F4C  48 00 00 24 */	b lbl_801B6030
lbl_801B6010:
/* 801B6010 001B2F50  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 801B6014 001B2F54  7C 00 20 40 */	cmplw r0, r4
/* 801B6018 001B2F58  40 82 00 14 */	bne lbl_801B602C
/* 801B601C 001B2F5C  7F E3 FB 78 */	mr r3, r31
/* 801B6020 001B2F60  48 25 B5 B1 */	bl del__5CNodeFv
/* 801B6024 001B2F64  7F E3 FB 78 */	mr r3, r31
/* 801B6028 001B2F68  48 00 00 14 */	b lbl_801B603C
lbl_801B602C:
/* 801B602C 001B2F6C  83 FF 00 04 */	lwz r31, 4(r31)
lbl_801B6030:
/* 801B6030 001B2F70  28 1F 00 00 */	cmplwi r31, 0
/* 801B6034 001B2F74  40 82 FF DC */	bne lbl_801B6010
/* 801B6038 001B2F78  38 60 00 00 */	li r3, 0
lbl_801B603C:
/* 801B603C 001B2F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B6040 001B2F80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B6044 001B2F84  7C 08 03 A6 */	mtlr r0
/* 801B6048 001B2F88  38 21 00 10 */	addi r1, r1, 0x10
/* 801B604C 001B2F8C  4E 80 00 20 */	blr 

.global __dt__Q24Game18OptimiseControllerFv
__dt__Q24Game18OptimiseControllerFv:
/* 801B6050 001B2F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B6054 001B2F94  7C 08 02 A6 */	mflr r0
/* 801B6058 001B2F98  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B605C 001B2F9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B6060 001B2FA0  7C 9F 23 78 */	mr r31, r4
/* 801B6064 001B2FA4  93 C1 00 08 */	stw r30, 8(r1)
/* 801B6068 001B2FA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 801B606C 001B2FAC  41 82 00 30 */	beq lbl_801B609C
/* 801B6070 001B2FB0  3C 80 80 4B */	lis r4, __vt__Q24Game18OptimiseController@ha
/* 801B6074 001B2FB4  38 00 00 00 */	li r0, 0
/* 801B6078 001B2FB8  38 A4 5B 5C */	addi r5, r4, __vt__Q24Game18OptimiseController@l
/* 801B607C 001B2FBC  38 80 00 00 */	li r4, 0
/* 801B6080 001B2FC0  90 BE 00 00 */	stw r5, 0(r30)
/* 801B6084 001B2FC4  90 0D 93 EC */	stw r0, mInstance__Q24Game18OptimiseController@sda21(r13)
/* 801B6088 001B2FC8  4B E6 6F AD */	bl __dt__11JKRDisposerFv
/* 801B608C 001B2FCC  7F E0 07 35 */	extsh. r0, r31
/* 801B6090 001B2FD0  40 81 00 0C */	ble lbl_801B609C
/* 801B6094 001B2FD4  7F C3 F3 78 */	mr r3, r30
/* 801B6098 001B2FD8  4B E6 E0 1D */	bl __dl__FPv
lbl_801B609C:
/* 801B609C 001B2FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B60A0 001B2FE0  7F C3 F3 78 */	mr r3, r30
/* 801B60A4 001B2FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B60A8 001B2FE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B60AC 001B2FEC  7C 08 03 A6 */	mtlr r0
/* 801B60B0 001B2FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B60B4 001B2FF4  4E 80 00 20 */	blr 

.global globalInstance__Q24Game18OptimiseControllerFv
globalInstance__Q24Game18OptimiseControllerFv:
/* 801B60B8 001B2FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B60BC 001B2FFC  7C 08 02 A6 */	mflr r0
/* 801B60C0 001B3000  3C 60 80 48 */	lis r3, lbl_8047FBB8@ha
/* 801B60C4 001B3004  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B60C8 001B3008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B60CC 001B300C  93 C1 00 08 */	stw r30, 8(r1)
/* 801B60D0 001B3010  3B C3 FB B8 */	addi r30, r3, lbl_8047FBB8@l
/* 801B60D4 001B3014  80 0D 93 EC */	lwz r0, mInstance__Q24Game18OptimiseController@sda21(r13)
/* 801B60D8 001B3018  28 00 00 00 */	cmplwi r0, 0
/* 801B60DC 001B301C  40 82 00 D0 */	bne lbl_801B61AC
/* 801B60E0 001B3020  38 60 00 60 */	li r3, 0x60
/* 801B60E4 001B3024  4B E6 DD C1 */	bl __nw__FUl
/* 801B60E8 001B3028  7C 64 1B 79 */	or. r4, r3, r3
/* 801B60EC 001B302C  41 82 00 BC */	beq lbl_801B61A8
/* 801B60F0 001B3030  38 04 00 5C */	addi r0, r4, 0x5c
/* 801B60F4 001B3034  7C 9F 23 78 */	mr r31, r4
/* 801B60F8 001B3038  90 04 00 18 */	stw r0, 0x18(r4)
/* 801B60FC 001B303C  4B E6 6E D1 */	bl __ct__11JKRDisposerFv
/* 801B6100 001B3040  38 00 00 00 */	li r0, 0
/* 801B6104 001B3044  3C 60 80 4B */	lis r3, __vt__Q24Game18OptimiseController@ha
/* 801B6108 001B3048  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801B610C 001B304C  38 9E 00 3C */	addi r4, r30, 0x3c
/* 801B6110 001B3050  28 1F 00 00 */	cmplwi r31, 0
/* 801B6114 001B3054  38 03 5B 5C */	addi r0, r3, __vt__Q24Game18OptimiseController@l
/* 801B6118 001B3058  90 9F 00 20 */	stw r4, 0x20(r31)
/* 801B611C 001B305C  7F E4 FB 78 */	mr r4, r31
/* 801B6120 001B3060  90 1F 00 00 */	stw r0, 0(r31)
/* 801B6124 001B3064  41 82 00 08 */	beq lbl_801B612C
/* 801B6128 001B3068  38 9F 00 18 */	addi r4, r31, 0x18
lbl_801B612C:
/* 801B612C 001B306C  3C A0 63 30 */	lis r5, 0x63303030@ha
/* 801B6130 001B3070  38 7F 00 24 */	addi r3, r31, 0x24
/* 801B6134 001B3074  38 DE 00 48 */	addi r6, r30, 0x48
/* 801B6138 001B3078  38 A5 30 30 */	addi r5, r5, 0x63303030@l
/* 801B613C 001B307C  48 25 D5 1D */	bl __ct__8BaseParmFP10ParametersUlPc
/* 801B6140 001B3080  3C 80 80 4B */	lis r4, "__vt__7Parm<b>"@ha
/* 801B6144 001B3084  38 60 00 01 */	li r3, 1
/* 801B6148 001B3088  38 84 00 80 */	addi r4, r4, "__vt__7Parm<b>"@l
/* 801B614C 001B308C  38 00 00 00 */	li r0, 0
/* 801B6150 001B3090  90 9F 00 24 */	stw r4, 0x24(r31)
/* 801B6154 001B3094  28 1F 00 00 */	cmplwi r31, 0
/* 801B6158 001B3098  7F E4 FB 78 */	mr r4, r31
/* 801B615C 001B309C  98 7F 00 3C */	stb r3, 0x3c(r31)
/* 801B6160 001B30A0  98 1F 00 3E */	stb r0, 0x3e(r31)
/* 801B6164 001B30A4  98 7F 00 3F */	stb r3, 0x3f(r31)
/* 801B6168 001B30A8  41 82 00 08 */	beq lbl_801B6170
/* 801B616C 001B30AC  38 9F 00 18 */	addi r4, r31, 0x18
lbl_801B6170:
/* 801B6170 001B30B0  3C A0 63 30 */	lis r5, 0x63303031@ha
/* 801B6174 001B30B4  38 7F 00 40 */	addi r3, r31, 0x40
/* 801B6178 001B30B8  38 DE 00 54 */	addi r6, r30, 0x54
/* 801B617C 001B30BC  38 A5 30 31 */	addi r5, r5, 0x63303031@l
/* 801B6180 001B30C0  48 25 D4 D9 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 801B6184 001B30C4  3C 80 80 4B */	lis r4, "__vt__7Parm<b>"@ha
/* 801B6188 001B30C8  38 60 00 00 */	li r3, 0
/* 801B618C 001B30CC  38 84 00 80 */	addi r4, r4, "__vt__7Parm<b>"@l
/* 801B6190 001B30D0  38 00 00 01 */	li r0, 1
/* 801B6194 001B30D4  90 9F 00 40 */	stw r4, 0x40(r31)
/* 801B6198 001B30D8  7F E4 FB 78 */	mr r4, r31
/* 801B619C 001B30DC  98 7F 00 58 */	stb r3, 0x58(r31)
/* 801B61A0 001B30E0  98 7F 00 5A */	stb r3, 0x5a(r31)
/* 801B61A4 001B30E4  98 1F 00 5B */	stb r0, 0x5b(r31)
lbl_801B61A8:
/* 801B61A8 001B30E8  90 8D 93 EC */	stw r4, mInstance__Q24Game18OptimiseController@sda21(r13)
lbl_801B61AC:
/* 801B61AC 001B30EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B61B0 001B30F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B61B4 001B30F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B61B8 001B30F8  7C 08 03 A6 */	mtlr r0
/* 801B61BC 001B30FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B61C0 001B3100  4E 80 00 20 */	blr 

.global deleteInstance__Q24Game18OptimiseControllerFv
deleteInstance__Q24Game18OptimiseControllerFv:
/* 801B61C4 001B3104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B61C8 001B3108  7C 08 02 A6 */	mflr r0
/* 801B61CC 001B310C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B61D0 001B3110  80 6D 93 EC */	lwz r3, mInstance__Q24Game18OptimiseController@sda21(r13)
/* 801B61D4 001B3114  28 03 00 00 */	cmplwi r3, 0
/* 801B61D8 001B3118  40 82 00 1C */	bne lbl_801B61F4
/* 801B61DC 001B311C  41 82 00 18 */	beq lbl_801B61F4
/* 801B61E0 001B3120  81 83 00 00 */	lwz r12, 0(r3)
/* 801B61E4 001B3124  38 80 00 01 */	li r4, 1
/* 801B61E8 001B3128  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B61EC 001B312C  7D 89 03 A6 */	mtctr r12
/* 801B61F0 001B3130  4E 80 04 21 */	bctrl 
lbl_801B61F4:
/* 801B61F4 001B3134  38 00 00 00 */	li r0, 0
/* 801B61F8 001B3138  90 0D 93 EC */	stw r0, mInstance__Q24Game18OptimiseController@sda21(r13)
/* 801B61FC 001B313C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B6200 001B3140  7C 08 03 A6 */	mtlr r0
/* 801B6204 001B3144  38 21 00 10 */	addi r1, r1, 0x10
/* 801B6208 001B3148  4E 80 00 20 */	blr 

.global "delNode__33NodeObjectMgr<16GenericObjectMgr>FP16GenericObjectMgr"
"delNode__33NodeObjectMgr<16GenericObjectMgr>FP16GenericObjectMgr":
/* 801B620C 001B314C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B6210 001B3150  7C 08 02 A6 */	mflr r0
/* 801B6214 001B3154  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B6218 001B3158  80 63 00 30 */	lwz r3, 0x30(r3)
/* 801B621C 001B315C  48 00 00 1C */	b lbl_801B6238
lbl_801B6220:
/* 801B6220 001B3160  80 03 00 18 */	lwz r0, 0x18(r3)
/* 801B6224 001B3164  7C 00 20 40 */	cmplw r0, r4
/* 801B6228 001B3168  40 82 00 0C */	bne lbl_801B6234
/* 801B622C 001B316C  48 25 B3 A5 */	bl del__5CNodeFv
/* 801B6230 001B3170  48 00 00 10 */	b lbl_801B6240
lbl_801B6234:
/* 801B6234 001B3174  80 63 00 04 */	lwz r3, 4(r3)
lbl_801B6238:
/* 801B6238 001B3178  28 03 00 00 */	cmplwi r3, 0
/* 801B623C 001B317C  40 82 FF E4 */	bne lbl_801B6220
lbl_801B6240:
/* 801B6240 001B3180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B6244 001B3184  7C 08 03 A6 */	mtlr r0
/* 801B6248 001B3188  38 21 00 10 */	addi r1, r1, 0x10
/* 801B624C 001B318C  4E 80 00 20 */	blr 

.global __sinit_gameSystem_cpp
__sinit_gameSystem_cpp:
/* 801B6250 001B3190  3C 80 80 51 */	lis r4, __float_nan@ha
/* 801B6254 001B3194  38 00 FF FF */	li r0, -1
/* 801B6258 001B3198  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 801B625C 001B319C  3C 60 80 4B */	lis r3, lbl_804B5B50@ha
/* 801B6260 001B31A0  90 0D 93 E0 */	stw r0, lbl_80515A60@sda21(r13)
/* 801B6264 001B31A4  D4 03 5B 50 */	stfsu f0, lbl_804B5B50@l(r3)
/* 801B6268 001B31A8  D0 0D 93 E4 */	stfs f0, lbl_80515A64@sda21(r13)
/* 801B626C 001B31AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 801B6270 001B31B0  D0 03 00 08 */	stfs f0, 8(r3)
/* 801B6274 001B31B4  4E 80 00 20 */	blr 

.global "@28@doSimpleDraw__Q24Game10GameSystemFP8Viewport"
"@28@doSimpleDraw__Q24Game10GameSystemFP8Viewport":
/* 801B6278 001B31B8  38 63 FF E4 */	addi r3, r3, -28
/* 801B627C 001B31BC  4B FF FA D0 */	b doSimpleDraw__Q24Game10GameSystemFP8Viewport

.global "@28@doDirectDraw__Q24Game10GameSystemFR8Graphics"
"@28@doDirectDraw__Q24Game10GameSystemFR8Graphics":
/* 801B6280 001B31C0  38 63 FF E4 */	addi r3, r3, -28
/* 801B6284 001B31C4  4B FF FC BC */	b doDirectDraw__Q24Game10GameSystemFR8Graphics

.global "@28@doSimulation__Q24Game10GameSystemFf"
"@28@doSimulation__Q24Game10GameSystemFf":
/* 801B6288 001B31C8  38 63 FF E4 */	addi r3, r3, -28
/* 801B628C 001B31CC  4B FF F8 3C */	b doSimulation__Q24Game10GameSystemFf

.global "@28@doViewCalc__Q24Game10GameSystemFv"
"@28@doViewCalc__Q24Game10GameSystemFv":
/* 801B6290 001B31D0  38 63 FF E4 */	addi r3, r3, -28
/* 801B6294 001B31D4  4B FF F4 30 */	b doViewCalc__Q24Game10GameSystemFv

.global "@28@doSetView__Q24Game10GameSystemFi"
"@28@doSetView__Q24Game10GameSystemFi":
/* 801B6298 001B31D8  38 63 FF E4 */	addi r3, r3, -28
/* 801B629C 001B31DC  4B FF F2 34 */	b doSetView__Q24Game10GameSystemFi

.global "@28@doEntry__Q24Game10GameSystemFv"
"@28@doEntry__Q24Game10GameSystemFv":
/* 801B62A0 001B31E0  38 63 FF E4 */	addi r3, r3, -28
/* 801B62A4 001B31E4  4B FF F0 48 */	b doEntry__Q24Game10GameSystemFv

.global "@28@doAnimation__Q24Game10GameSystemFv"
"@28@doAnimation__Q24Game10GameSystemFv":
/* 801B62A8 001B31E8  38 63 FF E4 */	addi r3, r3, -28
/* 801B62AC 001B31EC  4B FF ED CC */	b doAnimation__Q24Game10GameSystemFv
