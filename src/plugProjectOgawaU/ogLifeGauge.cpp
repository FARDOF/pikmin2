#include "og/Screen/callbackNodes.h"
#include "og/Screen/NaviLifeGauge.h"
#include "og/Screen/AngleMgr.h"
#include "og/Screen/ogScreen.h"
#include "og/newScreen/ogUtil.h"
#include "LifeGaugeMgr.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "System.h"
#include "og/Sound.h"

namespace og {
namespace Screen {

/*
 * --INFO--
 * Address:	80306038
 * Size:	000158
 */
CallBack_LifeGauge::CallBack_LifeGauge()
{
	mData               = nullptr;
	mNaviLifeRatio      = 1.0f;
	mWidthOrRadiusMaybe = 17.0f;
	mOffsetX            = 0.0f;
	mOffsetY            = 0.0f;
	mLowLifeSoundTimer  = 0.0f;
	_58                 = 1.0f;
	_5C                 = nullptr;
	mPin1               = nullptr;
	mPin2               = nullptr;
	mNa_i               = nullptr;
	mLi_i               = nullptr;

	mLifeGauge       = new LifeGauge;
	_34              = 0.0f;
	_38              = 0.0f;
	mNa_i_d4         = 0.0f;
	mNa_i_d8         = 0.0f;
	mLi_i_d4         = 0.0f;
	mLi_i_d8         = 0.0f;
	_30              = 0.0f;
	mIsActiveNavi    = 1;
	mIsActiveNaviOld = mIsActiveNavi;
	_70              = nullptr;
	_74              = nullptr;
	_78              = nullptr;
	_7C              = nullptr;
	_80              = nullptr;
	_84              = nullptr;

	mAngleMgr = new AngleMgr;
	mScaleMgr = new ScaleMgr;

	mCanNaviChange = false;
	mMoveTimer     = 0.0f;
}

/*
 * --INFO--
 * Address:	80306200
 * Size:	0002C4
 */
void CallBack_LifeGauge::init(P2DScreen::Mgr* mgr, DataNavi* data, LifeGaugeType lifeGaugeType)
{
	if (!mData) {
		mData          = data;
		mNaviLifeRatio = data->mNaviLifeRatio;
		mLifeGauge->init(128);
		mLifeGauge->_08 = 128.0f * mNaviLifeRatio;
		_5C             = mgr;

		mPin1 = TagSearch(mgr, 'pin1');
		mPin2 = static_cast<J2DPicture*>(TagSearch(mgr, 'pin2'));
		mNa_i = TagSearch(mgr, 'na_i');
		mLi_i = TagSearch(mgr, 'li_i');

		mNa_i_d4 = mNa_i->mOffset.x;
		mNa_i_d8 = mNa_i->mOffset.y;

		mLi_i_d4 = mLi_i->mOffset.x;
		mLi_i_d8 = mLi_i->mOffset.y;

		mPin1->hide();
		mPin2->hide();
		_70 = static_cast<J2DPicture*>(mgr->search('navi_i'));
		_74 = static_cast<J2DPicture*>(mgr->search('navi2_i'));
		_78 = static_cast<J2DPicture*>(mgr->search('navi3_i'));
		_7C = static_cast<J2DPicture*>(mgr->search('navi'));
		_80 = static_cast<J2DPicture*>(mgr->search('navi2'));
		_84 = static_cast<J2DPicture*>(mgr->search('navi3'));

		if (_80 && _84) {
			_80->hide();
			_84->hide();
			setType(lifeGaugeType);
		}

		if (data->mActiveNaviID) {
			_30              = 0.0f;
			mIsActiveNavi    = true;
			mIsActiveNaviOld = mIsActiveNavi;
			mAngleMgr->init(0.0f, msVal._08, msVal._0C);
		} else {
			_30              = PI;
			mIsActiveNavi    = false;
			mIsActiveNaviOld = mIsActiveNavi;
			mAngleMgr->init(PI, msVal._08, msVal._0C);
		}

		mCanNaviChange = false;
	}
}

/*
 * --INFO--
 * Address:	803064C4
 * Size:	000434
 */
void CallBack_LifeGauge::setType(LifeGaugeType lifeGaugeType)
{
	JUtility::TColor color[4];
	mLifeGaugeType = lifeGaugeType;

	switch (lifeGaugeType) {
	case 1:
		JUTTexture* texture1 = _74->getTexture(0);
		_70->changeTexture(texture1->_20, 0);

		_7C->setWhite(_80->getWhite());
		_7C->setBlack(_80->getBlack());

		J2DPicture* src1    = _80;
		J2DPicture* target1 = _7C;

		color[0].setRGBA(src1->mCornerColors[0]);
		color[1].setRGBA(src1->mCornerColors[1]);
		color[2].setRGBA(src1->mCornerColors[2]);
		color[3].setRGBA(src1->mCornerColors[3]);

		target1->setColor(color[0], 0);
		target1->setColor(color[2], 2);
		target1->setColor(color[1], 1);
		target1->setColor(color[3], 3);

		JUtility::TColor color10 = color[0];
		JUtility::TColor color11 = color[1];
		JUtility::TColor color12 = color[2];
		JUtility::TColor color13 = color[3];
		break;

	case 2:
		JUTTexture* texture2 = _78->getTexture(0);
		_70->changeTexture(texture2->_20, 0);

		_7C->setWhite(_84->getWhite());
		_7C->setBlack(_84->getBlack());

		J2DPicture* src2    = _84;
		J2DPicture* target2 = _7C;

		color[0].setRGBA(src2->mCornerColors[0]);
		color[1].setRGBA(src2->mCornerColors[1]);
		color[2].setRGBA(src2->mCornerColors[2]);
		color[3].setRGBA(src2->mCornerColors[3]);

		target2->setColor(color[0], 0);
		target2->setColor(color[2], 2);
		target2->setColor(color[1], 1);
		target2->setColor(color[3], 3);

		JUtility::TColor color20 = color[0];
		JUtility::TColor color21 = color[1];
		JUtility::TColor color22 = color[2];
		JUtility::TColor color23 = color[3];
		break;
	}
	/*
	.loc_0x0:
	  stwu      r1, -0x90(r1)
	  mflr      r0
	  cmpwi     r4, 0x2
	  stw       r0, 0x94(r1)
	  li        r0, -0x1
	  stw       r31, 0x8C(r1)
	  stw       r30, 0x88(r1)
	  stw       r29, 0x84(r1)
	  stw       r28, 0x80(r1)
	  mr        r28, r3
	  stw       r0, 0x68(r1)
	  stw       r0, 0x6C(r1)
	  stw       r0, 0x70(r1)
	  stw       r0, 0x74(r1)
	  stw       r4, 0x90(r3)
	  beq-      .loc_0x234
	  bge-      .loc_0x414
	  cmpwi     r4, 0x1
	  bge-      .loc_0x50
	  b         .loc_0x414

	.loc_0x50:
	  lwz       r3, 0x74(r28)
	  li        r4, 0
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x120(r12)
	  mtctr     r12
	  bctrl
	  mr        r4, r3
	  lwz       r3, 0x70(r28)
	  lwz       r4, 0x20(r4)
	  li        r5, 0
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x110(r12)
	  mtctr     r12
	  bctrl
	  lwz       r4, 0x80(r28)
	  addi      r3, r1, 0x40
	  lwz       r12, 0x0(r4)
	  lwz       r12, 0x138(r12)
	  mtctr     r12
	  bctrl
	  lwz       r0, 0x40(r1)
	  addi      r4, r1, 0x44
	  stw       r0, 0x44(r1)
	  lwz       r3, 0x7C(r28)
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x12C(r12)
	  mtctr     r12
	  bctrl
	  lwz       r4, 0x80(r28)
	  addi      r3, r1, 0x38
	  lwz       r12, 0x0(r4)
	  lwz       r12, 0x134(r12)
	  mtctr     r12
	  bctrl
	  lwz       r0, 0x38(r1)
	  addi      r4, r1, 0x3C
	  stw       r0, 0x3C(r1)
	  lwz       r3, 0x7C(r28)
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x128(r12)
	  mtctr     r12
	  bctrl
	  lwz       r5, 0x80(r28)
	  lwz       r3, 0x7C(r28)
	  lbz       r4, 0x150(r5)
	  lbz       r0, 0x151(r5)
	  lbz       r31, 0x152(r5)
	  lbz       r8, 0x153(r5)
	  stb       r4, 0x68(r1)
	  lbz       r4, 0x154(r5)
	  stb       r0, 0x69(r1)
	  lbz       r0, 0x155(r5)
	  lbz       r30, 0x156(r5)
	  lbz       r7, 0x157(r5)
	  lbz       r29, 0x158(r5)
	  lbz       r28, 0x159(r5)
	  lbz       r12, 0x15A(r5)
	  lbz       r6, 0x15B(r5)
	  lbz       r11, 0x15C(r5)
	  lbz       r10, 0x15D(r5)
	  lbz       r9, 0x15E(r5)
	  lbz       r5, 0x15F(r5)
	  stb       r31, 0x6A(r1)
	  stb       r8, 0x6B(r1)
	  lwz       r8, 0x68(r1)
	  stb       r4, 0x6C(r1)
	  stw       r8, 0x18(r1)
	  lbz       r4, 0x18(r1)
	  stb       r0, 0x6D(r1)
	  lbz       r0, 0x19(r1)
	  stb       r4, 0x150(r3)
	  lbz       r4, 0x1A(r1)
	  stb       r0, 0x151(r3)
	  lbz       r0, 0x1B(r1)
	  stb       r4, 0x152(r3)
	  stb       r30, 0x6E(r1)
	  stb       r7, 0x6F(r1)
	  lwz       r7, 0x6C(r1)
	  stb       r0, 0x153(r3)
	  stw       r7, 0x1C(r1)
	  lbz       r4, 0x1C(r1)
	  stb       r29, 0x70(r1)
	  lbz       r0, 0x1D(r1)
	  stb       r4, 0x154(r3)
	  lbz       r4, 0x1E(r1)
	  stb       r0, 0x155(r3)
	  lbz       r0, 0x1F(r1)
	  stb       r4, 0x156(r3)
	  stb       r28, 0x71(r1)
	  stb       r12, 0x72(r1)
	  stb       r6, 0x73(r1)
	  lwz       r6, 0x70(r1)
	  stb       r0, 0x157(r3)
	  stw       r6, 0x20(r1)
	  lbz       r4, 0x20(r1)
	  stb       r11, 0x74(r1)
	  lbz       r0, 0x21(r1)
	  stb       r4, 0x158(r3)
	  lbz       r4, 0x22(r1)
	  stb       r0, 0x159(r3)
	  lbz       r0, 0x23(r1)
	  stb       r4, 0x15A(r3)
	  stb       r10, 0x75(r1)
	  stb       r9, 0x76(r1)
	  stb       r5, 0x77(r1)
	  lwz       r5, 0x74(r1)
	  stb       r0, 0x15B(r3)
	  stw       r5, 0x24(r1)
	  lbz       r4, 0x24(r1)
	  lbz       r0, 0x25(r1)
	  stb       r4, 0x15C(r3)
	  lbz       r4, 0x26(r1)
	  stb       r0, 0x15D(r3)
	  lbz       r0, 0x27(r1)
	  stb       r4, 0x15E(r3)
	  stw       r8, 0x58(r1)
	  stw       r7, 0x5C(r1)
	  stw       r6, 0x60(r1)
	  stw       r5, 0x64(r1)
	  stb       r0, 0x15F(r3)
	  b         .loc_0x414

	.loc_0x234:
	  lwz       r3, 0x78(r28)
	  li        r4, 0
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x120(r12)
	  mtctr     r12
	  bctrl
	  mr        r4, r3
	  lwz       r3, 0x70(r28)
	  lwz       r4, 0x20(r4)
	  li        r5, 0
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x110(r12)
	  mtctr     r12
	  bctrl
	  lwz       r4, 0x84(r28)
	  addi      r3, r1, 0x30
	  lwz       r12, 0x0(r4)
	  lwz       r12, 0x138(r12)
	  mtctr     r12
	  bctrl
	  lwz       r0, 0x30(r1)
	  addi      r4, r1, 0x34
	  stw       r0, 0x34(r1)
	  lwz       r3, 0x7C(r28)
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x12C(r12)
	  mtctr     r12
	  bctrl
	  lwz       r4, 0x84(r28)
	  addi      r3, r1, 0x28
	  lwz       r12, 0x0(r4)
	  lwz       r12, 0x134(r12)
	  mtctr     r12
	  bctrl
	  lwz       r0, 0x28(r1)
	  addi      r4, r1, 0x2C
	  stw       r0, 0x2C(r1)
	  lwz       r3, 0x7C(r28)
	  lwz       r12, 0x0(r3)
	  lwz       r12, 0x128(r12)
	  mtctr     r12
	  bctrl
	  lwz       r5, 0x84(r28)
	  lwz       r3, 0x7C(r28)
	  lbz       r4, 0x150(r5)
	  lbz       r0, 0x151(r5)
	  lbz       r28, 0x152(r5)
	  lbz       r8, 0x153(r5)
	  stb       r4, 0x68(r1)
	  lbz       r4, 0x154(r5)
	  stb       r0, 0x69(r1)
	  lbz       r0, 0x155(r5)
	  lbz       r29, 0x156(r5)
	  lbz       r7, 0x157(r5)
	  lbz       r30, 0x158(r5)
	  lbz       r31, 0x159(r5)
	  lbz       r12, 0x15A(r5)
	  lbz       r6, 0x15B(r5)
	  lbz       r11, 0x15C(r5)
	  lbz       r10, 0x15D(r5)
	  lbz       r9, 0x15E(r5)
	  lbz       r5, 0x15F(r5)
	  stb       r28, 0x6A(r1)
	  stb       r8, 0x6B(r1)
	  lwz       r8, 0x68(r1)
	  stb       r4, 0x6C(r1)
	  stw       r8, 0x8(r1)
	  lbz       r4, 0x8(r1)
	  stb       r0, 0x6D(r1)
	  lbz       r0, 0x9(r1)
	  stb       r4, 0x150(r3)
	  lbz       r4, 0xA(r1)
	  stb       r0, 0x151(r3)
	  lbz       r0, 0xB(r1)
	  stb       r4, 0x152(r3)
	  stb       r29, 0x6E(r1)
	  stb       r7, 0x6F(r1)
	  lwz       r7, 0x6C(r1)
	  stb       r0, 0x153(r3)
	  stw       r7, 0xC(r1)
	  lbz       r4, 0xC(r1)
	  stb       r30, 0x70(r1)
	  lbz       r0, 0xD(r1)
	  stb       r4, 0x154(r3)
	  lbz       r4, 0xE(r1)
	  stb       r0, 0x155(r3)
	  lbz       r0, 0xF(r1)
	  stb       r4, 0x156(r3)
	  stb       r31, 0x71(r1)
	  stb       r12, 0x72(r1)
	  stb       r6, 0x73(r1)
	  lwz       r6, 0x70(r1)
	  stb       r0, 0x157(r3)
	  stw       r6, 0x10(r1)
	  lbz       r4, 0x10(r1)
	  stb       r11, 0x74(r1)
	  lbz       r0, 0x11(r1)
	  stb       r4, 0x158(r3)
	  lbz       r4, 0x12(r1)
	  stb       r0, 0x159(r3)
	  lbz       r0, 0x13(r1)
	  stb       r4, 0x15A(r3)
	  stb       r10, 0x75(r1)
	  stb       r9, 0x76(r1)
	  stb       r5, 0x77(r1)
	  lwz       r5, 0x74(r1)
	  stb       r0, 0x15B(r3)
	  stw       r5, 0x14(r1)
	  lbz       r4, 0x14(r1)
	  lbz       r0, 0x15(r1)
	  stb       r4, 0x15C(r3)
	  lbz       r4, 0x16(r1)
	  stb       r0, 0x15D(r3)
	  lbz       r0, 0x17(r1)
	  stb       r4, 0x15E(r3)
	  stw       r8, 0x48(r1)
	  stw       r7, 0x4C(r1)
	  stw       r6, 0x50(r1)
	  stw       r5, 0x54(r1)
	  stb       r0, 0x15F(r3)

	.loc_0x414:
	  lwz       r0, 0x94(r1)
	  lwz       r31, 0x8C(r1)
	  lwz       r30, 0x88(r1)
	  lwz       r29, 0x84(r1)
	  lwz       r28, 0x80(r1)
	  mtlr      r0
	  addi      r1, r1, 0x90
	  blr
	*/
}

/*
 * --INFO--
 * Address:	803068F8
 * Size:	000078
 */
void CallBack_LifeGauge::setOffset(f32 x, f32 y)
{
	if (!mPane) {
		JUT_PANICLINE(243, "ERR! : NULL Pane !!!\n");
	} else {
		mOffsetX = (mPane->mBounds.getWidth() / 2) + x;
		mOffsetY = (mPane->mBounds.getHeight() / 2) + y;
	}
}

/*
 * --INFO--
 * Address:	80306970
 * Size:	000318
 */
void CallBack_LifeGauge::moveIcon()
{
	mIsActiveNaviOld = mIsActiveNavi;
	if (mData) {
		mIsActiveNavi = mData->mActiveNaviID;
	}

	u8 cNavi = mIsActiveNavi;
	if (cNavi == mIsActiveNaviOld) {
		if (cNavi && mCanNaviChange) {
			mMoveTimer -= sys->mDeltaTime;
			if (mMoveTimer < 0.0f) {
				mCanNaviChange = false;
				ogSound->setNaviChange(mLifeGaugeType);
				mScaleMgr->up(0.4f, 30.0f, 0.6f, 0.0f);
			}
		}
	} else if (!cNavi) {
		mAngleMgr->init(_30, msVal._08, msVal._0C);
		mAngleMgr->chase(PI, msVal._04);
	} else {
		mAngleMgr->init(_30, msVal._08, msVal._0C);
		mAngleMgr->chase(0.0f, msVal._04);
		mCanNaviChange = true;
		mMoveTimer     = msVal._00;
	}
	_30 = mAngleMgr->calc();
	_34 = sinf(_30) * 50.0f;
	_38 = pikmin2_cosf(_30) * 30.0f;

	f32 temp  = pikmin2_sinf(_30);
	f32 mod   = (1.0f - temp) * 0.7f + temp;
	f32 scale = mScaleMgr->calc();
	scale     = mod * scale;

	mNa_i->move(mNa_i_d4 - _34, mNa_i_d8 - 30.0f);
	mLi_i->move(scale * (mLi_i_d4 - mNa_i_d4) + (mNa_i_d4 - _34), (mLi_i_d8 - 30.0f) + _38);
	mNa_i->updateScale(scale);
	mLi_i->updateScale(scale);

	/*
stwu     r1, -0x40(r1)
mflr     r0
stw      r0, 0x44(r1)
stfd     f31, 0x30(r1)
psq_st   f31, 56(r1), 0, qr0
stw      r31, 0x2c(r1)
mr       r31, r3
lbz      r0, 0x50(r3)
stb      r0, 0x51(r3)
lwz      r3, 0x1c(r3)
cmplwi   r3, 0
beq      lbl_803069A8
lbz      r0, 0x14(r3)
stb      r0, 0x50(r31)

lbl_803069A8:
lbz      r3, 0x50(r31)
lbz      r0, 0x51(r31)
cmplw    r3, r0
beq      lbl_80306A44
cmplwi   r3, 0
beq      lbl_80306A0C
lis      r4, msVal__Q32og6Screen18CallBack_LifeGauge@ha
lwz      r3, 0x88(r31)
addi     r4, r4, msVal__Q32og6Screen18CallBack_LifeGauge@l
lfs      f1, 0x30(r31)
lfs      f2, 8(r4)
lfs      f3, 0xc(r4)
bl       init__Q32og6Screen8AngleMgrFfff
lis      r4, msVal__Q32og6Screen18CallBack_LifeGauge@ha
lwz      r3, 0x88(r31)
addi     r4, r4, msVal__Q32og6Screen18CallBack_LifeGauge@l
lfs      f1, lbl_8051D5B8@sda21(r2)
lfs      f2, 4(r4)
bl       chase__Q32og6Screen8AngleMgrFff
li       r0, 1
lis      r3, msVal__Q32og6Screen18CallBack_LifeGauge@ha
stb      r0, 0x94(r31)
lfs      f0, msVal__Q32og6Screen18CallBack_LifeGauge@l(r3)
stfs     f0, 0x98(r31)
b        lbl_80306AA8

lbl_80306A0C:
lis      r4, msVal__Q32og6Screen18CallBack_LifeGauge@ha
lwz      r3, 0x88(r31)
addi     r4, r4, msVal__Q32og6Screen18CallBack_LifeGauge@l
lfs      f1, 0x30(r31)
lfs      f2, 8(r4)
lfs      f3, 0xc(r4)
bl       init__Q32og6Screen8AngleMgrFfff
lis      r4, msVal__Q32og6Screen18CallBack_LifeGauge@ha
lwz      r3, 0x88(r31)
addi     r4, r4, msVal__Q32og6Screen18CallBack_LifeGauge@l
lfs      f1, lbl_8051D5C0@sda21(r2)
lfs      f2, 4(r4)
bl       chase__Q32og6Screen8AngleMgrFff
b        lbl_80306AA8

lbl_80306A44:
cmplwi   r3, 0
beq      lbl_80306AA8
lbz      r0, 0x94(r31)
cmplwi   r0, 0
beq      lbl_80306AA8
lwz      r3, sys@sda21(r13)
lfs      f2, 0x98(r31)
lfs      f1, 0x54(r3)
lfs      f0, lbl_8051D5B8@sda21(r2)
fsubs    f1, f2, f1
stfs     f1, 0x98(r31)
lfs      f1, 0x98(r31)
fcmpo    cr0, f1, f0
bge      lbl_80306AA8
li       r0, 0
stb      r0, 0x94(r31)
lwz      r3, ogSound__2og@sda21(r13)
lwz      r4, 0x90(r31)
bl       setNaviChange__Q22og5SoundFi
lwz      r3, 0x8c(r31)
lfs      f1, lbl_8051D5C8@sda21(r2)
lfs      f2, lbl_8051D5CC@sda21(r2)
lfs      f3, lbl_8051D5D0@sda21(r2)
lfs      f4, lbl_8051D5B8@sda21(r2)
bl       up__Q32og6Screen8ScaleMgrFffff

lbl_80306AA8:
lwz      r3, 0x88(r31)
bl       calc__Q32og6Screen8AngleMgrFv
stfs     f1, 0x30(r31)
lfs      f0, lbl_8051D5B8@sda21(r2)
lfs      f2, 0x30(r31)
lfs      f1, lbl_8051D5D4@sda21(r2)
fcmpo    cr0, f2, f0
bge      lbl_80306AF4
lfs      f0, lbl_8051D5D8@sda21(r2)
lis      r3, sincosTable___5JMath@ha
addi     r3, r3, sincosTable___5JMath@l
fmuls    f0, f2, f0
fctiwz   f0, f0
stfd     f0, 8(r1)
lwz      r0, 0xc(r1)
rlwinm   r0, r0, 3, 0x12, 0x1c
lfsx     f0, r3, r0
fneg     f0, f0
b        lbl_80306B18

lbl_80306AF4:
lfs      f0, lbl_8051D5DC@sda21(r2)
lis      r3, sincosTable___5JMath@ha
addi     r3, r3, sincosTable___5JMath@l
fmuls    f0, f2, f0
fctiwz   f0, f0
stfd     f0, 0x10(r1)
lwz      r0, 0x14(r1)
rlwinm   r0, r0, 3, 0x12, 0x1c
lfsx     f0, r3, r0

lbl_80306B18:
fmuls    f1, f1, f0
lfs      f0, lbl_8051D5B8@sda21(r2)
stfs     f1, 0x34(r31)
lfs      f2, 0x30(r31)
fcmpo    cr0, f2, f0
bge      lbl_80306B34
fneg     f2, f2

lbl_80306B34:
lfs      f0, lbl_8051D5DC@sda21(r2)
lis      r3, sincosTable___5JMath@ha
addi     r3, r3, sincosTable___5JMath@l
lfs      f1, lbl_8051D5CC@sda21(r2)
fmuls    f2, f2, f0
addi     r4, r3, 4
lfs      f0, lbl_8051D5B8@sda21(r2)
fctiwz   f2, f2
stfd     f2, 0x18(r1)
lwz      r0, 0x1c(r1)
rlwinm   r0, r0, 3, 0x12, 0x1c
lfsx     f2, r4, r0
fmuls    f1, f1, f2
stfs     f1, 0x38(r31)
lfs      f1, 0x30(r31)
fcmpo    cr0, f1, f0
bge      lbl_80306B7C
fneg     f1, f1

lbl_80306B7C:
lfs      f0, lbl_8051D5DC@sda21(r2)
lfs      f3, lbl_8051D5B0@sda21(r2)
fmuls    f2, f1, f0
lfs      f0, lbl_8051D5C4@sda21(r2)
lfs      f1, lbl_8051D5E0@sda21(r2)
lwz      r3, 0x8c(r31)
fctiwz   f2, f2
stfd     f2, 0x20(r1)
lwz      r0, 0x24(r1)
rlwinm   r0, r0, 3, 0x12, 0x1c
lfsx     f2, r4, r0
fadds    f2, f3, f2
fmuls    f2, f2, f0
fsubs    f0, f3, f2
fmadds   f31, f1, f0, f2
bl       calc__Q32og6Screen8ScaleMgrFv
lwz      r3, 0x68(r31)
fmuls    f31, f31, f1
lfs      f1, 0x40(r31)
lfs      f0, lbl_8051D5CC@sda21(r2)
lwz      r12, 0(r3)
fsubs    f1, f1, f0
lfs      f0, 0x38(r31)
lfs      f4, 0x3c(r31)
lfs      f3, 0x34(r31)
lwz      r12, 0x10(r12)
fadds    f2, f1, f0
fsubs    f1, f4, f3
mtctr    r12
bctrl
lwz      r3, 0x6c(r31)
lfs      f2, 0x3c(r31)
lfs      f1, 0x44(r31)
lfs      f0, 0x34(r31)
lwz      r12, 0(r3)
fsubs    f4, f1, f2
fsubs    f3, f2, f0
lfs      f2, 0x48(r31)
lfs      f1, lbl_8051D5CC@sda21(r2)
lfs      f0, 0x38(r31)
fsubs    f2, f2, f1
lwz      r12, 0x10(r12)
fmadds   f1, f31, f4, f3
fadds    f2, f2, f0
mtctr    r12
bctrl
lwz      r3, 0x68(r31)
stfs     f31, 0xcc(r3)
stfs     f31, 0xd0(r3)
lwz      r12, 0(r3)
lwz      r12, 0x2c(r12)
mtctr    r12
bctrl
lwz      r3, 0x6c(r31)
stfs     f31, 0xcc(r3)
stfs     f31, 0xd0(r3)
lwz      r12, 0(r3)
lwz      r12, 0x2c(r12)
mtctr    r12
bctrl
psq_l    f31, 56(r1), 0, qr0
lwz      r0, 0x44(r1)
lfd      f31, 0x30(r1)
lwz      r31, 0x2c(r1)
mtlr     r0
addi     r1, r1, 0x40
blr
	*/
}

/*
 * --INFO--
 * Address:	80306C88
 * Size:	00026C
 */
void CallBack_LifeGauge::update()
{
	if (!og::newScreen::checkMovieActive()) {
		moveIcon();
		mNaviLifeRatio = mData->mNaviLifeRatio;
		mLifeGauge->update(mNaviLifeRatio);
		if (mNaviLifeRatio < 0.5f) {
			mPin1->show();
			mPin2->show();
			mLowLifeSoundTimer += _58 * sys->mDeltaTime;
			if (mLowLifeSoundTimer > 1.0f) {
				mLowLifeSoundTimer = 0.0f;
				if (mNaviLifeRatio > 0.0f && mIsActiveNavi) {
					ogSound->setLifeDanger();
				}
			}
			f32 timer     = mLowLifeSoundTimer;
			J2DPane* pane = mPin1;
			f32 scale     = mLowLifeSoundTimer * 0.5f + 1.0f;
			pane->rotate((pane->mBounds.f.x - pane->mBounds.i.x) * 0.5f, (pane->mBounds.f.y - pane->mBounds.i.y) * 0.5f, J2DROTATE_Y, 0.0f);
			pane->updateScale(scale);
			pane->setAlpha(-(timer * 255.0f - 255.0f));

			scale = -(_58 * 0.3f - timer);
			if (scale > 0.0f)
				scale += 1.0f;

			pane  = mPin2;
			scale = timer * 0.5f + 1.0f;
			pane->rotate((pane->mBounds.f.x - pane->mBounds.i.x) * 0.5f, (pane->mBounds.f.y - pane->mBounds.i.y) * 0.5f, J2DROTATE_Y, 0.0f);
			pane->updateScale(scale);
			mPin2->setAlpha(-(scale * 255.0f - 255.0f));
			if (mNaviLifeRatio > 0.0f) {
				mNa_i->hide();
				mLi_i->hide();
			} else {
				mNa_i->show();
				mLi_i->show();
			}
		} else {
			mPin1->hide();
			mPin2->hide();
		}
	}
	/*
stwu     r1, -0x40(r1)
mflr     r0
stw      r0, 0x44(r1)
stfd     f31, 0x30(r1)
psq_st   f31, 56(r1), 0, qr0
stfd     f30, 0x20(r1)
psq_st   f30, 40(r1), 0, qr0
stw      r31, 0x1c(r1)
mr       r31, r3
bl       checkMovieActive__Q22og9newScreenFv
clrlwi.  r0, r3, 0x18
bne      lbl_80306ED0
mr       r3, r31
bl       moveIcon__Q32og6Screen18CallBack_LifeGaugeFv
lwz      r3, 0x1c(r31)
lfs      f0, 0(r3)
stfs     f0, 0x20(r31)
lwz      r3, 0x4c(r31)
lfs      f1, 0x20(r31)
bl       update__9LifeGaugeFf
lfs      f1, 0x20(r31)
lfs      f0, lbl_8051D5C4@sda21(r2)
fcmpo    cr0, f1, f0
bge      lbl_80306EBC
lwz      r3, 0x60(r31)
li       r0, 1
lfs      f0, lbl_8051D5B0@sda21(r2)
stb      r0, 0xb0(r3)
lwz      r3, 0x64(r31)
stb      r0, 0xb0(r3)
lwz      r3, sys@sda21(r13)
lfs      f3, 0x58(r31)
lfs      f2, 0x54(r3)
lfs      f1, 0x54(r31)
fmadds   f1, f3, f2, f1
stfs     f1, 0x54(r31)
lfs      f1, 0x54(r31)
fcmpo    cr0, f1, f0
cror     2, 1, 2
bne      lbl_80306D50
lfs      f1, lbl_8051D5B8@sda21(r2)
stfs     f1, 0x54(r31)
lfs      f0, 0x20(r31)
fcmpo    cr0, f0, f1
ble      lbl_80306D50
lbz      r0, 0x50(r31)
cmplwi   r0, 0
beq      lbl_80306D50
lwz      r3, ogSound__2og@sda21(r13)
bl       setLifeDanger__Q22og5SoundFv

lbl_80306D50:
lwz      r3, 0x60(r31)
li       r4, 0x7a
lfs      f31, 0x54(r31)
lfs      f3, 0x28(r3)
lfs      f2, 0x20(r3)
lfs      f1, 0x2c(r3)
lfs      f0, 0x24(r3)
fsubs    f2, f3, f2
lfs      f5, lbl_8051D5C4@sda21(r2)
fsubs    f0, f1, f0
lfs      f4, lbl_8051D5B0@sda21(r2)
fmuls    f1, f2, f5
lfs      f3, lbl_8051D5B8@sda21(r2)
fmadds   f30, f31, f5, f4
fmuls    f2, f0, f5
bl       rotate__7J2DPaneFff13J2DRotateAxisf
lwz      r3, 0x60(r31)
stfs     f30, 0xcc(r3)
stfs     f30, 0xd0(r3)
lwz      r12, 0(r3)
lwz      r12, 0x2c(r12)
mtctr    r12
bctrl
lfs      f0, lbl_8051D5E4@sda21(r2)
lwz      r3, 0x60(r31)
fnmsubs  f0, f0, f31, f0
lwz      r12, 0(r3)
fctiwz   f0, f0
lwz      r12, 0x24(r12)
stfd     f0, 8(r1)
lwz      r4, 0xc(r1)
mtctr    r12
bctrl
lfs      f3, lbl_8051D5E8@sda21(r2)
lfs      f2, 0x58(r31)
lfs      f1, 0x54(r31)
lfs      f0, lbl_8051D5B8@sda21(r2)
fnmsubs  f30, f3, f2, f1
fcmpo    cr0, f30, f0
bge      lbl_80306DF8
lfs      f0, lbl_8051D5B0@sda21(r2)
fadds    f30, f30, f0

lbl_80306DF8:
lwz      r3, 0x64(r31)
li       r4, 0x7a
lfs      f5, lbl_8051D5C4@sda21(r2)
lfs      f3, 0x28(r3)
lfs      f2, 0x20(r3)
lfs      f1, 0x2c(r3)
lfs      f0, 0x24(r3)
fsubs    f2, f3, f2
lfs      f4, lbl_8051D5B0@sda21(r2)
fsubs    f0, f1, f0
lfs      f3, lbl_8051D5B8@sda21(r2)
fmuls    f1, f2, f5
fmadds   f31, f30, f5, f4
fmuls    f2, f0, f5
bl       rotate__7J2DPaneFff13J2DRotateAxisf
lwz      r3, 0x64(r31)
stfs     f31, 0xcc(r3)
stfs     f31, 0xd0(r3)
lwz      r12, 0(r3)
lwz      r12, 0x2c(r12)
mtctr    r12
bctrl
lfs      f0, lbl_8051D5E4@sda21(r2)
lwz      r3, 0x64(r31)
fnmsubs  f0, f0, f30, f0
lwz      r12, 0(r3)
fctiwz   f0, f0
lwz      r12, 0x24(r12)
stfd     f0, 0x10(r1)
lwz      r4, 0x14(r1)
mtctr    r12
bctrl
lfs      f1, 0x20(r31)
lfs      f0, lbl_8051D5B8@sda21(r2)
fcmpo    cr0, f1, f0
cror     2, 0, 2
bne      lbl_80306EA4
lwz      r3, 0x68(r31)
li       r0, 0
stb      r0, 0xb0(r3)
lwz      r3, 0x6c(r31)
stb      r0, 0xb0(r3)
b        lbl_80306ED0

lbl_80306EA4:
lwz      r3, 0x68(r31)
li       r0, 1
stb      r0, 0xb0(r3)
lwz      r3, 0x6c(r31)
stb      r0, 0xb0(r3)
b        lbl_80306ED0

lbl_80306EBC:
lwz      r3, 0x60(r31)
li       r0, 0
stb      r0, 0xb0(r3)
lwz      r3, 0x64(r31)
stb      r0, 0xb0(r3)

lbl_80306ED0:
psq_l    f31, 56(r1), 0, qr0
lfd      f31, 0x30(r1)
psq_l    f30, 40(r1), 0, qr0
lfd      f30, 0x20(r1)
lwz      r0, 0x44(r1)
lwz      r31, 0x1c(r1)
mtlr     r0
addi     r1, r1, 0x40
blr
	*/
}

/*
 * --INFO--
 * Address:	80306EF4
 * Size:	0000B4
 */
void CallBack_LifeGauge::draw(Graphics& gfx, J2DGrafContext& context)
{
	if (mNaviLifeRatio > 0.0f) {
		LifeGauge::initLifeGaugeDraw();
		Mtx concatMtx;
		PSMTXConcat(context.mPosMtx, mPane->mGlobalMtx, concatMtx);
		GXLoadPosMtxImm(concatMtx, 0);

		mLifeGauge->draw(mWidthOrRadiusMaybe, mOffsetX, mOffsetY);

		if (mNaviLifeRatio < 0.5f) {
			mPin2->draw(mOffsetX, mOffsetY, false, false, false);
		}
	}
}

/*
 * --INFO--
 * Address:	80306FA8
 * Size:	000118
 */
void NaviLifeGauge::setCallBack(DataNavi* data, CallBack_LifeGauge::LifeGaugeType lifeGaugeType)
{
	if (!mDataNavi) {
		mDataNavi = data;
		setAlphaScreen(this);
		mCallBackLifeGauge = new CallBack_LifeGauge;
		mCallBackLifeGauge->init(this, data, lifeGaugeType);
		addCallBack('life', mCallBackLifeGauge);
		mCallBackDrawAfter = setCallBack_DrawAfter(this, 'mete');

		CallBack_LifeGauge* cback = mCallBackLifeGauge;
		J2DPane* pane             = cback->mPane;
		if (!pane) {
			JUT_PANICLINE(243, "ERR! : NULL Pane !!!\n");
		} else {
			float temp      = 0.0f;
			cback->mOffsetX = (pane->mBounds.f.x - pane->mBounds.i.x) / 2 + temp;
			J2DPane* pane2  = cback->mPane;
			cback->mOffsetY = (pane2->mBounds.f.y - pane2->mBounds.i.y) / 2 + temp;
		}
	}
}

/*
 * --INFO--
 * Address:	803070C0
 * Size:	00002C
 */
void NaviLifeGauge::setType(CallBack_LifeGauge::LifeGaugeType lifeGaugeType)
{
	if (mCallBackLifeGauge) {
		mCallBackLifeGauge->setType(lifeGaugeType);
	}
}

/*
 * --INFO--
 * Address:	803070EC
 * Size:	00005C
 */
void NaviLifeGauge::update()
{
	P2DScreen::Mgr::update();
	if (mDataNavi->mNaviLifeRatio > 0.0f) {
		mCallBackDrawAfter->mIsVisible = true;
	} else {
		mCallBackDrawAfter->mIsVisible = false;
	}
}

// CallBack_LifeGauge::StaticValues CallBack_LifeGauge::msVal = CallBack_LifeGauge::StaticValues();

} // namespace Screen
} // namespace og

/*
 * --INFO--
 * Address:	80307270
 * Size:	000024
 */
void __sinit_ogLifeGauge_cpp()
{
	/*
	lfs      f2, lbl_8051D5C8@sda21(r2)
	lis      r3, msVal__Q32og6Screen18CallBack_LifeGauge@ha
	lfs      f1, lbl_8051D5D0@sda21(r2)
	stfsu    f2, msVal__Q32og6Screen18CallBack_LifeGauge@l(r3)
	lfs      f0, lbl_8051D5E8@sda21(r2)
	stfs     f1, 4(r3)
	stfs     f0, 8(r3)
	stfs     f2, 0xc(r3)
	blr
	*/
}
