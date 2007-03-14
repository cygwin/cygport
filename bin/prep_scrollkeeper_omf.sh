#!/bin/bash
################################################################################
#
# prep_scrollkeeper_omf.sh - Postinstall commands for GNOME Yelp documentation
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006, 2007 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
# Distributed under the terms of the GNU General Public License v2
#
# $Id: prep_scrollkeeper_omf.sh,v 1.5 2007-03-14 20:14:15 yselkowitz Exp $
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
