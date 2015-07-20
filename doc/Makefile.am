noinst_DATA = doc/manual/cygport.1.html doc/manual/index.html

man_MANS = doc/cygport.1

if HAVE_HELP2MAN

doc/cygport.1: bin/cygport-inplace $(top_srcdir)/lib/help.cygpart
	$(AM_V_GEN)test -d doc || $(MKDIR_P) doc ; \
	$(HELP2MAN) -o $@ --no-info --name="Cygwin source packaging tool" $<

if HAVE_GROFF

doc/manual/cygport.1.html: doc/cygport.1
	$(AM_V_at)$(MKDIR_P) doc/manual/
	$(AM_V_GEN)$(GROFF) -t -mandoc -Thtml $< > $@

endif HAVE_GROFF
endif HAVE_HELP2MAN

if HAVE_ROBODOC

doc/manual/toc_index.html: Makefile.in $(top_srcdir)/doc/robodoc.rc $(top_srcdir)/bin/cygport.in $(cygclass_DATA) $(cygpart_DATA) $(pkgdata_DATA)
	$(AM_V_GEN)test -d doc || $(MKDIR_P) doc ; \
		cd $(top_srcdir) && \
		$(ROBODOC) --src $(abs_top_srcdir) --doc $(abs_top_builddir)/doc/manual --rc $(abs_top_srcdir)/doc/robodoc.rc --html --multidoc && \
		$(SED) -i -e "s|$(abs_top_srcdir)|cygport|g" doc/manual/*.html

doc/manual/index.html: doc/index.html doc/manual/toc_index.html
	$(AM_V_at)cp -a $< $@

install-manual:
	$(MKDIR_P) $(DESTDIR)$(htmldir)/manual/
	$(INSTALL_DATA) doc/manual/* $(DESTDIR)$(htmldir)/manual/

install-data-local:  install-manual

clean-manual:
	rm -fr doc/manual/

clean-local: clean-manual

endif HAVE_ROBODOC

CLEANFILES += $(man_MANS)

EXTRA_DIST += \
	$(doc_DATA) \
	$(man_MANS) \
	doc/index.html \
	doc/robodoc.rc
