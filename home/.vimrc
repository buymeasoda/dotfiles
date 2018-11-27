" core
set nocompatible                        " vim, not vi
filetype plugin indent on           		" load filetype plugins and indent settings
set ttyfast                             " fase redraw for good connections

" colour
syntax on                               " enable syntax highlighting
set t_Co=256                            " 256 colors in terminal
colorscheme smyck                       " editor colour scheme

" general
set title                               " show the filename in the window titlebar     
set cursorline                          " highlight current line
set number                              " show/hide line numbers
set wrap                                " do not wrap text lines (wrap / nowrap)

" column marker
if exists('+colorcolumn')
	highlight ColorColumn ctermbg=0
	" highlight column background from marker
  execute "set colorcolumn=" . join(range(81,335), ',')
endif

" status bar
set showmode                            " show editing mode in status (-- INSERT --)
set showcmd                             " show command status
set ruler                               " show cursor position
set cmdheight=1                         " set command line status bar height
set laststatus=2                        " always show status line
set wildmenu                            " display autocomplete for ':' commands with <tab> 
set wildmode=list:longest,full          " use arrow keys, <tab> / <shift+tab> for wildmenu

" navigation
set scrolloff=3                         " lines spacing above/below cursor when scrolling
set scrolljump=1                        " number of lines to jump when running scrolling
set sidescroll=10                       " minumum columns to scroll horizontally

" mouse
set mouse=a                             " enable mouse support in console

" searching
set incsearch                           " incremental search
set hlsearch                            " highlight when searching
set ignorecase                          " ignore case when searching
set smartcase                           " searches with capitals become case sensitive
set gdefault                            " applies substitutions globally on lines
nnoremap <leader><space> :noh<cr>       " clear last search (\<space>)

" editing
set encoding=utf-8                      " default file encoding

" tabs and indenting
set autoindent                          " auto indent while editing
set expandtab                           " insert spaces not tabs
set tabstop=2                           " width of tab stop rendering as spaces
set shiftwidth=2                        " amount to indent with autoindent
set softtabstop=2                       " set virtual tab stop

" whitespace
set nolist                              " hide tabs and EOL chars (use 'set list' to show)

" centralise backups, swapfiles and undo history
set backupdir=~/.vim/backups/
set directory=~/.vim/swaps/
if exists("&undodir")
    set undodir=~/.vim/undo/
endif

" remapping
nnoremap <tab> %                        " switch to matching brace with <tab>
vnoremap <tab> %                        " switch to matching brace with <tab>

" remove training wheels (disable arrow keys)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" disable help menu (and remap to escape)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
