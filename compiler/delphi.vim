" Vim delphi compiler file
" Compiler:    delphi
" Last Change: 2010 Feb 16
" Maintainer:  Edson César <edsono@gmail.com>
" License:     This file is placed in the public domain.

if exists("current_compiler")
  finish
endif
let current_compiler = "delphi"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:save_cpo = &cpo
set cpo-=C

" CompilerSet makeprg=rsvars\ \&\ msbuild\ $*
CompilerSet makeprg=build\ $*

" TODO resolver os arquivos .dpr sem fullpath com %D

CompilerSet errorformat=
  \%E%.%#error\ :\ %f(%l)\ %m,
  \%-G%.%#

let &cpo = s:save_cpo
