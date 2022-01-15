.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__10JKRArchive
__vt__10JKRArchive:
	.4byte 0
	.4byte 0
	.4byte __dt__10JKRArchiveFv
	.4byte unmount__13JKRFileLoaderFv
	.4byte becomeCurrent__10JKRArchiveFPCc
	.4byte getResource__10JKRArchiveFPCc
	.4byte getResource__10JKRArchiveFUlPCc
	.4byte readResource__10JKRArchiveFPvUlPCc
	.4byte readResource__10JKRArchiveFPvUlUlPCc
	.4byte removeResourceAll__10JKRArchiveFv
	.4byte removeResource__10JKRArchiveFPv
	.4byte detachResource__10JKRArchiveFPv
	.4byte getResSize__10JKRArchiveCFPCv
	.4byte countFile__10JKRArchiveCFPCc
	.4byte getFirstFile__10JKRArchiveCFPCc
	.4byte getExpandedResSize__10JKRArchiveCFPCv
	.4byte 0
	.4byte 0
	.4byte setExpandSize__10JKRArchiveFPQ210JKRArchive12SDIFileEntryUl
	.4byte getExpandSize__10JKRArchiveCFPQ210JKRArchive12SDIFileEntry

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection:
/* 8001B130 00018070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001B134 00018074  7C 08 02 A6 */	mflr r0
/* 8001B138 00018078  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001B13C 0001807C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001B140 00018080  7C DF 33 78 */	mr r31, r6
/* 8001B144 00018084  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001B148 00018088  7C BE 2B 78 */	mr r30, r5
/* 8001B14C 0001808C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001B150 00018090  7C 9D 23 78 */	mr r29, r4
/* 8001B154 00018094  48 0C 10 11 */	bl DVDConvertPathToEntrynum
/* 8001B158 00018098  2C 03 00 00 */	cmpwi r3, 0
/* 8001B15C 0001809C  40 80 00 0C */	bge lbl_8001B168
/* 8001B160 000180A0  38 60 00 00 */	li r3, 0
/* 8001B164 000180A4  48 00 00 14 */	b lbl_8001B178
lbl_8001B168:
/* 8001B168 000180A8  7F A4 EB 78 */	mr r4, r29
/* 8001B16C 000180AC  7F C5 F3 78 */	mr r5, r30
/* 8001B170 000180B0  7F E6 FB 78 */	mr r6, r31
/* 8001B174 000180B4  48 00 00 F9 */	bl mount__10JKRArchiveFlQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
lbl_8001B178:
/* 8001B178 000180B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001B17C 000180BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001B180 000180C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001B184 000180C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001B188 000180C8  7C 08 03 A6 */	mtlr r0
/* 8001B18C 000180CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8001B190 000180D0  4E 80 00 20 */	blr 

.global mount__10JKRArchiveFPvP7JKRHeapQ210JKRArchive15EMountDirection
mount__10JKRArchiveFPvP7JKRHeapQ210JKRArchive15EMountDirection:
/* 8001B194 000180D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B198 000180D8  7C 08 02 A6 */	mflr r0
/* 8001B19C 000180DC  28 04 00 00 */	cmplwi r4, 0
/* 8001B1A0 000180E0  7C 87 23 78 */	mr r7, r4
/* 8001B1A4 000180E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B1A8 000180E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B1AC 000180EC  7C 7F 1B 78 */	mr r31, r3
/* 8001B1B0 000180F0  40 82 00 08 */	bne lbl_8001B1B8
/* 8001B1B4 000180F4  80 ED 88 2C */	lwz r7, sCurrentHeap__7JKRHeap@sda21(r13)
lbl_8001B1B8:
/* 8001B1B8 000180F8  3C 60 80 50 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 8001B1BC 000180FC  81 03 6E 24 */	lwz r8, sVolumeList__13JKRFileLoader@l(r3)
/* 8001B1C0 00018100  48 00 00 44 */	b lbl_8001B204
lbl_8001B1C4:
/* 8001B1C4 00018104  80 68 00 00 */	lwz r3, 0(r8)
/* 8001B1C8 00018108  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 8001B1CC 0001810C  3C 06 AD BF */	addis r0, r6, 0xadbf
/* 8001B1D0 00018110  28 00 52 43 */	cmplwi r0, 0x5243
/* 8001B1D4 00018114  40 82 00 2C */	bne lbl_8001B200
/* 8001B1D8 00018118  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8001B1DC 0001811C  7C 00 F8 00 */	cmpw r0, r31
/* 8001B1E0 00018120  40 82 00 20 */	bne lbl_8001B200
/* 8001B1E4 00018124  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8001B1E8 00018128  7C 00 38 40 */	cmplw r0, r7
/* 8001B1EC 0001812C  40 82 00 14 */	bne lbl_8001B200
/* 8001B1F0 00018130  80 C3 00 34 */	lwz r6, 0x34(r3)
/* 8001B1F4 00018134  38 06 00 01 */	addi r0, r6, 1
/* 8001B1F8 00018138  90 03 00 34 */	stw r0, 0x34(r3)
/* 8001B1FC 0001813C  48 00 00 14 */	b lbl_8001B210
lbl_8001B200:
/* 8001B200 00018140  81 08 00 0C */	lwz r8, 0xc(r8)
lbl_8001B204:
/* 8001B204 00018144  28 08 00 00 */	cmplwi r8, 0
/* 8001B208 00018148  40 82 FF BC */	bne lbl_8001B1C4
/* 8001B20C 0001814C  38 60 00 00 */	li r3, 0
lbl_8001B210:
/* 8001B210 00018150  28 03 00 00 */	cmplwi r3, 0
/* 8001B214 00018154  41 82 00 08 */	beq lbl_8001B21C
/* 8001B218 00018158  48 00 00 40 */	b lbl_8001B258
lbl_8001B21C:
/* 8001B21C 0001815C  2C 05 00 01 */	cmpwi r5, 1
/* 8001B220 00018160  38 60 00 70 */	li r3, 0x70
/* 8001B224 00018164  38 A0 FF FC */	li r5, -4
/* 8001B228 00018168  40 82 00 08 */	bne lbl_8001B230
/* 8001B22C 0001816C  38 A0 00 04 */	li r5, 4
lbl_8001B230:
/* 8001B230 00018170  48 00 8D 11 */	bl __nw__FUlP7JKRHeapi
/* 8001B234 00018174  7C 60 1B 79 */	or. r0, r3, r3
/* 8001B238 00018178  41 82 00 1C */	beq lbl_8001B254
/* 8001B23C 0001817C  3C A0 00 01 */	lis r5, 0x0000FFFF@ha
/* 8001B240 00018180  7F E4 FB 78 */	mr r4, r31
/* 8001B244 00018184  38 A5 FF FF */	addi r5, r5, 0x0000FFFF@l
/* 8001B248 00018188  38 C0 00 00 */	li r6, 0
/* 8001B24C 0001818C  48 00 94 B5 */	bl __ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag
/* 8001B250 00018190  7C 60 1B 78 */	mr r0, r3
lbl_8001B254:
/* 8001B254 00018194  7C 03 03 78 */	mr r3, r0
lbl_8001B258:
/* 8001B258 00018198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B25C 0001819C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B260 000181A0  7C 08 03 A6 */	mtlr r0
/* 8001B264 000181A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B268 000181A8  4E 80 00 20 */	blr 

.global mount__10JKRArchiveFlQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
mount__10JKRArchiveFlQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection:
/* 8001B26C 000181AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B270 000181B0  7C 08 02 A6 */	mflr r0
/* 8001B274 000181B4  28 05 00 00 */	cmplwi r5, 0
/* 8001B278 000181B8  7C A7 2B 78 */	mr r7, r5
/* 8001B27C 000181BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B280 000181C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B284 000181C4  7C DF 33 78 */	mr r31, r6
/* 8001B288 000181C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8001B28C 000181CC  7C 7E 1B 78 */	mr r30, r3
/* 8001B290 000181D0  40 82 00 08 */	bne lbl_8001B298
/* 8001B294 000181D4  80 ED 88 2C */	lwz r7, sCurrentHeap__7JKRHeap@sda21(r13)
lbl_8001B298:
/* 8001B298 000181D8  3C 60 80 50 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 8001B29C 000181DC  81 03 6E 24 */	lwz r8, sVolumeList__13JKRFileLoader@l(r3)
/* 8001B2A0 000181E0  48 00 00 44 */	b lbl_8001B2E4
lbl_8001B2A4:
/* 8001B2A4 000181E4  80 68 00 00 */	lwz r3, 0(r8)
/* 8001B2A8 000181E8  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 8001B2AC 000181EC  3C 06 AD BF */	addis r0, r6, 0xadbf
/* 8001B2B0 000181F0  28 00 52 43 */	cmplwi r0, 0x5243
/* 8001B2B4 000181F4  40 82 00 2C */	bne lbl_8001B2E0
/* 8001B2B8 000181F8  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8001B2BC 000181FC  7C 00 F0 00 */	cmpw r0, r30
/* 8001B2C0 00018200  40 82 00 20 */	bne lbl_8001B2E0
/* 8001B2C4 00018204  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8001B2C8 00018208  7C 00 38 40 */	cmplw r0, r7
/* 8001B2CC 0001820C  40 82 00 14 */	bne lbl_8001B2E0
/* 8001B2D0 00018210  80 C3 00 34 */	lwz r6, 0x34(r3)
/* 8001B2D4 00018214  38 06 00 01 */	addi r0, r6, 1
/* 8001B2D8 00018218  90 03 00 34 */	stw r0, 0x34(r3)
/* 8001B2DC 0001821C  48 00 00 14 */	b lbl_8001B2F0
lbl_8001B2E0:
/* 8001B2E0 00018220  81 08 00 0C */	lwz r8, 0xc(r8)
lbl_8001B2E4:
/* 8001B2E4 00018224  28 08 00 00 */	cmplwi r8, 0
/* 8001B2E8 00018228  40 82 FF BC */	bne lbl_8001B2A4
/* 8001B2EC 0001822C  38 60 00 00 */	li r3, 0
lbl_8001B2F0:
/* 8001B2F0 00018230  28 03 00 00 */	cmplwi r3, 0
/* 8001B2F4 00018234  41 82 00 08 */	beq lbl_8001B2FC
/* 8001B2F8 00018238  48 00 01 34 */	b lbl_8001B42C
lbl_8001B2FC:
/* 8001B2FC 0001823C  2C 1F 00 01 */	cmpwi r31, 1
/* 8001B300 00018240  38 00 FF FC */	li r0, -4
/* 8001B304 00018244  40 82 00 08 */	bne lbl_8001B30C
/* 8001B308 00018248  38 00 00 04 */	li r0, 4
lbl_8001B30C:
/* 8001B30C 0001824C  2C 04 00 03 */	cmpwi r4, 3
/* 8001B310 00018250  41 82 00 84 */	beq lbl_8001B394
/* 8001B314 00018254  40 80 00 14 */	bge lbl_8001B328
/* 8001B318 00018258  2C 04 00 01 */	cmpwi r4, 1
/* 8001B31C 0001825C  41 82 00 18 */	beq lbl_8001B334
/* 8001B320 00018260  40 80 00 44 */	bge lbl_8001B364
/* 8001B324 00018264  48 00 00 CC */	b lbl_8001B3F0
lbl_8001B328:
/* 8001B328 00018268  2C 04 00 05 */	cmpwi r4, 5
/* 8001B32C 0001826C  40 80 00 C4 */	bge lbl_8001B3F0
/* 8001B330 00018270  48 00 00 94 */	b lbl_8001B3C4
lbl_8001B334:
/* 8001B334 00018274  7C A4 2B 78 */	mr r4, r5
/* 8001B338 00018278  7C 05 03 78 */	mr r5, r0
/* 8001B33C 0001827C  38 60 00 70 */	li r3, 0x70
/* 8001B340 00018280  48 00 8C 01 */	bl __nw__FUlP7JKRHeapi
/* 8001B344 00018284  7C 60 1B 79 */	or. r0, r3, r3
/* 8001B348 00018288  41 82 00 14 */	beq lbl_8001B35C
/* 8001B34C 0001828C  7F C4 F3 78 */	mr r4, r30
/* 8001B350 00018290  7F E5 FB 78 */	mr r5, r31
/* 8001B354 00018294  48 00 92 F1 */	bl __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
/* 8001B358 00018298  7C 60 1B 78 */	mr r0, r3
lbl_8001B35C:
/* 8001B35C 0001829C  7C 04 03 78 */	mr r4, r0
/* 8001B360 000182A0  48 00 00 90 */	b lbl_8001B3F0
lbl_8001B364:
/* 8001B364 000182A4  7C A4 2B 78 */	mr r4, r5
/* 8001B368 000182A8  7C 05 03 78 */	mr r5, r0
/* 8001B36C 000182AC  38 60 00 6C */	li r3, 0x6c
/* 8001B370 000182B0  48 00 8B D1 */	bl __nw__FUlP7JKRHeapi
/* 8001B374 000182B4  7C 60 1B 79 */	or. r0, r3, r3
/* 8001B378 000182B8  41 82 00 14 */	beq lbl_8001B38C
/* 8001B37C 000182BC  7F C4 F3 78 */	mr r4, r30
/* 8001B380 000182C0  7F E5 FB 78 */	mr r5, r31
/* 8001B384 000182C4  4B FF D5 D5 */	bl __ct__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
/* 8001B388 000182C8  7C 60 1B 78 */	mr r0, r3
lbl_8001B38C:
/* 8001B38C 000182CC  7C 04 03 78 */	mr r4, r0
/* 8001B390 000182D0  48 00 00 60 */	b lbl_8001B3F0
lbl_8001B394:
/* 8001B394 000182D4  7C A4 2B 78 */	mr r4, r5
/* 8001B398 000182D8  7C 05 03 78 */	mr r5, r0
/* 8001B39C 000182DC  38 60 00 6C */	li r3, 0x6c
/* 8001B3A0 000182E0  48 00 8B A1 */	bl __nw__FUlP7JKRHeapi
/* 8001B3A4 000182E4  7C 60 1B 79 */	or. r0, r3, r3
/* 8001B3A8 000182E8  41 82 00 14 */	beq lbl_8001B3BC
/* 8001B3AC 000182EC  7F C4 F3 78 */	mr r4, r30
/* 8001B3B0 000182F0  7F E5 FB 78 */	mr r5, r31
/* 8001B3B4 000182F4  48 00 31 C9 */	bl __ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection
/* 8001B3B8 000182F8  7C 60 1B 78 */	mr r0, r3
lbl_8001B3BC:
/* 8001B3BC 000182FC  7C 04 03 78 */	mr r4, r0
/* 8001B3C0 00018300  48 00 00 30 */	b lbl_8001B3F0
lbl_8001B3C4:
/* 8001B3C4 00018304  7C A4 2B 78 */	mr r4, r5
/* 8001B3C8 00018308  7C 05 03 78 */	mr r5, r0
/* 8001B3CC 0001830C  38 60 00 80 */	li r3, 0x80
/* 8001B3D0 00018310  48 00 8B 71 */	bl __nw__FUlP7JKRHeapi
/* 8001B3D4 00018314  7C 60 1B 79 */	or. r0, r3, r3
/* 8001B3D8 00018318  41 82 00 14 */	beq lbl_8001B3EC
/* 8001B3DC 0001831C  7F C4 F3 78 */	mr r4, r30
/* 8001B3E0 00018320  7F E5 FB 78 */	mr r5, r31
/* 8001B3E4 00018324  48 00 07 D5 */	bl __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection
/* 8001B3E8 00018328  7C 60 1B 78 */	mr r0, r3
lbl_8001B3EC:
/* 8001B3EC 0001832C  7C 04 03 78 */	mr r4, r0
lbl_8001B3F0:
/* 8001B3F0 00018330  28 04 00 00 */	cmplwi r4, 0
/* 8001B3F4 00018334  41 82 00 34 */	beq lbl_8001B428
/* 8001B3F8 00018338  88 04 00 3C */	lbz r0, 0x3c(r4)
/* 8001B3FC 0001833C  28 00 00 00 */	cmplwi r0, 0
/* 8001B400 00018340  40 82 00 28 */	bne lbl_8001B428
/* 8001B404 00018344  28 04 00 00 */	cmplwi r4, 0
/* 8001B408 00018348  41 82 00 1C */	beq lbl_8001B424
/* 8001B40C 0001834C  7C 83 23 78 */	mr r3, r4
/* 8001B410 00018350  38 80 00 01 */	li r4, 1
/* 8001B414 00018354  81 83 00 00 */	lwz r12, 0(r3)
/* 8001B418 00018358  81 8C 00 08 */	lwz r12, 8(r12)
/* 8001B41C 0001835C  7D 89 03 A6 */	mtctr r12
/* 8001B420 00018360  4E 80 04 21 */	bctrl 
lbl_8001B424:
/* 8001B424 00018364  38 80 00 00 */	li r4, 0
lbl_8001B428:
/* 8001B428 00018368  7C 83 23 78 */	mr r3, r4
lbl_8001B42C:
/* 8001B42C 0001836C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B430 00018370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B434 00018374  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001B438 00018378  7C 08 03 A6 */	mtlr r0
/* 8001B43C 0001837C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B440 00018380  4E 80 00 20 */	blr 

.global becomeCurrent__10JKRArchiveFPCc
becomeCurrent__10JKRArchiveFPCc:
/* 8001B444 00018384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B448 00018388  7C 08 02 A6 */	mflr r0
/* 8001B44C 0001838C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B450 00018390  88 04 00 00 */	lbz r0, 0(r4)
/* 8001B454 00018394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B458 00018398  7C 7F 1B 78 */	mr r31, r3
/* 8001B45C 0001839C  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8001B460 000183A0  40 82 00 24 */	bne lbl_8001B484
/* 8001B464 000183A4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8001B468 000183A8  7C 00 07 75 */	extsb. r0, r0
/* 8001B46C 000183AC  40 82 00 08 */	bne lbl_8001B474
/* 8001B470 000183B0  38 80 00 00 */	li r4, 0
lbl_8001B474:
/* 8001B474 000183B4  7F E3 FB 78 */	mr r3, r31
/* 8001B478 000183B8  38 A0 00 00 */	li r5, 0
/* 8001B47C 000183BC  4B FF F1 95 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 8001B480 000183C0  48 00 00 0C */	b lbl_8001B48C
lbl_8001B484:
/* 8001B484 000183C4  80 AD 87 70 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 8001B488 000183C8  4B FF F1 89 */	bl findDirectory__10JKRArchiveCFPCcUl
lbl_8001B48C:
/* 8001B48C 000183CC  7C 03 00 D0 */	neg r0, r3
/* 8001B490 000183D0  7C 00 1B 78 */	or r0, r0, r3
/* 8001B494 000183D4  54 04 0F FF */	rlwinm. r4, r0, 1, 0x1f, 0x1f
/* 8001B498 000183D8  41 82 00 1C */	beq lbl_8001B4B4
/* 8001B49C 000183DC  93 ED 88 20 */	stw r31, sCurrentVolume__13JKRFileLoader@sda21(r13)
/* 8001B4A0 000183E0  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 8001B4A4 000183E4  7C 00 18 50 */	subf r0, r0, r3
/* 8001B4A8 000183E8  7C 00 26 70 */	srawi r0, r0, 4
/* 8001B4AC 000183EC  7C 00 01 94 */	addze r0, r0
/* 8001B4B0 000183F0  90 0D 87 70 */	stw r0, sCurrentDirID__10JKRArchive@sda21(r13)
lbl_8001B4B4:
/* 8001B4B4 000183F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B4B8 000183F8  7C 83 23 78 */	mr r3, r4
/* 8001B4BC 000183FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B4C0 00018400  7C 08 03 A6 */	mtlr r0
/* 8001B4C4 00018404  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B4C8 00018408  4E 80 00 20 */	blr 

.global getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl
getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl:
/* 8001B4CC 0001840C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B4D0 00018410  7C 08 02 A6 */	mflr r0
/* 8001B4D4 00018414  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B4D8 00018418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B4DC 0001841C  7C 9F 23 78 */	mr r31, r4
/* 8001B4E0 00018420  7C A4 2B 78 */	mr r4, r5
/* 8001B4E4 00018424  93 C1 00 08 */	stw r30, 8(r1)
/* 8001B4E8 00018428  7C 7E 1B 78 */	mr r30, r3
/* 8001B4EC 0001842C  4B FF F8 C9 */	bl findIdxResource__10JKRArchiveCFUl
/* 8001B4F0 00018430  28 03 00 00 */	cmplwi r3, 0
/* 8001B4F4 00018434  40 82 00 0C */	bne lbl_8001B500
/* 8001B4F8 00018438  38 60 00 00 */	li r3, 0
/* 8001B4FC 0001843C  48 00 00 30 */	b lbl_8001B52C
lbl_8001B500:
/* 8001B500 00018440  80 03 00 04 */	lwz r0, 4(r3)
/* 8001B504 00018444  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 8001B508 00018448  54 00 46 3E */	srwi r0, r0, 0x18
/* 8001B50C 0001844C  98 1F 00 00 */	stb r0, 0(r31)
/* 8001B510 00018450  A0 03 00 00 */	lhz r0, 0(r3)
/* 8001B514 00018454  B0 1F 00 02 */	sth r0, 2(r31)
/* 8001B518 00018458  80 03 00 04 */	lwz r0, 4(r3)
/* 8001B51C 0001845C  38 60 00 01 */	li r3, 1
/* 8001B520 00018460  54 00 02 3E */	clrlwi r0, r0, 8
/* 8001B524 00018464  7C 04 02 14 */	add r0, r4, r0
/* 8001B528 00018468  90 1F 00 04 */	stw r0, 4(r31)
lbl_8001B52C:
/* 8001B52C 0001846C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B530 00018470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B534 00018474  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001B538 00018478  7C 08 03 A6 */	mtlr r0
/* 8001B53C 0001847C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B540 00018480  4E 80 00 20 */	blr 

.global getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
getGlbResource__10JKRArchiveFUlPCcP10JKRArchive:
/* 8001B544 00018484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001B548 00018488  7C 08 02 A6 */	mflr r0
/* 8001B54C 0001848C  28 05 00 00 */	cmplwi r5, 0
/* 8001B550 00018490  38 C0 00 00 */	li r6, 0
/* 8001B554 00018494  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001B558 00018498  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001B55C 0001849C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001B560 000184A0  7C 9E 23 78 */	mr r30, r4
/* 8001B564 000184A4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001B568 000184A8  7C 7D 1B 78 */	mr r29, r3
/* 8001B56C 000184AC  41 82 00 24 */	beq lbl_8001B590
/* 8001B570 000184B0  7C A3 2B 78 */	mr r3, r5
/* 8001B574 000184B4  7F A4 EB 78 */	mr r4, r29
/* 8001B578 000184B8  81 85 00 00 */	lwz r12, 0(r5)
/* 8001B57C 000184BC  7F C5 F3 78 */	mr r5, r30
/* 8001B580 000184C0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8001B584 000184C4  7D 89 03 A6 */	mtctr r12
/* 8001B588 000184C8  4E 80 04 21 */	bctrl 
/* 8001B58C 000184CC  48 00 00 54 */	b lbl_8001B5E0
lbl_8001B590:
/* 8001B590 000184D0  3C 60 80 50 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 8001B594 000184D4  83 E3 6E 24 */	lwz r31, sVolumeList__13JKRFileLoader@l(r3)
/* 8001B598 000184D8  48 00 00 3C */	b lbl_8001B5D4
lbl_8001B59C:
/* 8001B59C 000184DC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8001B5A0 000184E0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8001B5A4 000184E4  3C 04 AD BF */	addis r0, r4, 0xadbf
/* 8001B5A8 000184E8  28 00 52 43 */	cmplwi r0, 0x5243
/* 8001B5AC 000184EC  40 82 00 24 */	bne lbl_8001B5D0
/* 8001B5B0 000184F0  81 83 00 00 */	lwz r12, 0(r3)
/* 8001B5B4 000184F4  7F A4 EB 78 */	mr r4, r29
/* 8001B5B8 000184F8  7F C5 F3 78 */	mr r5, r30
/* 8001B5BC 000184FC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8001B5C0 00018500  7D 89 03 A6 */	mtctr r12
/* 8001B5C4 00018504  4E 80 04 21 */	bctrl 
/* 8001B5C8 00018508  7C 66 1B 79 */	or. r6, r3, r3
/* 8001B5CC 0001850C  40 82 00 10 */	bne lbl_8001B5DC
lbl_8001B5D0:
/* 8001B5D0 00018510  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_8001B5D4:
/* 8001B5D4 00018514  28 1F 00 00 */	cmplwi r31, 0
/* 8001B5D8 00018518  40 82 FF C4 */	bne lbl_8001B59C
lbl_8001B5DC:
/* 8001B5DC 0001851C  7C C3 33 78 */	mr r3, r6
lbl_8001B5E0:
/* 8001B5E0 00018520  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001B5E4 00018524  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001B5E8 00018528  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001B5EC 0001852C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001B5F0 00018530  7C 08 03 A6 */	mtlr r0
/* 8001B5F4 00018534  38 21 00 20 */	addi r1, r1, 0x20
/* 8001B5F8 00018538  4E 80 00 20 */	blr 

.global getResource__10JKRArchiveFPCc
getResource__10JKRArchiveFPCc:
/* 8001B5FC 0001853C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B600 00018540  7C 08 02 A6 */	mflr r0
/* 8001B604 00018544  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B608 00018548  88 04 00 00 */	lbz r0, 0(r4)
/* 8001B60C 0001854C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B610 00018550  7C 7F 1B 78 */	mr r31, r3
/* 8001B614 00018554  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8001B618 00018558  40 82 00 18 */	bne lbl_8001B630
/* 8001B61C 0001855C  38 84 00 01 */	addi r4, r4, 1
/* 8001B620 00018560  38 A0 00 00 */	li r5, 0
/* 8001B624 00018564  4B FF F4 51 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 8001B628 00018568  7C 64 1B 78 */	mr r4, r3
/* 8001B62C 0001856C  48 00 00 10 */	b lbl_8001B63C
lbl_8001B630:
/* 8001B630 00018570  80 AD 87 70 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 8001B634 00018574  4B FF F4 41 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 8001B638 00018578  7C 64 1B 78 */	mr r4, r3
lbl_8001B63C:
/* 8001B63C 0001857C  28 04 00 00 */	cmplwi r4, 0
/* 8001B640 00018580  41 82 00 20 */	beq lbl_8001B660
/* 8001B644 00018584  81 9F 00 00 */	lwz r12, 0(r31)
/* 8001B648 00018588  7F E3 FB 78 */	mr r3, r31
/* 8001B64C 0001858C  38 A0 00 00 */	li r5, 0
/* 8001B650 00018590  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8001B654 00018594  7D 89 03 A6 */	mtctr r12
/* 8001B658 00018598  4E 80 04 21 */	bctrl 
/* 8001B65C 0001859C  48 00 00 08 */	b lbl_8001B664
lbl_8001B660:
/* 8001B660 000185A0  38 60 00 00 */	li r3, 0
lbl_8001B664:
/* 8001B664 000185A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B668 000185A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B66C 000185AC  7C 08 03 A6 */	mtlr r0
/* 8001B670 000185B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B674 000185B4  4E 80 00 20 */	blr 

.global getResource__10JKRArchiveFUlPCc
getResource__10JKRArchiveFUlPCc:
/* 8001B678 000185B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B67C 000185BC  7C 08 02 A6 */	mflr r0
/* 8001B680 000185C0  28 04 00 00 */	cmplwi r4, 0
/* 8001B684 000185C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B688 000185C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B68C 000185CC  7C 7F 1B 78 */	mr r31, r3
/* 8001B690 000185D0  41 82 00 10 */	beq lbl_8001B6A0
/* 8001B694 000185D4  3C 04 C0 C1 */	addis r0, r4, 0xc0c1
/* 8001B698 000185D8  28 00 3F 3F */	cmplwi r0, 0x3f3f
/* 8001B69C 000185DC  40 82 00 18 */	bne lbl_8001B6B4
lbl_8001B6A0:
/* 8001B6A0 000185E0  7F E3 FB 78 */	mr r3, r31
/* 8001B6A4 000185E4  7C A4 2B 78 */	mr r4, r5
/* 8001B6A8 000185E8  4B FF F7 35 */	bl findNameResource__10JKRArchiveCFPCc
/* 8001B6AC 000185EC  7C 64 1B 78 */	mr r4, r3
/* 8001B6B0 000185F0  48 00 00 0C */	b lbl_8001B6BC
lbl_8001B6B4:
/* 8001B6B4 000185F4  4B FF F2 CD */	bl findTypeResource__10JKRArchiveCFUlPCc
/* 8001B6B8 000185F8  7C 64 1B 78 */	mr r4, r3
lbl_8001B6BC:
/* 8001B6BC 000185FC  28 04 00 00 */	cmplwi r4, 0
/* 8001B6C0 00018600  41 82 00 20 */	beq lbl_8001B6E0
/* 8001B6C4 00018604  81 9F 00 00 */	lwz r12, 0(r31)
/* 8001B6C8 00018608  7F E3 FB 78 */	mr r3, r31
/* 8001B6CC 0001860C  38 A0 00 00 */	li r5, 0
/* 8001B6D0 00018610  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8001B6D4 00018614  7D 89 03 A6 */	mtctr r12
/* 8001B6D8 00018618  4E 80 04 21 */	bctrl 
/* 8001B6DC 0001861C  48 00 00 08 */	b lbl_8001B6E4
lbl_8001B6E0:
/* 8001B6E0 00018620  38 60 00 00 */	li r3, 0
lbl_8001B6E4:
/* 8001B6E4 00018624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B6E8 00018628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B6EC 0001862C  7C 08 03 A6 */	mtlr r0
/* 8001B6F0 00018630  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B6F4 00018634  4E 80 00 20 */	blr 

.global getIdxResource__10JKRArchiveFUl
getIdxResource__10JKRArchiveFUl:
/* 8001B6F8 00018638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B6FC 0001863C  7C 08 02 A6 */	mflr r0
/* 8001B700 00018640  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B704 00018644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B708 00018648  7C 7F 1B 78 */	mr r31, r3
/* 8001B70C 0001864C  4B FF F6 A9 */	bl findIdxResource__10JKRArchiveCFUl
/* 8001B710 00018650  7C 64 1B 79 */	or. r4, r3, r3
/* 8001B714 00018654  41 82 00 20 */	beq lbl_8001B734
/* 8001B718 00018658  81 9F 00 00 */	lwz r12, 0(r31)
/* 8001B71C 0001865C  7F E3 FB 78 */	mr r3, r31
/* 8001B720 00018660  38 A0 00 00 */	li r5, 0
/* 8001B724 00018664  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8001B728 00018668  7D 89 03 A6 */	mtctr r12
/* 8001B72C 0001866C  4E 80 04 21 */	bctrl 
/* 8001B730 00018670  48 00 00 08 */	b lbl_8001B738
lbl_8001B734:
/* 8001B734 00018674  38 60 00 00 */	li r3, 0
lbl_8001B738:
/* 8001B738 00018678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B73C 0001867C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001B740 00018680  7C 08 03 A6 */	mtlr r0
/* 8001B744 00018684  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B748 00018688  4E 80 00 20 */	blr 

.global readResource__10JKRArchiveFPvUlUlPCc
readResource__10JKRArchiveFPvUlUlPCc:
/* 8001B74C 0001868C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001B750 00018690  7C 08 02 A6 */	mflr r0
/* 8001B754 00018694  28 06 00 00 */	cmplwi r6, 0
/* 8001B758 00018698  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001B75C 0001869C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001B760 000186A0  7C BF 2B 78 */	mr r31, r5
/* 8001B764 000186A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001B768 000186A8  7C 9E 23 78 */	mr r30, r4
/* 8001B76C 000186AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001B770 000186B0  7C 7D 1B 78 */	mr r29, r3
/* 8001B774 000186B4  41 82 00 10 */	beq lbl_8001B784
/* 8001B778 000186B8  3C 06 C0 C1 */	addis r0, r6, 0xc0c1
/* 8001B77C 000186BC  28 00 3F 3F */	cmplwi r0, 0x3f3f
/* 8001B780 000186C0  40 82 00 18 */	bne lbl_8001B798
lbl_8001B784:
/* 8001B784 000186C4  7F A3 EB 78 */	mr r3, r29
/* 8001B788 000186C8  7C E4 3B 78 */	mr r4, r7
/* 8001B78C 000186CC  4B FF F6 51 */	bl findNameResource__10JKRArchiveCFPCc
/* 8001B790 000186D0  7C 66 1B 78 */	mr r6, r3
/* 8001B794 000186D4  48 00 00 14 */	b lbl_8001B7A8
lbl_8001B798:
/* 8001B798 000186D8  7C C4 33 78 */	mr r4, r6
/* 8001B79C 000186DC  7C E5 3B 78 */	mr r5, r7
/* 8001B7A0 000186E0  4B FF F1 E1 */	bl findTypeResource__10JKRArchiveCFUlPCc
/* 8001B7A4 000186E4  7C 66 1B 78 */	mr r6, r3
lbl_8001B7A8:
/* 8001B7A8 000186E8  28 06 00 00 */	cmplwi r6, 0
/* 8001B7AC 000186EC  41 82 00 2C */	beq lbl_8001B7D8
/* 8001B7B0 000186F0  81 9D 00 00 */	lwz r12, 0(r29)
/* 8001B7B4 000186F4  7F A3 EB 78 */	mr r3, r29
/* 8001B7B8 000186F8  7F C4 F3 78 */	mr r4, r30
/* 8001B7BC 000186FC  7F E5 FB 78 */	mr r5, r31
/* 8001B7C0 00018700  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8001B7C4 00018704  38 E1 00 08 */	addi r7, r1, 8
/* 8001B7C8 00018708  7D 89 03 A6 */	mtctr r12
/* 8001B7CC 0001870C  4E 80 04 21 */	bctrl 
/* 8001B7D0 00018710  80 61 00 08 */	lwz r3, 8(r1)
/* 8001B7D4 00018714  48 00 00 08 */	b lbl_8001B7DC
lbl_8001B7D8:
/* 8001B7D8 00018718  38 60 00 00 */	li r3, 0
lbl_8001B7DC:
/* 8001B7DC 0001871C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001B7E0 00018720  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001B7E4 00018724  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001B7E8 00018728  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001B7EC 0001872C  7C 08 03 A6 */	mtlr r0
/* 8001B7F0 00018730  38 21 00 20 */	addi r1, r1, 0x20
/* 8001B7F4 00018734  4E 80 00 20 */	blr 

.global readResource__10JKRArchiveFPvUlPCc
readResource__10JKRArchiveFPvUlPCc:
/* 8001B7F8 00018738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001B7FC 0001873C  7C 08 02 A6 */	mflr r0
/* 8001B800 00018740  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001B804 00018744  88 06 00 00 */	lbz r0, 0(r6)
/* 8001B808 00018748  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001B80C 0001874C  7C BF 2B 78 */	mr r31, r5
/* 8001B810 00018750  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8001B814 00018754  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001B818 00018758  7C 9E 23 78 */	mr r30, r4
/* 8001B81C 0001875C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001B820 00018760  7C 7D 1B 78 */	mr r29, r3
/* 8001B824 00018764  40 82 00 18 */	bne lbl_8001B83C
/* 8001B828 00018768  38 86 00 01 */	addi r4, r6, 1
/* 8001B82C 0001876C  38 A0 00 00 */	li r5, 0
/* 8001B830 00018770  4B FF F2 45 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 8001B834 00018774  7C 66 1B 78 */	mr r6, r3
/* 8001B838 00018778  48 00 00 14 */	b lbl_8001B84C
lbl_8001B83C:
/* 8001B83C 0001877C  80 AD 87 70 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 8001B840 00018780  7C C4 33 78 */	mr r4, r6
/* 8001B844 00018784  4B FF F2 31 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 8001B848 00018788  7C 66 1B 78 */	mr r6, r3
lbl_8001B84C:
/* 8001B84C 0001878C  28 06 00 00 */	cmplwi r6, 0
/* 8001B850 00018790  41 82 00 2C */	beq lbl_8001B87C
/* 8001B854 00018794  81 9D 00 00 */	lwz r12, 0(r29)
/* 8001B858 00018798  7F A3 EB 78 */	mr r3, r29
/* 8001B85C 0001879C  7F C4 F3 78 */	mr r4, r30
/* 8001B860 000187A0  7F E5 FB 78 */	mr r5, r31
/* 8001B864 000187A4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8001B868 000187A8  38 E1 00 08 */	addi r7, r1, 8
/* 8001B86C 000187AC  7D 89 03 A6 */	mtctr r12
/* 8001B870 000187B0  4E 80 04 21 */	bctrl 
/* 8001B874 000187B4  80 61 00 08 */	lwz r3, 8(r1)
/* 8001B878 000187B8  48 00 00 08 */	b lbl_8001B880
lbl_8001B87C:
/* 8001B87C 000187BC  38 60 00 00 */	li r3, 0
lbl_8001B880:
/* 8001B880 000187C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001B884 000187C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001B888 000187C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001B88C 000187CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001B890 000187D0  7C 08 03 A6 */	mtlr r0
/* 8001B894 000187D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8001B898 000187D8  4E 80 00 20 */	blr 

.global readResource__10JKRArchiveFPvUlUs
readResource__10JKRArchiveFPvUlUs:
/* 8001B89C 000187DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001B8A0 000187E0  7C 08 02 A6 */	mflr r0
/* 8001B8A4 000187E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001B8A8 000187E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001B8AC 000187EC  7C BF 2B 78 */	mr r31, r5
/* 8001B8B0 000187F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001B8B4 000187F4  7C 9E 23 78 */	mr r30, r4
/* 8001B8B8 000187F8  7C C4 33 78 */	mr r4, r6
/* 8001B8BC 000187FC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001B8C0 00018800  7C 7D 1B 78 */	mr r29, r3
/* 8001B8C4 00018804  4B FF F5 F1 */	bl findIdResource__10JKRArchiveCFUs
/* 8001B8C8 00018808  7C 66 1B 79 */	or. r6, r3, r3
/* 8001B8CC 0001880C  41 82 00 2C */	beq lbl_8001B8F8
/* 8001B8D0 00018810  81 9D 00 00 */	lwz r12, 0(r29)
/* 8001B8D4 00018814  7F A3 EB 78 */	mr r3, r29
/* 8001B8D8 00018818  7F C4 F3 78 */	mr r4, r30
/* 8001B8DC 0001881C  7F E5 FB 78 */	mr r5, r31
/* 8001B8E0 00018820  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8001B8E4 00018824  38 E1 00 08 */	addi r7, r1, 8
/* 8001B8E8 00018828  7D 89 03 A6 */	mtctr r12
/* 8001B8EC 0001882C  4E 80 04 21 */	bctrl 
/* 8001B8F0 00018830  80 61 00 08 */	lwz r3, 8(r1)
/* 8001B8F4 00018834  48 00 00 08 */	b lbl_8001B8FC
lbl_8001B8F8:
/* 8001B8F8 00018838  38 60 00 00 */	li r3, 0
lbl_8001B8FC:
/* 8001B8FC 0001883C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001B900 00018840  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001B904 00018844  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001B908 00018848  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001B90C 0001884C  7C 08 03 A6 */	mtlr r0
/* 8001B910 00018850  38 21 00 20 */	addi r1, r1, 0x20
/* 8001B914 00018854  4E 80 00 20 */	blr 

.global removeResourceAll__10JKRArchiveFv
removeResourceAll__10JKRArchiveFv:
/* 8001B918 00018858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001B91C 0001885C  7C 08 02 A6 */	mflr r0
/* 8001B920 00018860  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001B924 00018864  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001B928 00018868  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001B92C 0001886C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001B930 00018870  93 81 00 10 */	stw r28, 0x10(r1)
/* 8001B934 00018874  7C 7C 1B 78 */	mr r28, r3
/* 8001B938 00018878  80 03 00 44 */	lwz r0, 0x44(r3)
/* 8001B93C 0001887C  28 00 00 00 */	cmplwi r0, 0
/* 8001B940 00018880  41 82 00 50 */	beq lbl_8001B990
/* 8001B944 00018884  88 1C 00 3C */	lbz r0, 0x3c(r28)
/* 8001B948 00018888  28 00 00 01 */	cmplwi r0, 1
/* 8001B94C 0001888C  41 82 00 44 */	beq lbl_8001B990
/* 8001B950 00018890  83 DC 00 4C */	lwz r30, 0x4c(r28)
/* 8001B954 00018894  3B A0 00 00 */	li r29, 0
/* 8001B958 00018898  3B E0 00 00 */	li r31, 0
/* 8001B95C 0001889C  48 00 00 24 */	b lbl_8001B980
lbl_8001B960:
/* 8001B960 000188A0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8001B964 000188A4  28 03 00 00 */	cmplwi r3, 0
/* 8001B968 000188A8  41 82 00 10 */	beq lbl_8001B978
/* 8001B96C 000188AC  80 9C 00 38 */	lwz r4, 0x38(r28)
/* 8001B970 000188B0  48 00 7C FD */	bl free__7JKRHeapFPvP7JKRHeap
/* 8001B974 000188B4  93 FE 00 10 */	stw r31, 0x10(r30)
lbl_8001B978:
/* 8001B978 000188B8  3B DE 00 14 */	addi r30, r30, 0x14
/* 8001B97C 000188BC  3B BD 00 01 */	addi r29, r29, 1
lbl_8001B980:
/* 8001B980 000188C0  80 7C 00 44 */	lwz r3, 0x44(r28)
/* 8001B984 000188C4  80 03 00 08 */	lwz r0, 8(r3)
/* 8001B988 000188C8  7C 1D 00 40 */	cmplw r29, r0
/* 8001B98C 000188CC  41 80 FF D4 */	blt lbl_8001B960
lbl_8001B990:
/* 8001B990 000188D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001B994 000188D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001B998 000188D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001B99C 000188DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001B9A0 000188E0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8001B9A4 000188E4  7C 08 03 A6 */	mtlr r0
/* 8001B9A8 000188E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8001B9AC 000188EC  4E 80 00 20 */	blr 

.global removeResource__10JKRArchiveFPv
removeResource__10JKRArchiveFPv:
/* 8001B9B0 000188F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B9B4 000188F4  7C 08 02 A6 */	mflr r0
/* 8001B9B8 000188F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B9BC 000188FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001B9C0 00018900  7C 9F 23 78 */	mr r31, r4
/* 8001B9C4 00018904  93 C1 00 08 */	stw r30, 8(r1)
/* 8001B9C8 00018908  7C 7E 1B 78 */	mr r30, r3
/* 8001B9CC 0001890C  4B FF F4 B5 */	bl findPtrResource__10JKRArchiveCFPCv
/* 8001B9D0 00018910  28 03 00 00 */	cmplwi r3, 0
/* 8001B9D4 00018914  40 82 00 0C */	bne lbl_8001B9E0
/* 8001B9D8 00018918  38 60 00 00 */	li r3, 0
/* 8001B9DC 0001891C  48 00 00 1C */	b lbl_8001B9F8
lbl_8001B9E0:
/* 8001B9E0 00018920  38 00 00 00 */	li r0, 0
/* 8001B9E4 00018924  90 03 00 10 */	stw r0, 0x10(r3)
/* 8001B9E8 00018928  7F E3 FB 78 */	mr r3, r31
/* 8001B9EC 0001892C  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 8001B9F0 00018930  48 00 7C 7D */	bl free__7JKRHeapFPvP7JKRHeap
/* 8001B9F4 00018934  38 60 00 01 */	li r3, 1
lbl_8001B9F8:
/* 8001B9F8 00018938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B9FC 0001893C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001BA00 00018940  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001BA04 00018944  7C 08 03 A6 */	mtlr r0
/* 8001BA08 00018948  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BA0C 0001894C  4E 80 00 20 */	blr 

.global detachResource__10JKRArchiveFPv
detachResource__10JKRArchiveFPv:
/* 8001BA10 00018950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BA14 00018954  7C 08 02 A6 */	mflr r0
/* 8001BA18 00018958  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BA1C 0001895C  4B FF F4 65 */	bl findPtrResource__10JKRArchiveCFPCv
/* 8001BA20 00018960  28 03 00 00 */	cmplwi r3, 0
/* 8001BA24 00018964  40 82 00 0C */	bne lbl_8001BA30
/* 8001BA28 00018968  38 60 00 00 */	li r3, 0
/* 8001BA2C 0001896C  48 00 00 10 */	b lbl_8001BA3C
lbl_8001BA30:
/* 8001BA30 00018970  38 00 00 00 */	li r0, 0
/* 8001BA34 00018974  90 03 00 10 */	stw r0, 0x10(r3)
/* 8001BA38 00018978  38 60 00 01 */	li r3, 1
lbl_8001BA3C:
/* 8001BA3C 0001897C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BA40 00018980  7C 08 03 A6 */	mtlr r0
/* 8001BA44 00018984  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BA48 00018988  4E 80 00 20 */	blr 

.global getResSize__10JKRArchiveCFPCv
getResSize__10JKRArchiveCFPCv:
/* 8001BA4C 0001898C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BA50 00018990  7C 08 02 A6 */	mflr r0
/* 8001BA54 00018994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BA58 00018998  4B FF F4 29 */	bl findPtrResource__10JKRArchiveCFPCv
/* 8001BA5C 0001899C  28 03 00 00 */	cmplwi r3, 0
/* 8001BA60 000189A0  40 82 00 0C */	bne lbl_8001BA6C
/* 8001BA64 000189A4  38 60 FF FF */	li r3, -1
/* 8001BA68 000189A8  48 00 00 08 */	b lbl_8001BA70
lbl_8001BA6C:
/* 8001BA6C 000189AC  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_8001BA70:
/* 8001BA70 000189B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BA74 000189B4  7C 08 03 A6 */	mtlr r0
/* 8001BA78 000189B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BA7C 000189BC  4E 80 00 20 */	blr 

.global countFile__10JKRArchiveCFPCc
countFile__10JKRArchiveCFPCc:
/* 8001BA80 000189C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BA84 000189C4  7C 08 02 A6 */	mflr r0
/* 8001BA88 000189C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BA8C 000189CC  88 04 00 00 */	lbz r0, 0(r4)
/* 8001BA90 000189D0  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8001BA94 000189D4  40 82 00 20 */	bne lbl_8001BAB4
/* 8001BA98 000189D8  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8001BA9C 000189DC  7C 00 07 75 */	extsb. r0, r0
/* 8001BAA0 000189E0  40 82 00 08 */	bne lbl_8001BAA8
/* 8001BAA4 000189E4  38 80 00 00 */	li r4, 0
lbl_8001BAA8:
/* 8001BAA8 000189E8  38 A0 00 00 */	li r5, 0
/* 8001BAAC 000189EC  4B FF EB 65 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 8001BAB0 000189F0  48 00 00 0C */	b lbl_8001BABC
lbl_8001BAB4:
/* 8001BAB4 000189F4  80 AD 87 70 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 8001BAB8 000189F8  4B FF EB 59 */	bl findDirectory__10JKRArchiveCFPCcUl
lbl_8001BABC:
/* 8001BABC 000189FC  28 03 00 00 */	cmplwi r3, 0
/* 8001BAC0 00018A00  41 82 00 0C */	beq lbl_8001BACC
/* 8001BAC4 00018A04  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 8001BAC8 00018A08  48 00 00 08 */	b lbl_8001BAD0
lbl_8001BACC:
/* 8001BACC 00018A0C  38 60 00 00 */	li r3, 0
lbl_8001BAD0:
/* 8001BAD0 00018A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BAD4 00018A14  7C 08 03 A6 */	mtlr r0
/* 8001BAD8 00018A18  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BADC 00018A1C  4E 80 00 20 */	blr 

.global getFirstFile__10JKRArchiveCFPCc
getFirstFile__10JKRArchiveCFPCc:
/* 8001BAE0 00018A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BAE4 00018A24  7C 08 02 A6 */	mflr r0
/* 8001BAE8 00018A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BAEC 00018A2C  88 04 00 00 */	lbz r0, 0(r4)
/* 8001BAF0 00018A30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001BAF4 00018A34  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8001BAF8 00018A38  93 C1 00 08 */	stw r30, 8(r1)
/* 8001BAFC 00018A3C  7C 7E 1B 78 */	mr r30, r3
/* 8001BB00 00018A40  40 82 00 28 */	bne lbl_8001BB28
/* 8001BB04 00018A44  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8001BB08 00018A48  7C 00 07 75 */	extsb. r0, r0
/* 8001BB0C 00018A4C  40 82 00 08 */	bne lbl_8001BB14
/* 8001BB10 00018A50  38 80 00 00 */	li r4, 0
lbl_8001BB14:
/* 8001BB14 00018A54  7F C3 F3 78 */	mr r3, r30
/* 8001BB18 00018A58  38 A0 00 00 */	li r5, 0
/* 8001BB1C 00018A5C  4B FF EA F5 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 8001BB20 00018A60  7C 7F 1B 78 */	mr r31, r3
/* 8001BB24 00018A64  48 00 00 10 */	b lbl_8001BB34
lbl_8001BB28:
/* 8001BB28 00018A68  80 AD 87 70 */	lwz r5, sCurrentDirID__10JKRArchive@sda21(r13)
/* 8001BB2C 00018A6C  4B FF EA E5 */	bl findDirectory__10JKRArchiveCFPCcUl
/* 8001BB30 00018A70  7C 7F 1B 78 */	mr r31, r3
lbl_8001BB34:
/* 8001BB34 00018A74  28 1F 00 00 */	cmplwi r31, 0
/* 8001BB38 00018A78  41 82 00 38 */	beq lbl_8001BB70
/* 8001BB3C 00018A7C  80 8D 88 28 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 8001BB40 00018A80  38 60 00 24 */	li r3, 0x24
/* 8001BB44 00018A84  38 A0 00 00 */	li r5, 0
/* 8001BB48 00018A88  48 00 83 F9 */	bl __nw__FUlP7JKRHeapi
/* 8001BB4C 00018A8C  7C 60 1B 79 */	or. r0, r3, r3
/* 8001BB50 00018A90  41 82 00 18 */	beq lbl_8001BB68
/* 8001BB54 00018A94  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8001BB58 00018A98  7F C4 F3 78 */	mr r4, r30
/* 8001BB5C 00018A9C  A0 DF 00 0A */	lhz r6, 0xa(r31)
/* 8001BB60 00018AA0  48 00 6F 7D */	bl __ct__12JKRArcFinderFP10JKRArchivell
/* 8001BB64 00018AA4  7C 60 1B 78 */	mr r0, r3
lbl_8001BB68:
/* 8001BB68 00018AA8  7C 03 03 78 */	mr r3, r0
/* 8001BB6C 00018AAC  48 00 00 08 */	b lbl_8001BB74
lbl_8001BB70:
/* 8001BB70 00018AB0  38 60 00 00 */	li r3, 0
lbl_8001BB74:
/* 8001BB74 00018AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BB78 00018AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001BB7C 00018ABC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001BB80 00018AC0  7C 08 03 A6 */	mtlr r0
/* 8001BB84 00018AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BB88 00018AC8  4E 80 00 20 */	blr 

.global getExpandedResSize__10JKRArchiveCFPCv
getExpandedResSize__10JKRArchiveCFPCv:
/* 8001BB8C 00018ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001BB90 00018AD0  7C 08 02 A6 */	mflr r0
/* 8001BB94 00018AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001BB98 00018AD8  81 83 00 00 */	lwz r12, 0(r3)
/* 8001BB9C 00018ADC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8001BBA0 00018AE0  7D 89 03 A6 */	mtctr r12
/* 8001BBA4 00018AE4  4E 80 04 21 */	bctrl 
/* 8001BBA8 00018AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001BBAC 00018AEC  7C 08 03 A6 */	mtlr r0
/* 8001BBB0 00018AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001BBB4 00018AF4  4E 80 00 20 */	blr 
