mingw32cc = find_program('i686-w64-mingw32-gcc', required: false)
mingw32qmake5 = find_program('i686-w64-mingw32-qmake-qt5', required: false)

if mingw32cc.found()
tests += [['cross/make']]
if cmake.found()
tests += [['cross/cmake']]
endif
if mingw32qmake5.found()
tests += [['cross/qt5']]
endif
endif
