#include "ebi/title/Entities/TPikmin.h"
#include "ebi/title/TTitle.h"
#include "types.h"
#include "JSystem/J3D/J3DModelLoader.h"

/*
    Generated from dpostproc

    .section .ctors, "wa"  # 0x80472F00 - 0x804732C0
        .4byte __sinit_ebiP2TitlePikmin_cpp

    .section .rodata  # 0x804732E0 - 0x8049E220
    .global lbl_80497158
    lbl_80497158:
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x65626950
        .4byte 0x32546974
        .4byte 0x6C655069
        .4byte 0x6B6D696E
        .4byte 0x00000000
    .global lbl_80497178
    lbl_80497178:
        .4byte 0x54426F69
        .4byte 0x64506172
        .4byte 0x616D4D67
        .4byte 0x72000000
        .4byte 0x54546974
        .4byte 0x6C655374
        .4byte 0x61746550
        .4byte 0x6172616D
        .4byte 0x65746572
        .4byte 0x73000000
        .4byte 0x8CFC82AB
        .4byte 0x95CF82A6
        .4byte 0x8378834E
        .4byte 0x8367838B
        .4byte 0x82CC91E5
        .4byte 0x82AB82B3
        .4byte 0x00000000
        .4byte 0x8CFC82AB
        .4byte 0x95CF82A6
        .4byte 0x8378834E
        .4byte 0x8367838B
        .4byte 0x8DC591E5
        .4byte 0x00000000
        .4byte 0x8DC591E5
        .4byte 0x95E082AD
        .4byte 0x91AC9378
        .4byte 0x00000000
        .4byte 0x424F4944
        .4byte 0x8FD593CB
        .4byte 0x89F194F0
        .4byte 0x8C579094
        .4byte 0x00000000
        .4byte 0x424F4944
        .4byte 0x91AC9378
        .4byte 0x8D8782ED
        .4byte 0x82B98C57
        .4byte 0x90940000
        .4byte 0x424F4944
        .4byte 0x92869053
        .4byte 0x8F578D87
        .4byte 0x8C579094
        .4byte 0x00000000
        .4byte 0x424F4944
        .4byte 0x8CC291CC
        .4byte 0x82CC8BDF
        .4byte 0x8F8A8354
        .4byte 0x815B8360
        .4byte 0x94BC8C61
        .4byte 0x00000000
        .4byte 0x8C5182CC
        .4byte 0x92869053
        .4byte 0x82C68CC2
        .4byte 0x91CC82CC
        .4byte 0x96DA9349
        .4byte 0x926E82CC
        .4byte 0x8A848D87
        .4byte 0x00000000
        .4byte 0x70696B6D
        .4byte 0x696E2F74
        .4byte 0x69746C65
        .4byte 0x5F726564
        .4byte 0x5F70696B
        .4byte 0x692E626D
        .4byte 0x64000000
    .global lbl_80497278
    lbl_80497278:
        .4byte 0x65626950
        .4byte 0x32546974
        .4byte 0x6C655069
        .4byte 0x6B6D696E
        .4byte 0x2E637070
        .4byte 0x00000000
    .global lbl_80497290
    lbl_80497290:
        .asciz "P2Assert"
        .skip 3
        .4byte 0x70696B6D
        .4byte 0x696E2F74
        .4byte 0x69746C65
        .4byte 0x5F79656C
        .4byte 0x6C6F775F
        .4byte 0x70696B69
        .4byte 0x2E626D64
        .4byte 0x00000000
        .4byte 0x70696B6D
        .4byte 0x696E2F74
        .4byte 0x69746C65
        .4byte 0x5F626C75
        .4byte 0x655F7069
        .4byte 0x6B692E62
        .4byte 0x6D640000
        .4byte 0x70696B6D
        .4byte 0x696E2F74
        .4byte 0x69746C65
        .4byte 0x5F626C61
        .4byte 0x636B5F70
        .4byte 0x696B692E
        .4byte 0x626D6400
        .4byte 0x70696B6D
        .4byte 0x696E2F74
        .4byte 0x69746C65
        .4byte 0x5F776869
        .4byte 0x74655F70
        .4byte 0x696B692E
        .4byte 0x626D6400
        .4byte 0x70696B6D
        .4byte 0x696E2F77
        .4byte 0x6169742E
        .4byte 0x62636B00
        .4byte 0x70696B6D
        .4byte 0x696E2F77
        .4byte 0x6176652E
        .4byte 0x62636B00
    .global lbl_80497330
    lbl_80497330:
        .4byte 0x50696B6D
        .4byte 0x696E4D67
        .4byte 0x72000000
        .4byte 0x8A438A4F
        .4byte 0x94C58358
        .4byte 0x8350815B
        .4byte 0x838B0000
        .4byte 0x93FA967B
        .4byte 0x8CEA94C5
        .4byte 0x83588350
        .4byte 0x815B838B
        .4byte 0x00000000
        .4byte 0x8352838A
        .4byte 0x83578387
        .4byte 0x839394BC
        .4byte 0x8C610000
        .4byte 0x92E28E7E
        .4byte 0x8B9797A3
        .4byte 0x00000000
        .4byte 0x8EFB91A9
        .4byte 0x8B9797A3
        .4byte 0x00000000
        .4byte 0x896582B8
        .4byte 0x82E782B5
        .4byte 0x58000000
        .4byte 0x896582B8
        .4byte 0x82E782B5
        .4byte 0x5A000000
        .4byte 0x8341836A
        .4byte 0x83818358
        .4byte 0x8373815B
        .4byte 0x836895E0
        .4byte 0x82AD8169
        .4byte 0x91AC9378
        .4byte 0x94E497E1
        .4byte 0x816A0000
        .4byte 0x8341836A
        .4byte 0x83818358
        .4byte 0x8373815B
        .4byte 0x83689597
        .4byte 0x00000000
        .4byte 0x8341836A
        .4byte 0x83818358
        .4byte 0x8373815B
        .4byte 0x83685741
        .4byte 0x49548DC5
        .4byte 0x91E50000
        .4byte 0x8341836A
        .4byte 0x83818358
        .4byte 0x8373815B
        .4byte 0x83685741
        .4byte 0x49548DC5
        .4byte 0x8FAC0000
        .4byte 0x8352834B
        .4byte 0x836C8D44
        .4byte 0x82AB8D44
        .4byte 0x82AB8C57
        .4byte 0x90940000
        .4byte 0x83608383
        .4byte 0x83628373
        .4byte 0x815B82A9
        .4byte 0x82E793A6
        .4byte 0x82B082E9
        .4byte 0x8C579094
        .4byte 0x00000000
        .4byte 0x92C782A2
        .4byte 0x82A982AF
        .4byte 0x82A082AB
        .4byte 0x82E782DF
        .4byte 0x94BC8C61
        .4byte 0x00000000
        .4byte 0x9597835E
        .4byte 0x8343837D
        .4byte 0x815B2895
        .4byte 0x62290000
        .4byte 0x8B9797A3
        .4byte 0x94E497E1
        .4byte 0x91AC9378
        .4byte 0x8C579094
        .4byte 0x00000000
    .global lbl_80497470
    lbl_80497470:
        .4byte 0x70617261
        .4byte 0x6D2F7061
        .4byte 0x72616D5F
        .4byte 0x70696B6D
        .4byte 0x696E2E74
        .4byte 0x78740000
    .global lbl_80497488
    lbl_80497488:
        .4byte 0x70617261
        .4byte 0x6D2F7061
        .4byte 0x72616D5F
        .4byte 0x626F6964
        .4byte 0x2E747874
        .4byte 0x00000000

    .section .data, "wa"  # 0x8049E220 - 0x804EFC20
    .global lbl_804E9DF0
    lbl_804E9DF0:
        .4byte 0x00000000
        .4byte 0x00000000
        .4byte 0x00000000
    .global __vt__Q43ebi5title6Pikmin5TUnit
    __vt__Q43ebi5title6Pikmin5TUnit:
        .4byte 0
        .4byte 0
        .4byte getCreatureType__Q43ebi5title6Pikmin5TUnitFv
        .4byte isCalc__Q43ebi5title6Pikmin5TUnitFv
        .4byte 0

    .section .sbss # 0x80514D80 - 0x80516360
    .global lbl_805160E8
    lbl_805160E8:
        .skip 0x4
    .global lbl_805160EC
    lbl_805160EC:
        .skip 0x4
    .global boidCalcTimer$4026
    boidCalcTimer$4026:
        .skip 0x4
    .global init$4027
    init$4027:
        .skip 0x4

    .section .sdata2, "a"     # 0x80516360 - 0x80520E40
    .global lbl_8051FC60
    lbl_8051FC60:
        .4byte 0x00000000
    .global lbl_8051FC64
    lbl_8051FC64:
        .4byte 0x3E4CCCCD
    .global lbl_8051FC68
    lbl_8051FC68:
        .4byte 0x41200000
    .global lbl_8051FC6C
    lbl_8051FC6C:
        .4byte 0x3ECCCCCD
    .global lbl_8051FC70
    lbl_8051FC70:
        .4byte 0x40000000
    .global lbl_8051FC74
    lbl_8051FC74:
        .4byte 0x44480000
    .global lbl_8051FC78
    lbl_8051FC78:
        .4byte 0x461C4000
    .global lbl_8051FC7C
    lbl_8051FC7C:
        .4byte 0x40900000
    .global lbl_8051FC80
    lbl_8051FC80:
        .4byte 0x42C80000
    .global lbl_8051FC84
    lbl_8051FC84:
        .4byte 0x3BA3D70A
    .global lbl_8051FC88
    lbl_8051FC88:
        .4byte 0x41F00000
    .global lbl_8051FC8C
    lbl_8051FC8C:
        .4byte 0x43FA0000
    .global lbl_8051FC90
    lbl_8051FC90:
        .float 1.0
        .4byte 0x00000000
    .global lbl_8051FC98
    lbl_8051FC98:
        .4byte 0x43300000
        .4byte 0x00000000
    .global lbl_8051FCA0
    lbl_8051FCA0:
        .4byte 0xBF800000
    .global lbl_8051FCA4
    lbl_8051FCA4:
        .4byte 0x5061726D
        .4byte 0x73000000
    .global lbl_8051FCAC
    lbl_8051FCAC:
        .4byte 0x4019999A
    .global lbl_8051FCB0
    lbl_8051FCB0:
        .4byte 0x40266666
    .global lbl_8051FCB4
    lbl_8051FCB4:
        .4byte 0x40A00000
    .global lbl_8051FCB8
    lbl_8051FCB8:
        .4byte 0x41A00000
    .global lbl_8051FCBC
    lbl_8051FCBC:
        .4byte 0x42480000
    .global lbl_8051FCC0
    lbl_8051FCC0:
        .float 0.5
    .global lbl_8051FCC4
    lbl_8051FCC4:
        .4byte 0xC1200000
    .global lbl_8051FCC8
    lbl_8051FCC8:
        .4byte 0xC0A00000
    .global lbl_8051FCCC
    lbl_8051FCCC:
        .4byte 0x43C80000
    .global lbl_8051FCD0
    lbl_8051FCD0:
        .4byte 0x40C00000
        .4byte 0x00000000
    .global lbl_8051FCD8
    lbl_8051FCD8:
        .4byte 0x43300000
        .4byte 0x80000000
    .global lbl_8051FCE0
    lbl_8051FCE0:
        .4byte 0x46FFFE00
    .global lbl_8051FCE4
    lbl_8051FCE4:
        .4byte 0x3F4CCCCD
    .global lbl_8051FCE8
    lbl_8051FCE8:
        .4byte 0x3ECCCCCE
    .global lbl_8051FCEC
    lbl_8051FCEC:
        .4byte 0x42700000
    .global lbl_8051FCF0
    lbl_8051FCF0:
        .float 0.1
    .global lbl_8051FCF4
    lbl_8051FCF4:
        .4byte 0xC0000000
    .global lbl_8051FCF8
    lbl_8051FCF8:
        .4byte 0x73686164
        .4byte 0x6F773100
*/

namespace ebi {
namespace title {

/*
 * --INFO--
 * Address:	........
 * Size:	0000D4
 */
/* Pikmin::TBoidParamMgr::TBoidParamMgr()
{
	// UNUSED FUNCTION
} */

/*
 * --INFO--
 * Address:	........
 * Size:	00004C
 */
/* void Pikmin::TBoidParamMgr::startState((ebi::title::Pikmin::TBoidParamMgr::enumState, float))
{
	// UNUSED FUNCTION
} */

/*
 * --INFO--
 * Address:	........
 * Size:	000130
 */
/* void Pikmin::TBoidParamMgr::update()
{
	// UNUSED FUNCTION
} */

/*
 * --INFO--
 * Address:	........
 * Size:	00002C
 */
/* Pikmin::TAnimator::TAnimator()
{
	// UNUSED FUNCTION
} */

/*
 * --INFO--
 * Address:	803E3DE8
 * Size:	0002D8
 */
void Pikmin::TAnimator::setArchive(JKRArchive* arc)
{
	void* file;
	file = arc->getResource("pikmin/title_red_piki.bmd");
	P2ASSERTLINE(0xb0, file);
	pModelDataRed = J3DModelLoaderDataBase::load(file, 0x40200000);
	file = arc->getResource("pikmin/title_yellow_piki.bmd");
	P2ASSERTLINE(0xba, file);
	pModelDataYellow = J3DModelLoaderDataBase::load(file, 0x40200000);
	file = arc->getResource("pikmin/title_blue_piki.bmd");
	P2ASSERTLINE(0xc4, file);
	pModelDataBlue = J3DModelLoaderDataBase::load(file, 0x40200000);
	file = arc->getResource("pikmin/title_black_piki.bmd");
	P2ASSERTLINE(0xce, file);
	pModelDataPurple = J3DModelLoaderDataBase::load(file, 0x40200000);
	file = arc->getResource("pikmin/title_white_piki.bmd");
	P2ASSERTLINE(0xd8, file);
	pModelDataWhite = J3DModelLoaderDataBase::load(file, 0x40200000);
	file = arc->getResource("pikmin/wait.bck");
	P2ASSERTLINE(0xe4, file);
	_14 = (J3DAnmTransform*)J3DAnmLoaderDataBase::load(file);
	file = arc->getResource("pikmin/wave.bck");
	P2ASSERTLINE(0xe9, file);
	_18 = (J3DAnmTransform*)J3DAnmLoaderDataBase::load(file);
	_1C = J3DNewMtxCalcAnm(pModelDataRed->mJointTree.mFlags & 0xf, _14);
	_20 = J3DUNewMtxCalcAnm(pModelDataRed->mJointTree.mFlags & 0xf, _14, _18, nullptr, nullptr, 0);
	J3DModelData* model = pModelDataBlue;
	model->newSharedDisplayList(0x40000);
	model->makeSharedDL();
	model = pModelDataRed;
	model->newSharedDisplayList(0x40000);
	model->makeSharedDL();
	model = pModelDataYellow;
	model->newSharedDisplayList(0x40000);
	model->makeSharedDL();
	model = pModelDataPurple;
	model->newSharedDisplayList(0x40000);
	model->makeSharedDL();
	model = pModelDataWhite;
	model->newSharedDisplayList(0x40000);
	model->makeSharedDL();

}

/*
 * --INFO--
 * Address:	........
 * Size:	000020
 */
/* void Pikmin::TAnimator::setAnmWait(J3DModel*, float)
{
	// UNUSED FUNCTION
} */

/*
 * --INFO--
 * Address:	........
 * Size:	0000A4
 */
/* void Pikmin::TAnimator::setAnmWave(J3DModel*, float, float, float)
{
	// UNUSED FUNCTION
} */

/*
 * --INFO--
 * Address:	........
 * Size:	000218
 */
/* void Pikmin::TAnimator::newJ3DModel(long)
{
	// UNUSED FUNCTION
} */

/*
 * --INFO--
 * Address:	803E40C0
 * Size:	000198
 */
Pikmin::TMgr::TMgr()
    : CNode("PikminMgr")
{
    mCounter = 0;
    mCounter2 = 0;
    unk[0] = 0;
    unk[1] = 0;
    unk[2] = 0;
    unk[3] = 0;
    unk[4] = 0;
    unk[5] = 0;
    unk[6] = 0;
    unk[7] = 0;
    u32 time               = 0.0f / sys->mDeltaTime;
    mCounter = time;
    mCounter2 = time;
    mBoidParamMgr._1C = 0;
    mBoidParamMgr._18 = 0;
    mModelData = (J3DModelData*) new TruncatedJ3DModelData;
    pUnits = new TUnit[500];
    _998 = 0.0f;
    _99C = 0.0f;
    add((CNode *)&mBoidParamMgr);
    
}

/*
 * --INFO--
 * Address:	803E4258
 * Size:	000074
 */
Pikmin::TUnit::~TUnit()
{
}

/*
 * --INFO--
 * Address:	803E42CC
 * Size:	0000D8
 */
void Pikmin::TMgr::setArchive(JKRArchive* arc)
{
	mParams.loadSettingFile(arc, "param/param_pikmin.txt");
	((TAnimator*)mModelData)->setArchive(arc);
	void* file = arc->getResource("param/param_boid.txt");
    if (file != nullptr) {
        RamStream stream(file, -1);
        stream.resetPosition(STREAM_MODE_TEXT, true);
        mBoidParamMgr.mParams[0].read(stream);
        mBoidParamMgr.mParams[1].read(stream);
        mBoidParamMgr.mParams[2].read(stream);
        mBoidParamMgr.mParams[3].read(stream);
        mBoidParamMgr.mParams[4].read(stream);
    }
}

/*
 * --INFO--
 * Address:	803E43A4
 * Size:	00011C
 */
void Pikmin::TMgr::initUnit()
{
    for (int i = 0; i<100; i++) {
        (pUnits[i]).init(this, 0);
    }
    for (int i = 100; i<200; i++) {
        (pUnits[i]).init(this, 1);
    }
    for (int i = 200; i<300; i++) {
        (pUnits[i]).init(this, 2);
    }
    for (int i = 300; i<400; i++) {
        (pUnits[i]).init(this, 3);
    }
    for (int i = 400; i<500; i++) {
        (pUnits[i]).init(this, 4);
    }
}

/*
 * --INFO--
 * Address:	803E44C0
 * Size:	0001A8
 */
void Pikmin::TMgr::update()
{
    if (mCounter != 0) {
        mCounter--;
    }

    // Annoying float + double arithmetic






    /* if (mCounter2 != 0) {
        u32 var = 0x4430;
        u32 count = mCounter;
        u32 count2 = mCounter2;


    }
    else {

    } */
    updateCalcBoid_();
    for (int i = 0; i<500; i++) {
        (pUnits[i]).update();
    }
    for (int i = 0; i<500; i++) {
        titleMgr->inField((TObjBase*)&pUnits[i]);
    }
}


} // namespace title
} // namespace ebi





namespace ebi {
namespace title {

/*
 * --INFO--
 * Address:	803E4930
 * Size:	0000C0
 */
void Pikmin::TMgr::forceArriveDest()
{
    for (int i = 0; i<500; i++) {
        (pUnits[i]).alive();
    }
    mBoidParamMgr._1C = mBoidParamMgr._18;
    mBoidParamMgr._18 = 0;
    u32 time               = 0.0f / sys->mDeltaTime;
    mCounter               = time;
    mCounter2              = time;
    for (int i = 0; i<500; i++) {
        TUnit* unit = &pUnits[i];
        unit->mPos = unit->destPos;
        unit->startState((Pikmin::TUnit::enumState)1);

    }
}

/*
 * --INFO--
 * Address:	803E49F0
 * Size:	000088
 */
void Pikmin::TMgr::assemble()
{
    mBoidParamMgr._1C = mBoidParamMgr._18;
    mBoidParamMgr._18 = 0;
    u32 time               = 2.0f / sys->mDeltaTime;
    mCounter               = time;
    mCounter2              = time;
    for (int i = 0; i<500; i++) {
        TUnit* unit = &pUnits[i];
        unit->goDestination();
    }
}

/*
 * --INFO--
 * Address:	803E4A78
 * Size:	000088
 */
void Pikmin::TMgr::quickAssemble()
{
    mBoidParamMgr._1C = mBoidParamMgr._18;
    mBoidParamMgr._18 = 1;
    u32 time               = 1.0f / sys->mDeltaTime;
    mCounter               = time;
    mCounter2              = time;
    for (int i = 0; i<500; i++) {
        TUnit* unit = &pUnits[i];
        unit->goDestination();
    }
}

/*
 * --INFO--
 * Address:	803E4B00
 * Size:	000090
 */
void Pikmin::TMgr::startBoid1(f32 arg)
{
    mBoidParamMgr._1C = mBoidParamMgr._18;
    mBoidParamMgr._18 = 2;
    u32 time               = (arg * 0.5f)  / sys->mDeltaTime;
    mCounter               = time;
    mCounter2              = time;
    for (int i = 0; i<500; i++) {
        TUnit* unit = &pUnits[i];
        unit->startState((Pikmin::TUnit::enumState)4);
    }
}

/*
 * --INFO--
 * Address:	803E4B90
 * Size:	000090
 */
void Pikmin::TMgr::startBoid2(f32 arg)
{
    mBoidParamMgr._1C = mBoidParamMgr._18;
    mBoidParamMgr._18 = 3;
    u32 time               = (arg * 0.5f)  / sys->mDeltaTime;
    mCounter               = time;
    mCounter2              = time;
    for (int i = 0; i<500; i++) {
        TUnit* unit = &pUnits[i];
        unit->startState((Pikmin::TUnit::enumState)4);
    }

}

/*
 * --INFO--
 * Address:	803E4C20
 * Size:	000090
 */
void Pikmin::TMgr::startBoid3(f32 arg)
{
    mBoidParamMgr._1C = mBoidParamMgr._18;
    mBoidParamMgr._18 = 4;
    u32 time               = (arg * 0.5f)  / sys->mDeltaTime;
    mCounter               = time;
    mCounter2              = time;
    for (int i = 0; i<500; i++) {
        TUnit* unit = &pUnits[i];
        unit->startState((Pikmin::TUnit::enumState)4);
    }

}

/*
 * --INFO--
 * Address:	803E4CB0
 * Size:	00009C
 */
void Pikmin::TMgr::startWindBlow(ebi::EGEBox2f&)
{
	/*
stwu     r1, -0x30(r1)
mflr     r0
stw      r0, 0x34(r1)
stmw     r27, 0x1c(r1)
mr       r27, r3
mr       r28, r4
li       r30, 0
li       r31, 0

lbl_803E4CD0:
lwz      r0, 0x2ac(r27)
add      r29, r0, r31
mr       r3, r29
lwz      r12, 0(r29)
lwz      r12, 0xc(r12)
mtctr    r12
bctrl
clrlwi.  r0, r3, 0x18
beq      lbl_803E4D28
lfs      f1, 8(r29)
mr       r3, r28
lfs      f0, 4(r29)
addi     r4, r1, 8
stfs     f0, 8(r1)
stfs     f1, 0xc(r1)
bl       "isOut__Q23ebi8EGEBox2fFR10Vector2<f>"
clrlwi.  r0, r3, 0x18
bne      lbl_803E4D28
lwz      r0, 0x2ac(r27)
li       r4, 3
add      r3, r0, r31
bl startState__Q43ebi5title6Pikmin5TUnitFQ53ebi5title6Pikmin5TUnit9enumState

lbl_803E4D28:
addi     r30, r30, 1
addi     r31, r31, 0x98
cmpwi    r30, 0x1f4
blt      lbl_803E4CD0
lmw      r27, 0x1c(r1)
lwz      r0, 0x34(r1)
mtlr     r0
addi     r1, r1, 0x30
blr
	*/
}

/*
 * --INFO--
 * Address:	803E4D4C
 * Size:	0000AC
 */
void Pikmin::TMgr::startDemo()
{
	/*
stwu     r1, -0x20(r1)
mflr     r0
stw      r0, 0x24(r1)
stw      r31, 0x1c(r1)
li       r31, 0
stw      r30, 0x18(r1)
li       r30, 0
stw      r29, 0x14(r1)
mr       r29, r3

lbl_803E4D70:
lwz      r0, 0x2ac(r29)
add      r3, r0, r31
bl       alive__Q43ebi5title6Pikmin5TUnitFv
addi     r30, r30, 1
addi     r31, r31, 0x98
cmpwi    r30, 0x1f4
blt      lbl_803E4D70
lwz      r3, 0x2c8(r29)
li       r0, 1
lfs      f1, lbl_8051FC90@sda21(r2)
stw      r3, 0x2cc(r29)
stw      r0, 0x2c8(r29)
lwz      r3, sys@sda21(r13)
lfs      f0, 0x54(r3)
fdivs    f1, f1, f0
bl       __cvt_fp2unsigned
stw      r3, 0x980(r29)
li       r31, 0
mr       r30, r31
stw      r3, 0x984(r29)

lbl_803E4DC0:
lwz      r0, 0x2ac(r29)
add      r3, r0, r30
bl       goDestination__Q43ebi5title6Pikmin5TUnitFv
addi     r31, r31, 1
addi     r30, r30, 0x98
cmpwi    r31, 0x1f4
blt      lbl_803E4DC0
lwz      r0, 0x24(r1)
lwz      r31, 0x1c(r1)
lwz      r30, 0x18(r1)
lwz      r29, 0x14(r1)
mtlr     r0
addi     r1, r1, 0x20
blr
	*/
}

/*
 * --INFO--
 * Address:	803E4DF8
 * Size:	00006C
 */
void Pikmin::TMgr::enemyPushOut(ebi::title::TObjBase*)
{
	/*
stwu     r1, -0x20(r1)
mflr     r0
stw      r0, 0x24(r1)
stw      r31, 0x1c(r1)
li       r31, 0
stw      r30, 0x18(r1)
li       r30, 0
stw      r29, 0x14(r1)
mr       r29, r4
stw      r28, 0x10(r1)
mr       r28, r3

lbl_803E4E24:
lwz      r0, 0x2ac(r28)
mr       r3, r29
add      r4, r0, r31
bl       pushOut__Q33ebi5title8TObjBaseFPQ33ebi5title8TObjBase
addi     r30, r30, 1
addi     r31, r31, 0x98
cmpwi    r30, 0x1f4
blt      lbl_803E4E24
lwz      r0, 0x24(r1)
lwz      r31, 0x1c(r1)
lwz      r30, 0x18(r1)
lwz      r29, 0x14(r1)
lwz      r28, 0x10(r1)
mtlr     r0
addi     r1, r1, 0x20
blr
	*/
}

/*
 * --INFO--
 * Address:	803E4E64
 * Size:	0003B8
 */
void Pikmin::TMgr::updateCalcBoid_()
{
	/*
stwu     r1, -0xa0(r1)
mflr     r0
stw      r0, 0xa4(r1)
stfd     f31, 0x90(r1)
psq_st   f31, 152(r1), 0, qr0
stfd     f30, 0x80(r1)
psq_st   f30, 136(r1), 0, qr0
stfd     f29, 0x70(r1)
psq_st   f29, 120(r1), 0, qr0
stfd     f28, 0x60(r1)
psq_st   f28, 104(r1), 0, qr0
stfd     f27, 0x50(r1)
psq_st   f27, 88(r1), 0, qr0
stfd     f26, 0x40(r1)
psq_st   f26, 72(r1), 0, qr0
stmw     r23, 0x1c(r1)
lbz      r0, init$4027@sda21(r13)
mr       r31, r3
extsb.   r0, r0
bne      lbl_803E4EC4
li       r3, 0
li       r0, 1
stw      r3, boidCalcTimer$4026@sda21(r13)
stb      r0, init$4027@sda21(r13)

lbl_803E4EC4:
lwz      r3, boidCalcTimer$4026@sda21(r13)
addi     r0, r3, 1
cmpwi    r0, 0xa
stw      r0, boidCalcTimer$4026@sda21(r13)
blt      lbl_803E4F94
li       r30, 0
lfs      f0, lbl_8051FC60@sda21(r2)
stw      r30, boidCalcTimer$4026@sda21(r13)
li       r29, 0
li       r28, 0
stfs     f0, 0x988(r31)
stfs     f0, 0x98c(r31)

lbl_803E4EF4:
lwz      r0, 0x2ac(r31)
add      r3, r0, r30
lwz      r12, 0(r3)
lwz      r12, 0xc(r12)
mtctr    r12
bctrl
clrlwi.  r0, r3, 0x18
beq      lbl_803E4F40
lwz      r0, 0x2ac(r31)
addi     r29, r29, 1
lfs      f1, 0x988(r31)
add      r3, r0, r30
lfs      f3, 0x98c(r31)
lfs      f0, 4(r3)
lfs      f2, 8(r3)
fadds    f0, f1, f0
fadds    f1, f3, f2
stfs     f0, 0x988(r31)
stfs     f1, 0x98c(r31)

lbl_803E4F40:
addi     r28, r28, 1
addi     r30, r30, 0x98
cmpwi    r28, 0x1f4
blt      lbl_803E4EF4
cmpwi    r29, 0
beq      lbl_803E4F94
xoris    r3, r29, 0x8000
lis      r0, 0x4330
stw      r3, 0xc(r1)
lfd      f2, lbl_8051FCD8@sda21(r2)
stw      r0, 8(r1)
lfs      f3, lbl_8051FC90@sda21(r2)
lfd      f1, 8(r1)
lfs      f0, 0x988(r31)
fsubs    f1, f1, f2
fdivs    f1, f3, f1
fmuls    f0, f0, f1
stfs     f0, 0x988(r31)
lfs      f0, 0x98c(r31)
fmuls    f0, f0, f1
stfs     f0, 0x98c(r31)

lbl_803E4F94:
lwz      r5, boidCalcTimer$4026@sda21(r13)
lis      r3, 0x66666667@ha
addi     r4, r3, 0x66666667@l
mulli    r0, r5, 0x1f4
cmpwi    r5, 9
mulhw    r0, r4, r0
srawi    r0, r0, 2
srwi     r3, r0, 0x1f
add      r6, r0, r3
bne      lbl_803E4FC4
li       r28, 0x1f4
b        lbl_803E4FDC

lbl_803E4FC4:
addi     r0, r5, 1
mulli    r0, r0, 0x1f4
mulhw    r0, r4, r0
srawi    r0, r0, 2
srwi     r3, r0, 0x1f
add      r28, r0, r3

lbl_803E4FDC:
mulli    r29, r6, 0x98
mr       r27, r6
b        lbl_803E51D0

lbl_803E4FE8:
lwz      r0, 0x2ac(r31)
add      r26, r0, r29
mr       r3, r26
bl       isWalk__Q43ebi5title6Pikmin5TUnitFv
clrlwi.  r0, r3, 0x18
beq      lbl_803E51C8
lfs      f4, 0x978(r31)
li       r25, 0
lfs      f1, lbl_8051FC90@sda21(r2)
li       r24, 0
lfs      f29, lbl_8051FC60@sda21(r2)
li       r30, 0
lfs      f0, 0x98c(r31)
fsubs    f5, f1, f4
lfs      f2, 0x30(r26)
fmr      f28, f29
lfs      f1, 0x988(r31)
fmuls    f3, f0, f4
lfs      f0, 0x2c(r26)
fmuls    f2, f2, f5
fmuls    f1, f1, f4
fmuls    f0, f0, f5
fmr      f27, f29
fmr      f26, f29
fadds    f31, f3, f2
fadds    f30, f1, f0

lbl_803E5050:
lwz      r0, 0x2ac(r31)
add      r23, r0, r30
mr       r3, r23
lwz      r12, 0(r23)
lwz      r12, 0xc(r12)
mtctr    r12
bctrl
clrlwi.  r0, r3, 0x18
beq      lbl_803E5150
lfs      f2, 8(r26)
lfs      f0, 8(r23)
lfs      f1, 4(r26)
fsubs    f6, f2, f0
lfs      f0, 4(r23)
lfs      f3, lbl_8051FC60@sda21(r2)
fsubs    f5, f1, f0
fmuls    f7, f6, f6
fmadds   f8, f5, f5, f7
fcmpo    cr0, f8, f3
ble      lbl_803E50B4
ble      lbl_803E50B0
frsqrte  f0, f8
fmuls    f3, f0, f8
b        lbl_803E50B4

lbl_803E50B0:
fmr      f3, f8

lbl_803E50B4:
lfs      f0, 0x97c(r31)
fcmpo    cr0, f3, f0
bge      lbl_803E5150
lfs      f4, 0x14(r23)
lfs      f0, 0xc(r23)
lfs      f1, 0x10(r23)
fmuls    f2, f0, f4
lfs      f0, lbl_8051FC90@sda21(r2)
fmuls    f1, f1, f4
fcmpo    cr0, f3, f0
fadds    f29, f29, f2
fadds    f28, f28, f1
bge      lbl_803E50EC
fmr      f3, f0

lbl_803E50EC:
lfs      f0, lbl_8051FC60@sda21(r2)
fcmpo    cr0, f8, f0
ble      lbl_803E5110
fmadds   f1, f5, f5, f7
fcmpo    cr0, f1, f0
ble      lbl_803E5114
frsqrte  f0, f1
fmuls    f1, f0, f1
b        lbl_803E5114

lbl_803E5110:
fmr      f1, f0

lbl_803E5114:
lfs      f0, lbl_8051FC60@sda21(r2)
fcmpu    cr0, f0, f1
beq      lbl_803E5130
lfs      f0, lbl_8051FC90@sda21(r2)
fdivs    f0, f0, f1
fmuls    f5, f5, f0
fmuls    f6, f6, f0

lbl_803E5130:
fmuls    f0, f3, f3
lfs      f1, lbl_8051FC90@sda21(r2)
addi     r25, r25, 1
fdivs    f0, f1, f0
fmuls    f1, f6, f0
fmuls    f0, f5, f0
fadds    f26, f26, f1
fadds    f27, f27, f0

lbl_803E5150:
addi     r24, r24, 1
addi     r30, r30, 0x98
cmpwi    r24, 0x1f4
blt      lbl_803E5050
cmpwi    r25, 0
bne      lbl_803E517C
lfs      f2, lbl_8051FC60@sda21(r2)
fmr      f3, f2
fmr      f1, f2
fmr      f0, f2
b        lbl_803E51B0

lbl_803E517C:
xoris    r3, r25, 0x8000
lis      r0, 0x4330
stw      r3, 0xc(r1)
lfd      f1, lbl_8051FCD8@sda21(r2)
stw      r0, 8(r1)
lfs      f2, lbl_8051FC90@sda21(r2)
lfd      f0, 8(r1)
fsubs    f0, f0, f1
fdivs    f0, f2, f0
fmuls    f3, f26, f0
fmuls    f2, f27, f0
fmuls    f1, f29, f0
fmuls    f0, f28, f0

lbl_803E51B0:
stfs     f30, 0x6c(r26)
stfs     f31, 0x70(r26)
stfs     f1, 0x74(r26)
stfs     f0, 0x78(r26)
stfs     f2, 0x7c(r26)
stfs     f3, 0x80(r26)

lbl_803E51C8:
addi     r29, r29, 0x98
addi     r27, r27, 1

lbl_803E51D0:
cmpw     r27, r28
blt      lbl_803E4FE8
psq_l    f31, 152(r1), 0, qr0
lfd      f31, 0x90(r1)
psq_l    f30, 136(r1), 0, qr0
lfd      f30, 0x80(r1)
psq_l    f29, 120(r1), 0, qr0
lfd      f29, 0x70(r1)
psq_l    f28, 104(r1), 0, qr0
lfd      f28, 0x60(r1)
psq_l    f27, 88(r1), 0, qr0
lfd      f27, 0x50(r1)
psq_l    f26, 72(r1), 0, qr0
lfd      f26, 0x40(r1)
lmw      r23, 0x1c(r1)
lwz      r0, 0xa4(r1)
mtlr     r0
addi     r1, r1, 0xa0
blr
	*/
}

/*
 * --INFO--
 * Address:	803E521C
 * Size:	000070
 */
void Pikmin::TMgr::isAssemble()
{
	/*
stwu     r1, -0x20(r1)
mflr     r0
stw      r0, 0x24(r1)
stw      r31, 0x1c(r1)
li       r31, 0
stw      r30, 0x18(r1)
li       r30, 0
stw      r29, 0x14(r1)
mr       r29, r3

lbl_803E5240:
lwz      r0, 0x2ac(r29)
add      r3, r0, r31
bl       isAssemble__Q43ebi5title6Pikmin5TUnitFv
clrlwi.  r0, r3, 0x18
bne      lbl_803E525C
li       r3, 0
b        lbl_803E5270

lbl_803E525C:
addi     r30, r30, 1
addi     r31, r31, 0x98
cmpwi    r30, 0x1f4
blt      lbl_803E5240
li       r3, 1

lbl_803E5270:
lwz      r0, 0x24(r1)
lwz      r31, 0x1c(r1)
lwz      r30, 0x18(r1)
lwz      r29, 0x14(r1)
mtlr     r0
addi     r1, r1, 0x20
blr
	*/
}

/*
 * --INFO--
 * Address:	803E528C
 * Size:	000010
 */
Pikmin::TUnit* Pikmin::TMgr::getUnit(long)
{
	/*
mulli    r0, r4, 0x98
lwz      r3, 0x2ac(r3)
add      r3, r3, r0
blr
	*/
}

/*
 * --INFO--
 * Address:	803E529C
 * Size:	000360
 */
void Pikmin::TUnit::init(ebi::title::Pikmin::TMgr*, long)
{
	/*
stwu     r1, -0x50(r1)
mflr     r0
stw      r0, 0x54(r1)
stfd     f31, 0x40(r1)
psq_st   f31, 72(r1), 0, qr0
stfd     f30, 0x30(r1)
psq_st   f30, 56(r1), 0, qr0
stw      r31, 0x2c(r1)
stw      r30, 0x28(r1)
stw      r29, 0x24(r1)
mr       r30, r3
mr       r29, r5
stw      r4, 0x34(r3)
lwz      r3, 0x34(r3)
lfs      f30, 0x1a8(r3)
lfs      f31, 0x1d0(r3)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0xc(r1)
fsubs    f0, f30, f31
lfd      f3, lbl_8051FCD8@sda21(r2)
cmpwi    r29, 0
stw      r0, 8(r1)
li       r0, 0
lfs      f1, lbl_8051FCE0@sda21(r2)
lfd      f2, 8(r1)
fsubs    f2, f2, f3
fdivs    f1, f2, f1
fmadds   f0, f0, f1, f31
stfs     f0, 0x60(r30)
lwz      r3, 0x34(r30)
lwz      r31, 0x18(r3)
blt      lbl_803E5330
cmpwi    r29, 5
bge      lbl_803E5330
li       r0, 1

lbl_803E5330:
clrlwi.  r0, r0, 0x18
bne      lbl_803E5354
lis      r3, lbl_80497278@ha
lis      r5, lbl_80497290@ha
addi     r3, r3, lbl_80497278@l
li       r4, 0x124
addi     r5, r5, lbl_80497290@l
crclr    6
bl       panic_f__12JUTExceptionFPCciPCce

lbl_803E5354:
cmpwi    r29, 2
beq      lbl_803E53C8
bge      lbl_803E5370
cmpwi    r29, 0
beq      lbl_803E5410
bge      lbl_803E5380
b        lbl_803E54E8

lbl_803E5370:
cmpwi    r29, 4
beq      lbl_803E54A0
bge      lbl_803E54E8
b        lbl_803E5458

lbl_803E5380:
li       r3, 0xdc
bl       __nw__FUl
or.      r29, r3, r3
beq      lbl_803E54EC
lis      r3, __vt__8J3DModel@ha
lwz      r31, 0(r31)
addi     r0, r3, __vt__8J3DModel@l
stw      r0, 0(r29)
addi     r3, r29, 0x88
bl       init__15J3DVertexBufferFv
mr       r3, r29
bl       initialize__8J3DModelFv
mr       r3, r29
mr       r4, r31
lis      r5, 2
li       r6, 1
bl       entryModelData__8J3DModelFP12J3DModelDataUlUl
b        lbl_803E54EC

lbl_803E53C8:
li       r3, 0xdc
bl       __nw__FUl
or.      r29, r3, r3
beq      lbl_803E54EC
lis      r3, __vt__8J3DModel@ha
lwz      r31, 4(r31)
addi     r0, r3, __vt__8J3DModel@l
stw      r0, 0(r29)
addi     r3, r29, 0x88
bl       init__15J3DVertexBufferFv
mr       r3, r29
bl       initialize__8J3DModelFv
mr       r3, r29
mr       r4, r31
lis      r5, 2
li       r6, 1
bl       entryModelData__8J3DModelFP12J3DModelDataUlUl
b        lbl_803E54EC

lbl_803E5410:
li       r3, 0xdc
bl       __nw__FUl
or.      r29, r3, r3
beq      lbl_803E54EC
lis      r3, __vt__8J3DModel@ha
lwz      r31, 8(r31)
addi     r0, r3, __vt__8J3DModel@l
stw      r0, 0(r29)
addi     r3, r29, 0x88
bl       init__15J3DVertexBufferFv
mr       r3, r29
bl       initialize__8J3DModelFv
mr       r3, r29
mr       r4, r31
lis      r5, 2
li       r6, 1
bl       entryModelData__8J3DModelFP12J3DModelDataUlUl
b        lbl_803E54EC

lbl_803E5458:
li       r3, 0xdc
bl       __nw__FUl
or.      r29, r3, r3
beq      lbl_803E54EC
lis      r3, __vt__8J3DModel@ha
lwz      r31, 0xc(r31)
addi     r0, r3, __vt__8J3DModel@l
stw      r0, 0(r29)
addi     r3, r29, 0x88
bl       init__15J3DVertexBufferFv
mr       r3, r29
bl       initialize__8J3DModelFv
mr       r3, r29
mr       r4, r31
lis      r5, 2
li       r6, 1
bl       entryModelData__8J3DModelFP12J3DModelDataUlUl
b        lbl_803E54EC

lbl_803E54A0:
li       r3, 0xdc
bl       __nw__FUl
or.      r29, r3, r3
beq      lbl_803E54EC
lis      r3, __vt__8J3DModel@ha
lwz      r31, 0x10(r31)
addi     r0, r3, __vt__8J3DModel@l
stw      r0, 0(r29)
addi     r3, r29, 0x88
bl       init__15J3DVertexBufferFv
mr       r3, r29
bl       initialize__8J3DModelFv
mr       r3, r29
mr       r4, r31
lis      r5, 2
li       r6, 1
bl       entryModelData__8J3DModelFP12J3DModelDataUlUl
b        lbl_803E54EC

lbl_803E54E8:
li       r29, 0

lbl_803E54EC:
stw      r29, 0x28(r30)
addi     r3, r30, 0x38
lwz      r4, 0x34(r30)
lwz      r4, 0x18(r4)
lwz      r4, 0x14(r4)
lha      r4, 6(r4)
bl       init__12J3DFrameCtrlFs
lwz      r4, 0x34(r30)
addi     r3, r30, 0x4c
lwz      r4, 0x18(r4)
lwz      r4, 0x18(r4)
lha      r4, 6(r4)
bl       init__12J3DFrameCtrlFs
lwz      r3, sys@sda21(r13)
lwz      r0, 0xd4(r3)
cmpwi    r0, 5
beq      lbl_803E5534
b        lbl_803E5544

lbl_803E5534:
lwz      r3, 0x34(r30)
lfs      f0, 0x68(r3)
stfs     f0, 0x18(r30)
b        lbl_803E5550

lbl_803E5544:
lwz      r3, 0x34(r30)
lfs      f0, 0x40(r3)
stfs     f0, 0x18(r30)

lbl_803E5550:
lwz      r3, 0x34(r30)
lfs      f0, 0x90(r3)
stfs     f0, 0x1c(r30)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0xc(r1)
lfd      f3, lbl_8051FCD8@sda21(r2)
stw      r0, 8(r1)
lfs      f1, lbl_8051FCE0@sda21(r2)
lfd      f2, 8(r1)
lfs      f0, lbl_8051FCB4@sda21(r2)
fsubs    f2, f2, f3
fdivs    f1, f2, f1
fmuls    f0, f0, f1
stfs     f0, 0x48(r30)
bl       rand
xoris    r0, r3, 0x8000
lis      r3, 0x43300030@ha
stw      r0, 0x14(r1)
li       r0, 0
lfd      f3, lbl_8051FCD8@sda21(r2)
stw      r3, 0x10(r1)
lfs      f2, lbl_8051FCE0@sda21(r2)
lfd      f0, 0x10(r1)
lfs      f1, lbl_8051FCE8@sda21(r2)
fsubs    f3, f0, f3
lfs      f0, lbl_8051FCE4@sda21(r2)
fdivs    f2, f3, f2
fmadds   f0, f1, f2, f0
stfs     f0, 0x64(r30)
stb      r0, 0x94(r30)
psq_l    f31, 72(r1), 0, qr0
lfd      f31, 0x40(r1)
psq_l    f30, 56(r1), 0, qr0
lfd      f30, 0x30(r1)
lwz      r31, 0x2c(r1)
lwz      r30, 0x28(r1)
lwz      r0, 0x54(r1)
lwz      r29, 0x24(r1)
mtlr     r0
addi     r1, r1, 0x50
blr
	*/
}

/*
 * --INFO--
 * Address:	803E55FC
 * Size:	000098
 */
void Pikmin::TUnit::goDestination()
{
	/*
stwu     r1, -0x10(r1)
mflr     r0
lfs      f0, lbl_8051FC60@sda21(r2)
stw      r0, 0x14(r1)
lfs      f3, 0x43300030@l(r3)
lfs      f1, 8(r3)
lfs      f2, 0x2c(r3)
fsubs    f3, f3, f1
lfs      f1, 4(r3)
fsubs    f1, f2, f1
fmuls    f2, f3, f3
fmadds   f1, f1, f1, f2
fcmpo    cr0, f1, f0
ble      lbl_803E5644
ble      lbl_803E5648
frsqrte  f0, f1
fmuls    f1, f0, f1
b        lbl_803E5648

lbl_803E5644:
fmr      f1, f0

lbl_803E5648:
lwz      r4, 0x34(r3)
lfs      f0, 0xb8(r4)
fcmpo    cr0, f1, f0
bge      lbl_803E5664
li       r4, 1
bl startState__Q43ebi5title6Pikmin5TUnitFQ53ebi5title6Pikmin5TUnit9enumState
b        lbl_803E5684

lbl_803E5664:
lfs      f0, 0xe0(r4)
fcmpo    cr0, f1, f0
bge      lbl_803E567C
li       r4, 2
bl startState__Q43ebi5title6Pikmin5TUnitFQ53ebi5title6Pikmin5TUnit9enumState
b        lbl_803E5684

lbl_803E567C:
li       r4, 2
bl startState__Q43ebi5title6Pikmin5TUnitFQ53ebi5title6Pikmin5TUnit9enumState

lbl_803E5684:
lwz      r0, 0x14(r1)
mtlr     r0
addi     r1, r1, 0x10
blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	000028
 */
/* void Pikmin::TUnit::chaseKogane(ebi::title::TObjBase*)
{
	// UNUSED FUNCTION
} */

/*
 * --INFO--
 * Address:	803E5694
 * Size:	00006C
 */
bool Pikmin::TUnit::beAttacked()
{
	/*
stwu     r1, -0x20(r1)
mflr     r0
stw      r0, 0x24(r1)
stw      r31, 0x1c(r1)
mr       r31, r3
lbz      r0, 0x94(r3)
cmplwi   r0, 0
beq      lbl_803E56BC
li       r3, 0
b        lbl_803E56EC

lbl_803E56BC:
li       r3, 1
li       r0, 0
stb      r3, 0x94(r31)
addi     r3, r1, 8
stw      r0, 0x84(r31)
lwz      r4, titleMgr__Q23ebi5title@sda21(r13)
bl       getPosOutOfViewField__Q33ebi5title9TTitleMgrFv
lfs      f0, 8(r1)
li       r3, 1
stfs     f0, 4(r31)
lfs      f0, 0xc(r1)
stfs     f0, 8(r31)

lbl_803E56EC:
lwz      r0, 0x24(r1)
lwz      r31, 0x1c(r1)
mtlr     r0
addi     r1, r1, 0x20
blr
	*/
}

/*
 * --INFO--
 * Address:	803E5700
 * Size:	00000C
 */
void Pikmin::TUnit::alive()
{
	isDead = false;
}

/*
 * --INFO--
 * Address:	803E570C
 * Size:	000014
 */
bool Pikmin::TUnit::isCalc()
{
	return  (bool) ( _84 );
}

/*
 * --INFO--
 * Address:	803E5720
 * Size:	000024
 */
bool Pikmin::TUnit::isAssemble()
{
	/*
lwz      r0, 0x84(r3)
cmpwi    r0, 0
beq      lbl_803E5734
cmpwi    r0, 1
bne      lbl_803E573C

lbl_803E5734:
li       r3, 1
blr

lbl_803E573C:
li       r3, 0
blr
	*/
}

/*
 * --INFO--
 * Address:	803E5744
 * Size:	000024
 */
bool Pikmin::TUnit::isWalk()
{
	/*
lwz      r0, 0x84(r3)
cmpwi    r0, 2
beq      lbl_803E5758
cmpwi    r0, 4
bne      lbl_803E5760

lbl_803E5758:
li       r3, 1
blr

lbl_803E5760:
li       r3, 0
blr
	*/
}

/*
 * --INFO--
 * Address:	........
 * Size:	000014
 */
/* void Pikmin::TUnit::isBoid()
{
	// UNUSED FUNCTION
} */

/*
 * --INFO--
 * Address:	803E5768
 * Size:	000150
 */
void Pikmin::TUnit::startState(ebi::title::Pikmin::TUnit::enumState)
{
	/*
stwu     r1, -0x20(r1)
mflr     r0
stw      r0, 0x24(r1)
stw      r31, 0x1c(r1)
mr       r31, r3
lwz      r3, 0x84(r3)
cmpw     r4, r3
beq      lbl_803E58A4
lbz      r0, 0x94(r31)
cmplwi   r0, 1
bne      lbl_803E57A0
li       r0, 0
stw      r0, 0x84(r31)
b        lbl_803E57A8

lbl_803E57A0:
stw      r3, 0x88(r31)
stw      r4, 0x84(r31)

lbl_803E57A8:
lwz      r0, 0x84(r31)
cmpwi    r0, 2
beq      lbl_803E58A4
bge      lbl_803E57C8
cmpwi    r0, 0
beq      lbl_803E57D4
bge      lbl_803E5878
b        lbl_803E58A4

lbl_803E57C8:
cmpwi    r0, 4
bge      lbl_803E58A4
b        lbl_803E57E8

lbl_803E57D4:
lfs      f0, 0x2c(r31)
stfs     f0, 4(r31)
lfs      f0, 0x30(r31)
stfs     f0, 8(r31)
b        lbl_803E58A4

lbl_803E57E8:
lfs      f1, lbl_8051FC90@sda21(r2)
lfs      f0, lbl_8051FC60@sda21(r2)
stfs     f1, 0xc(r31)
stfs     f0, 0x10(r31)
lwz      r4, 0x34(r31)
lwz      r3, sys@sda21(r13)
lfs      f1, 0x270(r4)
lfs      f0, 0x54(r3)
fdivs    f1, f1, f0
bl       __cvt_fp2unsigned
stw      r3, 0x8c(r31)
stw      r3, 0x90(r31)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0xc(r1)
lfd      f2, lbl_8051FCD8@sda21(r2)
stw      r0, 8(r1)
lfs      f3, lbl_8051FCE0@sda21(r2)
lfd      f1, 8(r1)
lfs      f0, lbl_8051FCB4@sda21(r2)
fsubs    f4, f1, f2
lfs      f1, lbl_8051FCEC@sda21(r2)
lfs      f2, lbl_8051FCC0@sda21(r2)
fdivs    f3, f4, f3
fmuls    f0, f0, f3
stfs     f0, 0x5c(r31)
lwz      r3, sys@sda21(r13)
lwz      r4, 0x34(r31)
lfs      f0, 0x54(r3)
lfs      f3, 0x180(r4)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x58(r31)
b        lbl_803E58A4

lbl_803E5878:
lfs      f0, lbl_8051FC60@sda21(r2)
lfs      f1, lbl_8051FCEC@sda21(r2)
stfs     f0, 0x14(r31)
lfs      f2, lbl_8051FCC0@sda21(r2)
lwz      r3, sys@sda21(r13)
lfs      f3, 0x60(r31)
lfs      f0, 0x54(r3)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x44(r31)

lbl_803E58A4:
lwz      r0, 0x24(r1)
lwz      r31, 0x1c(r1)
mtlr     r0
addi     r1, r1, 0x20
blr
	*/
}

/*
 * --INFO--
 * Address:	803E58B8
 * Size:	000DD4
 */
void Pikmin::TUnit::update()
{
	/*
stwu     r1, -0xa0(r1)
mflr     r0
stw      r0, 0xa4(r1)
stfd     f31, 0x90(r1)
psq_st   f31, 152(r1), 0, qr0
stfd     f30, 0x80(r1)
psq_st   f30, 136(r1), 0, qr0
stfd     f29, 0x70(r1)
psq_st   f29, 120(r1), 0, qr0
stfd     f28, 0x60(r1)
psq_st   f28, 104(r1), 0, qr0
stfd     f27, 0x50(r1)
psq_st   f27, 88(r1), 0, qr0
stw      r31, 0x4c(r1)
stw      r30, 0x48(r1)
stw      r29, 0x44(r1)
mr       r31, r3
lwz      r3, titleMgr__Q23ebi5title@sda21(r13)
mr       r4, r31
bl       isOutViewField__Q33ebi5title9TTitleMgrFPQ33ebi5title8TObjBase
clrlwi.  r0, r3, 0x18
beq      lbl_803E5A54
lwz      r3, titleMgr__Q23ebi5title@sda21(r13)
addi     r4, r31, 0x2c
lfs      f1, lbl_8051FC60@sda21(r2)
bl       "isOutViewField__Q33ebi5title9TTitleMgrFR10Vector2<f>f"
clrlwi.  r0, r3, 0x18
beq      lbl_803E5A54
lwz      r3, 0x84(r31)
cmpwi    r3, 0
beq      lbl_803E5A54
lbz      r0, 0x94(r31)
cmplwi   r0, 1
bne      lbl_803E594C
li       r0, 0
stw      r0, 0x84(r31)
b        lbl_803E5958

lbl_803E594C:
stw      r3, 0x88(r31)
li       r0, 0
stw      r0, 0x84(r31)

lbl_803E5958:
lwz      r0, 0x84(r31)
cmpwi    r0, 2
beq      lbl_803E5A54
bge      lbl_803E5978
cmpwi    r0, 0
beq      lbl_803E5984
bge      lbl_803E5A28
b        lbl_803E5A54

lbl_803E5978:
cmpwi    r0, 4
bge      lbl_803E5A54
b        lbl_803E5998

lbl_803E5984:
lfs      f0, 0x2c(r31)
stfs     f0, 4(r31)
lfs      f0, 0x30(r31)
stfs     f0, 8(r31)
b        lbl_803E5A54

lbl_803E5998:
lfs      f1, lbl_8051FC90@sda21(r2)
lfs      f0, lbl_8051FC60@sda21(r2)
stfs     f1, 0xc(r31)
stfs     f0, 0x10(r31)
lwz      r4, 0x34(r31)
lwz      r3, sys@sda21(r13)
lfs      f1, 0x270(r4)
lfs      f0, 0x54(r3)
fdivs    f1, f1, f0
bl       __cvt_fp2unsigned
stw      r3, 0x8c(r31)
stw      r3, 0x90(r31)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0x2c(r1)
lfd      f2, lbl_8051FCD8@sda21(r2)
stw      r0, 0x28(r1)
lfs      f3, lbl_8051FCE0@sda21(r2)
lfd      f1, 0x28(r1)
lfs      f0, lbl_8051FCB4@sda21(r2)
fsubs    f4, f1, f2
lfs      f1, lbl_8051FCEC@sda21(r2)
lfs      f2, lbl_8051FCC0@sda21(r2)
fdivs    f3, f4, f3
fmuls    f0, f0, f3
stfs     f0, 0x5c(r31)
lwz      r3, sys@sda21(r13)
lwz      r4, 0x34(r31)
lfs      f0, 0x54(r3)
lfs      f3, 0x180(r4)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x58(r31)
b        lbl_803E5A54

lbl_803E5A28:
lfs      f0, lbl_8051FC60@sda21(r2)
lfs      f1, lbl_8051FCEC@sda21(r2)
stfs     f0, 0x14(r31)
lfs      f2, lbl_8051FCC0@sda21(r2)
lwz      r3, sys@sda21(r13)
lfs      f3, 0x60(r31)
lfs      f0, 0x54(r3)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x44(r31)

lbl_803E5A54:
lwz      r0, 0x84(r31)
lwz      r3, 0x34(r31)
cmpwi    r0, 3
lfs      f7, 0x96c(r3)
lfs      f9, 0x970(r3)
lfs      f31, 0x974(r3)
beq      lbl_803E5A94
bge      lbl_803E5A84
cmpwi    r0, 1
beq      lbl_803E5BE4
bge      lbl_803E5CA8
b        lbl_803E63C8

lbl_803E5A84:
cmpwi    r0, 5
beq      lbl_803E5FD4
bge      lbl_803E63C8
b        lbl_803E6348

lbl_803E5A94:
lwz      r3, 0x8c(r31)
cmplwi   r3, 0
beq      lbl_803E5AA8
addi     r0, r3, -1
stw      r0, 0x8c(r31)

lbl_803E5AA8:
lwz      r0, 0x8c(r31)
cmplwi   r0, 0
bne      lbl_803E63C8
lwz      r3, 0x84(r31)
cmpwi    r3, 1
beq      lbl_803E63C8
lbz      r0, 0x94(r31)
cmplwi   r0, 1
bne      lbl_803E5AD8
li       r0, 0
stw      r0, 0x84(r31)
b        lbl_803E5AE4

lbl_803E5AD8:
stw      r3, 0x88(r31)
li       r0, 1
stw      r0, 0x84(r31)

lbl_803E5AE4:
lwz      r0, 0x84(r31)
cmpwi    r0, 2
beq      lbl_803E63C8
bge      lbl_803E5B04
cmpwi    r0, 0
beq      lbl_803E5B10
bge      lbl_803E5BB4
b        lbl_803E63C8

lbl_803E5B04:
cmpwi    r0, 4
bge      lbl_803E63C8
b        lbl_803E5B24

lbl_803E5B10:
lfs      f0, 0x2c(r31)
stfs     f0, 4(r31)
lfs      f0, 0x30(r31)
stfs     f0, 8(r31)
b        lbl_803E63C8

lbl_803E5B24:
lfs      f1, lbl_8051FC90@sda21(r2)
lfs      f0, lbl_8051FC60@sda21(r2)
stfs     f1, 0xc(r31)
stfs     f0, 0x10(r31)
lwz      r4, 0x34(r31)
lwz      r3, sys@sda21(r13)
lfs      f1, 0x270(r4)
lfs      f0, 0x54(r3)
fdivs    f1, f1, f0
bl       __cvt_fp2unsigned
stw      r3, 0x8c(r31)
stw      r3, 0x90(r31)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0x2c(r1)
lfd      f2, lbl_8051FCD8@sda21(r2)
stw      r0, 0x28(r1)
lfs      f3, lbl_8051FCE0@sda21(r2)
lfd      f1, 0x28(r1)
lfs      f0, lbl_8051FCB4@sda21(r2)
fsubs    f4, f1, f2
lfs      f1, lbl_8051FCEC@sda21(r2)
lfs      f2, lbl_8051FCC0@sda21(r2)
fdivs    f3, f4, f3
fmuls    f0, f0, f3
stfs     f0, 0x5c(r31)
lwz      r3, sys@sda21(r13)
lwz      r4, 0x34(r31)
lfs      f0, 0x54(r3)
lfs      f3, 0x180(r4)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x58(r31)
b        lbl_803E63C8

lbl_803E5BB4:
lfs      f0, lbl_8051FC60@sda21(r2)
lfs      f1, lbl_8051FCEC@sda21(r2)
stfs     f0, 0x14(r31)
lfs      f2, lbl_8051FCC0@sda21(r2)
lwz      r3, sys@sda21(r13)
lfs      f3, 0x60(r31)
lfs      f0, 0x54(r3)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x44(r31)
b        lbl_803E63C8

lbl_803E5BE4:
lfs      f1, 0xc(r31)
lfs      f0, lbl_8051FC64@sda21(r2)
lfs      f2, 0x10(r31)
fadds    f0, f1, f0
lfs      f1, lbl_8051FC60@sda21(r2)
fadds    f2, f2, f1
stfs     f0, 0xc(r31)
stfs     f2, 0x10(r31)
lfs      f3, 0xc(r31)
lfs      f2, 0x10(r31)
fmuls    f0, f3, f3
fmuls    f2, f2, f2
fadds    f0, f0, f2
fcmpo    cr0, f0, f1
ble      lbl_803E5C38
fmadds   f2, f3, f3, f2
fcmpo    cr0, f2, f1
ble      lbl_803E5C3C
frsqrte  f0, f2
fmuls    f2, f0, f2
b        lbl_803E5C3C

lbl_803E5C38:
fmr      f2, f1

lbl_803E5C3C:
lfs      f0, lbl_8051FC60@sda21(r2)
fcmpu    cr0, f0, f2
beq      lbl_803E5C68
lfs      f1, lbl_8051FC90@sda21(r2)
lfs      f0, 0xc(r31)
fdivs    f1, f1, f2
fmuls    f0, f0, f1
stfs     f0, 0xc(r31)
lfs      f0, 0x10(r31)
fmuls    f0, f0, f1
stfs     f0, 0x10(r31)

lbl_803E5C68:
lfs      f0, 0x2c(r31)
mr       r3, r31
lfs      f5, 4(r31)
lfs      f1, 0x30(r31)
lfs      f4, 8(r31)
fsubs    f2, f0, f5
lfs      f0, lbl_8051FCF0@sda21(r2)
fsubs    f3, f1, f4
fmuls    f1, f2, f0
fmuls    f0, f3, f0
fadds    f1, f5, f1
fadds    f0, f4, f0
stfs     f1, 4(r31)
stfs     f0, 8(r31)
bl       updateEnemyReaction___Q43ebi5title6Pikmin5TUnitFv
b        lbl_803E63C8

lbl_803E5CA8:
lfs      f2, 0x30(r31)
lfs      f0, 8(r31)
lfs      f1, 0x2c(r31)
fsubs    f29, f2, f0
lfs      f0, 4(r31)
lfs      f31, lbl_8051FC60@sda21(r2)
fsubs    f30, f1, f0
fmuls    f28, f29, f29
fmadds   f27, f30, f30, f28
fcmpo    cr0, f27, f31
ble      lbl_803E5CE8
ble      lbl_803E5CE4
frsqrte  f0, f27
fmuls    f31, f0, f27
b        lbl_803E5CE8

lbl_803E5CE4:
fmr      f31, f27

lbl_803E5CE8:
lfs      f0, 0xb8(r3)
fcmpo    cr0, f31, f0
bge      lbl_803E5E24
cmpwi    r0, 1
beq      lbl_803E5F5C
lbz      r0, 0x94(r31)
cmplwi   r0, 1
bne      lbl_803E5D14
li       r0, 0
stw      r0, 0x84(r31)
b        lbl_803E5D24

lbl_803E5D14:
lwz      r3, 0x84(r31)
li       r0, 1
stw      r3, 0x88(r31)
stw      r0, 0x84(r31)

lbl_803E5D24:
lwz      r0, 0x84(r31)
cmpwi    r0, 2
beq      lbl_803E5F5C
bge      lbl_803E5D44
cmpwi    r0, 0
beq      lbl_803E5D50
bge      lbl_803E5DF4
b        lbl_803E5F5C

lbl_803E5D44:
cmpwi    r0, 4
bge      lbl_803E5F5C
b        lbl_803E5D64

lbl_803E5D50:
lfs      f0, 0x2c(r31)
stfs     f0, 4(r31)
lfs      f0, 0x30(r31)
stfs     f0, 8(r31)
b        lbl_803E5F5C

lbl_803E5D64:
lfs      f1, lbl_8051FC90@sda21(r2)
lfs      f0, lbl_8051FC60@sda21(r2)
stfs     f1, 0xc(r31)
stfs     f0, 0x10(r31)
lwz      r4, 0x34(r31)
lwz      r3, sys@sda21(r13)
lfs      f1, 0x270(r4)
lfs      f0, 0x54(r3)
fdivs    f1, f1, f0
bl       __cvt_fp2unsigned
stw      r3, 0x8c(r31)
stw      r3, 0x90(r31)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0x2c(r1)
lfd      f2, lbl_8051FCD8@sda21(r2)
stw      r0, 0x28(r1)
lfs      f3, lbl_8051FCE0@sda21(r2)
lfd      f1, 0x28(r1)
lfs      f0, lbl_8051FCB4@sda21(r2)
fsubs    f4, f1, f2
lfs      f1, lbl_8051FCEC@sda21(r2)
lfs      f2, lbl_8051FCC0@sda21(r2)
fdivs    f3, f4, f3
fmuls    f0, f0, f3
stfs     f0, 0x5c(r31)
lwz      r3, sys@sda21(r13)
lwz      r4, 0x34(r31)
lfs      f0, 0x54(r3)
lfs      f3, 0x180(r4)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x58(r31)
b        lbl_803E5F5C

lbl_803E5DF4:
lfs      f0, lbl_8051FC60@sda21(r2)
lfs      f1, lbl_8051FCEC@sda21(r2)
stfs     f0, 0x14(r31)
lfs      f2, lbl_8051FCC0@sda21(r2)
lwz      r3, sys@sda21(r13)
lfs      f3, 0x60(r31)
lfs      f0, 0x54(r3)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x44(r31)
b        lbl_803E5F5C

lbl_803E5E24:
lfs      f0, 0xe0(r3)
fcmpo    cr0, f31, f0
bge      lbl_803E5F5C
cmpwi    r0, 2
beq      lbl_803E5F5C
lbz      r0, 0x94(r31)
cmplwi   r0, 1
bne      lbl_803E5E50
li       r0, 0
stw      r0, 0x84(r31)
b        lbl_803E5E60

lbl_803E5E50:
lwz      r3, 0x84(r31)
li       r0, 2
stw      r3, 0x88(r31)
stw      r0, 0x84(r31)

lbl_803E5E60:
lwz      r0, 0x84(r31)
cmpwi    r0, 2
beq      lbl_803E5F5C
bge      lbl_803E5E80
cmpwi    r0, 0
beq      lbl_803E5E8C
bge      lbl_803E5F30
b        lbl_803E5F5C

lbl_803E5E80:
cmpwi    r0, 4
bge      lbl_803E5F5C
b        lbl_803E5EA0

lbl_803E5E8C:
lfs      f0, 0x2c(r31)
stfs     f0, 4(r31)
lfs      f0, 0x30(r31)
stfs     f0, 8(r31)
b        lbl_803E5F5C

lbl_803E5EA0:
lfs      f1, lbl_8051FC90@sda21(r2)
lfs      f0, lbl_8051FC60@sda21(r2)
stfs     f1, 0xc(r31)
stfs     f0, 0x10(r31)
lwz      r4, 0x34(r31)
lwz      r3, sys@sda21(r13)
lfs      f1, 0x270(r4)
lfs      f0, 0x54(r3)
fdivs    f1, f1, f0
bl       __cvt_fp2unsigned
stw      r3, 0x8c(r31)
stw      r3, 0x90(r31)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0x2c(r1)
lfd      f2, lbl_8051FCD8@sda21(r2)
stw      r0, 0x28(r1)
lfs      f3, lbl_8051FCE0@sda21(r2)
lfd      f1, 0x28(r1)
lfs      f0, lbl_8051FCB4@sda21(r2)
fsubs    f4, f1, f2
lfs      f1, lbl_8051FCEC@sda21(r2)
lfs      f2, lbl_8051FCC0@sda21(r2)
fdivs    f3, f4, f3
fmuls    f0, f0, f3
stfs     f0, 0x5c(r31)
lwz      r3, sys@sda21(r13)
lwz      r4, 0x34(r31)
lfs      f0, 0x54(r3)
lfs      f3, 0x180(r4)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x58(r31)
b        lbl_803E5F5C

lbl_803E5F30:
lfs      f0, lbl_8051FC60@sda21(r2)
lfs      f1, lbl_8051FCEC@sda21(r2)
stfs     f0, 0x14(r31)
lfs      f2, lbl_8051FCC0@sda21(r2)
lwz      r3, sys@sda21(r13)
lfs      f3, 0x60(r31)
lfs      f0, 0x54(r3)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x44(r31)

lbl_803E5F5C:
lwz      r3, 0x34(r31)
lfs      f0, lbl_8051FC60@sda21(r2)
lfs      f1, 0x298(r3)
fcmpo    cr0, f27, f0
fmuls    f2, f31, f1
ble      lbl_803E5F8C
fmadds   f1, f30, f30, f28
fcmpo    cr0, f1, f0
ble      lbl_803E5F90
frsqrte  f0, f1
fmuls    f1, f0, f1
b        lbl_803E5F90

lbl_803E5F8C:
fmr      f1, f0

lbl_803E5F90:
lfs      f0, lbl_8051FC60@sda21(r2)
fcmpu    cr0, f0, f1
beq      lbl_803E5FAC
lfs      f0, lbl_8051FC90@sda21(r2)
fdivs    f0, f0, f1
fmuls    f30, f30, f0
fmuls    f29, f29, f0

lbl_803E5FAC:
fmuls    f1, f30, f2
mr       r3, r31
fmuls    f0, f29, f2
addi     r4, r1, 0x20
stfs     f1, 0x20(r1)
stfs     f0, 0x24(r1)
bl       "updateSmoothWalk___Q43ebi5title6Pikmin5TUnitFR10Vector2<f>"
mr       r3, r31
bl       updateEnemyReaction___Q43ebi5title6Pikmin5TUnitFv
b        lbl_803E63C8

lbl_803E5FD4:
lfs      f1, 0x30(r31)
lfs      f0, 8(r31)
lfs      f2, 0x2c(r31)
fsubs    f3, f1, f0
lfs      f1, 4(r31)
lfs      f0, lbl_8051FC60@sda21(r2)
fsubs    f1, f2, f1
fmuls    f2, f3, f3
fmadds   f1, f1, f1, f2
fcmpo    cr0, f1, f0
ble      lbl_803E6010
ble      lbl_803E6014
frsqrte  f0, f1
fmuls    f1, f0, f1
b        lbl_803E6014

lbl_803E6010:
fmr      f1, f0

lbl_803E6014:
lfs      f0, 0x248(r3)
fcmpo    cr0, f1, f0
ble      lbl_803E6028
li       r0, 0
stw      r0, 0x68(r31)

lbl_803E6028:
lwz      r3, 0x68(r31)
cmplwi   r3, 0
beq      lbl_803E6218
lwz      r12, 0(r3)
lwz      r12, 0xc(r12)
mtctr    r12
bctrl
clrlwi.  r0, r3, 0x18
beq      lbl_803E620C
lwz      r3, 0x68(r31)
lwz      r12, 0(r3)
lwz      r12, 8(r12)
mtctr    r12
bctrl
cmpwi    r3, 5
beq      lbl_803E6084
bge      lbl_803E6078
cmpwi    r3, -1
beq      lbl_803E63C8
b        lbl_803E63C8

lbl_803E6078:
cmpwi    r3, 7
bge      lbl_803E63C8
b        lbl_803E6148

lbl_803E6084:
lwz      r3, 0x68(r31)
lfs      f0, 8(r31)
lfs      f1, 8(r3)
lfs      f2, 4(r3)
fsubs    f3, f1, f0
lfs      f1, 4(r31)
lfs      f0, lbl_8051FC60@sda21(r2)
fsubs    f6, f2, f1
fmuls    f1, f3, f3
fmadds   f1, f6, f6, f1
fcmpo    cr0, f1, f0
ble      lbl_803E60C4
ble      lbl_803E60C8
frsqrte  f0, f1
fmuls    f1, f0, f1
b        lbl_803E60C8

lbl_803E60C4:
fmr      f1, f0

lbl_803E60C8:
lfs      f0, lbl_8051FC60@sda21(r2)
fcmpu    cr0, f0, f1
beq      lbl_803E60E4
lfs      f0, lbl_8051FC90@sda21(r2)
fdivs    f0, f0, f1
fmuls    f6, f6, f0
fmuls    f3, f3, f0

lbl_803E60E4:
lwz      r5, 0x34(r31)
mr       r3, r31
lfs      f5, 0x14(r31)
addi     r4, r1, 0x18
lfs      f4, 0x1f8(r5)
lfs      f1, 0x10(r31)
lfs      f0, 0xc(r31)
fmuls    f2, f3, f4
fmuls    f3, f1, f5
fmuls    f1, f0, f5
fmuls    f0, f6, f4
fadds    f3, f3, f2
fadds    f2, f1, f0
stfs     f3, 0x1c(r1)
stfs     f2, 0x18(r1)
lfs      f1, 0x80(r31)
lfs      f0, 0x7c(r31)
fmuls    f1, f1, f31
fmuls    f0, f0, f31
fadds    f1, f3, f1
fadds    f0, f2, f0
stfs     f1, 0x1c(r1)
stfs     f0, 0x18(r1)
bl       "updateSmoothWalk___Q43ebi5title6Pikmin5TUnitFR10Vector2<f>"
b        lbl_803E63C8

lbl_803E6148:
lwz      r3, 0x68(r31)
lfs      f0, 8(r31)
lfs      f1, 8(r3)
lfs      f2, 4(r3)
fsubs    f3, f1, f0
lfs      f1, 4(r31)
lfs      f0, lbl_8051FC60@sda21(r2)
fsubs    f6, f2, f1
fmuls    f1, f3, f3
fmadds   f1, f6, f6, f1
fcmpo    cr0, f1, f0
ble      lbl_803E6188
ble      lbl_803E618C
frsqrte  f0, f1
fmuls    f1, f0, f1
b        lbl_803E618C

lbl_803E6188:
fmr      f1, f0

lbl_803E618C:
lfs      f0, lbl_8051FC60@sda21(r2)
fcmpu    cr0, f0, f1
beq      lbl_803E61A8
lfs      f0, lbl_8051FC90@sda21(r2)
fdivs    f0, f0, f1
fmuls    f6, f6, f0
fmuls    f3, f3, f0

lbl_803E61A8:
lwz      r5, 0x34(r31)
mr       r3, r31
lfs      f5, 0x14(r31)
addi     r4, r1, 0x10
lfs      f4, 0x220(r5)
lfs      f1, 0x10(r31)
lfs      f0, 0xc(r31)
fmuls    f2, f3, f4
fmuls    f3, f1, f5
fmuls    f1, f0, f5
fmuls    f0, f6, f4
fadds    f3, f3, f2
fadds    f2, f1, f0
stfs     f3, 0x14(r1)
stfs     f2, 0x10(r1)
lfs      f1, 0x80(r31)
lfs      f0, 0x7c(r31)
fmuls    f1, f1, f31
fmuls    f0, f0, f31
fadds    f1, f3, f1
fadds    f0, f2, f0
stfs     f1, 0x14(r1)
stfs     f0, 0x10(r1)
bl       "updateSmoothWalk___Q43ebi5title6Pikmin5TUnitFR10Vector2<f>"
b        lbl_803E63C8

lbl_803E620C:
li       r0, 0
stw      r0, 0x68(r31)
b        lbl_803E63C8

lbl_803E6218:
lwz      r3, 0x84(r31)
cmpwi    r3, 2
beq      lbl_803E63C8
lbz      r0, 0x94(r31)
cmplwi   r0, 1
bne      lbl_803E623C
li       r0, 0
stw      r0, 0x84(r31)
b        lbl_803E6248

lbl_803E623C:
stw      r3, 0x88(r31)
li       r0, 2
stw      r0, 0x84(r31)

lbl_803E6248:
lwz      r0, 0x84(r31)
cmpwi    r0, 2
beq      lbl_803E63C8
bge      lbl_803E6268
cmpwi    r0, 0
beq      lbl_803E6274
bge      lbl_803E6318
b        lbl_803E63C8

lbl_803E6268:
cmpwi    r0, 4
bge      lbl_803E63C8
b        lbl_803E6288

lbl_803E6274:
lfs      f0, 0x2c(r31)
stfs     f0, 4(r31)
lfs      f0, 0x30(r31)
stfs     f0, 8(r31)
b        lbl_803E63C8

lbl_803E6288:
lfs      f1, lbl_8051FC90@sda21(r2)
lfs      f0, lbl_8051FC60@sda21(r2)
stfs     f1, 0xc(r31)
stfs     f0, 0x10(r31)
lwz      r4, 0x34(r31)
lwz      r3, sys@sda21(r13)
lfs      f1, 0x270(r4)
lfs      f0, 0x54(r3)
fdivs    f1, f1, f0
bl       __cvt_fp2unsigned
stw      r3, 0x8c(r31)
stw      r3, 0x90(r31)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0x2c(r1)
lfd      f2, lbl_8051FCD8@sda21(r2)
stw      r0, 0x28(r1)
lfs      f3, lbl_8051FCE0@sda21(r2)
lfd      f1, 0x28(r1)
lfs      f0, lbl_8051FCB4@sda21(r2)
fsubs    f4, f1, f2
lfs      f1, lbl_8051FCEC@sda21(r2)
lfs      f2, lbl_8051FCC0@sda21(r2)
fdivs    f3, f4, f3
fmuls    f0, f0, f3
stfs     f0, 0x5c(r31)
lwz      r3, sys@sda21(r13)
lwz      r4, 0x34(r31)
lfs      f0, 0x54(r3)
lfs      f3, 0x180(r4)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x58(r31)
b        lbl_803E63C8

lbl_803E6318:
lfs      f0, lbl_8051FC60@sda21(r2)
lfs      f1, lbl_8051FCEC@sda21(r2)
stfs     f0, 0x14(r31)
lfs      f2, lbl_8051FCC0@sda21(r2)
lwz      r3, sys@sda21(r13)
lfs      f3, 0x60(r31)
lfs      f0, 0x54(r3)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x44(r31)
b        lbl_803E63C8

lbl_803E6348:
lfs      f3, 0x70(r31)
mr       r3, r31
lfs      f2, 8(r31)
addi     r4, r1, 8
lfs      f1, 0x6c(r31)
lfs      f0, 4(r31)
fsubs    f5, f3, f2
lfs      f3, 0x78(r31)
fsubs    f2, f1, f0
lfs      f1, 0x74(r31)
lfs      f4, 0x80(r31)
fmuls    f6, f5, f7
fmuls    f5, f3, f9
lfs      f0, 0x7c(r31)
fmuls    f2, f2, f7
lfs      f8, 0x14(r31)
fmuls    f1, f1, f9
lfs      f7, 0x10(r31)
lfs      f3, 0xc(r31)
fadds    f5, f6, f5
fmuls    f4, f4, f31
fadds    f1, f2, f1
fmuls    f0, f0, f31
fmuls    f6, f7, f8
fadds    f4, f5, f4
fmuls    f2, f3, f8
fadds    f0, f1, f0
fadds    f1, f6, f4
fadds    f0, f2, f0
stfs     f1, 0xc(r1)
stfs     f0, 8(r1)
bl       "updateSmoothWalk___Q43ebi5title6Pikmin5TUnitFR10Vector2<f>"

lbl_803E63C8:
lwz      r0, 0x84(r31)
cmpwi    r0, 0
beq      lbl_803E6648
mr       r3, r31
bl       calcModelBaseMtx___Q33ebi5title8TObjBaseFv
lwz      r0, 0x84(r31)
cmpwi    r0, 2
beq      lbl_803E6550
bge      lbl_803E63FC
cmpwi    r0, 0
beq      lbl_803E65BC
bge      lbl_803E6518
b        lbl_803E65BC

lbl_803E63FC:
cmpwi    r0, 6
bge      lbl_803E65BC
cmpwi    r0, 4
bge      lbl_803E6550
addi     r3, r31, 0x4c
bl       update__12J3DFrameCtrlFv
addi     r3, r31, 0x38
bl       update__12J3DFrameCtrlFv
lwz      r4, 0x90(r31)
cmplwi   r4, 0
beq      lbl_803E645C
lwz      r3, 0x8c(r31)
lis      r0, 0x4330
stw      r0, 0x28(r1)
lfd      f2, lbl_8051FC98@sda21(r2)
stw      r3, 0x2c(r1)
lfd      f0, 0x28(r1)
stw      r4, 0x34(r1)
fsubs    f1, f0, f2
stw      r0, 0x30(r1)
lfd      f0, 0x30(r1)
fsubs    f0, f0, f2
fdivs    f1, f1, f0
b        lbl_803E6460

lbl_803E645C:
lfs      f1, lbl_8051FC60@sda21(r2)

lbl_803E6460:
lfs      f27, lbl_8051FC90@sda21(r2)
lfs      f0, lbl_8051FC64@sda21(r2)
fsubs    f2, f27, f1
fcmpo    cr0, f2, f0
cror     2, 0, 2
bne      lbl_803E6480
fdivs    f27, f2, f0
b        lbl_803E64A0

lbl_803E6480:
lfs      f0, lbl_8051FCC0@sda21(r2)
fcmpo    cr0, f2, f0
cror     2, 0, 2
bne      lbl_803E6494
b        lbl_803E64A0

lbl_803E6494:
lfs      f1, lbl_8051FCF4@sda21(r2)
fneg     f0, f1
fmadds   f27, f1, f2, f0

lbl_803E64A0:
lwz      r3, 0x34(r31)
li       r4, 0
lfs      f0, lbl_8051FC90@sda21(r2)
lwz      r5, 0x18(r3)
lfs      f2, 0x48(r31)
fsubs    f1, f0, f27
lwz      r29, 0x28(r31)
lfs      f0, 0x5c(r31)
lwz      r3, 0x18(r5)
stfs     f0, 8(r3)
lwz      r3, 0x14(r5)
stfs     f2, 8(r3)
lwz      r30, 0x20(r5)
mr       r3, r30
lwz      r12, 0(r30)
lwz      r12, 0x1c(r12)
mtctr    r12
bctrl
mr       r3, r30
fmr      f1, f27
lwz      r12, 0(r30)
li       r4, 1
lwz      r12, 0x1c(r12)
mtctr    r12
bctrl
lwz      r3, 4(r29)
lwz      r3, 0x28(r3)
lwz      r3, 0(r3)
stw      r30, 0x54(r3)
b        lbl_803E65BC

lbl_803E6518:
addi     r3, r31, 0x38
bl       update__12J3DFrameCtrlFv
lwz      r3, 0x34(r31)
lwz      r4, 0x28(r31)
lwz      r5, 0x18(r3)
lfs      f0, 0x48(r31)
lwz      r3, 0x14(r5)
stfs     f0, 8(r3)
lwz      r3, 4(r4)
lwz      r0, 0x1c(r5)
lwz      r3, 0x28(r3)
lwz      r3, 0(r3)
stw      r0, 0x54(r3)
b        lbl_803E65BC

lbl_803E6550:
lwz      r5, 0x34(r31)
addi     r3, r31, 0x38
lwz      r4, sys@sda21(r13)
lfs      f3, 0x14(r31)
lfs      f2, 0x158(r5)
lfs      f1, lbl_8051FCEC@sda21(r2)
lfs      f0, 0x54(r4)
fmuls    f2, f3, f2
lfs      f3, 0x64(r31)
fmuls    f0, f1, f0
lfs      f1, lbl_8051FCC0@sda21(r2)
fmuls    f2, f3, f2
fmuls    f0, f1, f0
fmuls    f0, f2, f0
stfs     f0, 0x44(r31)
bl       update__12J3DFrameCtrlFv
lwz      r3, 0x34(r31)
lwz      r4, 0x28(r31)
lwz      r5, 0x18(r3)
lfs      f0, 0x48(r31)
lwz      r3, 0x14(r5)
stfs     f0, 8(r3)
lwz      r3, 4(r4)
lwz      r0, 0x1c(r5)
lwz      r3, 0x28(r3)
lwz      r3, 0(r3)
stw      r0, 0x54(r3)

lbl_803E65BC:
lwz      r3, 0x28(r31)
lwz      r12, 0(r3)
lwz      r12, 0x10(r12)
mtctr    r12
bctrl
lwz      r3, 0x28(r31)
addi     r4, r2, lbl_8051FCF8@sda21
lwz      r3, 4(r3)
lwz      r3, 0x54(r3)
bl       getIndex__10JUTNameTabCFPCc
lwz      r4, 0x28(r31)
mulli    r0, r3, 0x30
lwz      r3, 0x34(r31)
lwz      r4, 0x84(r4)
lfs      f0, 0x108(r3)
lwz      r3, 0xc(r4)
add      r4, r3, r0
lfs      f1, 0xc(r4)
fadds    f0, f1, f0
stfs     f0, 0xc(r4)
lwz      r3, 0x34(r31)
lfs      f1, 0x2c(r4)
lfs      f0, 0x130(r3)
fadds    f0, f1, f0
stfs     f0, 0x2c(r4)
lwz      r3, 0x28(r31)
lwz      r12, 0(r3)
lwz      r12, 0xc(r12)
mtctr    r12
bctrl
lwz      r3, 0x28(r31)
lwz      r12, 0(r3)
lwz      r12, 0x1c(r12)
mtctr    r12
bctrl

lbl_803E6648:
psq_l    f31, 152(r1), 0, qr0
lfd      f31, 0x90(r1)
psq_l    f30, 136(r1), 0, qr0
lfd      f30, 0x80(r1)
psq_l    f29, 120(r1), 0, qr0
lfd      f29, 0x70(r1)
psq_l    f28, 104(r1), 0, qr0
lfd      f28, 0x60(r1)
psq_l    f27, 88(r1), 0, qr0
lfd      f27, 0x50(r1)
lwz      r31, 0x4c(r1)
lwz      r30, 0x48(r1)
lwz      r0, 0xa4(r1)
lwz      r29, 0x44(r1)
mtlr     r0
addi     r1, r1, 0xa0
blr
	*/
}


/*
 * --INFO--
 * Address:	803E4668
 * Size:	000164
 */
void Pikmin::TMgr::setStartPos(Vector2f* pos) 
{
    for (int i = 0; i<500; i++) {
        TUnit* unit = &pUnits[i];
        //unit->mPos = Vector2f(pos[i].x, pos[i].y);
        unit->mPos.x = pos[i].x;
        unit->mPos.y = pos[i].y;
    }
} 

/*
 * --INFO--
 * Address:	803E47CC
 * Size:	000164
 */
void Pikmin::TMgr::setDestPos(Vector2f* pos) 
{
    for (int i = 0; i<500; i++) {
        TUnit* unit = &pUnits[i];
        //unit->mPos = Vector2f(pos[i].x, pos[i].y);
        unit->destPos.x = pos[i].x;
        unit->destPos.y = pos[i].y;
    }
} 

} // namespace title
} // namespace ebi

/*
 * --INFO--
 * Address:	803E668C
 * Size:	000200
 */
/* void updateSmoothWalk___Q43ebi5title6Pikmin5TUnitFR10Vector2<float>()
{
} */

namespace ebi {
namespace title {

/*
 * --INFO--
 * Address:	803E688C
 * Size:	000350
 */
void Pikmin::TUnit::updateEnemyReaction_()
{
	/*
stwu     r1, -0x30(r1)
mflr     r0
stw      r0, 0x34(r1)
stfd     f31, 0x20(r1)
psq_st   f31, 40(r1), 0, qr0
stw      r31, 0x1c(r1)
mr       r31, r3
lwz      r3, 0x68(r3)
cmplwi   r3, 0
beq      lbl_803E6BC0
lwz      r12, 0(r3)
lwz      r12, 0xc(r12)
mtctr    r12
bctrl
clrlwi.  r0, r3, 0x18
beq      lbl_803E6BC0
lwz      r3, 0x68(r31)
lfs      f0, 8(r31)
lfs      f1, 8(r3)
lfs      f2, 4(r3)
fsubs    f3, f1, f0
lfs      f1, 4(r31)
lfs      f0, lbl_8051FC60@sda21(r2)
fsubs    f1, f2, f1
fmuls    f2, f3, f3
fmadds   f31, f1, f1, f2
fcmpo    cr0, f31, f0
ble      lbl_803E690C
ble      lbl_803E6910
frsqrte  f0, f31
fmuls    f31, f0, f31
b        lbl_803E6910

lbl_803E690C:
fmr      f31, f0

lbl_803E6910:
lwz      r12, 0(r3)
lwz      r12, 8(r12)
mtctr    r12
bctrl
cmpwi    r3, 5
beq      lbl_803E6944
bge      lbl_803E6938
cmpwi    r3, -1
beq      lbl_803E6BC0
b        lbl_803E6BC0

lbl_803E6938:
cmpwi    r3, 7
bge      lbl_803E6BC0
b        lbl_803E6A84

lbl_803E6944:
lwz      r3, 0x68(r31)
lfs      f0, 0x20(r3)
fcmpo    cr0, f31, f0
bge      lbl_803E6BC0
lwz      r3, 0x84(r31)
cmpwi    r3, 5
beq      lbl_803E6BC0
lbz      r0, 0x94(r31)
cmplwi   r0, 1
bne      lbl_803E6978
li       r0, 0
stw      r0, 0x84(r31)
b        lbl_803E6984

lbl_803E6978:
stw      r3, 0x88(r31)
li       r0, 5
stw      r0, 0x84(r31)

lbl_803E6984:
lwz      r0, 0x84(r31)
cmpwi    r0, 2
beq      lbl_803E6BC0
bge      lbl_803E69A4
cmpwi    r0, 0
beq      lbl_803E69B0
bge      lbl_803E6A54
b        lbl_803E6BC0

lbl_803E69A4:
cmpwi    r0, 4
bge      lbl_803E6BC0
b        lbl_803E69C4

lbl_803E69B0:
lfs      f0, 0x2c(r31)
stfs     f0, 4(r31)
lfs      f0, 0x30(r31)
stfs     f0, 8(r31)
b        lbl_803E6BC0

lbl_803E69C4:
lfs      f1, lbl_8051FC90@sda21(r2)
lfs      f0, lbl_8051FC60@sda21(r2)
stfs     f1, 0xc(r31)
stfs     f0, 0x10(r31)
lwz      r4, 0x34(r31)
lwz      r3, sys@sda21(r13)
lfs      f1, 0x270(r4)
lfs      f0, 0x54(r3)
fdivs    f1, f1, f0
bl       __cvt_fp2unsigned
stw      r3, 0x8c(r31)
stw      r3, 0x90(r31)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0xc(r1)
lfd      f2, lbl_8051FCD8@sda21(r2)
stw      r0, 8(r1)
lfs      f3, lbl_8051FCE0@sda21(r2)
lfd      f1, 8(r1)
lfs      f0, lbl_8051FCB4@sda21(r2)
fsubs    f4, f1, f2
lfs      f1, lbl_8051FCEC@sda21(r2)
lfs      f2, lbl_8051FCC0@sda21(r2)
fdivs    f3, f4, f3
fmuls    f0, f0, f3
stfs     f0, 0x5c(r31)
lwz      r3, sys@sda21(r13)
lwz      r4, 0x34(r31)
lfs      f0, 0x54(r3)
lfs      f3, 0x180(r4)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x58(r31)
b        lbl_803E6BC0

lbl_803E6A54:
lfs      f0, lbl_8051FC60@sda21(r2)
lfs      f1, lbl_8051FCEC@sda21(r2)
stfs     f0, 0x14(r31)
lfs      f2, lbl_8051FCC0@sda21(r2)
lwz      r3, sys@sda21(r13)
lfs      f3, 0x60(r31)
lfs      f0, 0x54(r3)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x44(r31)
b        lbl_803E6BC0

lbl_803E6A84:
lwz      r3, 0x68(r31)
lfs      f0, 0x20(r3)
fcmpo    cr0, f31, f0
bge      lbl_803E6BC0
lwz      r3, 0x84(r31)
cmpwi    r3, 5
beq      lbl_803E6BC0
lbz      r0, 0x94(r31)
cmplwi   r0, 1
bne      lbl_803E6AB8
li       r0, 0
stw      r0, 0x84(r31)
b        lbl_803E6AC4

lbl_803E6AB8:
stw      r3, 0x88(r31)
li       r0, 5
stw      r0, 0x84(r31)

lbl_803E6AC4:
lwz      r0, 0x84(r31)
cmpwi    r0, 2
beq      lbl_803E6BC0
bge      lbl_803E6AE4
cmpwi    r0, 0
beq      lbl_803E6AF0
bge      lbl_803E6B94
b        lbl_803E6BC0

lbl_803E6AE4:
cmpwi    r0, 4
bge      lbl_803E6BC0
b        lbl_803E6B04

lbl_803E6AF0:
lfs      f0, 0x2c(r31)
stfs     f0, 4(r31)
lfs      f0, 0x30(r31)
stfs     f0, 8(r31)
b        lbl_803E6BC0

lbl_803E6B04:
lfs      f1, lbl_8051FC90@sda21(r2)
lfs      f0, lbl_8051FC60@sda21(r2)
stfs     f1, 0xc(r31)
stfs     f0, 0x10(r31)
lwz      r4, 0x34(r31)
lwz      r3, sys@sda21(r13)
lfs      f1, 0x270(r4)
lfs      f0, 0x54(r3)
fdivs    f1, f1, f0
bl       __cvt_fp2unsigned
stw      r3, 0x8c(r31)
stw      r3, 0x90(r31)
bl       rand
xoris    r3, r3, 0x8000
lis      r0, 0x4330
stw      r3, 0xc(r1)
lfd      f2, lbl_8051FCD8@sda21(r2)
stw      r0, 8(r1)
lfs      f3, lbl_8051FCE0@sda21(r2)
lfd      f1, 8(r1)
lfs      f0, lbl_8051FCB4@sda21(r2)
fsubs    f4, f1, f2
lfs      f1, lbl_8051FCEC@sda21(r2)
lfs      f2, lbl_8051FCC0@sda21(r2)
fdivs    f3, f4, f3
fmuls    f0, f0, f3
stfs     f0, 0x5c(r31)
lwz      r3, sys@sda21(r13)
lwz      r4, 0x34(r31)
lfs      f0, 0x54(r3)
lfs      f3, 0x180(r4)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x58(r31)
b        lbl_803E6BC0

lbl_803E6B94:
lfs      f0, lbl_8051FC60@sda21(r2)
lfs      f1, lbl_8051FCEC@sda21(r2)
stfs     f0, 0x14(r31)
lfs      f2, lbl_8051FCC0@sda21(r2)
lwz      r3, sys@sda21(r13)
lfs      f3, 0x60(r31)
lfs      f0, 0x54(r3)
fmuls    f0, f1, f0
fmuls    f0, f2, f0
fmuls    f0, f3, f0
stfs     f0, 0x44(r31)

lbl_803E6BC0:
psq_l    f31, 40(r1), 0, qr0
lwz      r0, 0x34(r1)
lfd      f31, 0x20(r1)
lwz      r31, 0x1c(r1)
mtlr     r0
addi     r1, r1, 0x30
blr
	*/
}

/*
 * --INFO--
 * Address:	803E6BDC
 * Size:	000238
 */
Pikmin::TBoidParam::TBoidParam() 
    : Parameters(nullptr, "TTitleStateParameters")
    , mTurnMag(this, 'tsp0', "向き変えベクトルの大きさ", 0.2f, 0.0f, 10.0f)
    , mMaxTurnVec(this, 'tsp1', "向き変えベクトル最大", 0.4f, 0.0f, 10.0f)
    , mMaxWalkSpeed(this, 'tsp2', "向き変えベクトル最大", 2.0f, 0.0f, 10.0f)
    , mBoidColl(this, 'tsp5', "BOID衝突回避係数", 800.0f, 0.0f, 10000.0f)
    , mBoidSpeedMatch(this, 'tsp6', "BOID速度合わせ係数", 4.5f, 0.0f, 100.0f)
    , mBoidCenter(this, 'tsp7', "BOID中心集合係数", 0.005f, 0.0f, 100.0f)
    , mBoidNeighbor(this, 'tsp8', "BOID個体の近所サーチ半径", 30.0f, 0.0f, 500.0f)
    , mGroupCenter(this, 'tsp9', "群の中心と個体の目的地の割合", 0.0f, 0.0f, 1.0f)
{
}

/*
 * --INFO--
 * Address:	803E6E14
 * Size:	0000FC
 */
Pikmin::TUnit::TUnit()
{
	/*
stwu     r1, -0x10(r1)
mflr     r0
lis      r4, __vt__Q33ebi5title8TObjBase@ha
lfs      f2, lbl_8051FC60@sda21(r2)
stw      r0, 0x14(r1)
addi     r0, r4, __vt__Q33ebi5title8TObjBase@l
lis      r4, __vt__Q43ebi5title6Pikmin5TUnit@ha
lfs      f1, lbl_8051FCA0@sda21(r2)
stw      r31, 0xc(r1)
addi     r5, r4, __vt__Q43ebi5title6Pikmin5TUnit@l
mr       r31, r3
lfs      f0, lbl_8051FC90@sda21(r2)
stw      r0, 0(r3)
lis      r3, __vt__12J3DFrameCtrl@ha
addi     r0, r3, __vt__12J3DFrameCtrl@l
li       r6, 0
stfs     f2, 4(r31)
addi     r3, r31, 0x38
li       r4, 0
stfs     f2, 8(r31)
stfs     f2, 0xc(r31)
stfs     f1, 0x10(r31)
stfs     f2, 0x14(r31)
stfs     f0, 0x18(r31)
stfs     f2, 0x1c(r31)
stfs     f2, 0x20(r31)
stfs     f2, 0x24(r31)
stw      r6, 0x28(r31)
stw      r5, 0(r31)
stw      r0, 0x38(r31)
bl       init__12J3DFrameCtrlFs
lis      r4, __vt__12J3DFrameCtrl@ha
addi     r3, r31, 0x4c
addi     r0, r4, __vt__12J3DFrameCtrl@l
li       r4, 0
stw      r0, 0x4c(r31)
bl       init__12J3DFrameCtrlFs
li       r0, 0
lfs      f1, lbl_8051FC60@sda21(r2)
stw      r0, 0x8c(r31)
mr       r3, r31
lfs      f0, lbl_8051FC90@sda21(r2)
stw      r0, 0x90(r31)
stfs     f1, 0x2c(r31)
stfs     f1, 0x30(r31)
stw      r0, 0x34(r31)
stfs     f0, 0x60(r31)
stfs     f0, 0x64(r31)
stw      r0, 0x68(r31)
stfs     f1, 0x6c(r31)
stfs     f1, 0x70(r31)
stfs     f1, 0x74(r31)
stfs     f1, 0x78(r31)
stfs     f1, 0x7c(r31)
stfs     f1, 0x80(r31)
stw      r0, 0x84(r31)
stw      r0, 0x88(r31)
stb      r0, 0x94(r31)
lwz      r31, 0xc(r1)
lwz      r0, 0x14(r1)
mtlr     r0
addi     r1, r1, 0x10
blr
	*/
}

/*
 * --INFO--
 * Address:	803E6F10
 * Size:	000418
 */
Pikmin::TParam::TParam()
    : mIntScale(this, 'pk00', "海外版スケール", 2.4f, 0.0f, 10.0f)
    , mJpnScale(this, 'pk99', "日本語版スケール", 2.6f, 0.0f, 10.0f)
    , mCollRadius(this, 'pk01', "コリジョン半径", 5.0f, 0.0f, 100.0f)
    , mStopDist(this, 'pk02', "停止距離", 20.0f, 0.0f, 100.0f)
    , mConvDist(this, 'pk03', "収束距離", 50.0f, 0.0f, 100.0f)
    , mShadowX(this, 'pk05', "影ずらしX", 5.0f, 0.0f, 100.0f)
    , mShadowZ(this, 'pk06', "影ずらしZ", 5.0f, 0.0f, 100.0f)
    , mAnimSpeedWalk(this, 'pk07', "アニメスピード歩く（速度比例）", 0.5f, 0.0f, 10.0f)
    , mAnimSpeedStyle(this, 'pk08', "アニメスピード風", 0.5f, 0.0f, 10.0f)
    , mAnimMaxWaitTime(this, 'pk10', "アニメスピードWAIT最大", 0.5f, 0.0f, 10.0f)
    , mAnimMinWaitTime(this, 'pk09', "アニメスピードWAIT最小", 0.0f, 0.0f, 10.0f)
    , mKogane(this, 'pk12', "コガネ好き好き係数", 5.0f, -10.0f, 10.0f)
    , mChappyRun(this, 'pk13', "チャッピーから逃げる係数", -5.0f, -10.0f, 10.0f)
    , mChaseGiveUp(this, 'pk14', "追いかけあきらめ半径", 400.0f, -10.0f, 500.0f)
    , mWindTimer(this, 'pk14', "風タイマー(秒)", 6.0f, 0.0f, 10.0f)
    , mDistSpeedFactor(this, 'pk14', "距離比例速度係数", 0.2f, 0.0f, 1.0f)
{
}
/*
 * --INFO--
 * Address:	803E7328
 * Size:	000008
 */
u32 Pikmin::TUnit::getCreatureType() { return 0x0; }

} // namespace title
} // namespace ebi

/*
 * --INFO--
 * Address:	803E7330
 * Size:	000028
 */
void __sinit_ebiP2TitlePikmin_cpp()
{
	/*
	lis      r4, __float_nan@ha
	li       r0, -1
	lfs      f0, __float_nan@l(r4)
	lis      r3, lbl_804E9DF0@ha
	stw      r0, lbl_805160E8@sda21(r13)
	stfsu    f0, lbl_804E9DF0@l(r3)
	stfs     f0, lbl_805160EC@sda21(r13)
	stfs     f0, 4(r3)
	stfs     f0, 8(r3)
	blr
	*/
}
