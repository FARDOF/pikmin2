#ifndef _P2JME_P2JME_H
#define _P2JME_P2JME_H

#include "types.h"
#include "JSystem/JKernel/JKRDisposer.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JUtility/JUTFont.h"
#include "JSystem/JMessage/TReference.h"

struct JUTTexture;

namespace P2JME {
namespace ImageGroup {
enum EID {};
} // namespace ImageGroup

struct Mgr : public JKRDisposer {
	Mgr(JKRExpHeap*);

	virtual ~Mgr(); // _08

	static void create(JKRExpHeap*);
	void setupMessage();
	void setupTex();
	void setupFont(const char*, JKRExpHeap*);
	void createImage(ImageGroup::EID, int);
	void setImage(ImageGroup::EID, int, JUTTexture*);
	void getImage(ImageGroup::EID, int);
	void setupMessageResource(JKRArchive*, const char*);
	void setupColor(JKRArchive*, const char*);

	// _00 VTBL
	JUTFont* mFont;                // _18
	u32 _1C;                       // _1C
	u32** _20;                     // _20
	u32* _24;                      // _24
	u8 _28;                        // _28
	u32 _2C;                       // _2C
	u32 _30;                       // _30
	JMessage::TReference* mMsgRef; // _34
};

void convertU64ToMessageID(u64, u32*, u32*);
void convertCharToMessageID(char*, u32*, u32*);
} // namespace P2JME

extern P2JME::Mgr* gP2JMEMgr;
#endif
