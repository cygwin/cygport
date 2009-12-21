SUBDIRS = bin lib cygclass data doc tests .

noinst_DATA = AUTHORS COPYING ChangeLog INSTALL NEWS README TODO

if MAINTAINER_MODE
if HAVE_SVN2CL
ChangeLog:
	$(AM_V_GEN)$(SVN2CL) -r HEAD:5 --include-actions --include-rev --group-by-day --separate-daylogs --break-before-msg=1
endif HAVE_SVN2CL
endif MAINTAINER_MODE

EXTRA_DIST = $(noinst_DATA) CYGWIN-PATCHES/README CYGWIN-PATCHES/setup.hint

DISTCLEANFILES = $(PACKAGE)-$(VERSION).tar.bz2

.PHONY: ChangeLog
