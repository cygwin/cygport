#!/bin/bash
################################################################################
#
# prep_gtk2_modules.sh - Postinstall commands for GTK+ 2.x modules
# Part of cygport - Cygwin packaging application
# Copyright (C) 2006 Yaakov Selkowitz
# Provided by the Cygwin Ports project <http://cygwinports.dotsrc.org/>
# Distributed under the terms of the GNU General Public License v2
#
# $Id: prep_gtk2_modules.sh,v 1.5 2006-11-20 05:48:58 yselkowitz Exp $
#
################################################################################
set -e

export PKG_CONFIG_PATH="${B}:${PKG_CONFIG_PATH}"
GTK_API=$(pkg-config --variable=gtk_binary_version gtk+-x11-2.0)

# Pango modules
if [ -d ${D}/usr/lib/pango ]
then
	dodir /etc/postinstall
	cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
		if [ -x /usr/bin/pango-querymodules.exe ]
		then
		    mkdir -p /etc/pango
		    chmod 777 /etc/pango
		    /usr/bin/pango-querymodules > /etc/pango/pango.modules
		fi

		_EOF
fi

# Gdk-Pixbuf loaders
if [ -d ${D}/usr/lib/gtk-2.0/${GTK_API}/loaders ]
then
	dodir /etc/postinstall
	cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
		if [ -x /usr/bin/gdk-pixbuf-query-loaders.exe ]
		then
		    mkdir -p /etc/gtk-2.0
		    chmod 777 /etc/gtk-2.0
		    /usr/bin/gdk-pixbuf-query-loaders > /etc/gtk-2.0/gdk-pixbuf.loaders
		fi

		_EOF
fi

# GTK Immodules
if [ -d ${D}/usr/lib/gtk-2.0/${GTK_API}/immodules ]
then
	dodir /etc/postinstall
	cat >> ${D}/etc/postinstall/${PN}.sh <<-_EOF
		if [ -x /usr/bin/gtk-query-immodules-2.0.exe ]
		then
		    mkdir -p /etc/gtk-2.0
		    chmod 777 /etc/gtk-2.0
		    /usr/bin/gtk-query-immodules-2.0 > /etc/gtk-2.0/gtk.immodules
		fi

		_EOF
fi
