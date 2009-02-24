#!/bin/bash
################################################################################
#
# prep_fonts_dir.sh - Postinstall commands for system fonts
#
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006, 2009 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://sourceware.org/cygwinports/>
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

find ${D}${fontsdir} -name '*.pcf' -exec gzip -q '{}' +

dodir /etc/postinstall

for d in $(find ${D}${fontsdir}/ -mindepth 1 -type d)
do
	fonttype=${d#${D}${fontsdir}/}
	fontsubdir=${fontsdir}/${fonttype}

	case ${fonttype} in
	encodings|encodings/large|util) ;;
	*)
		rm -f ${D}${fontsubdir}/encodings.dir ${D}${fontsubdir}/fonts.{dir,scale}

		cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
			/usr/bin/rm -f ${fontsubdir}/encodings.dir ${fontsubdir}/fonts.{dir,scale}
			/usr/bin/mkfontscale ${fontsubdir} || /usr/bin/rm -f ${fontsubdir}/fonts.scale
			/usr/bin/mkfontdir -e ${fontsdir}/encodings -e ${fontsdir}/encodings/large ${fontsubdir} || /usr/bin/rm -f ${fontsubdir}/{encodings,fonts}.dir
			/usr/bin/fc-cache -f ${fontsubdir}

		_EOF
		;;
	esac
done
