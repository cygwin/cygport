pkgdata_DATA =				\
	data/cygport.nanorc		\
	data/i686-w64-mingw32.meson	\
	data/x86_64-w64-mingw32.meson	\
	data/mirrors			\
	data/mono.snk			\
	data/sample.cygport		\
	$(NULL)

pkgdata_SCRIPTS =			\
	data/gnuconfig/config.guess	\
	data/gnuconfig/config.sub

mimedir = $(datadir)/mime/packages
mime_DATA = data/cygport.xml

vimftdetectdir = $(datadir)/vim/vimfiles/ftdetect
vimftdetect_DATA = data/cygport.vim

bashcompletiondir = $(sysconfdir)/bash_completion.d
bashcompletion_DATA = data/cygport-bash-completion

xorgconfdir = /etc/X11
xorgconf_DATA = data/cygport-xvfb.conf

EXTRA_DIST += \
	$(bashcompletion_DATA)	\
	$(mime_DATA)		\
	$(pkgdata_DATA)		\
	$(pkgdata_SCRIPTS)	\
	$(vimftdetect_DATA)	\
	$(xorgconf_DATA)	\
	data/cygport.conf
