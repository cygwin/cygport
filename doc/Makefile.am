htmldocdir = $(docdir)/html
htmldoc_DATA =

if HAVE_HELP2MAN

man_MANS = cygport.1

cygport.1: $(top_builddir)/bin/cygport
	CYGPORT_BOOTSTRAP=1 top_srcdir=$(top_srcdir) \
	$(HELP2MAN) -o $@ --no-info --name="Cygwin source packaging tool" $<

if HAVE_GROFF

htmldoc_DATA += cygport.1.html

cygport.1.html: cygport.1
	$(GROFF) -t -mandoc -Thtml $< > $@

endif HAVE_GROFF
endif HAVE_HELP2MAN

if HAVE_ROBODOC

htmldoc_DATA += manual.html manual.css

manual.html: $(srcdir)/robodoc.rc $(wildcard $(top_srcdir)/cygclass/*.cygclass) $(wildcard $(top_srcdir)/lib/*.cygpart) $(top_srcdir)/bin/cygport.in $(top_srcdir)/data/mirrors 
	cd $(top_srcdir) && $(ROBODOC) --src . --doc $(abs_builddir)/manual --rc $(abs_srcdir)/robodoc.rc --html --singledoc

manual.css: manual.html

endif HAVE_ROBODOC

CLEANFILES = $(man_MANS) $(htmldoc_DATA)

EXTRA_DIST = robodoc.rc
