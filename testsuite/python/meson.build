pip3 = find_program('pip3', required: false)

if python3.found()
tests += [['python/distutils']]
tests += [['python/python-clang', 480]]
endif

if pip3.found()
tests += [['python/wheel']]
endif

tests += [['python/normalization']]
