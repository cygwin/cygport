perl = find_program('perl', required: false)
if perl.found()
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
