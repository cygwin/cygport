#!/bin/bash
################################################################################
#
# prep_gnu_info.sh - Postinstall commands for GNU info pages
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
# Distributed under the terms of the GNU General Public License v2
#
# $CVSHeader$
#
################################################################################
set -e

rm -f ${D}/usr/share/info/dir

echo "Compressing info pages:"

for infopage in $(find ${D}/usr/share/info -type f ! -name '*.gz' ! -name '*.bz2')
do
	echo "        ${infopage##*/}"
	gzip -q ${infopage}
done

dodir /etc/postinstall
for infopage in $(find ${D}/usr/share/info -type f)
do
	cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
		/usr/bin/install-info --dir-file=/usr/share/info/dir --info-file=/usr/share/info/${infopage##*/}
		
		_EOF
done
echo >> ${D}/etc/postinstall/${PN}.sh
