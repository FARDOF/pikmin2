.include "macros.inc"
.section .bss  # 0x804EFC20 - 0x8051467C
.global sync_stack
sync_stack:
	.skip 0x10

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global DSP_prior_yield
DSP_prior_yield:
	.skip 0x4
.global AUDIO_UPDATE_REQUEST
AUDIO_UPDATE_REQUEST:
	.skip 0x4
.global DSP_prior_task
DSP_prior_task:
	.skip 0x8

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.balign 32, 0
.global __DSPHandler
__DSPHandler:
/* 800AAD00 000A7C40  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800AAD04 000A7C44  7C 08 02 A6 */	mflr r0
/* 800AAD08 000A7C48  3C C0 CC 00 */	lis r6, 0xCC00500A@ha
/* 800AAD0C 000A7C4C  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 800AAD10 000A7C50  38 00 FF D7 */	li r0, -41
/* 800AAD14 000A7C54  38 61 00 08 */	addi r3, r1, 8
/* 800AAD18 000A7C58  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800AAD1C 000A7C5C  7C 9F 23 78 */	mr r31, r4
/* 800AAD20 000A7C60  A0 A6 50 0A */	lhz r5, 0xCC00500A@l(r6)
/* 800AAD24 000A7C64  54 A4 04 3E */	clrlwi r4, r5, 0x10
/* 800AAD28 000A7C68  7C 80 00 38 */	and r0, r4, r0
/* 800AAD2C 000A7C6C  60 00 00 80 */	ori r0, r0, 0x80
/* 800AAD30 000A7C70  B0 06 50 0A */	sth r0, 0x500a(r6)
/* 800AAD34 000A7C74  48 04 24 39 */	bl OSClearContext
/* 800AAD38 000A7C78  38 61 00 08 */	addi r3, r1, 8
/* 800AAD3C 000A7C7C  48 04 22 69 */	bl OSSetCurrentContext
/* 800AAD40 000A7C80  88 0D 8B 40 */	lbz r0, DSP_prior_yield@sda21(r13)
/* 800AAD44 000A7C84  28 00 00 01 */	cmplwi r0, 1
/* 800AAD48 000A7C88  41 82 00 10 */	beq lbl_800AAD58
/* 800AAD4C 000A7C8C  88 0D 8B 40 */	lbz r0, DSP_prior_yield@sda21(r13)
/* 800AAD50 000A7C90  28 00 00 00 */	cmplwi r0, 0
/* 800AAD54 000A7C94  40 82 00 0C */	bne lbl_800AAD60
lbl_800AAD58:
/* 800AAD58 000A7C98  80 0D 8B 48 */	lwz r0, DSP_prior_task@sda21(r13)
/* 800AAD5C 000A7C9C  90 0D 8D C4 */	stw r0, __DSP_curr_task@sda21(r13)
lbl_800AAD60:
/* 800AAD60 000A7CA0  48 02 FF 61 */	bl DSPCheckMailFromDSP
/* 800AAD64 000A7CA4  28 03 00 00 */	cmplwi r3, 0
/* 800AAD68 000A7CA8  41 82 FF F8 */	beq lbl_800AAD60
/* 800AAD6C 000A7CAC  48 02 FF 65 */	bl DSPReadMailFromDSP
/* 800AAD70 000A7CB0  80 AD 8D C4 */	lwz r5, __DSP_curr_task@sda21(r13)
/* 800AAD74 000A7CB4  80 05 00 08 */	lwz r0, 8(r5)
/* 800AAD78 000A7CB8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800AAD7C 000A7CBC  41 82 00 18 */	beq lbl_800AAD94
/* 800AAD80 000A7CC0  3C 03 23 2F */	addis r0, r3, 0x232f
/* 800AAD84 000A7CC4  28 00 00 02 */	cmplwi r0, 2
/* 800AAD88 000A7CC8  40 82 00 0C */	bne lbl_800AAD94
/* 800AAD8C 000A7CCC  3C 60 DC D1 */	lis r3, 0xDCD10003@ha
/* 800AAD90 000A7CD0  38 63 00 03 */	addi r3, r3, 0xDCD10003@l
lbl_800AAD94:
/* 800AAD94 000A7CD4  3C 80 DC D1 */	lis r4, 0xDCD10003@ha
/* 800AAD98 000A7CD8  38 04 00 03 */	addi r0, r4, 0xDCD10003@l
/* 800AAD9C 000A7CDC  7C 03 00 00 */	cmpw r3, r0
/* 800AADA0 000A7CE0  41 82 01 1C */	beq lbl_800AAEBC
/* 800AADA4 000A7CE4  40 80 00 20 */	bge lbl_800AADC4
/* 800AADA8 000A7CE8  38 04 00 01 */	addi r0, r4, 1
/* 800AADAC 000A7CEC  7C 03 00 00 */	cmpw r3, r0
/* 800AADB0 000A7CF0  41 82 00 5C */	beq lbl_800AAE0C
/* 800AADB4 000A7CF4  40 80 00 94 */	bge lbl_800AAE48
/* 800AADB8 000A7CF8  7C 03 20 00 */	cmpw r3, r4
/* 800AADBC 000A7CFC  40 80 00 1C */	bge lbl_800AADD8
/* 800AADC0 000A7D00  48 00 02 20 */	b lbl_800AAFE0
lbl_800AADC4:
/* 800AADC4 000A7D04  38 04 00 05 */	addi r0, r4, 5
/* 800AADC8 000A7D08  7C 03 00 00 */	cmpw r3, r0
/* 800AADCC 000A7D0C  41 82 01 98 */	beq lbl_800AAF64
/* 800AADD0 000A7D10  40 80 02 10 */	bge lbl_800AAFE0
/* 800AADD4 000A7D14  48 00 01 74 */	b lbl_800AAF48
lbl_800AADD8:
/* 800AADD8 000A7D18  38 80 00 01 */	li r4, 1
/* 800AADDC 000A7D1C  90 85 00 00 */	stw r4, 0(r5)
/* 800AADE0 000A7D20  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AADE4 000A7D24  80 0D 8B 48 */	lwz r0, DSP_prior_task@sda21(r13)
/* 800AADE8 000A7D28  7C 03 00 40 */	cmplw r3, r0
/* 800AADEC 000A7D2C  40 82 00 08 */	bne lbl_800AADF4
/* 800AADF0 000A7D30  98 8D 8B 40 */	stb r4, DSP_prior_yield@sda21(r13)
lbl_800AADF4:
/* 800AADF4 000A7D34  81 83 00 28 */	lwz r12, 0x28(r3)
/* 800AADF8 000A7D38  28 0C 00 00 */	cmplwi r12, 0
/* 800AADFC 000A7D3C  41 82 01 E4 */	beq lbl_800AAFE0
/* 800AAE00 000A7D40  7D 89 03 A6 */	mtctr r12
/* 800AAE04 000A7D44  4E 80 04 21 */	bctrl 
/* 800AAE08 000A7D48  48 00 01 D8 */	b lbl_800AAFE0
lbl_800AAE0C:
/* 800AAE0C 000A7D4C  38 80 00 01 */	li r4, 1
/* 800AAE10 000A7D50  90 85 00 00 */	stw r4, 0(r5)
/* 800AAE14 000A7D54  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AAE18 000A7D58  80 0D 8B 48 */	lwz r0, DSP_prior_task@sda21(r13)
/* 800AAE1C 000A7D5C  7C 03 00 40 */	cmplw r3, r0
/* 800AAE20 000A7D60  40 82 00 0C */	bne lbl_800AAE2C
/* 800AAE24 000A7D64  98 8D 8B 40 */	stb r4, DSP_prior_yield@sda21(r13)
/* 800AAE28 000A7D68  48 00 02 59 */	bl Dsp_Update_Request__Fv
lbl_800AAE2C:
/* 800AAE2C 000A7D6C  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AAE30 000A7D70  81 83 00 2C */	lwz r12, 0x2c(r3)
/* 800AAE34 000A7D74  28 0C 00 00 */	cmplwi r12, 0
/* 800AAE38 000A7D78  41 82 01 A8 */	beq lbl_800AAFE0
/* 800AAE3C 000A7D7C  7D 89 03 A6 */	mtctr r12
/* 800AAE40 000A7D80  4E 80 04 21 */	bctrl 
/* 800AAE44 000A7D84  48 00 01 9C */	b lbl_800AAFE0
lbl_800AAE48:
/* 800AAE48 000A7D88  3C 60 CD D1 */	lis r3, 0xCDD10001@ha
/* 800AAE4C 000A7D8C  38 63 00 01 */	addi r3, r3, 0xCDD10001@l
/* 800AAE50 000A7D90  48 02 FE 99 */	bl DSPSendMailToDSP
/* 800AAE54 000A7D94  60 00 00 00 */	nop 
lbl_800AAE58:
/* 800AAE58 000A7D98  48 02 FE 59 */	bl DSPCheckMailToDSP
/* 800AAE5C 000A7D9C  28 03 00 00 */	cmplwi r3, 0
/* 800AAE60 000A7DA0  40 82 FF F8 */	bne lbl_800AAE58
/* 800AAE64 000A7DA4  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AAE68 000A7DA8  38 00 00 02 */	li r0, 2
/* 800AAE6C 000A7DAC  90 03 00 00 */	stw r0, 0(r3)
/* 800AAE70 000A7DB0  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AAE74 000A7DB4  80 83 00 38 */	lwz r4, 0x38(r3)
/* 800AAE78 000A7DB8  28 04 00 00 */	cmplwi r4, 0
/* 800AAE7C 000A7DBC  40 82 00 2C */	bne lbl_800AAEA8
/* 800AAE80 000A7DC0  80 0D 8B 44 */	lwz r0, AUDIO_UPDATE_REQUEST@sda21(r13)
/* 800AAE84 000A7DC4  2C 00 00 00 */	cmpwi r0, 0
/* 800AAE88 000A7DC8  41 82 00 20 */	beq lbl_800AAEA8
/* 800AAE8C 000A7DCC  80 8D 8B 48 */	lwz r4, DSP_prior_task@sda21(r13)
/* 800AAE90 000A7DD0  48 02 FF C1 */	bl __DSP_exec_task
/* 800AAE94 000A7DD4  80 0D 8B 48 */	lwz r0, DSP_prior_task@sda21(r13)
/* 800AAE98 000A7DD8  38 60 00 00 */	li r3, 0
/* 800AAE9C 000A7DDC  90 6D 8B 44 */	stw r3, AUDIO_UPDATE_REQUEST@sda21(r13)
/* 800AAEA0 000A7DE0  90 0D 8D C4 */	stw r0, __DSP_curr_task@sda21(r13)
/* 800AAEA4 000A7DE4  48 00 01 3C */	b lbl_800AAFE0
lbl_800AAEA8:
/* 800AAEA8 000A7DE8  48 02 FF A9 */	bl __DSP_exec_task
/* 800AAEAC 000A7DEC  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AAEB0 000A7DF0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 800AAEB4 000A7DF4  90 0D 8D C4 */	stw r0, __DSP_curr_task@sda21(r13)
/* 800AAEB8 000A7DF8  48 00 01 28 */	b lbl_800AAFE0
lbl_800AAEBC:
/* 800AAEBC 000A7DFC  81 85 00 30 */	lwz r12, 0x30(r5)
/* 800AAEC0 000A7E00  28 0C 00 00 */	cmplwi r12, 0
/* 800AAEC4 000A7E04  41 82 00 10 */	beq lbl_800AAED4
/* 800AAEC8 000A7E08  7C A3 2B 78 */	mr r3, r5
/* 800AAECC 000A7E0C  7D 89 03 A6 */	mtctr r12
/* 800AAED0 000A7E10  4E 80 04 21 */	bctrl 
lbl_800AAED4:
/* 800AAED4 000A7E14  3C 60 CD D1 */	lis r3, 0xCDD10001@ha
/* 800AAED8 000A7E18  38 63 00 01 */	addi r3, r3, 0xCDD10001@l
/* 800AAEDC 000A7E1C  48 02 FE 0D */	bl DSPSendMailToDSP
lbl_800AAEE0:
/* 800AAEE0 000A7E20  48 02 FD D1 */	bl DSPCheckMailToDSP
/* 800AAEE4 000A7E24  28 03 00 00 */	cmplwi r3, 0
/* 800AAEE8 000A7E28  40 82 FF F8 */	bne lbl_800AAEE0
/* 800AAEEC 000A7E2C  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AAEF0 000A7E30  38 00 00 03 */	li r0, 3
/* 800AAEF4 000A7E34  90 03 00 00 */	stw r0, 0(r3)
/* 800AAEF8 000A7E38  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AAEFC 000A7E3C  80 83 00 38 */	lwz r4, 0x38(r3)
/* 800AAF00 000A7E40  28 04 00 00 */	cmplwi r4, 0
/* 800AAF04 000A7E44  40 82 00 24 */	bne lbl_800AAF28
/* 800AAF08 000A7E48  80 8D 8B 48 */	lwz r4, DSP_prior_task@sda21(r13)
/* 800AAF0C 000A7E4C  38 60 00 00 */	li r3, 0
/* 800AAF10 000A7E50  48 02 FF 41 */	bl __DSP_exec_task
/* 800AAF14 000A7E54  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AAF18 000A7E58  48 03 03 05 */	bl __DSP_remove_task
/* 800AAF1C 000A7E5C  80 0D 8B 48 */	lwz r0, DSP_prior_task@sda21(r13)
/* 800AAF20 000A7E60  90 0D 8D C4 */	stw r0, __DSP_curr_task@sda21(r13)
/* 800AAF24 000A7E64  48 00 00 BC */	b lbl_800AAFE0
lbl_800AAF28:
/* 800AAF28 000A7E68  38 60 00 00 */	li r3, 0
/* 800AAF2C 000A7E6C  48 02 FF 25 */	bl __DSP_exec_task
/* 800AAF30 000A7E70  80 6D 8D C4 */	lwz r3, __DSP_curr_task@sda21(r13)
/* 800AAF34 000A7E74  80 63 00 38 */	lwz r3, 0x38(r3)
/* 800AAF38 000A7E78  90 6D 8D C4 */	stw r3, __DSP_curr_task@sda21(r13)
/* 800AAF3C 000A7E7C  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 800AAF40 000A7E80  48 03 02 DD */	bl __DSP_remove_task
/* 800AAF44 000A7E84  48 00 00 9C */	b lbl_800AAFE0
lbl_800AAF48:
/* 800AAF48 000A7E88  81 85 00 34 */	lwz r12, 0x34(r5)
/* 800AAF4C 000A7E8C  28 0C 00 00 */	cmplwi r12, 0
/* 800AAF50 000A7E90  41 82 00 90 */	beq lbl_800AAFE0
/* 800AAF54 000A7E94  7C A3 2B 78 */	mr r3, r5
/* 800AAF58 000A7E98  7D 89 03 A6 */	mtctr r12
/* 800AAF5C 000A7E9C  4E 80 04 21 */	bctrl 
/* 800AAF60 000A7EA0  48 00 00 80 */	b lbl_800AAFE0
lbl_800AAF64:
/* 800AAF64 000A7EA4  80 0D 8D C0 */	lwz r0, __DSP_first_task@sda21(r13)
/* 800AAF68 000A7EA8  28 00 00 00 */	cmplwi r0, 0
/* 800AAF6C 000A7EAC  41 82 00 10 */	beq lbl_800AAF7C
/* 800AAF70 000A7EB0  80 0D 8B 44 */	lwz r0, AUDIO_UPDATE_REQUEST@sda21(r13)
/* 800AAF74 000A7EB4  2C 00 00 00 */	cmpwi r0, 0
/* 800AAF78 000A7EB8  41 82 00 34 */	beq lbl_800AAFAC
lbl_800AAF7C:
/* 800AAF7C 000A7EBC  3C 60 CD D1 */	lis r3, 0xCDD10003@ha
/* 800AAF80 000A7EC0  38 63 00 03 */	addi r3, r3, 0xCDD10003@l
/* 800AAF84 000A7EC4  48 02 FD 65 */	bl DSPSendMailToDSP
lbl_800AAF88:
/* 800AAF88 000A7EC8  48 02 FD 29 */	bl DSPCheckMailToDSP
/* 800AAF8C 000A7ECC  28 03 00 00 */	cmplwi r3, 0
/* 800AAF90 000A7ED0  40 82 FF F8 */	bne lbl_800AAF88
/* 800AAF94 000A7ED4  80 0D 8B 48 */	lwz r0, DSP_prior_task@sda21(r13)
/* 800AAF98 000A7ED8  38 60 00 00 */	li r3, 0
/* 800AAF9C 000A7EDC  90 6D 8B 44 */	stw r3, AUDIO_UPDATE_REQUEST@sda21(r13)
/* 800AAFA0 000A7EE0  90 0D 8D C4 */	stw r0, __DSP_curr_task@sda21(r13)
/* 800AAFA4 000A7EE4  48 00 00 DD */	bl Dsp_Update_Request__Fv
/* 800AAFA8 000A7EE8  48 00 00 38 */	b lbl_800AAFE0
lbl_800AAFAC:
/* 800AAFAC 000A7EEC  38 00 00 03 */	li r0, 3
/* 800AAFB0 000A7EF0  3C 60 CD D1 */	lis r3, 0xCDD10001@ha
/* 800AAFB4 000A7EF4  98 0D 8B 40 */	stb r0, DSP_prior_yield@sda21(r13)
/* 800AAFB8 000A7EF8  38 63 00 01 */	addi r3, r3, 0xCDD10001@l
/* 800AAFBC 000A7EFC  48 02 FD 2D */	bl DSPSendMailToDSP
lbl_800AAFC0:
/* 800AAFC0 000A7F00  48 02 FC F1 */	bl DSPCheckMailToDSP
/* 800AAFC4 000A7F04  28 03 00 00 */	cmplwi r3, 0
/* 800AAFC8 000A7F08  40 82 FF F8 */	bne lbl_800AAFC0
/* 800AAFCC 000A7F0C  80 6D 8B 48 */	lwz r3, DSP_prior_task@sda21(r13)
/* 800AAFD0 000A7F10  80 8D 8D C0 */	lwz r4, __DSP_first_task@sda21(r13)
/* 800AAFD4 000A7F14  48 02 FE 7D */	bl __DSP_exec_task
/* 800AAFD8 000A7F18  80 0D 8D C0 */	lwz r0, __DSP_first_task@sda21(r13)
/* 800AAFDC 000A7F1C  90 0D 8D C4 */	stw r0, __DSP_curr_task@sda21(r13)
lbl_800AAFE0:
/* 800AAFE0 000A7F20  38 61 00 08 */	addi r3, r1, 8
/* 800AAFE4 000A7F24  48 04 21 89 */	bl OSClearContext
/* 800AAFE8 000A7F28  7F E3 FB 78 */	mr r3, r31
/* 800AAFEC 000A7F2C  48 04 1F B9 */	bl OSSetCurrentContext
/* 800AAFF0 000A7F30  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800AAFF4 000A7F34  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800AAFF8 000A7F38  7C 08 03 A6 */	mtlr r0
/* 800AAFFC 000A7F3C  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800AB000 000A7F40  4E 80 00 20 */	blr 

.balign 32, 0
.global DsyncFrame2__FUlUlUl
DsyncFrame2__FUlUlUl:
/* 800AB020 000A7F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AB024 000A7F64  7C 08 02 A6 */	mflr r0
/* 800AB028 000A7F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AB02C 000A7F6C  88 0D 8B 40 */	lbz r0, DSP_prior_yield@sda21(r13)
/* 800AB030 000A7F70  28 00 00 01 */	cmplwi r0, 1
/* 800AB034 000A7F74  41 82 00 20 */	beq lbl_800AB054
/* 800AB038 000A7F78  3C C0 80 4F */	lis r6, sync_stack@ha
/* 800AB03C 000A7F7C  94 66 28 60 */	stwu r3, sync_stack@l(r6)
/* 800AB040 000A7F80  38 00 00 01 */	li r0, 1
/* 800AB044 000A7F84  90 0D 8B 44 */	stw r0, AUDIO_UPDATE_REQUEST@sda21(r13)
/* 800AB048 000A7F88  90 86 00 04 */	stw r4, 4(r6)
/* 800AB04C 000A7F8C  90 A6 00 08 */	stw r5, 8(r6)
/* 800AB050 000A7F90  48 00 00 10 */	b lbl_800AB060
lbl_800AB054:
/* 800AB054 000A7F94  4B FF F8 4D */	bl DsyncFrame__FUlUlUl
/* 800AB058 000A7F98  38 00 00 00 */	li r0, 0
/* 800AB05C 000A7F9C  90 0D 8B 44 */	stw r0, AUDIO_UPDATE_REQUEST@sda21(r13)
lbl_800AB060:
/* 800AB060 000A7FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AB064 000A7FA4  7C 08 03 A6 */	mtlr r0
/* 800AB068 000A7FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800AB06C 000A7FAC  4E 80 00 20 */	blr 

.balign 32, 0
.global Dsp_Update_Request__Fv
Dsp_Update_Request__Fv:
/* 800AB080 000A7FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AB084 000A7FC4  7C 08 02 A6 */	mflr r0
/* 800AB088 000A7FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AB08C 000A7FCC  80 0D 8B 44 */	lwz r0, AUDIO_UPDATE_REQUEST@sda21(r13)
/* 800AB090 000A7FD0  2C 00 00 00 */	cmpwi r0, 0
/* 800AB094 000A7FD4  41 82 00 1C */	beq lbl_800AB0B0
/* 800AB098 000A7FD8  3C 60 80 4F */	lis r3, sync_stack@ha
/* 800AB09C 000A7FDC  38 A3 28 60 */	addi r5, r3, sync_stack@l
/* 800AB0A0 000A7FE0  80 65 00 00 */	lwz r3, 0(r5)
/* 800AB0A4 000A7FE4  80 85 00 04 */	lwz r4, 4(r5)
/* 800AB0A8 000A7FE8  80 A5 00 08 */	lwz r5, 8(r5)
/* 800AB0AC 000A7FEC  4B FF FF 75 */	bl DsyncFrame2__FUlUlUl
lbl_800AB0B0:
/* 800AB0B0 000A7FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AB0B4 000A7FF4  7C 08 03 A6 */	mtlr r0
/* 800AB0B8 000A7FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 800AB0BC 000A7FFC  4E 80 00 20 */	blr 

.balign 32, 0
.global Dsp_Running_Check__Fv
Dsp_Running_Check__Fv:
/* 800AB0C0 000A8000  88 0D 8B 40 */	lbz r0, DSP_prior_yield@sda21(r13)
/* 800AB0C4 000A8004  20 00 00 01 */	subfic r0, r0, 1
/* 800AB0C8 000A8008  7C 00 00 34 */	cntlzw r0, r0
/* 800AB0CC 000A800C  54 03 D9 7E */	srwi r3, r0, 5
/* 800AB0D0 000A8010  4E 80 00 20 */	blr 

.balign 32, 0
.global Dsp_Running_Start__Fv
Dsp_Running_Start__Fv:
/* 800AB0E0 000A8020  38 00 00 01 */	li r0, 1
/* 800AB0E4 000A8024  98 0D 8B 40 */	stb r0, DSP_prior_yield@sda21(r13)
/* 800AB0E8 000A8028  4E 80 00 20 */	blr 
