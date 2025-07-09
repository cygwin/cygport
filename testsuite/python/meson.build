pip37 = find_program('pip3.7', required: false)
pip38 = find_program('pip3.8', required: false)

if python3.found()
tests += [['python/distutils']]
tests += [['python/python-clang', 480]]
endif

if pip37.found() and pip38.found()
tests += [['python/wheel']]
endif

tests += [['python/normalization']]
