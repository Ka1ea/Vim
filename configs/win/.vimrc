set nocompatible " makes it vim instead of Vi"

" 02/23/2024
" Kalea Gin
" Vimrc windows :3
" 1.0 
" Installation steps (windows ed):
" 1) install vim, git
" 2) https://github.com/junegunn/vim-plu://github.com/junegunn/vim-plug 
" 3) PlugInstall
" 4) mkdir ~/vimfiles/undo

" MACROS
nnoremap ; :
nnoremap : ;
" use Ctrl + j/k to move lines up and down
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-k> :m '<-2<CR>gv=gv
vnoremap <C-j> :m '>+1<CR>gv=gv

" PLUGINS
call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
call plug#end()

let mapleader=','
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" VIM SETTINGS
" appearance
colorscheme onedark                               " theme
let g:onedark_termcolors=256                      " enable 256 colors support
syntax on                                         " syntax highlighting
set number                                        " line numbering
set nowrap                                        " disables wraptext
set showcmd                                       " see commands being typed
set showmatch                                     " show matching brackets
scriptencoding utf-8
set encoding=utf-8

" preformance
set ttyfast                                       " enable fast terminal connection"
set lazyredraw                                    " only redraw when necesary, not update all the time"

" behavior
set splitright                                    " split right and below when splitting" 
set splitbelow
set autoindent expandtab                          " audo indentation and spaces, not tabs
filetype indent plugin on                         " follow filetype specific indent rules
set shiftwidth=2 softtabstop=2 tabstop=2          " 1 tab = 2 spaces
set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

" code standard
set cc=80                                         " after 80 columns highlight, for coding style "
set cursorline                                    " highlight bar show cursor position
set scrolloff=3                                   " always have 5 lines below cursor
set sidescrolloff=5                               " number of columns to keep left and right of the cursor

" search 
set hlsearch ignorecase incsearch smartcase       " search options
set wildmenu wildmode=longest:full,full           " wildmode settings

" misc term
set noerrorbells                                  " disable the annoying bell sound
"set visualbell                                    " flash instead of bell sound
set mouse=a                                       " enable mouse input
set clipboard=unnamed,unnamedplus                 " enable clipboard
set autoread                                      " reload external file changes"
set hidden                                        " hides buffers, doesn't close"
set backspace=indent,eol,start                    " backspace work as expected"

" undo
set undofile undodir=~/vimfiles/undo undolevels=9999 undoreload=100000
set history=1000

