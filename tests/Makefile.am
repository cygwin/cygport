TESTS = tests/messages tests/bootstrap

TESTS_ENVIRONMENT = MAKE=$(MAKE) PACKAGE=$(PACKAGE) VERSION=$(VERSION) top_srcdir=$(abs_top_srcdir) top_builddir=$(abs_top_builddir)

EXTRA_DIST += $(TESTS)

CLEANFILES += \
	tests/foo-1.2.3-4.cygport \
	tests/$(PACKAGE).cygport \
	tests/$(PACKAGE)-$(VERSION)-1-src.tar.bz2 \
	tests/$(PACKAGE)-$(VERSION)-1.tar.bz2 \
	tests/$(PACKAGE)-$(VERSION).tar.xz

clean-local:
	-rm -fr tests/$(PACKAGE)/ tests/$(PACKAGE)-$(VERSION)-1/
