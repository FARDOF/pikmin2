#ifndef _GAME_GASHIBA_PARMS_H
#define _GAME_GASHIBA_PARMS_H

/*
    __vt__Q34Game7GasHiba5Parms:
    .4byte 0
    .4byte 0
    .4byte read__Q34Game7GasHiba5ParmsFR6Stream
*/

namespace Game {
namespace GasHiba {
	struct Parms {
		virtual void read(Stream&); // _00

		// _00 VTBL
	};
} // namespace GasHiba
} // namespace Game

#endif
