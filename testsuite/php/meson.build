pear = find_program('pear', required: false)
pecl = find_program('pecl', required: false)

if pear.found()
test('php/pear',
     test_driver,
     args: 'php/pear',
     env: testenv,
     timeout: 120)
endif

if pecl.found()
test('php/pecl',
     test_driver,
     args: 'php/pecl',
     env: testenv,
     is_parallel: false,
     timeout: 360)
endif
