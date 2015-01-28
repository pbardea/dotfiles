set background=dark "or light
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "vivify"
set t_Co=256

highlight Boolean             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsClass          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalConstant guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalVariable guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsImport         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsMember         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Character           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Comment             guifg=#5f5a60 ctermfg=59                            gui=italic cterm=italic
highlight Conditional         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Constant            guifg=#cf6a4c ctermfg=209                           gui=none cterm=none
highlight Cursor              guifg=#eeeeee ctermfg=255 guibg=#586068 ctermbg=67  gui=none cterm=none
highlight CursorColumn        guifg=#eeeeee ctermfg=255 guibg=#182028 ctermbg=67  gui=none cterm=none
highlight CursorLine          guifg=#eeeeee ctermfg=255 guibg=#182028 ctermbg=67  gui=none cterm=none
highlight Debug               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Define              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DefinedName         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Delimiter           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DiffAdd             guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight DiffChange          guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight DiffDelete          guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight DiffText            guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight Directory           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationName     guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationValue    guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Error               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight ErrorMsg            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Exception           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Float               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight FoldColumn          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Folded              guifg=#a0a8b0 ctermfg=67  guibg=#384048 ctermbg=67  gui=none cterm=none
highlight Function            guifg=#dad085 ctermfg=186                           gui=none cterm=none
highlight Identifier          guifg=#7587a6 ctermfg=67                            gui=none cterm=none
highlight Ignore              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight IncSearch           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Include             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Keyword             guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight Label               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight LineNr              guifg=#808080 ctermfg=8   guibg=#141414 ctermbg=233 gui=italic cterm=italic
highlight LocalVariable       guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Macro               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight MatchParen          guifg=#ffffff ctermfg=15  guibg=#80a090 ctermbg=72  gui=none cterm=none
highlight ModeMsg             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight MoreMsg             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight NonText             guifg=#808080 ctermfg=8   guibg=#303030 ctermbg=236 gui=none cterm=none
highlight Normal              guifg=#f8f8f8 ctermfg=15  guibg=#141414 ctermbg=233 gui=none cterm=none
highlight Number              guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight Operator            guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight PMenu               guifg=#ffffff ctermfg=15  guibg=#808080 ctermbg=8   gui=none cterm=none
highlight PMenuSbar           guifg=#ffffff ctermfg=15  guibg=#141414 ctermbg=233 gui=none cterm=none
highlight PMenuSel            guifg=#f0f0f0 ctermfg=255 guibg=#4f4a50 ctermbg=239 gui=none cterm=none
highlight PMenuThumb          guifg=#ffffff ctermfg=15  guibg=#808080 ctermbg=8   gui=none cterm=none
highlight PreCondit           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight PreProc             guifg=#cda869 ctermfg=179                           gui=none cterm=none
highlight Question            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Repeat              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Search              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SignColumn          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Special             guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight SpecialChar         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialComment      guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialKey          guifg=#808080 ctermfg=8   guibg=#343434 ctermbg=236 gui=none cterm=none
highlight SpellBad            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellCap            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellLocal          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellRare           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Statement           guifg=#dad085 ctermfg=186                           gui=none cterm=none
highlight StatusLine          guifg=#f0f0f0 ctermfg=255 guibg=#4f4a50 ctermbg=239 gui=italic cterm=italic
highlight StatusLineNC        guifg=#c0c0c0 ctermfg=7   guibg=#5f5a60 ctermbg=59  gui=italic cterm=italic
highlight StorageClass        guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight String              guifg=#ddf2a4 ctermfg=192                           gui=none cterm=none
highlight Structure           guifg=#9b859d ctermfg=139                           gui=none cterm=none
highlight TabLine             guifg=#000000 ctermfg=0   guibg=#b0b8c0 ctermbg=110 gui=italic cterm=italic
highlight TabLineFill         guifg=#9098a0 ctermfg=67                            gui=none cterm=none
highlight TabLineSel          guifg=#000000 ctermfg=0   guibg=#f0f0f0 ctermbg=255 gui=italic cterm=italic
highlight Tag                 guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Title               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Todo                guifg=#808080 ctermfg=8                             gui=italic cterm=italic
highlight Type                guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
highlight Typedef             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Underlined          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Union               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight VertSplit           guifg=#5f5a60 ctermfg=59  guibg=#5f5a60 ctermbg=59  gui=italic cterm=italic
highlight Visual              guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight VisualNOS           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight WarningMsg          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight WildMenu            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight pythonBuiltin       guifg=#f8f8f8 ctermfg=15                            gui=none cterm=none
