automake = find_program('automake', required: false)
gnome_common = find_program('gnome-autogen.sh', required: false)
mm_common = find_program('mm-common-prepare', required: false)
kde3 = find_program('kconfig_compiler', required: false)
mate_common = find_program('mate-autogen', required: false)
xdt = find_program('xdt-autogen', required: false)

cairomm = dependency('cairomm-1.0', required: false)
gdk_pixbuf = dependency('gdk-pixbuf-2.0', required: false)
glibmm = dependency('glibmm-2.4', required: false)
gi = dependency('gobject-introspection-1.0', required: false)
pango = dependency('pango', required: false)
libexif = dependency('libexif', required: false)
xfce4_panel = dependency('libxfce4panel-1.0', required: false)

if automake.found()
tests += [['autotools/c', 720]]
if gnome_common.found() and gdk_pixbuf.found() and gi.found()
tests += [['autotools/gnome', 720]]
endif
if mm_common.found() and cairomm.found() and glibmm.found() and pango.found()
tests += [['autotools/gtkmm', 720]]
endif
if kde3.found() and libexif.found()
tests += [['autotools/kde3', 720]]
endif
if mate_common.found() and gi.found() and python2.found()
tests += [['autotools/mate', 720]]
endif
if xdt.found() and xfce4_panel.found()
tests += [['autotools/xfce', 720]]
endif
endif
