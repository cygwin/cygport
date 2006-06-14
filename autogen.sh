#!/bin/bash

set -e

B=$(pwd)
S=${0%/*}

running() {
	echo ">>> Running ${1}..."
}

cd ${S}
running aclocal
aclocal-1.9 --force
running autoconf
autoconf-2.5x --force
running automake
automake-1.9 --add-missing --copy --force-missing

cd ${B}
running configure
${S}/configure \
	--srcdir=${S} --enable-maintainer-mode \
	--prefix=/usr --mandir=/usr/share/man --sysconfdir=/etc \
	"${@}"
