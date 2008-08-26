#!/bin/bash
################################################################################
#
# prep_fonts_dir.sh - Postinstall commands for system fonts
#
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
#
# cygport is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# cygport is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with cygport.  If not, see <http://www.gnu.org/licenses/>.
#
# $Id$
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
			/usr/bin/rm -f ${fontsubdir}/encodings.dir ${fontsubdir}/fonts.{dir,scale,cache-1}
			/usr/bin/mkfontscale ${encodings} ${fontsubdir} || /usr/bin/rm -f ${fontsubdir}/fonts.scale
			/usr/bin/mkfontdir ${encodings} ${fontsubdir} || /usr/bin/rm -f ${fontsubdir}/fonts.dir
			/usr/bin/mkfontscale -n -e ${encodingsdir} ${fontsubdir} || /usr/bin/rm -f ${fontsubdir}/encodings.dir
			/usr/bin/fc-cache -f ${fontsubdir} || /usr/bin/rm -f ${fontsubdir}/fonts.cache-1

		_EOF
	fi
done
