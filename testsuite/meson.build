testenv = environment()
testenv.set('HOME', meson.build_root())
testenv.set('PACKAGE', meson.project_name())
testenv.set('VERSION', meson.project_version())
testenv.set('top_srcdir', meson.source_root())
testenv.set('top_builddir', meson.build_root())

subdir('basic')

test_driver = find_program('test-driver')
# this is used in several subdirs
cmake = find_program('cmake', required: false)

subdir('aspell-dict')
subdir('autotools')
subdir('bzr')
subdir('cmake')
