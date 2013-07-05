let mapleader=","

autocmd BufEnter * silent! lcd %:p:h

set t_Co=256
set nocompatible
set showcmd
set showmatch
set foldmethod=marker
set hidden
set wildignore=*.pyc,*.class
set title
set history=1000
set undolevels=1000
set nobackup

" Leader
nnoremap <silent> <Leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <Leader>sv :so $MYVIMRC<CR>
nnoremap <silent> <Leader>/ :nohlsearch<CR>
nnoremap <Leader>] :tabnext<CR>
nnoremap <Leader>[ :tabprevious<CR>

" Syntax highlighting
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

set autoindent
set cursorline

set smarttab
set shiftwidth=4
set softtabstop=4

set wildmenu
set wildmode=list:longest,full

set mouse=a
set backspace=2
set number
set ignorecase
set smartcase

inoremap jj <Esc>

set incsearch
set hlsearch

highlight MatchParen ctermbg=4

" Status line
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Swap ; and :
nnoremap ; :
nnoremap : ;

" Bells are annoying
set noerrorbells
set visualbell
set t_vb=

" Make cursor move correctly when wrapping
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

filetype plugin indent on
syntax on

set background=dark
let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
colorscheme twilight256

hi CursorLine term=bold cterm=bold ctermbg=234
hi CursorLineNr ctermfg=white
hi LineNr ctermfg=238
