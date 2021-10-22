.include "macros.inc"
.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_8051A3B0
lbl_8051A3B0:
	.4byte 0x00000000
.global lbl_8051A3B4
lbl_8051A3B4:
	.float 0.5

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q24Game11PelletCarryFv
__ct__Q24Game11PelletCarryFv:
/* 80234EF8 00231E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80234EFC 00231E3C  7C 08 02 A6 */	mflr r0
/* 80234F00 00231E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80234F04 00231E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80234F08 00231E48  7C 7F 1B 78 */	mr r31, r3
/* 80234F0C 00231E4C  48 00 00 1D */	bl reset__Q24Game11PelletCarryFv
/* 80234F10 00231E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80234F14 00231E54  7F E3 FB 78 */	mr r3, r31
/* 80234F18 00231E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80234F1C 00231E5C  7C 08 03 A6 */	mtlr r0
/* 80234F20 00231E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80234F24 00231E64  4E 80 00 20 */	blr 

.global reset__Q24Game11PelletCarryFv
reset__Q24Game11PelletCarryFv:
/* 80234F28 00231E68  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 80234F2C 00231E6C  C0 02 C0 50 */	lfs f0, lbl_8051A3B0@sda21(r2)
/* 80234F30 00231E70  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 80234F34 00231E74  B0 03 00 00 */	sth r0, 0(r3)
/* 80234F38 00231E78  D0 03 00 08 */	stfs f0, 8(r3)
/* 80234F3C 00231E7C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80234F40 00231E80  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80234F44 00231E84  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80234F48 00231E88  D0 03 00 04 */	stfs f0, 4(r3)
/* 80234F4C 00231E8C  4E 80 00 20 */	blr 

.global "pull__Q24Game11PelletCarryFUsR10Vector3<f>f"
"pull__Q24Game11PelletCarryFUsR10Vector3<f>f":
/* 80234F50 00231E90  A0 C3 00 00 */	lhz r6, 0(r3)
/* 80234F54 00231E94  28 06 FF FF */	cmplwi r6, 0xffff
/* 80234F58 00231E98  41 82 00 10 */	beq lbl_80234F68
/* 80234F5C 00231E9C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80234F60 00231EA0  7C 06 00 40 */	cmplw r6, r0
/* 80234F64 00231EA4  40 82 00 2C */	bne lbl_80234F90
lbl_80234F68:
/* 80234F68 00231EA8  B0 83 00 00 */	sth r4, 0(r3)
/* 80234F6C 00231EAC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80234F70 00231EB0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80234F74 00231EB4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80234F78 00231EB8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80234F7C 00231EBC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80234F80 00231EC0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80234F84 00231EC4  D0 23 00 04 */	stfs f1, 4(r3)
/* 80234F88 00231EC8  38 60 00 01 */	li r3, 1
/* 80234F8C 00231ECC  4E 80 00 20 */	blr 
lbl_80234F90:
/* 80234F90 00231ED0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80234F94 00231ED4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80234F98 00231ED8  40 81 00 34 */	ble lbl_80234FCC
/* 80234F9C 00231EDC  B0 83 00 00 */	sth r4, 0(r3)
/* 80234FA0 00231EE0  C0 02 C0 54 */	lfs f0, lbl_8051A3B4@sda21(r2)
/* 80234FA4 00231EE4  C0 45 00 00 */	lfs f2, 0(r5)
/* 80234FA8 00231EE8  D0 43 00 08 */	stfs f2, 8(r3)
/* 80234FAC 00231EEC  C0 45 00 04 */	lfs f2, 4(r5)
/* 80234FB0 00231EF0  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80234FB4 00231EF4  C0 45 00 08 */	lfs f2, 8(r5)
/* 80234FB8 00231EF8  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 80234FBC 00231EFC  D0 23 00 04 */	stfs f1, 4(r3)
/* 80234FC0 00231F00  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80234FC4 00231F04  38 60 00 01 */	li r3, 1
/* 80234FC8 00231F08  4E 80 00 20 */	blr 
lbl_80234FCC:
/* 80234FCC 00231F0C  38 60 00 00 */	li r3, 0
/* 80234FD0 00231F10  4E 80 00 20 */	blr 

.global pullable__Q24Game11PelletCarryFUsf
pullable__Q24Game11PelletCarryFUsf:
/* 80234FD4 00231F14  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80234FD8 00231F18  28 05 FF FF */	cmplwi r5, 0xffff
/* 80234FDC 00231F1C  41 82 00 10 */	beq lbl_80234FEC
/* 80234FE0 00231F20  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80234FE4 00231F24  7C 05 00 40 */	cmplw r5, r0
/* 80234FE8 00231F28  40 82 00 0C */	bne lbl_80234FF4
lbl_80234FEC:
/* 80234FEC 00231F2C  38 60 00 01 */	li r3, 1
/* 80234FF0 00231F30  4E 80 00 20 */	blr 
lbl_80234FF4:
/* 80234FF4 00231F34  C0 03 00 04 */	lfs f0, 4(r3)
/* 80234FF8 00231F38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80234FFC 00231F3C  7C 00 00 26 */	mfcr r0
/* 80235000 00231F40  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80235004 00231F44  4E 80 00 20 */	blr 

.global giveup__Q24Game11PelletCarryFUs
giveup__Q24Game11PelletCarryFUs:
/* 80235008 00231F48  A0 A3 00 00 */	lhz r5, 0(r3)
/* 8023500C 00231F4C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80235010 00231F50  7C 05 00 40 */	cmplw r5, r0
/* 80235014 00231F54  4C 82 00 20 */	bnelr 
/* 80235018 00231F58  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8023501C 00231F5C  C0 02 C0 50 */	lfs f0, lbl_8051A3B0@sda21(r2)
/* 80235020 00231F60  38 04 FF FF */	addi r0, r4, 0x0000FFFF@l
/* 80235024 00231F64  B0 03 00 00 */	sth r0, 0(r3)
/* 80235028 00231F68  D0 03 00 08 */	stfs f0, 8(r3)
/* 8023502C 00231F6C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80235030 00231F70  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80235034 00231F74  D0 03 00 04 */	stfs f0, 4(r3)
/* 80235038 00231F78  4E 80 00 20 */	blr 

.global "frameWork__Q24Game11PelletCarryFR10Vector3<f>"
"frameWork__Q24Game11PelletCarryFR10Vector3<f>":
/* 8023503C 00231F7C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80235040 00231F80  28 00 FF FF */	cmplwi r0, 0xffff
/* 80235044 00231F84  41 82 00 54 */	beq lbl_80235098
/* 80235048 00231F88  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8023504C 00231F8C  C0 22 C0 50 */	lfs f1, lbl_8051A3B0@sda21(r2)
/* 80235050 00231F90  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80235054 00231F94  40 81 00 24 */	ble lbl_80235078
/* 80235058 00231F98  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 8023505C 00231F9C  C0 05 00 54 */	lfs f0, 0x54(r5)
/* 80235060 00231FA0  EC 02 00 28 */	fsubs f0, f2, f0
/* 80235064 00231FA4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80235068 00231FA8  D0 24 00 00 */	stfs f1, 0(r4)
/* 8023506C 00231FAC  D0 24 00 04 */	stfs f1, 4(r4)
/* 80235070 00231FB0  D0 24 00 08 */	stfs f1, 8(r4)
/* 80235074 00231FB4  48 00 00 1C */	b lbl_80235090
lbl_80235078:
/* 80235078 00231FB8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8023507C 00231FBC  D0 04 00 00 */	stfs f0, 0(r4)
/* 80235080 00231FC0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80235084 00231FC4  D0 04 00 04 */	stfs f0, 4(r4)
/* 80235088 00231FC8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8023508C 00231FCC  D0 04 00 08 */	stfs f0, 8(r4)
lbl_80235090:
/* 80235090 00231FD0  38 60 00 01 */	li r3, 1
/* 80235094 00231FD4  4E 80 00 20 */	blr 
lbl_80235098:
/* 80235098 00231FD8  38 60 00 00 */	li r3, 0
/* 8023509C 00231FDC  4E 80 00 20 */	blr 
