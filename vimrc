set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Wonderful git plugin
Bundle 'tpope/vim-fugitive'
" Because sometimes I want to pretend I'm still using Sublime Text
Bundle 'scrooloose/nerdtree'
" Have a single instance of NERDTree on all tabs
Bundle 'jistr/vim-nerdtree-tabs'
" Excellent block/line commenting plugin
Bundle 'scrooloose/nerdcommenter'
" Show how many matches were found, and your progress through them
Bundle 'vim-scripts/IndexedSearch'
" Syntax highlighting for Ruby
Bundle 'vim-ruby/vim-ruby'
" Textmate style file finder
Bundle 'wincent/Command-T'
" Syntax highlighting for HAML
Bundle 'tpope/vim-haml'
" Great plugin for managing all those pesky buffers
Bundle 'corntrace/bufexplorer'
" Syntax highlighting for CoffeeScript
Bundle 'kchmck/vim-coffee-script'
" Simplifies moving around vim quickly
Bundle 'Lokaltog/vim-easymotion'
" Nifty autocomplete plugin
Bundle 'ervandew/supertab'
" Because life isn't worth living without Solarized
Bundle 'altercation/vim-colors-solarized'
" Fullscreen a single buffer
Bundle 'vim-scripts/ZoomWin'
" A terminal emulator in vim. Useful if you just want to stare at vim all day.
Bundle 'dhazel/conque-term'
" Searching for text within the project
Bundle 'rking/ag.vim'
" Syntax highlighting for Elixir
Bundle 'elixir-lang/vim-elixir'

" Save file with sudo permission
cmap w!! w !sudo tee % >/dev/null

" Clear search highlighting with ctrl+l
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
" Open a ZSH session in a vim window with \z
noremap <Leader>z :ConqueTerm /bin/zsh --login<CR>

" Use solarized dark
syntax enable
set background=dark
colorscheme solarized

" Make regexps behave like Perl, not Grep
set magic
" Highlight searches, search incrementally, and forgive casing errors in
" search.
set hlsearch incsearch ignorecase smartcase
" Make backspace behave normally
set backspace=indent,eol,start
" Show column/line number in status bar
set ruler
" Show line numbers
set number
set cursorline
" Show invisibles sensibly
set list
set listchars=tab:→⋅,trail:⋅,nbsp:⋅

" Treat _ as a word separater (useful for word related motions)
set iskeyword-=_

" Use Ruby-style indentation for all the things!
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set wildmenu
set wildmode=list:longest

" Highlight column 80 (warning), and everything after 120 (Danger, Will
" Robinson!)
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
