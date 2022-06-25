.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_J2DBloSaver_cpp

.section .bss  # 0x804EFC20 - 0x8051467C
.global lbl_804F0408
lbl_804F0408:
	.skip 0x10

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global TextureNameConnect__11J2DBloSaver
TextureNameConnect__11J2DBloSaver:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global getTexNo__11J2DTevBlockCFUl
getTexNo__11J2DTevBlockCFUl: # weak function
/* 800494E4 00046424  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 800494E8 00046428  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 800494EC 0004642C  4E 80 00 20 */	blr 

.global setTexNo__11J2DTevBlockFUlUs
setTexNo__11J2DTevBlockFUlUs: # weak function
/* 800494F0 00046430  4E 80 00 20 */	blr 

.global getTevSwapModeTable__11J2DTevBlockFUl
getTevSwapModeTable__11J2DTevBlockFUl: # weak function
/* 800494F4 00046434  38 60 00 00 */	li r3, 0
/* 800494F8 00046438  4E 80 00 20 */	blr 

.global getTevOrder__11J2DTevBlockFUl
getTevOrder__11J2DTevBlockFUl: # weak function
/* 800494FC 0004643C  38 60 00 00 */	li r3, 0
/* 80049500 00046440  4E 80 00 20 */	blr 

.global getFontNo__11J2DTevBlockCFv
getFontNo__11J2DTevBlockCFv: # weak function
/* 80049504 00046444  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80049508 00046448  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 8004950C 0004644C  4E 80 00 20 */	blr 

.global getIndTexStageNum__11J2DIndBlockCFv
getIndTexStageNum__11J2DIndBlockCFv: # weak function
/* 80049510 00046450  38 60 00 00 */	li r3, 0
/* 80049514 00046454  4E 80 00 20 */	blr 

.global __dt__Q211J2DBloSaver19CTextureNameConnectFv
__dt__Q211J2DBloSaver19CTextureNameConnectFv:
/* 80049518 00046458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004951C 0004645C  7C 08 02 A6 */	mflr r0
/* 80049520 00046460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80049524 00046464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80049528 00046468  7C 9F 23 78 */	mr r31, r4
/* 8004952C 0004646C  93 C1 00 08 */	stw r30, 8(r1)
/* 80049530 00046470  7C 7E 1B 79 */	or. r30, r3, r3
/* 80049534 00046474  41 82 00 18 */	beq lbl_8004954C
/* 80049538 00046478  48 00 00 31 */	bl clear__Q211J2DBloSaver19CTextureNameConnectFv
/* 8004953C 0004647C  7F E0 07 35 */	extsh. r0, r31
/* 80049540 00046480  40 81 00 0C */	ble lbl_8004954C
/* 80049544 00046484  7F C3 F3 78 */	mr r3, r30
/* 80049548 00046488  4B FD AB 6D */	bl __dl__FPv
lbl_8004954C:
/* 8004954C 0004648C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80049550 00046490  7F C3 F3 78 */	mr r3, r30
/* 80049554 00046494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80049558 00046498  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004955C 0004649C  7C 08 03 A6 */	mtlr r0
/* 80049560 000464A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80049564 000464A4  4E 80 00 20 */	blr 

.global clear__Q211J2DBloSaver19CTextureNameConnectFv
clear__Q211J2DBloSaver19CTextureNameConnectFv:
/* 80049568 000464A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004956C 000464AC  7C 08 02 A6 */	mflr r0
/* 80049570 000464B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80049574 000464B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80049578 000464B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8004957C 000464BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80049580 000464C0  7C 7D 1B 78 */	mr r29, r3
/* 80049584 000464C4  83 E3 00 00 */	lwz r31, 0(r3)
/* 80049588 000464C8  48 00 00 24 */	b lbl_800495AC
lbl_8004958C:
/* 8004958C 000464CC  28 1F 00 00 */	cmplwi r31, 0
/* 80049590 000464D0  83 DF 00 08 */	lwz r30, 8(r31)
/* 80049594 000464D4  41 82 00 14 */	beq lbl_800495A8
/* 80049598 000464D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8004959C 000464DC  4B FD AB 3D */	bl __dla__FPv
/* 800495A0 000464E0  7F E3 FB 78 */	mr r3, r31
/* 800495A4 000464E4  4B FD AB 11 */	bl __dl__FPv
lbl_800495A8:
/* 800495A8 000464E8  7F DF F3 78 */	mr r31, r30
lbl_800495AC:
/* 800495AC 000464EC  28 1F 00 00 */	cmplwi r31, 0
/* 800495B0 000464F0  40 82 FF DC */	bne lbl_8004958C
/* 800495B4 000464F4  38 00 00 00 */	li r0, 0
/* 800495B8 000464F8  90 1D 00 00 */	stw r0, 0(r29)
/* 800495BC 000464FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800495C0 00046500  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800495C4 00046504  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800495C8 00046508  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800495CC 0004650C  7C 08 03 A6 */	mtlr r0
/* 800495D0 00046510  38 21 00 20 */	addi r1, r1, 0x20
/* 800495D4 00046514  4E 80 00 20 */	blr 

.global __ct__11J2DTevStageFv
__ct__11J2DTevStageFv: # weak function
/* 800495D8 00046518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800495DC 0004651C  7C 08 02 A6 */	mflr r0
/* 800495E0 00046520  3C 80 80 48 */	lis r4, j2dDefaultTevStageInfo@ha
/* 800495E4 00046524  90 01 00 14 */	stw r0, 0x14(r1)
/* 800495E8 00046528  38 84 86 A8 */	addi r4, r4, j2dDefaultTevStageInfo@l
/* 800495EC 0004652C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800495F0 00046530  7C 7F 1B 78 */	mr r31, r3
/* 800495F4 00046534  48 00 00 4D */	bl setTevStageInfo__11J2DTevStageFRC15J2DTevStageInfo
/* 800495F8 00046538  38 62 85 C8 */	addi r3, r2, j2dDefaultTevSwapMode@sda21
/* 800495FC 0004653C  88 9F 00 07 */	lbz r4, 7(r31)
/* 80049600 00046540  88 03 00 01 */	lbz r0, 1(r3)
/* 80049604 00046544  7F E3 FB 78 */	mr r3, r31
/* 80049608 00046548  54 84 07 B6 */	rlwinm r4, r4, 0, 0x1e, 0x1b
/* 8004960C 0004654C  54 00 10 3A */	slwi r0, r0, 2
/* 80049610 00046550  7C 80 03 78 */	or r0, r4, r0
/* 80049614 00046554  98 1F 00 07 */	stb r0, 7(r31)
/* 80049618 00046558  88 9F 00 07 */	lbz r4, 7(r31)
/* 8004961C 0004655C  88 02 85 C8 */	lbz r0, j2dDefaultTevSwapMode@sda21(r2)
/* 80049620 00046560  54 84 00 3A */	rlwinm r4, r4, 0, 0, 0x1d
/* 80049624 00046564  7C 80 03 78 */	or r0, r4, r0
/* 80049628 00046568  98 1F 00 07 */	stb r0, 7(r31)
/* 8004962C 0004656C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80049630 00046570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80049634 00046574  7C 08 03 A6 */	mtlr r0
/* 80049638 00046578  38 21 00 10 */	addi r1, r1, 0x10
/* 8004963C 0004657C  4E 80 00 20 */	blr 

.global setTevStageInfo__11J2DTevStageFRC15J2DTevStageInfo
setTevStageInfo__11J2DTevStageFRC15J2DTevStageInfo: # weak function
/* 80049640 00046580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80049644 00046584  88 A4 00 01 */	lbz r5, 1(r4)
/* 80049648 00046588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004964C 0004658C  88 04 00 02 */	lbz r0, 2(r4)
/* 80049650 00046590  54 A5 20 36 */	slwi r5, r5, 4
/* 80049654 00046594  93 C1 00 08 */	stw r30, 8(r1)
/* 80049658 00046598  7C A5 03 78 */	or r5, r5, r0
/* 8004965C 0004659C  88 C4 00 03 */	lbz r6, 3(r4)
/* 80049660 000465A0  88 E4 00 04 */	lbz r7, 4(r4)
/* 80049664 000465A4  54 C0 25 36 */	rlwinm r0, r6, 4, 0x14, 0x1b
/* 80049668 000465A8  98 A3 00 02 */	stb r5, 2(r3)
/* 8004966C 000465AC  7C 00 3B 78 */	or r0, r0, r7
/* 80049670 000465B0  88 C4 00 05 */	lbz r6, 5(r4)
/* 80049674 000465B4  98 03 00 03 */	stb r0, 3(r3)
/* 80049678 000465B8  54 C0 15 BA */	rlwinm r0, r6, 2, 0x16, 0x1d
/* 8004967C 000465BC  28 06 00 01 */	cmplwi r6, 1
/* 80049680 000465C0  88 A3 00 01 */	lbz r5, 1(r3)
/* 80049684 000465C4  89 44 00 09 */	lbz r10, 9(r4)
/* 80049688 000465C8  54 A5 07 B8 */	rlwinm r5, r5, 0, 0x1e, 0x1c
/* 8004968C 000465CC  89 24 00 08 */	lbz r9, 8(r4)
/* 80049690 000465D0  7C A0 03 78 */	or r0, r5, r0
/* 80049694 000465D4  89 04 00 07 */	lbz r8, 7(r4)
/* 80049698 000465D8  98 03 00 01 */	stb r0, 1(r3)
/* 8004969C 000465DC  88 E4 00 06 */	lbz r7, 6(r4)
/* 800496A0 000465E0  41 81 00 2C */	bgt lbl_800496CC
/* 800496A4 000465E4  88 A3 00 01 */	lbz r5, 1(r3)
/* 800496A8 000465E8  55 00 25 36 */	rlwinm r0, r8, 4, 0x14, 0x1b
/* 800496AC 000465EC  54 A5 07 32 */	rlwinm r5, r5, 0, 0x1c, 0x19
/* 800496B0 000465F0  7C A0 03 78 */	or r0, r5, r0
/* 800496B4 000465F4  98 03 00 01 */	stb r0, 1(r3)
/* 800496B8 000465F8  88 03 00 01 */	lbz r0, 1(r3)
/* 800496BC 000465FC  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 800496C0 00046600  7C 00 3B 78 */	or r0, r0, r7
/* 800496C4 00046604  98 03 00 01 */	stb r0, 1(r3)
/* 800496C8 00046608  48 00 00 20 */	b lbl_800496E8
lbl_800496CC:
/* 800496CC 0004660C  88 03 00 01 */	lbz r0, 1(r3)
/* 800496D0 00046610  50 C0 1E B6 */	rlwimi r0, r6, 3, 0x1a, 0x1b
/* 800496D4 00046614  98 03 00 01 */	stb r0, 1(r3)
/* 800496D8 00046618  88 03 00 01 */	lbz r0, 1(r3)
/* 800496DC 0004661C  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 800496E0 00046620  60 00 00 03 */	ori r0, r0, 3
/* 800496E4 00046624  98 03 00 01 */	stb r0, 1(r3)
lbl_800496E8:
/* 800496E8 00046628  88 03 00 01 */	lbz r0, 1(r3)
/* 800496EC 0004662C  55 25 1D 78 */	rlwinm r5, r9, 3, 0x15, 0x1c
/* 800496F0 00046630  89 04 00 0C */	lbz r8, 0xc(r4)
/* 800496F4 00046634  55 46 34 B2 */	rlwinm r6, r10, 6, 0x12, 0x19
/* 800496F8 00046638  54 07 07 76 */	rlwinm r7, r0, 0, 0x1d, 0x1b
/* 800496FC 0004663C  88 04 00 0E */	lbz r0, 0xe(r4)
/* 80049700 00046640  7C E7 2B 78 */	or r7, r7, r5
/* 80049704 00046644  88 A4 00 0A */	lbz r5, 0xa(r4)
/* 80049708 00046648  98 E3 00 01 */	stb r7, 1(r3)
/* 8004970C 0004664C  55 09 3C 70 */	rlwinm r9, r8, 7, 0x11, 0x18
/* 80049710 00046650  54 AC 28 34 */	slwi r12, r5, 5
/* 80049714 00046654  88 E4 00 0B */	lbz r7, 0xb(r4)
/* 80049718 00046658  88 A3 00 01 */	lbz r5, 1(r3)
/* 8004971C 0004665C  55 0A FE 7E */	rlwinm r10, r8, 0x1f, 0x19, 0x1f
/* 80049720 00046660  8B E4 00 0D */	lbz r31, 0xd(r4)
/* 80049724 00046664  54 EB 15 BA */	rlwinm r11, r7, 2, 0x16, 0x1d
/* 80049728 00046668  50 A6 06 BE */	rlwimi r6, r5, 0, 0x1a, 0x1f
/* 8004972C 0004666C  8B C4 00 10 */	lbz r30, 0x10(r4)
/* 80049730 00046670  98 C3 00 01 */	stb r6, 1(r3)
/* 80049734 00046674  57 E8 25 36 */	rlwinm r8, r31, 4, 0x14, 0x1b
/* 80049738 00046678  88 C4 00 12 */	lbz r6, 0x12(r4)
/* 8004973C 0004667C  54 07 15 BA */	rlwinm r7, r0, 2, 0x16, 0x1d
/* 80049740 00046680  88 A3 00 06 */	lbz r5, 6(r3)
/* 80049744 00046684  28 00 00 01 */	cmplwi r0, 1
/* 80049748 00046688  8B E4 00 0F */	lbz r31, 0xf(r4)
/* 8004974C 0004668C  50 AC 06 FE */	rlwimi r12, r5, 0, 0x1b, 0x1f
/* 80049750 00046690  88 A4 00 11 */	lbz r5, 0x11(r4)
/* 80049754 00046694  99 83 00 06 */	stb r12, 6(r3)
/* 80049758 00046698  89 83 00 06 */	lbz r12, 6(r3)
/* 8004975C 0004669C  55 84 07 B4 */	rlwinm r4, r12, 0, 0x1e, 0x1a
/* 80049760 000466A0  7C 84 5B 78 */	or r4, r4, r11
/* 80049764 000466A4  98 83 00 06 */	stb r4, 6(r3)
/* 80049768 000466A8  88 83 00 06 */	lbz r4, 6(r3)
/* 8004976C 000466AC  54 84 00 3A */	rlwinm r4, r4, 0, 0, 0x1d
/* 80049770 000466B0  7C 84 53 78 */	or r4, r4, r10
/* 80049774 000466B4  98 83 00 06 */	stb r4, 6(r3)
/* 80049778 000466B8  88 83 00 07 */	lbz r4, 7(r3)
/* 8004977C 000466BC  50 89 06 7E */	rlwimi r9, r4, 0, 0x19, 0x1f
/* 80049780 000466C0  99 23 00 07 */	stb r9, 7(r3)
/* 80049784 000466C4  88 83 00 07 */	lbz r4, 7(r3)
/* 80049788 000466C8  54 84 07 30 */	rlwinm r4, r4, 0, 0x1c, 0x18
/* 8004978C 000466CC  7C 84 43 78 */	or r4, r4, r8
/* 80049790 000466D0  98 83 00 07 */	stb r4, 7(r3)
/* 80049794 000466D4  88 83 00 05 */	lbz r4, 5(r3)
/* 80049798 000466D8  54 84 07 B8 */	rlwinm r4, r4, 0, 0x1e, 0x1c
/* 8004979C 000466DC  7C 84 3B 78 */	or r4, r4, r7
/* 800497A0 000466E0  98 83 00 05 */	stb r4, 5(r3)
/* 800497A4 000466E4  41 81 00 2C */	bgt lbl_800497D0
/* 800497A8 000466E8  88 83 00 05 */	lbz r4, 5(r3)
/* 800497AC 000466EC  57 C0 25 36 */	rlwinm r0, r30, 4, 0x14, 0x1b
/* 800497B0 000466F0  54 84 00 3A */	rlwinm r4, r4, 0, 0, 0x1d
/* 800497B4 000466F4  7C 84 FB 78 */	or r4, r4, r31
/* 800497B8 000466F8  98 83 00 05 */	stb r4, 5(r3)
/* 800497BC 000466FC  88 83 00 05 */	lbz r4, 5(r3)
/* 800497C0 00046700  54 84 07 32 */	rlwinm r4, r4, 0, 0x1c, 0x19
/* 800497C4 00046704  7C 80 03 78 */	or r0, r4, r0
/* 800497C8 00046708  98 03 00 05 */	stb r0, 5(r3)
/* 800497CC 0004670C  48 00 00 20 */	b lbl_800497EC
lbl_800497D0:
/* 800497D0 00046710  88 83 00 05 */	lbz r4, 5(r3)
/* 800497D4 00046714  50 04 1E B6 */	rlwimi r4, r0, 3, 0x1a, 0x1b
/* 800497D8 00046718  98 83 00 05 */	stb r4, 5(r3)
/* 800497DC 0004671C  88 03 00 05 */	lbz r0, 5(r3)
/* 800497E0 00046720  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 800497E4 00046724  60 00 00 03 */	ori r0, r0, 3
/* 800497E8 00046728  98 03 00 05 */	stb r0, 5(r3)
lbl_800497EC:
/* 800497EC 0004672C  88 E3 00 05 */	lbz r7, 5(r3)
/* 800497F0 00046730  54 A4 1D 78 */	rlwinm r4, r5, 3, 0x15, 0x1c
/* 800497F4 00046734  54 C0 34 B2 */	rlwinm r0, r6, 6, 0x12, 0x19
/* 800497F8 00046738  54 E5 07 76 */	rlwinm r5, r7, 0, 0x1d, 0x1b
/* 800497FC 0004673C  7C A4 23 78 */	or r4, r5, r4
/* 80049800 00046740  98 83 00 05 */	stb r4, 5(r3)
/* 80049804 00046744  88 83 00 05 */	lbz r4, 5(r3)
/* 80049808 00046748  50 80 06 BE */	rlwimi r0, r4, 0, 0x1a, 0x1f
/* 8004980C 0004674C  98 03 00 05 */	stb r0, 5(r3)
/* 80049810 00046750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80049814 00046754  83 C1 00 08 */	lwz r30, 8(r1)
/* 80049818 00046758  38 21 00 10 */	addi r1, r1, 0x10
/* 8004981C 0004675C  4E 80 00 20 */	blr 

__sinit_J2DBloSaver_cpp: # static initializer
/* 80049820 00046760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80049824 00046764  7C 08 02 A6 */	mflr r0
/* 80049828 00046768  3C 60 80 05 */	lis r3, __dt__Q211J2DBloSaver19CTextureNameConnectFv@ha
/* 8004982C 0004676C  3C A0 80 4F */	lis r5, lbl_804F0408@ha
/* 80049830 00046770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80049834 00046774  38 00 00 00 */	li r0, 0
/* 80049838 00046778  38 83 95 18 */	addi r4, r3, __dt__Q211J2DBloSaver19CTextureNameConnectFv@l
/* 8004983C 0004677C  38 6D 89 58 */	addi r3, r13, TextureNameConnect__11J2DBloSaver@sda21
/* 80049840 00046780  90 0D 89 58 */	stw r0, TextureNameConnect__11J2DBloSaver@sda21(r13)
/* 80049844 00046784  38 A5 04 08 */	addi r5, r5, lbl_804F0408@l
/* 80049848 00046788  48 07 7E B9 */	bl __register_global_object
/* 8004984C 0004678C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80049850 00046790  7C 08 03 A6 */	mtlr r0
/* 80049854 00046794  38 21 00 10 */	addi r1, r1, 0x10
/* 80049858 00046798  4E 80 00 20 */	blr 
