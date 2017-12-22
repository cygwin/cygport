mingw32cc = find_program('i686-w64-mingw32-gcc', required: false)
mingw32qmake5 = find_program('i686-w64-mingw32-qmake-qt5', required: false)

if mingw32cc.found()
test('cross/make',
     test_driver,
     args: 'cross/make',
     env: testenv,
     timeout: 240)

if cmake.found()
test('cross/cmake',
     test_driver,
     args: 'cross/cmake',
     env: testenv,
     timeout: 240)
endif

if mingw32qmake5.found()
test('cross/qt5',
     test_driver,
     args: 'cross/qt5',
     env: testenv,
     timeout: 240)
endif
endif
