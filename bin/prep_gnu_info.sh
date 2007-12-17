#!/bin/bash
################################################################################
#
# prep_gnu_info.sh - Postinstall commands for GNU info pages
#
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
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
# $Id: prep_gnu_info.sh,v 1.7 2007-12-17 15:35:42 yselkowitz Exp $
#
################################################################################
set -e

rm -f ${D}/usr/share/info/dir

echo "Compressing info pages:"

for infopage in $(find ${D}/usr/share/info -type f ! -name '*.gz' ! -name '*.bz2')
do
	echo "        ${infopage##*/}"
	gzip -q ${infopage}
done

if ! defined _CYGPORT_RESTRICT_postinst_info_
then

dodir /etc/postinstall
for infopage in $(find ${D}/usr/share/info -type f)
do
	cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
		/usr/bin/install-info --dir-file=/usr/share/info/dir --info-file=/usr/share/info/${infopage##*/}

		_EOF
done
echo >> ${D}/etc/postinstall/${PN}.sh

fi ## !_CYGPORT_RESTRICT_postinst_info_ ##
