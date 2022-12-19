case $(uname -s) in *-WOW*) wow64=" (32-bit)" ;; esac
/usr/bin/mkdir -p "$(/usr/bin/cygpath $CYGWINFORALL -P)/Cygwin-X${wow64}"
/usr/bin/mkshortcut $CYGWINFORALL -P -w / -i /usr/bin/xwin-xdg-menu.exe -n "Cygwin-X${wow64}/XWin Server" -a "--quote /usr/bin/bash.exe -l -c \"cd; exec /usr/bin/startxwin\"" /usr/bin/run.exe
