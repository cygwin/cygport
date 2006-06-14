#!/bin/bash
################################################################################
#
# prep_gconf_schemas.sh - Postinstall/preremove commands for GConf schema files
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
# Distributed under the terms of the GNU General Public License v2
#
################################################################################
set -e

dodir /etc/postinstall /etc/preremove

cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
	/usr/bin/gconftool-2 --shutdown
	/bin/kill -SIGKILL \$(pidof /usr/sbin/gconfd-2)
	/bin/rm -fr \$TMP/gconfd-*
	_EOF

cat >> ${D}/etc/preremove/${PN}.sh <<-_EOF
	/usr/bin/gconftool-2 --shutdown
	/bin/kill -SIGKILL \$(pidof /usr/sbin/gconfd-2)
	/bin/rm -fr \$TMP/gconfd-*
	_EOF

for schema in ${D}/etc/gconf/schemas/*.schemas
do
	cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
		GCONF_CONFIG_SOURCE="xml::/etc/gconf/gconf.xml.defaults" /usr/bin/gconftool-2 --makefile-install-rule /etc/gconf/schemas/${schema##*/} > /dev/null 2>&1
		_EOF

	cat >> ${D}/etc/preremove/${PN}.sh <<-_EOF
		GCONF_CONFIG_SOURCE="xml::/etc/gconf/gconf.xml.defaults" /usr/bin/gconftool-2 --makefile-uninstall-rule /etc/gconf/schemas/${schema##*/} > /dev/null 2>&1
		_EOF
done

echo >> ${D}/etc/postinstall/${PN}.sh
echo >> ${D}/etc/preremove/${PN}.sh
