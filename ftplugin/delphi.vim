" Vim filetype plugin file
" Language: pascal
" Maintainer: Dan Sharp <dwsharp at users dot sourceforge dot net>
" Last Changed: 20 Jan 2009
" URL:    http://dwsharp.users.sourceforge.net/vim/ftplugin

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

if exists("loaded_matchit")
    let b:match_words='\<\%(begin\|case\|try\)\>:\<end\>'
endif

setlocal path=.,,source/**,test/**
setlocal suffixesadd=.pas,.dpr
setlocal commentstring=//%s

function! s:gd()
  let current_line = line('.')
  let symbol = expand('<cword>')
  if search('\(procedure\|function\)', 'be', 0)
    if search(symbol, 'W') == current_line
      echohl WarningMsg
      echo 'Local definition not found!'
      echohl None
    end
  endif
endfunction

nmap <buffer> <silent> gd :call <SID>gd()<CR>
nmap <buffer> <silent> K :exe "!start winhlp32 -k " . expand('<cword>') . " C:\\Program\ Files\\Borland\\Delphi7\\Help\\d7.hlp "<CR>

" Undo the stuff we changed.
let b:undo_ftplugin = "unlet! b:match_words"
