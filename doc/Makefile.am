dist_man_MANS = cygport.1

cygport.1: $(top_builddir)/bin/cygport
	$(HELP2MAN) -o $@ --no-info --name="Cygwin source packaging tool" $<

MAINTAINERCLEANFILES = cygport.1
