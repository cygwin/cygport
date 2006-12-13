#!/bin/bash
################################################################################
#
# prep_gtk_icon_theme.sh - Postinstall commands for GTK icon themes
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
# Distributed under the terms of the GNU General Public License v2
#
# $Id: prep_gtk_icon_theme.sh,v 1.1 2006-12-13 03:19:11 yselkowitz Exp $
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
