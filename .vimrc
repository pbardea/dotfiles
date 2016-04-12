" -------------------------
" Set prefrences
" -------------------------
set ignorecase " ignore case when searching
set smartcase  " when both ignorecase and smartcase are on,
               " if the patter contains an upperase letter it is case insensitive, otherwise it is not
set ruler      " show position of cursor in bottom right corner
set number     " show line numbers
set shellslash " forward slash is used when expanding names
set nocompatible " Stay away from the old vi
set hidden     " opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed
set history=1000 " set history to 1000 instructions
set guioptions-=T 
set guioptions-=m
set title       " set shell title to filename
set scrolloff=3 " set scrolloffset to 3 lines
set hlsearch    " highlight search
set incsearch   " search as you type
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp    
set noerrorbells " turn off error bells
set wrap linebreak nolist " break at lines

set expandtab " insert spaces when tab is pressed
set tabstop=2 " how many columns a tab counts for
set softtabstop=2 " how many columns vim uses when you hit tab in insert mobe
set shiftwidth=2 " how many columns text is indented with >>
set autoindent " copy the indentation from the previous line when starting a new one
set smartindent " automatically inserts one extra level of indentation in some cases
set smarttab " affects how tab key presses are interpreted depending on position of cursor
set backspace=indent,eol,start " makes backspace work like other editors, don't delete over line breaks or automatically inserted indentattion
set wildmenu  " command line completion
set t_Co=256 " colours
set shell=bash "maybe change some fish somtimes

let NERDTreeHijackNetrw=1 " NerdTreeTakeOverNetrw


" Lagging Caps->esc hack
" Since I mapped caps to escape, sometimes there is lag, so I may accidentally
" type capitals
:command -bang Q q<bang> 
:command -bang Wq wq<bang>
:command -bang WQ wq<bang>
:command -bang W w<bang>

" -------------------------
" Leader mappings
" -------------------------
" Toggle paste formatting
imap <Leader>v  <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR> 
" open todo page
nmap <leader>todo :e ~/.vimwiki/TODO.wiki<cr>
" set the default clipboard
set clipboard=unnamed

" magic regex. to investigate
nmap <leader>delnum :%s/\v^[0-9]+\s+//gc<cr>
" save and run python script
nmap <leader>py :w<CR>:exe ":!python " . getreg("%") . "" <CR>

" save and run ruby script
nmap <leader>rb :w<CR>:exe ":!ruby " . getreg("%") . "" <CR>

" save and run swift script
nmap <leader>sw :w<CR>:exe ":!swift " . getreg("%") . "" <CR>

" explore the buffers
nmap <leader>be :BufExplorer<cr> 
" map leader to backslash
let mapleader = "\\"
" Uses vimdiff to compare a file with it unmodified version
:map <Leader>diff :VCSVimDiff<cr>

" clear ctrl-p
nnoremap <leader>c :CtrlPClearCache<CR>
" run some bash
nnoremap <leader>x :! 
" delete buffer
nmap <leader>q :bd<cr>
" not sure what this does
nmap <silent> <leader>df gf<leader>diff<cr>
" clear highlighting
nnoremap <leader><space> :noh<cr>
nnoremap <leader>cl :noh<cr>

" magic
nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %

" VimwikiAll2HTML 
nmap <leader>wh VimwikiAll2HTML<cr>

" Navigation by visual line
noremap j gj
noremap k gk

noremap gj j
noremap gk k

" copy until end of line
noremap Y y$

" -------------------------
" Vundle
" -------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
 
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
" Syntax Highlighting
Plugin 'groenewege/vim-less'
Plugin 'wilsaj/chuck.vim'
Plugin 'skammer/vim-css-color'
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
call vundle#end()
 
"change leader key from '/' to ','
 
" not compatible w/ old VI
set nocompatible
" info in bottom left about where you are on the page
set ruler
" highlight current line
set cursorline
 
execute pathogen#infect()
syntax on
filetype off
filetype plugin indent on
 
set encoding=utf-8 "UNICODE GLYPHS
" yolo. no backup for me
set nobackup

" toggle nerdtoggle
nnoremap <leader>nt :NERDTreeToggle<cr>
" find nerdfind
nnoremap <leader>nf :NERDTreeFind<cr>

 
"get rid of old habits~
" don't allow arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
 
" set background
set background=dark
colorscheme gruvbox

" set up status line
set statusline=%f    " Path.
set statusline+=%m   " Modified flag.
set statusline+=%r   " Readonly flag.
set statusline+=%w   " Preview window flag.

set statusline+=\    " Space.

set statusline+=%#redbar#                " Highlight the following as a warning.
set statusline+=%=   " Right align.

" File format, encoding and type.  Ex: "(unix/utf-8/python)"
set statusline+=(
set statusline+=%{&ft}                        " Type (python).
set statusline+=)

set statusline+=\ (L%l\/%L,\ C%03c)
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set laststatus=2
nnoremap <leader>s :set spell!<Cr>
nnoremap <leader>f 1z=

" set relative line numbers
set rnu

" add syntax highlighting for george and fish
autocmd BufNewFile,BufRead *.grg set syntax=george
autocmd BufNewFile,BufRead *.fish set syntax=fish
let g:ctrlp_working_path_mode = 'ra'

" ################################
" RAINBOW PARENTHESES
" ################################
let g:rbpt_colorpairs = [
        \ ['blue',       '#FF6000'],
        \ ['cyan', '#00FFFF'],
        \ ['darkmagenta',    '#CC00FF'],
        \ ['yellow',   '#FFFF00'],
        \ ['red',     '#FF0000'],
        \ ['darkgreen',    '#00FF00'],
        \ ['White',         '#c0c0c0'],
        \ ['blue',       '#FF6000'],
        \ ['cyan', '#00FFFF'],
        \ ['darkmagenta',    '#CC00FF'],
        \ ['yellow',   '#FFFF00'],
        \ ['red',     '#FF0000'],
        \ ['darkgreen',    '#00FF00'],
        \ ['White',         '#c0c0c0'],
        \ ['blue',       '#FF6000'],
        \ ['cyan', '#00FFFF'],
        \ ['darkmagenta',    '#CC00FF'],
        \ ['yellow',   '#FFFF00'],
        \ ['red',     '#FF0000'],
        \ ['darkgreen',    '#00FF00'],
        \ ['White',         '#c0c0c0'],
        \ ]
let g:rbpt_max = 21
let g:rbpt_loadcmd_toggle = 0

nnoremap <leader>tp :RainbowParenthesesToggle<Cr>
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" ################################
" END RAINBOW PARENTHESES
" ################################
filetype plugin indent off

"GO LANG SUPPORT
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
