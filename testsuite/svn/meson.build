svn = find_program('svn', required: false)
if svn.found()
test('svn/fetch',
     test_driver,
     args: 'svn/fetch',
     env: testenv,
     timeout: 120)
endif
