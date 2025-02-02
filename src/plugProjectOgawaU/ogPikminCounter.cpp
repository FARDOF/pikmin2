#include "og/Screen/PikminCounter.h"
#include "og/Screen/ogScreen.h"
#include "og/Screen/callbackNodes.h"

namespace og {
namespace Screen {

/*
 * --INFO--
 * Address:	8030421C
 * Size:	0000BC
 */
PikminCounter::PikminCounter()
{
	mCatchPiki         = nullptr;
	_180               = 0;
	_184               = 0;
	_188               = 0;
	mIsTotalPokoActive = false;
	mPaneSublevel      = nullptr;
	mScaleMgr          = nullptr;
	mStandardPos.x     = 0.0f;
	mStandardPos.y     = 0.0f;
	mCurrPos.x         = 0.0f;
	mCurrPos.y         = 0.0f;
}

/*
 * --INFO--
 * Address:	803042D8
 * Size:	00006C
 */
void PikminCounter::setParam(og::Screen::DataGame& game, og::Screen::DataNavi& navi)
{
	mDataGame = game;
	mDataNavi = navi;
}

/*
 * --INFO--
 * Address:	........
 * Size:	000188
 */
void PikminCounter::setCallBackCommon(JKRArchive* arc, bool flag)
{
	og::Screen::setAlphaScreen(this);
	mCatchPiki = new og::Screen::CallBack_CatchPiki;
	mCatchPiki->init(this, 'piki', &mDataNavi.mNextThrowPiki, arc);
	addCallBack('piki', mCatchPiki);
	og::Screen::setCallBack_CounterRV(this, 'c_mr', 'c_mc', 'c_ml', &mDataNavi.mFollowPikis, 4, 3, 1, arc);
	mIsTotalPokoActive = flag;
}

/*
 * --INFO--
 * Address:	80304344
 * Size:	0000F8
 */
void PikminCounter::update()
{
	if (mPaneSublevel) {
		if (mIsTotalPokoActive) {
			if (mCurrPos.x < 700.0f) {
				mCurrPos.x += 20.0f;
			}
		} else if (mCurrPos.x > mStandardPos.x) {
			mCurrPos.x -= 20.0f;
			if (mCurrPos.x <= mStandardPos.x) {
				mCurrPos.x = mStandardPos.x;
				mScaleMgr->up(0.2f, 20.0f, 0.5f, 0.0f);
			}
		}

		mPaneSublevel->setOffset(mCurrPos.x, mCurrPos.y);
		mPaneSublevel->updateScale(mScaleMgr->calc());
	}

	P2DScreen::Mgr::update();
}

/*
 * --INFO--
 * Address:	8030443C
 * Size:	000230
 */
void PikminCounter::setCallBack(JKRArchive* arc)
{
	setCallBackCommon(arc, false);

	u32* days = &mDataGame.mDayNum;
	setCallBack_CounterDay(this, 'dcsr', 'dcsl', 'dcsc', days, 10, arc);
	setCallBack_CounterDay(this, 'dc_r', 'dc_l', 'dc_c', days, 10, arc);

	setCallBack_CounterRV(this, 'c_lr', 'c_lc', 'c_ll', &mDataGame.mMapPikminCount, 10, 3, 1, arc);
	CallBack_CounterRV* counter = setCallBack_CounterRV(this, 'c_s1', 'c_sr', 'c_sl', &mDataGame.mTotalPikminCount, 10, 4, 1, arc);
	counter->mScaleUpSoundID    = PSSE_SY_PIKI_INCREMENT;
	counter->mScaleDownSoundID  = PSSE_SY_PIKI_DECREMENT;

	search('c_sc')->removeFromParent();
}

/*
 * --INFO--
 * Address:	8030466C
 * Size:	000240
 */
void PikminCounterCave::setCallBack(JKRArchive* arc)
{
	setCallBackCommon(arc, false);
	mPaneSublevel = search('Ndayicon');
	if (mPaneSublevel) {
		mStandardPos.x = mPaneSublevel->mOffset.x;
		mStandardPos.y = mPaneSublevel->mOffset.y;
		mCurrPos       = mStandardPos;
		mPaneSublevel->setOffset(mCurrPos.x, mCurrPos.y);
		mScaleMgr = new ScaleMgr;
	}

	u32* days = &mDataGame.mFloorNum;
	setCallBack_CounterDay(this, 'dc_r', 'dc_l', 'dc_c', days, 4, arc);
	setCallBack_CounterDay(this, 'dcsr', 'dcsl', 'dcsc', days, 4, arc);

	CallBack_CounterRV* counter = setCallBack_CounterRV(this, 'c_lr', 'c_lc', 'c_ll', &mDataGame.mMapPikminCount, 10, 3, 1, arc);
	counter->mScaleUpSoundID    = PSSE_SY_PIKI_INCREMENT;
	counter->mScaleDownSoundID  = PSSE_SY_PIKI_DECREMENT;
}

/*
 * --INFO--
 * Address:	803048AC
 * Size:	0001F8
 */
void PikminCounterChallenge1P::setCallBack(JKRArchive* arc)
{
	setCallBackCommon(arc, false);
	mPaneSublevel = search('Ndayicon');
	if (mPaneSublevel) {
		mStandardPos.x = mPaneSublevel->mOffset.x;
		mStandardPos.y = mPaneSublevel->mOffset.y;
		mCurrPos       = mStandardPos;
		mPaneSublevel->setOffset(mCurrPos.x, mCurrPos.y);
		mScaleMgr = new ScaleMgr;
	}

	search('Ndayicon')->hide();

	CallBack_CounterRV* counter = setCallBack_CounterRV(this, 'c_lr', 'c_lc', 'c_ll', &mDataGame.mMapPikminCount, 10, 3, 1, arc);
	counter->mScaleUpSoundID    = PSSE_SY_PIKI_INCREMENT;
	counter->mScaleDownSoundID  = PSSE_SY_PIKI_DECREMENT;
}
} // namespace Screen
} // namespace og
