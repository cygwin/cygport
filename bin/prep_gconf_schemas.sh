#!/bin/bash
################################################################################
#
# prep_gconf_schemas.sh - Postinstall/preremove commands for GConf schema files
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
# Distributed under the terms of the GNU General Public License v2
#
# $Header: /usr/src/cygport/tmp/cygport/bin/prep_gconf_schemas.sh,v 1.4 2006-11-20 02:53:00 yselkowitz Exp $
#
################################################################################
set -e

dodir /etc/postinstall /etc/preremove

cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
	export GCONF_CONFIG_SOURCE="xml::/etc/gconf/gconf.xml.defaults"
	_EOF

cat >> ${D}/etc/preremove/${PN}.sh <<-_EOF
	export GCONF_CONFIG_SOURCE="xml::/etc/gconf/gconf.xml.defaults"
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
