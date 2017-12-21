project('cygport',
        version: '0.25.0')

bindir = join_paths(get_option('prefix'), get_option('bindir'))
datadir = join_paths(get_option('prefix'), get_option('datadir'))
pkgdatadir = join_paths(datadir, meson.project_name())
cygclassdir = join_paths(pkgdatadir, 'cygclass')
cygpartdir = join_paths(pkgdatadir, 'lib')
sysconfdir = join_paths(get_option('prefix'), get_option('sysconfdir'))
htmldir = join_paths(get_option('prefix'), get_option('docdir'), 'html')
man1dir = join_paths(get_option('prefix'), get_option('mandir'), 'man1')

help2man = find_program('help2man', required: false)
groff = find_program('groff', required: false)
robodoc = find_program('robodoc', required: false)

subdir('bin')
subdir('cygclass')
subdir('data')
subdir('lib')
subdir('tools')
subdir('doc')
subdir('tests')
