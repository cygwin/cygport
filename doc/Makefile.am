dist_man_MANS = cygport.1

htmldocdir = $(docdir)/html
dist_htmldoc_DATA = cygport.1.html

cygport.1: $(top_builddir)/bin/cygport
	CYGPORT_BOOTSTRAP=1 top_srcdir=$(top_srcdir) \
	$(HELP2MAN) -o $@ --no-info --name="Cygwin source packaging tool" $<

cygport.1.html: cygport.1
	groff -t -mandoc -Thtml $< > $@

DISTCLEANFILES = $(dist_man_MANS) $(dist_htmldoc_DATA)
