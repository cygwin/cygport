automake = find_program('automake', required: false)
gnome_common = find_program('gnome-autogen.sh', required: false)
mm_common = find_program('mm-common-prepare', required: false)
mate_common = find_program('mate-autogen', required: false)
xdt = find_program('xdt-autogen', required: false)

glibmm = dependency('glibmm-2.4', required: false)
pango = dependency('pango', required: false)
xfce4_panel = dependency('libxfce4panel-1.0', required: false)

if automake.found()
test('autotools/c',
     test_driver,
     args: 'autotools/c',
     env: testenv,
     is_parallel: false,
     timeout: 720)
if gnome_common.found()
test('autotools/gnome',
     test_driver,
     args: 'autotools/gnome',
     env: testenv,
     is_parallel: false,
     timeout: 720)
endif
if mm_common.found() and glibmm.found() and pango.found()
test('autotools/gtkmm',
     test_driver,
     args: 'autotools/gtkmm',
     env: testenv,
     is_parallel: false,
     timeout: 600)
endif
if mate_common.found()
test('autotools/mate',
     test_driver,
     args: 'autotools/mate',
     env: testenv,
     is_parallel: false,
     timeout: 720)
endif
if xdt.found() and xfce4_panel.found()
test('autotools/xfce',
     test_driver,
     args: 'autotools/xfce',
     env: testenv,
     is_parallel: false,
     timeout: 720)
endif
endif
