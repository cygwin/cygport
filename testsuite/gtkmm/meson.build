glibmm = dependency('glibmm-2.4', required: false)
pango = dependency('pango', required: false)
if glibmm.found() and pango.found()
test('gtkmm/all',
     test_driver,
     args: 'gtkmm/all',
     env: testenv,
     is_parallel: false,
     timeout: 600)
endif
