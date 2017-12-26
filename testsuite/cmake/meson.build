qt4 = dependency('QtCore')
qt5 = dependency('Qt5Widgets')

if cmake.found()
tests += [['cmake/c']]
if qt4.found()
tests += [['cmake/qt4', 480]]
endif
if qt5.found()
tests += [['cmake/qt5', 480]]
endif
endif
