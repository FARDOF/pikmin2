.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj lbl_80483828, local
	.asciz "cellIterator.cpp"
.endobj lbl_80483828
.balign 4
.obj lbl_8048383C, local
	.asciz "xy %f %f\n%f %f\n"
.endobj lbl_8048383C

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_8051A300, local
	.float 0.0
.endobj lbl_8051A300
.obj lbl_8051A304, local
	.float 1.0
.endobj lbl_8051A304
.obj lbl_8051A308, local
	.asciz "x %f>%f"
.endobj lbl_8051A308
.balign 4
.obj lbl_8051A310, local
	.asciz "y %f>%f"
.endobj lbl_8051A310
.balign 8
.obj lbl_8051A318, local
	.4byte 0x43300000
	.4byte 0x00000000
.endobj lbl_8051A318

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn __ct__Q24Game15CellIteratorArgFv, global
/* 8022E36C 0022B2AC  38 80 00 00 */	li r4, 0
/* 8022E370 0022B2B0  C0 02 BF A0 */	lfs f0, lbl_8051A300@sda21(r2)
/* 8022E374 0022B2B4  90 83 00 10 */	stw r4, 0x10(r3)
/* 8022E378 0022B2B8  90 83 00 14 */	stw r4, 0x14(r3)
/* 8022E37C 0022B2BC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8022E380 0022B2C0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8022E384 0022B2C4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8022E388 0022B2C8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8022E38C 0022B2CC  80 0D 92 C8 */	lwz r0, cellMgr__4Game@sda21(r13)
/* 8022E390 0022B2D0  90 03 00 18 */	stw r0, 0x18(r3)
/* 8022E394 0022B2D4  98 83 00 1D */	stb r4, 0x1d(r3)
/* 8022E398 0022B2D8  98 83 00 1C */	stb r4, 0x1c(r3)
/* 8022E39C 0022B2DC  4E 80 00 20 */	blr 
.endfn __ct__Q24Game15CellIteratorArgFv

.fn __ct__Q24Game15CellIteratorArgFRQ23Sys6Sphere, global
/* 8022E3A0 0022B2E0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8022E3A4 0022B2E4  38 A0 00 00 */	li r5, 0
/* 8022E3A8 0022B2E8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8022E3AC 0022B2EC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8022E3B0 0022B2F0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8022E3B4 0022B2F4  C0 04 00 08 */	lfs f0, 8(r4)
/* 8022E3B8 0022B2F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8022E3BC 0022B2FC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8022E3C0 0022B300  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8022E3C4 0022B304  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8022E3C8 0022B308  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8022E3CC 0022B30C  80 0D 92 C8 */	lwz r0, cellMgr__4Game@sda21(r13)
/* 8022E3D0 0022B310  90 03 00 18 */	stw r0, 0x18(r3)
/* 8022E3D4 0022B314  98 A3 00 1D */	stb r5, 0x1d(r3)
/* 8022E3D8 0022B318  98 A3 00 1C */	stb r5, 0x1c(r3)
/* 8022E3DC 0022B31C  4E 80 00 20 */	blr 
.endfn __ct__Q24Game15CellIteratorArgFRQ23Sys6Sphere

.fn __ct__Q24Game12CellIteratorFRQ24Game15CellIteratorArg, global
/* 8022E3E0 0022B320  38 A0 00 00 */	li r5, 0
/* 8022E3E4 0022B324  C0 02 BF A0 */	lfs f0, lbl_8051A300@sda21(r2)
/* 8022E3E8 0022B328  90 A3 00 34 */	stw r5, 0x34(r3)
/* 8022E3EC 0022B32C  90 A3 00 38 */	stw r5, 0x38(r3)
/* 8022E3F0 0022B330  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8022E3F4 0022B334  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8022E3F8 0022B338  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8022E3FC 0022B33C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8022E400 0022B340  80 0D 92 C8 */	lwz r0, cellMgr__4Game@sda21(r13)
/* 8022E404 0022B344  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8022E408 0022B348  98 A3 00 41 */	stb r5, 0x41(r3)
/* 8022E40C 0022B34C  98 A3 00 40 */	stb r5, 0x40(r3)
/* 8022E410 0022B350  C0 04 00 00 */	lfs f0, 0(r4)
/* 8022E414 0022B354  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8022E418 0022B358  C0 04 00 04 */	lfs f0, 4(r4)
/* 8022E41C 0022B35C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8022E420 0022B360  C0 04 00 08 */	lfs f0, 8(r4)
/* 8022E424 0022B364  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8022E428 0022B368  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8022E42C 0022B36C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8022E430 0022B370  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8022E434 0022B374  90 03 00 34 */	stw r0, 0x34(r3)
/* 8022E438 0022B378  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8022E43C 0022B37C  90 03 00 38 */	stw r0, 0x38(r3)
/* 8022E440 0022B380  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8022E444 0022B384  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8022E448 0022B388  88 04 00 1C */	lbz r0, 0x1c(r4)
/* 8022E44C 0022B38C  98 03 00 40 */	stb r0, 0x40(r3)
/* 8022E450 0022B390  88 04 00 1D */	lbz r0, 0x1d(r4)
/* 8022E454 0022B394  98 03 00 41 */	stb r0, 0x41(r3)
/* 8022E458 0022B398  4E 80 00 20 */	blr 
.endfn __ct__Q24Game12CellIteratorFRQ24Game15CellIteratorArg

.fn first__Q24Game12CellIteratorFv, global
/* 8022E45C 0022B39C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022E460 0022B3A0  7C 08 02 A6 */	mflr r0
/* 8022E464 0022B3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022E468 0022B3A8  3C 00 04 00 */	lis r0, 0x400
/* 8022E46C 0022B3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022E470 0022B3B0  7C 7F 1B 78 */	mr r31, r3
/* 8022E474 0022B3B4  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 8022E478 0022B3B8  80 64 00 44 */	lwz r3, 0x44(r4)
/* 8022E47C 0022B3BC  38 63 00 01 */	addi r3, r3, 1
/* 8022E480 0022B3C0  90 64 00 44 */	stw r3, 0x44(r4)
/* 8022E484 0022B3C4  80 64 00 44 */	lwz r3, 0x44(r4)
/* 8022E488 0022B3C8  7C 03 00 40 */	cmplw r3, r0
/* 8022E48C 0022B3CC  41 80 00 0C */	blt .L_8022E498
/* 8022E490 0022B3D0  38 00 00 00 */	li r0, 0
/* 8022E494 0022B3D4  90 04 00 44 */	stw r0, 0x44(r4)
.L_8022E498:
/* 8022E498 0022B3D8  80 84 00 44 */	lwz r4, 0x44(r4)
/* 8022E49C 0022B3DC  38 00 00 00 */	li r0, 0
/* 8022E4A0 0022B3E0  7F E3 FB 78 */	mr r3, r31
/* 8022E4A4 0022B3E4  90 9F 00 20 */	stw r4, 0x20(r31)
/* 8022E4A8 0022B3E8  90 1F 00 00 */	stw r0, 0(r31)
/* 8022E4AC 0022B3EC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8022E4B0 0022B3F0  48 00 04 55 */	bl calcExtent__Q24Game12CellIteratorFv
/* 8022E4B4 0022B3F4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8022E4B8 0022B3F8  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8022E4BC 0022B3FC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8022E4C0 0022B400  80 9F 00 04 */	lwz r4, 4(r31)
/* 8022E4C4 0022B404  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8022E4C8 0022B408  80 BF 00 08 */	lwz r5, 8(r31)
/* 8022E4CC 0022B40C  7C 63 02 14 */	add r3, r3, r0
/* 8022E4D0 0022B410  4B F2 98 2D */	bl __cl__Q24Game9CellLayerFii
/* 8022E4D4 0022B414  28 03 00 00 */	cmplwi r3, 0
/* 8022E4D8 0022B418  41 82 00 0C */	beq .L_8022E4E4
/* 8022E4DC 0022B41C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8022E4E0 0022B420  90 1F 00 00 */	stw r0, 0(r31)
.L_8022E4E4:
/* 8022E4E4 0022B424  7F E3 FB 78 */	mr r3, r31
/* 8022E4E8 0022B428  48 00 01 81 */	bl find__Q24Game12CellIteratorFv
/* 8022E4EC 0022B42C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022E4F0 0022B430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022E4F4 0022B434  7C 08 03 A6 */	mtlr r0
/* 8022E4F8 0022B438  38 21 00 10 */	addi r1, r1, 0x10
/* 8022E4FC 0022B43C  4E 80 00 20 */	blr 
.endfn first__Q24Game12CellIteratorFv

.fn next__Q24Game12CellIteratorFv, global
/* 8022E500 0022B440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022E504 0022B444  7C 08 02 A6 */	mflr r0
/* 8022E508 0022B448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022E50C 0022B44C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022E510 0022B450  7C 7F 1B 78 */	mr r31, r3
/* 8022E514 0022B454  48 00 00 69 */	bl step__Q24Game12CellIteratorFv
/* 8022E518 0022B458  7F E3 FB 78 */	mr r3, r31
/* 8022E51C 0022B45C  48 00 01 4D */	bl find__Q24Game12CellIteratorFv
/* 8022E520 0022B460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022E524 0022B464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022E528 0022B468  7C 08 03 A6 */	mtlr r0
/* 8022E52C 0022B46C  38 21 00 10 */	addi r1, r1, 0x10
/* 8022E530 0022B470  4E 80 00 20 */	blr 
.endfn next__Q24Game12CellIteratorFv

.fn isDone__Q24Game12CellIteratorFv, global
/* 8022E534 0022B474  80 03 00 00 */	lwz r0, 0(r3)
/* 8022E538 0022B478  7C 00 00 34 */	cntlzw r0, r0
/* 8022E53C 0022B47C  54 03 D9 7E */	srwi r3, r0, 5
/* 8022E540 0022B480  4E 80 00 20 */	blr 
.endfn isDone__Q24Game12CellIteratorFv

.fn __ml__Q24Game12CellIteratorFv, global
/* 8022E544 0022B484  80 63 00 00 */	lwz r3, 0(r3)
/* 8022E548 0022B488  28 03 00 00 */	cmplwi r3, 0
/* 8022E54C 0022B48C  41 82 00 0C */	beq .L_8022E558
/* 8022E550 0022B490  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8022E554 0022B494  4E 80 00 20 */	blr 
.L_8022E558:
/* 8022E558 0022B498  38 60 00 00 */	li r3, 0
/* 8022E55C 0022B49C  4E 80 00 20 */	blr 
.endfn __ml__Q24Game12CellIteratorFv

.fn getCellObject__Q24Game12CellIteratorFv, global
/* 8022E560 0022B4A0  80 63 00 00 */	lwz r3, 0(r3)
/* 8022E564 0022B4A4  28 03 00 00 */	cmplwi r3, 0
/* 8022E568 0022B4A8  41 82 00 0C */	beq .L_8022E574
/* 8022E56C 0022B4AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8022E570 0022B4B0  4E 80 00 20 */	blr 
.L_8022E574:
/* 8022E574 0022B4B4  38 60 00 00 */	li r3, 0
/* 8022E578 0022B4B8  4E 80 00 20 */	blr 
.endfn getCellObject__Q24Game12CellIteratorFv

.fn step__Q24Game12CellIteratorFv, global
/* 8022E57C 0022B4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022E580 0022B4C0  7C 08 02 A6 */	mflr r0
/* 8022E584 0022B4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022E588 0022B4C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022E58C 0022B4CC  7C 7F 1B 78 */	mr r31, r3
/* 8022E590 0022B4D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8022E594 0022B4D4  28 03 00 00 */	cmplwi r3, 0
/* 8022E598 0022B4D8  41 82 00 0C */	beq .L_8022E5A4
/* 8022E59C 0022B4DC  80 03 00 00 */	lwz r0, 0(r3)
/* 8022E5A0 0022B4E0  90 1F 00 00 */	stw r0, 0(r31)
.L_8022E5A4:
/* 8022E5A4 0022B4E4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8022E5A8 0022B4E8  28 00 00 00 */	cmplwi r0, 0
/* 8022E5AC 0022B4EC  40 82 00 A4 */	bne .L_8022E650
/* 8022E5B0 0022B4F0  80 7F 00 08 */	lwz r3, 8(r31)
/* 8022E5B4 0022B4F4  38 03 00 01 */	addi r0, r3, 1
/* 8022E5B8 0022B4F8  90 1F 00 08 */	stw r0, 8(r31)
/* 8022E5BC 0022B4FC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8022E5C0 0022B500  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8022E5C4 0022B504  7C 03 00 00 */	cmpw r3, r0
/* 8022E5C8 0022B508  40 81 00 58 */	ble .L_8022E620
/* 8022E5CC 0022B50C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8022E5D0 0022B510  90 1F 00 08 */	stw r0, 8(r31)
/* 8022E5D4 0022B514  80 7F 00 04 */	lwz r3, 4(r31)
/* 8022E5D8 0022B518  38 03 00 01 */	addi r0, r3, 1
/* 8022E5DC 0022B51C  90 1F 00 04 */	stw r0, 4(r31)
/* 8022E5E0 0022B520  80 7F 00 04 */	lwz r3, 4(r31)
/* 8022E5E4 0022B524  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8022E5E8 0022B528  7C 03 00 00 */	cmpw r3, r0
/* 8022E5EC 0022B52C  40 81 00 34 */	ble .L_8022E620
/* 8022E5F0 0022B530  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8022E5F4 0022B534  38 03 00 01 */	addi r0, r3, 1
/* 8022E5F8 0022B538  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8022E5FC 0022B53C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8022E600 0022B540  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8022E604 0022B544  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8022E608 0022B548  7C 04 00 00 */	cmpw r4, r0
/* 8022E60C 0022B54C  41 80 00 0C */	blt .L_8022E618
/* 8022E610 0022B550  38 60 00 00 */	li r3, 0
/* 8022E614 0022B554  48 00 00 40 */	b .L_8022E654
.L_8022E618:
/* 8022E618 0022B558  7F E3 FB 78 */	mr r3, r31
/* 8022E61C 0022B55C  48 00 02 E9 */	bl calcExtent__Q24Game12CellIteratorFv
.L_8022E620:
/* 8022E620 0022B560  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8022E624 0022B564  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8022E628 0022B568  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8022E62C 0022B56C  80 9F 00 04 */	lwz r4, 4(r31)
/* 8022E630 0022B570  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8022E634 0022B574  80 BF 00 08 */	lwz r5, 8(r31)
/* 8022E638 0022B578  7C 63 02 14 */	add r3, r3, r0
/* 8022E63C 0022B57C  4B F2 96 C1 */	bl __cl__Q24Game9CellLayerFii
/* 8022E640 0022B580  28 03 00 00 */	cmplwi r3, 0
/* 8022E644 0022B584  41 82 00 0C */	beq .L_8022E650
/* 8022E648 0022B588  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8022E64C 0022B58C  90 1F 00 00 */	stw r0, 0(r31)
.L_8022E650:
/* 8022E650 0022B590  38 60 00 01 */	li r3, 1
.L_8022E654:
/* 8022E654 0022B594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022E658 0022B598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022E65C 0022B59C  7C 08 03 A6 */	mtlr r0
/* 8022E660 0022B5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8022E664 0022B5A4  4E 80 00 20 */	blr 
.endfn step__Q24Game12CellIteratorFv

.fn find__Q24Game12CellIteratorFv, global
/* 8022E668 0022B5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022E66C 0022B5AC  7C 08 02 A6 */	mflr r0
/* 8022E670 0022B5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022E674 0022B5B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022E678 0022B5B8  7C 7F 1B 78 */	mr r31, r3
.L_8022E67C:
/* 8022E67C 0022B5BC  7F E3 FB 78 */	mr r3, r31
/* 8022E680 0022B5C0  48 00 00 F9 */	bl satisfy__Q24Game12CellIteratorFv
/* 8022E684 0022B5C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022E688 0022B5C8  41 82 00 0C */	beq .L_8022E694
/* 8022E68C 0022B5CC  38 60 00 01 */	li r3, 1
/* 8022E690 0022B5D0  48 00 00 D4 */	b .L_8022E764
.L_8022E694:
/* 8022E694 0022B5D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8022E698 0022B5D8  28 03 00 00 */	cmplwi r3, 0
/* 8022E69C 0022B5DC  41 82 00 0C */	beq .L_8022E6A8
/* 8022E6A0 0022B5E0  80 03 00 00 */	lwz r0, 0(r3)
/* 8022E6A4 0022B5E4  90 1F 00 00 */	stw r0, 0(r31)
.L_8022E6A8:
/* 8022E6A8 0022B5E8  80 1F 00 00 */	lwz r0, 0(r31)
/* 8022E6AC 0022B5EC  28 00 00 00 */	cmplwi r0, 0
/* 8022E6B0 0022B5F0  40 82 00 A4 */	bne .L_8022E754
/* 8022E6B4 0022B5F4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8022E6B8 0022B5F8  38 03 00 01 */	addi r0, r3, 1
/* 8022E6BC 0022B5FC  90 1F 00 08 */	stw r0, 8(r31)
/* 8022E6C0 0022B600  80 7F 00 08 */	lwz r3, 8(r31)
/* 8022E6C4 0022B604  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8022E6C8 0022B608  7C 03 00 00 */	cmpw r3, r0
/* 8022E6CC 0022B60C  40 81 00 58 */	ble .L_8022E724
/* 8022E6D0 0022B610  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8022E6D4 0022B614  90 1F 00 08 */	stw r0, 8(r31)
/* 8022E6D8 0022B618  80 7F 00 04 */	lwz r3, 4(r31)
/* 8022E6DC 0022B61C  38 03 00 01 */	addi r0, r3, 1
/* 8022E6E0 0022B620  90 1F 00 04 */	stw r0, 4(r31)
/* 8022E6E4 0022B624  80 7F 00 04 */	lwz r3, 4(r31)
/* 8022E6E8 0022B628  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8022E6EC 0022B62C  7C 03 00 00 */	cmpw r3, r0
/* 8022E6F0 0022B630  40 81 00 34 */	ble .L_8022E724
/* 8022E6F4 0022B634  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8022E6F8 0022B638  38 03 00 01 */	addi r0, r3, 1
/* 8022E6FC 0022B63C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8022E700 0022B640  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8022E704 0022B644  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8022E708 0022B648  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8022E70C 0022B64C  7C 04 00 00 */	cmpw r4, r0
/* 8022E710 0022B650  41 80 00 0C */	blt .L_8022E71C
/* 8022E714 0022B654  38 00 00 00 */	li r0, 0
/* 8022E718 0022B658  48 00 00 40 */	b .L_8022E758
.L_8022E71C:
/* 8022E71C 0022B65C  7F E3 FB 78 */	mr r3, r31
/* 8022E720 0022B660  48 00 01 E5 */	bl calcExtent__Q24Game12CellIteratorFv
.L_8022E724:
/* 8022E724 0022B664  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8022E728 0022B668  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8022E72C 0022B66C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8022E730 0022B670  80 9F 00 04 */	lwz r4, 4(r31)
/* 8022E734 0022B674  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8022E738 0022B678  80 BF 00 08 */	lwz r5, 8(r31)
/* 8022E73C 0022B67C  7C 63 02 14 */	add r3, r3, r0
/* 8022E740 0022B680  4B F2 95 BD */	bl __cl__Q24Game9CellLayerFii
/* 8022E744 0022B684  28 03 00 00 */	cmplwi r3, 0
/* 8022E748 0022B688  41 82 00 0C */	beq .L_8022E754
/* 8022E74C 0022B68C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8022E750 0022B690  90 1F 00 00 */	stw r0, 0(r31)
.L_8022E754:
/* 8022E754 0022B694  38 00 00 01 */	li r0, 1
.L_8022E758:
/* 8022E758 0022B698  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8022E75C 0022B69C  40 82 FF 20 */	bne .L_8022E67C
/* 8022E760 0022B6A0  38 60 00 00 */	li r3, 0
.L_8022E764:
/* 8022E764 0022B6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022E768 0022B6A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022E76C 0022B6AC  7C 08 03 A6 */	mtlr r0
/* 8022E770 0022B6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8022E774 0022B6B4  4E 80 00 20 */	blr 
.endfn find__Q24Game12CellIteratorFv

.fn satisfy__Q24Game12CellIteratorFv, global
/* 8022E778 0022B6B8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8022E77C 0022B6BC  7C 08 02 A6 */	mflr r0
/* 8022E780 0022B6C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022E784 0022B6C4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8022E788 0022B6C8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8022E78C 0022B6CC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8022E790 0022B6D0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8022E794 0022B6D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8022E798 0022B6D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8022E79C 0022B6DC  7C 7E 1B 78 */	mr r30, r3
/* 8022E7A0 0022B6E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8022E7A4 0022B6E4  28 03 00 00 */	cmplwi r3, 0
/* 8022E7A8 0022B6E8  40 82 00 0C */	bne .L_8022E7B4
/* 8022E7AC 0022B6EC  38 60 00 00 */	li r3, 0
/* 8022E7B0 0022B6F0  48 00 01 2C */	b .L_8022E8DC
.L_8022E7B4:
/* 8022E7B4 0022B6F4  41 82 00 18 */	beq .L_8022E7CC
/* 8022E7B8 0022B6F8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8022E7BC 0022B6FC  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8022E7C0 0022B700  80 64 00 A4 */	lwz r3, 0xa4(r4)
/* 8022E7C4 0022B704  7C 03 00 40 */	cmplw r3, r0
/* 8022E7C8 0022B708  40 82 00 0C */	bne .L_8022E7D4
.L_8022E7CC:
/* 8022E7CC 0022B70C  38 60 00 00 */	li r3, 0
/* 8022E7D0 0022B710  48 00 01 0C */	b .L_8022E8DC
.L_8022E7D4:
/* 8022E7D4 0022B714  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8022E7D8 0022B718  28 03 00 00 */	cmplwi r3, 0
/* 8022E7DC 0022B71C  41 82 00 24 */	beq .L_8022E800
/* 8022E7E0 0022B720  81 83 00 00 */	lwz r12, 0(r3)
/* 8022E7E4 0022B724  81 8C 00 08 */	lwz r12, 8(r12)
/* 8022E7E8 0022B728  7D 89 03 A6 */	mtctr r12
/* 8022E7EC 0022B72C  4E 80 04 21 */	bctrl 
/* 8022E7F0 0022B730  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022E7F4 0022B734  40 82 00 0C */	bne .L_8022E800
/* 8022E7F8 0022B738  38 60 00 00 */	li r3, 0
/* 8022E7FC 0022B73C  48 00 00 E0 */	b .L_8022E8DC
.L_8022E800:
/* 8022E800 0022B740  80 9E 00 00 */	lwz r4, 0(r30)
/* 8022E804 0022B744  38 61 00 08 */	addi r3, r1, 8
/* 8022E808 0022B748  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 8022E80C 0022B74C  7F E4 FB 78 */	mr r4, r31
/* 8022E810 0022B750  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022E814 0022B754  81 8C 00 08 */	lwz r12, 8(r12)
/* 8022E818 0022B758  7D 89 03 A6 */	mtctr r12
/* 8022E81C 0022B75C  4E 80 04 21 */	bctrl 
/* 8022E820 0022B760  7F E3 FB 78 */	mr r3, r31
/* 8022E824 0022B764  38 81 00 14 */	addi r4, r1, 0x14
/* 8022E828 0022B768  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022E82C 0022B76C  C3 E1 00 08 */	lfs f31, 8(r1)
/* 8022E830 0022B770  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8022E834 0022B774  C3 C1 00 10 */	lfs f30, 0x10(r1)
/* 8022E838 0022B778  7D 89 03 A6 */	mtctr r12
/* 8022E83C 0022B77C  4E 80 04 21 */	bctrl 
/* 8022E840 0022B780  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 8022E844 0022B784  28 00 00 00 */	cmplwi r0, 0
/* 8022E848 0022B788  40 82 00 80 */	bne .L_8022E8C8
/* 8022E84C 0022B78C  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8022E850 0022B790  2C 00 00 00 */	cmpwi r0, 0
/* 8022E854 0022B794  40 82 00 3C */	bne .L_8022E890
/* 8022E858 0022B798  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8022E85C 0022B79C  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8022E860 0022B7A0  EC 7E 00 28 */	fsubs f3, f30, f0
/* 8022E864 0022B7A4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8022E868 0022B7A8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8022E86C 0022B7AC  EC 5F 10 28 */	fsubs f2, f31, f2
/* 8022E870 0022B7B0  EC 21 00 2A */	fadds f1, f1, f0
/* 8022E874 0022B7B4  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8022E878 0022B7B8  EC 21 00 72 */	fmuls f1, f1, f1
/* 8022E87C 0022B7BC  EC 02 00 BA */	fmadds f0, f2, f2, f0
/* 8022E880 0022B7C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8022E884 0022B7C4  40 81 00 44 */	ble .L_8022E8C8
/* 8022E888 0022B7C8  38 60 00 00 */	li r3, 0
/* 8022E88C 0022B7CC  48 00 00 50 */	b .L_8022E8DC
.L_8022E890:
/* 8022E890 0022B7D0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8022E894 0022B7D4  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8022E898 0022B7D8  EF DE 00 28 */	fsubs f30, f30, f0
/* 8022E89C 0022B7DC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8022E8A0 0022B7E0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8022E8A4 0022B7E4  EF FF 10 28 */	fsubs f31, f31, f2
/* 8022E8A8 0022B7E8  EC 21 00 2A */	fadds f1, f1, f0
/* 8022E8AC 0022B7EC  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 8022E8B0 0022B7F0  EC 21 00 72 */	fmuls f1, f1, f1
/* 8022E8B4 0022B7F4  EC 1F 07 FA */	fmadds f0, f31, f31, f0
/* 8022E8B8 0022B7F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8022E8BC 0022B7FC  40 81 00 0C */	ble .L_8022E8C8
/* 8022E8C0 0022B800  38 60 00 00 */	li r3, 0
/* 8022E8C4 0022B804  48 00 00 18 */	b .L_8022E8DC
.L_8022E8C8:
/* 8022E8C8 0022B808  80 9E 00 00 */	lwz r4, 0(r30)
/* 8022E8CC 0022B80C  38 60 00 01 */	li r3, 1
/* 8022E8D0 0022B810  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8022E8D4 0022B814  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8022E8D8 0022B818  90 04 00 A4 */	stw r0, 0xa4(r4)
.L_8022E8DC:
/* 8022E8DC 0022B81C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8022E8E0 0022B820  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8022E8E4 0022B824  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 8022E8E8 0022B828  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8022E8EC 0022B82C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022E8F0 0022B830  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8022E8F4 0022B834  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8022E8F8 0022B838  7C 08 03 A6 */	mtlr r0
/* 8022E8FC 0022B83C  38 21 00 50 */	addi r1, r1, 0x50
/* 8022E900 0022B840  4E 80 00 20 */	blr 
.endfn satisfy__Q24Game12CellIteratorFv

.fn calcExtent__Q24Game12CellIteratorFv, global
/* 8022E904 0022B844  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022E908 0022B848  7C 08 02 A6 */	mflr r0
/* 8022E90C 0022B84C  C8 42 BF B8 */	lfd f2, lbl_8051A318@sda21(r2)
/* 8022E910 0022B850  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022E914 0022B854  3C 00 43 30 */	lis r0, 0x4330
/* 8022E918 0022B858  C0 62 BF A4 */	lfs f3, lbl_8051A304@sda21(r2)
/* 8022E91C 0022B85C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8022E920 0022B860  7C 7F 1B 78 */	mr r31, r3
/* 8022E924 0022B864  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8022E928 0022B868  80 BF 00 3C */	lwz r5, 0x3c(r31)
/* 8022E92C 0022B86C  1C 63 00 38 */	mulli r3, r3, 0x38
/* 8022E930 0022B870  90 01 00 08 */	stw r0, 8(r1)
/* 8022E934 0022B874  80 85 00 30 */	lwz r4, 0x30(r5)
/* 8022E938 0022B878  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8022E93C 0022B87C  38 03 00 04 */	addi r0, r3, 4
/* 8022E940 0022B880  C0 DF 00 30 */	lfs f6, 0x30(r31)
/* 8022E944 0022B884  7C 04 02 2E */	lhzx r0, r4, r0
/* 8022E948 0022B888  C0 FF 00 2C */	lfs f7, 0x2c(r31)
/* 8022E94C 0022B88C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8022E950 0022B890  C0 9F 00 24 */	lfs f4, 0x24(r31)
/* 8022E954 0022B894  EC A7 30 28 */	fsubs f5, f7, f6
/* 8022E958 0022B898  C8 21 00 08 */	lfd f1, 8(r1)
/* 8022E95C 0022B89C  C1 25 00 40 */	lfs f9, 0x40(r5)
/* 8022E960 0022B8A0  EC 41 10 28 */	fsubs f2, f1, f2
/* 8022E964 0022B8A4  C1 05 00 3C */	lfs f8, 0x3c(r5)
/* 8022E968 0022B8A8  EC 24 30 28 */	fsubs f1, f4, f6
/* 8022E96C 0022B8AC  EC 84 30 2A */	fadds f4, f4, f6
/* 8022E970 0022B8B0  EC 42 00 32 */	fmuls f2, f2, f0
/* 8022E974 0022B8B4  EC 07 30 2A */	fadds f0, f7, f6
/* 8022E978 0022B8B8  EC 21 48 28 */	fsubs f1, f1, f9
/* 8022E97C 0022B8BC  EC C3 10 24 */	fdivs f6, f3, f2
/* 8022E980 0022B8C0  EC 45 40 28 */	fsubs f2, f5, f8
/* 8022E984 0022B8C4  EC 21 01 B2 */	fmuls f1, f1, f6
/* 8022E988 0022B8C8  EC 84 48 28 */	fsubs f4, f4, f9
/* 8022E98C 0022B8CC  EC 42 01 B2 */	fmuls f2, f2, f6
/* 8022E990 0022B8D0  FC 60 08 1E */	fctiwz f3, f1
/* 8022E994 0022B8D4  EC 00 40 28 */	fsubs f0, f0, f8
/* 8022E998 0022B8D8  EC 24 01 B2 */	fmuls f1, f4, f6
/* 8022E99C 0022B8DC  FC 40 10 1E */	fctiwz f2, f2
/* 8022E9A0 0022B8E0  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 8022E9A4 0022B8E4  EC 00 01 B2 */	fmuls f0, f0, f6
/* 8022E9A8 0022B8E8  FC 20 08 1E */	fctiwz f1, f1
/* 8022E9AC 0022B8EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022E9B0 0022B8F0  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 8022E9B4 0022B8F4  FC 00 00 1E */	fctiwz f0, f0
/* 8022E9B8 0022B8F8  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 8022E9BC 0022B8FC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8022E9C0 0022B900  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8022E9C4 0022B904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022E9C8 0022B908  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8022E9CC 0022B90C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8022E9D0 0022B910  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8022E9D4 0022B914  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8022E9D8 0022B918  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8022E9DC 0022B91C  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 8022E9E0 0022B920  80 FF 00 18 */	lwz r7, 0x18(r31)
/* 8022E9E4 0022B924  7C 06 38 00 */	cmpw r6, r7
/* 8022E9E8 0022B928  40 81 00 1C */	ble .L_8022EA04
/* 8022E9EC 0022B92C  3C 60 80 48 */	lis r3, lbl_80483828@ha
/* 8022E9F0 0022B930  38 80 00 F9 */	li r4, 0xf9
/* 8022E9F4 0022B934  38 63 38 28 */	addi r3, r3, lbl_80483828@l
/* 8022E9F8 0022B938  38 A2 BF A8 */	addi r5, r2, lbl_8051A308@sda21
/* 8022E9FC 0022B93C  4C C6 31 82 */	crclr 6
/* 8022EA00 0022B940  4B DF BC 41 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8022EA04:
/* 8022EA04 0022B944  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 8022EA08 0022B948  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 8022EA0C 0022B94C  7C 06 38 00 */	cmpw r6, r7
/* 8022EA10 0022B950  40 81 00 1C */	ble .L_8022EA2C
/* 8022EA14 0022B954  3C 60 80 48 */	lis r3, lbl_80483828@ha
/* 8022EA18 0022B958  38 80 00 FC */	li r4, 0xfc
/* 8022EA1C 0022B95C  38 63 38 28 */	addi r3, r3, lbl_80483828@l
/* 8022EA20 0022B960  38 A2 BF B0 */	addi r5, r2, lbl_8051A310@sda21
/* 8022EA24 0022B964  4C C6 31 82 */	crclr 6
/* 8022EA28 0022B968  4B DF BC 19 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8022EA2C:
/* 8022EA2C 0022B96C  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 8022EA30 0022B970  81 1F 00 18 */	lwz r8, 0x18(r31)
/* 8022EA34 0022B974  80 FF 00 14 */	lwz r7, 0x14(r31)
/* 8022EA38 0022B978  81 3F 00 1C */	lwz r9, 0x1c(r31)
/* 8022EA3C 0022B97C  7C 66 40 50 */	subf r3, r6, r8
/* 8022EA40 0022B980  7C 07 48 50 */	subf r0, r7, r9
/* 8022EA44 0022B984  7C 03 01 D6 */	mullw r0, r3, r0
/* 8022EA48 0022B988  2C 00 27 10 */	cmpwi r0, 0x2710
/* 8022EA4C 0022B98C  41 80 00 20 */	blt .L_8022EA6C
/* 8022EA50 0022B990  3C 60 80 48 */	lis r3, lbl_80483828@ha
/* 8022EA54 0022B994  3C 80 80 48 */	lis r4, lbl_8048383C@ha
/* 8022EA58 0022B998  38 A4 38 3C */	addi r5, r4, lbl_8048383C@l
/* 8022EA5C 0022B99C  38 63 38 28 */	addi r3, r3, lbl_80483828@l
/* 8022EA60 0022B9A0  38 80 01 03 */	li r4, 0x103
/* 8022EA64 0022B9A4  4C C6 31 82 */	crclr 6
/* 8022EA68 0022B9A8  4B DF BB D9 */	bl panic_f__12JUTExceptionFPCciPCce
.L_8022EA6C:
/* 8022EA6C 0022B9AC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8022EA70 0022B9B0  90 1F 00 04 */	stw r0, 4(r31)
/* 8022EA74 0022B9B4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8022EA78 0022B9B8  90 1F 00 08 */	stw r0, 8(r31)
/* 8022EA7C 0022B9BC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8022EA80 0022B9C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022EA84 0022B9C4  7C 08 03 A6 */	mtlr r0
/* 8022EA88 0022B9C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8022EA8C 0022B9CC  4E 80 00 20 */	blr 
.endfn calcExtent__Q24Game12CellIteratorFv

.fn dump__Q24Game12CellIteratorFv, global
/* 8022EA90 0022B9D0  4E 80 00 20 */	blr 
.endfn dump__Q24Game12CellIteratorFv
