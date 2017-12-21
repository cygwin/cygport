env = environment()
env.set('PACKAGE', meson.project_name())
env.set('VERSION', meson.project_version())
env.set('top_srcdir', meson.source_root())
env.set('top_builddir', meson.build_root())

test('messages',
     files('messages'),
     env: env)
test('bootstrap',
     files('bootstrap'),
     env: env,
     timeout: 240)
