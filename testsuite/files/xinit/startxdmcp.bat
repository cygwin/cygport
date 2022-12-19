@echo off
SET DISPLAY=127.0.0.1:0.0

REM
REM The IP address or hostname of your remote host can be specified as the
REM first (and only) argument to this script. You may also specify the default
REM value in the IF statement below.
REM

SET REMOTE_HOST=%1

IF "%REMOTE_HOST%" == "" SET REMOTE_HOST=10.0.0.1


REM 
REM The path in the CYGWIN_ROOT environment variable assignment assume
REM that Cygwin is installed in a directory called 'cygwin' in the root
REM directory of the current drive.  You will only need to modify
REM CYGWIN_ROOT if you have installed Cygwin in another directory.  For
REM example, if you installed Cygwin in \foo\bar\baz\cygwin, you will need 
REM to change \cygwin to \foo\bar\baz\cygwin.
REM 
REM This batch file will almost always be run from the same drive (and
REM directory) as the drive that contains Cygwin/X, therefore you will
REM not need to add a drive letter to CYGWIN_ROOT.  For example, you do
REM not need to change \cygwin to c:\cygwin if you are running this
REM batch file from the C drive.
REM 

SET CYGWIN_ROOT=\cygwin
SET RUN=%CYGWIN_ROOT%\bin\run -p /usr/bin

SET PATH=.;%CYGWIN_ROOT%\bin;%PATH%

SET XAPPLRESDIR=
SET XCMSDB=
SET XKEYSYMDB=
SET XNLSPATH=



REM
REM Cleanup after last run.
REM

if not exist %CYGWIN_ROOT%\tmp\.X11-unix\X0 goto CLEANUP-FINISH
attrib -s %CYGWIN_ROOT%\tmp\.X11-unix\X0
del %CYGWIN_ROOT%\tmp\.X11-unix\X0

:CLEANUP-FINISH
if exist %CYGWIN_ROOT%\tmp\.X11-unix rmdir %CYGWIN_ROOT%\tmp\.X11-unix


REM
REM Startup the X Server and attempt to connect to a remote XDM server.
REM 
REM The error "Fatal server error: could not open default font 'fixed'" is
REM caused by using a DOS mode mount for the mount that the Cygwin/X
REM fonts are accessed through.  See the Cygwin/X FAQ for more 
REM information:
REM http://x.cygwin.com/docs/faq/cygwin-x-faq.html#q-error-font-eof
REM

if "%OS%" == "Windows_NT" goto OS_NT

REM Windows 95/98/Me
echo startxdmcp.bat - Starting on Windows 95/98/Me

goto STARTUP

:OS_NT

REM Windows NT/2000/XP
echo startxdmcp.bat - Starting on Windows NT/2000/XP

:STARTUP


REM
REM A few examples of initiating an XDMCP connection are
REM given below.  The default is to connect to a specified host
REM with -query.  The second example connects to the first
REM responding host with -broadcast.  The third example shows
REM how to connect to the font server of a remote host.
REM 
REM See startxwin.bat for a description of the most typical
REM command-line parameters for XWin.exe.
REM

REM Connect to a specified machine.

%RUN% XWin -query %REMOTE_HOST% -nodecoration -lesspointer


REM Connect to the first XDM machine to respond.

REM %RUN% XWin -broadcast -nodecoration -lesspointer


REM Connect to a specified machine and a specified font server.

REM %RUN% XWin -query %REMOTE_HOST% -nodecoration -lesspointer -fp tcp/%REMOTE_HOST%:7100
