AC_INIT(cygport, 0.3.9,
	[cygwin-ports-general@lists.sourceforge.net])

AC_PREREQ([2.60])

AC_CONFIG_SRCDIR([bin/dobin])

AM_INIT_AUTOMAKE([1.10 dist-bzip2 no-dist-gzip])

AM_MAINTAINER_MODE

AC_CHECK_PROGS(HELP2MAN, help2man, :)

AC_CONFIG_FILES([
Makefile
bin/Makefile
lib/Makefile
data/Makefile
doc/Makefile
test/Makefile
])

AC_OUTPUT
