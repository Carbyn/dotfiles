" Vim color file
" black
" Created by  with ThemeCreator (https://github.com/mswift42/themecreator)

hi clear

if exists("syntax on")
syntax reset
endif

let g:colors_name = "black"

syn match pythonConstant '[A-Z][a-zA-Z0-9_]\{1,}'
syn match pythonOperator '\V=\|-\|+\|*\|@\|/\|%\|&\||\|^\|~\|<\|>\|!=\|:='
syn keyword pythonBoolean True False
syn match pythonFunctionCall '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\ze\%(\s*(\)'

command -nargs=+ HiLink hi def link <args>
HiLink pythonConstant       Constant
HiLink pythonOperator       Operator
HiLink pythonBoolean        Boolean
HiLink pythonFunctionCall   Function

" Define reusable colorvariables.
let s:bg="#060606"
let s:fg="#c9d1d9"
let s:fg2="#b2bbc2"
let s:fg3="#a3abb1"
let s:fg4="#939aa0"
let s:bg2="#060606"
let s:bg3="#35383b"
let s:bg4="#494b4e"
let s:keyword="#fb706a"
let s:builtin="#d1aafd"
let s:const= "#fda65f"
let s:comment="#808993"
let s:func="#dd99dd"
let s:str="#89aa78"
let s:type="#fc9d57"
let s:var="#fc9d57"
let s:operator="#72b7fb"
let s:number="#72b7fb"
let s:boolean="#72b7fb"
let s:warning="#ff0000"
let s:warning2="#ff8800"

exe 'hi Normal guifg='s:fg' guibg='s:bg
exe 'hi Visual guifg='s:fg3' guibg='s:bg3
exe 'hi Cursor guifg='s:bg' guibg='s:fg
exe 'hi CursorLine  guibg='s:bg2
exe 'hi CursorLineNr guifg='s:str' guibg='s:bg
exe 'hi CursorColumn  guibg='s:bg2
exe 'hi ColorColumn  guibg='s:bg2
exe 'hi LineNr guifg='s:fg2' guibg='s:bg2
exe 'hi VertSplit guifg='s:fg3' guibg='s:bg3
exe 'hi MatchParen guifg='s:warning2'  gui=underline'
exe 'hi StatusLine guifg='s:fg' guibg='s:bg' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg2
exe 'hi PmenuSel  guibg='s:bg3
exe 'hi IncSearch guifg='s:bg' guibg='s:keyword
exe 'hi Search   gui=underline'
exe 'hi Directory guifg='s:const
exe 'hi Folded guifg='s:fg4' guibg='s:bg
exe 'hi WildMenu guifg='s:str' guibg='s:bg

exe 'hi Boolean guifg='s:boolean
exe 'hi Character guifg='s:const
exe 'hi Comment guifg='s:comment
exe 'hi Conditional guifg='s:keyword
exe 'hi Constant guifg='s:const
exe 'hi Todo guibg='s:bg
exe 'hi Define guifg='s:keyword
exe 'hi DiffAdd guifg=#fafafa guibg=#123d0f gui=bold'
exe 'hi DiffDelete guibg='s:bg2
exe 'hi DiffChange  guibg=#151b3c guifg=#fafafa'
exe 'hi DiffText guifg=#ffffff guibg=#ff0000 gui=bold'
exe 'hi ErrorMsg guifg='s:warning2' guibg='s:bg2' gui=bold'
exe 'hi WarningMsg guifg='s:bg' guibg='s:warning2
exe 'hi Float guifg='s:number
exe 'hi Function guifg='s:func
exe 'hi Identifier guifg='s:type'  gui=italic'
exe 'hi Keyword guifg='s:keyword'  gui=bold'
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg4' guibg='s:bg2
exe 'hi Number guifg='s:number
exe 'hi Operator guifg='s:operator
exe 'hi PreProc guifg='s:keyword
exe 'hi Special guifg='s:fg
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2
exe 'hi Statement guifg='s:keyword
exe 'hi StorageClass guifg='s:type'  gui=italic'
exe 'hi String guifg='s:str
exe 'hi Tag guifg='s:keyword
exe 'hi Title guifg='s:fg'  gui=bold'
exe 'hi Todo guifg='s:fg2'  gui=inverse,bold'
exe 'hi Type guifg='s:type
exe 'hi Underlined   gui=underline'

" Python Highlighting
exe 'hi pythonBuiltinFunc guifg='s:builtin

colorscheme one
