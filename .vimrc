filetype off
call pathogen#infect()
filetype plugin indent on
set nocompatible
set modelines=0
set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
inoremap jj <ESC>
let mapleader=","
set encoding=utf-8
set spell spelllang=en_us
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
vnoremap . :norm.<CR>
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2
set undofile
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


execute pathogen#infect()

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif
