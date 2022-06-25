.include "macros.inc"
.section .bss  # 0x804EFC20 - 0x8051467C
.global gTRKBigEndian
gTRKBigEndian:
	.skip 0x8

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global TRKInitializeNub
TRKInitializeNub:
/* 800BB6FC 000B863C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BB700 000B8640  7C 08 02 A6 */	mflr r0
/* 800BB704 000B8644  38 A0 00 12 */	li r5, 0x12
/* 800BB708 000B8648  38 80 00 34 */	li r4, 0x34
/* 800BB70C 000B864C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BB710 000B8650  38 60 00 56 */	li r3, 0x56
/* 800BB714 000B8654  38 00 00 78 */	li r0, 0x78
/* 800BB718 000B8658  38 C0 00 01 */	li r6, 1
/* 800BB71C 000B865C  98 A1 00 08 */	stb r5, 8(r1)
/* 800BB720 000B8660  3C A0 80 4F */	lis r5, gTRKBigEndian@ha
/* 800BB724 000B8664  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BB728 000B8668  3B E0 00 00 */	li r31, 0
/* 800BB72C 000B866C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800BB730 000B8670  98 81 00 09 */	stb r4, 9(r1)
/* 800BB734 000B8674  98 61 00 0A */	stb r3, 0xa(r1)
/* 800BB738 000B8678  98 01 00 0B */	stb r0, 0xb(r1)
/* 800BB73C 000B867C  80 61 00 08 */	lwz r3, 8(r1)
/* 800BB740 000B8680  94 C5 28 A8 */	stwu r6, gTRKBigEndian@l(r5)
/* 800BB744 000B8684  3C 03 ED CC */	addis r0, r3, 0xedcc
/* 800BB748 000B8688  28 00 56 78 */	cmplwi r0, 0x5678
/* 800BB74C 000B868C  40 82 00 0C */	bne lbl_800BB758
/* 800BB750 000B8690  90 C5 00 00 */	stw r6, 0(r5)
/* 800BB754 000B8694  48 00 00 1C */	b lbl_800BB770
lbl_800BB758:
/* 800BB758 000B8698  3C 03 87 AA */	addis r0, r3, 0x87aa
/* 800BB75C 000B869C  28 00 34 12 */	cmplwi r0, 0x3412
/* 800BB760 000B86A0  40 82 00 0C */	bne lbl_800BB76C
/* 800BB764 000B86A4  93 E5 00 00 */	stw r31, 0(r5)
/* 800BB768 000B86A8  48 00 00 08 */	b lbl_800BB770
lbl_800BB76C:
/* 800BB76C 000B86AC  7C DF 33 78 */	mr r31, r6
lbl_800BB770:
/* 800BB770 000B86B0  3C 60 80 48 */	lis r3, lbl_804796E4@ha
/* 800BB774 000B86B4  38 83 96 E4 */	addi r4, r3, lbl_804796E4@l
/* 800BB778 000B86B8  38 60 00 01 */	li r3, 1
/* 800BB77C 000B86BC  4C C6 31 82 */	crclr 6
/* 800BB780 000B86C0  48 00 5D C9 */	bl MWTRACE
/* 800BB784 000B86C4  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB788 000B86C8  40 82 00 08 */	bne lbl_800BB790
/* 800BB78C 000B86CC  48 00 0B F5 */	bl usr_put_initialize
lbl_800BB790:
/* 800BB790 000B86D0  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB794 000B86D4  40 82 00 0C */	bne lbl_800BB7A0
/* 800BB798 000B86D8  4B FF FE C1 */	bl TRKInitializeEventQueue
/* 800BB79C 000B86DC  7C 7F 1B 78 */	mr r31, r3
lbl_800BB7A0:
/* 800BB7A0 000B86E0  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB7A4 000B86E4  40 82 00 0C */	bne lbl_800BB7B0
/* 800BB7A8 000B86E8  48 00 08 AD */	bl TRKInitializeMessageBuffers
/* 800BB7AC 000B86EC  7C 7F 1B 78 */	mr r31, r3
lbl_800BB7B0:
/* 800BB7B0 000B86F0  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB7B4 000B86F4  40 82 00 0C */	bne lbl_800BB7C0
/* 800BB7B8 000B86F8  48 00 0D C5 */	bl TRKInitializeDispatcher
/* 800BB7BC 000B86FC  7C 7F 1B 78 */	mr r31, r3
lbl_800BB7C0:
/* 800BB7C0 000B8700  48 00 4D 31 */	bl InitializeProgramEndTrap
/* 800BB7C4 000B8704  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB7C8 000B8708  40 82 00 0C */	bne lbl_800BB7D4
/* 800BB7CC 000B870C  48 00 09 05 */	bl TRKInitializeSerialHandler
/* 800BB7D0 000B8710  7C 7F 1B 78 */	mr r31, r3
lbl_800BB7D4:
/* 800BB7D4 000B8714  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB7D8 000B8718  40 82 00 0C */	bne lbl_800BB7E4
/* 800BB7DC 000B871C  48 00 4A 41 */	bl TRKInitializeTarget
/* 800BB7E0 000B8720  7C 7F 1B 78 */	mr r31, r3
lbl_800BB7E4:
/* 800BB7E4 000B8724  2C 1F 00 00 */	cmpwi r31, 0
/* 800BB7E8 000B8728  40 82 00 44 */	bne lbl_800BB82C
/* 800BB7EC 000B872C  3C 60 80 51 */	lis r3, gTRKInputPendingPtr@ha
/* 800BB7F0 000B8730  3C A0 00 01 */	lis r5, 0x0000E100@ha
/* 800BB7F4 000B8734  38 C3 53 08 */	addi r6, r3, gTRKInputPendingPtr@l
/* 800BB7F8 000B8738  38 80 00 01 */	li r4, 1
/* 800BB7FC 000B873C  38 65 E1 00 */	addi r3, r5, 0x0000E100@l
/* 800BB800 000B8740  38 A0 00 00 */	li r5, 0
/* 800BB804 000B8744  48 00 4E C5 */	bl TRKInitializeIntDrivenUART
/* 800BB808 000B8748  3C 80 80 51 */	lis r4, gTRKInputPendingPtr@ha
/* 800BB80C 000B874C  7C 60 1B 78 */	mr r0, r3
/* 800BB810 000B8750  38 64 53 08 */	addi r3, r4, gTRKInputPendingPtr@l
/* 800BB814 000B8754  80 63 00 00 */	lwz r3, 0(r3)
/* 800BB818 000B8758  7C 1E 03 78 */	mr r30, r0
/* 800BB81C 000B875C  48 00 2B 2D */	bl TRKTargetSetInputPendingPtr
/* 800BB820 000B8760  2C 1E 00 00 */	cmpwi r30, 0
/* 800BB824 000B8764  41 82 00 08 */	beq lbl_800BB82C
/* 800BB828 000B8768  7F DF F3 78 */	mr r31, r30
lbl_800BB82C:
/* 800BB82C 000B876C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BB830 000B8770  7F E3 FB 78 */	mr r3, r31
/* 800BB834 000B8774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800BB838 000B8778  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800BB83C 000B877C  7C 08 03 A6 */	mtlr r0
/* 800BB840 000B8780  38 21 00 20 */	addi r1, r1, 0x20
/* 800BB844 000B8784  4E 80 00 20 */	blr 
