" cygport.vim - Syntax highlighting support for Vim
"
" Part of cygport - Cygwin packaging application
" Copyright (C) 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013 Yaakov Selkowitz
" Provided by the Cygwin Ports project <http://sourceware.org/cygwinports/>
"
" Copying and distribution of this file, with or without modification,
" are permitted in any medium without royalty provided the copyright
" notice and this notice are preserved.  This file is offered as-is,
" without any warranty.

au BufNewFile,BufRead *.cygpart,*.cygport call SetFileTypeSH("bash")
