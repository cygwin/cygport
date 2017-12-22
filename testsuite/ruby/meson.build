ruby = find_program('ruby', required: false)
gem = find_program('gem', required: false)
if ruby.found()
if gem.found()
test('ruby/gem',
     test_driver,
     args: 'ruby/gem',
     env: testenv,
     timeout: 240)
endif
endif
