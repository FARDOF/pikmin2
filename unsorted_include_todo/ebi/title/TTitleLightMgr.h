#ifndef _EBI_TITLE_TTITLELIGHTMGR_H
#define _EBI_TITLE_TTITLELIGHTMGR_H

/*
    __vt__Q33ebi5title14TTitleLightMgr:
    .4byte 0
    .4byte 0
    .4byte __dt__Q33ebi5title14TTitleLightMgrFv
    .4byte getChildCount__5CNodeFv
    .4byte update__Q33ebi5title14TTitleLightMgrFv
    .4byte set__8LightMgrFR8Graphics
    .4byte set__8LightMgrFR7Matrixf
    .4byte drawDebugInfo__8LightMgrFR8Graphics
    .4byte 0
*/

struct CNode {
	virtual void _00() = 0;       // _00
	virtual void getChildCount(); // _04

	// _00 VTBL
};

struct LightMgr {
	virtual void _00() = 0;                // _00
	virtual void _04() = 0;                // _04
	virtual void _08() = 0;                // _08
	virtual void set(Graphics&);           // _0C
	virtual void set(Matrixf&);            // _10
	virtual void drawDebugInfo(Graphics&); // _14

	// _00 VTBL
};

namespace ebi {
namespace title {
	struct TTitleLightMgr : public CNode, public LightMgr {
		virtual ~TTitleLightMgr();             // _00
		virtual void getChildCount();          // _04
		virtual void update();                 // _08
		virtual void set(Graphics&);           // _0C
		virtual void set(Matrixf&);            // _10
		virtual void drawDebugInfo(Graphics&); // _14
		virtual void _18() = 0;                // _18

		// _00 VTBL
	};
} // namespace title
} // namespace ebi

#endif
