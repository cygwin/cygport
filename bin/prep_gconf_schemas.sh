#!/bin/bash
################################################################################
#
# prep_gconf_schemas.sh - Postinstall/preremove commands for GConf schema files
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
# Distributed under the terms of the GNU General Public License v2
#
# $Id: prep_gconf_schemas.sh,v 1.6 2007-08-17 19:35:36 yselkowitz Exp $
#
################################################################################
set -e

dodir /etc/postinstall /etc/preremove

cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
	export GCONF_CONFIG_SOURCE="$(gconftool-2 --get-default-source)"
	_EOF

cat >> ${D}/etc/preremove/${PN}.sh <<-_EOF
	export GCONF_CONFIG_SOURCE="$(gconftool-2 --get-default-source)"
	_EOF

for schema in ${D}/etc/gconf/schemas/*.schemas
do
	cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
		/usr/bin/gconftool-2 --makefile-install-rule /etc/gconf/schemas/${schema##*/} > /dev/null 2>&1
		_EOF

	cat >> ${D}/etc/preremove/${PN}.sh <<-_EOF
		/usr/bin/gconftool-2 --makefile-uninstall-rule /etc/gconf/schemas/${schema##*/} > /dev/null 2>&1
		_EOF
done

echo >> ${D}/etc/postinstall/${PN}.sh
echo >> ${D}/etc/preremove/${PN}.sh
