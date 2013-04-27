" Vim compiler file
" Compiler:	Microsoft Visual Studio C# or else Mono C#
" Maintainer:	Chiel ten Brinke (ctje92@gmail.com)
" Last Change:	2013 Apr 26

if exists("current_compiler")
  finish
endif
let current_compiler = "cs"
let s:keepcpo= &cpo
set cpo&vim

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet errorformat=
            \%*[^\"]\"%f\"%*\\D%l:\ %m,
            \\"%f\"%*\\D%l:\ %m,
            \%f(%l\\,%c):\ %trror\ CS%\\d%\\+:\ %m,
            \%f(%l\\,%c):\ %tarning\ CS%\\d%\\+:\ %m,
            \%f:%l:\ %m,
            \\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,
            \%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',
            \%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',
            \%DMaking\ %*\\a\ in\ %f,
            \%-G%.%#Compilation%.%#,
            \%-G%.%#

if executable("msbuild")
    CompilerSet makeprg=msbuild\ /verbosity:minimal
else
    CompilerSet makeprg=xbuild\ /verbosity:minimal
endif

let &cpo = s:keepcpo
unlet s:keepcpo
