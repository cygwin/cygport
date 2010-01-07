#!/bin/sh

rm -fr autom4te.cache aclocal.m4 configure config.log config.status
rm -f ChangeLog INSTALL install-sh missing
rm -f $(find ${0%/*} -name Makefile.in -o -name Makefile)
rm -f bin/cygport doc/cygport.1* doc/manual.* cygport-*.tar.*
rm -fr tests/cygport* tests/foo*
