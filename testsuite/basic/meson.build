test_help = find_program('test-help')
test('help',
     test_help,
     env: testenv)

test_version = find_program('test-version')
test('version',
     test_version,
     env: testenv)

test_info = find_program('test-info')
test('info',
     test_info,
     env: testenv)

git_archive_all = find_program('git-archive-all', required: false)
if git_archive_all.found()
test_bootstrap = find_program('test-bootstrap')
test('bootstrap',
     test_bootstrap,
     env: testenv,
     timeout: 240)

run_target('bootstrap',
           command: [test_bootstrap, meson.project_name(), meson.project_version()])
endif
