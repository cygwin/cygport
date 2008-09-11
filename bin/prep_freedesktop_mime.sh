#!/bin/bash
################################################################################
#
# prep_freedesktop_mime.sh - Postinstall commands for fd.o mimetypes
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

unset _already_updated_mime_db

# Freedesktop.org Desktop Menu files with MimeType declarations
if [ -d ${D}/usr/share/applications ]
then
	if [ -n "$(grep -lr MimeType ${D}/usr/share/applications)" ]
	then
		declare _already_updated_mime_db=1
		dodir /etc/postinstall
		cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
			/usr/bin/update-desktop-database
			/usr/bin/update-mime-database /usr/share/mime

			_EOF
	fi
fi

# Freedesktop.org Shared Mime types
if [ -d ${D}/usr/share/mime ]
then
	# make sure system-generated files aren't clobbered
	rm -f ${D}/usr/share/mime/{aliases,globs,magic,mime.cache,subclasses,XMLnamespaces}

	if [ -z "${_already_updated_mime_db}" ]
	then
		dodir /etc/postinstall
		cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
			/usr/bin/update-mime-database /usr/share/mime

			_EOF
	fi
fi
