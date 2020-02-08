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
python2 = find_program('python2', required: false)

tests = []

subdir('download')
subdir('hints')

subdir('aspell')
subdir('autotools')
subdir('cmake')
subdir('cross')
subdir('docbook')
subdir('font')
subdir('httpd')
subdir('lua')
subdir('meson')
subdir('ocaml')
subdir('perl')
subdir('php')
subdir('python')
subdir('qmake')
subdir('R')
subdir('ruby')
subdir('texlive')
subdir('waf')

foreach t : tests
test(t[0], test_driver,
     args: t[0],
     env: testenv,
     is_parallel: t.length() > 1 ? false : true,
     timeout: t.length() > 1 ? t[1] : 240)
endforeach
