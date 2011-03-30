nodist_bin_SCRIPTS = cygport
nodist_noinst_SCRIPTS = cygport-inplace

cygport: cygport.in $(top_srcdir)/configure
	$(AM_V_GEN)sed	-e "s!\@VERSION\@!$(VERSION)!"			\
		-e "s!\@cygclassdir\@!$(pkgdatadir)/cygclass!"	\
		-e "s!\@docdir\@!$(docdir)!"			\
		-e "s!\@gnuconfigdir\@!$(pkgdatadir)!"		\
		-e "s!\@pkgdatadir\@!$(pkgdatadir)!"	\
		-e "s!\@pkglibdir\@!$(pkglibdir)!"		\
		-e "s!\@sysconfdir\@!$(sysconfdir)!"	\
		$< > $@ ; \
	chmod 755 $@

cygport-inplace: cygport.in $(top_srcdir)/configure
	$(AM_V_GEN)sed	-e "s!\@VERSION\@!$(VERSION)!"			\
		-e "s!\@cygclassdir\@!$(abs_top_srcdir)/cygclass!"	\
		-e "s!\@docdir\@!$(abs_top_srcdir)/doc!"			\
		-e "s!\@gnuconfigdir\@!$(abs_top_srcdir)/data/gnuconfig!"		\
		-e "s!\@pkgdatadir\@!$(abs_top_srcdir)/data!"		\
		-e "s!\@pkglibdir\@!$(abs_top_srcdir)/lib!"			\
		-e "s!\@sysconfdir\@!$(abs_top_srcdir)/data!"		\
		$< > $@ ; \
	chmod 755 $@

EXTRA_DIST = cygport.in
CLEANFILES = cygport cygport-inplace
