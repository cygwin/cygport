#****** Chapter 14/Cygclasses
#  DESCRIPTION
#  Cygclasses serve as cygport's standard library, allowing cygport to support
#  so many different types of packaging scenarios.  They may accept variables
#  to control their behaviour, provide definitions and/or functions for use in
#  .cygport files, and some can completely control the build process without
#  further intervention.
#
#  Cygclasses are imported via the inherit command at the top of your .cygport
#  file.  Because of the predominance of GNU autotools, the autotools.cygclass
#  is automatically imported (as explained there).
#
#  These Cygclasses allow downloading from various servers and repositories:
#  * bzr.cygclass -
#    For downloading sources from Bazaar repositories.
#  * cvs.cygclass -
#    For downloading sources from CVS repositories.
#  * fossil.cygclass -
#    For downloading sources from Fossil repositories.
#  * git.cygclass -
#    For downloading sources from Git repositories.
#  * gnome.org.cygclass -
#    For downloading sources from GNOME mirrors.
#  * hg.cygclass -
#    For downloading sources from Mercurial repositories.
#  * kde.org.cygclass -
#    For downloading sources from KDE mirrors.
#  * mtn.cygclass -
#    For downloading sources from Monotone repositories.
#  * python.org.cygclass -
#    For downloading sources from PyPI.
#  * svn.cygclass -
#    For downloading sources from Subversion repositories.
#
#  These Cygclasses handle various buildsystems:
#  * autotools.cygclass -
#    For packages using the autoconf/automake/libtool buildsystem.
#  * cmake.cygclass -
#    For packages using the CMake buildsystem.
#  * meson.cygclass -
#    For packages using the Meson buildsystem.
#  * ninja.cygclass -
#    For packages using the Ninja buildsystem.
#  * qt3-qmake.cygclass -
#    For packages which depend on Qt 3.x and use the qmake buildsystem.
#  * qt4-cmake.cygclass -
#    For packages which depend on Qt 4.x and use the CMake buildsystem.
#  * qt4-qconf.cygclass -
#    For packages which depend on Qt 4.x and use the QConf buildsystem.
#  * qt4-qmake.cygclass -
#    For packages which depend on Qt 4.x and use the qmake buildsystem.
#  * qt5-qmake.cygclass -
#    For packages which depend on Qt 5.x and use the qmake buildsystem.
#  * waf.cygclass -
#    For packages which use the Waf buildsystem.
#
#  These Cygclasses deal with certain types of dependencies:
#  * fox.cygclass -
#    For packages which depend on the FOX Toolkit.
#  * pypy.cygclass -
#    For packages which depend on PyPy.
#  * python2.cygclass -
#    For packages which depend on Python 2.x.
#  * python3.cygclass -
#    For packages which depend on Python 3.x.
#  * qt3.cygclass -
#    For packages which depend on Qt 3.x.
#  * qt4.cygclass -
#    For packages which depend on Qt 4.x.
#  * qt5.cygclass -
#    For packages which depend on Qt 5.x.
#  * tcl.cygclass -
#    For packages which depend on Tcl.
#  * wxwidgets.cygclass -
#    For packages which depend on wxWidgets.
#
#  These Cygclasses are used for packaging desktop software components:
#  * gnome2.cygclass -
#    For GNOME 2.x/3.x packages.
#  * kde4.cygclass -
#    For KDE 4.x packages.
#  * kf5.cygclass -
#    For KDE Frameworks 5.x packages.
#  * mate.cygclass -
#    For MATE Desktop packages.
#  * rox.cygclass -
#    For ROX Desktop packages.
#  * sugar.cygclass -
#    For Sugar Desktop packages.
#  * xfce4.cygclass -
#    For Xfce Desktop packages.
#
#  These Cygclasses are used for packaging specific groups of software:
#  * aspell-dict.cygclass -
#    For Aspell dictionary packages.
#  * docbook.cygclass -
#    For packaging DocBook SGML/XML DTDs.
#  * gst-plugins.cygclass -
#    For GStreamer plugin packages.
#  * gstreamer.cygclass -
#    For GStreamer core packages.
#  * gtk2-perl.cygclass -
#    For Perl bindings of GTK+/GNOME libraries.
#  * gtkmm.cygclass -
#    For GTKmm C++ bindings of GTK+/GNOME libraries.
#  * httpd.cygclass -
#    For Apache HTTP Server DSO packages.
#  * pygtk.cygclass -
#    For Python bindings of GTK+/GNOME libraries.
#  * texlive.cygclass -
#    For TeX Live packages.
#  * xorg.cygclass -
#    For X.Org X11 components.
#
#  These Cygclasses are used for building extension modules for various subsystems:
#  * lua.cygclass -
#    For packages which depend on Lua or provide Lua modules.
#  * ocaml.cygclass -
#    For packages which depend on OCaml or provide OCaml libraries.
#  * octave.cygclass -
#    For packages which depend on Octave or provide Octave modules.
#  * perl.cygclass -
#    For packages which depend on Perl or provide Perl (CPAN) modules.
#  * php.cygclass -
#    For packages which depend on PHP or provide PHP (PEAR/PECL) modules.
#  * pypy-distutils.cygclass -
#    For PyPy packages which use the Distutils buildsystem.
#  * python-wheel.cygclass -
#    For Python 2 and 3 packages which are built and installed as wheels.
#  * python2-distutils.cygclass -
#    For Python 2.x packages which use the Distutils buildsystem.
#  * python2-wheel.cygclass -
#    For Python 2.x packages which are built and installed as wheels.
#  * python3-distutils.cygclass -
#    For Python 3.x packages which use the Distutils buildsystem.
#  * python3-wheel.cygclass -
#    For Python 3.x packages which are built and installed as wheels.
#  * R.cygclass -
#    For packages which depend on R or provide R modules.
#  * ruby.cygclass -
#    For packages which depend on Ruby or provide non-gem Ruby modules.
#  * rubygem.cygclass -
#    For Ruby modules which use the RubyGems buildsystem.
#
#  These Cygclasses deal with compiler and cross-compiler toolchains:
#  * clang.cygclass -
#    For using Clang as a compiler instead of GCC.
#  * cross.cygclass -
#    For packaging libraries to be used with cross-compiler toolchains.
#  * multilib.cygclass -
#    For packaging libraries for cross-compiler toolchains which support
#    multiple ABIs.
#  * toolchain.cygclass -
#    For creating compilers and cross-compilers (binutils, gcc, gdb, newlib).
#
#  These Cygclasses provide install commands for certain types of data:
#  * emacs.cygclass -
#    For manual installation of Emacs modes.
#  * font.cygclass -
#    For manual installation of fonts.
#  * vim.cygclass -
#    For manual installation of Vim macros.
#
#  These Cygclasses provide utility functions:
#  * utils.cygclass -
#    Assorted checking functions.
#  * xvfb.cygclass -
#    For executing commands which require a running X server.
#
#  The following Cygclasses are deprecated and should not be used in new code:
#  * python.cygclass
#  * python-distutils.cygclass
#  * ruby-gnome2.cygclass
#****

cygclassdir = $(pkgdatadir)/cygclass
cygclass_DATA =					\
	cygclass/apache.cygclass		\
	cygclass/apache2.cygclass		\
	cygclass/aspell-dict.cygclass		\
	cygclass/autotools.cygclass		\
	cygclass/bzr.cygclass			\
	cygclass/clang.cygclass			\
	cygclass/cmake.cygclass			\
	cygclass/cross.cygclass			\
	cygclass/cvs.cygclass			\
	cygclass/distutils.cygclass		\
	cygclass/distutils-multi.cygclass	\
	cygclass/docbook.cygclass		\
	cygclass/emacs.cygclass			\
	cygclass/font.cygclass			\
	cygclass/fossil.cygclass		\
	cygclass/fox.cygclass			\
	cygclass/git.cygclass			\
	cygclass/gnome.org.cygclass		\
	cygclass/gnome2.cygclass		\
	cygclass/gst-plugins.cygclass		\
	cygclass/gstreamer.cygclass		\
	cygclass/gtk2-perl.cygclass		\
	cygclass/gtkmm.cygclass			\
	cygclass/hg.cygclass			\
	cygclass/httpd.cygclass			\
	cygclass/kde.org.cygclass		\
	cygclass/kde4.cygclass			\
	cygclass/kf5.cygclass			\
	cygclass/lua.cygclass			\
	cygclass/mate.cygclass			\
	cygclass/meson.cygclass			\
	cygclass/multilib.cygclass		\
	cygclass/mtn.cygclass			\
	cygclass/ninja.cygclass			\
	cygclass/ocaml.cygclass			\
	cygclass/octave.cygclass		\
	cygclass/perl.cygclass			\
	cygclass/php.cygclass			\
	cygclass/pygtk.cygclass			\
	cygclass/pypy.cygclass			\
	cygclass/pypy-distutils.cygclass	\
	cygclass/python.org.cygclass		\
	cygclass/python.cygclass		\
	cygclass/python-distutils.cygclass	\
	cygclass/python-wheel.cygclass		\
	cygclass/python2.cygclass		\
	cygclass/python2-distutils.cygclass	\
	cygclass/python2-wheel.cygclass		\
	cygclass/python3.cygclass		\
	cygclass/python3-distutils.cygclass	\
	cygclass/python3-wheel.cygclass		\
	cygclass/qt3.cygclass			\
	cygclass/qt3-qmake.cygclass		\
	cygclass/qt4.cygclass			\
	cygclass/qt4-cmake.cygclass		\
	cygclass/qt4-qconf.cygclass		\
	cygclass/qt4-qmake.cygclass		\
	cygclass/qt5.cygclass			\
	cygclass/qt5-qmake.cygclass		\
	cygclass/R.cygclass			\
	cygclass/rox.cygclass			\
	cygclass/ruby.cygclass			\
	cygclass/rubygem.cygclass		\
	cygclass/ruby-gnome2.cygclass		\
	cygclass/sugar.cygclass			\
	cygclass/svn.cygclass			\
	cygclass/tcl.cygclass			\
	cygclass/texlive.cygclass		\
	cygclass/toolchain.cygclass		\
	cygclass/utils.cygclass			\
	cygclass/vim.cygclass			\
	cygclass/waf.cygclass			\
	cygclass/wxwidgets.cygclass		\
	cygclass/xfce4.cygclass			\
	cygclass/xorg.cygclass			\
	cygclass/xvfb.cygclass			\
	$(NULL)

EXTRA_DIST += $(cygclass_DATA)
