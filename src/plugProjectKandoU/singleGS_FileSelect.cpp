#include "Game/MoviePlayer.h"
#include "Screen/Game2DMgr.h"
#include "System.h"
#include "types.h"
#include "Game/SingleGame.h"
#include "nans.h"
#include "PSGame/SceneInfo.h"
#include "PSSystem/PSGame.h"
#include "PSM/Scene.h"
#include "TParticle2dMgr.h"
#include "Game/GameSystem.h"

static const char name[] = "SingleGS_Game";

/*
    Generated from dpostproc

    .section .ctors, "wa"  # 0x80472F00 - 0x804732C0
    .4byte __sinit_singleGS_FileSelect_cpp

    .section .rodata  # 0x804732E0 - 0x8049E220
    .global lbl_80482748
    lbl_80482748:
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x53696E67
        .4byte 0x6C654753
        .4byte 0x5F47616D
        .4byte 0x65000000
    .global lbl_80482764
    lbl_80482764:
        .4byte 0x50534761
        .4byte 0x6D652E68
        .4byte 0x00000000
    .global lbl_80482770
    lbl_80482770:
        .asciz "P2Assert"
        .skip 3
        .4byte 0x50535363
        .4byte 0x656E652E
        .4byte 0x68000000
        .4byte 0x73696E67
        .4byte 0x6C654753
        .4byte 0x5F46696C
        .4byte 0x6553656C
        .4byte 0x6563742E
        .4byte 0x63707000
        .4byte 0x756E6B6E
        .4byte 0x6F776E20
        .4byte 0x73617665
        .4byte 0x466C6167
        .4byte 0x20282564
        .4byte 0x290A0000

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global lbl_804C07E0
    lbl_804C07E0:
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
    .global lbl_804C07EC
    lbl_804C07EC:
        .4byte 0x00000000
        .4byte 0xFFFFFFFF
        .4byte dvdload__Q34Game10SingleGame9FileStateFv
    .global "__vt__39Delegate<Q34Game10SingleGame9FileState>"
    "__vt__39Delegate<Q34Game10SingleGame9FileState>":
        .4byte 0
        .4byte 0
        .4byte "invoke__39Delegate<Q34Game10SingleGame9FileState>Fv"
    .global __vt__Q34Game10SingleGame9FileState
    __vt__Q34Game10SingleGame9FileState:
        .4byte 0
        .4byte 0
        .4byte
   init__Q34Game10SingleGame9FileStateFPQ24Game17SingleGameSectionPQ24Game8StateArg
        .4byte exec__Q34Game10SingleGame9FileStateFPQ24Game17SingleGameSection
        .4byte
   cleanup__Q34Game10SingleGame9FileStateFPQ24Game17SingleGameSection .4byte
   "resume__Q24Game36FSMState<Q24Game17SingleGameSection>FPQ24Game17SingleGameSection"
        .4byte
   "restart__Q24Game36FSMState<Q24Game17SingleGameSection>FPQ24Game17SingleGameSection"
        .4byte
   "transit__Q24Game36FSMState<Q24Game17SingleGameSection>FPQ24Game17SingleGameSectioniPQ24Game8StateArg"
        .4byte
   draw__Q34Game10SingleGame9FileStateFPQ24Game17SingleGameSectionR8Graphics
        .4byte
   onOrimaDown__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectioni .4byte
   onMovieStart__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ24Game11MovieConfigUlUl
        .4byte
   onMovieDone__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ24Game11MovieConfigUlUl
        .4byte
   onMovieCommand__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectioni .4byte
   onHoleIn__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ34Game8ItemCave4Item
        .4byte
   onNextFloor__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ34Game8ItemHole4Item
        .4byte
   onFountainReturn__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionPQ34Game15ItemBigFountain4Item
        .4byte
   on_section_fadeout__Q34Game10SingleGame5StateFPQ24Game17SingleGameSection
        .4byte
   on_demo_timer__Q34Game10SingleGame5StateFPQ24Game17SingleGameSectionUl .4byte
   0

    .section .sbss # 0x80514D80 - 0x80516360
    .global lbl_80515C20
    lbl_80515C20:
        .skip 0x4
    .global lbl_80515C24
    lbl_80515C24:
        .skip 0x4

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_8051A070
    lbl_8051A070:
        .float 1.0
    .global lbl_8051A074
    lbl_8051A074:
        .4byte 0x40800000
*/

namespace Game {
namespace SingleGame {

/*
 * --INFO--
 * Address:	8021C718
 * Size:	0000A8
 */
FileState::FileState()
    : State(SGS_File)
{
	mMainController  = new Controller(JUTGamePad::PORT_0);
	mDebugController = new Controller(JUTGamePad::PORT_2);
	mBackupHeap      = nullptr;
	mMainHeap        = nullptr;
}

/*
 * --INFO--
 * Address:	8021C7C0
 * Size:	00009C
 */
void FileState::init(SingleGameSection* section, StateArg* arg)
{
	moviePlayer->reset();
	mIsNotInitialized      = true;
	section->mDisplayWiper = section->mWipeInFader;
	section->mWipeInFader->start(1.0f);
	section->refreshHIO();
	Screen::gGame2DMgr->mScreenMgr->reset();
	sys->setFrameRate(1);
	playData->mDeadNaviID[0] = 0;
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000E4
 */
void FileState::first_init(SingleGameSection*)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	8021C85C
 * Size:	00019C
 */
void FileState::dvdload()
{
	PSGame::SceneInfo info;
	info.mSceneType = PSGame::SceneInfo::FILE_SELECT;
	info.mCameras   = 0;

	static_cast<PSGame::PikSceneMgr*>(PSSystem::getSceneMgr())->newAndSetCurrentScene(&info);

	PSSystem::SceneMgr* sceneMgr = PSSystem::getSceneMgr();
	sceneMgr->checkScene();
	sceneMgr->mScenes->mChild->scene1stLoadSync();

	sceneMgr = PSSystem::getSceneMgr();
	sceneMgr->checkScene();
	sceneMgr->mScenes->mChild->startMainSeq();

	mFSMgr                      = ebi::FileSelect::TMgr::createInstance();
	ebi::FileSelect::TMgr* tmgr = mFSMgr;
	tmgr->mMgrFS.mMainScreen.loadResource();
	JKRHeap* heap = JKRGetCurrentHeap();
	tmgr->mCardErrorMgr.loadResource(heap);
	static_cast<Game::MemoryCard::Mgr*>(sys->mCardMgr)->loadResource(heap);
	Controller* input            = mMainController;
	ebi::FileSelect::TMgr* tmgr2 = mFSMgr;
	tmgr2->mMgrFS.setController(input);
	tmgr2->mCardErrorMgr.mController = input;
	playData->reset();
	/*
	stwu     r1, -0x50(r1)
	mflr     r0
	lis      r4, lbl_80482748@ha
	stw      r0, 0x54(r1)
	stw      r31, 0x4c(r1)
	mr       r31, r3
	addi     r3, r1, 8
	stw      r30, 0x48(r1)
	addi     r30, r4, lbl_80482748@l
	stw      r29, 0x44(r1)
	bl       __ct__Q26PSGame9SceneInfoFv
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	li       r4, 0xa
	li       r3, 0
	stb      r4, 0xe(r1)
	cmplwi   r0, 0
	stb      r3, 0xf(r1)
	bne      lbl_8021C8B8
	addi     r3, r30, 0x1c
	addi     r5, r30, 0x28
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8021C8B8:
	lwz      r3, spSceneMgr__8PSSystem@sda21(r13)
	addi     r4, r1, 8
	lwz      r12, 0(r3)
	lwz      r12, 0xc(r12)
	mtctr    r12
	bctrl
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_8021C8F0
	addi     r3, r30, 0x1c
	addi     r5, r30, 0x28
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8021C8F0:
	lwz      r29, spSceneMgr__8PSSystem@sda21(r13)
	lwz      r0, 4(r29)
	cmplwi   r0, 0
	bne      lbl_8021C914
	addi     r3, r30, 0x34
	addi     r5, r30, 0x28
	li       r4, 0xc7
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8021C914:
	lwz      r3, 4(r29)
	lwz      r3, 4(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	lwz      r0, spSceneMgr__8PSSystem@sda21(r13)
	cmplwi   r0, 0
	bne      lbl_8021C94C
	addi     r3, r30, 0x1c
	addi     r5, r30, 0x28
	li       r4, 0x1d3
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8021C94C:
	lwz      r29, spSceneMgr__8PSSystem@sda21(r13)
	lwz      r0, 4(r29)
	cmplwi   r0, 0
	bne      lbl_8021C970
	addi     r3, r30, 0x34
	addi     r5, r30, 0x28
	li       r4, 0xc7
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8021C970:
	lwz      r3, 4(r29)
	lwz      r3, 4(r3)
	lwz      r12, 0(r3)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	bl       createInstance__Q33ebi10FileSelect4TMgrFv
	stw      r3, 0x2c(r31)
	lwz      r30, 0x2c(r31)
	addi     r3, r30, 0x18
	bl       loadResource__Q43ebi6Screen10FileSelect11TMainScreenFv
	lwz      r29, sCurrentHeap__7JKRHeap@sda21(r13)
	addi     r3, r30, 0xc78
	mr       r4, r29
	bl       loadResource__Q33ebi6Screen11TMemoryCardFP7JKRHeap
	lwz      r3, sys@sda21(r13)
	mr       r4, r29
	lwz      r3, 0x5c(r3)
	bl       loadResource__Q34Game10MemoryCard3MgrFP7JKRHeap
	lwz      r29, 0x14(r31)
	lwz      r30, 0x2c(r31)
	mr       r4, r29
	addi     r3, r30, 0x18
	bl       setController__Q33ebi2FS4TMgrFP10Controller
	stw      r29, 0xc7c(r30)
	lwz      r3, playData__4Game@sda21(r13)
	bl       reset__Q24Game8PlayDataFv
	lwz      r0, 0x54(r1)
	lwz      r31, 0x4c(r1)
	lwz      r30, 0x48(r1)
	lwz      r29, 0x44(r1)
	mtlr     r0
	addi     r1, r1, 0x50
	blr
	*/
}

/*
 * --INFO--
 * Address:	8021C9F8
 * Size:	000194
 */
void FileState::exec(SingleGameSection* game)
{
	if (mIsNotInitialized) {
		mBackupHeap = JKRGetCurrentHeap();
		mMainHeap   = JKRExpHeap::create(mBackupHeap->getFreeSize(), mBackupHeap, true);
		mMainHeap->becomeCurrentHeap();

		mLoadDelegate = new Delegate<FileState>(this, dvdload);
		game->loadSync(mLoadDelegate, false);
		mFSMgr->start();
		mIsNotInitialized = false;
	} else {
		if (mMainHeap) {
			if (particle2dMgr) {
				particle2dMgr->update();
			}
			game->BaseHIOSection::doUpdate();
			mFSMgr->update();
			if (mFSMgr->isFinish()) {
				switch (mFSMgr->mState) {
				case 2:
					startGame(game);
					break;
				case 1:
					gameSystem->mTimeMgr->mDayCount = 0;
					startGame(game);
					break;
				case 3:
					game->flow_goto_title();
				}
			}
		}
	}
}

/*
 * --INFO--
 * Address:	8021CB8C
 * Size:	00027C
 */
void FileState::startGame(SingleGameSection* game)
{
	int state = playData->mLoadType;
	if (particle2dMgr) {
		particle2dMgr->killAll();
	}
	switch (state) {
	case 0: // new file start
	{
		MovieArg arg(THPPlayer::OPENING_1);
		transit(game, SGS_Movie, &arg);
		break;
	}
	case 1: // go to world map
	{
		transit(game, SGS_Select, nullptr);
		break;
	}
	case 2: // loading into an overworld
	{
		game->mDisplayWiper = game->mWipeInFader;
		game->mWipeInFader->start(4.0f);
		game->mCurrentCourseInfo = playData->getCurrentCourse();
		P2ASSERTLINE(469, game->mCurrentCourseInfo);

		u8 flag = 1;
		if (playData->mDeadNaviID[0] & 1 && playData->mDeadNaviID[0] & 2) {
			flag = 2;
		}
		LoadArg arg(1, flag, 1, 0);
		transit(game, SGS_Load, &arg);
		break;
	}
	case 3: // loading into a cave
	{
		ID32 id;
		CourseInfo* info = playData->getCurrentCourse();
		int floor;
		playData->getCurrentCave(id, floor);
		game->mCurrentCourseInfo = info;
		game->mCurrentFloor      = floor;
		game->mCaveID            = id;
		game->mInCave            = true;
		strcpy(game->mCaveFilename, info->getCaveinfoFilename_FromID(id));
		game->loadMainMapSituation();
		LoadArg arg(0, 1, 1, 0);
		transit(game, SGS_Load, &arg);
		break;
	}
	case 4: // continue after pay debt
	{
		EndingArg arg(1);
		transit(game, SGS_Ending, &arg);
		break;
	}
	default:
		JUT_PANICLINE(529, "unknown saveFlag (%d)\n", state);
	}
	/*
	stwu     r1, -0x40(r1)
	mflr     r0
	lis      r6, lbl_80482748@ha
	stw      r0, 0x44(r1)
	stw      r31, 0x3c(r1)
	mr       r31, r4
	stw      r30, 0x38(r1)
	mr       r30, r3
	stw      r29, 0x34(r1)
	addi     r29, r6, lbl_80482748@l
	stw      r28, 0x30(r1)
	lwz      r0, particle2dMgr@sda21(r13)
	lwz      r5, playData__4Game@sda21(r13)
	cmplwi   r0, 0
	lbz      r28, 0x19(r5)
	beq      lbl_8021CBD4
	mr       r3, r0
	bl       killAll__14TParticle2dMgrFv

lbl_8021CBD4:
	cmpwi    r28, 2
	beq      lbl_8021CC50
	bge      lbl_8021CBF0
	cmpwi    r28, 0
	beq      lbl_8021CC00
	bge      lbl_8021CC2C
	b        lbl_8021CDD0

lbl_8021CBF0:
	cmpwi    r28, 4
	beq      lbl_8021CDA4
	bge      lbl_8021CDD0
	b        lbl_8021CCEC

lbl_8021CC00:
	li       r0, 0
	mr       r3, r30
	stw      r0, 0x10(r1)
	mr       r4, r31
	addi     r6, r1, 0x10
	li       r5, 9
	lwz      r12, 0(r30)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_8021CDE8

lbl_8021CC2C:
	mr       r3, r30
	mr       r4, r31
	lwz      r12, 0(r30)
	li       r5, 1
	li       r6, 0
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_8021CDE8

lbl_8021CC50:
	lwz      r0, 0xd4(r31)
	lfs      f1, lbl_8051A074@sda21(r2)
	stw      r0, 0x18(r31)
	lwz      r3, 0xd4(r31)
	bl       start__8WipeBaseFf
	lwz      r3, playData__4Game@sda21(r13)
	bl       getCurrentCourse__Q24Game8PlayDataFv
	stw      r3, 0x22c(r31)
	lwz      r0, 0x22c(r31)
	cmplwi   r0, 0
	bne      lbl_8021CC90
	addi     r3, r29, 0x40
	addi     r5, r29, 0x28
	li       r4, 0x1d5
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8021CC90:
	lwz      r3, playData__4Game@sda21(r13)
	li       r8, 1
	lbz      r3, 0x20(r3)
	clrlwi.  r0, r3, 0x1f
	beq      lbl_8021CCB0
	rlwinm.  r0, r3, 0, 0x1e, 0x1e
	beq      lbl_8021CCB0
	li       r8, 2

lbl_8021CCB0:
	li       r7, 0
	li       r0, 1
	stb      r7, 0x1c(r1)
	mr       r3, r30
	mr       r4, r31
	addi     r6, r1, 0x1c
	stb      r0, 0x1d(r1)
	li       r5, 2
	stb      r7, 0x1e(r1)
	sth      r8, 0x20(r1)
	lwz      r12, 0(r30)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_8021CDE8

lbl_8021CCEC:
	addi     r3, r1, 0x24
	bl       __ct__4ID32Fv
	lwz      r3, playData__4Game@sda21(r13)
	bl       getCurrentCourse__Q24Game8PlayDataFv
	mr       r0, r3
	lwz      r3, playData__4Game@sda21(r13)
	mr       r28, r0
	addi     r4, r1, 0x24
	addi     r5, r1, 0xc
	bl       getCurrentCave__Q24Game8PlayDataFR4ID32Ri
	stw      r28, 0x22c(r31)
	li       r0, 1
	addi     r3, r31, 0x230
	addi     r4, r1, 0x24
	lwz      r6, 0xc(r1)
	li       r5, 5
	stw      r6, 0x248(r31)
	lwz      r6, 0x2c(r1)
	stw      r6, 0x190(r31)
	stb      r0, 0x23c(r31)
	bl       __copy
	lwz      r0, 0x2c(r1)
	mr       r3, r28
	addi     r4, r1, 0x24
	stw      r0, 0x238(r31)
	bl       getCaveinfoFilename_FromID__Q24Game10CourseInfoFR4ID32
	mr       r4, r3
	addi     r3, r31, 0x195
	bl       strcpy
	mr       r3, r31
	bl       loadMainMapSituation__Q24Game17SingleGameSectionFv
	li       r5, 1
	li       r0, 0
	stb      r5, 0x14(r1)
	mr       r3, r30
	mr       r4, r31
	addi     r6, r1, 0x14
	stb      r5, 0x15(r1)
	li       r5, 2
	stb      r0, 0x16(r1)
	sth      r0, 0x18(r1)
	lwz      r12, 0(r30)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_8021CDE8

lbl_8021CDA4:
	li       r0, 1
	mr       r3, r30
	stb      r0, 8(r1)
	mr       r4, r31
	addi     r6, r1, 8
	li       r5, 0xb
	lwz      r12, 0(r30)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	b        lbl_8021CDE8

lbl_8021CDD0:
	mr       r6, r28
	addi     r3, r29, 0x40
	addi     r5, r29, 0x58
	li       r4, 0x211
	crclr    6
	bl       panic_f__12JUTExceptionFPCciPCce

lbl_8021CDE8:
	lwz      r0, 0x44(r1)
	lwz      r31, 0x3c(r1)
	lwz      r30, 0x38(r1)
	lwz      r29, 0x34(r1)
	lwz      r28, 0x30(r1)
	mtlr     r0
	addi     r1, r1, 0x40
	blr
	*/
}

/*
 * --INFO--
 * Address:	8021CE08
 * Size:	0000C0
 */
void FileState::draw(SingleGameSection* game, Graphics& gfx)
{
	if (mMainHeap) {
		gfx.mPerspGraph.setPort();
		particle2dMgr->draw(1, 0);
		gfx.mOrthoGraph.setPort();
		gfx.mPerspGraph.setPort();
		mFSMgr->draw();
		gfx.mPerspGraph.setPort();
		particle2dMgr->draw(0, 0);
		mFSMgr->showInfo();
	}
}

/*
 * --INFO--
 * Address:	8021CEC8
 * Size:	0000D4
 */
void FileState::cleanup(SingleGameSection* game)
{
	PSSystem::SceneMgr* sceneMgr = PSSystem::getSceneMgr();
	PSSystem::checkSceneMgr(sceneMgr);
	sceneMgr->deleteCurrentScene();
	mFSMgr->forceQuit();
	mMainHeap->freeAll();
	mMainHeap->destroy();
	mMainHeap = nullptr;
	mBackupHeap->becomeCurrentHeap();
	sys->setFrameRate(2);
	Screen::gGame2DMgr->mScreenMgr->reset();
}

} // namespace SingleGame
} // namespace Game
