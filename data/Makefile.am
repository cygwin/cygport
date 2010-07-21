dist_pkgdata_DATA = \
	cygport.nanorc	\
	mirrors			\
	mono.snk		\
	sample.cygport	\
	uac-manifest.in

dist_pkgdata_SCRIPTS =	\
	config.guess		\
	config.sub

bashcompletiondir = /etc/bash_completion.d
dist_bashcompletion_DATA = cygport-bash-completion

config.%:
	$(WGET) http://git.savannah.gnu.org/cgit/config.git/plain/$@
	chmod +x $@

install-data-local:
	if ! test -f $(DESTDIR)$(sysconfdir)/cygport.conf ; then \
		$(mkinstalldirs) $(DESTDIR)$(sysconfdir) ; \
		$(INSTALL_DATA) $(srcdir)/cygport.conf $(DESTDIR)$(sysconfdir) ; \
	fi

EXTRA_DIST = cygport.conf

MAINTAINERCLEANFILES = config.guess config.sub
