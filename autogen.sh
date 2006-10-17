#!/bin/bash

set -e

B=$(pwd)
S=${0%/*}

running() {
	echo ">>> Running ${1}..."
}

export WANT_AUTOCONF=2.5
export WANT_AUTOMAKE=1.9

cd ${S}
running aclocal
aclocal --force
running autoconf
autoconf --force
running automake
automake --add-missing --copy --force-missing

cd ${B}
running configure
${S}/configure \
	--srcdir=${S} --enable-maintainer-mode \
	--prefix=/usr --mandir=/usr/share/man --sysconfdir=/etc \
	"${@}"
