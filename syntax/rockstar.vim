" Vim syntax file
" Language:     Rockstar
" Maintainer:   Sean Yeh
" URL:          https://github.com/seanyeh/rockstar.vim
" Last Change:  2018-08-01

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" --Comments
syn region  rockstarComment  start="(" end=")"

" --Variables

" syn match rockstarVariable  "\<\(a\|and\|the\|my\|your\)\s\w\+\>"
" syn match rockstarVariable  "\<[A-Z]\w*\(\s\+[A-Z]\w*\)*\>"
syn keyword rockstarPronoun     it he she him her they them ze hir zie zir xe xem ve ver


" --Types

syn keyword rockstarBuiltinObj  mysterious
syn keyword rockstarBuiltinObj  null nothing nowhere nobody empty gone
syn keyword rockstarBuiltinObj  true right yes ok false wrong no lies


" --Literals

" For special characters: \x or \xxx
syn match rockstarSpecial contained "\\\d\d\d\=\|\\."

syn region rockstarString start=+"+ end=+"+ contains=rockstarSpecial skip=+\\\\\|\\"+ extend

syn match rockstarNumber        "\<\d\+\>"
syn match rockstarNumber        "\<\d\+\.\d\+\>"

" Poetic string literal
syn match rockStarString        "\(\<says\)\@<=\s\+.\+\>"
" Poetic number literal
syn match rockStarString        "\(\<\(is\|was\|were\)\)\@<=\s\+.\+\>" contains=ALL


" --Keywords
syn keyword rockstarKeyword     Put into

syn match rockstarKeyword       "'s\s"
syn keyword rockstarKeyword     is says was were

syn keyword rockstarKeyword     Build up Knock down
syn keyword rockstarKeyword     plus with minus without times of over

syn keyword rockstarComparison  higher greater bigger stronger
syn keyword rockstarComparison  lower less smaller weaker
syn keyword rockstarComparison  high great big strong
syn keyword rockstarComparison  low little small weak

" --Comparisons
syn keyword rockstarKeyword     not aint
syn keyword rockstarKeyword     than as


" --I/O
syn match rockstarBuiltin       "\<Listen\( to\)\=\>"
syn keyword rockstarBuiltin     Say Shout Whisper Scream


" --Conditionals
syn keyword rockstarKeyword     While Until If Else


" --Functions
syn keyword rockstarKeyword     takes and taking
syn match rockstarKeyword       "\<Give back\>"

syn match rockstarFuncCall      "\<\(a\|and\|the\|my\|your\)\s\w\+\(\s\+\(takes\|taking\)\)\@=\>"
syn match rockstarFuncCall      "\<[A-Z]\w*\(\s\+[A-Z]\w*\)*\(\s\+\(takes\|taking\)\)\@=\>"
                                    " \@= is positive lookahead

syn match rockstarComma         ","

" -------------------------------------

hi def link rockstarComment     Comment
hi def link rockstarType        Statement
hi def link rockstarNumber      Number


hi def link rockstarVariable    Normal
hi def link rockstarPronoun     Structure


hi def link rockstarBuiltinObj  Structure

hi def link rockstarString      String
hi def link rockstarSpecial     Special

hi def link rockstarKeyword     Statement

hi def link rockstarComparison  Structure

hi def link rockstarBuiltin     Statement

hi def link rockstarFuncCall    Function
hi def link rockstarComma       Special
