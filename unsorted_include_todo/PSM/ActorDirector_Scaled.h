#ifndef _PSM_ACTORDIRECTOR_SCALED_H
#define _PSM_ACTORDIRECTOR_SCALED_H

/*
    __vt__Q23PSM20ActorDirector_Scaled:
    .4byte 0
    .4byte 0
    .4byte __dt__Q23PSM20ActorDirector_ScaledFv
    .4byte exec__Q28PSSystem12DirectorBaseFv
    .4byte directOn__Q28PSSystem12DirectorBaseFv
    .4byte directOff__Q28PSSystem12DirectorBaseFv
    .4byte underDirection__Q23PSM22TrackOnDirector_ScaledFv
    .4byte execInner__Q23PSM20ActorDirector_ScaledFv
    .4byte directOnTrack__Q23PSM19TrackOnDirectorBaseFRQ28PSSystem12SeqTrackBase
    .4byte
   directOffTrack__Q23PSM19TrackOnDirectorBaseFRQ28PSSystem12SeqTrackBase .4byte
   doUpdateRequest__Q28PSSystem16SwitcherDirectorFv .4byte
   onPlayInit__Q23PSM19TrackOnDirectorBaseFP8JASTrack .4byte
   onDirectOn__Q28PSSystem12DirectorBaseFv .4byte
   onDirectOff__Q28PSSystem12DirectorBaseFv .4byte
   getNearestDistance__Q23PSM20ActorDirector_ScaledFv .4byte
   onSetMinDistObj__Q23PSM20ActorDirector_ScaledFPQ24Game8Creature
*/

namespace PSSystem {
struct DirectorBase {
	virtual void _00() = 0;     // _00
	virtual void exec();        // _04
	virtual void directOn();    // _08
	virtual void directOff();   // _0C
	virtual void _10() = 0;     // _10
	virtual void _14() = 0;     // _14
	virtual void _18() = 0;     // _18
	virtual void _1C() = 0;     // _1C
	virtual void _20() = 0;     // _20
	virtual void _24() = 0;     // _24
	virtual void onDirectOn();  // _28
	virtual void onDirectOff(); // _2C

	// _00 VTBL
};
} // namespace PSSystem

namespace PSM {
struct TrackOnDirector_Scaled {
	virtual void _00() = 0;        // _00
	virtual void _04() = 0;        // _04
	virtual void _08() = 0;        // _08
	virtual void _0C() = 0;        // _0C
	virtual void underDirection(); // _10

	// _00 VTBL
};
} // namespace PSM

namespace PSM {
struct TrackOnDirectorBase {
	virtual void _00() = 0;                               // _00
	virtual void _04() = 0;                               // _04
	virtual void _08() = 0;                               // _08
	virtual void _0C() = 0;                               // _0C
	virtual void _10() = 0;                               // _10
	virtual void _14() = 0;                               // _14
	virtual void directOnTrack(PSSystem::SeqTrackBase&);  // _18
	virtual void directOffTrack(PSSystem::SeqTrackBase&); // _1C
	virtual void _20() = 0;                               // _20
	virtual void onPlayInit(JASTrack*);                   // _24

	// _00 VTBL
};
} // namespace PSM

namespace PSSystem {
struct SwitcherDirector {
	virtual void _00() = 0;         // _00
	virtual void _04() = 0;         // _04
	virtual void _08() = 0;         // _08
	virtual void _0C() = 0;         // _0C
	virtual void _10() = 0;         // _10
	virtual void _14() = 0;         // _14
	virtual void _18() = 0;         // _18
	virtual void _1C() = 0;         // _1C
	virtual void doUpdateRequest(); // _20

	// _00 VTBL
};
} // namespace PSSystem

namespace PSM {
struct ActorDirector_Scaled : public DirectorBase,
                              public TrackOnDirector_Scaled,
                              public TrackOnDirectorBase,
                              public SwitcherDirector {
	virtual ~ActorDirector_Scaled();                      // _00
	virtual void exec();                                  // _04
	virtual void directOn();                              // _08
	virtual void directOff();                             // _0C
	virtual void underDirection();                        // _10
	virtual void execInner();                             // _14
	virtual void directOnTrack(PSSystem::SeqTrackBase&);  // _18
	virtual void directOffTrack(PSSystem::SeqTrackBase&); // _1C
	virtual void doUpdateRequest();                       // _20
	virtual void onPlayInit(JASTrack*);                   // _24
	virtual void onDirectOn();                            // _28
	virtual void onDirectOff();                           // _2C
	virtual void getNearestDistance();                    // _30
	virtual void onSetMinDistObj(Game::Creature*);        // _34

	// _00 VTBL
};
} // namespace PSM

#endif
