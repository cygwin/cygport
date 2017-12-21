cygport_in = files('cygport.in')

conf = configuration_data()
conf.set('VERSION', meson.project_version())
conf.set('pkgdatadir', pkgdatadir)
conf.set('cygclassdir', cygclassdir)
conf.set('cygpartdir', cygpartdir)
conf.set('gnuconfigdir', pkgdatadir)
conf.set('sysconfdir', sysconfdir)

cygport_bin = configure_file(input: cygport_in,
                             output: 'cygport',
                             configuration: conf,
                             install_dir: bindir)

inplace = configuration_data()
inplace.set('VERSION', meson.project_version())
inplace.set('pkgdatadir', join_paths(meson.source_root(), 'data'))
inplace.set('cygclassdir', join_paths(meson.source_root(), 'cygclass'))
inplace.set('cygpartdir', join_paths(meson.source_root(), 'lib'))
inplace.set('gnuconfigdir', join_paths(meson.source_root(), 'data', 'gnuconfig'))
inplace.set('sysconfdir', join_paths(meson.source_root(), 'data'))

cygport_inplace = configure_file(input: cygport_in,
                                 output: 'cygport-inplace',
                                 configuration: inplace)
