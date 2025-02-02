#include "JSystem/JAudio2/JAS/JASTrack.h"
#include "types.h"

/*
    Generated from dpostproc

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_80516D10
    lbl_80516D10:
        .4byte 0x00000000
        .4byte 0x00000000
*/

/*
 * --INFO--
 * Address:	8009C400
 * Size:	00004C
 */
JASOuterParam::JASOuterParam()
    : mOuterSwitch(0)
    , mOuterUpdate(0)
    , _04(0.0f)
    , _08(0.0f)
    , _0C(0.0f)
    , _10(0.0f)
    , _14(0.0f)
    , _18(0.0f)
{
	for (int i = 0; i < 8; i++) {
		mFirFilter[i] = 0;
	}
}

/*
 * --INFO--
 * Address:	8009C44C
 * Size:	000010
 */
void JASOuterParam::initExtBuffer()
{
	mOuterSwitch = 0;
	mOuterUpdate = 0;
}

/*
 * --INFO--
 * Address:	8009C45C
 * Size:	000008
 */
void JASOuterParam::setOuterSwitch(u16 newValue)
{
	// Generated from sth r4, 0x0(r3)
	mOuterSwitch = newValue;
}

/*
 * --INFO--
 * Address:	........
 * Size:	000008
 */
u16 JASOuterParam::getSwitch()
{
	// UNUSED FUNCTION
	return mOuterSwitch;
}

/*
 * --INFO--
 * Address:	8009C464
 * Size:	00001C
 */
bool JASOuterParam::checkOuterSwitch(u16 p1) { return mOuterSwitch & p1; }

/*
 * --INFO--
 * Address:	8009C480
 * Size:	000008
 */
void JASOuterParam::setOuterUpdate(u16 newValue)
{
	// Generated from sth r4, 0x2(r3)
	mOuterUpdate = newValue;
}

/*
 * --INFO--
 * Address:	8009C488
 * Size:	000008
 */
u16 JASOuterParam::getOuterUpdate() { return mOuterUpdate; }

/*
 * --INFO--
 * Address:	........
 * Size:	000010
 */
void JASOuterParam::setIntFirFilter(short newValue, unsigned char index)
{
	// UNUSED FUNCTION
	mFirFilter[index] = newValue;
}

/*
 * --INFO--
 * Address:	8009C490
 * Size:	000010
 */
s16 JASOuterParam::getIntFirFilter(u8 index) { return mFirFilter[index]; }

/*
 * --INFO--
 * Address:	8009C4A0
 * Size:	00009C
 */
void JASOuterParam::setParam(u8 p1, float p2)
{
	float* v1;
	switch (p1) {
	case 1:
		v1 = &_04;
		break;
	case 2:
		v1 = &_08;
		break;
	case 4:
		v1 = &_0C;
		break;
	case 16:
		v1 = &_10;
		break;
	case 8:
		v1 = &_14;
		break;
	case 64:
		v1 = &_18;
		break;
	default:
		return;
	}
	*v1 = p2;
	mOuterUpdate |= p1;
}

/*
 * --INFO--
 * Address:	8009C53C
 * Size:	00001C
 */
void JASOuterParam::onSwitch(u16 p1)
{
	mOuterSwitch |= p1;
	mOuterUpdate |= p1;
}

/*
 * --INFO--
 * Address:	8009C558
 * Size:	00005C
 */
void JASOuterParam::setFirFilter(short* p1)
{
	mOuterUpdate |= 0x80;
	mOuterSwitch |= 0x80;
	for (int i = 0; i < 8; i++) {
		mFirFilter[i] = p1[i];
	}
}
