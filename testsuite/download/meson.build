bzr = find_program('bzr', required: false)
cvs = find_program('cvs', required: false)
git = find_program('git', required: false)
hg  = find_program('hg',  required: false)
mtn = find_program('mtn', required: false)
svn = find_program('svn', required: false)

if bzr.found()
test('download/bzr',
     test_driver,
     args: 'download/bzr',
     env: testenv,
     timeout: 120)
endif
if cvs.found()
test('download/cvs',
     test_driver,
     args: 'download/cvs',
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
if hg.found()
test('download/hg',
     test_driver,
     args: 'download/hg',
     env: testenv,
     timeout: 120)
endif
test('download/mate',
     test_driver,
     args: 'download/mate',
     env: testenv)
if mtn.found()
test('download/mtn',
     test_driver,
     args: 'download/mtn',
     env: testenv,
     timeout: 120)
endif
test('download/perl',
     test_driver,
     args: 'download/perl',
     env: testenv)
test('download/python.org',
     test_driver,
     args: 'download/python.org',
     env: testenv)
test('download/R',
     test_driver,
     args: 'download/R',
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
