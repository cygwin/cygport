dist_man_MANS = cygport.1

htmldocdir = $(docdir)/html
dist_htmldoc_DATA = cygport.1.html

cygport.1: $(top_builddir)/bin/cygport
	$(HELP2MAN) -o $@ --no-info --name="Cygwin source packaging tool" $<

cygport.1.html: cygport.1
	$(MAN2HTML) -r $< > $@

MAINTAINERCLEANFILES = $(dist_man_MANS) $(dist_htmldoc_DATA)
