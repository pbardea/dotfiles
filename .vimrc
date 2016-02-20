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
set tabstop=2 "
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set backspace=indent,eol,start
set wildmenu
set t_Co=256
set shell=bash "fish


"Lagging Caps->esc hack
:command -bang Q q<bang>
:command -bang Wq wq<bang>
:command -bang WQ wq<bang>
:command -bang W w<bang>

" -------------------------
" Leader mappings
" -------------------------
imap <Leader>v  <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>
nmap <leader>todo :e ~/.vimwiki/TODO.wiki<cr>
set clipboard=unnamed

nmap <leader>delnum :%s/\v^[0-9]+\s+//gc<cr>
" save and run python script
nmap <leader>run :w<CR>:exe ":!python " . getreg("%") . "" <CR>

nmap <leader>be :BufExplorer<cr>
let mapleader = "\\"
:map <Leader>diff :VCSVimDiff<cr>
nnoremap <leader>a :echo("\<leader\> works! It is set to <leader>")<CR>
nnoremap <leader>w <C-w>w
nnoremap <leader>s :!subl %<CR><CR>
nnoremap <leader>c :CtrlPClearCache<CR>
nnoremap <leader>x :!
nmap <leader>q :bd<cr>
nmap <leader>w <c-w><c-w>
nmap <silent> <leader>df gf<leader>diff<cr>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>cl :noh<cr>
nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %

nmap <leader>wh VimwikiAll2HTML<cr>
inoremap jk <esc>

"For surround
"nmap s      <Nop>
"jnmap sw     viwS
"nmap sW     viWS
"nmap ss     visS
"nmap sp     vipS
"nmap s[     vi[S
"nmap s]     vi]S
"nmap s(     vi(S
"nmap s)     vi)S
"nmap s{     vi{S
"nmap s}     vi}S
"nmap s<     vi<S
"nmap s>     vi>S
"nmap st     vitS
"nmap s'     vi'S
"nmap s"     vi"S
"nmap s`     vi`S
"
"nmap S      <Nop>
"nmap Sw     vawS
"nmap SW     vaWS
"nmap Ss     vasS
"nmap Sp     vapS
"nmap S[     va[S
"nmap S]     va]S
"nmap S(     va(S
"nmap S)     va)S
"nmap S{     va{S
"nmap S}     va}S
"nmap S<     va<S
"nmap S>     va>S
"nmap St     vatS
"nmap S'     va'S
"nmap S"     va"S
"nmap S`     va`S

" Navigation
noremap j gj
noremap k gk

noremap gj j
noremap gk k

vmap gy "+y
map  gp "+p
map  gP "+P

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
Plugin 'dag/vim-fish'
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
 
set nocompatible
set ruler
set cursorline
 
execute pathogen#infect()
syntax on
filetype off
filetype plugin indent on
 
set encoding=utf-8 "UNICODE GLYPHS
set nobackup

nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>

nnoremap <leader>v <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>
 
"get rid of old habits~
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
 

noremap j gj
noremap k gk

noremap gj j
noremap gk k

noremap Y y$

set background=dark
let g:solarized_terutrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme gruvbox

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



set t_Co=256
set rnu
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
