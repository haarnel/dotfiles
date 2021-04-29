set encoding=utf-8
set fileencoding=utf-8
set number 
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
set t_Co=256
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set splitbelow
set splitright
set mouse=a
syntax on
filetype on
set noshowmode

call plug#begin('~/.config/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haishanh/night-owl.vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'psliwka/vim-smoothie'
Plug 'fisadev/vim-isort'
call plug#end()


if (has("termguicolors"))
 set termguicolors
endif

colorscheme nightfly
let g:lightline = { 'colorscheme': 'ayu_dark' }
let g:nightflyTransparent = 1
let g:nightflyItalics = 0
highlight Normal guibg=none
highlight NonText guibg=none

autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.py execute ':Isort'
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal tabstop=2 shiftwidth=2 soft
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2


inoremap jj <ESC>


nmap <C-_> <Plug>NERDCommenterToggle
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

"FZF
nnoremap <C-p> :<C-u>FZF<CR>


if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-v><Esc> <Esc>
endif

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
