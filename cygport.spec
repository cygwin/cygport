%define debug_package %{nil}

Name:           cygport
Version:        0.36.0
Release:        1%{?dist}
Summary:        Cygwin package building tool

License:        GPLv3+
Group:          Development/Tools
URL:            https://www.cygwin.com/
Source0:        https://github.com/cygwin/cygport/%{version}/%{name}-%{version}.tar.gz
BuildArch:      noarch

BuildRequires:  meson
BuildRequires:  groff-base
BuildRequires:  help2man
BuildRequires:  robodoc

Requires:       autoconf automake libtool pkgconfig
Requires:       bzip2 gzip unzip
Requires:       cygwin32-binutils
Requires:       cygwin32-gcc
Requires:       cygwin32-libtool
Requires:       cygwin32-pkg-config
Requires:       cygwin64-binutils
Requires:       cygwin64-gcc
Requires:       cygwin64-libtool
Requires:       cygwin64-pkg-config
Requires:       diffstat
Requires:       diffutils
Requires:       dos2unix
Requires:       file
Requires:       gawk
Requires:       grep
Requires:       imake
Requires:       lftp
Requires:       make
Requires:       openssh
Requires:       patch
Requires:       perl(Authen::SASL)
Requires:       perl(MIME::Parser)
Requires:       perl(Net::SMTP::SSL)
Requires:       rsync
Requires:       util-linux
Requires:       vim-filesystem
Requires:       wget
Requires:       which
Requires:       xz


%description
Cygwin package building tool.


%prep
%setup -q


%build
%meson -Ddocdir=%{_pkgdocdir}
%meson_build


%install
%meson_install
install -D -m0644 data/cygport.conf $RPM_BUILD_ROOT%{_sysconfdir}/cygport.conf


%post
/bin/touch --no-create %{_datadir}/mime/packages &>/dev/null || :


%postun
if [ $1 -eq 0 ] ; then
  /usr/bin/update-mime-database %{_datadir}/mime &> /dev/null || :
fi


%posttrans
/usr/bin/update-mime-database %{?fedora:-n} %{_datadir}/mime &> /dev/null || :


%files
%doc %{_pkgdocdir}/html/
%doc AUTHORS COPYING NEWS README TODO
%config %{_sysconfdir}/bash_completion.d/cygport-bash-completion
%config(noreplace) %{_sysconfdir}/cygport.conf
%config(noreplace) %{_sysconfdir}/X11/cygport-xvfb.conf
%{_bindir}/cygport
%{_datadir}/cygport
%{_datadir}/mime/packages/cygport.xml
%dir %{_datadir}/nano
%{_datadir}/nano/cygport.nanorc
%{_datadir}/vim/vimfiles/ftdetect/cygport.vim
%{_mandir}/man1/cygport.1*


%changelog
* Thu May  2 2019 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.33.1-1
- new version

* Mon Mar 25 2019 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.33.0-1
- new version

* Sun Feb 17 2019 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.32.0-1
- new version

* Mon Feb 11 2019 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.31.2-1
- new version

* Mon Jun  4 2018 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.31.1-1
- new version

* Tue Feb 27 2018 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.31.0-1
- new version

* Wed Jan 10 2018 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.30.1-1
- new version

* Fri Dec 29 2017 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.30.0-1
- new version

* Fri Nov  3 2017 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.25.0-1
- new version

* Thu May 11 2017 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.24.1-1
- new version

* Tue Mar 14 2017 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.24.0-1
- new version

* Fri Jan 27 2017 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.23.1-1
- new version

* Fri Nov 18 2016 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.23.0-1
- new version

* Tue May 10 2016 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.22.0-1
- new version

* Wed Mar 30 2016 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.21.1-1
- new version

* Thu Mar 10 2016 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.21.0-1
- new version

* Mon Jul 20 2015 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.20.2-1
- new version

* Sun Jun 14 2015 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.20.1-1
- new version

* Fri May 29 2015 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.20.0-1
- new version

* Thu May 21 2015 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.19.0-1
- new version

* Mon Mar 9 2015 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.18.1-1
- new version

* Wed Mar 4 2015 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.18.0.1-1
- new version

* Wed Mar 4 2015 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.18.0-1
- new version

* Fri Aug 29 2014 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.17.0-1
- Version bump

* Thu Jun 26 2014 Yaakov Selkowitz <yselkowitz@cygwin.com> - 0.16.0-1
- Version bump
- Cleanup spec

* Fri Mar  7 2014 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.15.0-1
- Version bump.
- Fix for compatibility with F20 unversioned docdirs.

* Fri Nov 15 2013 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.14.1-1
- Version bump.
- Depend on cygwin*-pkg-config.

* Wed Sep 11 2013 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.14.0-1
- Version bump.
- Add xz to Requires for .tar.xz package generation.

* Tue Jul 30 2013 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.13.0-1
- Version bump.
- Depend on both cygwin32 and cygwin64 toolchains.

* Mon Jun 17 2013 Yaakov Selkowitz <cygwin-ports-general@lists.sourceforge.net> - 0.12.2-1
- New function for XML::SAX parser registration handling.
- Bug fixes.

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
