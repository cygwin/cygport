#!/bin/sh

rm -fr autom4te.cache aclocal.m4 configure config.log config.status
rm -f INSTALL install-sh missing
rm -f $(find ${0%/*} -name Makefile.in -o -name Makefile)
rm -f bin/cygport doc/cygport.1 cygport-*.tar.*
rm -fr test/cygport* test/foo*
