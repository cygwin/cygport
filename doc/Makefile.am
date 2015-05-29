doc_DATA = doc/cygport.1.html doc/manual.css doc/manual.html

man_MANS = doc/cygport.1

if HAVE_HELP2MAN

doc/cygport.1: bin/cygport-inplace $(top_srcdir)/lib/help.cygpart
	$(AM_V_GEN)test -d doc || $(MKDIR_P) doc ; \
	$(HELP2MAN) -o $@ --no-info --name="Cygwin source packaging tool" $<

if HAVE_GROFF

doc/cygport.1.html: doc/cygport.1
	$(AM_V_GEN)$(GROFF) -t -mandoc -Thtml $< > $@

endif HAVE_GROFF
endif HAVE_HELP2MAN

if HAVE_ROBODOC

doc/manual.html: Makefile.in $(top_srcdir)/doc/robodoc.rc $(top_srcdir)/bin/cygport.in $(cygclass_DATA) $(cygpart_DATA) $(pkgdata_DATA)
	$(AM_V_GEN)test -d doc || $(MKDIR_P) doc ; \
		cd $(top_srcdir) && \
		$(ROBODOC) --src $(abs_top_srcdir) --doc $(abs_top_builddir)/doc/manual --rc $(abs_top_srcdir)/doc/robodoc.rc --html --singledoc

doc/manual.css: doc/manual.html

endif HAVE_ROBODOC

CLEANFILES += $(doc_DATA) $(man_MANS)

EXTRA_DIST += \
	$(doc_DATA) \
	$(man_MANS) \
	doc/robodoc.rc
