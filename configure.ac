m4_define([cygport_major_version], [0])
m4_define([cygport_minor_version], [2])
m4_define([cygport_micro_version], [4])
m4_define([cygport_version],
          [cygport_major_version.cygport_minor_version.cygport_micro_version])

AC_INIT(cygport, [cygport_version],
	[cygwin-ports-general@lists.sourceforge.net])

AC_CONFIG_SRCDIR([bin/dobin])

AM_INIT_AUTOMAKE([1.9 dist-bzip2 no-dist-gzip])

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
