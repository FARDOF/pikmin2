#ifndef _GAME_GENERATORCACHE_H
#define _GAME_GENERATORCACHE_H

#include "types.h"
#include "Game/gameGenerator.h"

namespace Game {
/// @size{0x3C}
struct CourseCache : public CNode {
	CourseCache(int);

	virtual ~CourseCache(); // _08 (weak)

	void beginSave(int);
	int getColorMePikmins(u8*, int);
	void read(Stream&);
	void write(Stream&);

	int mCourseIndex;    // _18
	u32 mOffset;         // _1C
	u32 mSize;           // _20
	u32 mGeneratorCount; // _24
	int mGeneratorSize;  // _28
	u32 mCreatureCount;  // _2C
	int mCreatureSize;   // _30
	int mPikiheadCount;  // _34
	int mPikiheadSize;   // _38
};

/// @size{0x140}
struct GeneratorCache {
	GeneratorCache();
	~GeneratorCache();

	void addGenerator(Generator*);
	void beginSave(int);
	void checkOverflow();
	void clearCache();
	void clearGeneratorList();
	void createHeap();
	void createNumberGenerators();
	void destroyHeap();
	void endSave();
	CourseCache* findCache(CourseCache&, int);
	void findRamGenerator(int);
	int getColorMePikmins(int);
	Generator* getFirstGenerator();
	int getTotalMePikmins();
	void loadCreatures(int);
	void loadGenerators(int);
	void loadPikiheads();
	void read(Stream&);
	void saveGenerator(Generator*);
	void saveCreature(Generator*);
	void savePikiheads();
	void slideCache();
	void updateUseList();
	void write(Stream&);

	CourseCache _00;      // _00
	CourseCache _3C;      // _3C
	CourseCache* _78;     // _78
	u8* mHeapBuffer;      // _7C
	int mHeapSize;        // _80
	u32 mFreeOffset;      // _84
	int mFreeSize;        // _88
	Generator mGenerator; // _8C
};

extern GeneratorCache* generatorCache;
} // namespace Game

#endif
