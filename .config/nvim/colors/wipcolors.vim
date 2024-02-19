" My custom colorscheme for the vim texteditor
" Created at 2021-07-08 by Meisto
" TODO: Migrate to neovim, this might be a good lead: 
" https://cyfyifanchen.com/neovim-true-color/

" ===================================================================
" ==== Setup ========================================================
" ===================================================================
highlight clear
syntax reset
"
" Set name of colorscheme
let g:colors_name="wipcolors"



" ===================================================================
" ==== Compability ==================================================
" ===================================================================
" Suckless' st terminal
if &term == "st-256color"
   set t_8f=[38;2;%lu;%lu;%lum
   set t_8b=[48;2;%lu;%lu;%lum
   " echo "[NOTE] st terminal detected"
endif



" ===================================================================
" ==== Set the actual colors ========================================
" ===================================================================
set background=dark
set termguicolors

" Help can be found at:
" :help group-name
" :help highlight-groups
"
" Also with :help hl-... (e.g. ':help hl-Cursor')
" options: term=..., cterm=..., gui=underline
" values: bold, underline, italic
" Type in :hi to see all set colors.

" Syntax specific:
hi Comment	guifg=#888888
hi Constant     guifg=#00FFFF
hi Identifier   guifg=palegreen
hi Special      guifg=pink
hi Statement	guifg=#E2BD14
hi String       guifg=#00FFFF cterm=italic
hi Type         guifg=orange

" Vim specific:
hi Directory    guifg=#999999 " e.g. in NERDTree
hi LineNr       guifg=#555555
hi Menu         guifg=#000000 guibg=yellow
hi Normal	    guifg=#BBBBBB guibg=#333333
hi Pmenu        guifg=#000000 guibg=#555555  " Popup Menu
hi PmenuSel     guifg=#000000 guibg=#87AF87     " Selected
hi Search	guibg=#FF0000 guifg=wheat
hi Todo		guifg=orangered guibg=yellow2
hi Visual	gui=none guifg=#111111 guibg=#61AFEF
hi WildMenu     guifg=black guibg=#555555
hi ColorColumn	guibg=#444444

" Statusline colors:
hi Default      guifg=#999999"  guibg=#333333

hi ModeBlockN   guifg=#FFFFFF   guibg=#990000
hi ModeBlockNOut        guifg=#990000

hi ModeBlockI   guifg=#000000 guibg=#BBBBBB
hi ModeBlockIOut        guifg=#BBBBBB

hi DarkGreyIn   guifg=#333333   guibg=#555555
hi DarkGrey     guifg=#DDDDDD   guibg=#555555
hi DarkGreyOut  guifg=#555555   guibg=#333333

hi IndentBlanklineSpaceChar guifg=#FF0000
hi IndentBlanklineSpaceCharBlankline guifg=#FF0000
hi IndentBlanklineContextChar guifg=#FF0000
hi IndentBlanklineContextStart guifg=#FF0000
hi IndentBlanklineChar guifg=#666666

hi Folded guibg=grey30 guifg=gold


" Tipp: Use :TSHighlightCapturesUnderCursor to get capture group
hi @keyword guifg=#ABB2BF gui=bold
hi link @include @keyword
hi link @repeat @keyword
hi link @conditional @keyword

hi @namespace guifg=#ABB2BF gui=italic
hi @variable guifg=#E5C07B
hi link @parameter @variable
hi @property guifg=#E5C07B gui=italic
hi @string guifg=#56B6C2 gui=italic
hi @type guifg=#E06C75 gui=bold

hi @punctuation guifg=#ABB2BF
hi link @operator @punctuation

hi link @function.builtin @keyword

hi @method.call guifg=#87AF87


" Others
" hi DiffAdd
" hi DiffChange
" hi DiffDelete
" hi DiffText
" hi ErrorMsg
" hi VertSplit	guibg=#c2bfa5 guifg=grey50 gui=none
" hi Folded	guibg=grey30 guifg=gold
" hi FoldColumn	guibg=grey30 guifg=tan
" hi IncSearch	guifg=slategrey guibg=khaki
" hi ModeMsg	guifg=goldenrod
" hi MoreMsg	guifg=SeaGreen
" hi NonText	guifg=LightBlue guibg=grey30
" hi Question	guifg=springgreen
" hi SpecialKey	guifg=yellowgreen
" hi StatusLine	guibg=#c2bfa5 guifg=black gui=none
" hi StatusLineNC	guibg=#c2bfa5 guifg=grey50 gui=none
" hi Title	guifg=indianred
" hi WarningMsg	guifg=salmon
" hi Scrollbar
" hi Tooltip
" hi PreProc	guifg=indianred
" hi Type		guifg=darkkhaki
" hi Special	guifg=navajowhite
" hi Underlined
" hi Ignore	guifg=grey40
" hi Error

" Do not work on all terminals, in my st it does not
" hi Cursor	guifg=#FF0000 guibg=#61AFEF 
" hi lCursor	guifg=#FF0000 guibg=#61AFEF 
" hi CursorIM

" Optional:
" hi VisualNOS
