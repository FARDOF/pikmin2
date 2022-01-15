.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__8JUTVideo
__vt__8JUTVideo:
	.4byte 0
	.4byte 0
	.4byte __dt__8JUTVideoFv
	.4byte 0

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global sManager__8JUTVideo
sManager__8JUTVideo:
	.skip 0x4
.global sVideoLastTick__8JUTVideo
sVideoLastTick__8JUTVideo:
	.skip 0x4
.global sVideoInterval__8JUTVideo
sVideoInterval__8JUTVideo:
	.skip 0x4
.global sDrawWaiting
sDrawWaiting:
	.skip 0x4
.global frameBuffer$2452
frameBuffer$2452:
	.skip 0x4
.global init$2453
init$2453:
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global createManager__8JUTVideoFPC16_GXRenderModeObj
createManager__8JUTVideoFPC16_GXRenderModeObj:
/* 80033744 00030684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033748 00030688  7C 08 02 A6 */	mflr r0
/* 8003374C 0003068C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033750 00030690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033754 00030694  7C 7F 1B 78 */	mr r31, r3
/* 80033758 00030698  80 0D 89 20 */	lwz r0, sManager__8JUTVideo@sda21(r13)
/* 8003375C 0003069C  28 00 00 00 */	cmplwi r0, 0
/* 80033760 000306A0  40 82 00 24 */	bne lbl_80033784
/* 80033764 000306A4  38 60 00 58 */	li r3, 0x58
/* 80033768 000306A8  4B FF 07 3D */	bl __nw__FUl
/* 8003376C 000306AC  7C 60 1B 79 */	or. r0, r3, r3
/* 80033770 000306B0  41 82 00 10 */	beq lbl_80033780
/* 80033774 000306B4  7F E4 FB 78 */	mr r4, r31
/* 80033778 000306B8  48 00 00 6D */	bl __ct__8JUTVideoFPC16_GXRenderModeObj
/* 8003377C 000306BC  7C 60 1B 78 */	mr r0, r3
lbl_80033780:
/* 80033780 000306C0  90 0D 89 20 */	stw r0, sManager__8JUTVideo@sda21(r13)
lbl_80033784:
/* 80033784 000306C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033788 000306C8  80 6D 89 20 */	lwz r3, sManager__8JUTVideo@sda21(r13)
/* 8003378C 000306CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033790 000306D0  7C 08 03 A6 */	mtlr r0
/* 80033794 000306D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80033798 000306D8  4E 80 00 20 */	blr 

.global destroyManager__8JUTVideoFv
destroyManager__8JUTVideoFv:
/* 8003379C 000306DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800337A0 000306E0  7C 08 02 A6 */	mflr r0
/* 800337A4 000306E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800337A8 000306E8  80 6D 89 20 */	lwz r3, sManager__8JUTVideo@sda21(r13)
/* 800337AC 000306EC  28 03 00 00 */	cmplwi r3, 0
/* 800337B0 000306F0  41 82 00 24 */	beq lbl_800337D4
/* 800337B4 000306F4  41 82 00 18 */	beq lbl_800337CC
/* 800337B8 000306F8  81 83 00 00 */	lwz r12, 0(r3)
/* 800337BC 000306FC  38 80 00 01 */	li r4, 1
/* 800337C0 00030700  81 8C 00 08 */	lwz r12, 8(r12)
/* 800337C4 00030704  7D 89 03 A6 */	mtctr r12
/* 800337C8 00030708  4E 80 04 21 */	bctrl 
lbl_800337CC:
/* 800337CC 0003070C  38 00 00 00 */	li r0, 0
/* 800337D0 00030710  90 0D 89 20 */	stw r0, sManager__8JUTVideo@sda21(r13)
lbl_800337D4:
/* 800337D4 00030714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800337D8 00030718  7C 08 03 A6 */	mtlr r0
/* 800337DC 0003071C  38 21 00 10 */	addi r1, r1, 0x10
/* 800337E0 00030720  4E 80 00 20 */	blr 

.global __ct__8JUTVideoFPC16_GXRenderModeObj
__ct__8JUTVideoFPC16_GXRenderModeObj:
/* 800337E4 00030724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800337E8 00030728  7C 08 02 A6 */	mflr r0
/* 800337EC 0003072C  3C A0 80 4A */	lis r5, __vt__8JUTVideo@ha
/* 800337F0 00030730  90 01 00 14 */	stw r0, 0x14(r1)
/* 800337F4 00030734  38 00 00 00 */	li r0, 0
/* 800337F8 00030738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800337FC 0003073C  7C 7F 1B 78 */	mr r31, r3
/* 80033800 00030740  38 65 05 A0 */	addi r3, r5, __vt__8JUTVideo@l
/* 80033804 00030744  93 C1 00 08 */	stw r30, 8(r1)
/* 80033808 00030748  7C 9E 23 78 */	mr r30, r4
/* 8003380C 0003074C  90 7F 00 00 */	stw r3, 0(r31)
/* 80033810 00030750  90 1F 00 04 */	stw r0, 4(r31)
/* 80033814 00030754  48 09 D5 71 */	bl VIInit
/* 80033818 00030758  38 60 00 01 */	li r3, 1
/* 8003381C 0003075C  38 00 00 02 */	li r0, 2
/* 80033820 00030760  98 7F 00 2C */	stb r3, 0x2c(r31)
/* 80033824 00030764  7F E3 FB 78 */	mr r3, r31
/* 80033828 00030768  7F C4 F3 78 */	mr r4, r30
/* 8003382C 0003076C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80033830 00030770  48 00 04 41 */	bl setRenderMode__8JUTVideoFPC16_GXRenderModeObj
/* 80033834 00030774  38 60 00 01 */	li r3, 1
/* 80033838 00030778  48 09 E8 91 */	bl VISetBlack
/* 8003383C 0003077C  48 09 E6 E9 */	bl VIFlush
/* 80033840 00030780  38 00 00 00 */	li r0, 0
/* 80033844 00030784  90 1F 00 08 */	stw r0, 8(r31)
/* 80033848 00030788  48 09 E8 FD */	bl VIGetRetraceCount
/* 8003384C 0003078C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80033850 00030790  38 60 00 01 */	li r3, 1
/* 80033854 00030794  38 00 00 00 */	li r0, 0
/* 80033858 00030798  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8003385C 0003079C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80033860 000307A0  48 0B F3 49 */	bl OSGetTick
/* 80033864 000307A4  3C A0 00 0A */	lis r5, 0x000A3930@ha
/* 80033868 000307A8  3C 80 80 03 */	lis r4, preRetraceProc__8JUTVideoFUl@ha
/* 8003386C 000307AC  38 05 39 30 */	addi r0, r5, 0x000A3930@l
/* 80033870 000307B0  90 6D 89 24 */	stw r3, sVideoLastTick__8JUTVideo@sda21(r13)
/* 80033874 000307B4  38 64 39 40 */	addi r3, r4, preRetraceProc__8JUTVideoFUl@l
/* 80033878 000307B8  90 0D 89 28 */	stw r0, sVideoInterval__8JUTVideo@sda21(r13)
/* 8003387C 000307BC  48 09 D1 E1 */	bl VISetPreRetraceCallback
/* 80033880 000307C0  3C 80 80 03 */	lis r4, postRetraceProc__8JUTVideoFUl@ha
/* 80033884 000307C4  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80033888 000307C8  38 64 3C 24 */	addi r3, r4, postRetraceProc__8JUTVideoFUl@l
/* 8003388C 000307CC  48 09 D2 15 */	bl VISetPostRetraceCallback
/* 80033890 000307D0  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80033894 000307D4  38 00 00 00 */	li r0, 0
/* 80033898 000307D8  38 7F 00 38 */	addi r3, r31, 0x38
/* 8003389C 000307DC  38 9F 00 34 */	addi r4, r31, 0x34
/* 800338A0 000307E0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800338A4 000307E4  38 A0 00 01 */	li r5, 1
/* 800338A8 000307E8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 800338AC 000307EC  48 0B BC 11 */	bl OSInitMessageQueue
/* 800338B0 000307F0  3C 60 80 03 */	lis r3, drawDoneCallback__8JUTVideoFv@ha
/* 800338B4 000307F4  38 63 3B 9C */	addi r3, r3, drawDoneCallback__8JUTVideoFv@l
/* 800338B8 000307F8  48 0B 1F 19 */	bl GXSetDrawDoneCallback
/* 800338BC 000307FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800338C0 00030800  7F E3 FB 78 */	mr r3, r31
/* 800338C4 00030804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800338C8 00030808  83 C1 00 08 */	lwz r30, 8(r1)
/* 800338CC 0003080C  7C 08 03 A6 */	mtlr r0
/* 800338D0 00030810  38 21 00 10 */	addi r1, r1, 0x10
/* 800338D4 00030814  4E 80 00 20 */	blr 

.global __dt__8JUTVideoFv
__dt__8JUTVideoFv:
/* 800338D8 00030818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800338DC 0003081C  7C 08 02 A6 */	mflr r0
/* 800338E0 00030820  90 01 00 14 */	stw r0, 0x14(r1)
/* 800338E4 00030824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800338E8 00030828  7C 9F 23 78 */	mr r31, r4
/* 800338EC 0003082C  93 C1 00 08 */	stw r30, 8(r1)
/* 800338F0 00030830  7C 7E 1B 79 */	or. r30, r3, r3
/* 800338F4 00030834  41 82 00 30 */	beq lbl_80033924
/* 800338F8 00030838  3C 60 80 4A */	lis r3, __vt__8JUTVideo@ha
/* 800338FC 0003083C  38 03 05 A0 */	addi r0, r3, __vt__8JUTVideo@l
/* 80033900 00030840  90 1E 00 00 */	stw r0, 0(r30)
/* 80033904 00030844  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80033908 00030848  48 09 D1 55 */	bl VISetPreRetraceCallback
/* 8003390C 0003084C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80033910 00030850  48 09 D1 91 */	bl VISetPostRetraceCallback
/* 80033914 00030854  7F E0 07 35 */	extsh. r0, r31
/* 80033918 00030858  40 81 00 0C */	ble lbl_80033924
/* 8003391C 0003085C  7F C3 F3 78 */	mr r3, r30
/* 80033920 00030860  4B FF 07 95 */	bl __dl__FPv
lbl_80033924:
/* 80033924 00030864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033928 00030868  7F C3 F3 78 */	mr r3, r30
/* 8003392C 0003086C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033930 00030870  83 C1 00 08 */	lwz r30, 8(r1)
/* 80033934 00030874  7C 08 03 A6 */	mtlr r0
/* 80033938 00030878  38 21 00 10 */	addi r1, r1, 0x10
/* 8003393C 0003087C  4E 80 00 20 */	blr 

.global preRetraceProc__8JUTVideoFUl
preRetraceProc__8JUTVideoFUl:
/* 80033940 00030880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033944 00030884  7C 08 02 A6 */	mflr r0
/* 80033948 00030888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003394C 0003088C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033950 00030890  80 8D 89 20 */	lwz r4, sManager__8JUTVideo@sda21(r13)
/* 80033954 00030894  81 84 00 24 */	lwz r12, 0x24(r4)
/* 80033958 00030898  28 0C 00 00 */	cmplwi r12, 0
/* 8003395C 0003089C  41 82 00 0C */	beq lbl_80033968
/* 80033960 000308A0  7D 89 03 A6 */	mtctr r12
/* 80033964 000308A4  4E 80 04 21 */	bctrl 
lbl_80033968:
/* 80033968 000308A8  48 0B F2 41 */	bl OSGetTick
/* 8003396C 000308AC  80 0D 89 24 */	lwz r0, sVideoLastTick__8JUTVideo@sda21(r13)
/* 80033970 000308B0  83 ED 89 38 */	lwz r31, sManager__6JUTXfb@sda21(r13)
/* 80033974 000308B4  7C 00 18 50 */	subf r0, r0, r3
/* 80033978 000308B8  90 6D 89 24 */	stw r3, sVideoLastTick__8JUTVideo@sda21(r13)
/* 8003397C 000308BC  28 1F 00 00 */	cmplwi r31, 0
/* 80033980 000308C0  90 0D 89 28 */	stw r0, sVideoInterval__8JUTVideo@sda21(r13)
/* 80033984 000308C4  40 82 00 14 */	bne lbl_80033998
/* 80033988 000308C8  38 60 00 01 */	li r3, 1
/* 8003398C 000308CC  48 09 E7 3D */	bl VISetBlack
/* 80033990 000308D0  48 09 E5 95 */	bl VIFlush
/* 80033994 000308D4  48 00 01 C0 */	b lbl_80033B54
lbl_80033998:
/* 80033998 000308D8  88 0D 89 34 */	lbz r0, init$2453@sda21(r13)
/* 8003399C 000308DC  7C 00 07 75 */	extsb. r0, r0
/* 800339A0 000308E0  40 82 00 14 */	bne lbl_800339B4
/* 800339A4 000308E4  38 60 00 00 */	li r3, 0
/* 800339A8 000308E8  38 00 00 01 */	li r0, 1
/* 800339AC 000308EC  90 6D 89 30 */	stw r3, frameBuffer$2452@sda21(r13)
/* 800339B0 000308F0  98 0D 89 34 */	stb r0, init$2453@sda21(r13)
lbl_800339B4:
/* 800339B4 000308F4  80 8D 89 30 */	lwz r4, frameBuffer$2452@sda21(r13)
/* 800339B8 000308F8  28 04 00 00 */	cmplwi r4, 0
/* 800339BC 000308FC  41 82 00 1C */	beq lbl_800339D8
/* 800339C0 00030900  80 AD 89 20 */	lwz r5, sManager__8JUTVideo@sda21(r13)
/* 800339C4 00030904  80 6D 88 88 */	lwz r3, sDirectPrint__14JUTDirectPrint@sda21(r13)
/* 800339C8 00030908  80 C5 00 04 */	lwz r6, 4(r5)
/* 800339CC 0003090C  A0 A6 00 04 */	lhz r5, 4(r6)
/* 800339D0 00030910  A0 C6 00 06 */	lhz r6, 6(r6)
/* 800339D4 00030914  4B FF 65 B9 */	bl changeFrameBuffer__14JUTDirectPrintFPvUsUs
lbl_800339D8:
/* 800339D8 00030918  80 6D 89 20 */	lwz r3, sManager__8JUTVideo@sda21(r13)
/* 800339DC 0003091C  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 800339E0 00030920  28 00 00 01 */	cmplwi r0, 1
/* 800339E4 00030924  40 82 00 3C */	bne lbl_80033A20
/* 800339E8 00030928  80 83 00 30 */	lwz r4, 0x30(r3)
/* 800339EC 0003092C  2C 04 00 00 */	cmpwi r4, 0
/* 800339F0 00030930  40 81 00 08 */	ble lbl_800339F8
/* 800339F4 00030934  38 84 FF FF */	addi r4, r4, -1
lbl_800339F8:
/* 800339F8 00030938  90 83 00 30 */	stw r4, 0x30(r3)
/* 800339FC 0003093C  7C 04 00 D0 */	neg r0, r4
/* 80033A00 00030940  7C 00 23 78 */	or r0, r0, r4
/* 80033A04 00030944  38 60 00 01 */	li r3, 1
/* 80033A08 00030948  80 8D 89 20 */	lwz r4, sManager__8JUTVideo@sda21(r13)
/* 80033A0C 0003094C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80033A10 00030950  98 04 00 2C */	stb r0, 0x2c(r4)
/* 80033A14 00030954  48 09 E6 B5 */	bl VISetBlack
/* 80033A18 00030958  48 09 E5 0D */	bl VIFlush
/* 80033A1C 0003095C  48 00 01 38 */	b lbl_80033B54
lbl_80033A20:
/* 80033A20 00030960  28 1F 00 00 */	cmplwi r31, 0
/* 80033A24 00030964  40 82 00 14 */	bne lbl_80033A38
/* 80033A28 00030968  38 60 00 01 */	li r3, 1
/* 80033A2C 0003096C  48 09 E6 9D */	bl VISetBlack
/* 80033A30 00030970  48 09 E4 F5 */	bl VIFlush
/* 80033A34 00030974  48 00 01 20 */	b lbl_80033B54
lbl_80033A38:
/* 80033A38 00030978  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80033A3C 0003097C  2C 00 00 03 */	cmpwi r0, 3
/* 80033A40 00030980  41 82 00 0C */	beq lbl_80033A4C
/* 80033A44 00030984  2C 00 00 02 */	cmpwi r0, 2
/* 80033A48 00030988  40 82 00 80 */	bne lbl_80033AC8
lbl_80033A4C:
/* 80033A4C 0003098C  88 0D 89 2C */	lbz r0, sDrawWaiting@sda21(r13)
/* 80033A50 00030990  28 00 00 00 */	cmplwi r0, 0
/* 80033A54 00030994  40 82 01 00 */	bne lbl_80033B54
/* 80033A58 00030998  A8 7F 00 16 */	lha r3, 0x16(r31)
/* 80033A5C 0003099C  7C 60 07 35 */	extsh. r0, r3
/* 80033A60 000309A0  B0 7F 00 18 */	sth r3, 0x18(r31)
/* 80033A64 000309A4  40 80 00 14 */	bge lbl_80033A78
/* 80033A68 000309A8  38 60 00 01 */	li r3, 1
/* 80033A6C 000309AC  48 09 E6 5D */	bl VISetBlack
/* 80033A70 000309B0  48 09 E4 B5 */	bl VIFlush
/* 80033A74 000309B4  48 00 00 E0 */	b lbl_80033B54
lbl_80033A78:
/* 80033A78 000309B8  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 80033A7C 000309BC  7C 60 07 35 */	extsh. r0, r3
/* 80033A80 000309C0  41 80 00 10 */	blt lbl_80033A90
/* 80033A84 000309C4  54 60 10 3A */	slwi r0, r3, 2
/* 80033A88 000309C8  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80033A8C 000309CC  48 00 00 08 */	b lbl_80033A94
lbl_80033A90:
/* 80033A90 000309D0  38 60 00 00 */	li r3, 0
lbl_80033A94:
/* 80033A94 000309D4  48 09 E5 C1 */	bl VISetNextFrameBuffer
/* 80033A98 000309D8  48 09 E4 8D */	bl VIFlush
/* 80033A9C 000309DC  38 60 00 00 */	li r3, 0
/* 80033AA0 000309E0  48 09 E6 29 */	bl VISetBlack
/* 80033AA4 000309E4  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 80033AA8 000309E8  7C 60 07 35 */	extsh. r0, r3
/* 80033AAC 000309EC  41 80 00 10 */	blt lbl_80033ABC
/* 80033AB0 000309F0  54 60 10 3A */	slwi r0, r3, 2
/* 80033AB4 000309F4  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80033AB8 000309F8  48 00 00 08 */	b lbl_80033AC0
lbl_80033ABC:
/* 80033ABC 000309FC  38 00 00 00 */	li r0, 0
lbl_80033AC0:
/* 80033AC0 00030A00  90 0D 89 30 */	stw r0, frameBuffer$2452@sda21(r13)
/* 80033AC4 00030A04  48 00 00 90 */	b lbl_80033B54
lbl_80033AC8:
/* 80033AC8 00030A08  2C 00 00 01 */	cmpwi r0, 1
/* 80033ACC 00030A0C  40 82 00 88 */	bne lbl_80033B54
/* 80033AD0 00030A10  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80033AD4 00030A14  2C 00 00 00 */	cmpwi r0, 0
/* 80033AD8 00030A18  40 82 00 78 */	bne lbl_80033B50
/* 80033ADC 00030A1C  A8 7F 00 16 */	lha r3, 0x16(r31)
/* 80033AE0 00030A20  7C 60 07 35 */	extsh. r0, r3
/* 80033AE4 00030A24  41 80 00 64 */	blt lbl_80033B48
/* 80033AE8 00030A28  B0 7F 00 18 */	sth r3, 0x18(r31)
/* 80033AEC 00030A2C  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 80033AF0 00030A30  7C 60 07 35 */	extsh. r0, r3
/* 80033AF4 00030A34  41 80 00 10 */	blt lbl_80033B04
/* 80033AF8 00030A38  54 60 10 3A */	slwi r0, r3, 2
/* 80033AFC 00030A3C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80033B00 00030A40  48 00 00 08 */	b lbl_80033B08
lbl_80033B04:
/* 80033B04 00030A44  38 60 00 00 */	li r3, 0
lbl_80033B08:
/* 80033B08 00030A48  38 80 00 01 */	li r4, 1
/* 80033B0C 00030A4C  48 0B 2A 39 */	bl GXCopyDisp
/* 80033B10 00030A50  48 0B 15 5D */	bl GXFlush
/* 80033B14 00030A54  38 00 00 02 */	li r0, 2
/* 80033B18 00030A58  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80033B1C 00030A5C  A8 7F 00 18 */	lha r3, 0x18(r31)
/* 80033B20 00030A60  7C 60 07 35 */	extsh. r0, r3
/* 80033B24 00030A64  41 80 00 10 */	blt lbl_80033B34
/* 80033B28 00030A68  54 60 10 3A */	slwi r0, r3, 2
/* 80033B2C 00030A6C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80033B30 00030A70  48 00 00 08 */	b lbl_80033B38
lbl_80033B34:
/* 80033B34 00030A74  38 00 00 00 */	li r0, 0
lbl_80033B38:
/* 80033B38 00030A78  90 0D 89 30 */	stw r0, frameBuffer$2452@sda21(r13)
/* 80033B3C 00030A7C  38 60 00 00 */	li r3, 0
/* 80033B40 00030A80  48 09 E5 89 */	bl VISetBlack
/* 80033B44 00030A84  48 00 00 0C */	b lbl_80033B50
lbl_80033B48:
/* 80033B48 00030A88  38 60 00 01 */	li r3, 1
/* 80033B4C 00030A8C  48 09 E5 7D */	bl VISetBlack
lbl_80033B50:
/* 80033B50 00030A90  48 09 E3 D5 */	bl VIFlush
lbl_80033B54:
/* 80033B54 00030A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033B58 00030A98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033B5C 00030A9C  7C 08 03 A6 */	mtlr r0
/* 80033B60 00030AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80033B64 00030AA4  4E 80 00 20 */	blr 

.global drawDoneStart__8JUTVideoFv
drawDoneStart__8JUTVideoFv:
/* 80033B68 00030AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033B6C 00030AAC  7C 08 02 A6 */	mflr r0
/* 80033B70 00030AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033B74 00030AB4  38 00 00 01 */	li r0, 1
/* 80033B78 00030AB8  98 0D 89 2C */	stb r0, sDrawWaiting@sda21(r13)
/* 80033B7C 00030ABC  48 0B 18 DD */	bl GXSetDrawDone
/* 80033B80 00030AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033B84 00030AC4  7C 08 03 A6 */	mtlr r0
/* 80033B88 00030AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80033B8C 00030ACC  4E 80 00 20 */	blr 

.global dummyNoDrawWait__8JUTVideoFv
dummyNoDrawWait__8JUTVideoFv:
/* 80033B90 00030AD0  38 00 00 00 */	li r0, 0
/* 80033B94 00030AD4  98 0D 89 2C */	stb r0, sDrawWaiting@sda21(r13)
/* 80033B98 00030AD8  4E 80 00 20 */	blr 

.global drawDoneCallback__8JUTVideoFv
drawDoneCallback__8JUTVideoFv:
/* 80033B9C 00030ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033BA0 00030AE0  7C 08 02 A6 */	mflr r0
/* 80033BA4 00030AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033BA8 00030AE8  80 8D 89 38 */	lwz r4, sManager__6JUTXfb@sda21(r13)
/* 80033BAC 00030AEC  28 04 00 00 */	cmplwi r4, 0
/* 80033BB0 00030AF0  41 82 00 64 */	beq lbl_80033C14
/* 80033BB4 00030AF4  38 60 00 00 */	li r3, 0
/* 80033BB8 00030AF8  98 6D 89 2C */	stb r3, sDrawWaiting@sda21(r13)
/* 80033BBC 00030AFC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80033BC0 00030B00  2C 00 00 01 */	cmpwi r0, 1
/* 80033BC4 00030B04  40 82 00 50 */	bne lbl_80033C14
/* 80033BC8 00030B08  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80033BCC 00030B0C  2C 00 00 01 */	cmpwi r0, 1
/* 80033BD0 00030B10  40 82 00 44 */	bne lbl_80033C14
/* 80033BD4 00030B14  90 64 00 1C */	stw r3, 0x1c(r4)
/* 80033BD8 00030B18  A8 A4 00 16 */	lha r5, 0x16(r4)
/* 80033BDC 00030B1C  7C A0 07 35 */	extsh. r0, r5
/* 80033BE0 00030B20  41 80 00 0C */	blt lbl_80033BEC
/* 80033BE4 00030B24  54 A0 10 3A */	slwi r0, r5, 2
/* 80033BE8 00030B28  7C 64 00 2E */	lwzx r3, r4, r0
lbl_80033BEC:
/* 80033BEC 00030B2C  28 03 00 00 */	cmplwi r3, 0
/* 80033BF0 00030B30  41 82 00 24 */	beq lbl_80033C14
/* 80033BF4 00030B34  7C A0 07 35 */	extsh. r0, r5
/* 80033BF8 00030B38  41 80 00 10 */	blt lbl_80033C08
/* 80033BFC 00030B3C  54 A0 10 3A */	slwi r0, r5, 2
/* 80033C00 00030B40  7C 64 00 2E */	lwzx r3, r4, r0
/* 80033C04 00030B44  48 00 00 08 */	b lbl_80033C0C
lbl_80033C08:
/* 80033C08 00030B48  38 60 00 00 */	li r3, 0
lbl_80033C0C:
/* 80033C0C 00030B4C  48 09 E4 49 */	bl VISetNextFrameBuffer
/* 80033C10 00030B50  48 09 E3 15 */	bl VIFlush
lbl_80033C14:
/* 80033C14 00030B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033C18 00030B58  7C 08 03 A6 */	mtlr r0
/* 80033C1C 00030B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80033C20 00030B60  4E 80 00 20 */	blr 

.global postRetraceProc__8JUTVideoFUl
postRetraceProc__8JUTVideoFUl:
/* 80033C24 00030B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033C28 00030B68  7C 08 02 A6 */	mflr r0
/* 80033C2C 00030B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033C30 00030B70  80 8D 89 20 */	lwz r4, sManager__8JUTVideo@sda21(r13)
/* 80033C34 00030B74  81 84 00 28 */	lwz r12, 0x28(r4)
/* 80033C38 00030B78  28 0C 00 00 */	cmplwi r12, 0
/* 80033C3C 00030B7C  41 82 00 0C */	beq lbl_80033C48
/* 80033C40 00030B80  7D 89 03 A6 */	mtctr r12
/* 80033C44 00030B84  4E 80 04 21 */	bctrl 
lbl_80033C48:
/* 80033C48 00030B88  48 09 E4 FD */	bl VIGetRetraceCount
/* 80033C4C 00030B8C  80 CD 89 20 */	lwz r6, sManager__8JUTVideo@sda21(r13)
/* 80033C50 00030B90  7C 64 1B 78 */	mr r4, r3
/* 80033C54 00030B94  38 A0 00 00 */	li r5, 0
/* 80033C58 00030B98  38 66 00 38 */	addi r3, r6, 0x38
/* 80033C5C 00030B9C  48 0B B8 C1 */	bl OSSendMessage
/* 80033C60 00030BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033C64 00030BA4  7C 08 03 A6 */	mtlr r0
/* 80033C68 00030BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80033C6C 00030BAC  4E 80 00 20 */	blr 

.global setRenderMode__8JUTVideoFPC16_GXRenderModeObj
setRenderMode__8JUTVideoFPC16_GXRenderModeObj:
/* 80033C70 00030BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80033C74 00030BB4  7C 08 02 A6 */	mflr r0
/* 80033C78 00030BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80033C7C 00030BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80033C80 00030BC0  7C 7F 1B 78 */	mr r31, r3
/* 80033C84 00030BC4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80033C88 00030BC8  28 05 00 00 */	cmplwi r5, 0
/* 80033C8C 00030BCC  41 82 00 24 */	beq lbl_80033CB0
/* 80033C90 00030BD0  80 64 00 00 */	lwz r3, 0(r4)
/* 80033C94 00030BD4  80 05 00 00 */	lwz r0, 0(r5)
/* 80033C98 00030BD8  7C 03 00 00 */	cmpw r3, r0
/* 80033C9C 00030BDC  41 82 00 14 */	beq lbl_80033CB0
/* 80033CA0 00030BE0  38 60 00 01 */	li r3, 1
/* 80033CA4 00030BE4  38 00 00 04 */	li r0, 4
/* 80033CA8 00030BE8  98 7F 00 2C */	stb r3, 0x2c(r31)
/* 80033CAC 00030BEC  90 1F 00 30 */	stw r0, 0x30(r31)
lbl_80033CB0:
/* 80033CB0 00030BF0  90 9F 00 04 */	stw r4, 4(r31)
/* 80033CB4 00030BF4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80033CB8 00030BF8  48 09 DA 45 */	bl VIConfigure
/* 80033CBC 00030BFC  48 09 E2 69 */	bl VIFlush
/* 80033CC0 00030C00  88 1F 00 2C */	lbz r0, 0x2c(r31)
/* 80033CC4 00030C04  28 00 00 00 */	cmplwi r0, 0
/* 80033CC8 00030C08  41 82 00 0C */	beq lbl_80033CD4
/* 80033CCC 00030C0C  48 09 D5 69 */	bl VIWaitForRetrace
/* 80033CD0 00030C10  48 09 D5 65 */	bl VIWaitForRetrace
lbl_80033CD4:
/* 80033CD4 00030C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80033CD8 00030C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80033CDC 00030C1C  7C 08 03 A6 */	mtlr r0
/* 80033CE0 00030C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80033CE4 00030C24  4E 80 00 20 */	blr 

.global waitRetraceIfNeed__8JUTVideoFv
waitRetraceIfNeed__8JUTVideoFv:
/* 80033CE8 00030C28  4E 80 00 20 */	blr 

.global setPostRetraceCallback__8JUTVideoFPFUl_v
setPostRetraceCallback__8JUTVideoFPFUl_v:
/* 80033CEC 00030C2C  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80033CF0 00030C30  90 83 00 28 */	stw r4, 0x28(r3)
/* 80033CF4 00030C34  7C 03 03 78 */	mr r3, r0
/* 80033CF8 00030C38  4E 80 00 20 */	blr 
