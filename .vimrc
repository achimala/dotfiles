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
set tw=120

" Leader
nnoremap <Leader>ev :e $MYVIMRC<CR>
nnoremap <Leader>sv :so $MYVIMRC<CR>
nnoremap <Leader>ez :e ~/.zshrc<CR>
nnoremap <Leader>sz :!source ~/.zshrc<CR><CR>
nnoremap <Leader>/ :nohlsearch<CR>
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>] :tabnext<CR>
nnoremap <Leader>[ :tabprevious<CR>
nnoremap <Leader>c ^v$y
nnoremap <Leader>v :set paste<CR>:r !pbpaste<ESC>:set nopaste<CR>
nnoremap <Leader>; ^
nnoremap <Leader>' $

" Auto-insert matching tokens
inoremap {              {}<Left>
inoremap {<CR>          {<CR>}<Esc>O
inoremap {{             {
inoremap {}             {}
inoremap (              ()<Left>
inoremap (<CR>          (<CR>)<Esc>O
inoremap ((             (
inoremap ()             ()
inoremap [              []<Left>
inoremap [<CR>          [<CR>]<Esc>O
inoremap [[             [
inoremap []             []

" Syntax highlighting
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*
" Disable leading space highlighting for ChangeLogs
let g:changelog_spacing_errors=0

" Custom file formats
au BufNewFile,BufRead *.m,*.mm,*.h set filetype=objc

set autoindent
set cursorline

set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set smarttab

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
colorscheme twilight

hi CursorLine term=NONE cterm=NONE ctermbg=235
hi CursorLineNr ctermfg=white
hi LineNr ctermfg=238
