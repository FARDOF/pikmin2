#ifndef _GAME_RUMBLEMGR_H
#define _GAME_RUMBLEMGR_H

/*
    __vt__Q24Game9RumbleMgr:
    .4byte 0
    .4byte 0
    .4byte __dt__Q24Game9RumbleMgrFv
    .4byte getChildCount__5CNodeFv
*/

struct CNode {
	virtual ~CNode();             // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace Game {
struct RumbleMgr : public CNode {
	virtual ~RumbleMgr();         // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};
} // namespace Game

#endif
