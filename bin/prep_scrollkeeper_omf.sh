#!/bin/bash
################################################################################
#
# prep_scrollkeeper_omf.sh - Postinstall commands for GNOME Yelp documentation
#
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006, 2007 Yaakov Selkowitz
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
# $Id: prep_scrollkeeper_omf.sh,v 1.6 2007-10-15 03:40:15 yselkowitz Exp $
#
################################################################################
set -e

sk_vardir=/var/lib/scrollkeeper
sk_omfdir=/usr/share/omf

if [ -d ${D}${sk_vardir} ]
then
	rm -fr ${D}${sk_vardir}
fi

for d in ${D}${sk_omfdir}/*
do
	pkg_omfdir=${d#${D}}

	dodir /etc/postinstall
	cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
		scrollkeeper-update -q -o ${pkg_omfdir} -p ${sk_vardir}

		_EOF

	dodir /etc/preremove
	cat >> ${D}/etc/preremove/${PN}.sh <<-_EOF
		rm -fr ${pkg_omfdir}
		scrollkeeper-update -q -o ${sk_omfdir} -p ${sk_vardir}

		_EOF
done
