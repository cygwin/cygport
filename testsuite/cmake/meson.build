kde4 = find_program('kde4-config', required: false)
kf5 = find_program('meinproc5', required: false)
qt4 = dependency('QtCore', required: false)
qt5 = dependency('Qt5Widgets', required: false)

if cmake.found()
tests += [['cmake/c']]
if kde4.found()
tests += [['cmake/kde4', 480]]
endif
if kf5.found()
tests += [['cmake/kf5', 480]]
endif
if qt4.found()
tests += [['cmake/qt4', 480]]
endif
if qt5.found()
tests += [['cmake/qt5', 480]]
endif
endif
