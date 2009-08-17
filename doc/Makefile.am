if HAVE_HELP2MAN

man_MANS = cygport.1

cygport.1: $(top_builddir)/bin/cygport
	CYGPORT_BOOTSTRAP=1 top_srcdir=$(top_srcdir) \
	$(HELP2MAN) -o $@ --no-info --name="Cygwin source packaging tool" $<

if HAVE_GROFF

htmldocdir = $(docdir)/html
htmldoc_DATA = html/cygport.1.html

html/cygport.1.html: cygport.1
	$(MKDIR_P) html
	$(GROFF) -t -mandoc -Thtml $< > $@

endif

endif

if HAVE_ROBODOC

noinst_DATA = html.stamp

html.stamp: $(srcdir)/robodoc.rc $(wildcard $(top_srcdir)/cygclass/*.cygclass) $(wildcard $(top_srcdir)/lib/*.cygpart) $(top_srcdir)/bin/cygport.in $(top_srcdir)/data/mirrors
	$(MKDIR_P) html
	$(ROBODOC) --src $(abs_top_srcdir) --doc $(abs_builddir)/html --rc $(srcdir)/robodoc.rc
	touch $@

install-data-local: html.stamp
	$(MKDIR_P) $(DESTDIR)$(htmldocdir)
	cp -fr html/* $(DESTDIR)$(htmldocdir)/

clean-local:
	rm -fr html/

endif

CLEANFILES = $(dist_man_MANS) $(dist_htmldoc_DATA)

EXTRA_DIST = robodoc.rc
