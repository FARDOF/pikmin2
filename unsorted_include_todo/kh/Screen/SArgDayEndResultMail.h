#ifndef _KH_SCREEN_SARGDAYENDRESULTMAIL_H
#define _KH_SCREEN_SARGDAYENDRESULTMAIL_H

/*
    __vt__Q32kh6Screen20SArgDayEndResultMail:
    .4byte 0
    .4byte 0
    .4byte getSceneType__Q32kh6Screen20SArgDayEndResultMailCFv
    .4byte getClassSize__Q32kh6Screen20SArgDayEndResultMailFv
*/

namespace kh {
namespace Screen {
	struct SArgDayEndResultMail {
		virtual void getSceneType() const; // _00
		virtual void getClassSize();       // _04

		// _00 VTBL
	};
} // namespace Screen
} // namespace kh

#endif
