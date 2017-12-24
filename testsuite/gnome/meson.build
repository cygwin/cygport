gnome_common = find_program('gnome-autogen.sh', required: false)
if gnome_common.found()
test('gnome/common',
     test_driver,
     args: 'gnome/common',
     env: testenv,
     is_parallel: false,
     timeout: 720)
endif
