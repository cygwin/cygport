qmake3 = find_program('qmake-qt3', required: false)
if qmake3.found()
test('qt3/qmake',
     test_driver,
     args: 'qt3/qmake',
     env: testenv,
     is_parallel: false,
     timeout: 240)
endif
