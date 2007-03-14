TESTS = messages bootstrap

TESTS_ENVIRONMENT = MAKE=$(MAKE) PACKAGE=$(PACKAGE) VERSION=$(VERSION) top_srcdir=$(top_srcdir) top_builddir=$(top_builddir)

EXTRA_DIST = $(TESTS)

CLEANFILES = \
	foo-1.2.3-4.cygport \
	$(PACKAGE)-$(VERSION)-1-src.tar.bz2 \
	$(PACKAGE)-$(VERSION)-1.tar.bz2 \
	$(PACKAGE)-$(VERSION)-1.cygport \
	$(PACKAGE)-$(VERSION).tar.bz2

clean-local:
	-rm -fr $(PACKAGE)/ $(PACKAGE)-$(VERSION)-1/
