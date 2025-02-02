#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JAudio2/JAI/JAIBasic.h"
#include "JSystem/JAudio2/JAI/JAIGlobalParameter.h"
#include "JSystem/JAudio2/JAI/JAInter.h"
#include "types.h"

/*
    Generated from dpostproc

    .section .sbss # 0x80514D80 - 0x80516360
    .global mVersion__Q27JAInter10SoundTable
    mVersion__Q27JAInter10SoundTable:
        .skip 0x1
    .global mCategotyMax__Q27JAInter10SoundTable
    mCategotyMax__Q27JAInter10SoundTable:
        .skip 0x1
    .balign 4
    .global mSoundMax__Q27JAInter10SoundTable
    mSoundMax__Q27JAInter10SoundTable:
        .skip 0x4
    .global mDatasize__Q27JAInter10SoundTable
    mDatasize__Q27JAInter10SoundTable:
        .skip 0x4
    .global mPointerCategory__Q27JAInter10SoundTable
    mPointerCategory__Q27JAInter10SoundTable:
        .skip 0x4
    .global mAddress__Q27JAInter10SoundTable
    mAddress__Q27JAInter10SoundTable:
        .skip 0x4
*/

u8 JAInter::SoundTable::mVersion;
u8 JAInter::SoundTable::mCategotyMax;
u16* JAInter::SoundTable::mSoundMax;
u32 JAInter::SoundTable::mDataSize;
JAInter::SoundInfo** JAInter::SoundTable::mPointerCategory;
u8* JAInter::SoundTable::mAddress;

/*
 * --INFO--
 * Address:	800B744C
 * Size:	0000CC
 */
void JAInter::SoundTable::init(u8* data, u32 dataSize)
{
	mVersion         = data[3];
	mDataSize        = dataSize;
	mAddress         = data;
	mSoundMax        = new (JAIBasic::msCurrentHeap, 4) u16[0x12];
	mPointerCategory = new (JAIBasic::msCurrentHeap, 4) SoundInfo*[0x12];
	for (u8 i = 0; i < 0x12; i++) {
		mSoundMax[i]        = *reinterpret_cast<u16**>(&mAddress[6])[i];
		mPointerCategory[i] = reinterpret_cast<SoundInfo**>(&mAddress[0x50])[reinterpret_cast<u16*>(&mAddress[8])[i]];
		// mPointerCategory[i] = *(SoundInfo**)(mAddress + *(u16*)(mAddress + (i * 4) + 8) * 0x10 + 0x50);
		if (i < 0x10 && mSoundMax[i] != 0) {
			mCategotyMax = i + 1;
		}
	}
	/*
	stwu     r1, -0x10(r1)
	mflr     r0
	li       r5, 4
	stw      r0, 0x14(r1)
	stw      r4, mDatasize__Q27JAInter10SoundTable@sda21(r13)
	lwz      r4, msCurrentHeap__8JAIBasic@sda21(r13)
	stw      r3, mAddress__Q27JAInter10SoundTable@sda21(r13)
	lbz      r0, 3(r3)
	li       r3, 0x24
	stb      r0, mVersion__Q27JAInter10SoundTable@sda21(r13)
	bl       __nwa__FUlP7JKRHeapi
	stw      r3, mSoundMax__Q27JAInter10SoundTable@sda21(r13)
	li       r3, 0x48
	lwz      r4, msCurrentHeap__8JAIBasic@sda21(r13)
	li       r5, 4
	bl       __nwa__FUlP7JKRHeapi
	stw      r3, mPointerCategory__Q27JAInter10SoundTable@sda21(r13)
	li       r9, 0
	b        lbl_800B74FC

lbl_800B7498:
	lwz      r0, mAddress__Q27JAInter10SoundTable@sda21(r13)
	rlwinm   r5, r9, 2, 0x16, 0x1d
	clrlwi   r8, r9, 0x18
	lwz      r3, mSoundMax__Q27JAInter10SoundTable@sda21(r13)
	add      r4, r5, r0
	rlwinm   r7, r9, 1, 0x17, 0x1e
	lhz      r0, 6(r4)
	cmplwi   r8, 0x10
	sthx     r0, r3, r7
	lwz      r6, mAddress__Q27JAInter10SoundTable@sda21(r13)
	lwz      r3, mPointerCategory__Q27JAInter10SoundTable@sda21(r13)
	add      r4, r5, r6
	lhz      r0, 8(r4)
	slwi     r0, r0, 4
	add      r4, r6, r0
	addi     r0, r4, 0x50
	stwx     r0, r3, r5
	bge      lbl_800B74F8
	lwz      r3, mSoundMax__Q27JAInter10SoundTable@sda21(r13)
	lhzx     r0, r3, r7
	cmplwi   r0, 0
	beq      lbl_800B74F8
	addi     r0, r8, 1
	stb      r0, mCategotyMax__Q27JAInter10SoundTable@sda21(r13)

lbl_800B74F8:
	addi     r9, r9, 1

lbl_800B74FC:
	clrlwi   r0, r9, 0x18
	cmplwi   r0, 0x12
	blt      lbl_800B7498
	lwz      r0, 0x14(r1)
	mtlr     r0
	addi     r1, r1, 0x10
	blr
	*/
}

/*
 * --INFO--
 * Address:	800B7518
 * Size:	0000C4
 */
JAInter::SoundInfo* JAInter::SoundTable::getInfoPointer(u32 soundID)
{
	SoundInfo* info = nullptr;
	u32 category;
	switch (soundID & 0xC0000000) {
	case 0x00000000:
		category = soundID >> 0xC & 0xFF;
		JAIGlobalParameter::getParamSeCategoryMax();
		break;
	case 0x80000000:
		category = 0x10;
		break;
	case 0xC0000000:
		category = 0x11;
		break;
	}
	u32 maskedID = soundID & 0x3FF;
	if (mAddress != nullptr && maskedID < mSoundMax[category]) {
		info = mPointerCategory[category] + maskedID;
	}
	return info;
}

/*
 * --INFO--
 * Address:	800B75DC
 * Size:	000058
 */
u32 JAInter::SoundTable::getInfoFormat(unsigned long id)
{
	switch (id & JAISoundID_TypeMask) {
	case 0x00000000:
		return mAddress[0];
	case 0x80000000:
		return mAddress[1];
	case 0xC0000000:
		return mAddress[2];
	default:
		return 0;
	}
	/*
	rlwinm   r5, r3, 0, 0, 1
	lis      r0, 0xc000
	cmpw     r5, r0
	li       r3, 0
	beq      lbl_800B7628
	bge      lbl_800B7608
	lis      r4, 0x80000001@ha
	addi     r0, r4, 0x80000001@l
	cmpw     r5, r0
	bgelr
	b        lbl_800B761C

lbl_800B7608:
	cmpwi    r5, 0
	bnelr
	lwz      r3, mAddress__Q27JAInter10SoundTable@sda21(r13)
	lbz      r3, 0(r3)
	blr

lbl_800B761C:
	lwz      r3, mAddress__Q27JAInter10SoundTable@sda21(r13)
	lbz      r3, 1(r3)
	blr

lbl_800B7628:
	lwz      r3, mAddress__Q27JAInter10SoundTable@sda21(r13)
	lbz      r3, 2(r3)
	blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000E4
 */
void JAInter::SoundTable::setInfoTrack(unsigned long, unsigned char)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800B7634
 * Size:	000008
 */
u8 JAInter::SoundTable::getCategotyMax() { return mCategotyMax; }

/*
 * --INFO--
 * Address:	800B763C
 * Size:	000010
 */
u16 JAInter::SoundTable::getSoundMax(unsigned char p1) { return mSoundMax[p1]; }

/*
 * --INFO--
 * Address:	........
 * Size:	000008
 */
void JAInter::SoundTable::getSoundTablePointer()
{
	// UNUSED FUNCTION
}
