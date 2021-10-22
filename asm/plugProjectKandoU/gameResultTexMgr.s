.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 0x8
.global lbl_804831C8
lbl_804831C8:
	.4byte 0x72657375
	.4byte 0x6C745465
	.4byte 0x784D6772
	.4byte 0x00000000
	.4byte 0x2F757365
	.4byte 0x722F4D61
	.4byte 0x746F6261
	.4byte 0x2F726573
	.4byte 0x756C7474
	.4byte 0x65782F25
	.4byte 0x732F6172
	.4byte 0x632E737A
	.4byte 0x73000000
.global lbl_804831FC
lbl_804831FC:
	.4byte 0x67616D65
	.4byte 0x52657375
	.4byte 0x6C745465
	.4byte 0x784D6772
	.4byte 0x2E637070
	.4byte 0x00000000
	.4byte 0x6661696C
	.4byte 0x65642074
	.4byte 0x6F206F70
	.4byte 0x656E2072
	.4byte 0x6573756C
	.4byte 0x74746578
	.4byte 0x2F617263
	.4byte 0x2E737A73
	.4byte 0x0A25730A
	.4byte 0x00000000
	.4byte 0x74656B69
	.4byte 0x5F636172
	.4byte 0x63617373
	.4byte 0x2F746578
	.4byte 0x74757265
	.4byte 0x2E627469
	.4byte 0x00000000
	.4byte 0x61686972
	.4byte 0x752F7465
	.4byte 0x78747572
	.4byte 0x652E6274
	.4byte 0x69000000
	.4byte 0x25732F74
	.4byte 0x65787475
	.4byte 0x72652E62
	.4byte 0x74690000
.global lbl_8048327C
lbl_8048327C:
	.asciz "P2Assert"
	.skip 3
.global lbl_80483288
lbl_80483288:
	.4byte 0x696C6C65
	.4byte 0x67616C20
	.4byte 0x696E6465
	.4byte 0x78202564
	.4byte 0x0A000000
	.4byte 0x00000000
.global lbl_804832A0
lbl_804832A0:
	.4byte 0x00303130
	.4byte 0x315F3030
	.4byte 0x00303131
	.4byte 0x305F3030
	.4byte 0x00303230
	.4byte 0x305F3030
.global lbl_804832B8
lbl_804832B8:
	.4byte 0x444E6F64
	.4byte 0x65206164
	.4byte 0x64206572
	.4byte 0x7220636F
	.4byte 0x756E7420
	.4byte 0x25640A00
	.4byte 0x444E6F64
	.4byte 0x6520636F
	.4byte 0x6E636174
	.4byte 0x204C6F6F
	.4byte 0x70204572
	.4byte 0x72210A00
	.4byte 0x63616E6E
	.4byte 0x6F742072
	.4byte 0x65747269
	.4byte 0x65766520
	.4byte 0x25642D74
	.4byte 0x68206368
	.4byte 0x696C6420
	.4byte 0x28726561
	.4byte 0x6C206368
	.4byte 0x696C6420
	.4byte 0x636F756E
	.4byte 0x74203D20
	.4byte 0x25642921
	.4byte 0x0A000000

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 0x8
.global __vt__Q24Game5DNode
__vt__Q24Game5DNode:
	.4byte 0
	.4byte 0
	.4byte __dt__Q24Game5DNodeFv
	.4byte getChildCount__Q24Game5DNodeFv
.global __vt__Q34Game12ResultTexMgr3Mgr
__vt__Q34Game12ResultTexMgr3Mgr:
	.4byte 0
	.4byte 0
	.4byte __dt__Q34Game12ResultTexMgr3MgrFv
	.4byte 0

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 0x8
.global lbl_8051A230
lbl_8051A230:
	.4byte 0x6A706E00
.global lbl_8051A234
lbl_8051A234:
	.4byte 0x75730000
.global lbl_8051A238
lbl_8051A238:
	.4byte 0x70616C00
.global lbl_8051A23C
lbl_8051A23C:
	.4byte 0x444E6F64
	.4byte 0x65000000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q34Game12ResultTexMgr3MgrFv
__ct__Q34Game12ResultTexMgr3MgrFv:
/* 80227418 00224358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022741C 0022435C  7C 08 02 A6 */	mflr r0
/* 80227420 00224360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227424 00224364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227428 00224368  7C 7F 1B 78 */	mr r31, r3
/* 8022742C 0022436C  4B DF 5B A1 */	bl __ct__11JKRDisposerFv
/* 80227430 00224370  3C 60 80 4C */	lis r3, __vt__Q34Game12ResultTexMgr3Mgr@ha
/* 80227434 00224374  38 00 00 00 */	li r0, 0
/* 80227438 00224378  38 83 0D C8 */	addi r4, r3, __vt__Q34Game12ResultTexMgr3Mgr@l
/* 8022743C 0022437C  7F E3 FB 78 */	mr r3, r31
/* 80227440 00224380  90 9F 00 00 */	stw r4, 0(r31)
/* 80227444 00224384  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80227448 00224388  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8022744C 0022438C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80227450 00224390  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80227454 00224394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227458 00224398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022745C 0022439C  7C 08 03 A6 */	mtlr r0
/* 80227460 002243A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80227464 002243A4  4E 80 00 20 */	blr 

.global __dt__Q34Game12ResultTexMgr3MgrFv
__dt__Q34Game12ResultTexMgr3MgrFv:
/* 80227468 002243A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022746C 002243AC  7C 08 02 A6 */	mflr r0
/* 80227470 002243B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227474 002243B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227478 002243B8  7C 9F 23 78 */	mr r31, r4
/* 8022747C 002243BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80227480 002243C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80227484 002243C4  41 82 00 28 */	beq lbl_802274AC
/* 80227488 002243C8  3C A0 80 4C */	lis r5, __vt__Q34Game12ResultTexMgr3Mgr@ha
/* 8022748C 002243CC  38 80 00 00 */	li r4, 0
/* 80227490 002243D0  38 05 0D C8 */	addi r0, r5, __vt__Q34Game12ResultTexMgr3Mgr@l
/* 80227494 002243D4  90 1E 00 00 */	stw r0, 0(r30)
/* 80227498 002243D8  4B DF 5B 9D */	bl __dt__11JKRDisposerFv
/* 8022749C 002243DC  7F E0 07 35 */	extsh. r0, r31
/* 802274A0 002243E0  40 81 00 0C */	ble lbl_802274AC
/* 802274A4 002243E4  7F C3 F3 78 */	mr r3, r30
/* 802274A8 002243E8  4B DF CC 0D */	bl __dl__FPv
lbl_802274AC:
/* 802274AC 002243EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802274B0 002243F0  7F C3 F3 78 */	mr r3, r30
/* 802274B4 002243F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802274B8 002243F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802274BC 002243FC  7C 08 03 A6 */	mtlr r0
/* 802274C0 00224400  38 21 00 10 */	addi r1, r1, 0x10
/* 802274C4 00224404  4E 80 00 20 */	blr 

.global create__Q34Game12ResultTexMgr3MgrFRQ34Game12ResultTexMgr3Arg
create__Q34Game12ResultTexMgr3MgrFRQ34Game12ResultTexMgr3Arg:
/* 802274C8 00224408  94 21 FB A0 */	stwu r1, -0x460(r1)
/* 802274CC 0022440C  7C 08 02 A6 */	mflr r0
/* 802274D0 00224410  90 01 04 64 */	stw r0, 0x464(r1)
/* 802274D4 00224414  BF 01 04 40 */	stmw r24, 0x440(r1)
/* 802274D8 00224418  7C 98 23 78 */	mr r24, r4
/* 802274DC 0022441C  3C 80 80 48 */	lis r4, lbl_804831C8@ha
/* 802274E0 00224420  7C 7C 1B 78 */	mr r28, r3
/* 802274E4 00224424  3B E4 31 C8 */	addi r31, r4, lbl_804831C8@l
/* 802274E8 00224428  3B A0 00 00 */	li r29, 0
/* 802274EC 0022442C  80 18 00 00 */	lwz r0, 0(r24)
/* 802274F0 00224430  90 03 00 38 */	stw r0, 0x38(r3)
/* 802274F4 00224434  80 18 00 04 */	lwz r0, 4(r24)
/* 802274F8 00224438  90 03 00 3C */	stw r0, 0x3c(r3)
/* 802274FC 0022443C  80 18 00 08 */	lwz r0, 8(r24)
/* 80227500 00224440  90 03 00 18 */	stw r0, 0x18(r3)
/* 80227504 00224444  83 CD 88 2C */	lwz r30, sCurrentHeap__7JKRHeap@sda21(r13)
/* 80227508 00224448  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8022750C 0022444C  4B DF C0 99 */	bl becomeCurrentHeap__7JKRHeapFv
/* 80227510 00224450  88 18 00 0C */	lbz r0, 0xc(r24)
/* 80227514 00224454  7C 00 07 74 */	extsb r0, r0
/* 80227518 00224458  2C 00 FF FF */	cmpwi r0, -1
/* 8022751C 0022445C  40 82 00 48 */	bne lbl_80227564
/* 80227520 00224460  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 80227524 00224464  80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 80227528 00224468  2C 00 00 05 */	cmpwi r0, 5
/* 8022752C 0022446C  41 82 00 08 */	beq lbl_80227534
/* 80227530 00224470  48 00 00 1C */	b lbl_8022754C
lbl_80227534:
/* 80227534 00224474  38 61 02 38 */	addi r3, r1, 0x238
/* 80227538 00224478  38 9F 00 10 */	addi r4, r31, 0x10
/* 8022753C 0022447C  38 A2 BE D0 */	addi r5, r2, lbl_8051A230@sda21
/* 80227540 00224480  4C C6 31 82 */	crclr 6
/* 80227544 00224484  4B E9 FE F5 */	bl sprintf
/* 80227548 00224488  48 00 00 84 */	b lbl_802275CC
lbl_8022754C:
/* 8022754C 0022448C  38 61 02 38 */	addi r3, r1, 0x238
/* 80227550 00224490  38 9F 00 10 */	addi r4, r31, 0x10
/* 80227554 00224494  38 A2 BE D4 */	addi r5, r2, lbl_8051A234@sda21
/* 80227558 00224498  4C C6 31 82 */	crclr 6
/* 8022755C 0022449C  4B E9 FE DD */	bl sprintf
/* 80227560 002244A0  48 00 00 6C */	b lbl_802275CC
lbl_80227564:
/* 80227564 002244A4  2C 00 00 01 */	cmpwi r0, 1
/* 80227568 002244A8  41 82 00 38 */	beq lbl_802275A0
/* 8022756C 002244AC  40 80 00 10 */	bge lbl_8022757C
/* 80227570 002244B0  2C 00 00 00 */	cmpwi r0, 0
/* 80227574 002244B4  40 80 00 14 */	bge lbl_80227588
/* 80227578 002244B8  48 00 00 54 */	b lbl_802275CC
lbl_8022757C:
/* 8022757C 002244BC  2C 00 00 03 */	cmpwi r0, 3
/* 80227580 002244C0  40 80 00 4C */	bge lbl_802275CC
/* 80227584 002244C4  48 00 00 34 */	b lbl_802275B8
lbl_80227588:
/* 80227588 002244C8  38 61 02 38 */	addi r3, r1, 0x238
/* 8022758C 002244CC  38 9F 00 10 */	addi r4, r31, 0x10
/* 80227590 002244D0  38 A2 BE D0 */	addi r5, r2, lbl_8051A230@sda21
/* 80227594 002244D4  4C C6 31 82 */	crclr 6
/* 80227598 002244D8  4B E9 FE A1 */	bl sprintf
/* 8022759C 002244DC  48 00 00 30 */	b lbl_802275CC
lbl_802275A0:
/* 802275A0 002244E0  38 61 02 38 */	addi r3, r1, 0x238
/* 802275A4 002244E4  38 9F 00 10 */	addi r4, r31, 0x10
/* 802275A8 002244E8  38 A2 BE D4 */	addi r5, r2, lbl_8051A234@sda21
/* 802275AC 002244EC  4C C6 31 82 */	crclr 6
/* 802275B0 002244F0  4B E9 FE 89 */	bl sprintf
/* 802275B4 002244F4  48 00 00 18 */	b lbl_802275CC
lbl_802275B8:
/* 802275B8 002244F8  38 61 02 38 */	addi r3, r1, 0x238
/* 802275BC 002244FC  38 9F 00 10 */	addi r4, r31, 0x10
/* 802275C0 00224500  38 A2 BE D8 */	addi r5, r2, lbl_8051A238@sda21
/* 802275C4 00224504  4C C6 31 82 */	crclr 6
/* 802275C8 00224508  4B E9 FE 71 */	bl sprintf
lbl_802275CC:
/* 802275CC 0022450C  38 61 00 08 */	addi r3, r1, 8
/* 802275D0 00224510  38 81 02 38 */	addi r4, r1, 0x238
/* 802275D4 00224514  48 22 50 05 */	bl __ct__Q212LoadResource3ArgFPCc
/* 802275D8 00224518  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 802275DC 0022451C  38 81 00 08 */	addi r4, r1, 8
/* 802275E0 00224520  80 6D 9C 28 */	lwz r3, gLoadResourceMgr@sda21(r13)
/* 802275E4 00224524  90 01 00 20 */	stw r0, 0x20(r1)
/* 802275E8 00224528  48 22 51 2D */	bl mountArchive__Q212LoadResource3MgrFRQ212LoadResource3Arg
/* 802275EC 0022452C  90 7C 00 1C */	stw r3, 0x1c(r28)
/* 802275F0 00224530  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 802275F4 00224534  28 03 00 00 */	cmplwi r3, 0
/* 802275F8 00224538  41 82 00 0C */	beq lbl_80227604
/* 802275FC 0022453C  83 A3 00 34 */	lwz r29, 0x34(r3)
/* 80227600 00224540  48 00 00 1C */	b lbl_8022761C
lbl_80227604:
/* 80227604 00224544  38 7F 00 34 */	addi r3, r31, 0x34
/* 80227608 00224548  38 BF 00 4C */	addi r5, r31, 0x4c
/* 8022760C 0022454C  38 C1 02 38 */	addi r6, r1, 0x238
/* 80227610 00224550  38 80 00 C6 */	li r4, 0xc6
/* 80227614 00224554  4C C6 31 82 */	crclr 6
/* 80227618 00224558  4B E0 30 29 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8022761C:
/* 8022761C 0022455C  80 DC 00 38 */	lwz r6, 0x38(r28)
/* 80227620 00224560  38 7C 00 20 */	addi r3, r28, 0x20
/* 80227624 00224564  80 BC 00 3C */	lwz r5, 0x3c(r28)
/* 80227628 00224568  38 80 00 01 */	li r4, 1
/* 8022762C 0022456C  83 66 00 18 */	lwz r27, 0x18(r6)
/* 80227630 00224570  83 45 00 18 */	lwz r26, 0x18(r5)
/* 80227634 00224574  48 00 02 FD */	bl alloc__Q44Game12ResultTexMgr3Mgr8TexturesFi
/* 80227638 00224578  7F A3 EB 78 */	mr r3, r29
/* 8022763C 0022457C  38 9F 00 74 */	addi r4, r31, 0x74
/* 80227640 00224580  81 9D 00 00 */	lwz r12, 0(r29)
/* 80227644 00224584  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80227648 00224588  7D 89 03 A6 */	mtctr r12
/* 8022764C 0022458C  4E 80 04 21 */	bctrl 
/* 80227650 00224590  7C 79 1B 79 */	or. r25, r3, r3
/* 80227654 00224594  40 82 00 20 */	bne lbl_80227674
/* 80227658 00224598  7F A3 EB 78 */	mr r3, r29
/* 8022765C 0022459C  38 9F 00 90 */	addi r4, r31, 0x90
/* 80227660 002245A0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80227664 002245A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80227668 002245A8  7D 89 03 A6 */	mtctr r12
/* 8022766C 002245AC  4E 80 04 21 */	bctrl 
/* 80227670 002245B0  7C 79 1B 78 */	mr r25, r3
lbl_80227674:
/* 80227674 002245B4  38 7C 00 20 */	addi r3, r28, 0x20
/* 80227678 002245B8  38 80 00 00 */	li r4, 0
/* 8022767C 002245BC  48 00 03 19 */	bl getTexture__Q44Game12ResultTexMgr3Mgr8TexturesFi
/* 80227680 002245C0  7F 24 CB 78 */	mr r4, r25
/* 80227684 002245C4  38 A0 00 00 */	li r5, 0
/* 80227688 002245C8  4B E0 B9 FD */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 8022768C 002245CC  7F 64 DB 78 */	mr r4, r27
/* 80227690 002245D0  38 7C 00 28 */	addi r3, r28, 0x28
/* 80227694 002245D4  48 00 02 9D */	bl alloc__Q44Game12ResultTexMgr3Mgr8TexturesFi
/* 80227698 002245D8  3B 20 00 00 */	li r25, 0
/* 8022769C 002245DC  48 00 00 98 */	b lbl_80227734
lbl_802276A0:
/* 802276A0 002245E0  80 7C 00 38 */	lwz r3, 0x38(r28)
/* 802276A4 002245E4  7F 24 CB 78 */	mr r4, r25
/* 802276A8 002245E8  4B F8 CE 01 */	bl getPelletConfig__Q24Game16PelletConfigListFi
/* 802276AC 002245EC  7C 64 1B 78 */	mr r4, r3
/* 802276B0 002245F0  38 61 01 38 */	addi r3, r1, 0x138
/* 802276B4 002245F4  80 A4 00 40 */	lwz r5, 0x40(r4)
/* 802276B8 002245F8  38 9F 00 A4 */	addi r4, r31, 0xa4
/* 802276BC 002245FC  4C C6 31 82 */	crclr 6
/* 802276C0 00224600  4B E9 FD 79 */	bl sprintf
/* 802276C4 00224604  7F A3 EB 78 */	mr r3, r29
/* 802276C8 00224608  38 81 01 38 */	addi r4, r1, 0x138
/* 802276CC 0022460C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802276D0 00224610  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802276D4 00224614  7D 89 03 A6 */	mtctr r12
/* 802276D8 00224618  4E 80 04 21 */	bctrl 
/* 802276DC 0022461C  7C 78 1B 79 */	or. r24, r3, r3
/* 802276E0 00224620  40 82 00 30 */	bne lbl_80227710
/* 802276E4 00224624  38 61 01 38 */	addi r3, r1, 0x138
/* 802276E8 00224628  38 9F 00 90 */	addi r4, r31, 0x90
/* 802276EC 0022462C  4C C6 31 82 */	crclr 6
/* 802276F0 00224630  4B E9 FD 49 */	bl sprintf
/* 802276F4 00224634  7F A3 EB 78 */	mr r3, r29
/* 802276F8 00224638  38 81 01 38 */	addi r4, r1, 0x138
/* 802276FC 0022463C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80227700 00224640  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80227704 00224644  7D 89 03 A6 */	mtctr r12
/* 80227708 00224648  4E 80 04 21 */	bctrl 
/* 8022770C 0022464C  7C 78 1B 78 */	mr r24, r3
lbl_80227710:
/* 80227710 00224650  28 18 00 00 */	cmplwi r24, 0
/* 80227714 00224654  41 82 00 1C */	beq lbl_80227730
/* 80227718 00224658  7F 24 CB 78 */	mr r4, r25
/* 8022771C 0022465C  38 7C 00 28 */	addi r3, r28, 0x28
/* 80227720 00224660  48 00 02 75 */	bl getTexture__Q44Game12ResultTexMgr3Mgr8TexturesFi
/* 80227724 00224664  7F 04 C3 78 */	mr r4, r24
/* 80227728 00224668  38 A0 00 00 */	li r5, 0
/* 8022772C 0022466C  4B E0 B9 59 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
lbl_80227730:
/* 80227730 00224670  3B 39 00 01 */	addi r25, r25, 1
lbl_80227734:
/* 80227734 00224674  7C 19 D8 00 */	cmpw r25, r27
/* 80227738 00224678  41 80 FF 68 */	blt lbl_802276A0
/* 8022773C 0022467C  7F 44 D3 78 */	mr r4, r26
/* 80227740 00224680  38 7C 00 30 */	addi r3, r28, 0x30
/* 80227744 00224684  48 00 01 ED */	bl alloc__Q44Game12ResultTexMgr3Mgr8TexturesFi
/* 80227748 00224688  3B 00 00 00 */	li r24, 0
/* 8022774C 0022468C  48 00 00 98 */	b lbl_802277E4
lbl_80227750:
/* 80227750 00224690  80 7C 00 3C */	lwz r3, 0x3c(r28)
/* 80227754 00224694  7F 04 C3 78 */	mr r4, r24
/* 80227758 00224698  4B F8 CD 51 */	bl getPelletConfig__Q24Game16PelletConfigListFi
/* 8022775C 0022469C  7C 64 1B 78 */	mr r4, r3
/* 80227760 002246A0  38 61 00 38 */	addi r3, r1, 0x38
/* 80227764 002246A4  80 A4 00 40 */	lwz r5, 0x40(r4)
/* 80227768 002246A8  38 9F 00 A4 */	addi r4, r31, 0xa4
/* 8022776C 002246AC  4C C6 31 82 */	crclr 6
/* 80227770 002246B0  4B E9 FC C9 */	bl sprintf
/* 80227774 002246B4  7F A3 EB 78 */	mr r3, r29
/* 80227778 002246B8  38 81 00 38 */	addi r4, r1, 0x38
/* 8022777C 002246BC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80227780 002246C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80227784 002246C4  7D 89 03 A6 */	mtctr r12
/* 80227788 002246C8  4E 80 04 21 */	bctrl 
/* 8022778C 002246CC  7C 79 1B 79 */	or. r25, r3, r3
/* 80227790 002246D0  40 82 00 30 */	bne lbl_802277C0
/* 80227794 002246D4  38 61 00 38 */	addi r3, r1, 0x38
/* 80227798 002246D8  38 9F 00 90 */	addi r4, r31, 0x90
/* 8022779C 002246DC  4C C6 31 82 */	crclr 6
/* 802277A0 002246E0  4B E9 FC 99 */	bl sprintf
/* 802277A4 002246E4  7F A3 EB 78 */	mr r3, r29
/* 802277A8 002246E8  38 81 00 38 */	addi r4, r1, 0x38
/* 802277AC 002246EC  81 9D 00 00 */	lwz r12, 0(r29)
/* 802277B0 002246F0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802277B4 002246F4  7D 89 03 A6 */	mtctr r12
/* 802277B8 002246F8  4E 80 04 21 */	bctrl 
/* 802277BC 002246FC  7C 79 1B 78 */	mr r25, r3
lbl_802277C0:
/* 802277C0 00224700  28 19 00 00 */	cmplwi r25, 0
/* 802277C4 00224704  41 82 00 1C */	beq lbl_802277E0
/* 802277C8 00224708  7F 04 C3 78 */	mr r4, r24
/* 802277CC 0022470C  38 7C 00 30 */	addi r3, r28, 0x30
/* 802277D0 00224710  48 00 01 C5 */	bl getTexture__Q44Game12ResultTexMgr3Mgr8TexturesFi
/* 802277D4 00224714  7F 24 CB 78 */	mr r4, r25
/* 802277D8 00224718  38 A0 00 00 */	li r5, 0
/* 802277DC 0022471C  4B E0 B8 A9 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
lbl_802277E0:
/* 802277E0 00224720  3B 18 00 01 */	addi r24, r24, 1
lbl_802277E4:
/* 802277E4 00224724  7C 18 D0 00 */	cmpw r24, r26
/* 802277E8 00224728  41 80 FF 68 */	blt lbl_80227750
/* 802277EC 0022472C  7F C3 F3 78 */	mr r3, r30
/* 802277F0 00224730  4B DF BD B5 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802277F4 00224734  BB 01 04 40 */	lmw r24, 0x440(r1)
/* 802277F8 00224738  80 01 04 64 */	lwz r0, 0x464(r1)
/* 802277FC 0022473C  7C 08 03 A6 */	mtlr r0
/* 80227800 00224740  38 21 04 60 */	addi r1, r1, 0x460
/* 80227804 00224744  4E 80 00 20 */	blr 

.global getOtakaraItemTexture__Q34Game12ResultTexMgr3MgrFi
getOtakaraItemTexture__Q34Game12ResultTexMgr3MgrFi:
/* 80227808 00224748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022780C 0022474C  7C 08 02 A6 */	mflr r0
/* 80227810 00224750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227814 00224754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227818 00224758  7C 9F 23 78 */	mr r31, r4
/* 8022781C 0022475C  93 C1 00 08 */	stw r30, 8(r1)
/* 80227820 00224760  7C 7E 1B 78 */	mr r30, r3
/* 80227824 00224764  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80227828 00224768  28 00 00 00 */	cmplwi r0, 0
/* 8022782C 0022476C  40 82 00 20 */	bne lbl_8022784C
/* 80227830 00224770  3C 60 80 48 */	lis r3, lbl_804831FC@ha
/* 80227834 00224774  3C A0 80 48 */	lis r5, lbl_8048327C@ha
/* 80227838 00224778  38 63 31 FC */	addi r3, r3, lbl_804831FC@l
/* 8022783C 0022477C  38 80 01 11 */	li r4, 0x111
/* 80227840 00224780  38 A5 32 7C */	addi r5, r5, lbl_8048327C@l
/* 80227844 00224784  4C C6 31 82 */	crclr 6
/* 80227848 00224788  4B E0 2D F9 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_8022784C:
/* 8022784C 0022478C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80227850 00224790  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80227854 00224794  7C 1F 00 00 */	cmpw r31, r0
/* 80227858 00224798  41 80 00 44 */	blt lbl_8022789C
/* 8022785C 0022479C  28 03 00 00 */	cmplwi r3, 0
/* 80227860 002247A0  40 82 00 20 */	bne lbl_80227880
/* 80227864 002247A4  3C 60 80 48 */	lis r3, lbl_804831FC@ha
/* 80227868 002247A8  3C A0 80 48 */	lis r5, lbl_8048327C@ha
/* 8022786C 002247AC  38 63 31 FC */	addi r3, r3, lbl_804831FC@l
/* 80227870 002247B0  38 80 01 11 */	li r4, 0x111
/* 80227874 002247B4  38 A5 32 7C */	addi r5, r5, lbl_8048327C@l
/* 80227878 002247B8  4C C6 31 82 */	crclr 6
/* 8022787C 002247BC  4B E0 2D C5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80227880:
/* 80227880 002247C0  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80227884 002247C4  7F C3 F3 78 */	mr r3, r30
/* 80227888 002247C8  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8022788C 002247CC  7F E0 F8 50 */	subf r31, r0, r31
/* 80227890 002247D0  7F E4 FB 78 */	mr r4, r31
/* 80227894 002247D4  48 00 00 51 */	bl getItemTexture__Q34Game12ResultTexMgr3MgrFi
/* 80227898 002247D8  48 00 00 10 */	b lbl_802278A8
lbl_8022789C:
/* 8022789C 002247DC  7F C3 F3 78 */	mr r3, r30
/* 802278A0 002247E0  7F E4 FB 78 */	mr r4, r31
/* 802278A4 002247E4  48 00 00 1D */	bl getOtakaraTexture__Q34Game12ResultTexMgr3MgrFi
lbl_802278A8:
/* 802278A8 002247E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802278AC 002247EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802278B0 002247F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802278B4 002247F4  7C 08 03 A6 */	mtlr r0
/* 802278B8 002247F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802278BC 002247FC  4E 80 00 20 */	blr 

.global getOtakaraTexture__Q34Game12ResultTexMgr3MgrFi
getOtakaraTexture__Q34Game12ResultTexMgr3MgrFi:
/* 802278C0 00224800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802278C4 00224804  7C 08 02 A6 */	mflr r0
/* 802278C8 00224808  38 63 00 28 */	addi r3, r3, 0x28
/* 802278CC 0022480C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802278D0 00224810  48 00 00 C5 */	bl getTexture__Q44Game12ResultTexMgr3Mgr8TexturesFi
/* 802278D4 00224814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802278D8 00224818  7C 08 03 A6 */	mtlr r0
/* 802278DC 0022481C  38 21 00 10 */	addi r1, r1, 0x10
/* 802278E0 00224820  4E 80 00 20 */	blr 

.global getItemTexture__Q34Game12ResultTexMgr3MgrFi
getItemTexture__Q34Game12ResultTexMgr3MgrFi:
/* 802278E4 00224824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802278E8 00224828  7C 08 02 A6 */	mflr r0
/* 802278EC 0022482C  38 63 00 30 */	addi r3, r3, 0x30
/* 802278F0 00224830  90 01 00 14 */	stw r0, 0x14(r1)
/* 802278F4 00224834  48 00 00 A1 */	bl getTexture__Q44Game12ResultTexMgr3Mgr8TexturesFi
/* 802278F8 00224838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802278FC 0022483C  7C 08 03 A6 */	mtlr r0
/* 80227900 00224840  38 21 00 10 */	addi r1, r1, 0x10
/* 80227904 00224844  4E 80 00 20 */	blr 

.global getCarcassTexture__Q34Game12ResultTexMgr3MgrFv
getCarcassTexture__Q34Game12ResultTexMgr3MgrFv:
/* 80227908 00224848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022790C 0022484C  7C 08 02 A6 */	mflr r0
/* 80227910 00224850  38 80 00 00 */	li r4, 0
/* 80227914 00224854  38 63 00 20 */	addi r3, r3, 0x20
/* 80227918 00224858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022791C 0022485C  48 00 00 79 */	bl getTexture__Q44Game12ResultTexMgr3Mgr8TexturesFi
/* 80227920 00224860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227924 00224864  7C 08 03 A6 */	mtlr r0
/* 80227928 00224868  38 21 00 10 */	addi r1, r1, 0x10
/* 8022792C 0022486C  4E 80 00 20 */	blr 

.global alloc__Q44Game12ResultTexMgr3Mgr8TexturesFi
alloc__Q44Game12ResultTexMgr3Mgr8TexturesFi:
/* 80227930 00224870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227934 00224874  7C 08 02 A6 */	mflr r0
/* 80227938 00224878  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022793C 0022487C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227940 00224880  7C 9F 23 78 */	mr r31, r4
/* 80227944 00224884  93 C1 00 08 */	stw r30, 8(r1)
/* 80227948 00224888  7C 7E 1B 78 */	mr r30, r3
/* 8022794C 0022488C  90 83 00 04 */	stw r4, 4(r3)
/* 80227950 00224890  54 83 30 32 */	slwi r3, r4, 6
/* 80227954 00224894  38 63 00 10 */	addi r3, r3, 0x10
/* 80227958 00224898  4B DF C6 55 */	bl __nwa__FUl
/* 8022795C 0022489C  3C 80 80 01 */	lis r4, __ct__10JUTTextureFv@ha
/* 80227960 002248A0  3C A0 80 03 */	lis r5, __dt__10JUTTextureFv@ha
/* 80227964 002248A4  38 84 77 D0 */	addi r4, r4, __ct__10JUTTextureFv@l
/* 80227968 002248A8  7F E7 FB 78 */	mr r7, r31
/* 8022796C 002248AC  38 A5 30 10 */	addi r5, r5, __dt__10JUTTextureFv@l
/* 80227970 002248B0  38 C0 00 40 */	li r6, 0x40
/* 80227974 002248B4  4B E9 A0 7D */	bl __construct_new_array
/* 80227978 002248B8  90 7E 00 00 */	stw r3, 0(r30)
/* 8022797C 002248BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227980 002248C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227984 002248C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80227988 002248C8  7C 08 03 A6 */	mtlr r0
/* 8022798C 002248CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80227990 002248D0  4E 80 00 20 */	blr 

.global getTexture__Q44Game12ResultTexMgr3Mgr8TexturesFi
getTexture__Q44Game12ResultTexMgr3Mgr8TexturesFi:
/* 80227994 002248D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227998 002248D8  7C 08 02 A6 */	mflr r0
/* 8022799C 002248DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802279A0 002248E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802279A4 002248E4  7C 9F 23 79 */	or. r31, r4, r4
/* 802279A8 002248E8  93 C1 00 08 */	stw r30, 8(r1)
/* 802279AC 002248EC  7C 7E 1B 78 */	mr r30, r3
/* 802279B0 002248F0  40 80 00 24 */	bge lbl_802279D4
/* 802279B4 002248F4  3C 60 80 48 */	lis r3, lbl_804831FC@ha
/* 802279B8 002248F8  3C 80 80 48 */	lis r4, lbl_80483288@ha
/* 802279BC 002248FC  38 A4 32 88 */	addi r5, r4, lbl_80483288@l
/* 802279C0 00224900  7F E6 FB 78 */	mr r6, r31
/* 802279C4 00224904  38 63 31 FC */	addi r3, r3, lbl_804831FC@l
/* 802279C8 00224908  38 80 01 3D */	li r4, 0x13d
/* 802279CC 0022490C  4C C6 31 82 */	crclr 6
/* 802279D0 00224910  4B E0 2C 71 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802279D4:
/* 802279D4 00224914  80 7E 00 04 */	lwz r3, 4(r30)
/* 802279D8 00224918  7C 1F 18 00 */	cmpw r31, r3
/* 802279DC 0022491C  41 80 00 08 */	blt lbl_802279E4
/* 802279E0 00224920  3B E3 FF FF */	addi r31, r3, -1
lbl_802279E4:
/* 802279E4 00224924  80 7E 00 00 */	lwz r3, 0(r30)
/* 802279E8 00224928  57 E0 30 32 */	slwi r0, r31, 6
/* 802279EC 0022492C  7C 63 02 14 */	add r3, r3, r0
/* 802279F0 00224930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802279F4 00224934  83 C1 00 08 */	lwz r30, 8(r1)
/* 802279F8 00224938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802279FC 0022493C  7C 08 03 A6 */	mtlr r0
/* 80227A00 00224940  38 21 00 10 */	addi r1, r1, 0x10
/* 80227A04 00224944  4E 80 00 20 */	blr 

.global __ct__Q34Game6Result5TNodeFv
__ct__Q34Game6Result5TNodeFv:
/* 80227A08 00224948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227A0C 0022494C  7C 08 02 A6 */	mflr r0
/* 80227A10 00224950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227A14 00224954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227A18 00224958  7C 7F 1B 78 */	mr r31, r3
/* 80227A1C 0022495C  48 00 01 01 */	bl __ct__Q24Game5DNodeFv
/* 80227A20 00224960  3C 60 80 4C */	lis r3, __vt__Q34Game6Result5TNode@ha
/* 80227A24 00224964  38 00 00 00 */	li r0, 0
/* 80227A28 00224968  38 83 06 E4 */	addi r4, r3, __vt__Q34Game6Result5TNode@l
/* 80227A2C 0022496C  7F E3 FB 78 */	mr r3, r31
/* 80227A30 00224970  90 9F 00 00 */	stw r4, 0(r31)
/* 80227A34 00224974  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80227A38 00224978  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80227A3C 0022497C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80227A40 00224980  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80227A44 00224984  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80227A48 00224988  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80227A4C 0022498C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80227A50 00224990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227A54 00224994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227A58 00224998  7C 08 03 A6 */	mtlr r0
/* 80227A5C 0022499C  38 21 00 10 */	addi r1, r1, 0x10
/* 80227A60 002249A0  4E 80 00 20 */	blr 

.global setTNode__Q34Game6Result5TNodeFUxP10JUTTextureiii
setTNode__Q34Game6Result5TNodeFUxP10JUTTextureiii:
/* 80227A64 002249A4  90 C3 00 44 */	stw r6, 0x44(r3)
/* 80227A68 002249A8  90 A3 00 40 */	stw r5, 0x40(r3)
/* 80227A6C 002249AC  90 E3 00 2C */	stw r7, 0x2c(r3)
/* 80227A70 002249B0  91 03 00 30 */	stw r8, 0x30(r3)
/* 80227A74 002249B4  91 23 00 38 */	stw r9, 0x38(r3)
/* 80227A78 002249B8  91 43 00 3C */	stw r10, 0x3c(r3)
/* 80227A7C 002249BC  4E 80 00 20 */	blr 

.global setTNode__Q34Game6Result5TNodeFUxP10JUTTextureiiii
setTNode__Q34Game6Result5TNodeFUxP10JUTTextureiiii:
/* 80227A80 002249C0  90 C3 00 44 */	stw r6, 0x44(r3)
/* 80227A84 002249C4  80 01 00 08 */	lwz r0, 8(r1)
/* 80227A88 002249C8  90 A3 00 40 */	stw r5, 0x40(r3)
/* 80227A8C 002249CC  90 E3 00 2C */	stw r7, 0x2c(r3)
/* 80227A90 002249D0  91 03 00 30 */	stw r8, 0x30(r3)
/* 80227A94 002249D4  91 23 00 38 */	stw r9, 0x38(r3)
/* 80227A98 002249D8  91 43 00 3C */	stw r10, 0x3c(r3)
/* 80227A9C 002249DC  90 03 00 34 */	stw r0, 0x34(r3)
/* 80227AA0 002249E0  4E 80 00 20 */	blr 

.global convertByMorimun__Q34Game6Result5TNodeFi
convertByMorimun__Q34Game6Result5TNodeFi:
/* 80227AA4 002249E4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80227AA8 002249E8  7C 08 02 A6 */	mflr r0
/* 80227AAC 002249EC  3C C0 30 5F */	lis r6, 0x305F3030@ha
/* 80227AB0 002249F0  3C A0 00 30 */	lis r5, 0x00303130@ha
/* 80227AB4 002249F4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80227AB8 002249F8  3C 80 80 48 */	lis r4, lbl_804832A0@ha
/* 80227ABC 002249FC  38 C6 30 30 */	addi r6, r6, 0x305F3030@l
/* 80227AC0 00224A00  38 A5 31 30 */	addi r5, r5, 0x00303130@l
/* 80227AC4 00224A04  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80227AC8 00224A08  7C 7F 1B 78 */	mr r31, r3
/* 80227ACC 00224A0C  38 61 00 18 */	addi r3, r1, 0x18
/* 80227AD0 00224A10  39 01 00 30 */	addi r8, r1, 0x30
/* 80227AD4 00224A14  CC 44 32 A0 */	lfdu f2, lbl_804832A0@l(r4)
/* 80227AD8 00224A18  39 21 00 08 */	addi r9, r1, 8
/* 80227ADC 00224A1C  38 E0 00 03 */	li r7, 3
/* 80227AE0 00224A20  C8 24 00 08 */	lfd f1, 8(r4)
/* 80227AE4 00224A24  C8 04 00 10 */	lfd f0, 0x10(r4)
/* 80227AE8 00224A28  38 81 00 48 */	addi r4, r1, 0x48
/* 80227AEC 00224A2C  D8 41 00 48 */	stfd f2, 0x48(r1)
/* 80227AF0 00224A30  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 80227AF4 00224A34  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80227AF8 00224A38  48 17 96 AD */	bl __ct__Q28Morimura13TOffsetMsgSetFPUxUxiPUxPi
/* 80227AFC 00224A3C  7F E4 FB 78 */	mr r4, r31
/* 80227B00 00224A40  38 61 00 18 */	addi r3, r1, 0x18
/* 80227B04 00224A44  48 17 97 09 */	bl getMsgID__Q28Morimura13TOffsetMsgSetFi
/* 80227B08 00224A48  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80227B0C 00224A4C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80227B10 00224A50  7C 08 03 A6 */	mtlr r0
/* 80227B14 00224A54  38 21 00 70 */	addi r1, r1, 0x70
/* 80227B18 00224A58  4E 80 00 20 */	blr 

.global __ct__Q24Game5DNodeFv
__ct__Q24Game5DNodeFv:
/* 80227B1C 00224A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227B20 00224A60  7C 08 02 A6 */	mflr r0
/* 80227B24 00224A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227B28 00224A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227B2C 00224A6C  7C 7F 1B 78 */	mr r31, r3
/* 80227B30 00224A70  4B DF 54 9D */	bl __ct__11JKRDisposerFv
/* 80227B34 00224A74  3C 60 80 4C */	lis r3, __vt__Q24Game5DNode@ha
/* 80227B38 00224A78  38 80 00 00 */	li r4, 0
/* 80227B3C 00224A7C  38 63 0D B8 */	addi r3, r3, __vt__Q24Game5DNode@l
/* 80227B40 00224A80  38 02 BE DC */	addi r0, r2, lbl_8051A23C@sda21
/* 80227B44 00224A84  90 7F 00 00 */	stw r3, 0(r31)
/* 80227B48 00224A88  7F E3 FB 78 */	mr r3, r31
/* 80227B4C 00224A8C  90 9F 00 24 */	stw r4, 0x24(r31)
/* 80227B50 00224A90  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80227B54 00224A94  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 80227B58 00224A98  90 9F 00 18 */	stw r4, 0x18(r31)
/* 80227B5C 00224A9C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80227B60 00224AA0  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80227B64 00224AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227B68 00224AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227B6C 00224AAC  7C 08 03 A6 */	mtlr r0
/* 80227B70 00224AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80227B74 00224AB4  4E 80 00 20 */	blr 

.global add__Q24Game5DNodeFPQ24Game5DNode
add__Q24Game5DNodeFPQ24Game5DNode:
/* 80227B78 00224AB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80227B7C 00224ABC  7C 08 02 A6 */	mflr r0
/* 80227B80 00224AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80227B84 00224AC4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80227B88 00224AC8  7C 9B 23 78 */	mr r27, r4
/* 80227B8C 00224ACC  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 80227B90 00224AD0  28 05 00 00 */	cmplwi r5, 0
/* 80227B94 00224AD4  41 82 00 24 */	beq lbl_80227BB8
/* 80227B98 00224AD8  48 00 00 08 */	b lbl_80227BA0
lbl_80227B9C:
/* 80227B9C 00224ADC  7C 05 03 78 */	mr r5, r0
lbl_80227BA0:
/* 80227BA0 00224AE0  80 05 00 18 */	lwz r0, 0x18(r5)
/* 80227BA4 00224AE4  28 00 00 00 */	cmplwi r0, 0
/* 80227BA8 00224AE8  40 82 FF F4 */	bne lbl_80227B9C
/* 80227BAC 00224AEC  93 65 00 18 */	stw r27, 0x18(r5)
/* 80227BB0 00224AF0  90 BB 00 1C */	stw r5, 0x1c(r27)
/* 80227BB4 00224AF4  48 00 00 08 */	b lbl_80227BBC
lbl_80227BB8:
/* 80227BB8 00224AF8  93 63 00 24 */	stw r27, 0x24(r3)
lbl_80227BBC:
/* 80227BBC 00224AFC  90 7B 00 20 */	stw r3, 0x20(r27)
/* 80227BC0 00224B00  3C A0 80 48 */	lis r5, lbl_804831FC@ha
/* 80227BC4 00224B04  3C 80 80 48 */	lis r4, lbl_804832B8@ha
/* 80227BC8 00224B08  3B 80 00 00 */	li r28, 0
/* 80227BCC 00224B0C  83 A3 00 24 */	lwz r29, 0x24(r3)
/* 80227BD0 00224B10  3B C5 31 FC */	addi r30, r5, lbl_804831FC@l
/* 80227BD4 00224B14  3B E4 32 B8 */	addi r31, r4, lbl_804832B8@l
/* 80227BD8 00224B18  48 00 00 34 */	b lbl_80227C0C
lbl_80227BDC:
/* 80227BDC 00224B1C  7C 1D D8 40 */	cmplw r29, r27
/* 80227BE0 00224B20  40 82 00 08 */	bne lbl_80227BE8
/* 80227BE4 00224B24  3B 9C 00 01 */	addi r28, r28, 1
lbl_80227BE8:
/* 80227BE8 00224B28  2C 1C 00 01 */	cmpwi r28, 1
/* 80227BEC 00224B2C  40 81 00 1C */	ble lbl_80227C08
/* 80227BF0 00224B30  7F C3 F3 78 */	mr r3, r30
/* 80227BF4 00224B34  7F E5 FB 78 */	mr r5, r31
/* 80227BF8 00224B38  7F 86 E3 78 */	mr r6, r28
/* 80227BFC 00224B3C  38 80 01 A8 */	li r4, 0x1a8
/* 80227C00 00224B40  4C C6 31 82 */	crclr 6
/* 80227C04 00224B44  4B E0 2A 3D */	bl panic_f__12JUTExceptionFPCciPCce
lbl_80227C08:
/* 80227C08 00224B48  83 BD 00 18 */	lwz r29, 0x18(r29)
lbl_80227C0C:
/* 80227C0C 00224B4C  28 1D 00 00 */	cmplwi r29, 0
/* 80227C10 00224B50  40 82 FF CC */	bne lbl_80227BDC
/* 80227C14 00224B54  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80227C18 00224B58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80227C1C 00224B5C  7C 08 03 A6 */	mtlr r0
/* 80227C20 00224B60  38 21 00 20 */	addi r1, r1, 0x20
/* 80227C24 00224B64  4E 80 00 20 */	blr 

.global __dt__Q24Game5DNodeFv
__dt__Q24Game5DNodeFv:
/* 80227C28 00224B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80227C2C 00224B6C  7C 08 02 A6 */	mflr r0
/* 80227C30 00224B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80227C34 00224B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80227C38 00224B78  7C 9F 23 78 */	mr r31, r4
/* 80227C3C 00224B7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80227C40 00224B80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80227C44 00224B84  41 82 00 30 */	beq lbl_80227C74
/* 80227C48 00224B88  3C 80 80 4C */	lis r4, __vt__Q24Game5DNode@ha
/* 80227C4C 00224B8C  38 04 0D B8 */	addi r0, r4, __vt__Q24Game5DNode@l
/* 80227C50 00224B90  90 1E 00 00 */	stw r0, 0(r30)
/* 80227C54 00224B94  48 00 00 3D */	bl del__Q24Game5DNodeFv
/* 80227C58 00224B98  7F C3 F3 78 */	mr r3, r30
/* 80227C5C 00224B9C  38 80 00 00 */	li r4, 0
/* 80227C60 00224BA0  4B DF 53 D5 */	bl __dt__11JKRDisposerFv
/* 80227C64 00224BA4  7F E0 07 35 */	extsh. r0, r31
/* 80227C68 00224BA8  40 81 00 0C */	ble lbl_80227C74
/* 80227C6C 00224BAC  7F C3 F3 78 */	mr r3, r30
/* 80227C70 00224BB0  4B DF C4 45 */	bl __dl__FPv
lbl_80227C74:
/* 80227C74 00224BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80227C78 00224BB8  7F C3 F3 78 */	mr r3, r30
/* 80227C7C 00224BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80227C80 00224BC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80227C84 00224BC4  7C 08 03 A6 */	mtlr r0
/* 80227C88 00224BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80227C8C 00224BCC  4E 80 00 20 */	blr 

.global del__Q24Game5DNodeFv
del__Q24Game5DNodeFv:
/* 80227C90 00224BD0  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80227C94 00224BD4  28 04 00 00 */	cmplwi r4, 0
/* 80227C98 00224BD8  4D 82 00 20 */	beqlr 
/* 80227C9C 00224BDC  80 A4 00 24 */	lwz r5, 0x24(r4)
/* 80227CA0 00224BE0  38 C0 00 00 */	li r6, 0
/* 80227CA4 00224BE4  48 00 00 78 */	b lbl_80227D1C
lbl_80227CA8:
/* 80227CA8 00224BE8  7C 05 18 40 */	cmplw r5, r3
/* 80227CAC 00224BEC  40 82 00 68 */	bne lbl_80227D14
/* 80227CB0 00224BF0  28 06 00 00 */	cmplwi r6, 0
/* 80227CB4 00224BF4  41 82 00 30 */	beq lbl_80227CE4
/* 80227CB8 00224BF8  80 05 00 18 */	lwz r0, 0x18(r5)
/* 80227CBC 00224BFC  90 06 00 18 */	stw r0, 0x18(r6)
/* 80227CC0 00224C00  80 85 00 18 */	lwz r4, 0x18(r5)
/* 80227CC4 00224C04  28 04 00 00 */	cmplwi r4, 0
/* 80227CC8 00224C08  41 82 00 08 */	beq lbl_80227CD0
/* 80227CCC 00224C0C  90 C4 00 1C */	stw r6, 0x1c(r4)
lbl_80227CD0:
/* 80227CD0 00224C10  38 00 00 00 */	li r0, 0
/* 80227CD4 00224C14  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80227CD8 00224C18  90 03 00 18 */	stw r0, 0x18(r3)
/* 80227CDC 00224C1C  90 03 00 20 */	stw r0, 0x20(r3)
/* 80227CE0 00224C20  4E 80 00 20 */	blr 
lbl_80227CE4:
/* 80227CE4 00224C24  80 05 00 18 */	lwz r0, 0x18(r5)
/* 80227CE8 00224C28  90 04 00 24 */	stw r0, 0x24(r4)
/* 80227CEC 00224C2C  80 85 00 18 */	lwz r4, 0x18(r5)
/* 80227CF0 00224C30  28 04 00 00 */	cmplwi r4, 0
/* 80227CF4 00224C34  41 82 00 0C */	beq lbl_80227D00
/* 80227CF8 00224C38  38 00 00 00 */	li r0, 0
/* 80227CFC 00224C3C  90 04 00 1C */	stw r0, 0x1c(r4)
lbl_80227D00:
/* 80227D00 00224C40  38 00 00 00 */	li r0, 0
/* 80227D04 00224C44  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80227D08 00224C48  90 03 00 18 */	stw r0, 0x18(r3)
/* 80227D0C 00224C4C  90 03 00 20 */	stw r0, 0x20(r3)
/* 80227D10 00224C50  4E 80 00 20 */	blr 
lbl_80227D14:
/* 80227D14 00224C54  7C A6 2B 78 */	mr r6, r5
/* 80227D18 00224C58  80 A5 00 18 */	lwz r5, 0x18(r5)
lbl_80227D1C:
/* 80227D1C 00224C5C  28 05 00 00 */	cmplwi r5, 0
/* 80227D20 00224C60  40 82 FF 88 */	bne lbl_80227CA8
/* 80227D24 00224C64  4E 80 00 20 */	blr 

.global getChildCount__Q24Game5DNodeFv
getChildCount__Q24Game5DNodeFv:
/* 80227D28 00224C68  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80227D2C 00224C6C  28 00 00 00 */	cmplwi r0, 0
/* 80227D30 00224C70  41 82 00 24 */	beq lbl_80227D54
/* 80227D34 00224C74  7C 04 03 78 */	mr r4, r0
/* 80227D38 00224C78  38 60 00 00 */	li r3, 0
/* 80227D3C 00224C7C  48 00 00 0C */	b lbl_80227D48
lbl_80227D40:
/* 80227D40 00224C80  80 84 00 18 */	lwz r4, 0x18(r4)
/* 80227D44 00224C84  38 63 00 01 */	addi r3, r3, 1
lbl_80227D48:
/* 80227D48 00224C88  28 04 00 00 */	cmplwi r4, 0
/* 80227D4C 00224C8C  40 82 FF F4 */	bne lbl_80227D40
/* 80227D50 00224C90  4E 80 00 20 */	blr 
lbl_80227D54:
/* 80227D54 00224C94  38 60 00 00 */	li r3, 0
/* 80227D58 00224C98  4E 80 00 20 */	blr 
