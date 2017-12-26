python2 = find_program('python2', required: false)
pip2 = find_program('pip2', required: false)
pip3 = find_program('pip3', required: false)
pygtk2 = find_program('pygtk-codegen-2.0', required: false)

if python2.found()
tests += [['python/distutils']]
endif

if pygtk2.found()
tests += [['python/pygtk', 480]]
endif

if pip2.found() and pip3.found()
tests += [['python/wheel']]
endif
