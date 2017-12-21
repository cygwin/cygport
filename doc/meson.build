if help2man.found()
cygport_1 = custom_target('cygport-manpage',
                          input: cygport_inplace,
                          output: 'cygport.1',
                          depend_files: cygparts,
                          command: [help2man, '-o', '@OUTPUT@', '--no-info',
                                    '--name=Cygwin source packaging tool', '@INPUT@'],
                          install: true,
                          install_dir: man1dir)

if groff.found()
cygport_1_html = custom_target('cygport-manhtml',
                               input: cygport_1,
                               output: 'cygport.1.html',
                               command: [groff, '-t', '-mandoc', '-Thtml', '@INPUT@'],
                               capture: true,
                               install: true,
                               install_dir: join_paths(htmldir, 'manual'))
endif
endif

if robodoc.found()
cygport_manual = custom_target('cygport-manual',
                               input: 'robodoc.rc',
                               output: 'manual',
                               depend_files: cygport_in + cygclasses + cygparts + datadocs,
                               command: [robodoc, '--src', meson.source_root(),
                                         '--doc', '@OUTDIR@/manual',
                                         '--rc', '@INPUT@',
                                         '--html', '--multidoc'],
                               install: true,
                               install_dir: htmldir)
install_data('index.html',
             install_dir: join_paths(htmldir, 'manual'))
endif
