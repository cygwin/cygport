" cygport.vim - Syntax highlighting support for Vim
"
" Part of cygport - Cygwin packaging application
" Copyright (C) 2006-2020 Cygport authors
" Provided by the Cygwin project <https://cygwin.com/>
"
" Copying and distribution of this file, with or without modification,
" are permitted in any medium without royalty provided the copyright
" notice and this notice are preserved.  This file is offered as-is,
" without any warranty.

au BufNewFile,BufRead *.cygpart,*.cygport call dist#ft#SetFileTypeSH("bash")
