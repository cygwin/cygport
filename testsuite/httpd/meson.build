apxs = find_program('apxs', required: false)
if apxs.found()
test('httpd/apxs',
     test_driver,
     args: 'httpd/apxs',
     env: testenv,
     timeout: 240)
endif
