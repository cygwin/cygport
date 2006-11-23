#!/bin/bash
################################################################################
#
# prep_fonts_dir.sh - Postinstall commands for system fonts
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
# Distributed under the terms of the GNU General Public License v2
#
# $Id: prep_fonts_dir.sh,v 1.5 2006-11-23 04:14:58 yselkowitz Exp $
#
################################################################################
set -e

fontsdir=/usr/share/fonts
encodingsdir=${fontsdir}/encodings

for pcf in $(find ${D}${fontsdir} -name '*.pcf')
do
	gzip -q ${pcf}
done

n=0
while (( n < 9 ))
do
	encodings="${encodings} -a microsoft-cp125${n}"
	let n+=1
done
unset n

dodir /etc/postinstall
for fonttype in 100dpi 75dpi TTF Type1 cyrillic misc
do
	fontsubdir=${fontsdir}/${fonttype}

	if [ -d ${D}${fontsubdir} ]
	then
		rm -f ${D}${fontsubdir}/encodings.dir ${D}${fontsubdir}/fonts.{dir,cache-1,scale}

		cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
			rm -f ${fontsubdir}/encodings.dir ${fontsubdir}/fonts.{dir,scale,cache-1}
			mkfontscale ${encodings} ${fontsubdir} || rm -f ${fontsubdir}/fonts.scale
			mkfontdir ${encodings} ${fontsubdir} || rm -f ${fontsubdir}/fonts.dir
			mkfontscale -n -e ${encodingsdir} ${fontsubdir} || rm -f ${fontsubdir}/encodings.dir
			fc-cache -f ${fontsubdir} || rm -f ${fontsubdir}/fonts.cache-1

		_EOF
	fi
done
