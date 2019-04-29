sclphp = find_program('/opt/cygwin/php71/root/usr/bin/pear', required: false)

tests += [['scl/meta']]
tests += [['scl/autotools']]
tests += [['scl/meson']]
if sclphp.found()
tests += [['scl/pear']]
tests += [['scl/pecl', 360]]
endif
