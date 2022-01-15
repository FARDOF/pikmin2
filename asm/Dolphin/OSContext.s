.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global lbl_804A8DB8
lbl_804A8DB8:
	.asciz "------------------------- Context 0x%08x -------------------------\n"
	.asciz "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.asciz "LR   = 0x%08x                   CR   = 0x%08x\n"
	.skip 1
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.skip 1
	.asciz "\nGQRs----------\n"
	.skip 3
	.asciz "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
	.skip 3
	.asciz "\n\nFPRs----------\n"
	.skip 2
	.asciz "fr%d \t= %d \t fr%d \t= %d\n"
	.skip 3
	.asciz "\n\nPSFs----------\n"
	.skip 2
	.asciz "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
	.skip 3
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.skip 2
	.asciz "0x%08x:   0x%08x    0x%08x\n"
.global lbl_804A8F6C
lbl_804A8F6C:
	.asciz "FPU-unavailable handler installed\n"
	.skip 1

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __OSLoadFPUContext
__OSLoadFPUContext:
/* 800ECD50 000E9C90  A0 A4 01 A2 */	lhz r5, 0x1a2(r4)
/* 800ECD54 000E9C94  54 A5 07 FF */	clrlwi. r5, r5, 0x1f
/* 800ECD58 000E9C98  41 82 01 18 */	beq lbl_800ECE70
/* 800ECD5C 000E9C9C  C8 04 01 90 */	lfd f0, 0x190(r4)
/* 800ECD60 000E9CA0  FD FE 05 8E */	mtfsf 0xff, f0
/* 800ECD64 000E9CA4  7C B8 E2 A6 */	mfspr r5, 0x398
/* 800ECD68 000E9CA8  54 A5 1F FF */	rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 800ECD6C 000E9CAC  41 82 00 84 */	beq lbl_800ECDF0
/* 800ECD70 000E9CB0  E0 04 01 C8 */	psq_l f0, 456(r4), 0, qr0
/* 800ECD74 000E9CB4  E0 24 01 D0 */	psq_l f1, 464(r4), 0, qr0
/* 800ECD78 000E9CB8  E0 44 01 D8 */	psq_l f2, 472(r4), 0, qr0
/* 800ECD7C 000E9CBC  E0 64 01 E0 */	psq_l f3, 480(r4), 0, qr0
/* 800ECD80 000E9CC0  E0 84 01 E8 */	psq_l f4, 488(r4), 0, qr0
/* 800ECD84 000E9CC4  E0 A4 01 F0 */	psq_l f5, 496(r4), 0, qr0
/* 800ECD88 000E9CC8  E0 C4 01 F8 */	psq_l f6, 504(r4), 0, qr0
/* 800ECD8C 000E9CCC  E0 E4 02 00 */	psq_l f7, 512(r4), 0, qr0
/* 800ECD90 000E9CD0  E1 04 02 08 */	psq_l f8, 520(r4), 0, qr0
/* 800ECD94 000E9CD4  E1 24 02 10 */	psq_l f9, 528(r4), 0, qr0
/* 800ECD98 000E9CD8  E1 44 02 18 */	psq_l f10, 536(r4), 0, qr0
/* 800ECD9C 000E9CDC  E1 64 02 20 */	psq_l f11, 544(r4), 0, qr0
/* 800ECDA0 000E9CE0  E1 84 02 28 */	psq_l f12, 552(r4), 0, qr0
/* 800ECDA4 000E9CE4  E1 A4 02 30 */	psq_l f13, 560(r4), 0, qr0
/* 800ECDA8 000E9CE8  E1 C4 02 38 */	psq_l f14, 568(r4), 0, qr0
/* 800ECDAC 000E9CEC  E1 E4 02 40 */	psq_l f15, 576(r4), 0, qr0
/* 800ECDB0 000E9CF0  E2 04 02 48 */	psq_l f16, 584(r4), 0, qr0
/* 800ECDB4 000E9CF4  E2 24 02 50 */	psq_l f17, 592(r4), 0, qr0
/* 800ECDB8 000E9CF8  E2 44 02 58 */	psq_l f18, 600(r4), 0, qr0
/* 800ECDBC 000E9CFC  E2 64 02 60 */	psq_l f19, 608(r4), 0, qr0
/* 800ECDC0 000E9D00  E2 84 02 68 */	psq_l f20, 616(r4), 0, qr0
/* 800ECDC4 000E9D04  E2 A4 02 70 */	psq_l f21, 624(r4), 0, qr0
/* 800ECDC8 000E9D08  E2 C4 02 78 */	psq_l f22, 632(r4), 0, qr0
/* 800ECDCC 000E9D0C  E2 E4 02 80 */	psq_l f23, 640(r4), 0, qr0
/* 800ECDD0 000E9D10  E3 04 02 88 */	psq_l f24, 648(r4), 0, qr0
/* 800ECDD4 000E9D14  E3 24 02 90 */	psq_l f25, 656(r4), 0, qr0
/* 800ECDD8 000E9D18  E3 44 02 98 */	psq_l f26, 664(r4), 0, qr0
/* 800ECDDC 000E9D1C  E3 64 02 A0 */	psq_l f27, 672(r4), 0, qr0
/* 800ECDE0 000E9D20  E3 84 02 A8 */	psq_l f28, 680(r4), 0, qr0
/* 800ECDE4 000E9D24  E3 A4 02 B0 */	psq_l f29, 688(r4), 0, qr0
/* 800ECDE8 000E9D28  E3 C4 02 B8 */	psq_l f30, 696(r4), 0, qr0
/* 800ECDEC 000E9D2C  E3 E4 02 C0 */	psq_l f31, 704(r4), 0, qr0
lbl_800ECDF0:
/* 800ECDF0 000E9D30  C8 04 00 90 */	lfd f0, 0x90(r4)
/* 800ECDF4 000E9D34  C8 24 00 98 */	lfd f1, 0x98(r4)
/* 800ECDF8 000E9D38  C8 44 00 A0 */	lfd f2, 0xa0(r4)
/* 800ECDFC 000E9D3C  C8 64 00 A8 */	lfd f3, 0xa8(r4)
/* 800ECE00 000E9D40  C8 84 00 B0 */	lfd f4, 0xb0(r4)
/* 800ECE04 000E9D44  C8 A4 00 B8 */	lfd f5, 0xb8(r4)
/* 800ECE08 000E9D48  C8 C4 00 C0 */	lfd f6, 0xc0(r4)
/* 800ECE0C 000E9D4C  C8 E4 00 C8 */	lfd f7, 0xc8(r4)
/* 800ECE10 000E9D50  C9 04 00 D0 */	lfd f8, 0xd0(r4)
/* 800ECE14 000E9D54  C9 24 00 D8 */	lfd f9, 0xd8(r4)
/* 800ECE18 000E9D58  C9 44 00 E0 */	lfd f10, 0xe0(r4)
/* 800ECE1C 000E9D5C  C9 64 00 E8 */	lfd f11, 0xe8(r4)
/* 800ECE20 000E9D60  C9 84 00 F0 */	lfd f12, 0xf0(r4)
/* 800ECE24 000E9D64  C9 A4 00 F8 */	lfd f13, 0xf8(r4)
/* 800ECE28 000E9D68  C9 C4 01 00 */	lfd f14, 0x100(r4)
/* 800ECE2C 000E9D6C  C9 E4 01 08 */	lfd f15, 0x108(r4)
/* 800ECE30 000E9D70  CA 04 01 10 */	lfd f16, 0x110(r4)
/* 800ECE34 000E9D74  CA 24 01 18 */	lfd f17, 0x118(r4)
/* 800ECE38 000E9D78  CA 44 01 20 */	lfd f18, 0x120(r4)
/* 800ECE3C 000E9D7C  CA 64 01 28 */	lfd f19, 0x128(r4)
/* 800ECE40 000E9D80  CA 84 01 30 */	lfd f20, 0x130(r4)
/* 800ECE44 000E9D84  CA A4 01 38 */	lfd f21, 0x138(r4)
/* 800ECE48 000E9D88  CA C4 01 40 */	lfd f22, 0x140(r4)
/* 800ECE4C 000E9D8C  CA E4 01 48 */	lfd f23, 0x148(r4)
/* 800ECE50 000E9D90  CB 04 01 50 */	lfd f24, 0x150(r4)
/* 800ECE54 000E9D94  CB 24 01 58 */	lfd f25, 0x158(r4)
/* 800ECE58 000E9D98  CB 44 01 60 */	lfd f26, 0x160(r4)
/* 800ECE5C 000E9D9C  CB 64 01 68 */	lfd f27, 0x168(r4)
/* 800ECE60 000E9DA0  CB 84 01 70 */	lfd f28, 0x170(r4)
/* 800ECE64 000E9DA4  CB A4 01 78 */	lfd f29, 0x178(r4)
/* 800ECE68 000E9DA8  CB C4 01 80 */	lfd f30, 0x180(r4)
/* 800ECE6C 000E9DAC  CB E4 01 88 */	lfd f31, 0x188(r4)
lbl_800ECE70:
/* 800ECE70 000E9DB0  4E 80 00 20 */	blr 

.global __OSSaveFPUContext
__OSSaveFPUContext:
/* 800ECE74 000E9DB4  A0 65 01 A2 */	lhz r3, 0x1a2(r5)
/* 800ECE78 000E9DB8  60 63 00 01 */	ori r3, r3, 1
/* 800ECE7C 000E9DBC  B0 65 01 A2 */	sth r3, 0x1a2(r5)
/* 800ECE80 000E9DC0  D8 05 00 90 */	stfd f0, 0x90(r5)
/* 800ECE84 000E9DC4  D8 25 00 98 */	stfd f1, 0x98(r5)
/* 800ECE88 000E9DC8  D8 45 00 A0 */	stfd f2, 0xa0(r5)
/* 800ECE8C 000E9DCC  D8 65 00 A8 */	stfd f3, 0xa8(r5)
/* 800ECE90 000E9DD0  D8 85 00 B0 */	stfd f4, 0xb0(r5)
/* 800ECE94 000E9DD4  D8 A5 00 B8 */	stfd f5, 0xb8(r5)
/* 800ECE98 000E9DD8  D8 C5 00 C0 */	stfd f6, 0xc0(r5)
/* 800ECE9C 000E9DDC  D8 E5 00 C8 */	stfd f7, 0xc8(r5)
/* 800ECEA0 000E9DE0  D9 05 00 D0 */	stfd f8, 0xd0(r5)
/* 800ECEA4 000E9DE4  D9 25 00 D8 */	stfd f9, 0xd8(r5)
/* 800ECEA8 000E9DE8  D9 45 00 E0 */	stfd f10, 0xe0(r5)
/* 800ECEAC 000E9DEC  D9 65 00 E8 */	stfd f11, 0xe8(r5)
/* 800ECEB0 000E9DF0  D9 85 00 F0 */	stfd f12, 0xf0(r5)
/* 800ECEB4 000E9DF4  D9 A5 00 F8 */	stfd f13, 0xf8(r5)
/* 800ECEB8 000E9DF8  D9 C5 01 00 */	stfd f14, 0x100(r5)
/* 800ECEBC 000E9DFC  D9 E5 01 08 */	stfd f15, 0x108(r5)
/* 800ECEC0 000E9E00  DA 05 01 10 */	stfd f16, 0x110(r5)
/* 800ECEC4 000E9E04  DA 25 01 18 */	stfd f17, 0x118(r5)
/* 800ECEC8 000E9E08  DA 45 01 20 */	stfd f18, 0x120(r5)
/* 800ECECC 000E9E0C  DA 65 01 28 */	stfd f19, 0x128(r5)
/* 800ECED0 000E9E10  DA 85 01 30 */	stfd f20, 0x130(r5)
/* 800ECED4 000E9E14  DA A5 01 38 */	stfd f21, 0x138(r5)
/* 800ECED8 000E9E18  DA C5 01 40 */	stfd f22, 0x140(r5)
/* 800ECEDC 000E9E1C  DA E5 01 48 */	stfd f23, 0x148(r5)
/* 800ECEE0 000E9E20  DB 05 01 50 */	stfd f24, 0x150(r5)
/* 800ECEE4 000E9E24  DB 25 01 58 */	stfd f25, 0x158(r5)
/* 800ECEE8 000E9E28  DB 45 01 60 */	stfd f26, 0x160(r5)
/* 800ECEEC 000E9E2C  DB 65 01 68 */	stfd f27, 0x168(r5)
/* 800ECEF0 000E9E30  DB 85 01 70 */	stfd f28, 0x170(r5)
/* 800ECEF4 000E9E34  DB A5 01 78 */	stfd f29, 0x178(r5)
/* 800ECEF8 000E9E38  DB C5 01 80 */	stfd f30, 0x180(r5)
/* 800ECEFC 000E9E3C  DB E5 01 88 */	stfd f31, 0x188(r5)
/* 800ECF00 000E9E40  FC 00 04 8E */	mffs f0
/* 800ECF04 000E9E44  D8 05 01 90 */	stfd f0, 0x190(r5)
/* 800ECF08 000E9E48  C8 05 00 90 */	lfd f0, 0x90(r5)
/* 800ECF0C 000E9E4C  7C 78 E2 A6 */	mfspr r3, 0x398
/* 800ECF10 000E9E50  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 800ECF14 000E9E54  41 82 00 84 */	beq lbl_800ECF98
/* 800ECF18 000E9E58  F0 05 01 C8 */	psq_st f0, 456(r5), 0, qr0
/* 800ECF1C 000E9E5C  F0 25 01 D0 */	psq_st f1, 464(r5), 0, qr0
/* 800ECF20 000E9E60  F0 45 01 D8 */	psq_st f2, 472(r5), 0, qr0
/* 800ECF24 000E9E64  F0 65 01 E0 */	psq_st f3, 480(r5), 0, qr0
/* 800ECF28 000E9E68  F0 85 01 E8 */	psq_st f4, 488(r5), 0, qr0
/* 800ECF2C 000E9E6C  F0 A5 01 F0 */	psq_st f5, 496(r5), 0, qr0
/* 800ECF30 000E9E70  F0 C5 01 F8 */	psq_st f6, 504(r5), 0, qr0
/* 800ECF34 000E9E74  F0 E5 02 00 */	psq_st f7, 512(r5), 0, qr0
/* 800ECF38 000E9E78  F1 05 02 08 */	psq_st f8, 520(r5), 0, qr0
/* 800ECF3C 000E9E7C  F1 25 02 10 */	psq_st f9, 528(r5), 0, qr0
/* 800ECF40 000E9E80  F1 45 02 18 */	psq_st f10, 536(r5), 0, qr0
/* 800ECF44 000E9E84  F1 65 02 20 */	psq_st f11, 544(r5), 0, qr0
/* 800ECF48 000E9E88  F1 85 02 28 */	psq_st f12, 552(r5), 0, qr0
/* 800ECF4C 000E9E8C  F1 A5 02 30 */	psq_st f13, 560(r5), 0, qr0
/* 800ECF50 000E9E90  F1 C5 02 38 */	psq_st f14, 568(r5), 0, qr0
/* 800ECF54 000E9E94  F1 E5 02 40 */	psq_st f15, 576(r5), 0, qr0
/* 800ECF58 000E9E98  F2 05 02 48 */	psq_st f16, 584(r5), 0, qr0
/* 800ECF5C 000E9E9C  F2 25 02 50 */	psq_st f17, 592(r5), 0, qr0
/* 800ECF60 000E9EA0  F2 45 02 58 */	psq_st f18, 600(r5), 0, qr0
/* 800ECF64 000E9EA4  F2 65 02 60 */	psq_st f19, 608(r5), 0, qr0
/* 800ECF68 000E9EA8  F2 85 02 68 */	psq_st f20, 616(r5), 0, qr0
/* 800ECF6C 000E9EAC  F2 A5 02 70 */	psq_st f21, 624(r5), 0, qr0
/* 800ECF70 000E9EB0  F2 C5 02 78 */	psq_st f22, 632(r5), 0, qr0
/* 800ECF74 000E9EB4  F2 E5 02 80 */	psq_st f23, 640(r5), 0, qr0
/* 800ECF78 000E9EB8  F3 05 02 88 */	psq_st f24, 648(r5), 0, qr0
/* 800ECF7C 000E9EBC  F3 25 02 90 */	psq_st f25, 656(r5), 0, qr0
/* 800ECF80 000E9EC0  F3 45 02 98 */	psq_st f26, 664(r5), 0, qr0
/* 800ECF84 000E9EC4  F3 65 02 A0 */	psq_st f27, 672(r5), 0, qr0
/* 800ECF88 000E9EC8  F3 85 02 A8 */	psq_st f28, 680(r5), 0, qr0
/* 800ECF8C 000E9ECC  F3 A5 02 B0 */	psq_st f29, 688(r5), 0, qr0
/* 800ECF90 000E9ED0  F3 C5 02 B8 */	psq_st f30, 696(r5), 0, qr0
/* 800ECF94 000E9ED4  F3 E5 02 C0 */	psq_st f31, 704(r5), 0, qr0
lbl_800ECF98:
/* 800ECF98 000E9ED8  4E 80 00 20 */	blr 

.global OSSaveFPUContext
OSSaveFPUContext:
/* 800ECF9C 000E9EDC  38 A3 00 00 */	addi r5, r3, 0
/* 800ECFA0 000E9EE0  4B FF FE D4 */	b __OSSaveFPUContext

.global OSSetCurrentContext
OSSetCurrentContext:
/* 800ECFA4 000E9EE4  3C 80 80 00 */	lis r4, 0x800000D4@ha
/* 800ECFA8 000E9EE8  90 64 00 D4 */	stw r3, 0x800000D4@l(r4)
/* 800ECFAC 000E9EEC  54 65 00 BE */	clrlwi r5, r3, 2
/* 800ECFB0 000E9EF0  90 A4 00 C0 */	stw r5, 0xc0(r4)
/* 800ECFB4 000E9EF4  80 A4 00 D8 */	lwz r5, 0xd8(r4)
/* 800ECFB8 000E9EF8  7C 05 18 00 */	cmpw r5, r3
/* 800ECFBC 000E9EFC  40 82 00 20 */	bne lbl_800ECFDC
/* 800ECFC0 000E9F00  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 800ECFC4 000E9F04  60 C6 20 00 */	ori r6, r6, 0x2000
/* 800ECFC8 000E9F08  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 800ECFCC 000E9F0C  7C C0 00 A6 */	mfmsr r6
/* 800ECFD0 000E9F10  60 C6 00 02 */	ori r6, r6, 2
/* 800ECFD4 000E9F14  7C C0 01 24 */	mtmsr r6
/* 800ECFD8 000E9F18  4E 80 00 20 */	blr 
lbl_800ECFDC:
/* 800ECFDC 000E9F1C  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 800ECFE0 000E9F20  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 800ECFE4 000E9F24  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 800ECFE8 000E9F28  7C C0 00 A6 */	mfmsr r6
/* 800ECFEC 000E9F2C  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 800ECFF0 000E9F30  60 C6 00 02 */	ori r6, r6, 2
/* 800ECFF4 000E9F34  7C C0 01 24 */	mtmsr r6
/* 800ECFF8 000E9F38  4C 00 01 2C */	isync 
/* 800ECFFC 000E9F3C  4E 80 00 20 */	blr 

.global OSGetCurrentContext
OSGetCurrentContext:
/* 800ED000 000E9F40  3C 60 80 00 */	lis r3, 0x800000D4@ha
/* 800ED004 000E9F44  80 63 00 D4 */	lwz r3, 0x800000D4@l(r3)
/* 800ED008 000E9F48  4E 80 00 20 */	blr 

.global OSSaveContext
OSSaveContext:
/* 800ED00C 000E9F4C  BD A3 00 34 */	stmw r13, 0x34(r3)
/* 800ED010 000E9F50  7C 11 E2 A6 */	mfspr r0, 0x391
/* 800ED014 000E9F54  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 800ED018 000E9F58  7C 12 E2 A6 */	mfspr r0, 0x392
/* 800ED01C 000E9F5C  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 800ED020 000E9F60  7C 13 E2 A6 */	mfspr r0, 0x393
/* 800ED024 000E9F64  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 800ED028 000E9F68  7C 14 E2 A6 */	mfspr r0, 0x394
/* 800ED02C 000E9F6C  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 800ED030 000E9F70  7C 15 E2 A6 */	mfspr r0, 0x395
/* 800ED034 000E9F74  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 800ED038 000E9F78  7C 16 E2 A6 */	mfspr r0, 0x396
/* 800ED03C 000E9F7C  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 800ED040 000E9F80  7C 17 E2 A6 */	mfspr r0, 0x397
/* 800ED044 000E9F84  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 800ED048 000E9F88  7C 00 00 26 */	mfcr r0
/* 800ED04C 000E9F8C  90 03 00 80 */	stw r0, 0x80(r3)
/* 800ED050 000E9F90  7C 08 02 A6 */	mflr r0
/* 800ED054 000E9F94  90 03 00 84 */	stw r0, 0x84(r3)
/* 800ED058 000E9F98  90 03 01 98 */	stw r0, 0x198(r3)
/* 800ED05C 000E9F9C  7C 00 00 A6 */	mfmsr r0
/* 800ED060 000E9FA0  90 03 01 9C */	stw r0, 0x19c(r3)
/* 800ED064 000E9FA4  7C 09 02 A6 */	mfctr r0
/* 800ED068 000E9FA8  90 03 00 88 */	stw r0, 0x88(r3)
/* 800ED06C 000E9FAC  7C 01 02 A6 */	mfxer r0
/* 800ED070 000E9FB0  90 03 00 8C */	stw r0, 0x8c(r3)
/* 800ED074 000E9FB4  90 23 00 04 */	stw r1, 4(r3)
/* 800ED078 000E9FB8  90 43 00 08 */	stw r2, 8(r3)
/* 800ED07C 000E9FBC  38 00 00 01 */	li r0, 1
/* 800ED080 000E9FC0  90 03 00 0C */	stw r0, 0xc(r3)
/* 800ED084 000E9FC4  38 60 00 00 */	li r3, 0
/* 800ED088 000E9FC8  4E 80 00 20 */	blr 

.global OSLoadContext
OSLoadContext:
/* 800ED08C 000E9FCC  3C 80 80 0F */	lis r4, OSDisableInterrupts@ha
/* 800ED090 000E9FD0  80 C3 01 98 */	lwz r6, 0x198(r3)
/* 800ED094 000E9FD4  38 A4 EC 38 */	addi r5, r4, OSDisableInterrupts@l
/* 800ED098 000E9FD8  7C 06 28 40 */	cmplw r6, r5
/* 800ED09C 000E9FDC  40 81 00 18 */	ble lbl_800ED0B4
/* 800ED0A0 000E9FE0  3C 80 80 0F */	lis r4, __RAS_OSDisableInterrupts_end@ha
/* 800ED0A4 000E9FE4  38 04 EC 44 */	addi r0, r4, __RAS_OSDisableInterrupts_end@l
/* 800ED0A8 000E9FE8  7C 06 00 40 */	cmplw r6, r0
/* 800ED0AC 000E9FEC  40 80 00 08 */	bge lbl_800ED0B4
/* 800ED0B0 000E9FF0  90 A3 01 98 */	stw r5, 0x198(r3)
lbl_800ED0B4:
/* 800ED0B4 000E9FF4  80 03 00 00 */	lwz r0, 0(r3)
/* 800ED0B8 000E9FF8  80 23 00 04 */	lwz r1, 4(r3)
/* 800ED0BC 000E9FFC  80 43 00 08 */	lwz r2, 8(r3)
/* 800ED0C0 000EA000  A0 83 01 A2 */	lhz r4, 0x1a2(r3)
/* 800ED0C4 000EA004  54 85 07 BD */	rlwinm. r5, r4, 0, 0x1e, 0x1e
/* 800ED0C8 000EA008  41 82 00 14 */	beq lbl_800ED0DC
/* 800ED0CC 000EA00C  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 800ED0D0 000EA010  B0 83 01 A2 */	sth r4, 0x1a2(r3)
/* 800ED0D4 000EA014  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 800ED0D8 000EA018  48 00 00 08 */	b lbl_800ED0E0
lbl_800ED0DC:
/* 800ED0DC 000EA01C  B9 A3 00 34 */	lmw r13, 0x34(r3)
lbl_800ED0E0:
/* 800ED0E0 000EA020  80 83 01 A8 */	lwz r4, 0x1a8(r3)
/* 800ED0E4 000EA024  7C 91 E3 A6 */	mtspr 0x391, r4
/* 800ED0E8 000EA028  80 83 01 AC */	lwz r4, 0x1ac(r3)
/* 800ED0EC 000EA02C  7C 92 E3 A6 */	mtspr 0x392, r4
/* 800ED0F0 000EA030  80 83 01 B0 */	lwz r4, 0x1b0(r3)
/* 800ED0F4 000EA034  7C 93 E3 A6 */	mtspr 0x393, r4
/* 800ED0F8 000EA038  80 83 01 B4 */	lwz r4, 0x1b4(r3)
/* 800ED0FC 000EA03C  7C 94 E3 A6 */	mtspr 0x394, r4
/* 800ED100 000EA040  80 83 01 B8 */	lwz r4, 0x1b8(r3)
/* 800ED104 000EA044  7C 95 E3 A6 */	mtspr 0x395, r4
/* 800ED108 000EA048  80 83 01 BC */	lwz r4, 0x1bc(r3)
/* 800ED10C 000EA04C  7C 96 E3 A6 */	mtspr 0x396, r4
/* 800ED110 000EA050  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 800ED114 000EA054  7C 97 E3 A6 */	mtspr 0x397, r4
/* 800ED118 000EA058  80 83 00 80 */	lwz r4, 0x80(r3)
/* 800ED11C 000EA05C  7C 8F F1 20 */	mtcrf 0xff, r4
/* 800ED120 000EA060  80 83 00 84 */	lwz r4, 0x84(r3)
/* 800ED124 000EA064  7C 88 03 A6 */	mtlr r4
/* 800ED128 000EA068  80 83 00 88 */	lwz r4, 0x88(r3)
/* 800ED12C 000EA06C  7C 89 03 A6 */	mtctr r4
/* 800ED130 000EA070  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 800ED134 000EA074  7C 81 03 A6 */	mtxer r4
/* 800ED138 000EA078  7C 80 00 A6 */	mfmsr r4
/* 800ED13C 000EA07C  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 800ED140 000EA080  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 800ED144 000EA084  7C 80 01 24 */	mtmsr r4
/* 800ED148 000EA088  80 83 01 98 */	lwz r4, 0x198(r3)
/* 800ED14C 000EA08C  7C 9A 03 A6 */	mtspr 0x1a, r4
/* 800ED150 000EA090  80 83 01 9C */	lwz r4, 0x19c(r3)
/* 800ED154 000EA094  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 800ED158 000EA098  80 83 00 10 */	lwz r4, 0x10(r3)
/* 800ED15C 000EA09C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED160 000EA0A0  4C 00 00 64 */	rfi 

.global OSGetStackPointer
OSGetStackPointer:
/* 800ED164 000EA0A4  7C 23 0B 78 */	mr r3, r1
/* 800ED168 000EA0A8  4E 80 00 20 */	blr 

.global OSClearContext
OSClearContext:
/* 800ED16C 000EA0AC  38 A0 00 00 */	li r5, 0
/* 800ED170 000EA0B0  B0 A3 01 A0 */	sth r5, 0x1a0(r3)
/* 800ED174 000EA0B4  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 800ED178 000EA0B8  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 800ED17C 000EA0BC  80 04 00 D8 */	lwz r0, 0x800000D8@l(r4)
/* 800ED180 000EA0C0  7C 03 00 40 */	cmplw r3, r0
/* 800ED184 000EA0C4  40 82 00 08 */	bne lbl_800ED18C
/* 800ED188 000EA0C8  90 A4 00 D8 */	stw r5, 0xd8(r4)
lbl_800ED18C:
/* 800ED18C 000EA0CC  4E 80 00 20 */	blr 

.global OSInitContext
OSInitContext:
/* 800ED190 000EA0D0  90 83 01 98 */	stw r4, 0x198(r3)
/* 800ED194 000EA0D4  90 A3 00 04 */	stw r5, 4(r3)
/* 800ED198 000EA0D8  39 60 00 00 */	li r11, 0
/* 800ED19C 000EA0DC  61 6B 90 32 */	ori r11, r11, 0x9032
/* 800ED1A0 000EA0E0  91 63 01 9C */	stw r11, 0x19c(r3)
/* 800ED1A4 000EA0E4  38 00 00 00 */	li r0, 0
/* 800ED1A8 000EA0E8  90 03 00 80 */	stw r0, 0x80(r3)
/* 800ED1AC 000EA0EC  90 03 00 8C */	stw r0, 0x8c(r3)
/* 800ED1B0 000EA0F0  90 43 00 08 */	stw r2, 8(r3)
/* 800ED1B4 000EA0F4  91 A3 00 34 */	stw r13, 0x34(r3)
/* 800ED1B8 000EA0F8  90 03 00 0C */	stw r0, 0xc(r3)
/* 800ED1BC 000EA0FC  90 03 00 10 */	stw r0, 0x10(r3)
/* 800ED1C0 000EA100  90 03 00 14 */	stw r0, 0x14(r3)
/* 800ED1C4 000EA104  90 03 00 18 */	stw r0, 0x18(r3)
/* 800ED1C8 000EA108  90 03 00 1C */	stw r0, 0x1c(r3)
/* 800ED1CC 000EA10C  90 03 00 20 */	stw r0, 0x20(r3)
/* 800ED1D0 000EA110  90 03 00 24 */	stw r0, 0x24(r3)
/* 800ED1D4 000EA114  90 03 00 28 */	stw r0, 0x28(r3)
/* 800ED1D8 000EA118  90 03 00 2C */	stw r0, 0x2c(r3)
/* 800ED1DC 000EA11C  90 03 00 30 */	stw r0, 0x30(r3)
/* 800ED1E0 000EA120  90 03 00 38 */	stw r0, 0x38(r3)
/* 800ED1E4 000EA124  90 03 00 3C */	stw r0, 0x3c(r3)
/* 800ED1E8 000EA128  90 03 00 40 */	stw r0, 0x40(r3)
/* 800ED1EC 000EA12C  90 03 00 44 */	stw r0, 0x44(r3)
/* 800ED1F0 000EA130  90 03 00 48 */	stw r0, 0x48(r3)
/* 800ED1F4 000EA134  90 03 00 4C */	stw r0, 0x4c(r3)
/* 800ED1F8 000EA138  90 03 00 50 */	stw r0, 0x50(r3)
/* 800ED1FC 000EA13C  90 03 00 54 */	stw r0, 0x54(r3)
/* 800ED200 000EA140  90 03 00 58 */	stw r0, 0x58(r3)
/* 800ED204 000EA144  90 03 00 5C */	stw r0, 0x5c(r3)
/* 800ED208 000EA148  90 03 00 60 */	stw r0, 0x60(r3)
/* 800ED20C 000EA14C  90 03 00 64 */	stw r0, 0x64(r3)
/* 800ED210 000EA150  90 03 00 68 */	stw r0, 0x68(r3)
/* 800ED214 000EA154  90 03 00 6C */	stw r0, 0x6c(r3)
/* 800ED218 000EA158  90 03 00 70 */	stw r0, 0x70(r3)
/* 800ED21C 000EA15C  90 03 00 74 */	stw r0, 0x74(r3)
/* 800ED220 000EA160  90 03 00 78 */	stw r0, 0x78(r3)
/* 800ED224 000EA164  90 03 00 7C */	stw r0, 0x7c(r3)
/* 800ED228 000EA168  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 800ED22C 000EA16C  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 800ED230 000EA170  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 800ED234 000EA174  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 800ED238 000EA178  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 800ED23C 000EA17C  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 800ED240 000EA180  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 800ED244 000EA184  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 800ED248 000EA188  4B FF FF 24 */	b OSClearContext

.global OSDumpContext
OSDumpContext:
/* 800ED24C 000EA18C  7C 08 02 A6 */	mflr r0
/* 800ED250 000EA190  90 01 00 04 */	stw r0, 4(r1)
/* 800ED254 000EA194  94 21 FD 08 */	stwu r1, -0x2f8(r1)
/* 800ED258 000EA198  BF 21 02 DC */	stmw r25, 0x2dc(r1)
/* 800ED25C 000EA19C  7C 7C 1B 78 */	mr r28, r3
/* 800ED260 000EA1A0  3C 60 80 4B */	lis r3, lbl_804A8DB8@ha
/* 800ED264 000EA1A4  4C C6 31 82 */	crclr 6
/* 800ED268 000EA1A8  3B E3 8D B8 */	addi r31, r3, lbl_804A8DB8@l
/* 800ED26C 000EA1AC  7F E3 FB 78 */	mr r3, r31
/* 800ED270 000EA1B0  7F 84 E3 78 */	mr r4, r28
/* 800ED274 000EA1B4  48 00 04 79 */	bl OSReport
/* 800ED278 000EA1B8  3B 20 00 00 */	li r25, 0
/* 800ED27C 000EA1BC  57 20 10 3A */	slwi r0, r25, 2
/* 800ED280 000EA1C0  7F 7C 02 14 */	add r27, r28, r0
/* 800ED284 000EA1C4  48 00 00 04 */	b lbl_800ED288
lbl_800ED288:
/* 800ED288 000EA1C8  48 00 00 04 */	b lbl_800ED28C
lbl_800ED28C:
/* 800ED28C 000EA1CC  48 00 00 04 */	b lbl_800ED290
lbl_800ED290:
/* 800ED290 000EA1D0  81 1B 00 40 */	lwz r8, 0x40(r27)
/* 800ED294 000EA1D4  7F 24 CB 78 */	mr r4, r25
/* 800ED298 000EA1D8  80 BB 00 00 */	lwz r5, 0(r27)
/* 800ED29C 000EA1DC  38 7F 00 44 */	addi r3, r31, 0x44
/* 800ED2A0 000EA1E0  4C C6 31 82 */	crclr 6
/* 800ED2A4 000EA1E4  7C A6 2B 78 */	mr r6, r5
/* 800ED2A8 000EA1E8  7D 09 43 78 */	mr r9, r8
/* 800ED2AC 000EA1EC  38 F9 00 10 */	addi r7, r25, 0x10
/* 800ED2B0 000EA1F0  48 00 04 3D */	bl OSReport
/* 800ED2B4 000EA1F4  3B 7B 00 04 */	addi r27, r27, 4
/* 800ED2B8 000EA1F8  3B 39 00 01 */	addi r25, r25, 1
/* 800ED2BC 000EA1FC  28 19 00 10 */	cmplwi r25, 0x10
/* 800ED2C0 000EA200  41 80 FF D0 */	blt lbl_800ED290
/* 800ED2C4 000EA204  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 800ED2C8 000EA208  38 7F 00 74 */	addi r3, r31, 0x74
/* 800ED2CC 000EA20C  80 BC 00 80 */	lwz r5, 0x80(r28)
/* 800ED2D0 000EA210  4C C6 31 82 */	crclr 6
/* 800ED2D4 000EA214  48 00 04 19 */	bl OSReport
/* 800ED2D8 000EA218  80 9C 01 98 */	lwz r4, 0x198(r28)
/* 800ED2DC 000EA21C  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 800ED2E0 000EA220  80 BC 01 9C */	lwz r5, 0x19c(r28)
/* 800ED2E4 000EA224  4C C6 31 82 */	crclr 6
/* 800ED2E8 000EA228  48 00 04 05 */	bl OSReport
/* 800ED2EC 000EA22C  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 800ED2F0 000EA230  4C C6 31 82 */	crclr 6
/* 800ED2F4 000EA234  48 00 03 F9 */	bl OSReport
/* 800ED2F8 000EA238  3B 20 00 00 */	li r25, 0
/* 800ED2FC 000EA23C  57 20 10 3A */	slwi r0, r25, 2
/* 800ED300 000EA240  7F 7C 02 14 */	add r27, r28, r0
/* 800ED304 000EA244  48 00 00 04 */	b lbl_800ED308
lbl_800ED308:
/* 800ED308 000EA248  48 00 00 04 */	b lbl_800ED30C
lbl_800ED30C:
/* 800ED30C 000EA24C  48 00 00 04 */	b lbl_800ED310
lbl_800ED310:
/* 800ED310 000EA250  80 BB 01 A4 */	lwz r5, 0x1a4(r27)
/* 800ED314 000EA254  7F 24 CB 78 */	mr r4, r25
/* 800ED318 000EA258  80 FB 01 B4 */	lwz r7, 0x1b4(r27)
/* 800ED31C 000EA25C  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 800ED320 000EA260  38 D9 00 04 */	addi r6, r25, 4
/* 800ED324 000EA264  4C C6 31 82 */	crclr 6
/* 800ED328 000EA268  48 00 03 C5 */	bl OSReport
/* 800ED32C 000EA26C  3B 7B 00 04 */	addi r27, r27, 4
/* 800ED330 000EA270  3B 39 00 01 */	addi r25, r25, 1
/* 800ED334 000EA274  28 19 00 04 */	cmplwi r25, 4
/* 800ED338 000EA278  41 80 FF D8 */	blt lbl_800ED310
/* 800ED33C 000EA27C  A0 1C 01 A2 */	lhz r0, 0x1a2(r28)
/* 800ED340 000EA280  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 800ED344 000EA284  28 00 00 00 */	cmplwi r0, 0
/* 800ED348 000EA288  41 82 01 3C */	beq lbl_800ED484
/* 800ED34C 000EA28C  48 00 18 ED */	bl OSDisableInterrupts
/* 800ED350 000EA290  3C C0 80 00 */	lis r6, 0x800000D4@ha
/* 800ED354 000EA294  80 06 00 D4 */	lwz r0, 0x800000D4@l(r6)
/* 800ED358 000EA298  38 A0 00 00 */	li r5, 0
/* 800ED35C 000EA29C  38 81 00 10 */	addi r4, r1, 0x10
/* 800ED360 000EA2A0  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 800ED364 000EA2A4  7C 1E 03 78 */	mr r30, r0
/* 800ED368 000EA2A8  7C 7D 1B 78 */	mr r29, r3
/* 800ED36C 000EA2AC  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 800ED370 000EA2B0  80 06 00 D8 */	lwz r0, 0xd8(r6)
/* 800ED374 000EA2B4  7C 04 00 40 */	cmplw r4, r0
/* 800ED378 000EA2B8  40 82 00 08 */	bne lbl_800ED380
/* 800ED37C 000EA2BC  90 A6 00 D8 */	stw r5, 0xd8(r6)
lbl_800ED380:
/* 800ED380 000EA2C0  38 61 00 10 */	addi r3, r1, 0x10
/* 800ED384 000EA2C4  4B FF FC 21 */	bl OSSetCurrentContext
/* 800ED388 000EA2C8  38 7F 01 0C */	addi r3, r31, 0x10c
/* 800ED38C 000EA2CC  4C C6 31 82 */	crclr 6
/* 800ED390 000EA2D0  48 00 03 5D */	bl OSReport
/* 800ED394 000EA2D4  3B 20 00 00 */	li r25, 0
/* 800ED398 000EA2D8  57 20 18 38 */	slwi r0, r25, 3
/* 800ED39C 000EA2DC  7F 5C 02 14 */	add r26, r28, r0
/* 800ED3A0 000EA2E0  48 00 00 04 */	b lbl_800ED3A4
lbl_800ED3A4:
/* 800ED3A4 000EA2E4  48 00 00 04 */	b lbl_800ED3A8
lbl_800ED3A8:
/* 800ED3A8 000EA2E8  48 00 00 04 */	b lbl_800ED3AC
lbl_800ED3AC:
/* 800ED3AC 000EA2EC  C8 3A 00 98 */	lfd f1, 0x98(r26)
/* 800ED3B0 000EA2F0  4B FD 47 9D */	bl __cvt_fp2unsigned
/* 800ED3B4 000EA2F4  7C 7B 1B 78 */	mr r27, r3
/* 800ED3B8 000EA2F8  C8 3A 00 90 */	lfd f1, 0x90(r26)
/* 800ED3BC 000EA2FC  4B FD 47 91 */	bl __cvt_fp2unsigned
/* 800ED3C0 000EA300  7C 65 1B 78 */	mr r5, r3
/* 800ED3C4 000EA304  4C C6 31 82 */	crclr 6
/* 800ED3C8 000EA308  7F 24 CB 78 */	mr r4, r25
/* 800ED3CC 000EA30C  7F 67 DB 78 */	mr r7, r27
/* 800ED3D0 000EA310  38 7F 01 20 */	addi r3, r31, 0x120
/* 800ED3D4 000EA314  38 D9 00 01 */	addi r6, r25, 1
/* 800ED3D8 000EA318  48 00 03 15 */	bl OSReport
/* 800ED3DC 000EA31C  3B 5A 00 10 */	addi r26, r26, 0x10
/* 800ED3E0 000EA320  3B 39 00 02 */	addi r25, r25, 2
/* 800ED3E4 000EA324  28 19 00 20 */	cmplwi r25, 0x20
/* 800ED3E8 000EA328  41 80 FF C4 */	blt lbl_800ED3AC
/* 800ED3EC 000EA32C  38 7F 01 3C */	addi r3, r31, 0x13c
/* 800ED3F0 000EA330  4C C6 31 82 */	crclr 6
/* 800ED3F4 000EA334  48 00 02 F9 */	bl OSReport
/* 800ED3F8 000EA338  3B 20 00 00 */	li r25, 0
/* 800ED3FC 000EA33C  57 20 18 38 */	slwi r0, r25, 3
/* 800ED400 000EA340  7F 5C 02 14 */	add r26, r28, r0
/* 800ED404 000EA344  48 00 00 04 */	b lbl_800ED408
lbl_800ED408:
/* 800ED408 000EA348  48 00 00 04 */	b lbl_800ED40C
lbl_800ED40C:
/* 800ED40C 000EA34C  48 00 00 04 */	b lbl_800ED410
lbl_800ED410:
/* 800ED410 000EA350  C8 3A 01 D0 */	lfd f1, 0x1d0(r26)
/* 800ED414 000EA354  4B FD 47 39 */	bl __cvt_fp2unsigned
/* 800ED418 000EA358  7C 7B 1B 78 */	mr r27, r3
/* 800ED41C 000EA35C  C8 3A 01 C8 */	lfd f1, 0x1c8(r26)
/* 800ED420 000EA360  4B FD 47 2D */	bl __cvt_fp2unsigned
/* 800ED424 000EA364  7C 65 1B 78 */	mr r5, r3
/* 800ED428 000EA368  4C C6 31 82 */	crclr 6
/* 800ED42C 000EA36C  7F 24 CB 78 */	mr r4, r25
/* 800ED430 000EA370  7F 67 DB 78 */	mr r7, r27
/* 800ED434 000EA374  38 7F 01 50 */	addi r3, r31, 0x150
/* 800ED438 000EA378  38 D9 00 01 */	addi r6, r25, 1
/* 800ED43C 000EA37C  48 00 02 B1 */	bl OSReport
/* 800ED440 000EA380  3B 5A 00 10 */	addi r26, r26, 0x10
/* 800ED444 000EA384  3B 39 00 02 */	addi r25, r25, 2
/* 800ED448 000EA388  28 19 00 20 */	cmplwi r25, 0x20
/* 800ED44C 000EA38C  41 80 FF C4 */	blt lbl_800ED410
/* 800ED450 000EA390  38 A0 00 00 */	li r5, 0
/* 800ED454 000EA394  B0 A1 01 B0 */	sth r5, 0x1b0(r1)
/* 800ED458 000EA398  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 800ED45C 000EA39C  38 81 00 10 */	addi r4, r1, 0x10
/* 800ED460 000EA3A0  B0 A1 01 B2 */	sth r5, 0x1b2(r1)
/* 800ED464 000EA3A4  80 03 00 D8 */	lwz r0, 0x800000D8@l(r3)
/* 800ED468 000EA3A8  7C 04 00 40 */	cmplw r4, r0
/* 800ED46C 000EA3AC  40 82 00 08 */	bne lbl_800ED474
/* 800ED470 000EA3B0  90 A3 00 D8 */	stw r5, 0xd8(r3)
lbl_800ED474:
/* 800ED474 000EA3B4  7F C3 F3 78 */	mr r3, r30
/* 800ED478 000EA3B8  4B FF FB 2D */	bl OSSetCurrentContext
/* 800ED47C 000EA3BC  7F A3 EB 78 */	mr r3, r29
/* 800ED480 000EA3C0  48 00 17 E1 */	bl OSRestoreInterrupts
lbl_800ED484:
/* 800ED484 000EA3C4  38 7F 01 70 */	addi r3, r31, 0x170
/* 800ED488 000EA3C8  4C C6 31 82 */	crclr 6
/* 800ED48C 000EA3CC  48 00 02 61 */	bl OSReport
/* 800ED490 000EA3D0  83 3C 00 04 */	lwz r25, 4(r28)
/* 800ED494 000EA3D4  3B 40 00 00 */	li r26, 0
/* 800ED498 000EA3D8  48 00 00 04 */	b lbl_800ED49C
lbl_800ED49C:
/* 800ED49C 000EA3DC  48 00 00 04 */	b lbl_800ED4A0
lbl_800ED4A0:
/* 800ED4A0 000EA3E0  48 00 00 20 */	b lbl_800ED4C0
lbl_800ED4A4:
/* 800ED4A4 000EA3E4  80 B9 00 00 */	lwz r5, 0(r25)
/* 800ED4A8 000EA3E8  7F 24 CB 78 */	mr r4, r25
/* 800ED4AC 000EA3EC  80 D9 00 04 */	lwz r6, 4(r25)
/* 800ED4B0 000EA3F0  38 7F 01 98 */	addi r3, r31, 0x198
/* 800ED4B4 000EA3F4  4C C6 31 82 */	crclr 6
/* 800ED4B8 000EA3F8  48 00 02 35 */	bl OSReport
/* 800ED4BC 000EA3FC  83 39 00 00 */	lwz r25, 0(r25)
lbl_800ED4C0:
/* 800ED4C0 000EA400  28 19 00 00 */	cmplwi r25, 0
/* 800ED4C4 000EA404  41 82 00 1C */	beq lbl_800ED4E0
/* 800ED4C8 000EA408  3C 19 00 01 */	addis r0, r25, 1
/* 800ED4CC 000EA40C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800ED4D0 000EA410  41 82 00 10 */	beq lbl_800ED4E0
/* 800ED4D4 000EA414  28 1A 00 10 */	cmplwi r26, 0x10
/* 800ED4D8 000EA418  3B 5A 00 01 */	addi r26, r26, 1
/* 800ED4DC 000EA41C  41 80 FF C8 */	blt lbl_800ED4A4
lbl_800ED4E0:
/* 800ED4E0 000EA420  BB 21 02 DC */	lmw r25, 0x2dc(r1)
/* 800ED4E4 000EA424  80 01 02 FC */	lwz r0, 0x2fc(r1)
/* 800ED4E8 000EA428  38 21 02 F8 */	addi r1, r1, 0x2f8
/* 800ED4EC 000EA42C  7C 08 03 A6 */	mtlr r0
/* 800ED4F0 000EA430  4E 80 00 20 */	blr 

.global OSSwitchFPUContext
OSSwitchFPUContext:
/* 800ED4F4 000EA434  7C A0 00 A6 */	mfmsr r5
/* 800ED4F8 000EA438  60 A5 20 00 */	ori r5, r5, 0x2000
/* 800ED4FC 000EA43C  7C A0 01 24 */	mtmsr r5
/* 800ED500 000EA440  4C 00 01 2C */	isync 
/* 800ED504 000EA444  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 800ED508 000EA448  60 A5 20 00 */	ori r5, r5, 0x2000
/* 800ED50C 000EA44C  7C BB 03 A6 */	mtspr 0x1b, r5
/* 800ED510 000EA450  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 800ED514 000EA454  80 A3 00 D8 */	lwz r5, 0x800000D8@l(r3)
/* 800ED518 000EA458  90 83 00 D8 */	stw r4, 0xd8(r3)
/* 800ED51C 000EA45C  7C 05 20 00 */	cmpw r5, r4
/* 800ED520 000EA460  41 82 00 14 */	beq lbl_800ED534
/* 800ED524 000EA464  2C 05 00 00 */	cmpwi r5, 0
/* 800ED528 000EA468  41 82 00 08 */	beq lbl_800ED530
/* 800ED52C 000EA46C  4B FF F9 49 */	bl __OSSaveFPUContext
lbl_800ED530:
/* 800ED530 000EA470  4B FF F8 21 */	bl __OSLoadFPUContext
lbl_800ED534:
/* 800ED534 000EA474  80 64 00 80 */	lwz r3, 0x80(r4)
/* 800ED538 000EA478  7C 6F F1 20 */	mtcrf 0xff, r3
/* 800ED53C 000EA47C  80 64 00 84 */	lwz r3, 0x84(r4)
/* 800ED540 000EA480  7C 68 03 A6 */	mtlr r3
/* 800ED544 000EA484  80 64 01 98 */	lwz r3, 0x198(r4)
/* 800ED548 000EA488  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 800ED54C 000EA48C  80 64 00 88 */	lwz r3, 0x88(r4)
/* 800ED550 000EA490  7C 69 03 A6 */	mtctr r3
/* 800ED554 000EA494  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 800ED558 000EA498  7C 61 03 A6 */	mtxer r3
/* 800ED55C 000EA49C  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 800ED560 000EA4A0  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 800ED564 000EA4A4  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 800ED568 000EA4A8  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 800ED56C 000EA4AC  80 64 00 0C */	lwz r3, 0xc(r4)
/* 800ED570 000EA4B0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 800ED574 000EA4B4  4C 00 00 64 */	rfi 

.global __OSContextInit
__OSContextInit:
/* 800ED578 000EA4B8  7C 08 02 A6 */	mflr r0
/* 800ED57C 000EA4BC  90 01 00 04 */	stw r0, 4(r1)
/* 800ED580 000EA4C0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800ED584 000EA4C4  3C 60 80 0F */	lis r3, OSSwitchFPUContext@ha
/* 800ED588 000EA4C8  38 83 D4 F4 */	addi r4, r3, OSSwitchFPUContext@l
/* 800ED58C 000EA4CC  38 60 00 07 */	li r3, 7
/* 800ED590 000EA4D0  4B FF E3 6D */	bl __OSSetExceptionHandler
/* 800ED594 000EA4D4  38 00 00 00 */	li r0, 0
/* 800ED598 000EA4D8  4C C6 31 82 */	crclr 6
/* 800ED59C 000EA4DC  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 800ED5A0 000EA4E0  3C 60 80 4B */	lis r3, lbl_804A8F6C@ha
/* 800ED5A4 000EA4E4  90 04 00 D8 */	stw r0, 0x800000D8@l(r4)
/* 800ED5A8 000EA4E8  38 63 8F 6C */	addi r3, r3, lbl_804A8F6C@l
/* 800ED5AC 000EA4EC  4B FE D6 B5 */	bl DBPrintf
/* 800ED5B0 000EA4F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800ED5B4 000EA4F4  38 21 00 08 */	addi r1, r1, 8
/* 800ED5B8 000EA4F8  7C 08 03 A6 */	mtlr r0
/* 800ED5BC 000EA4FC  4E 80 00 20 */	blr 

.global OSFillFPUContext
OSFillFPUContext:
/* 800ED5C0 000EA500  7C A0 00 A6 */	mfmsr r5
/* 800ED5C4 000EA504  60 A5 20 00 */	ori r5, r5, 0x2000
/* 800ED5C8 000EA508  7C A0 01 24 */	mtmsr r5
/* 800ED5CC 000EA50C  4C 00 01 2C */	isync 
/* 800ED5D0 000EA510  D8 03 00 90 */	stfd f0, 0x90(r3)
/* 800ED5D4 000EA514  D8 23 00 98 */	stfd f1, 0x98(r3)
/* 800ED5D8 000EA518  D8 43 00 A0 */	stfd f2, 0xa0(r3)
/* 800ED5DC 000EA51C  D8 63 00 A8 */	stfd f3, 0xa8(r3)
/* 800ED5E0 000EA520  D8 83 00 B0 */	stfd f4, 0xb0(r3)
/* 800ED5E4 000EA524  D8 A3 00 B8 */	stfd f5, 0xb8(r3)
/* 800ED5E8 000EA528  D8 C3 00 C0 */	stfd f6, 0xc0(r3)
/* 800ED5EC 000EA52C  D8 E3 00 C8 */	stfd f7, 0xc8(r3)
/* 800ED5F0 000EA530  D9 03 00 D0 */	stfd f8, 0xd0(r3)
/* 800ED5F4 000EA534  D9 23 00 D8 */	stfd f9, 0xd8(r3)
/* 800ED5F8 000EA538  D9 43 00 E0 */	stfd f10, 0xe0(r3)
/* 800ED5FC 000EA53C  D9 63 00 E8 */	stfd f11, 0xe8(r3)
/* 800ED600 000EA540  D9 83 00 F0 */	stfd f12, 0xf0(r3)
/* 800ED604 000EA544  D9 A3 00 F8 */	stfd f13, 0xf8(r3)
/* 800ED608 000EA548  D9 C3 01 00 */	stfd f14, 0x100(r3)
/* 800ED60C 000EA54C  D9 E3 01 08 */	stfd f15, 0x108(r3)
/* 800ED610 000EA550  DA 03 01 10 */	stfd f16, 0x110(r3)
/* 800ED614 000EA554  DA 23 01 18 */	stfd f17, 0x118(r3)
/* 800ED618 000EA558  DA 43 01 20 */	stfd f18, 0x120(r3)
/* 800ED61C 000EA55C  DA 63 01 28 */	stfd f19, 0x128(r3)
/* 800ED620 000EA560  DA 83 01 30 */	stfd f20, 0x130(r3)
/* 800ED624 000EA564  DA A3 01 38 */	stfd f21, 0x138(r3)
/* 800ED628 000EA568  DA C3 01 40 */	stfd f22, 0x140(r3)
/* 800ED62C 000EA56C  DA E3 01 48 */	stfd f23, 0x148(r3)
/* 800ED630 000EA570  DB 03 01 50 */	stfd f24, 0x150(r3)
/* 800ED634 000EA574  DB 23 01 58 */	stfd f25, 0x158(r3)
/* 800ED638 000EA578  DB 43 01 60 */	stfd f26, 0x160(r3)
/* 800ED63C 000EA57C  DB 63 01 68 */	stfd f27, 0x168(r3)
/* 800ED640 000EA580  DB 83 01 70 */	stfd f28, 0x170(r3)
/* 800ED644 000EA584  DB A3 01 78 */	stfd f29, 0x178(r3)
/* 800ED648 000EA588  DB C3 01 80 */	stfd f30, 0x180(r3)
/* 800ED64C 000EA58C  DB E3 01 88 */	stfd f31, 0x188(r3)
/* 800ED650 000EA590  FC 00 04 8E */	mffs f0
/* 800ED654 000EA594  D8 03 01 90 */	stfd f0, 0x190(r3)
/* 800ED658 000EA598  C8 03 00 90 */	lfd f0, 0x90(r3)
/* 800ED65C 000EA59C  7C B8 E2 A6 */	mfspr r5, 0x398
/* 800ED660 000EA5A0  54 A5 1F FF */	rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 800ED664 000EA5A4  41 82 00 84 */	beq lbl_800ED6E8
/* 800ED668 000EA5A8  F0 03 01 C8 */	psq_st f0, 456(r3), 0, qr0
/* 800ED66C 000EA5AC  F0 23 01 D0 */	psq_st f1, 464(r3), 0, qr0
/* 800ED670 000EA5B0  F0 43 01 D8 */	psq_st f2, 472(r3), 0, qr0
/* 800ED674 000EA5B4  F0 63 01 E0 */	psq_st f3, 480(r3), 0, qr0
/* 800ED678 000EA5B8  F0 83 01 E8 */	psq_st f4, 488(r3), 0, qr0
/* 800ED67C 000EA5BC  F0 A3 01 F0 */	psq_st f5, 496(r3), 0, qr0
/* 800ED680 000EA5C0  F0 C3 01 F8 */	psq_st f6, 504(r3), 0, qr0
/* 800ED684 000EA5C4  F0 E3 02 00 */	psq_st f7, 512(r3), 0, qr0
/* 800ED688 000EA5C8  F1 03 02 08 */	psq_st f8, 520(r3), 0, qr0
/* 800ED68C 000EA5CC  F1 23 02 10 */	psq_st f9, 528(r3), 0, qr0
/* 800ED690 000EA5D0  F1 43 02 18 */	psq_st f10, 536(r3), 0, qr0
/* 800ED694 000EA5D4  F1 63 02 20 */	psq_st f11, 544(r3), 0, qr0
/* 800ED698 000EA5D8  F1 83 02 28 */	psq_st f12, 552(r3), 0, qr0
/* 800ED69C 000EA5DC  F1 A3 02 30 */	psq_st f13, 560(r3), 0, qr0
/* 800ED6A0 000EA5E0  F1 C3 02 38 */	psq_st f14, 568(r3), 0, qr0
/* 800ED6A4 000EA5E4  F1 E3 02 40 */	psq_st f15, 576(r3), 0, qr0
/* 800ED6A8 000EA5E8  F2 03 02 48 */	psq_st f16, 584(r3), 0, qr0
/* 800ED6AC 000EA5EC  F2 23 02 50 */	psq_st f17, 592(r3), 0, qr0
/* 800ED6B0 000EA5F0  F2 43 02 58 */	psq_st f18, 600(r3), 0, qr0
/* 800ED6B4 000EA5F4  F2 63 02 60 */	psq_st f19, 608(r3), 0, qr0
/* 800ED6B8 000EA5F8  F2 83 02 68 */	psq_st f20, 616(r3), 0, qr0
/* 800ED6BC 000EA5FC  F2 A3 02 70 */	psq_st f21, 624(r3), 0, qr0
/* 800ED6C0 000EA600  F2 C3 02 78 */	psq_st f22, 632(r3), 0, qr0
/* 800ED6C4 000EA604  F2 E3 02 80 */	psq_st f23, 640(r3), 0, qr0
/* 800ED6C8 000EA608  F3 03 02 88 */	psq_st f24, 648(r3), 0, qr0
/* 800ED6CC 000EA60C  F3 23 02 90 */	psq_st f25, 656(r3), 0, qr0
/* 800ED6D0 000EA610  F3 43 02 98 */	psq_st f26, 664(r3), 0, qr0
/* 800ED6D4 000EA614  F3 63 02 A0 */	psq_st f27, 672(r3), 0, qr0
/* 800ED6D8 000EA618  F3 83 02 A8 */	psq_st f28, 680(r3), 0, qr0
/* 800ED6DC 000EA61C  F3 A3 02 B0 */	psq_st f29, 688(r3), 0, qr0
/* 800ED6E0 000EA620  F3 C3 02 B8 */	psq_st f30, 696(r3), 0, qr0
/* 800ED6E4 000EA624  F3 E3 02 C0 */	psq_st f31, 704(r3), 0, qr0
lbl_800ED6E8:
/* 800ED6E8 000EA628  4E 80 00 20 */	blr 
