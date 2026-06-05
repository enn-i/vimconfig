call plug#begin()

Plug 'tpope/vim-surround'


Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'

Plug 'powerline/powerline-fonts'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'airblade/vim-gitgutter'


Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" search
set hlsearch
set ignorecase
set smartcase

" code completion
set completeopt=menuone,noinsert,noselect
set omnifunc=ale#completion#OmniFunc

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" ale config
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 100
let g:ale_completion_autoimport = 1

let g:ale_linters = {
\ 'c': ['clangd'],
\ }

let g:ale_c_clang_options = '-std=c11 -Wall -Wextra -Wpedantic -O0 -g'

nmap <silent> [e <Plug>(ale_previous_wrap)
nmap <silent> ]e <Plug>(ale_next_wrap)

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" fzf
nnoremap <C-n> :Files<CR>
nnoremap <C-f> :Rg<CR>

" window management
nnoremap <C-w>v :vsplit<CR>
nnoremap <C-w>t :vert term<CR>
nnoremap <C-w>s :split<CR>
nnoremap <C-w>c :close<CR>

nnoremap <C-a>h :tabprevious<CR>
nnoremap <C-a>l :tabnext<CR>
nnoremap <C-a>n :tabnew<CR>
nnoremap <C-a>x :x<CR>
nnoremap <C-a>x :x<CR>



nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <a-n> <C-w>l

tnoremap <expr> <C-h> &filetype == 'fzf' ? "\<C-h>" : "\<C-w>h"
tnoremap <expr> <C-j> &filetype == 'fzf' ? "\<C-j>" : "\<C-w>j"
tnoremap <expr> <C-k> &filetype == 'fzf' ? "\<C-k>" : "\<C-w>k"
tnoremap <expr> <C-l> &filetype == 'fzf' ? "\<C-l>" : "\<C-w>l"
tnoremap <expr> <Esc> &filetype == 'fzf' ? "\<Esc>" : "\<C-w>N"
tnoremap <C-w> <C-w>.

" Anti-Find perma highlight
nnoremap <CR> :noh<CR><CR>

" Visuals
let g:gitgutter_set_sign_backgrounds = 0
set background=dark
syntax on
set termguicolors
colorscheme CP
let g:airline#extensions#tabline#enabled = 1

" if powerline doesn't work
" let g:airline_powerline_fonts = 1

scriptencoding utf-8
set encoding=utf-8
setglobal fileencoding=utf-8

set fillchars=vert:\┃

" General
set nobackup
set noswapfile
set relativenumber
set autoindent
set smartindent
set shell=/bin/zsh

set updatetime=100
set tabstop=2

set shiftwidth=2
set breakindent
set formatoptions=l
set lbr

nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

"set cursorline
set cursorlineopt=number
set nu

cabbrev e Explore
cabbrev E Explore
cabbrev term vert term

