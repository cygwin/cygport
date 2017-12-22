qmake4 = find_program('qmake-qt4', required: false)
if qmake4.found()
if cmake.found()
test('qt4/cmake',
     test_driver,
     args: 'qt4/cmake',
     env: testenv,
     is_parallel: false,
     timeout: 480)
endif
test('qt4/qmake',
     test_driver,
     args: 'qt4/qmake',
     env: testenv,
     is_parallel: false,
     timeout: 240)
endif
