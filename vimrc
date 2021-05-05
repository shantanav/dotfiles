syntax on

set nocompatible
set noerrorbells
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab 
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set laststatus=2

let skip_defaults_vim=1
set viminfo=""

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'treycucco/vim-monotonic'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'donRaphaco/neotex', { 'for': 'tex' }

call plug#end()


colorscheme monotonic
set background=dark
hi Normal ctermbg=none

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ }

nnoremap <SPACE> <Nop>
let mapleader = " " 

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

map <leader>m i<++><ESC>
map <leader><SPACE> /<++><CR>c4l
map <leader><BACKSPACE> ?<++><CR>c4l
map <leader><CR> /<++><CR>

autocmd StdinReadPre * let  s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

let g:neotex_enabled = 2

