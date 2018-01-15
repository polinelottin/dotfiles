" gnome sounds off
set vb

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
syntax on " Enable syntax highlight

set number

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent

set laststatus=2
" toggle invisible characters
set invlist
set list
set listchars=tab:¦\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

" mandatory defaults
set nocompatible
filetype off
call plug#begin('~/.config/nvim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'jonatasbaldin/vim-tips'
Plug 'airblade/vim-gitgutter'

call plug#end()

syntax on
filetype plugin indent on

" Choose the colorscheme
set background=dark
colorscheme gruvbox
let g:solarized_termcolors=256

" Open Nerd Tree
map <C-n> :NERDTreeToggle<CR>
nmap <leader>n :NERDTreeFind<CR>
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__']

" Vim Airline

" let g:airline_powerline_fonts=1
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled=0
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20

" Vim Tips
autocmd VimEnter * call Tip()

" dont use arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"" really, just dont
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>


nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
