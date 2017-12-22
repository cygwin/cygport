kde4 = find_program('kde4-config', required: false)
if kde4.found()
test('kde/kde4',
     test_driver,
     args: 'kde/kde4',
     env: testenv,
     timeout: 480)
endif

kf5 = find_program('meinproc5', required: false)
if kf5.found()
test('kde/kf5',
     test_driver,
     args: 'kde/kf5',
     env: testenv,
     is_parallel: false,
     timeout: 480)
endif
