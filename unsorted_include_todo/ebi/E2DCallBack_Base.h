#ifndef _EBI_E2DCALLBACK_BASE_H
#define _EBI_E2DCALLBACK_BASE_H

/*
    __vt__Q23ebi16E2DCallBack_Base:
    .4byte 0
    .4byte 0
    .4byte __dt__Q23ebi16E2DCallBack_BaseFv
    .4byte getChildCount__5CNodeFv
    .4byte update__Q23ebi16E2DCallBack_BaseFv
    .4byte draw__Q23ebi16E2DCallBack_BaseFR8GraphicsR14J2DGrafContext
    .4byte doInit__Q29P2DScreen4NodeFv
    .4byte do_update__Q23ebi16E2DCallBack_BaseFv
    .4byte do_draw__Q23ebi16E2DCallBack_BaseFR8GraphicsR14J2DGrafContext
*/

struct CNode {
	virtual void _00() = 0;       // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

namespace P2DScreen {
struct Node {
	virtual void _00() = 0; // _00
	virtual void _04() = 0; // _04
	virtual void _08() = 0; // _08
	virtual void _0C() = 0; // _0C
	virtual void doInit();  // _10

	// _00 VTBL
};
} // namespace P2DScreen

namespace ebi {
struct E2DCallBack_Base : public CNode, public Node {
	virtual ~E2DCallBack_Base();                      // _00
	virtual void getChildCount();                     // _04
	virtual void update();                            // _08
	virtual void draw(Graphics&, J2DGrafContext&);    // _0C
	virtual void doInit();                            // _10
	virtual void do_update();                         // _14
	virtual void do_draw(Graphics&, J2DGrafContext&); // _18

	// _00 VTBL
};
} // namespace ebi

#endif
