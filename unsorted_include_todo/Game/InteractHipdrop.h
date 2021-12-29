#ifndef _GAME_INTERACTHIPDROP_H
#define _GAME_INTERACTHIPDROP_H

/*
    __vt__Q24Game15InteractHipdrop:
    .4byte 0
    .4byte 0
    .4byte actCommon__Q24Game14InteractAttackFPQ24Game8Creature
    .4byte actPiki__Q24Game11InteractionFPQ24Game4Piki
    .4byte actNavi__Q24Game14InteractAttackFPQ24Game4Navi
    .4byte actEnemy__Q24Game15InteractHipdropFPQ24Game9EnemyBase
    .4byte actPellet__Q24Game11InteractionFPQ24Game6Pellet
    .4byte actOnyon__Q24Game11InteractionFPQ24Game5Onyon
    .4byte actItem__Q24Game14InteractAttackFPQ24Game8BaseItem
    .4byte 0
*/

namespace Game {
struct InteractAttack {
	virtual void actCommon(Creature*); // _00
	virtual void _04() = 0;            // _04
	virtual void actNavi(Navi*);       // _08
	virtual void _0C() = 0;            // _0C
	virtual void _10() = 0;            // _10
	virtual void _14() = 0;            // _14
	virtual void actItem(BaseItem*);   // _18

	// _00 VTBL
};
} // namespace Game

namespace Game {
struct Interaction {
	virtual void _00() = 0;          // _00
	virtual void actPiki(Piki*);     // _04
	virtual void _08() = 0;          // _08
	virtual void _0C() = 0;          // _0C
	virtual void actPellet(Pellet*); // _10
	virtual void actOnyon(Onyon*);   // _14

	// _00 VTBL
};
} // namespace Game

namespace Game {
struct InteractHipdrop : public InteractAttack, public Interaction {
	virtual void actCommon(Creature*); // _00
	virtual void actPiki(Piki*);       // _04
	virtual void actNavi(Navi*);       // _08
	virtual void actEnemy(EnemyBase*); // _0C
	virtual void actPellet(Pellet*);   // _10
	virtual void actOnyon(Onyon*);     // _14
	virtual void actItem(BaseItem*);   // _18
	virtual void _1C() = 0;            // _1C

	// _00 VTBL
};
} // namespace Game

#endif
