nodist_bin_SCRIPTS = cygport

cygport: cygport.in $(top_srcdir)/configure
	$(AM_V_GEN)sed	-e "s!\@VERSION\@!$(VERSION)!"			\
		-e "s!\@docdir\@!$(docdir)!"			\
		-e "s!\@pkgdatadir\@!$(pkgdatadir)!"	\
		-e "s!\@pkglibdir\@!$(pkglibdir)!"		\
		-e "s!\@sysconfdir\@!$(sysconfdir)!"	\
		$< > $@ ; \
	chmod 755 $@

EXTRA_DIST = cygport.in
CLEANFILES = cygport
