bzr = find_program('bzr', required: false)
git = find_program('git', required: false)
svn = find_program('svn', required: false)

if bzr.found()
test('download/bzr',
     test_driver,
     args: 'download/bzr',
     env: testenv,
     timeout: 120)
endif
if git.found()
test('download/git',
     test_driver,
     args: 'download/git',
     env: testenv,
     timeout: 120)
endif
test('download/gnome.org',
     test_driver,
     args: 'download/gnome.org',
     env: testenv)
test('download/mate',
     test_driver,
     args: 'download/mate',
     env: testenv)
test('download/perl',
     test_driver,
     args: 'download/perl',
     env: testenv)
test('download/python.org',
     test_driver,
     args: 'download/python.org',
     env: testenv)
if svn.found()
test('download/svn',
     test_driver,
     args: 'download/svn',
     env: testenv,
     timeout: 120)
endif
test('download/x.org',
     test_driver,
     args: 'download/x.org',
     env: testenv)
