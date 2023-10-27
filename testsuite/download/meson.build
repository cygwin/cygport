bzr = find_program('bzr', required: false)
cvs = find_program('cvs', required: false)
git = find_program('git', required: false)
mtn = find_program('mtn', required: false)
svn = find_program('svn', required: false)

if bzr.found()
tests += [['download/bzr']]
endif
if cvs.found()
tests += [['download/cvs']]
endif
if git.found()
tests += [['download/git']]
endif
tests += [['download/gnome.org']]
tests += [['download/mate']]
if mtn.found()
tests += [['download/mtn']]
endif
tests += [['download/perl']]
tests += [['download/python.org']]
tests += [['download/R']]
if svn.found()
tests += [['download/svn']]
endif
tests += [['download/x.org']]
