#include "types.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JKernel/JKRFile.h"
#include "JSystem/JKernel/JKRDvdRipper.h"
#include "JSystem/JAudio2/JAI/JAIBasic.h"
#include "JSystem/JAudio2/JAI/JAInter.h"
#include "JSystem/JAudio2/JAI/JAIConst.h"

extern JKRSolidHeap* JASDram;

namespace JAInter {
namespace Const {
Vec dummyZeroVec = { 0, 0, 0 };
u16 sCInfos_0[16]
    = { 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402, 0x0402 };
Camera nullCamera(&camTrans, &camPreTrans, &camMtx);
Actor nullActor(0, 0, 0, 0);
Mtx camMtx;
Vec camTrans;
Vec camPreTrans;
JMath::TRandom_fast_ random(0);
} // namespace Const

/*
 * --INFO--
 * Address:	800AD1C4
 * Size:	0000F4
 */

u8* transInitDataFile(u8* param_1, u32 param_2)
{
	u8* charptr;
	charptr = new (JAIBasic::msCurrentHeap, 0x20) u8[param_2];
	if (charptr) {
		for (int i = 0; i < param_2; i++) {
			charptr[i] = param_1[i];
		}
	}
	return charptr;
}

/*
 * --INFO--
 * Address:	800AD2B8
 * Size:	0000E4
 */
void loadTmpDVDFile(char* filename, u8** param_2)
{
	JKRDvdFile JStack256;

	if (!(JStack256.open(filename) & -1)) {
		param_2[0] = 0;
		return;
	} else if (JStack256.mDvdPlayer.length == 0) {
		param_2[0] = 0;
		return;
	} else {
		param_2[0] = (u8*)JASDram->alloc(JStack256.mDvdPlayer.length, -0x20);
		if (JKRDvdRipper::loadToMainRAM(filename, *param_2, Switch_0, 0, 0, JKRDvdRipper::ALLOC_DIR_TOP, 0, 0, 0) == nullptr) {
			param_2[0] = 0;
		}
	}
	return;
}

/*
 * --INFO--
 * Address:	800AD39C
 * Size:	000030
 */
void deleteTmpDVDFile(u8** bing)
{
	if (bing[0] != 0)
		JASDram->freeTail();
}

/*
 * --INFO--
 * Address:	800AD3CC
 * Size:	000040
 */
u32 routeToTrack(u32 param_1)
{
	u32 uVar2;
	uVar2 = 0;
	if ((param_1 & 0xf0000000) == 0) {
		return 0;
	}
	if ((param_1 & 0xf0000000) == 0x10000000) {
		uVar2 = 0xf;
	} else if ((param_1 & 0xf0000000) == 0x20000000) {
		uVar2 = 0xff;
	}
	return param_1 & uVar2;
}
} // namespace JAInter
