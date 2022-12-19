case $(uname -s) in *-WOW*) wow64=" (32-bit)" ;; esac
rm -f "$(cygpath $CYGWINFORALL -P)/Cygwin-X${wow64}/XWin Server.lnk"
rmdir --ignore-fail-on-non-empty "$(cygpath $CYGWINFORALL -P)/Cygwin-X${wow64}"
