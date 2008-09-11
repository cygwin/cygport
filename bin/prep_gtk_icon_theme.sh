#!/bin/bash
################################################################################
#
# prep_gtk_icon_theme.sh - Postinstall commands for GTK icon themes
#
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
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

for icondir in $(find ${D}/usr/share/icons -mindepth 1 -maxdepth 1 -type d)
do
	if [ -f ${icondir}/index.theme -o -f ${icondir#${D}}/index.theme ]
	then
		dodir /etc/postinstall
		cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
			if [ -x /usr/bin/gtk-update-icon-cache.exe ]
			then
			    /usr/bin/gtk-update-icon-cache --force ${icondir#${D}}
			fi

			_EOF
	fi
done
