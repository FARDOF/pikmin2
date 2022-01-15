.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_80479AF8
lbl_80479AF8:
	.4byte 0x43616C6C
	.4byte 0x696E6720
	.4byte 0x4D657373
	.4byte 0x61676553
	.4byte 0x656E640A
	.4byte 0x00000000
	.4byte 0x6D73675F
	.4byte 0x636F6D6D
	.4byte 0x616E6420
	.4byte 0x3A203078
	.4byte 0x25303278
	.4byte 0x20686472
	.4byte 0x2D3E636D
	.4byte 0x64494420
	.4byte 0x30782530
	.4byte 0x32780A00
	.4byte 0x6D73675F
	.4byte 0x6572726F
	.4byte 0x72203A20
	.4byte 0x30782530
	.4byte 0x32780A00
	.4byte 0x52657175
	.4byte 0x65737453
	.4byte 0x656E6420
	.4byte 0x3A204261
	.4byte 0x64206163
	.4byte 0x6B206F72
	.4byte 0x206E6F6E
	.4byte 0x2061636B
	.4byte 0x20726563
	.4byte 0x65697665
	.4byte 0x64206D73
	.4byte 0x675F636F
	.4byte 0x6D6D616E
	.4byte 0x64203A20
	.4byte 0x30782530
	.4byte 0x3278206D
	.4byte 0x73675F65
	.4byte 0x72726F72
	.4byte 0x20307825
	.4byte 0x3032780A
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global HandlePositionFileSupportRequest
HandlePositionFileSupportRequest:
/* 800BD5F4 000BA534  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800BD5F8 000BA538  7C 08 02 A6 */	mflr r0
/* 800BD5FC 000BA53C  90 01 00 74 */	stw r0, 0x74(r1)
/* 800BD600 000BA540  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800BD604 000BA544  7C BF 2B 78 */	mr r31, r5
/* 800BD608 000BA548  38 A0 00 40 */	li r5, 0x40
/* 800BD60C 000BA54C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800BD610 000BA550  7C DE 33 78 */	mr r30, r6
/* 800BD614 000BA554  93 A1 00 64 */	stw r29, 0x64(r1)
/* 800BD618 000BA558  7C 9D 23 78 */	mr r29, r4
/* 800BD61C 000BA55C  38 80 00 00 */	li r4, 0
/* 800BD620 000BA560  93 81 00 60 */	stw r28, 0x60(r1)
/* 800BD624 000BA564  7C 7C 1B 78 */	mr r28, r3
/* 800BD628 000BA568  38 61 00 14 */	addi r3, r1, 0x14
/* 800BD62C 000BA56C  4B F4 7A 89 */	bl memset
/* 800BD630 000BA570  38 60 00 D4 */	li r3, 0xd4
/* 800BD634 000BA574  38 00 00 40 */	li r0, 0x40
/* 800BD638 000BA578  98 61 00 18 */	stb r3, 0x18(r1)
/* 800BD63C 000BA57C  38 61 00 0C */	addi r3, r1, 0xc
/* 800BD640 000BA580  38 81 00 08 */	addi r4, r1, 8
/* 800BD644 000BA584  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD648 000BA588  93 81 00 1C */	stw r28, 0x1c(r1)
/* 800BD64C 000BA58C  80 1D 00 00 */	lwz r0, 0(r29)
/* 800BD650 000BA590  90 01 00 20 */	stw r0, 0x20(r1)
/* 800BD654 000BA594  9B E1 00 24 */	stb r31, 0x24(r1)
/* 800BD658 000BA598  4B FF E9 35 */	bl TRKGetFreeBuffer
/* 800BD65C 000BA59C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800BD660 000BA5A0  40 82 00 18 */	bne lbl_800BD678
/* 800BD664 000BA5A4  80 61 00 08 */	lwz r3, 8(r1)
/* 800BD668 000BA5A8  38 81 00 14 */	addi r4, r1, 0x14
/* 800BD66C 000BA5AC  38 A0 00 40 */	li r5, 0x40
/* 800BD670 000BA5B0  4B FF E5 89 */	bl TRKAppendBuffer_ui8
/* 800BD674 000BA5B4  7C 7F 1B 78 */	mr r31, r3
lbl_800BD678:
/* 800BD678 000BA5B8  2C 1F 00 00 */	cmpwi r31, 0
/* 800BD67C 000BA5BC  40 82 00 5C */	bne lbl_800BD6D8
/* 800BD680 000BA5C0  38 60 00 00 */	li r3, 0
/* 800BD684 000BA5C4  38 00 FF FF */	li r0, -1
/* 800BD688 000BA5C8  90 7E 00 00 */	stw r3, 0(r30)
/* 800BD68C 000BA5CC  38 81 00 10 */	addi r4, r1, 0x10
/* 800BD690 000BA5D0  38 A0 00 03 */	li r5, 3
/* 800BD694 000BA5D4  38 C0 00 03 */	li r6, 3
/* 800BD698 000BA5D8  90 1D 00 00 */	stw r0, 0(r29)
/* 800BD69C 000BA5DC  38 E0 00 00 */	li r7, 0
/* 800BD6A0 000BA5E0  80 61 00 08 */	lwz r3, 8(r1)
/* 800BD6A4 000BA5E4  48 00 02 65 */	bl TRKRequestSend
/* 800BD6A8 000BA5E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 800BD6AC 000BA5EC  40 82 00 24 */	bne lbl_800BD6D0
/* 800BD6B0 000BA5F0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BD6B4 000BA5F4  4B FF E8 AD */	bl TRKGetBuffer
/* 800BD6B8 000BA5F8  28 03 00 00 */	cmplwi r3, 0
/* 800BD6BC 000BA5FC  41 82 00 14 */	beq lbl_800BD6D0
/* 800BD6C0 000BA600  80 03 00 20 */	lwz r0, 0x20(r3)
/* 800BD6C4 000BA604  90 1E 00 00 */	stw r0, 0(r30)
/* 800BD6C8 000BA608  80 03 00 28 */	lwz r0, 0x28(r3)
/* 800BD6CC 000BA60C  90 1D 00 00 */	stw r0, 0(r29)
lbl_800BD6D0:
/* 800BD6D0 000BA610  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BD6D4 000BA614  4B FF E8 29 */	bl TRKReleaseBuffer
lbl_800BD6D8:
/* 800BD6D8 000BA618  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800BD6DC 000BA61C  4B FF E8 21 */	bl TRKReleaseBuffer
/* 800BD6E0 000BA620  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800BD6E4 000BA624  7F E3 FB 78 */	mr r3, r31
/* 800BD6E8 000BA628  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800BD6EC 000BA62C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800BD6F0 000BA630  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 800BD6F4 000BA634  83 81 00 60 */	lwz r28, 0x60(r1)
/* 800BD6F8 000BA638  7C 08 03 A6 */	mtlr r0
/* 800BD6FC 000BA63C  38 21 00 70 */	addi r1, r1, 0x70
/* 800BD700 000BA640  4E 80 00 20 */	blr 

.global HandleCloseFileSupportRequest
HandleCloseFileSupportRequest:
/* 800BD704 000BA644  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800BD708 000BA648  7C 08 02 A6 */	mflr r0
/* 800BD70C 000BA64C  38 A0 00 40 */	li r5, 0x40
/* 800BD710 000BA650  90 01 00 74 */	stw r0, 0x74(r1)
/* 800BD714 000BA654  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800BD718 000BA658  7C 7F 1B 78 */	mr r31, r3
/* 800BD71C 000BA65C  38 61 00 14 */	addi r3, r1, 0x14
/* 800BD720 000BA660  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800BD724 000BA664  93 A1 00 64 */	stw r29, 0x64(r1)
/* 800BD728 000BA668  7C 9D 23 78 */	mr r29, r4
/* 800BD72C 000BA66C  38 80 00 00 */	li r4, 0
/* 800BD730 000BA670  4B F4 79 85 */	bl memset
/* 800BD734 000BA674  38 60 00 D3 */	li r3, 0xd3
/* 800BD738 000BA678  38 00 00 40 */	li r0, 0x40
/* 800BD73C 000BA67C  98 61 00 18 */	stb r3, 0x18(r1)
/* 800BD740 000BA680  38 61 00 0C */	addi r3, r1, 0xc
/* 800BD744 000BA684  38 81 00 08 */	addi r4, r1, 8
/* 800BD748 000BA688  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD74C 000BA68C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800BD750 000BA690  4B FF E8 3D */	bl TRKGetFreeBuffer
/* 800BD754 000BA694  7C 7F 1B 79 */	or. r31, r3, r3
/* 800BD758 000BA698  40 82 00 18 */	bne lbl_800BD770
/* 800BD75C 000BA69C  80 61 00 08 */	lwz r3, 8(r1)
/* 800BD760 000BA6A0  38 81 00 14 */	addi r4, r1, 0x14
/* 800BD764 000BA6A4  38 A0 00 40 */	li r5, 0x40
/* 800BD768 000BA6A8  4B FF E4 91 */	bl TRKAppendBuffer_ui8
/* 800BD76C 000BA6AC  7C 7F 1B 78 */	mr r31, r3
lbl_800BD770:
/* 800BD770 000BA6B0  2C 1F 00 00 */	cmpwi r31, 0
/* 800BD774 000BA6B4  40 82 00 50 */	bne lbl_800BD7C4
/* 800BD778 000BA6B8  38 00 00 00 */	li r0, 0
/* 800BD77C 000BA6BC  38 81 00 10 */	addi r4, r1, 0x10
/* 800BD780 000BA6C0  90 1D 00 00 */	stw r0, 0(r29)
/* 800BD784 000BA6C4  38 A0 00 03 */	li r5, 3
/* 800BD788 000BA6C8  38 C0 00 03 */	li r6, 3
/* 800BD78C 000BA6CC  38 E0 00 00 */	li r7, 0
/* 800BD790 000BA6D0  80 61 00 08 */	lwz r3, 8(r1)
/* 800BD794 000BA6D4  48 00 01 75 */	bl TRKRequestSend
/* 800BD798 000BA6D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 800BD79C 000BA6DC  40 82 00 10 */	bne lbl_800BD7AC
/* 800BD7A0 000BA6E0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BD7A4 000BA6E4  4B FF E7 BD */	bl TRKGetBuffer
/* 800BD7A8 000BA6E8  7C 7E 1B 78 */	mr r30, r3
lbl_800BD7AC:
/* 800BD7AC 000BA6EC  2C 1F 00 00 */	cmpwi r31, 0
/* 800BD7B0 000BA6F0  40 82 00 0C */	bne lbl_800BD7BC
/* 800BD7B4 000BA6F4  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 800BD7B8 000BA6F8  90 1D 00 00 */	stw r0, 0(r29)
lbl_800BD7BC:
/* 800BD7BC 000BA6FC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BD7C0 000BA700  4B FF E7 3D */	bl TRKReleaseBuffer
lbl_800BD7C4:
/* 800BD7C4 000BA704  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800BD7C8 000BA708  4B FF E7 35 */	bl TRKReleaseBuffer
/* 800BD7CC 000BA70C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800BD7D0 000BA710  7F E3 FB 78 */	mr r3, r31
/* 800BD7D4 000BA714  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800BD7D8 000BA718  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800BD7DC 000BA71C  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 800BD7E0 000BA720  7C 08 03 A6 */	mtlr r0
/* 800BD7E4 000BA724  38 21 00 70 */	addi r1, r1, 0x70
/* 800BD7E8 000BA728  4E 80 00 20 */	blr 

.global HandleOpenFileSupportRequest
HandleOpenFileSupportRequest:
/* 800BD7EC 000BA72C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800BD7F0 000BA730  7C 08 02 A6 */	mflr r0
/* 800BD7F4 000BA734  90 01 00 74 */	stw r0, 0x74(r1)
/* 800BD7F8 000BA738  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 800BD7FC 000BA73C  7C 7B 1B 78 */	mr r27, r3
/* 800BD800 000BA740  7C 9F 23 78 */	mr r31, r4
/* 800BD804 000BA744  7C BC 2B 78 */	mr r28, r5
/* 800BD808 000BA748  7C DD 33 78 */	mr r29, r6
/* 800BD80C 000BA74C  38 61 00 14 */	addi r3, r1, 0x14
/* 800BD810 000BA750  38 80 00 00 */	li r4, 0
/* 800BD814 000BA754  38 A0 00 40 */	li r5, 0x40
/* 800BD818 000BA758  4B F4 78 9D */	bl memset
/* 800BD81C 000BA75C  38 60 00 00 */	li r3, 0
/* 800BD820 000BA760  38 00 00 D2 */	li r0, 0xd2
/* 800BD824 000BA764  90 7C 00 00 */	stw r3, 0(r28)
/* 800BD828 000BA768  7F 63 DB 78 */	mr r3, r27
/* 800BD82C 000BA76C  98 01 00 18 */	stb r0, 0x18(r1)
/* 800BD830 000BA770  48 00 D0 E1 */	bl strlen
/* 800BD834 000BA774  38 03 00 41 */	addi r0, r3, 0x41
/* 800BD838 000BA778  9B E1 00 1C */	stb r31, 0x1c(r1)
/* 800BD83C 000BA77C  7F 63 DB 78 */	mr r3, r27
/* 800BD840 000BA780  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD844 000BA784  48 00 D0 CD */	bl strlen
/* 800BD848 000BA788  38 03 00 01 */	addi r0, r3, 1
/* 800BD84C 000BA78C  38 61 00 0C */	addi r3, r1, 0xc
/* 800BD850 000BA790  B0 01 00 20 */	sth r0, 0x20(r1)
/* 800BD854 000BA794  38 81 00 08 */	addi r4, r1, 8
/* 800BD858 000BA798  4B FF E7 35 */	bl TRKGetFreeBuffer
/* 800BD85C 000BA79C  80 61 00 08 */	lwz r3, 8(r1)
/* 800BD860 000BA7A0  38 81 00 14 */	addi r4, r1, 0x14
/* 800BD864 000BA7A4  38 A0 00 40 */	li r5, 0x40
/* 800BD868 000BA7A8  4B FF E3 91 */	bl TRKAppendBuffer_ui8
/* 800BD86C 000BA7AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 800BD870 000BA7B0  40 82 00 24 */	bne lbl_800BD894
/* 800BD874 000BA7B4  7F 63 DB 78 */	mr r3, r27
/* 800BD878 000BA7B8  48 00 D0 99 */	bl strlen
/* 800BD87C 000BA7BC  7C 65 1B 78 */	mr r5, r3
/* 800BD880 000BA7C0  80 61 00 08 */	lwz r3, 8(r1)
/* 800BD884 000BA7C4  7F 64 DB 78 */	mr r4, r27
/* 800BD888 000BA7C8  38 A5 00 01 */	addi r5, r5, 1
/* 800BD88C 000BA7CC  4B FF E3 6D */	bl TRKAppendBuffer_ui8
/* 800BD890 000BA7D0  7C 7F 1B 78 */	mr r31, r3
lbl_800BD894:
/* 800BD894 000BA7D4  2C 1F 00 00 */	cmpwi r31, 0
/* 800BD898 000BA7D8  40 82 00 50 */	bne lbl_800BD8E8
/* 800BD89C 000BA7DC  38 00 00 00 */	li r0, 0
/* 800BD8A0 000BA7E0  38 81 00 10 */	addi r4, r1, 0x10
/* 800BD8A4 000BA7E4  90 1D 00 00 */	stw r0, 0(r29)
/* 800BD8A8 000BA7E8  38 A0 00 07 */	li r5, 7
/* 800BD8AC 000BA7EC  38 C0 00 03 */	li r6, 3
/* 800BD8B0 000BA7F0  38 E0 00 00 */	li r7, 0
/* 800BD8B4 000BA7F4  80 61 00 08 */	lwz r3, 8(r1)
/* 800BD8B8 000BA7F8  48 00 00 51 */	bl TRKRequestSend
/* 800BD8BC 000BA7FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 800BD8C0 000BA800  40 82 00 10 */	bne lbl_800BD8D0
/* 800BD8C4 000BA804  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BD8C8 000BA808  4B FF E6 99 */	bl TRKGetBuffer
/* 800BD8CC 000BA80C  7C 7E 1B 78 */	mr r30, r3
lbl_800BD8D0:
/* 800BD8D0 000BA810  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 800BD8D4 000BA814  90 1D 00 00 */	stw r0, 0(r29)
/* 800BD8D8 000BA818  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800BD8DC 000BA81C  90 1C 00 00 */	stw r0, 0(r28)
/* 800BD8E0 000BA820  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BD8E4 000BA824  4B FF E6 19 */	bl TRKReleaseBuffer
lbl_800BD8E8:
/* 800BD8E8 000BA828  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800BD8EC 000BA82C  4B FF E6 11 */	bl TRKReleaseBuffer
/* 800BD8F0 000BA830  7F E3 FB 78 */	mr r3, r31
/* 800BD8F4 000BA834  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 800BD8F8 000BA838  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800BD8FC 000BA83C  7C 08 03 A6 */	mtlr r0
/* 800BD900 000BA840  38 21 00 70 */	addi r1, r1, 0x70
/* 800BD904 000BA844  4E 80 00 20 */	blr 

.global TRKRequestSend
TRKRequestSend:
/* 800BD908 000BA848  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800BD90C 000BA84C  7C 08 02 A6 */	mflr r0
/* 800BD910 000BA850  90 01 00 44 */	stw r0, 0x44(r1)
/* 800BD914 000BA854  38 00 FF FF */	li r0, -1
/* 800BD918 000BA858  BE A1 00 14 */	stmw r21, 0x14(r1)
/* 800BD91C 000BA85C  7C 96 23 78 */	mr r22, r4
/* 800BD920 000BA860  3C 80 80 48 */	lis r4, lbl_80479AF8@ha
/* 800BD924 000BA864  7C 75 1B 78 */	mr r21, r3
/* 800BD928 000BA868  7C F7 3B 78 */	mr r23, r7
/* 800BD92C 000BA86C  3B 66 00 01 */	addi r27, r6, 1
/* 800BD930 000BA870  3B E4 9A F8 */	addi r31, r4, lbl_80479AF8@l
/* 800BD934 000BA874  3B C0 00 00 */	li r30, 0
/* 800BD938 000BA878  3B 00 00 01 */	li r24, 1
/* 800BD93C 000BA87C  90 16 00 00 */	stw r0, 0(r22)
/* 800BD940 000BA880  48 00 01 64 */	b lbl_800BDAA4
lbl_800BD944:
/* 800BD944 000BA884  38 9F 00 00 */	addi r4, r31, 0
/* 800BD948 000BA888  38 60 00 01 */	li r3, 1
/* 800BD94C 000BA88C  4C C6 31 82 */	crclr 6
/* 800BD950 000BA890  48 00 3B F9 */	bl MWTRACE
/* 800BD954 000BA894  7E A3 AB 78 */	mr r3, r21
/* 800BD958 000BA898  4B FF DE F1 */	bl TRKMessageSend
/* 800BD95C 000BA89C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800BD960 000BA8A0  40 82 01 40 */	bne lbl_800BDAA0
/* 800BD964 000BA8A4  2C 17 00 00 */	cmpwi r23, 0
/* 800BD968 000BA8A8  41 82 00 08 */	beq lbl_800BD970
/* 800BD96C 000BA8AC  3B 80 00 00 */	li r28, 0
lbl_800BD970:
/* 800BD970 000BA8B0  4B FF E8 D5 */	bl TRKTestForPacket
/* 800BD974 000BA8B4  90 76 00 00 */	stw r3, 0(r22)
/* 800BD978 000BA8B8  80 76 00 00 */	lwz r3, 0(r22)
/* 800BD97C 000BA8BC  2C 03 FF FF */	cmpwi r3, -1
/* 800BD980 000BA8C0  40 82 00 20 */	bne lbl_800BD9A0
/* 800BD984 000BA8C4  2C 17 00 00 */	cmpwi r23, 0
/* 800BD988 000BA8C8  41 82 FF E8 */	beq lbl_800BD970
/* 800BD98C 000BA8CC  3C 80 04 C5 */	lis r4, 0x04C4B3EC@ha
/* 800BD990 000BA8D0  3B 9C 00 01 */	addi r28, r28, 1
/* 800BD994 000BA8D4  38 04 B3 EC */	addi r0, r4, 0x04C4B3EC@l
/* 800BD998 000BA8D8  7C 1C 00 40 */	cmplw r28, r0
/* 800BD99C 000BA8DC  41 80 FF D4 */	blt lbl_800BD970
lbl_800BD9A0:
/* 800BD9A0 000BA8E0  2C 03 FF FF */	cmpwi r3, -1
/* 800BD9A4 000BA8E4  41 82 00 5C */	beq lbl_800BDA00
/* 800BD9A8 000BA8E8  3B 00 00 00 */	li r24, 0
/* 800BD9AC 000BA8EC  4B FF E5 B5 */	bl TRKGetBuffer
/* 800BD9B0 000BA8F0  38 80 00 00 */	li r4, 0
/* 800BD9B4 000BA8F4  7C 7D 1B 78 */	mr r29, r3
/* 800BD9B8 000BA8F8  4B FF E4 D5 */	bl TRKSetBufferPosition
/* 800BD9BC 000BA8FC  80 9D 00 08 */	lwz r4, 8(r29)
/* 800BD9C0 000BA900  38 7D 00 10 */	addi r3, r29, 0x10
/* 800BD9C4 000BA904  4B FF FB 89 */	bl OutputData
/* 800BD9C8 000BA908  8B 5D 00 14 */	lbz r26, 0x14(r29)
/* 800BD9CC 000BA90C  38 9F 00 18 */	addi r4, r31, 0x18
/* 800BD9D0 000BA910  38 60 00 01 */	li r3, 1
/* 800BD9D4 000BA914  7F 45 D3 78 */	mr r5, r26
/* 800BD9D8 000BA918  7F 46 D3 78 */	mr r6, r26
/* 800BD9DC 000BA91C  4C C6 31 82 */	crclr 6
/* 800BD9E0 000BA920  48 00 3B 69 */	bl MWTRACE
/* 800BD9E4 000BA924  28 1A 00 80 */	cmplwi r26, 0x80
/* 800BD9E8 000BA928  40 80 00 18 */	bge lbl_800BDA00
/* 800BD9EC 000BA92C  80 76 00 00 */	lwz r3, 0(r22)
/* 800BD9F0 000BA930  4B FF E7 A5 */	bl TRKProcessInput
/* 800BD9F4 000BA934  38 00 FF FF */	li r0, -1
/* 800BD9F8 000BA938  90 16 00 00 */	stw r0, 0(r22)
/* 800BD9FC 000BA93C  4B FF FF 74 */	b lbl_800BD970
lbl_800BDA00:
/* 800BDA00 000BA940  80 16 00 00 */	lwz r0, 0(r22)
/* 800BDA04 000BA944  2C 00 FF FF */	cmpwi r0, -1
/* 800BDA08 000BA948  41 82 00 98 */	beq lbl_800BDAA0
/* 800BDA0C 000BA94C  80 1D 00 08 */	lwz r0, 8(r29)
/* 800BDA10 000BA950  28 00 00 40 */	cmplwi r0, 0x40
/* 800BDA14 000BA954  40 80 00 08 */	bge lbl_800BDA1C
/* 800BDA18 000BA958  3B 00 00 01 */	li r24, 1
lbl_800BDA1C:
/* 800BDA1C 000BA95C  2C 1E 00 00 */	cmpwi r30, 0
/* 800BDA20 000BA960  40 82 00 24 */	bne lbl_800BDA44
/* 800BDA24 000BA964  2C 18 00 00 */	cmpwi r24, 0
/* 800BDA28 000BA968  40 82 00 1C */	bne lbl_800BDA44
/* 800BDA2C 000BA96C  8B 3D 00 18 */	lbz r25, 0x18(r29)
/* 800BDA30 000BA970  38 9F 00 40 */	addi r4, r31, 0x40
/* 800BDA34 000BA974  38 60 00 01 */	li r3, 1
/* 800BDA38 000BA978  7F 25 CB 78 */	mr r5, r25
/* 800BDA3C 000BA97C  4C C6 31 82 */	crclr 6
/* 800BDA40 000BA980  48 00 3B 09 */	bl MWTRACE
lbl_800BDA44:
/* 800BDA44 000BA984  2C 1E 00 00 */	cmpwi r30, 0
/* 800BDA48 000BA988  40 82 00 38 */	bne lbl_800BDA80
/* 800BDA4C 000BA98C  2C 18 00 00 */	cmpwi r24, 0
/* 800BDA50 000BA990  40 82 00 30 */	bne lbl_800BDA80
/* 800BDA54 000BA994  2C 1A 00 80 */	cmpwi r26, 0x80
/* 800BDA58 000BA998  7F 45 D3 78 */	mr r5, r26
/* 800BDA5C 000BA99C  40 82 00 0C */	bne lbl_800BDA68
/* 800BDA60 000BA9A0  2C 19 00 00 */	cmpwi r25, 0
/* 800BDA64 000BA9A4  41 82 00 1C */	beq lbl_800BDA80
lbl_800BDA68:
/* 800BDA68 000BA9A8  7F 26 CB 78 */	mr r6, r25
/* 800BDA6C 000BA9AC  38 9F 00 54 */	addi r4, r31, 0x54
/* 800BDA70 000BA9B0  38 60 00 08 */	li r3, 8
/* 800BDA74 000BA9B4  4C C6 31 82 */	crclr 6
/* 800BDA78 000BA9B8  48 00 3A D1 */	bl MWTRACE
/* 800BDA7C 000BA9BC  3B 00 00 01 */	li r24, 1
lbl_800BDA80:
/* 800BDA80 000BA9C0  2C 1E 00 00 */	cmpwi r30, 0
/* 800BDA84 000BA9C4  40 82 00 0C */	bne lbl_800BDA90
/* 800BDA88 000BA9C8  2C 18 00 00 */	cmpwi r24, 0
/* 800BDA8C 000BA9CC  41 82 00 14 */	beq lbl_800BDAA0
lbl_800BDA90:
/* 800BDA90 000BA9D0  80 76 00 00 */	lwz r3, 0(r22)
/* 800BDA94 000BA9D4  4B FF E4 69 */	bl TRKReleaseBuffer
/* 800BDA98 000BA9D8  38 00 FF FF */	li r0, -1
/* 800BDA9C 000BA9DC  90 16 00 00 */	stw r0, 0(r22)
lbl_800BDAA0:
/* 800BDAA0 000BA9E0  3B 7B FF FF */	addi r27, r27, -1
lbl_800BDAA4:
/* 800BDAA4 000BA9E4  2C 1B 00 00 */	cmpwi r27, 0
/* 800BDAA8 000BA9E8  41 82 00 18 */	beq lbl_800BDAC0
/* 800BDAAC 000BA9EC  80 16 00 00 */	lwz r0, 0(r22)
/* 800BDAB0 000BA9F0  2C 00 FF FF */	cmpwi r0, -1
/* 800BDAB4 000BA9F4  40 82 00 0C */	bne lbl_800BDAC0
/* 800BDAB8 000BA9F8  2C 1E 00 00 */	cmpwi r30, 0
/* 800BDABC 000BA9FC  41 82 FE 88 */	beq lbl_800BD944
lbl_800BDAC0:
/* 800BDAC0 000BAA00  80 16 00 00 */	lwz r0, 0(r22)
/* 800BDAC4 000BAA04  2C 00 FF FF */	cmpwi r0, -1
/* 800BDAC8 000BAA08  40 82 00 08 */	bne lbl_800BDAD0
/* 800BDACC 000BAA0C  3B C0 08 00 */	li r30, 0x800
lbl_800BDAD0:
/* 800BDAD0 000BAA10  7F C3 F3 78 */	mr r3, r30
/* 800BDAD4 000BAA14  BA A1 00 14 */	lmw r21, 0x14(r1)
/* 800BDAD8 000BAA18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800BDADC 000BAA1C  7C 08 03 A6 */	mtlr r0
/* 800BDAE0 000BAA20  38 21 00 40 */	addi r1, r1, 0x40
/* 800BDAE4 000BAA24  4E 80 00 20 */	blr 

.global TRKSuppAccessFile
TRKSuppAccessFile:
/* 800BDAE8 000BAA28  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800BDAEC 000BAA2C  7C 08 02 A6 */	mflr r0
/* 800BDAF0 000BAA30  90 01 00 94 */	stw r0, 0x94(r1)
/* 800BDAF4 000BAA34  BE 61 00 5C */	stmw r19, 0x5c(r1)
/* 800BDAF8 000BAA38  7C 98 23 79 */	or. r24, r4, r4
/* 800BDAFC 000BAA3C  7C 77 1B 78 */	mr r23, r3
/* 800BDB00 000BAA40  7C B9 2B 78 */	mr r25, r5
/* 800BDB04 000BAA44  7C DA 33 78 */	mr r26, r6
/* 800BDB08 000BAA48  7C FB 3B 78 */	mr r27, r7
/* 800BDB0C 000BAA4C  7D 1C 43 78 */	mr r28, r8
/* 800BDB10 000BAA50  41 82 00 10 */	beq lbl_800BDB20
/* 800BDB14 000BAA54  80 19 00 00 */	lwz r0, 0(r25)
/* 800BDB18 000BAA58  28 00 00 00 */	cmplwi r0, 0
/* 800BDB1C 000BAA5C  40 82 00 0C */	bne lbl_800BDB28
lbl_800BDB20:
/* 800BDB20 000BAA60  38 60 00 02 */	li r3, 2
/* 800BDB24 000BAA64  48 00 01 D0 */	b lbl_800BDCF4
lbl_800BDB28:
/* 800BDB28 000BAA68  38 00 00 00 */	li r0, 0
/* 800BDB2C 000BAA6C  3B A0 00 00 */	li r29, 0
/* 800BDB30 000BAA70  90 1A 00 00 */	stw r0, 0(r26)
/* 800BDB34 000BAA74  3B C0 00 00 */	li r30, 0
/* 800BDB38 000BAA78  3A A0 00 00 */	li r21, 0
/* 800BDB3C 000BAA7C  48 00 01 88 */	b lbl_800BDCC4
lbl_800BDB40:
/* 800BDB40 000BAA80  38 61 00 14 */	addi r3, r1, 0x14
/* 800BDB44 000BAA84  38 80 00 00 */	li r4, 0
/* 800BDB48 000BAA88  38 A0 00 40 */	li r5, 0x40
/* 800BDB4C 000BAA8C  4B F4 75 69 */	bl memset
/* 800BDB50 000BAA90  80 19 00 00 */	lwz r0, 0(r25)
/* 800BDB54 000BAA94  38 60 08 00 */	li r3, 0x800
/* 800BDB58 000BAA98  7C 1E 00 50 */	subf r0, r30, r0
/* 800BDB5C 000BAA9C  28 00 08 00 */	cmplwi r0, 0x800
/* 800BDB60 000BAAA0  41 81 00 08 */	bgt lbl_800BDB68
/* 800BDB64 000BAAA4  7C 03 03 78 */	mr r3, r0
lbl_800BDB68:
/* 800BDB68 000BAAA8  2C 1C 00 00 */	cmpwi r28, 0
/* 800BDB6C 000BAAAC  7C 7F 1B 78 */	mr r31, r3
/* 800BDB70 000BAAB0  38 00 00 D0 */	li r0, 0xd0
/* 800BDB74 000BAAB4  41 82 00 08 */	beq lbl_800BDB7C
/* 800BDB78 000BAAB8  38 00 00 D1 */	li r0, 0xd1
lbl_800BDB7C:
/* 800BDB7C 000BAABC  2C 1C 00 00 */	cmpwi r28, 0
/* 800BDB80 000BAAC0  98 01 00 18 */	stb r0, 0x18(r1)
/* 800BDB84 000BAAC4  38 00 00 40 */	li r0, 0x40
/* 800BDB88 000BAAC8  40 82 00 08 */	bne lbl_800BDB90
/* 800BDB8C 000BAACC  38 1F 00 40 */	addi r0, r31, 0x40
lbl_800BDB90:
/* 800BDB90 000BAAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDB94 000BAAD4  38 61 00 0C */	addi r3, r1, 0xc
/* 800BDB98 000BAAD8  38 81 00 08 */	addi r4, r1, 8
/* 800BDB9C 000BAADC  92 E1 00 1C */	stw r23, 0x1c(r1)
/* 800BDBA0 000BAAE0  B3 E1 00 20 */	sth r31, 0x20(r1)
/* 800BDBA4 000BAAE4  4B FF E3 E9 */	bl TRKGetFreeBuffer
/* 800BDBA8 000BAAE8  80 61 00 08 */	lwz r3, 8(r1)
/* 800BDBAC 000BAAEC  38 81 00 14 */	addi r4, r1, 0x14
/* 800BDBB0 000BAAF0  38 A0 00 40 */	li r5, 0x40
/* 800BDBB4 000BAAF4  4B FF E0 45 */	bl TRKAppendBuffer_ui8
/* 800BDBB8 000BAAF8  2C 1C 00 00 */	cmpwi r28, 0
/* 800BDBBC 000BAAFC  7C 75 1B 78 */	mr r21, r3
/* 800BDBC0 000BAB00  40 82 00 20 */	bne lbl_800BDBE0
/* 800BDBC4 000BAB04  2C 15 00 00 */	cmpwi r21, 0
/* 800BDBC8 000BAB08  40 82 00 18 */	bne lbl_800BDBE0
/* 800BDBCC 000BAB0C  80 61 00 08 */	lwz r3, 8(r1)
/* 800BDBD0 000BAB10  7F E5 FB 78 */	mr r5, r31
/* 800BDBD4 000BAB14  7C 98 F2 14 */	add r4, r24, r30
/* 800BDBD8 000BAB18  4B FF E0 21 */	bl TRKAppendBuffer_ui8
/* 800BDBDC 000BAB1C  7C 75 1B 78 */	mr r21, r3
lbl_800BDBE0:
/* 800BDBE0 000BAB20  2C 15 00 00 */	cmpwi r21, 0
/* 800BDBE4 000BAB24  40 82 00 D4 */	bne lbl_800BDCB8
/* 800BDBE8 000BAB28  2C 1B 00 00 */	cmpwi r27, 0
/* 800BDBEC 000BAB2C  41 82 00 C0 */	beq lbl_800BDCAC
/* 800BDBF0 000BAB30  2C 1C 00 00 */	cmpwi r28, 0
/* 800BDBF4 000BAB34  38 00 00 00 */	li r0, 0
/* 800BDBF8 000BAB38  41 82 00 10 */	beq lbl_800BDC08
/* 800BDBFC 000BAB3C  28 17 00 00 */	cmplwi r23, 0
/* 800BDC00 000BAB40  40 82 00 08 */	bne lbl_800BDC08
/* 800BDC04 000BAB44  38 00 00 01 */	li r0, 1
lbl_800BDC08:
/* 800BDC08 000BAB48  2C 1C 00 00 */	cmpwi r28, 0
/* 800BDC0C 000BAB4C  80 61 00 08 */	lwz r3, 8(r1)
/* 800BDC10 000BAB50  38 81 00 10 */	addi r4, r1, 0x10
/* 800BDC14 000BAB54  38 A0 00 05 */	li r5, 5
/* 800BDC18 000BAB58  7C 00 00 34 */	cntlzw r0, r0
/* 800BDC1C 000BAB5C  38 C0 00 03 */	li r6, 3
/* 800BDC20 000BAB60  54 07 D9 7E */	srwi r7, r0, 5
/* 800BDC24 000BAB64  4B FF FC E5 */	bl TRKRequestSend
/* 800BDC28 000BAB68  7C 75 1B 79 */	or. r21, r3, r3
/* 800BDC2C 000BAB6C  40 82 00 10 */	bne lbl_800BDC3C
/* 800BDC30 000BAB70  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BDC34 000BAB74  4B FF E3 2D */	bl TRKGetBuffer
/* 800BDC38 000BAB78  7C 76 1B 78 */	mr r22, r3
lbl_800BDC3C:
/* 800BDC3C 000BAB7C  80 16 00 20 */	lwz r0, 0x20(r22)
/* 800BDC40 000BAB80  2C 1C 00 00 */	cmpwi r28, 0
/* 800BDC44 000BAB84  A2 76 00 24 */	lhz r19, 0x24(r22)
/* 800BDC48 000BAB88  54 14 06 3E */	clrlwi r20, r0, 0x18
/* 800BDC4C 000BAB8C  41 82 00 40 */	beq lbl_800BDC8C
/* 800BDC50 000BAB90  2C 15 00 00 */	cmpwi r21, 0
/* 800BDC54 000BAB94  40 82 00 38 */	bne lbl_800BDC8C
/* 800BDC58 000BAB98  7C 13 F8 40 */	cmplw r19, r31
/* 800BDC5C 000BAB9C  41 81 00 30 */	bgt lbl_800BDC8C
/* 800BDC60 000BABA0  7E C3 B3 78 */	mr r3, r22
/* 800BDC64 000BABA4  38 80 00 40 */	li r4, 0x40
/* 800BDC68 000BABA8  4B FF E2 25 */	bl TRKSetBufferPosition
/* 800BDC6C 000BABAC  7E C3 B3 78 */	mr r3, r22
/* 800BDC70 000BABB0  7E 65 9B 78 */	mr r5, r19
/* 800BDC74 000BABB4  7C 98 F2 14 */	add r4, r24, r30
/* 800BDC78 000BABB8  4B FF DD 05 */	bl TRKReadBuffer_ui8
/* 800BDC7C 000BABBC  7C 75 1B 78 */	mr r21, r3
/* 800BDC80 000BABC0  2C 15 03 02 */	cmpwi r21, 0x302
/* 800BDC84 000BABC4  40 82 00 08 */	bne lbl_800BDC8C
/* 800BDC88 000BABC8  3A A0 00 00 */	li r21, 0
lbl_800BDC8C:
/* 800BDC8C 000BABCC  7C 13 F8 40 */	cmplw r19, r31
/* 800BDC90 000BABD0  41 82 00 0C */	beq lbl_800BDC9C
/* 800BDC94 000BABD4  7E 7F 9B 78 */	mr r31, r19
/* 800BDC98 000BABD8  3B A0 00 01 */	li r29, 1
lbl_800BDC9C:
/* 800BDC9C 000BABDC  92 9A 00 00 */	stw r20, 0(r26)
/* 800BDCA0 000BABE0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BDCA4 000BABE4  4B FF E2 59 */	bl TRKReleaseBuffer
/* 800BDCA8 000BABE8  48 00 00 10 */	b lbl_800BDCB8
lbl_800BDCAC:
/* 800BDCAC 000BABEC  80 61 00 08 */	lwz r3, 8(r1)
/* 800BDCB0 000BABF0  4B FF DB 99 */	bl TRKMessageSend
/* 800BDCB4 000BABF4  7C 75 1B 78 */	mr r21, r3
lbl_800BDCB8:
/* 800BDCB8 000BABF8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800BDCBC 000BABFC  4B FF E2 41 */	bl TRKReleaseBuffer
/* 800BDCC0 000BAC00  7F DE FA 14 */	add r30, r30, r31
lbl_800BDCC4:
/* 800BDCC4 000BAC04  2C 1D 00 00 */	cmpwi r29, 0
/* 800BDCC8 000BAC08  40 82 00 24 */	bne lbl_800BDCEC
/* 800BDCCC 000BAC0C  80 19 00 00 */	lwz r0, 0(r25)
/* 800BDCD0 000BAC10  7C 1E 00 40 */	cmplw r30, r0
/* 800BDCD4 000BAC14  40 80 00 18 */	bge lbl_800BDCEC
/* 800BDCD8 000BAC18  2C 15 00 00 */	cmpwi r21, 0
/* 800BDCDC 000BAC1C  40 82 00 10 */	bne lbl_800BDCEC
/* 800BDCE0 000BAC20  80 1A 00 00 */	lwz r0, 0(r26)
/* 800BDCE4 000BAC24  2C 00 00 00 */	cmpwi r0, 0
/* 800BDCE8 000BAC28  41 82 FE 58 */	beq lbl_800BDB40
lbl_800BDCEC:
/* 800BDCEC 000BAC2C  93 D9 00 00 */	stw r30, 0(r25)
/* 800BDCF0 000BAC30  7E A3 AB 78 */	mr r3, r21
lbl_800BDCF4:
/* 800BDCF4 000BAC34  BA 61 00 5C */	lmw r19, 0x5c(r1)
/* 800BDCF8 000BAC38  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800BDCFC 000BAC3C  7C 08 03 A6 */	mtlr r0
/* 800BDD00 000BAC40  38 21 00 90 */	addi r1, r1, 0x90
/* 800BDD04 000BAC44  4E 80 00 20 */	blr 
