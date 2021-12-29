#ifndef _DEMO_HIOROOTNODE_H
#define _DEMO_HIOROOTNODE_H

/*
    __vt__Q24Demo11HIORootNode:
    .4byte 0
    .4byte 0
    .4byte __dt__Q24Demo11HIORootNodeFv
    .4byte getChildCount__5CNodeFv
*/

struct CNode {
	virtual ~CNode();             // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace Demo {
struct HIORootNode : public CNode {
	virtual ~HIORootNode();       // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};
} // namespace Demo

#endif
