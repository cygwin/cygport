waf = find_program('python2', required: false)
if waf.found()
test('waf/all',
     test_driver,
     args: 'waf/all',
     env: testenv,
     timeout: 120)
endif
