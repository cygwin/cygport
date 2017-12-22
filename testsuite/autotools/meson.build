automake = find_program('automake', required: false)
if automake.found()
test('autotools/all',
     test_driver,
     args: 'autotools/all',
     env: testenv,
     is_parallel: false,
     timeout: 720)
endif
