.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q24Game17EnemyStateMachine
__vt__Q24Game17EnemyStateMachine:
	.4byte 0
	.4byte 0
	.4byte init__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
	.4byte start__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseiPQ24Game8StateArg
	.4byte exec__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
	.4byte transit__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseiPQ24Game8StateArg
	.4byte doDirectDraw__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseR8Graphics
	.4byte getCurrState__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
	.4byte setCurrState__Q24Game17EnemyStateMachineFPQ24Game9EnemyBasePQ24Game13EnemyFSMState
.global __vt__Q24Game13EnemyFSMState
__vt__Q24Game13EnemyFSMState:
	.4byte 0
	.4byte 0
	.4byte init__Q24Game13EnemyFSMStateFPQ24Game9EnemyBasePQ24Game8StateArg
	.4byte exec__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
	.4byte cleanup__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
	.4byte resume__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
	.4byte restart__Q24Game13EnemyFSMStateFPQ24Game9EnemyBase
	.4byte transit__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseiPQ24Game8StateArg
	.4byte doDirectDraw__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseR8Graphics

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_80518148
lbl_80518148:
	.4byte 0x6E6F206E
	.4byte 0x616D6500

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global transit__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseiPQ24Game8StateArg
transit__Q24Game13EnemyFSMStateFPQ24Game9EnemyBaseiPQ24Game8StateArg:
/* 8013070C 0012D64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130710 0012D650  7C 08 02 A6 */	mflr r0
/* 80130714 0012D654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130718 0012D658  80 63 00 08 */	lwz r3, 8(r3)
/* 8013071C 0012D65C  81 83 00 00 */	lwz r12, 0(r3)
/* 80130720 0012D660  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80130724 0012D664  7D 89 03 A6 */	mtctr r12
/* 80130728 0012D668  4E 80 04 21 */	bctrl 
/* 8013072C 0012D66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130730 0012D670  7C 08 03 A6 */	mtlr r0
/* 80130734 0012D674  38 21 00 10 */	addi r1, r1, 0x10
/* 80130738 0012D678  4E 80 00 20 */	blr 

.global doDirectDraw__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseR8Graphics
doDirectDraw__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseR8Graphics:
/* 8013073C 0012D67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130740 0012D680  7C 08 02 A6 */	mflr r0
/* 80130744 0012D684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130748 0012D688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013074C 0012D68C  7C BF 2B 78 */	mr r31, r5
/* 80130750 0012D690  93 C1 00 08 */	stw r30, 8(r1)
/* 80130754 0012D694  7C 9E 23 78 */	mr r30, r4
/* 80130758 0012D698  81 83 00 00 */	lwz r12, 0(r3)
/* 8013075C 0012D69C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80130760 0012D6A0  7D 89 03 A6 */	mtctr r12
/* 80130764 0012D6A4  4E 80 04 21 */	bctrl 
/* 80130768 0012D6A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8013076C 0012D6AC  7F C4 F3 78 */	mr r4, r30
/* 80130770 0012D6B0  7F E5 FB 78 */	mr r5, r31
/* 80130774 0012D6B4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80130778 0012D6B8  7D 89 03 A6 */	mtctr r12
/* 8013077C 0012D6BC  4E 80 04 21 */	bctrl 
/* 80130780 0012D6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130784 0012D6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130788 0012D6C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013078C 0012D6CC  7C 08 03 A6 */	mtlr r0
/* 80130790 0012D6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80130794 0012D6D4  4E 80 00 20 */	blr 

.global start__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseiPQ24Game8StateArg
start__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseiPQ24Game8StateArg:
/* 80130798 0012D6D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013079C 0012D6DC  7C 08 02 A6 */	mflr r0
/* 801307A0 0012D6E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801307A4 0012D6E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801307A8 0012D6E8  7C DF 33 78 */	mr r31, r6
/* 801307AC 0012D6EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801307B0 0012D6F0  7C BE 2B 78 */	mr r30, r5
/* 801307B4 0012D6F4  38 A0 00 00 */	li r5, 0
/* 801307B8 0012D6F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801307BC 0012D6FC  7C 9D 23 78 */	mr r29, r4
/* 801307C0 0012D700  93 81 00 10 */	stw r28, 0x10(r1)
/* 801307C4 0012D704  7C 7C 1B 78 */	mr r28, r3
/* 801307C8 0012D708  81 83 00 00 */	lwz r12, 0(r3)
/* 801307CC 0012D70C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801307D0 0012D710  7D 89 03 A6 */	mtctr r12
/* 801307D4 0012D714  4E 80 04 21 */	bctrl 
/* 801307D8 0012D718  7F 83 E3 78 */	mr r3, r28
/* 801307DC 0012D71C  7F A4 EB 78 */	mr r4, r29
/* 801307E0 0012D720  81 9C 00 00 */	lwz r12, 0(r28)
/* 801307E4 0012D724  7F C5 F3 78 */	mr r5, r30
/* 801307E8 0012D728  7F E6 FB 78 */	mr r6, r31
/* 801307EC 0012D72C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801307F0 0012D730  7D 89 03 A6 */	mtctr r12
/* 801307F4 0012D734  4E 80 04 21 */	bctrl 
/* 801307F8 0012D738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801307FC 0012D73C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80130800 0012D740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80130804 0012D744  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80130808 0012D748  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8013080C 0012D74C  7C 08 03 A6 */	mtlr r0
/* 80130810 0012D750  38 21 00 20 */	addi r1, r1, 0x20
/* 80130814 0012D754  4E 80 00 20 */	blr 

.global exec__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
exec__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase:
/* 80130818 0012D758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013081C 0012D75C  7C 08 02 A6 */	mflr r0
/* 80130820 0012D760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130824 0012D764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130828 0012D768  7C 9F 23 78 */	mr r31, r4
/* 8013082C 0012D76C  81 83 00 00 */	lwz r12, 0(r3)
/* 80130830 0012D770  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80130834 0012D774  7D 89 03 A6 */	mtctr r12
/* 80130838 0012D778  4E 80 04 21 */	bctrl 
/* 8013083C 0012D77C  81 83 00 00 */	lwz r12, 0(r3)
/* 80130840 0012D780  7F E4 FB 78 */	mr r4, r31
/* 80130844 0012D784  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80130848 0012D788  7D 89 03 A6 */	mtctr r12
/* 8013084C 0012D78C  4E 80 04 21 */	bctrl 
/* 80130850 0012D790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130854 0012D794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130858 0012D798  7C 08 03 A6 */	mtlr r0
/* 8013085C 0012D79C  38 21 00 10 */	addi r1, r1, 0x10
/* 80130860 0012D7A0  4E 80 00 20 */	blr 

.global create__Q24Game17EnemyStateMachineFi
create__Q24Game17EnemyStateMachineFi:
/* 80130864 0012D7A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130868 0012D7A8  7C 08 02 A6 */	mflr r0
/* 8013086C 0012D7AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130870 0012D7B0  38 00 00 00 */	li r0, 0
/* 80130874 0012D7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130878 0012D7B8  7C 7F 1B 78 */	mr r31, r3
/* 8013087C 0012D7BC  90 83 00 0C */	stw r4, 0xc(r3)
/* 80130880 0012D7C0  90 03 00 08 */	stw r0, 8(r3)
/* 80130884 0012D7C4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80130888 0012D7C8  54 03 10 3A */	slwi r3, r0, 2
/* 8013088C 0012D7CC  4B EF 37 21 */	bl __nwa__FUl
/* 80130890 0012D7D0  90 7F 00 04 */	stw r3, 4(r31)
/* 80130894 0012D7D4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80130898 0012D7D8  54 03 10 3A */	slwi r3, r0, 2
/* 8013089C 0012D7DC  4B EF 37 11 */	bl __nwa__FUl
/* 801308A0 0012D7E0  90 7F 00 10 */	stw r3, 0x10(r31)
/* 801308A4 0012D7E4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801308A8 0012D7E8  54 03 10 3A */	slwi r3, r0, 2
/* 801308AC 0012D7EC  4B EF 37 01 */	bl __nwa__FUl
/* 801308B0 0012D7F0  38 C0 00 00 */	li r6, 0
/* 801308B4 0012D7F4  90 7F 00 14 */	stw r3, 0x14(r31)
/* 801308B8 0012D7F8  7C C5 33 78 */	mr r5, r6
/* 801308BC 0012D7FC  38 E0 00 00 */	li r7, 0
/* 801308C0 0012D800  38 80 FF FF */	li r4, -1
/* 801308C4 0012D804  48 00 00 24 */	b lbl_801308E8
lbl_801308C8:
/* 801308C8 0012D808  80 7F 00 04 */	lwz r3, 4(r31)
/* 801308CC 0012D80C  38 E7 00 01 */	addi r7, r7, 1
/* 801308D0 0012D810  7C A3 31 2E */	stwx r5, r3, r6
/* 801308D4 0012D814  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801308D8 0012D818  7C 83 31 2E */	stwx r4, r3, r6
/* 801308DC 0012D81C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801308E0 0012D820  7C 83 31 2E */	stwx r4, r3, r6
/* 801308E4 0012D824  38 C6 00 04 */	addi r6, r6, 4
lbl_801308E8:
/* 801308E8 0012D828  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801308EC 0012D82C  7C 07 00 00 */	cmpw r7, r0
/* 801308F0 0012D830  41 80 FF D8 */	blt lbl_801308C8
/* 801308F4 0012D834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801308F8 0012D838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801308FC 0012D83C  7C 08 03 A6 */	mtlr r0
/* 80130900 0012D840  38 21 00 10 */	addi r1, r1, 0x10
/* 80130904 0012D844  4E 80 00 20 */	blr 

.global registerState__Q24Game17EnemyStateMachineFPQ24Game13EnemyFSMState
registerState__Q24Game17EnemyStateMachineFPQ24Game13EnemyFSMState:
/* 80130908 0012D848  80 C3 00 08 */	lwz r6, 8(r3)
/* 8013090C 0012D84C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80130910 0012D850  7C 06 00 00 */	cmpw r6, r0
/* 80130914 0012D854  4C 80 00 20 */	bgelr 
/* 80130918 0012D858  80 A3 00 04 */	lwz r5, 4(r3)
/* 8013091C 0012D85C  54 C0 10 3A */	slwi r0, r6, 2
/* 80130920 0012D860  7C 85 01 2E */	stwx r4, r5, r0
/* 80130924 0012D864  80 A4 00 04 */	lwz r5, 4(r4)
/* 80130928 0012D868  2C 05 00 00 */	cmpwi r5, 0
/* 8013092C 0012D86C  41 80 00 10 */	blt lbl_8013093C
/* 80130930 0012D870  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80130934 0012D874  7C 05 00 00 */	cmpw r5, r0
/* 80130938 0012D878  41 80 00 0C */	blt lbl_80130944
lbl_8013093C:
/* 8013093C 0012D87C  38 00 00 00 */	li r0, 0
/* 80130940 0012D880  48 00 00 08 */	b lbl_80130948
lbl_80130944:
/* 80130944 0012D884  38 00 00 01 */	li r0, 1
lbl_80130948:
/* 80130948 0012D888  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8013094C 0012D88C  4D 82 00 20 */	beqlr 
/* 80130950 0012D890  90 64 00 08 */	stw r3, 8(r4)
/* 80130954 0012D894  80 03 00 08 */	lwz r0, 8(r3)
/* 80130958 0012D898  80 C4 00 04 */	lwz r6, 4(r4)
/* 8013095C 0012D89C  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 80130960 0012D8A0  54 00 10 3A */	slwi r0, r0, 2
/* 80130964 0012D8A4  7C C5 01 2E */	stwx r6, r5, r0
/* 80130968 0012D8A8  80 04 00 04 */	lwz r0, 4(r4)
/* 8013096C 0012D8AC  80 A3 00 08 */	lwz r5, 8(r3)
/* 80130970 0012D8B0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80130974 0012D8B4  54 00 10 3A */	slwi r0, r0, 2
/* 80130978 0012D8B8  7C A4 01 2E */	stwx r5, r4, r0
/* 8013097C 0012D8BC  80 83 00 08 */	lwz r4, 8(r3)
/* 80130980 0012D8C0  38 04 00 01 */	addi r0, r4, 1
/* 80130984 0012D8C4  90 03 00 08 */	stw r0, 8(r3)
/* 80130988 0012D8C8  4E 80 00 20 */	blr 

.global getCurrID__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
getCurrID__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase:
/* 8013098C 0012D8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130990 0012D8D0  7C 08 02 A6 */	mflr r0
/* 80130994 0012D8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130998 0012D8D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013099C 0012D8DC  7C 9F 23 78 */	mr r31, r4
/* 801309A0 0012D8E0  93 C1 00 08 */	stw r30, 8(r1)
/* 801309A4 0012D8E4  7C 7E 1B 78 */	mr r30, r3
/* 801309A8 0012D8E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801309AC 0012D8EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801309B0 0012D8F0  7D 89 03 A6 */	mtctr r12
/* 801309B4 0012D8F4  4E 80 04 21 */	bctrl 
/* 801309B8 0012D8F8  28 03 00 00 */	cmplwi r3, 0
/* 801309BC 0012D8FC  41 82 00 24 */	beq lbl_801309E0
/* 801309C0 0012D900  7F C3 F3 78 */	mr r3, r30
/* 801309C4 0012D904  7F E4 FB 78 */	mr r4, r31
/* 801309C8 0012D908  81 9E 00 00 */	lwz r12, 0(r30)
/* 801309CC 0012D90C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801309D0 0012D910  7D 89 03 A6 */	mtctr r12
/* 801309D4 0012D914  4E 80 04 21 */	bctrl 
/* 801309D8 0012D918  80 63 00 04 */	lwz r3, 4(r3)
/* 801309DC 0012D91C  48 00 00 08 */	b lbl_801309E4
lbl_801309E0:
/* 801309E0 0012D920  38 60 FF FF */	li r3, -1
lbl_801309E4:
/* 801309E4 0012D924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801309E8 0012D928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801309EC 0012D92C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801309F0 0012D930  7C 08 03 A6 */	mtlr r0
/* 801309F4 0012D934  38 21 00 10 */	addi r1, r1, 0x10
/* 801309F8 0012D938  4E 80 00 20 */	blr 

.global getCurrName__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
getCurrName__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase:
/* 801309FC 0012D93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130A00 0012D940  7C 08 02 A6 */	mflr r0
/* 80130A04 0012D944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130A08 0012D948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130A0C 0012D94C  7C 9F 23 78 */	mr r31, r4
/* 80130A10 0012D950  93 C1 00 08 */	stw r30, 8(r1)
/* 80130A14 0012D954  7C 7E 1B 78 */	mr r30, r3
/* 80130A18 0012D958  81 83 00 00 */	lwz r12, 0(r3)
/* 80130A1C 0012D95C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80130A20 0012D960  7D 89 03 A6 */	mtctr r12
/* 80130A24 0012D964  4E 80 04 21 */	bctrl 
/* 80130A28 0012D968  28 03 00 00 */	cmplwi r3, 0
/* 80130A2C 0012D96C  41 82 00 24 */	beq lbl_80130A50
/* 80130A30 0012D970  7F C3 F3 78 */	mr r3, r30
/* 80130A34 0012D974  7F E4 FB 78 */	mr r4, r31
/* 80130A38 0012D978  81 9E 00 00 */	lwz r12, 0(r30)
/* 80130A3C 0012D97C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80130A40 0012D980  7D 89 03 A6 */	mtctr r12
/* 80130A44 0012D984  4E 80 04 21 */	bctrl 
/* 80130A48 0012D988  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80130A4C 0012D98C  48 00 00 08 */	b lbl_80130A54
lbl_80130A50:
/* 80130A50 0012D990  38 62 9D E8 */	addi r3, r2, lbl_80518148@sda21
lbl_80130A54:
/* 80130A54 0012D994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80130A58 0012D998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80130A5C 0012D99C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80130A60 0012D9A0  7C 08 03 A6 */	mtlr r0
/* 80130A64 0012D9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80130A68 0012D9A8  4E 80 00 20 */	blr 

.global transit__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseiPQ24Game8StateArg
transit__Q24Game17EnemyStateMachineFPQ24Game9EnemyBaseiPQ24Game8StateArg:
/* 80130A6C 0012D9AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80130A70 0012D9B0  7C 08 02 A6 */	mflr r0
/* 80130A74 0012D9B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80130A78 0012D9B8  54 A0 10 3A */	slwi r0, r5, 2
/* 80130A7C 0012D9BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80130A80 0012D9C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80130A84 0012D9C4  7C DE 33 78 */	mr r30, r6
/* 80130A88 0012D9C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80130A8C 0012D9CC  7C 9D 23 78 */	mr r29, r4
/* 80130A90 0012D9D0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80130A94 0012D9D4  7C 7C 1B 78 */	mr r28, r3
/* 80130A98 0012D9D8  81 83 00 00 */	lwz r12, 0(r3)
/* 80130A9C 0012D9DC  80 E3 00 14 */	lwz r7, 0x14(r3)
/* 80130AA0 0012D9E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80130AA4 0012D9E4  7F E7 00 2E */	lwzx r31, r7, r0
/* 80130AA8 0012D9E8  7D 89 03 A6 */	mtctr r12
/* 80130AAC 0012D9EC  4E 80 04 21 */	bctrl 
/* 80130AB0 0012D9F0  28 03 00 00 */	cmplwi r3, 0
/* 80130AB4 0012D9F4  41 82 00 50 */	beq lbl_80130B04
/* 80130AB8 0012D9F8  7F 83 E3 78 */	mr r3, r28
/* 80130ABC 0012D9FC  7F A4 EB 78 */	mr r4, r29
/* 80130AC0 0012DA00  81 9C 00 00 */	lwz r12, 0(r28)
/* 80130AC4 0012DA04  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80130AC8 0012DA08  7D 89 03 A6 */	mtctr r12
/* 80130ACC 0012DA0C  4E 80 04 21 */	bctrl 
/* 80130AD0 0012DA10  81 83 00 00 */	lwz r12, 0(r3)
/* 80130AD4 0012DA14  7F A4 EB 78 */	mr r4, r29
/* 80130AD8 0012DA18  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80130ADC 0012DA1C  7D 89 03 A6 */	mtctr r12
/* 80130AE0 0012DA20  4E 80 04 21 */	bctrl 
/* 80130AE4 0012DA24  7F 83 E3 78 */	mr r3, r28
/* 80130AE8 0012DA28  7F A4 EB 78 */	mr r4, r29
/* 80130AEC 0012DA2C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80130AF0 0012DA30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80130AF4 0012DA34  7D 89 03 A6 */	mtctr r12
/* 80130AF8 0012DA38  4E 80 04 21 */	bctrl 
/* 80130AFC 0012DA3C  80 03 00 04 */	lwz r0, 4(r3)
/* 80130B00 0012DA40  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_80130B04:
/* 80130B04 0012DA44  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80130B08 0012DA48  7C 1F 00 00 */	cmpw r31, r0
/* 80130B0C 0012DA4C  41 80 00 08 */	blt lbl_80130B14
lbl_80130B10:
/* 80130B10 0012DA50  48 00 00 00 */	b lbl_80130B10
lbl_80130B14:
/* 80130B14 0012DA54  7F 83 E3 78 */	mr r3, r28
/* 80130B18 0012DA58  80 BC 00 04 */	lwz r5, 4(r28)
/* 80130B1C 0012DA5C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80130B20 0012DA60  57 E0 10 3A */	slwi r0, r31, 2
/* 80130B24 0012DA64  7F A4 EB 78 */	mr r4, r29
/* 80130B28 0012DA68  7C A5 00 2E */	lwzx r5, r5, r0
/* 80130B2C 0012DA6C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80130B30 0012DA70  7D 89 03 A6 */	mtctr r12
/* 80130B34 0012DA74  4E 80 04 21 */	bctrl 
/* 80130B38 0012DA78  7F 83 E3 78 */	mr r3, r28
/* 80130B3C 0012DA7C  7F A4 EB 78 */	mr r4, r29
/* 80130B40 0012DA80  81 9C 00 00 */	lwz r12, 0(r28)
/* 80130B44 0012DA84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80130B48 0012DA88  7D 89 03 A6 */	mtctr r12
/* 80130B4C 0012DA8C  4E 80 04 21 */	bctrl 
/* 80130B50 0012DA90  81 83 00 00 */	lwz r12, 0(r3)
/* 80130B54 0012DA94  7F A4 EB 78 */	mr r4, r29
/* 80130B58 0012DA98  7F C5 F3 78 */	mr r5, r30
/* 80130B5C 0012DA9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80130B60 0012DAA0  7D 89 03 A6 */	mtctr r12
/* 80130B64 0012DAA4  4E 80 04 21 */	bctrl 
/* 80130B68 0012DAA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80130B6C 0012DAAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80130B70 0012DAB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80130B74 0012DAB4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80130B78 0012DAB8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80130B7C 0012DABC  7C 08 03 A6 */	mtlr r0
/* 80130B80 0012DAC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80130B84 0012DAC4  4E 80 00 20 */	blr 

.global setCurrState__Q24Game17EnemyStateMachineFPQ24Game9EnemyBasePQ24Game13EnemyFSMState
setCurrState__Q24Game17EnemyStateMachineFPQ24Game9EnemyBasePQ24Game13EnemyFSMState:
/* 80130B88 0012DAC8  90 A4 02 B4 */	stw r5, 0x2b4(r4)
/* 80130B8C 0012DACC  4E 80 00 20 */	blr 

.global getCurrState__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
getCurrState__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase:
/* 80130B90 0012DAD0  80 64 02 B4 */	lwz r3, 0x2b4(r4)
/* 80130B94 0012DAD4  4E 80 00 20 */	blr 

.global init__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase
init__Q24Game17EnemyStateMachineFPQ24Game9EnemyBase:
/* 80130B98 0012DAD8  4E 80 00 20 */	blr 
