#ifndef _MORIMURA_TCHALLENGESCREEN_H
#define _MORIMURA_TCHALLENGESCREEN_H

/*
    __vt__Q28Morimura16TChallengeScreen:
    .4byte 0
    .4byte 0
    .4byte create__Q28Morimura16TChallengeScreenFPCcUl
    .4byte update__Q28Morimura16TChallengeScreenFv
    .4byte draw__Q28Morimura11TScreenBaseFR8GraphicsP13J2DPerspGraph
    .4byte createAnimPane__Q28Morimura16TChallengeScreenFPc
    .4byte updateBckPane__Q28Morimura16TChallengeScreenFv
    .4byte 0
*/

namespace Morimura {
struct TScreenBase {
	virtual void create(const char*, unsigned long); // _00
	virtual void update();                           // _04
	virtual void draw(Graphics&, J2DPerspGraph*);    // _08

	// _00 VTBL
};
} // namespace Morimura

namespace Morimura {
struct TChallengeScreen : public TScreenBase {
	virtual void create(const char*, unsigned long); // _00
	virtual void update();                           // _04
	virtual void draw(Graphics&, J2DPerspGraph*);    // _08
	virtual void createAnimPane(char*);              // _0C
	virtual void updateBckPane();                    // _10
	virtual void _14() = 0;                          // _14

	// _00 VTBL
};
} // namespace Morimura

#endif
