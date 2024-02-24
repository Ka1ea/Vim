set nocompatible " makes it vim instead of Vi

" version 2/23/24
" Linux ver
" Kalea Gin :)
" Dont forget to make the undodir in ~/.vim


" [zo] opens single fold
" [zc] closes single fold
" [zr] opens all folds
" [zm] close all folds


" PLUGINS ---------------------------------------------------------------- {{{

":PlugInstall"
" AFTER FIRST TIME DELETE THIS
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
call plug#end()

"let g:AutoPairsShortcutToggle =
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'


" }}}

" MAPPINGS --------------------------------------------------------------- {{{
" set mapleader
let mapleader=','

" use Ctrl + j/k to move lines up and down
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-k> :m '<-2<CR>gv=gv
vnoremap <C-j> :m '>+1<CR>gv=gv

" swap : and ;
nnoremap ; :
nnoremap : ;

" remove whitespace
nnoremap <leader>rw :%s/\s\+$//e<CR>

" first press of 0 makes it go to end of indentation then to end
nnoremap <expr> <silent> 0 col('.') == match(getline('.'),'\S')+1 ? '0' : '^'

" DEFINE GLOBAL MACROS HERE
" type ctrl - R [key] to restore macro
" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END


" }}}

" STATUS LINE ------------------------------------------------------------ {{{
let g:airline_powerline_fonts = 1        " "enable if has powerline :(
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"let g:airline#extensions#tabline#enabled = 1

let g:airline_left_sep = '' "»
let g:airline_left_sep = '' "▶
let g:airline_right_sep = '' "«
let g:airline_right_sep = '' "◀
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

  " }}}


colorscheme onedark                               " theme
let g:onedark_termcolors=256                      " enable 256 colors support
syntax on                                         " syntax highlighting
set number                                        " line numbering
set nowrap                                        " disables wraptext
set showcmd                                       " see commands being typed
set term=xterm-256color                           " terminal type
set showmatch                                     " show matching brackets
scriptencoding utf-8
set encoding=utf-8                                 " enable utf8 support

"preformance tuning (activate if slow connection)
set lazyredraw                                    " only redraw when necesary, not update all the time
"set nocursorline                                  " diable cursorline (remove other command if necessary)
set ttyfast                                       " enable fast terminal connection
"set list lcs=trail:·,tab:»·
set list listchars=tab:»·,trail:•,extends:#,nbsp:.
"set listchars=tab:▸\ ,trail:•,eol:→

set splitright                                    " split right and below when splitting" 
set splitbelow
set autoindent expandtab                          " audo indentation and spaces, not tabs
filetype indent plugin on                         " follow filetype specific indent rules
set shiftwidth=2 softtabstop=2 tabstop=2          " 1 tab = 2 spaces

set cc=80                                         " after 80 columns highlight, for coding style "
set cursorline                                    " highlight bar show cursor position
set scrolloff=3                                   " always have 5 lines below cursor
set sidescrolloff=5                               " number of columns to keep left and right of the curso

set hlsearch ignorecase incsearch smartcase       " search options
set wildmenu wildmode=longest:full,full           " wildmode settings

set noerrorbells                                  " disable the annoying bell sound
set visualbell                                    " flash instead of bell sound
set mouse=a                                       " enable mouse input
set ttymouse=sgr                                  " (wsl windows) allows clicking everywhere (not limited by 91 col)
set clipboard=unnamed,unnamedplus                 " enable clipboard

set undofile undodir=~/.vim/undo undolevels=9999 undoreload=100000
                                                  " saves undo in undodir, :earlier/later (5s, 5m, 5f (5 saves ago))
                                                  " https://dev.to/iggredible/learn-how-to-use-vim-undo-to-time-travel-3l73
set history=1000                                  " more undo history
"set nobackup noswapfile nowritebackup             " disable backup/swap files
set autoread                                      " reload external file changes
set backspace=indent,eol,start                    " backspace work as expected
set hidden                                        " hides buffers, doesn't close
"set formatoptions+=j                              " delete comment characters when joining lines.
"set confirm                                       " confirms if you want to close an unsaved file
