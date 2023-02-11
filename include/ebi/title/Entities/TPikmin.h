#ifndef _EBI_TITLE_ENTITIES_TPIKMIN_H
#define _EBI_TITLE_ENTITIES_TPIKMIN_H

#include "CNode.h"
#include "Vector2.h"
#include "ebi/Geometry.h"
#include "ebi/E3DGraph.h"
#include "ebi/title/TObjects.h"

struct JKRArchive;

namespace ebi {
namespace title {
struct TObjBase;

namespace Pikmin {
struct TMgr;
// Tentative, will be fixed as I work through ebiP2TitlePikmin.cpp

struct TParam : public TParamBase {
	TParam();

	// _00-_0C = TParamBase
};


struct TAnimFolder : public E3DAnimFolderBase {
	virtual E3DAnimRes* getAnimRes(long); // _08 (weak)

	void load(J3DModelData*, JKRArchive*);
	E3DAnimRes* getAnimRes(int);

	// _00 = VTBL
	E3DAnimRes mAnims[4]; // _04 - move, wait, attack, wait2
};

struct TAnimator {
	TAnimator();

	void setArchive(JKRArchive*);
	J3DModel* newJ3DModel();

	
	J3DModelData* pModelDataRed;
	J3DModelData* pModelDataYellow;
	J3DModelData* pModelDataBlue;
	J3DModelData* pModelDataPurple;
	J3DModelData* pModelDataWhite;
	J3DAnmTransform* _14;
	J3DAnmTransform* _18;
	J3DMtxCalcAnmBase* _1C;
	J3DMtxCalc* _20;

};

struct TBoidParam {
	TBoidParam();

};


struct TBoidParamMgr : public CNode {
	TBoidParamMgr();
	virtual ~TBoidParamMgr(); // _08 (weak)

	// _00     = VTBL
	// _00-_18 = CNode
};

struct TUnit : public TObjBase {
	enum enumState { UNKNOWN = 0 };

	TUnit();

	~TUnit();

	virtual u32 getCreatureType(); // _08 (weak)
	virtual bool isCalc();         // _0C

	void init(TMgr*, long);
	void goDestination();
	bool beAttacked();
	void alive();
	bool isAssemble();
	bool isWalk();
	void startState(enumState);
	void update();
	void updateSmoothWalk_(Vector2f&);
	void updateEnemyReaction_();

	// _00     = VTBL
	// _00-_2C = TObjBase
};

struct TMgr : public CNode {
	TMgr();

	virtual ~TMgr(); // _08 (weak)

	void setArchive(JKRArchive*);
	void initUnit();
	void update();
	void setStartPos(Vector2f*);
	void setDestPos(Vector2f*);
	void forceArriveDest();
	void assemble();
	void quickAssemble();
	void startBoid1(f32);
	void startBoid2(f32);
	void startBoid3(f32);
	void startWindBlow(EGEBox2f&);
	void startDemo();
	void enemyPushOut(TObjBase*);
	void updateCalcBoid_();
	void isAssemble();
	TUnit* getUnit(long);

	// _00     = VTBL
	// _00-_18 = CNode
};
} // namespace Pikmin
} // namespace title
} // namespace ebi

#endif
