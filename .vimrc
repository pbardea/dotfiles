"Vundle stuff
" Of course
set nocompatible

" Required Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'


set ignorecase
set ruler
set smartcase
set number
set shellslash
set nocompatible
set hidden
set history=1000
set guioptions-=T
set guioptions-=m
set title
set scrolloff=3
set hlsearch
set incsearch
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp    
set noerrorbells
" set wrap linebreak nolist
" set columns=86


set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set backspace=indent,eol,start
set wildmenu
set t_Co=256

noremap j gj
noremap k gk

noremap gj j
noremap gk k

call pathogen#infect()
call pathogen#helptags()


"let mapleader = ","
nmap <leader>q :bd<cr>
nmap <leader>w <c-w><c-w>
nmap <silent> <leader>df gf<leader>diff<cr>
:command -bang Q q<bang>
:command -bang Wq wq<bang>
:command -bang WQ wq<bang>
:command -bang W w<bang>

" "set nobackup
" nmap <C-j> :bn<cr>
" "set noswapfile
" nmap <C-k> :bp<cr>

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


set csqf=s-,g-,d-,c-,t-,e-,f-,i-
cs add cscope.out

syntax on
filetype plugin indent on

set listchars=tab:>-,trail:·,eol:$
"nmap <silent> <leader>s :set nolist!<CR>
"
"

set background=dark
let g:solarized_terutrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
"colorscheme solarized

" colorscheme hybrid
" colorscheme molokai2
" colorscheme jellybeans
" colorscheme badwolf
colorscheme gruvbox
runtime macros/matchit.vim

:map <Leader>diff :VCSVimDiff<cr>

" Comments
" Perl, Python, Ruby, shell scripts
" autocmd BufNewFile,BufRead *.rb,*.py,*.pl,*.sh vmap u :-1/^#/s///<CR>
" autocmd BufNewFile,BufRead *.rb,*.py,*.pl,*.sh vmap c :-1/^/s//#/<CR>
" C, C++
" autocmd BufNewFile,BufRead *.h,*.c,*.cpp vmap u :-1/^\/\//s///<CR>
" autocmd BufNewFile,BufRead *.h,*.c,*.cpp vmap s :-1/^/s//\/\//<CR>
au FileType c,cpp,h setlocal comments-=:// comments+=f://

nmap <F3> :cp<enter>
nmap <F4> :cn<enter>
nmap <F5> :cfile build_log<cr>:copen<cr>/error<cr>
nmap <F6> :cp<enter>
nmap <F7> :cn<enter>
nmap <F8> :cfile build_log<cr>:copen<cr>/error<cr>
nmap <leader>l :view cscope.files<cr>/
vmap gy "+y
map  gp "+p
map  gP "+P

runtime macros/gdb_mappings.vim

" Fold at previous search pattern
" User zr to display more, zm to display less
nnoremap \z :setlocal foldexpr=(getline(v:lnum)=~@/)?0:(getline(v:lnum-1)=~@/)\\|\\|(getline(v:lnum+1)=~@/)?1:2 foldmethod=expr foldlevel=0 foldcolumn=2<CR>

"let vimclojure#NailgunClient = "/home/pbardea/bin/ng"
let clj_highlight_builtins = 1
let clj_highlight_contrib = 1
let clj_paren_rainbow = 1
let clj_want_gorilla = 1

let g:gccsenseUseOmniFunc = 1

function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)

let g:ackprg="ack-grep -H --nocolor --nogroup --column"
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>

imap <Leader>v  <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>
nmap <leader>todo :e ~/vimwiki/TODO.wiki<cr>
set clipboard=unnamed

nmap <leader>delnum :%s/\v^[0-9]+\s+//gc<cr>
nmap <leader>run :w<CR>:exe ":!python " . getreg("%") . "" <CR>
" nmap <C-i> :tabp<cr>
" nmap <C-o> :tabn<cr>
nmap :tb :tabe

nmap <leader>be :BufExplorer<cr>

" Show whitespace(/invisibles)
" set list listchars=tab:\ \ ,trail:·

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

set statusline=%f    " Path.
set statusline+=%m   " Modified flag.
set statusline+=%r   " Readonly flag.
set statusline+=%w   " Preview window flag.

set statusline+=\    " Space.

set statusline+=%#redbar#                " Highlight the following as a warning.
" set statusline+=%{SyntasticStatuslineFlag()} " Syntastic errors.
" set statusline+=%*                           " Reset highlighting.
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" 
" let g:syntastic_error_symbol = '✘'
" let g:syntastic_warning_symbol = "▲"
" augroup mySyntastic
"   au!
"   au FileType tex let b:syntastic_mode = "passive"
" augroup END

set statusline+=%=   " Right align.

" File format, encoding and type.  Ex: "(unix/utf-8/python)"
set statusline+=(
set statusline+=%{&ft}                        " Type (python).
set statusline+=)

" Line and column position and counts.
set statusline+=\ (L%l\/%L,\ C%03c)
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

set laststatus=2
nnoremap <leader>s :set spell!<Cr>
nnoremap <leader>f 1z=

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

"SNIPS
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" 
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
