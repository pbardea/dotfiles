" Plugins
call plug#begin('~/.vim/plugged')

" use :PlugInstall after reloading .vimrc to apply

Plug 'morhetz/gruvbox' " colorscheme
Plug '/usr/local/opt/fzf'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'jpalardy/vim-slime'
" language specific
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'irfansharif/vim-crlfmt', { 'do': ':GoUpdateBinaries' }

Plug 'OCamlPro/ocp-indent'
Plug 'ocaml/merlin'
Plug 'scrooloose/nerdcommenter'

Plug 'leafgarland/typescript-vim'

call plug#end()


" Basic editor preferences
set ignorecase	" ignore case when searching
set smartcase  	" when both ignorecase and smartcase are on,
               	" if the patter contains an upperase letter it is case insensitive, otherwise it is not
set ruler	" show position of cursor in bottom right corner
set number	" show line numbers
set rnu		" make the line numbers relative
set shellslash	" forward slash is used when expanding names
set nocompatible " TODO
set hidden	" opening a new file when the current buffer has unsaved changes causes files to be hidden instead of both closed
set history=1000
set guioptions-=T
set guioptions-=m
set title	" set shell title to file name
set scrolloff=3
set hlsearch	" highlight search
set incsearch	" search as you type
set noerrorbells
set wrap linebreak nolist

set expandtab 	"insert spaces when tab is pressed
set autoindent	" copy the indentation from previous line when starting a new one
set smartindent	" automatically indent sometimes
set smarttab	" tabs have different interpretations based on position of cursor
set backspace=indent,eol,start	" make backspace work with other editors
set t_Co=256 	" colours

" default tabbing
set tabstop=2		" how many columns are in a tabl
set softtabstop=2	" how many columns vim uses when you hit tab in insert mode
set shiftwidth=2	" how many columns to indent when using >>
set expandtab

autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType rb setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Lagging Caps->esc hack
:command -bang Q q<bang> 
:command -bang Wq wq<bang>
:command -bang WQ wq<bang>
:command -bang W w<bang>

" Example:
" nmap K G
" nnoremap G H
" nnoremap H J
" K gets mapped to H, but not J
" because nnoremap stops the chain

" save and run python script
nmap <leader>py :w<CR>:exe ":!python " . getreg("%") . "" <CR>
" save and run ruby script
nmap <leader>rb :w<CR>:exe ":!ruby " . getreg("%") . "" <CR>
" save and run swift script
nmap <leader>sw :w<CR>:exe ":!swift " . getreg("%") . "" <CR>
" clear highlighting
nnoremap <leader>cl :noh<cr>
" nerdtree
nnoremap <leader>nt :NERDTreeToggle<CR>

" Navigation by visual line
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" copy until end of line
noremap Y y$

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

" Comments
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


set expandtab
set textwidth=0
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start
set smarttab
filetype indent on
filetype on
filetype plugin on
