dist_pkgdata_DATA = \
	cygport.nanorc	\
	mirrors			\
	mono.snk		\
	sample.cygport	\
	uac-manifest.in

dist_pkgdata_SCRIPTS =	\
	gnuconfig/config.guess		\
	gnuconfig/config.sub

mimedir = $(datadir)/mime/packages
dist_mime_DATA = cygport.xml

bashcompletiondir = $(sysconfdir)/bash_completion.d
dist_bashcompletion_DATA = cygport-bash-completion

install-data-local:
	if ! test -f $(DESTDIR)$(sysconfdir)/cygport.conf ; then \
		$(mkinstalldirs) $(DESTDIR)$(sysconfdir) ; \
		$(INSTALL_DATA) $(srcdir)/cygport.conf $(DESTDIR)$(sysconfdir) ; \
	fi

EXTRA_DIST = cygport.conf
