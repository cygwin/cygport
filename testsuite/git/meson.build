git = find_program('git', required: false)
if git.found()
test('git/fetch',
     test_driver,
     args: 'git/fetch',
     env: testenv,
     timeout: 120)
endif
