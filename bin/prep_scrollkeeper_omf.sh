#!/bin/bash
################################################################################
#
# prep_scrollkeeper_omf.sh - Postinstall commands for GNOME Yelp documentation
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
# Distributed under the terms of the GNU General Public License v2
#
# $Header: /usr/src/cygport/tmp/cygport/bin/prep_scrollkeeper_omf.sh,v 1.3 2006-11-20 02:53:00 yselkowitz Exp $
#
################################################################################
set -e

# FIXME: scrollkeeper-update should be run only for individual .omf dirs
# FIXME: create a preremove script which updates the removal as well

if [ -d ${D}/var/lib/scrollkeeper ]
then
	rm -fr ${D}/var/lib/scrollkeeper
fi

dodir /etc/postinstall
cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
	scrollkeeper-update -p /var/lib/scrollkeeper
	
	_EOF
