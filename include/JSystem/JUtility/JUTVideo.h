#ifndef _JUTVIDEO_H
#define _JUTVIDEO_H

#include "Dolphin/os.h"
#include "Dolphin/gx.h"
#include "Dolphin/vi.h"
#include "types.h"

/**
 * @size{0x58}
 */

typedef u8 (*Pattern)[2];

struct JUTVideo {
	JUTVideo(const _GXRenderModeObj*);

	virtual ~JUTVideo(); // _08

	static JUTVideo* createManager(const _GXRenderModeObj*);
	static void destroyManager();
	static JUTVideo* getManager() { return sManager; }
	static void preRetraceProc(unsigned long);
	static void postRetraceProc(unsigned long);
	static void drawDoneCallback();

	inline static u32 getVideoInterval() { return sVideoInterval; }
	inline static s32 getVideoLastTick() { return sVideoLastTick; }

	u16 getEfbHeight() const { return mRenderModeObj->efbHeight; }
	u16 getFbWidth() const { return mRenderModeObj->fbWidth; }

	GXRenderModeObj* getRenderMode() const { return mRenderModeObj; }
	u16 getXfbHeight() const { return mRenderModeObj->xfbHeight; }
	u32 isAntiAliasing() const { return mRenderModeObj->aa; }
	Pattern getSamplePattern() const { return mRenderModeObj->sample_pattern; }
	u8* getVFilter() const { return mRenderModeObj->vfilter; }
	OSMessageQueue* getMessageQueue() { return &mMessageQueue; };
	static void drawDoneStart();
	static void dummyNoDrawWait();
	void setRenderMode(const _GXRenderModeObj*);
	void waitRetraceIfNeed();
	VIRetraceCallback setPostRetraceCallback(VIRetraceCallback);

	// Unused/inlined:
	void getDrawWait();
	VIRetraceCallback setPreRetraceCallback(VIRetraceCallback);
	void getPixelAspect(const _GXRenderModeObj*);
	void getPixelAspect() const;

	static JUTVideo* sManager;
	static s32 sVideoLastTick;
	static u32 sVideoInterval;

	// _00 VTBL
	_GXRenderModeObj* mRenderModeObj;               // _04
	u32 _08;                                        // _08
	u32 mRetraceCount;                              // _0C
	int _10;                                        // _10
	u8 _14[4];                                      // _14
	u32 _18;                                        // _18
	VIRetraceCallback mPreviousPreRetraceCallback;  // _1C
	VIRetraceCallback mPreviousPostRetraceCallback; // _20
	VIRetraceCallback mPreRetraceCallback;          // _24
	VIRetraceCallback mPostRetraceCallback;         // _28
	bool _2C;                                       // _2C
	s32 _30;                                        // _30
	void* mMessageSlots;                            // _34
	OSMessageQueue mMessageQueue;                   // _38
};

#endif
