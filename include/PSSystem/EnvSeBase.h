#ifndef _PSSYSTEM_ENVSEBASE_H
#define _PSSYSTEM_ENVSEBASE_H

#include "Dolphin/os.h"
#include "PSSystem/Reservator.h"
#include "JSystem/JSupport/JSUList.h"
#include "SoundID.h"

struct JAISound;

namespace PSSystem {

struct EnvSeBase : JSULink<EnvSeBase> {
	EnvSeBase(unsigned long, f32);

	virtual void exec();                    // _08
	virtual void play();                    // _0C
	virtual u32 getCastType();              // _10 (weak)
	virtual void setPanAndDolby(JAISound*); // _14 (weak)

	// _00 - _10: JSULink
	// VTBL _10
	f32 _14;          // _14
	u32 _18;          // _18
	int _1C;          // _1C
	u8 _20;           // _20
	SoundID mSoundID; // _24
	f32 _28;          // _28
	f32 _2C;          // _2C
	f32 _30;          // _30
	JAISound* mSound; // _34
	u8 _38;           // _38
	u8 _39;           // _39
	u8 _3A;           // _3A
};

struct EnvSeMgr {
	EnvSeMgr();

	void setAllPauseFlag(u8);
	void on();
	void on(u32, bool);
	void off();
	void off(u32, bool);
	void reservePauseOff();
	void setVolumeRequest(f32, u32, u8);
	void exec();

	// inlined/unused:
	void setPauseFlag(u32, u8);

	JSUList<EnvSeBase> mEnvList;          // _00
	EnvSe_PauseOffReservator mReservator; // _0C
};
} // namespace PSSystem

#endif
