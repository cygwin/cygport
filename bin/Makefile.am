bin_SCRIPTS = bin/cygport
noinst_SCRIPTS = bin/cygport-inplace

bin/cygport: bin/cygport.in $(top_srcdir)/configure Makefile
	$(AM_V_GEN)test -d bin || $(MKDIR_P) bin ;		\
	sed	-e "s!\@VERSION\@!$(VERSION)!"			\
		-e "s!\@cygclassdir\@!$(pkgdatadir)/cygclass!"	\
		-e "s!\@gnuconfigdir\@!$(pkgdatadir)!"		\
		-e "s!\@pkgdatadir\@!$(pkgdatadir)!"		\
		-e "s!\@pkglibdir\@!$(pkglibdir)!"		\
		-e "s!\@sysconfdir\@!$(sysconfdir)!"		\
		$< > $@ ; 					\
	chmod 755 $@

bin/cygport-inplace: bin/cygport.in $(top_srcdir)/configure Makefile
	$(AM_V_GEN)test -d bin || $(MKDIR_P) bin ;			\
	sed	-e "s!\@VERSION\@!$(VERSION)!"				\
		-e "s!\@cygclassdir\@!$(abs_top_srcdir)/cygclass!"	\
		-e "s!\@gnuconfigdir\@!$(abs_top_srcdir)/data/gnuconfig!"	\
		-e "s!\@pkgdatadir\@!$(abs_top_srcdir)/data!"		\
		-e "s!\@pkglibdir\@!$(abs_top_srcdir)/lib!"		\
		-e "s!\@sysconfdir\@!$(abs_top_srcdir)/data!"		\
		$< > $@ ; 						\
	chmod 755 $@

CLEANFILES += $(bin_SCRIPTS) $(noinst_SCRIPTS)
EXTRA_DIST += bin/cygport.in
