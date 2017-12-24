mate_common = find_program('mate-autogen', required: false)
if mate_common.found()
test('mate/common',
     test_driver,
     args: 'mate/common',
     env: testenv,
     is_parallel: false,
     timeout: 720)
endif
