#include "Dolphin/dsp.h"
#include "types.h"
#include "JSystem/JAudio2/DSP.h"

static DSPTaskInfo audio_task;
static u16 AUDIO_YIELD_BUFFER[0x1000];
static u8 taskwork[0x80];

u16 jdsp[3728] ATTRIBUTE_ALIGN(32)
    = { 0x29f, 0x12,  0,     0,    0x2ff,  0,     0x2ff, 0,      0x2ff, 0,      0x2ff, 0, 0x2ff, 0,
	    0x29f, 0x5b8, 0x29f, 0x4e, 0x1205, 0x2bf, 0x57,  0x8100, 0x9f,  0x1000, 0x80,  0, 0x5f,  0x1b1e }; // placeholder

/*
 * --INFO--
 * Address:	800AA900
 * Size:	000038
 */
void DspHandShake(void* a1)
{
	do {
		;
	} while (!DSPCheckMailFromDSP());
	DSPReadMailFromDSP();
	DSPCheckMailFromDSP();
	Dsp_Running_Start();
}

/*
 * --INFO--
 * Address:	800AA940
 * Size:	0000AC
 */
void DspBoot(DSPCallback callback)
{
	DspInitWork();
	audio_task.priority          = 0xF0;
	audio_task.iram_mmem_addr    = jdsp;
	audio_task.iram_length       = sizeof(jdsp);
	audio_task.iram_addr         = nullptr;
	audio_task.dram_mmem_addr    = AUDIO_YIELD_BUFFER;
	audio_task.dram_length       = sizeof(AUDIO_YIELD_BUFFER);
	audio_task.dram_addr         = 0;
	audio_task.dsp_init_vector   = 0;
	audio_task.dsp_resume_vector = 0x10;
	audio_task.init_cb           = DspHandShake;
	audio_task.res_cb            = nullptr;
	audio_task.done_cb           = nullptr;
	audio_task.req_cb            = callback;
	DSPInit();
	DSPAddPriorTask(&audio_task);
	/*
	.loc_0x0:
	  stwu      r1, -0x10(r1)
	  mflr      r0
	  stw       r0, 0x14(r1)
	  stw       r31, 0xC(r1)
	  mr        r31, r3
	  bl        0x1AC
	  lis       r4, 0x804A
	  lis       r3, 0x804F
	  addi      r5, r4, 0x44E0
	  lis       r6, 0x804F
	  addi      r4, r3, 0x7E0
	  lis       r3, 0x800B
	  addi      r9, r6, 0x780
	  li        r6, 0
	  subis     r8, r5, 0x8000
	  subis     r5, r4, 0x8000
	  subi      r0, r3, 0x5700
	  li        r10, 0xF0
	  li        r7, 0x1D20
	  li        r4, 0x2000
	  li        r3, 0x10
	  stw       r10, 0x4(r9)
	  stw       r8, 0xC(r9)
	  stw       r7, 0x10(r9)
	  stw       r6, 0x14(r9)
	  stw       r5, 0x18(r9)
	  stw       r4, 0x1C(r9)
	  stw       r6, 0x20(r9)
	  sth       r6, 0x24(r9)
	  sth       r3, 0x26(r9)
	  stw       r0, 0x28(r9)
	  stw       r6, 0x2C(r9)
	  stw       r6, 0x30(r9)
	  stw       r31, 0x34(r9)
	  bl        0x30374
	  lis       r3, 0x804F
	  addi      r3, r3, 0x780
	  bl        0x2AC
	  lwz       r0, 0x14(r1)
	  lwz       r31, 0xC(r1)
	  mtlr      r0
	  addi      r1, r1, 0x10
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800AAA00
 * Size:	0000E8
 */
void DSPSendCommands2(u32* p1, u32 p2, void (*p3)(u16))
{
	/*
	.loc_0x0:
	  stwu      r1, -0x20(r1)
	  mflr      r0
	  stw       r0, 0x24(r1)
	  addi      r11, r1, 0x20
	  bl        0x17260
	  mr        r26, r3
	  mr        r27, r4
	  mr        r30, r5

	.loc_0x20:
	  bl        0x6A0
	  cmpwi     r3, 0
	  beq+      .loc_0x20
	  bl        0x4420C
	  mr        r29, r3
	  bl        0x3027C
	  cmplwi    r3, 0
	  beq-      .loc_0x50
	  mr        r3, r29
	  bl        0x4421C
	  li        r3, -0x1
	  b         .loc_0xD0

	.loc_0x50:
	  mr        r3, r27
	  bl        0x30294
	  bl        0x302A4
	  nop

	.loc_0x60:
	  bl        0x30250
	  cmplwi    r3, 0
	  bne+      .loc_0x60
	  cmplwi    r27, 0
	  bne-      .loc_0x78
	  li        r27, 0x1

	.loc_0x78:
	  cmplwi    r30, 0
	  beq-      .loc_0x90
	  lwz       r3, 0x0(r26)
	  mr        r4, r30
	  bl        0xB8
	  mr        r28, r3

	.loc_0x90:
	  li        r30, 0
	  li        r31, 0
	  b         .loc_0xBC

	.loc_0x9C:
	  lwzx      r3, r26, r31
	  bl        0x30248
	  nop

	.loc_0xA8:
	  bl        0x30208
	  cmplwi    r3, 0
	  bne+      .loc_0xA8
	  addi      r30, r30, 0x1
	  addi      r31, r31, 0x4

	.loc_0xBC:
	  cmplw     r30, r27
	  blt+      .loc_0x9C
	  mr        r3, r29
	  bl        0x44198
	  mr        r3, r28

	.loc_0xD0:
	  addi      r11, r1, 0x20
	  bl        0x171E8
	  lwz       r0, 0x24(r1)
	  mtlr      r0
	  addi      r1, r1, 0x20
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800AAB00
 * Size:	00002C
 */
void DspInitWork()
{
	while (taskwork) { }

	/*
	.loc_0x0:
	  li        r3, 0
	  lis       r4, 0x804F
	  li        r0, 0x10
	  mr        r6, r3
	  addi      r5, r4, 0x27E0
	  mtctr     r0

	.loc_0x18:
	  add       r4, r5, r3
	  addi      r3, r3, 0x8
	  stw       r6, 0x4(r4)
	  bdnz+     .loc_0x18
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800AAB40
 * Size:	000048
 */
void DspStartWork(u32 p1, void (*p2)(u16))
{
	/*
	.loc_0x0:
	  lwz       r7, -0x74C4(r13)
	  lwz       r0, -0x74C8(r13)
	  addi      r6, r7, 0x1
	  rlwinm    r8,r6,0,28,31
	  cmplw     r8, r0
	  bne-      .loc_0x20
	  li        r3, 0
	  blr

	.loc_0x20:
	  lis       r5, 0x804F
	  rlwinm    r0,r3,16,16,31
	  rlwinm    r7,r7,3,0,28
	  stw       r8, -0x74C4(r13)
	  addi      r5, r5, 0x27E0
	  mr        r3, r6
	  sthx      r0, r5, r7
	  add       r5, r5, r7
	  stw       r4, 0x4(r5)
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800AABA0
 * Size:	000068
 */
void DspFinishWork(u16 p1)
{
	/*
	.loc_0x0:
	  stwu      r1, -0x10(r1)
	  mflr      r0
	  lis       r4, 0x804F
	  rlwinm    r3,r3,0,16,31
	  stw       r0, 0x14(r1)
	  addi      r4, r4, 0x27E0
	  lwz       r6, -0x74C8(r13)
	  rlwinm    r5,r6,3,0,28
	  lhzx      r0, r4, r5
	  cmplw     r3, r0
	  bne-      .loc_0x58
	  add       r3, r4, r5
	  lwz       r12, 0x4(r3)
	  cmplwi    r12, 0
	  beq-      .loc_0x48
	  rlwinm    r3,r6,0,16,31
	  mtctr     r12
	  bctrl

	.loc_0x48:
	  lwz       r3, -0x74C8(r13)
	  addi      r0, r3, 0x1
	  rlwinm    r0,r0,0,28,31
	  stw       r0, -0x74C8(r13)

	.loc_0x58:
	  lwz       r0, 0x14(r1)
	  mtlr      r0
	  addi      r1, r1, 0x10
	  blr
	*/
}
