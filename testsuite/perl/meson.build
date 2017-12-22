perl = find_program('perl', required: false)
if perl.found()
test('perl/SRC_URI',
     test_driver,
     args: 'perl/SRC_URI',
     env: testenv)
test('perl/ExtUtils-MakeMaker',
     test_driver,
     args: 'perl/ExtUtils-MakeMaker',
     env: testenv,
     timeout: 120)
test('perl/Module-Build',
     test_driver,
     args: 'perl/Module-Build',
     env: testenv,
     timeout: 240)
endif
