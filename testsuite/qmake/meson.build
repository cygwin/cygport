qmake3 = find_program('qmake-qt3', required: false)
if qmake3.found()
test('qmake/qt3',
     test_driver,
     args: 'qmake/qt3',
     env: testenv,
     is_parallel: false,
     timeout: 240)
endif
qmake4 = find_program('qmake-qt4', required: false)
if qmake4.found()
test('qmake/qt4',
     test_driver,
     args: 'qmake/qt4',
     env: testenv,
     is_parallel: false,
     timeout: 240)
endif
qmake5 = find_program('qmake-qt5', required: false)
if qmake5.found()
test('qmake/qt5',
     test_driver,
     args: 'qmake/qt5',
     env: testenv,
     is_parallel: false,
     timeout: 240)
endif
