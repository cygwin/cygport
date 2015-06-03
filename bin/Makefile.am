bin_SCRIPTS = bin/cygport
noinst_SCRIPTS = bin/cygport-inplace

bin/cygport: bin/cygport.in $(top_srcdir)/configure Makefile
	$(AM_V_GEN)test -d bin || $(MKDIR_P) bin ;		\
	_version=$(shell cd $(top_srcdir) && git describe --dirty 2>/dev/null || echo $(VERSION));	\
	sed	-e "s!\@VERSION\@!$$_version!"			\
		-e "s!\@cygclassdir\@!$(cygclassdir)!"		\
		-e "s!\@cygpartdir\@!$(cygpartdir)!"		\
		-e "s!\@gnuconfigdir\@!$(pkgdatadir)!"		\
		-e "s!\@pkgdatadir\@!$(pkgdatadir)!"		\
		-e "s!\@sysconfdir\@!$(sysconfdir)!"		\
		$< > $@ ; 					\
	chmod 755 $@

bin/cygport-inplace: bin/cygport.in $(top_srcdir)/configure Makefile
	$(AM_V_GEN)test -d bin || $(MKDIR_P) bin ;			\
	_version=$(shell cd $(top_srcdir) && git describe --dirty 2>/dev/null || echo $(VERSION));	\
	sed	-e "s!\@VERSION\@!$$_version!"				\
		-e "s!\@cygclassdir\@!$(abs_top_srcdir)/cygclass!"	\
		-e "s!\@cygpartdir\@!$(abs_top_srcdir)/lib!"		\
		-e "s!\@gnuconfigdir\@!$(abs_top_srcdir)/data/gnuconfig!"	\
		-e "s!\@pkgdatadir\@!$(abs_top_srcdir)/data!"		\
		-e "s!\@sysconfdir\@!$(abs_top_srcdir)/data!"		\
		$< > $@ ; 						\
	chmod 755 $@

.PHONY: bin/cygport bin/cygport-inplace

CLEANFILES += $(bin_SCRIPTS) $(noinst_SCRIPTS)
EXTRA_DIST += bin/cygport.in
