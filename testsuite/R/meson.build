R = find_program('R', required: false)
if R.found()
test('R/cran',
     test_driver,
     args: 'R/cran',
     env: testenv,
     timeout: 120)
endif
