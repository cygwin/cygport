#!/bin/bash
################################################################################
#
# prep_gconf_schemas.sh - Postinstall/preremove commands for GConf schema files
#
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006, 2007 Yaakov Selkowitz
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
