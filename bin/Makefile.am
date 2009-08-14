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
	prep_fonts_dir.sh \
	prep_freedesktop_mime.sh \
	prep_gconf_schemas.sh \
	prep_gtk_icon_theme.sh \
	prep_gtk2_modules.sh \
	prep_libtool_modules.sh

EXTRA_DIST = cygport.in
CLEANFILES = cygport
