lua = find_program('lua', required: false)
if lua.found()
test('lua/all',
     test_driver,
     args: 'lua/all',
     env: testenv,
     timeout: 240)
endif
