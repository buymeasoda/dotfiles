"
" Core
"

" Use Vim not Vi
set nocompatible
" Load filetype plugins and set indent
filetype plugin indent on
" Fast redraw for good connections
set ttyfast
" Default file encoding
set encoding=utf-8

"
" Colour
"

" Enable syntax highlighting
syntax on
" 256 colors in terminal
set t_Co=256
" Editor colour scheme
colorscheme smyck

"
" Editor
"

" Show filename in titlebar
set title
" Highlight current line
set cursorline
" Show line numbers
set number
" Wrap text lines
set wrap
" Column marker
if exists('+colorcolumn')
  highlight ColorColumn ctermbg=0
  execute "set colorcolumn=" . join(range(81,335), ',')
endif

"
" Status Bar
"

" Show editing mode in status
set showmode
" Show command status
set showcmd
" Show cursor position
set ruler
" Set command line status bar height
set cmdheight=1
" Always show status line
set laststatus=2
" Display autocomplete for ':' commands with <tab>
set wildmenu
" Use arrow keys, <tab> / <shift+tab> for wildmenu
set wildmode=list:longest,full

"
" Navigation
"

" Line spacing above/below cursor when scrolling
set scrolloff=3
" Number of lines to jump when scrolling
set scrolljump=1
" Minumum columns to scroll horizontally
set sidescroll=10
" Enable mouse support in console
set mouse=a

"
" Searching
"

" Incremental search
set incsearch
" Highlight when searching
set hlsearch
" Ignore case when searching
set ignorecase
" Searches with capitals become case sensitive
set smartcase
" Apply substitutions globally on lines
set gdefault
" Clear last search (\<space>)
nnoremap <leader><space> :noh<cr>

"
" Tabs and indenting
"

" Auto indent while editing
set autoindent
" Insert spaces not tabs
set expandtab
" Width of tab stop rendering as spaces
set tabstop=2
" Amount to indent with autoindent
set shiftwidth=2
" Set virtual tab stop
set softtabstop=2
" Hide tabs and EOL chars
set nolist

"
" Directories
"

" Centralise backups, swapfiles and undo history
set backupdir=~/.vim/backups/
set directory=~/.vim/swaps/
if exists("&undodir")
  set undodir=~/.vim/undo/
endif

"
" Remapping
"

" Switch to matching brace with <tab>
nnoremap <tab> %
vnoremap <tab> %

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Disable help menu (and remap to escape)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
