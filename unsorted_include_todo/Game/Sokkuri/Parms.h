#ifndef _GAME_SOKKURI_PARMS_H
#define _GAME_SOKKURI_PARMS_H

/*
    __vt__Q34Game7Sokkuri5Parms:
    .4byte 0
    .4byte 0
    .4byte read__Q34Game7Sokkuri5ParmsFR6Stream
    .4byte 0
*/

namespace Game {
namespace Sokkuri {
	struct Parms {
		virtual void read(Stream&); // _00
		virtual void _04() = 0;     // _04

		// _00 VTBL
	};
} // namespace Sokkuri
} // namespace Game

#endif
