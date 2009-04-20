dist_pkgdata_DATA = cygport.nanorc mirrors sample.cygport

bashcompletiondir = /etc/bash_completion.d
dist_bashcompletion_DATA = cygport-bash-completion

install-data-local:
	if ! test -f $(DESTDIR)$(sysconfdir)/cygport.conf ; then \
		$(mkinstalldirs) $(DESTDIR)$(sysconfdir) ; \
		$(INSTALL_DATA) $(srcdir)/cygport.conf $(DESTDIR)$(sysconfdir) ; \
	fi

EXTRA_DIST = cygport.conf
