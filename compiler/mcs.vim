" Vim compiler file
" Compiler:	Microsoft Visual Studio C#
" Maintainer:	
" Last Change:	2013 May 13

if exists("current_compiler")
  finish
endif

" Based on csc.vim
source "csc.vim"

let current_compiler = "mcs"
let s:keepcpo= &cpo
set cpo&vim

CompilerSet makeprg=csc\ %

let &cpo = s:keepcpo
unlet s:keepcpo
