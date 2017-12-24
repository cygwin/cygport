python2 = find_program('python2', required: false)
pip2 = find_program('pip2', required: false)
pip3 = find_program('pip3', required: false)
pygtk2 = find_program('pygtk-codegen-2.0', required: false)

if python2.found()
test('python/distutils',
     test_driver,
     args: 'python/distutils',
     env: testenv,
     timeout: 120)
endif

if pygtk2.found()
test('python/pygtk',
     test_driver,
     args: 'python/pygtk',
     env: testenv,
     timeout: 480)
endif

if pip2.found() and pip3.found()
test('python/wheel',
     test_driver,
     args: 'python/wheel',
     env: testenv,
     timeout: 120)
endif
