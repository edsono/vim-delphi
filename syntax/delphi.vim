" Vim syntax file
" Language:     Objectdelphi
" Previous Maintainer: (delphi.vim) Xavier Crégut <xavier.cregut@enseeiht.fr>
" Current  Maintainer: Thorsten Maerz <info@netztorte.de>
" Last Change:  2010 April 30

" Remove any old syntax stuff hanging around
syn clear
syn case ignore
syn sync lines=250

if !exists("did_delphi_syntax")
  let did_delphi_syntax = 1
endif

" ------------------------------------------------------------------------------

syn keyword delphiTodo             TODO contained
syn region  delphiComment          start="(\*"     end="\*)"       contains=delphiTodo
syn region  delphiComment          start="{"       end="}"         contains=delphiTodo
syn region  delphiComment          start="//"      end="$"         contains=delphiTodo

syn keyword delphiConstant         false maxint nil true
syn region  delphiString           start=+'+       end=+'+
syn match   delphiByte             "\$[0-9a-fA-F]\+\>"
syn match   delphiNumber           "-\=\<\d\+\.\d\+[dD]-\=\d\+\>"
syn match   delphiNumber           "-\=\<\d\+\.\d\+[eE]-\=\d\+\>"
syn match   delphiNumber           "-\=\<\d\+\.\d\+\>"
syn match   delphiNumber           "-\=\<\d\+\>"

syn keyword delphiDeclFunction     procedure function record type var const constructor destructor property contained
syn match   delphiDeclFunction     "class\s*procedure" contained
syn match   delphiDeclFunction     "class\s*function" contained
syn match   delphiDeclFunction     "reference\s*to\s*procedure" contained
syn match   delphiFunction         "\s*\%(class\s*\|reference\s*to\s*\)\?\%(constructor\|destructor\|procedure\|function\)\s*[.[:alnum:]]*" contains=delphiDeclFunction

syn keyword delphiStatement        begin end property
syn keyword delphiStatement        read readln reset rewrite seek write writeln
syn keyword delphiConditional      case else if of on then
syn keyword delphiRepeat           do downto for repeat to until while
syn keyword delphiOperator         and as div mod not of or shl shr with xor
syn keyword delphiLabel            goto label
syn match   delphiKeyword          "contains"
syn keyword delphiKeyword          asm delete dispose forward get
syn keyword delphiKeyword          implementation initialization finalization
syn keyword delphiKeyword          insert interface requires unit uses inherited
syn keyword delphiKeyword          library exports new package program put
syn keyword delphiException        try except finally raise

syn keyword delphiKeyword          interface requires unit uses
syn keyword delphiStatement        record type var const class assign

syn region  delphiDefine           start="{\$"     end="}"

syn keyword delphiType             double dword extended file float input integer keyboard long longint
syn keyword delphiType             longstring object output pchar pointer real resourcestring set short
syn keyword delphiType             shortstring string threadvar variant word UTF8String UTF8 UTF16String
syn keyword delphiType             UTF16 array boolean byte cardinal char
syn match   delphiType             "\C\<T[[:upper:]][[:alnum:]]*\>"
syn keyword delphiAccess           public private protected published
syn match   delphiAccess           "strict private"
syn match   delphiAccess           "strict public"
syn match   delphiAccess           "strict protected"
syn match   delphiConstType        "\C\<[[:upper:]][[:upper:]_[:digit:]]*\>"

syn keyword delphiComparator       in is
syn keyword delphiModifier         inline external assembler near far absolute
syn keyword delphiModifier         interrupt interactive packed dispinterface out automated
syn keyword delphiModifier         at default nodefault dispid implements message
syn keyword delphiModifier         readonly writeonly resident stored
syn keyword delphiObjModifier      abstract virtual override reintroduce
syn keyword delphiFuncModifier     cdecl delphi register stdcall safecall dynamic export name overload

syn match   delphiSymbol           ":="
syn match   delphiSymbol           "[,<=>:;.]"
syn match   delphiSymbol           "[+-]"
syn match   delphiDelimiter        "[()]"
syn match   delphiMatrixDelimiter  "[][]"
" syn match   delphiSymbol           "[*/]" " Como evitar // e {* ?

" ------------------------------------------------------------------------------

hi def link delphiTodo                  Todo
hi def link delphiComment               Comment
hi def link delphiDefine                Comment

hi def link delphiStatement             Statement
hi def link delphiAccess                Keyword
hi def link delphiDeclFunction          Keyword
hi def link delphiFunction              Function
" hi def link delphiBlock                 Statement

hi def link delphiModifier              Keyword
hi def link delphiObjModifier           Keyword
hi def link delphiFuncModifier          Keyword

hi def link delphiByte                  Number
hi def link delphiNumber                Number
hi def link delphiString                String

hi def link delphiOperator              Operator
hi def link delphiConstant              Constant
hi def link delphiAssignment            Operator
hi def link delphiComparator            Conditional

hi def link delphiRepeat                Repeat
hi def link delphiKeyword               Keyword
hi def link delphiException             Exception
hi def link delphiConditional           Conditional

hi def link delphiType                  Type
hi def link delphiConstType             Type

hi def link delphiSymbol                Function
hi def link delphiDelimiter             Function
hi def link delphiMatrixDelimiter       Function

" hi def link delphiIdentifier          Identifier
" hi def link delphiLabel               Label
" hi def link delphiObject              Type

" ------------------------------------------------------------------------------

let b:current_syntax = "delphi"

" vim: ts=8 sw=2
