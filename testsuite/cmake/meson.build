if cmake.found()
test('cmake/c',
     test_driver,
     args: 'cmake/c',
     env: testenv,
     timeout: 240)
qt4 = dependency('QtCore')
if qt4.found()
test('cmake/qt4',
     test_driver,
     args: 'cmake/qt4',
     env: testenv,
     is_parallel: false,
     timeout: 480)
endif
qt5 = dependency('Qt5Widgets')
if qt5.found()
test('cmake/qt5',
     test_driver,
     args: 'cmake/qt5',
     env: testenv,
     is_parallel: false,
     timeout: 480)
endif
endif
