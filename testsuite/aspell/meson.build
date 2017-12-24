aspell = find_program('aspell', required: false)
if aspell.found()
test('aspell/dict',
     test_driver,
     args: 'aspell/dict',
     env: testenv,
     timeout: 120)
endif
