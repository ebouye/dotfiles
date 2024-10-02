vim9script

# === VIM SETTINGS ====================================
# skip defaults vim configuration
unlet! g:skip_defaults_vim
g:mapleader = ' '

syntax on
filetype plugin indent on

set nocompatible
set encoding=UTF-8

if $COLORTERM == 'truecolor'
  set termguicolors
endif

set hlsearch incsearch ignorecase smartcase
set ruler
set signcolumn=yes
set number relativenumber cursorline
set background=dark
set nospell spelllang=en,fr
set backspace=indent,eol,start
set fileformat=unix fileformat=unix
set wildmenu wildoptions=pum,fuzzy pumheight=20
set history=200
set mouse=a
set list listchars=eol:¬,tab:··,trail:~,extends:>,precedes:<,
set shiftwidth=2 tabstop=2 smartindent

nmap <Leader>fe :Ex<CR>
nmap <Esc><Esc> :nohlsearch<CR>
nmap <Leader>d :bdelete<CR>
nmap <Leader>T :botright terminal<CR>

autocmd InsertEnter * set cursorline!
autocmd InsertLeave * set cursorline


# Manage swap, backup, undo folders and files
&directory = $'{$MYVIMDIR}/.data/swap/'
&backupdir = $'{$MYVIMDIR}/.data/backup//'
&undodir = $'{$MYVIMDIR}/.data/undo//'
if !isdirectory(&undodir)   | call mkdir(&undodir, "p")   | endif
if !isdirectory(&backupdir) | call mkdir(&backupdir, "p") | endif
if !isdirectory(&directory) | call mkdir(&directory, "p") | endif

