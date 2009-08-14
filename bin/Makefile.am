nodist_bin_SCRIPTS = cygport

cygport: cygport.in
	sed	-e "s!\@VERSION\@!$(VERSION)!"			\
		-e "s!\@docdir\@!$(docdir)!"			\
		-e "s!\@pkgdatadir\@!$(pkgdatadir)!"	\
		-e "s!\@pkglibdir\@!$(pkglibdir)!"		\
		-e "s!\@sysconfdir\@!$(sysconfdir)!"	\
		$< > $@ ; \
	chmod 755 $@

privbindir = $(pkglibdir)/bin
dist_privbin_SCRIPTS = \
	make_desktop_entry \
	make_etc_defaults \
	$(NULL)

EXTRA_DIST = cygport.in
CLEANFILES = cygport
