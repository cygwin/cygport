qmake5 = find_program('qmake-qt5', required: false)
if qmake5.found()
if cmake.found()
test('qt5/cmake',
     test_driver,
     args: 'qt5/cmake',
     env: testenv,
     is_parallel: false,
     timeout: 480)
endif
test('qt5/qmake',
     test_driver,
     args: 'qt5/qmake',
     env: testenv,
     is_parallel: false,
     timeout: 240)
endif
