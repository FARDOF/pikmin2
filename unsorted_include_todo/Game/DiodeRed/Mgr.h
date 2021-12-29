#ifndef _GAME_DIODERED_MGR_H
#define _GAME_DIODERED_MGR_H

/*
        __vt__Q34Game8DiodeRed3Mgr:
        .4byte 0
        .4byte 0
        .4byte doAnimation__Q24Game28EnemyMgrBaseAlwaysMovieActorFv
        .4byte doEntry__Q24Game28EnemyMgrBaseAlwaysMovieActorFv
        .4byte doSetView__Q24Game12EnemyMgrBaseFi
        .4byte doViewCalc__Q24Game12EnemyMgrBaseFv
        .4byte doSimulation__Q24Game28EnemyMgrBaseAlwaysMovieActorFf
        .4byte doDirectDraw__Q24Game28EnemyMgrBaseAlwaysMovieActorFR8Graphics
        .4byte doSimpleDraw__16GenericObjectMgrFP8Viewport
        .4byte loadResources__16GenericObjectMgrFv
        .4byte resetMgr__16GenericObjectMgrFv
        .4byte pausable__16GenericObjectMgrFv
        .4byte frozenable__16GenericObjectMgrFv
        .4byte getMatrixLoadType__16GenericObjectMgrFv
        .4byte 0
        .4byte 0
        .4byte "@4@__dt__Q34Game8DiodeRed3MgrFv"
        .4byte getChildCount__5CNodeFv
        .4byte "@4@getObject__Q24Game12EnemyMgrBaseFPv"
        .4byte "@4@getNext__Q24Game12EnemyMgrBaseFPv"
        .4byte "@4@getStart__Q24Game12EnemyMgrBaseFv"
        .4byte "@4@getEnd__Q24Game12EnemyMgrBaseFv"
        .4byte __dt__Q34Game8DiodeRed3MgrFv
        .4byte getObject__Q24Game12EnemyMgrBaseFPv
        .4byte getNext__Q24Game12EnemyMgrBaseFPv
        .4byte getStart__Q24Game12EnemyMgrBaseFv
        .4byte getEnd__Q24Game12EnemyMgrBaseFv
        .4byte alloc__Q24Game12EnemyMgrBaseFv
        .4byte birth__Q34Game8DiodeRed3MgrFRQ24Game13EnemyBirthArg
        .4byte getJ3DModelData__Q24Game12EnemyMgrBaseCFv
        .4byte getGenerator__Q24Game12EnemyMgrBaseCFv
        .4byte killAll__Q24Game12EnemyMgrBaseFPQ24Game15CreatureKillArg
        .4byte setupSoundViewerAndBas__Q24Game12EnemyMgrBaseFv
        .4byte setDebugParm__Q24Game12EnemyMgrBaseFUl
        .4byte resetDebugParm__Q24Game12EnemyMgrBaseFUl
        .4byte getMaxObjects__Q24Game12EnemyMgrBaseCFv
        .4byte startMovie__Q24Game12EnemyMgrBaseFv
        .4byte endMovie__Q24Game12EnemyMgrBaseFv
        .4byte get__Q24Game12EnemyMgrBaseFPv
        .4byte isAlwaysMovieActor__Q24Game28EnemyMgrBaseAlwaysMovieActorFv
        .4byte createObj__Q34Game8DiodeRed3MgrFi
        .4byte getEnemy__Q34Game8DiodeRed3MgrFi
        .4byte doAlloc__Q34Game8DiodeRed3MgrFv
        .4byte getEnemyTypeID__Q34Game8DiodeRed3MgrFv
        .4byte createModel__Q24Game12EnemyMgrBaseFv
        .4byte initParms__Q24Game12EnemyMgrBaseFv
        .4byte loadResource__Q24Game12EnemyMgrBaseFv
        .4byte initObjects__Q24Game12EnemyMgrBaseFv
        .4byte initStoneSetting__Q24Game12EnemyMgrBaseFv
        .4byte loadModelData__Q24Game12EnemyMgrBaseFP10JKRArchive
        .4byte loadModelData__Q34Game8DiodeRed3MgrFv
        .4byte loadAnimData__Q24Game12EnemyMgrBaseFv
        .4byte loadTexData__Q24Game12EnemyMgrBaseFv
        .4byte doLoadBmd__Q34Game8DiodeRed3MgrFPv
        .4byte doLoadBdl__Q24Game12EnemyMgrBaseFPv
        .4byte initGenerator__Q24Game12EnemyMgrBaseFv
*/

namespace Game {
struct EnemyMgrBaseAlwaysMovieActor {
    virtual void doAnimation();           // _00
    virtual void doEntry();               // _04
    virtual void _08() = 0;               // _08
    virtual void _0C() = 0;               // _0C
    virtual void doSimulation(float);     // _10
    virtual void doDirectDraw(Graphics&); // _14
    virtual void _18() = 0;               // _18
    virtual void _1C() = 0;               // _1C
    virtual void _20() = 0;               // _20
    virtual void _24() = 0;               // _24
    virtual void _28() = 0;               // _28
    virtual void _2C() = 0;               // _2C
    virtual void _30() = 0;               // _30
    virtual void _34() = 0;               // _34
    virtual void _38() = 0;               // _38
    virtual void _3C() = 0;               // _3C
    virtual void _40() = 0;               // _40
    virtual void _44() = 0;               // _44
    virtual void _48() = 0;               // _48
    virtual void _4C() = 0;               // _4C
    virtual void _50() = 0;               // _50
    virtual void _54() = 0;               // _54
    virtual void _58() = 0;               // _58
    virtual void _5C() = 0;               // _5C
    virtual void _60() = 0;               // _60
    virtual void _64() = 0;               // _64
    virtual void _68() = 0;               // _68
    virtual void _6C() = 0;               // _6C
    virtual void _70() = 0;               // _70
    virtual void _74() = 0;               // _74
    virtual void _78() = 0;               // _78
    virtual void _7C() = 0;               // _7C
    virtual void _80() = 0;               // _80
    virtual void _84() = 0;               // _84
    virtual void _88() = 0;               // _88
    virtual void _8C() = 0;               // _8C
    virtual void _90() = 0;               // _90
    virtual void isAlwaysMovieActor();    // _94

    // _00 VTBL
};
} // namespace Game

namespace Game {
struct EnemyMgrBase {
    virtual void _00() = 0;                     // _00
    virtual void _04() = 0;                     // _04
    virtual void doSetView(int);                // _08
    virtual void doViewCalc();                  // _0C
    virtual void _10() = 0;                     // _10
    virtual void _14() = 0;                     // _14
    virtual void _18() = 0;                     // _18
    virtual void _1C() = 0;                     // _1C
    virtual void _20() = 0;                     // _20
    virtual void _24() = 0;                     // _24
    virtual void _28() = 0;                     // _28
    virtual void _2C() = 0;                     // _2C
    virtual void _30() = 0;                     // _30
    virtual void _34() = 0;                     // _34
    virtual void _38() = 0;                     // _38
    virtual void _3C() = 0;                     // _3C
    virtual void _40() = 0;                     // _40
    virtual void _44() = 0;                     // _44
    virtual void _48() = 0;                     // _48
    virtual void _4C() = 0;                     // _4C
    virtual void _50() = 0;                     // _50
    virtual void getObject(void*);              // _54
    virtual void getNext(void*);                // _58
    virtual void getStart();                    // _5C
    virtual void getEnd();                      // _60
    virtual void alloc();                       // _64
    virtual void _68() = 0;                     // _68
    virtual void getJ3DModelData() const;       // _6C
    virtual void getGenerator() const;          // _70
    virtual void killAll(CreatureKillArg*);     // _74
    virtual void setupSoundViewerAndBas();      // _78
    virtual void setDebugParm(unsigned long);   // _7C
    virtual void resetDebugParm(unsigned long); // _80
    virtual void getMaxObjects() const;         // _84
    virtual void startMovie();                  // _88
    virtual void endMovie();                    // _8C
    virtual void get(void*);                    // _90
    virtual void _94() = 0;                     // _94
    virtual void _98() = 0;                     // _98
    virtual void _9C() = 0;                     // _9C
    virtual void _A0() = 0;                     // _A0
    virtual void _A4() = 0;                     // _A4
    virtual void createModel();                 // _A8
    virtual void initParms();                   // _AC
    virtual void loadResource();                // _B0
    virtual void initObjects();                 // _B4
    virtual void initStoneSetting();            // _B8
    virtual void loadModelData(JKRArchive*);    // _BC
    virtual void _C0() = 0;                     // _C0
    virtual void loadAnimData();                // _C4
    virtual void loadTexData();                 // _C8
    virtual void _CC() = 0;                     // _CC
    virtual void doLoadBdl(void*);              // _D0
    virtual void initGenerator();               // _D4

    // _00 VTBL
};
} // namespace Game

struct GenericObjectMgr {
    virtual void _00() = 0;               // _00
    virtual void _04() = 0;               // _04
    virtual void _08() = 0;               // _08
    virtual void _0C() = 0;               // _0C
    virtual void _10() = 0;               // _10
    virtual void _14() = 0;               // _14
    virtual void doSimpleDraw(Viewport*); // _18
    virtual void loadResources();         // _1C
    virtual void resetMgr();              // _20
    virtual void pausable();              // _24
    virtual void frozenable();            // _28
    virtual void getMatrixLoadType();     // _2C

    // _00 VTBL
};

struct CNode {
    virtual void _00() = 0;       // _00
    virtual void _04() = 0;       // _04
    virtual void _08() = 0;       // _08
    virtual void _0C() = 0;       // _0C
    virtual void _10() = 0;       // _10
    virtual void _14() = 0;       // _14
    virtual void _18() = 0;       // _18
    virtual void _1C() = 0;       // _1C
    virtual void _20() = 0;       // _20
    virtual void _24() = 0;       // _24
    virtual void _28() = 0;       // _28
    virtual void _2C() = 0;       // _2C
    virtual void _30() = 0;       // _30
    virtual void _34() = 0;       // _34
    virtual void _38() = 0;       // _38
    virtual void getChildCount(); // _3C

    // _00 VTBL
};

namespace Game {
namespace DiodeRed {
    struct Mgr : public EnemyMgrBaseAlwaysMovieActor,
                 public EnemyMgrBase,
                 public GenericObjectMgr,
                 public CNode {
        virtual void doAnimation();                 // _00
        virtual void doEntry();                     // _04
        virtual void doSetView(int);                // _08
        virtual void doViewCalc();                  // _0C
        virtual void doSimulation(float);           // _10
        virtual void doDirectDraw(Graphics&);       // _14
        virtual void doSimpleDraw(Viewport*);       // _18
        virtual void loadResources();               // _1C
        virtual void resetMgr();                    // _20
        virtual void pausable();                    // _24
        virtual void frozenable();                  // _28
        virtual void getMatrixLoadType();           // _2C
        virtual void _30() = 0;                     // _30
        virtual void _34() = 0;                     // _34
        virtual void @4 @__dt();                    // _38
        virtual void getChildCount();               // _3C
        virtual ~Mgr();                             // _50
        virtual void getObject(void*);              // _54
        virtual void getNext(void*);                // _58
        virtual void getStart();                    // _5C
        virtual void getEnd();                      // _60
        virtual void alloc();                       // _64
        virtual void birth(EnemyBirthArg&);         // _68
        virtual void getJ3DModelData() const;       // _6C
        virtual void getGenerator() const;          // _70
        virtual void killAll(CreatureKillArg*);     // _74
        virtual void setupSoundViewerAndBas();      // _78
        virtual void setDebugParm(unsigned long);   // _7C
        virtual void resetDebugParm(unsigned long); // _80
        virtual void getMaxObjects() const;         // _84
        virtual void startMovie();                  // _88
        virtual void endMovie();                    // _8C
        virtual void get(void*);                    // _90
        virtual void isAlwaysMovieActor();          // _94
        virtual void createObj(int);                // _98
        virtual void getEnemy(int);                 // _9C
        virtual void doAlloc();                     // _A0
        virtual void getEnemyTypeID();              // _A4
        virtual void createModel();                 // _A8
        virtual void initParms();                   // _AC
        virtual void loadResource();                // _B0
        virtual void initObjects();                 // _B4
        virtual void initStoneSetting();            // _B8
        virtual void loadModelData(JKRArchive*);    // _BC
        virtual void loadModelData();               // _C0
        virtual void loadAnimData();                // _C4
        virtual void loadTexData();                 // _C8
        virtual void doLoadBmd(void*);              // _CC
        virtual void doLoadBdl(void*);              // _D0
        virtual void initGenerator();               // _D4

        // _00 VTBL
    };
} // namespace DiodeRed
} // namespace Game

#endif
