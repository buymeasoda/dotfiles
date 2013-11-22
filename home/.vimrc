" colour
syntax on                               " enable syntax highlighting
set t_Co=256                            " 256 colors in terminal
colorscheme smyck                       " editor colour scheme

" solarized
" syntax enable
" let g:solarized_termtrans = 1
" set background=dark
" colorscheme solarized

" leader key
" let mapleader = ","                   " default leader key '\'

" configuration
set nocompatible                        " vim, not vi
set ttyfast                             " fase redraw for good connections

" general
set title                               " show the filename in the window titlebar     
set number                              " show/hide line numbers
set wrap                              " do not wrap text lines (wrap / nowrap)
set cursorline                          " highlight current line

" column marker
" set colorcolumn=80                    " show column marker
highlight ColorColumn ctermbg=233         " set colour of column marker
" highlight column background from marker
execute "set colorcolumn=" . join(range(81,335), ',')

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
set showmatch                           " flashes matching paren when one is typed
nnoremap <leader><space> :noh<cr>       " clear last search (\<space>)

" editing
set encoding=utf-8                      " default file encoding
set cpoptions+=$                        " show $ symbol at end of change text range

" tabs and indenting
set autoindent                          " auto indent while editing
set expandtab                           " insert spaces not tabs
set tabstop=4                           " width of tab stop rendering as spaces
set shiftwidth=4                        " amount to indent with autoindent
set softtabstop=4                       " set virtual tab stop
" set smartindent                 		" try to be smart about indenting (C-style)
" set shiftround                  		" always round indents to multiple of shiftwidth
" set copyindent                  		" use existing indents for new indents
" set preserveindent              		" save as much indent structure as possible
" filetype plugin indent on       		" load filetype plugins and indent settings

" whitespace
set nolist                              " hide tabs and EOL chars (use 'set list' to show)
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_  " whitespace character settings

" other (?)
" set relativenumber                    " show relative line numbers
" set clipboard=unnamedplus
" set clipboard=unnamed                 " use OS clipboard by default
" set hidden
" set visualbell
" set backspace=indent,eol,start
" set undofile

" formatting
" t - autowrap to textwidth
" c - autowrap comments to textwidth
" r - autoinsert comment leader with <Enter>
" q - allow formatting of comments with :gq
" l - don't format already long lines
" set formatoptions=tcrql

" remapping
nnoremap <tab> %                        " switch to matching brace with <tab>
vnoremap <tab> %                        " switch to matching brace with <tab>
" nnoremap j gj                         " move down by screen line not file line
" nnoremap k gk                         " move up by screen line not file line
" nore ; :                              " map ; to : (save using <shift> + : for cmd
" nore , ;                              " map , to ; (make ; available due to above)

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

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
" nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
" nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" make split windows easier to navigate
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-h> <C-w>h
" map <C-l> <C-w>l
" map <C-m> <C-w>_
