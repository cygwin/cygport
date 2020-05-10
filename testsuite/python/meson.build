pip27 = find_program('pip2.7', required: false)
pip37 = find_program('pip3.7', required: false)
pip38 = find_program('pip3.8', required: false)
pygtk2 = find_program('pygtk-codegen-2.0', required: false)

if python2.found()
tests += [['python/distutils']]
endif

if pygtk2.found()
tests += [['python/pygtk', 480]]
endif

if pip27.found() and pip37.found() and pip38.found()
tests += [['python/wheel']]
endif
