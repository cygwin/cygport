AC_INIT(cygport, 0.10.13,
	[cygwin-ports-general@lists.sourceforge.net])

AC_PREREQ([2.60])

AC_CONFIG_SRCDIR([bin/cygport.in])

AM_INIT_AUTOMAKE([1.10 foreign dist-xz no-dist-gzip])

AM_MAINTAINER_MODE

m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

AC_PATH_PROG(HELP2MAN, help2man)
AM_CONDITIONAL(HAVE_HELP2MAN, test "x$HELP2MAN" != "x")

AC_PATH_PROG(GROFF, groff)
AM_CONDITIONAL(HAVE_GROFF, test "x$GROFF" != "x")

AC_PATH_PROG(ROBODOC, robodoc)
AM_CONDITIONAL(HAVE_ROBODOC, test "x$ROBODOC" != "x")

AC_CONFIG_FILES([Makefile])

AC_OUTPUT
