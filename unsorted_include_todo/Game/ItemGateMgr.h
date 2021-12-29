#ifndef _GAME_ITEMGATEMGR_H
#define _GAME_ITEMGATEMGR_H

/*
    __vt__Q24Game11ItemGateMgr:
    .4byte 0
    .4byte 0
    .4byte doAnimation__Q24Game11ItemGateMgrFv
    .4byte doEntry__Q24Game11ItemGateMgrFv
    .4byte doSetView__Q24Game11ItemGateMgrFi
    .4byte doViewCalc__Q24Game11ItemGateMgrFv
    .4byte doSimulation__Q24Game11ItemGateMgrFf
    .4byte doDirectDraw__Q24Game11ItemGateMgrFR8Graphics
    .4byte doSimpleDraw__16GenericObjectMgrFP8Viewport
    .4byte loadResources__Q24Game11BaseItemMgrFv
    .4byte resetMgr__16GenericObjectMgrFv
    .4byte pausable__16GenericObjectMgrFv
    .4byte frozenable__16GenericObjectMgrFv
    .4byte getMatrixLoadType__16GenericObjectMgrFv
    .4byte initDependency__Q24Game11ItemGateMgrFv
    .4byte killAll__Q24Game11BaseItemMgrFv
    .4byte setup__Q24Game11BaseItemMgrFPQ24Game8BaseItem
    .4byte setupSoundViewerAndBas__Q24Game11BaseItemMgrFv
    .4byte onLoadResources__Q24Game11BaseItemMgrFv
    .4byte loadEverytime__Q24Game11BaseItemMgrFv
    .4byte updateUseList__Q24Game11BaseItemMgrFPQ24Game11GenItemParmi
    .4byte onUpdateUseList__Q24Game11BaseItemMgrFPQ24Game11GenItemParmi
    .4byte generatorGetID__Q24Game11ItemGateMgrFv
    .4byte
   "generatorBirth__Q24Game11ItemGateMgrFR10Vector3<f>R10Vector3<f>PQ24Game11GenItemParm"
    .4byte generatorWrite__Q24Game11ItemGateMgrFR6StreamPQ24Game11GenItemParm
    .4byte generatorRead__Q24Game11ItemGateMgrFR6StreamPQ24Game11GenItemParmUl
    .4byte generatorLocalVersion__Q24Game11ItemGateMgrFv
    .4byte generatorGetShape__Q24Game11BaseItemMgrFPQ24Game11GenItemParm
    .4byte generatorNewItemParm__Q24Game11ItemGateMgrFv
    .4byte getCaveName__Q24Game11ItemGateMgrFi
    .4byte getCaveID__Q24Game11ItemGateMgrFPc
*/

struct GenericObjectMgr {
	virtual void _00() = 0;               // _00
	virtual void _04() = 0;               // _04
	virtual void _08() = 0;               // _08
	virtual void _0C() = 0;               // _0C
	virtual void _10() = 0;               // _10
	virtual void _14() = 0;               // _14
	virtual void doSimpleDraw(Viewport*); // _18
	virtual void _1C() = 0;               // _1C
	virtual void resetMgr();              // _20
	virtual void pausable();              // _24
	virtual void frozenable();            // _28
	virtual void getMatrixLoadType();     // _2C

	// _00 VTBL
};

namespace Game {
struct BaseItemMgr {
	virtual void _00() = 0;                          // _00
	virtual void _04() = 0;                          // _04
	virtual void _08() = 0;                          // _08
	virtual void _0C() = 0;                          // _0C
	virtual void _10() = 0;                          // _10
	virtual void _14() = 0;                          // _14
	virtual void _18() = 0;                          // _18
	virtual void loadResources();                    // _1C
	virtual void _20() = 0;                          // _20
	virtual void _24() = 0;                          // _24
	virtual void _28() = 0;                          // _28
	virtual void _2C() = 0;                          // _2C
	virtual void _30() = 0;                          // _30
	virtual void killAll();                          // _34
	virtual void setup(BaseItem*);                   // _38
	virtual void setupSoundViewerAndBas();           // _3C
	virtual void onLoadResources();                  // _40
	virtual void loadEverytime();                    // _44
	virtual void updateUseList(GenItemParm*, int);   // _48
	virtual void onUpdateUseList(GenItemParm*, int); // _4C
	virtual void _50() = 0;                          // _50
	virtual void _54() = 0;                          // _54
	virtual void _58() = 0;                          // _58
	virtual void _5C() = 0;                          // _5C
	virtual void _60() = 0;                          // _60
	virtual void generatorGetShape(GenItemParm*);    // _64

	// _00 VTBL
};
} // namespace Game

namespace Game {
struct ItemGateMgr : public GenericObjectMgr, public BaseItemMgr {
	virtual void doAnimation();                      // _00
	virtual void doEntry();                          // _04
	virtual void doSetView(int);                     // _08
	virtual void doViewCalc();                       // _0C
	virtual void doSimulation(float);                // _10
	virtual void doDirectDraw(Graphics&);            // _14
	virtual void doSimpleDraw(Viewport*);            // _18
	virtual void loadResources();                    // _1C
	virtual void resetMgr();                         // _20
	virtual void pausable();                         // _24
	virtual void frozenable();                       // _28
	virtual void getMatrixLoadType();                // _2C
	virtual void initDependency();                   // _30
	virtual void killAll();                          // _34
	virtual void setup(BaseItem*);                   // _38
	virtual void setupSoundViewerAndBas();           // _3C
	virtual void onLoadResources();                  // _40
	virtual void loadEverytime();                    // _44
	virtual void updateUseList(GenItemParm*, int);   // _48
	virtual void onUpdateUseList(GenItemParm*, int); // _4C
	virtual void generatorGetID();                   // _50
	virtual void generatorBirth(Vector3<float>&, Vector3<float>&,
	                            GenItemParm*);                        // _54
	virtual void generatorWrite(Stream&, GenItemParm*);               // _58
	virtual void generatorRead(Stream&, GenItemParm*, unsigned long); // _5C
	virtual void generatorLocalVersion();                             // _60
	virtual void generatorGetShape(GenItemParm*);                     // _64
	virtual void generatorNewItemParm();                              // _68
	virtual void getCaveName(int);                                    // _6C
	virtual void getCaveID(char*);                                    // _70

	// _00 VTBL
};
} // namespace Game

#endif
