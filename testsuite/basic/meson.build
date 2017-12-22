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

test_bootstrap = find_program('test-bootstrap')
test('bootstrap',
     test_bootstrap,
     env: testenv,
     timeout: 240)
