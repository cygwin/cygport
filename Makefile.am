SUBDIRS = bin lib data doc test

docdir = $(datadir)/$(PACKAGE)-$(VERSION)
dist_doc_DATA = AUTHORS COPYING ChangeLog INSTALL NEWS README TODO

EXTRA_DIST = CYGWIN-PATCHES/README CYGWIN-PATCHES/setup.hint

dist-hook:
	chmod 644 $(top_distdir)/INSTALL

DISTCLEANFILES = $(PACKAGE)-$(VERSION).tar.bz2
