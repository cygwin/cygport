dist_pkgdata_DATA = cygport.nanorc mirrors sample.cygport

install-data-local:
	if ! test -f $(DESTDIR)$(sysconfdir)/cygport.conf ; then \
		$(mkinstalldirs) $(DESTDIR)$(sysconfdir) ; \
		$(INSTALL_DATA) $(srcdir)/cygport.conf $(DESTDIR)$(sysconfdir) ; \
	fi

EXTRA_DIST = cygport.conf
