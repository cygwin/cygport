pear = find_program('pear', required: false)
pecl = find_program('pecl', required: false)

if pear.found()
tests += [['php/pear']]
endif

if pecl.found()
tests += [['php/pecl', 360]]
endif
