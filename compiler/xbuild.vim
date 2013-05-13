" Vim compiler file
" Compiler:	Mono C#
" Maintainer:	Chiel ten Brinke (ctje92@gmail.com)
" Last Change:	2013 May 13

if exists("current_compiler")
  finish
endif

" Almost the same as msbuild
source "msbuild.vim"

let current_compiler = "xbuild"
let s:keepcpo= &cpo
set cpo&vim

CompilerSet makeprg=xbuild\ /verbosity:minimal

let &cpo = s:keepcpo
unlet s:keepcpo
