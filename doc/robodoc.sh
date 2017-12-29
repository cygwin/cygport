# /bin/sh
set -e

top_srcdir=${1}
top_builddir=${2}

cd ${top_srcdir}/..
exec robodoc --src ${top_srcdir##*/} --doc ${top_builddir}/doc/manual --rc ${top_srcdir}/doc/robodoc.rc --html --multidoc
