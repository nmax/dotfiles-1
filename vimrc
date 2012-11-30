" From:
" * http://mislav.uniqpath.com/2011/12/vim-revisited/

" TODO: F12-vim-mousetoggle does actually not work under Mac OS X.

" https://github.com/tpope/vim-pathogen
call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on     " load file type plugins + indentation
set encoding=utf-8
set nocompatible              " choose no compatibility with legacy vi
set showcmd                   " display incomplete commands
set ruler                     " show the cursor all the time
set number

" Whitespace
set nowrap                    " don't wrap lines
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab                 " use spaces, not tabs
set autoindent
set copyindent
set smarttab

" TODO: what does this mean?
set backspace=indent,eol,start  " backspace through everything in insert

" TODO: more discreet
set list listchars=tab:»·,trail:·,precedes:<,extends:>


" Searching
set showmatch
set hlsearch                  " highlight searches
set incsearch                 " incremental searching
set ignorecase                " searches are case insensitive ...
set smartcase                 " ... unless they contain at least on capital
                              " letter
nmap <silent> \ :nohlsearch<CR>     " stop highlighting


let mapleader = ","

set hidden                    " Buffers are hidden instead of closed

set colorcolumn=80
set title
set visualbell
set noerrorbells
set history=1000
set undolevels=1000
" set wildignore=*.swp
set mouse=a
set nobackup
set noswapfile

let NERDTreeShowHidden=1
map <Leader>n :NERDTreeToggle<CR>

autocmd FileType make set noexpandtab
autocmd BufRead,BufNewFile {Gemfile,Rakefile,config.ru,Guardfile} set ft=ruby

" http://vimcolorschemetest.googlecode.com/svn/html/index-html.html
set t_Co=256
colorscheme colorful256

set pastetoggle=<F2>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

cmap w!! w !sudo tee % >/dev/null

" Enable system clipboard
set clipboard=unnamed

