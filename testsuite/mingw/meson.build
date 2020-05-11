mingw32cc = find_program('i686-w64-mingw32-gcc', required: false)
mingw32qt5tools = find_program('i686-w64-mingw32-lrelease-qt5', required: false)
mingw64cc = find_program('x86_64-w64-mingw32-gcc', required: false)
mingw64qt5tools = find_program('x86_64-w64-mingw32-lrelease-qt5', required: false)

if mingw32cc.found() and mingw64cc.found()
tests += [['mingw/autotools', 720]]
tests += [['mingw/make']]
tests += [['mingw/meson']]
if cmake.found()
tests += [['mingw/cmake']]
endif
if mingw32qt5tools.found() and mingw64qt5tools.found()
tests += [['mingw/qt5']]
endif
endif
