" Make Vim more useful
set nocompatible
" Disable vim welcome message
set shortmess=I
" Set true terminal colors
set termguicolors
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow backspace in insert mode
set backspace=indent,eol,start
" Add the g flag to search/replace by default
set gdefault
" Change mapleader
let mapleader=","
" Enable relative line numbers
set relativenumber
set number
" Use spaces instead of tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Do not reset cursor to start of line when moving around
set nostartofline
" Show the (partial) command as it is being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" More natural splitting of windows and easier split navigation
set splitbelow
set splitright
" Soft wrapping of lines
set wrap linebreak
" Set spell check language to en_us
set spelllang=en_us

" Automatic commands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
  " Use tabs with width 8 for Go
  autocmd FileType go setlocal ts=8 sts=8 sw=8 noexpandtab
  " Use tabs for make files
  autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
  " Strip trailing whitespaces on save
  autocmd BufWritePre * %s/\s\+$//e
  " Unify indentation on save
  autocmd BufWritePre * retab
  " Enable spell checking for certain files
  autocmd BufRead,BufNewFile *.md,*.tex setlocal spell
endif

" Import plugin configuration
source ~/.plugins.vimrc
