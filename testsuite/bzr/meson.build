bzr = find_program('bzr', required: false)
if bzr.found()
test('bzr/fetch',
     test_driver,
     args: 'bzr/fetch',
     env: testenv,
     timeout: 120)
endif
