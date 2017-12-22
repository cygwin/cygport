aspell = find_program('aspell', required: false)
if aspell.found()
test('aspell-dict/all',
     test_driver,
     args: 'aspell-dict/all',
     env: testenv,
     timeout: 120)
endif
