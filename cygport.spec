%define debug_package %{nil}

Name:           cygport
Version:        0.12.1
Release:        1
Summary:        Cygwin package building tool

License:        GPLv3+
Group:          Development/Tools
URL:            http://www.cygwinports.org
Source0:        http://downloads.sourceforge.net/cygwin-ports/%{name}-%{version}.tar.xz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
BuildArch:      noarch

Requires:       autoconf automake libtool pkgconfig
Requires:       bzip2 gzip unzip
Requires:       cygwin-binutils
Requires:       cygwin-gcc
Requires:       cygwin-libtool
Requires:       diffstat
Requires:       diffutils
Requires:       dos2unix
Requires:       file
Requires:       gawk
Requires:       grep
Requires:       imake
Requires:       make
Requires:       patch
Requires:       rsync
Requires:       shared-mime-info
Requires:       util-linux
Requires:       vim-filesystem
Requires:       wget
Requires:       which


%description
Cygwin package building tool.


%prep
%setup -q


%build
%configure --docdir=%{_docdir}/%{name}-%{version}
make %{?_smp_mflags}


%install
rm -rf $RPM_BUILD_ROOT

# First install all the files belonging to the shared build
make install DESTDIR=$RPM_BUILD_ROOT


%clean
rm -rf $RPM_BUILD_ROOT


%post
/usr/bin/update-mime-database ${_datadir}/mime &> /dev/null || :


%postun
/usr/bin/update-mime-database ${_datadir}/mime &> /dev/null || :


%files
%defattr(-,root,root,-)
%doc AUTHORS ChangeLog COPYING NEWS README TODO doc/cygport.1.html doc/manual.css doc/manual.html
%config %{_sysconfdir}/bash_completion.d/cygport-bash-completion
%config(noreplace) %{_sysconfdir}/cygport.conf
%config(noreplace) %{_sysconfdir}/X11/cygport-xvfb.conf
%{_bindir}/cygport
%{_datadir}/cygport
%{_datadir}/mime/packages/cygport.xml
%{_datadir}/vim/vimfiles/ftdetect/cygport.vim
%{_mandir}/man1/cygport.1*


%changelog
* Sun May 12 2013 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.12.1-1
- Bugfixes for crossback scenarios.

* Tue Apr 30 2013 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.12.0-1
- Full x86_64-cygwin support.

* Mon Feb 18 2013 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.11.3-1
- Preliminary x86_64-cygwin support.

* Tue Nov 20 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.11.2-1
- Support DISTDIR, PKG_DOCS.
- Removed obsolete apache1.cygclass.
- Added Vim filetype detection plugin.
- Various bugfixes.

* Wed Oct 10 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.11.1-1
- Allow spec-style file names.
- Various bugfixes.

* Mon Aug 27 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.11.0-1
- Automatic setup.hint generation.
- New cygclasses: pypy, pypy-distutils, rubygem, sugar.

* Wed Aug 22 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.14-1
- Restore compatibility with F16 and EL6.
- Fix compatibility with Ruby 1.9.

* Wed Aug 15 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.13-1
- Bugfix release.

* Fri Jul 20 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.12-1
- Bugfix release.

* Wed Jul 04 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.11-1
- Added support for automatic split debuginfo subpackages.
- Added support for gccgo.
- Added clang.cygclass, xvfb.cygclass.

* Sun Apr 01 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.10-1
- Version bump.

* Wed Mar 14 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.9-1
- Added support for GStreamer 0.11/1.0 series.
- More bugfixes for texlive postinstalls.

* Mon Mar 05 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.8.1-1
- Bugfixes for mate.cygclass and texlive postinstalls.

* Sun Feb 26 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.8-1
- Version bump, adding mate.cygclass and texlive.cygclass.

* Mon Jan 09 2012 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.7-1
- Version bump.
- Override pkglibdir to avoid i686/x86_64 %%_libdir differences.

* Fri Oct 28 2011 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.6-1
- Version bump.
- Call update-mime-database in post and postun for the new MIME package.

* Tue Aug 30 2011 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.5-1
- Version bump.

* Thu Mar 17 2011 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.4-1
- Version bump.

* Wed Mar 16 2011 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.10.3-1
- Initial RPM release.
