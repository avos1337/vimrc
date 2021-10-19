" This is the good stuff vimrc that turns vim into a dank text editor/ide
" Feel free to steal and reuse
"
" The comments were time consuming btw
"

syntax on " Turns on syntax highlighting

" Set shell and encoding
set shell=/bin/bash
set encoding=utf-8
set fileencoding=utf-8

set nocompatible " Be iMproved

" General quality of life stuff
set confirm
set nu
set noerrorbells
set autoread
set exrc
set relativenumber
set clipboard+=unnamed
set mouse+=a
set nowrap
set ruler
set hidden
set scrolloff=16

" Search options
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set matchtime=10

" Better tabbing behaviour
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

set autoindent

" Better code structure
set signcolumn=yes
set colorcolumn=128
highlight ColorColumn ctermbg=grey guibg=lightgray


" Backup
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Completion
Plugin 'valloric/youcompleteme'

" Syntax highlights
Plugin 'sheerun/vim-polyglot'

" Syntax checks
Plugin 'scrooloose/syntastic'

" Snippets
Plugin 'honza/vim-snippets'

" Tree navigation
Plugin 'scrooloose/nerdtree'

" Git handling
Plugin 'tpope/vim-fugitive'

" Brackets
Plugin 'raimondi/delimitmate'

" Vim Airline taskbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline-fonts'

" Colorschemes
Plugin 'andreasvc/vim-256noir'
Plugin 'haystackandroid/carbonized'
Plugin 'romainl/Apprentice'
Plugin 'zacanger/angr.vim'
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'ajmwagar/vim-deus'
Plugin 'wadackel/vim-dogrun'
Plugin 'romainl/flattened'
Plugin 'chase/focuspoint-vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'yorickpeterse/happy_hacking.vim'
Plugin 'keith/parsec.vim'
Plugin 'cseelus/vim-colors-lucid'
Plugin 'mkarmona/materialbox'
Plugin 'christophermca/meta5'
Plugin 'fcpg/vim-orbital'
Plugin 'junegunn/seoul256.vim'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'jaredgorski/SpaceCamp'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

let mapleader = "`"

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_checkers = ['gcc', 'clang_check', 'clang_tidy']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Snippets settings
let g:UltiSnipsExpandTrigger="<leader><CR>"

" Tagbar settings
nmap <F8> :TagbarToggle<CR>

" NERD tree settings
nmap <F2> :NERDTreeToggle<CR>

" Tex behaviour
let g:tex_flavor = "latex"

" Syntastic checker settings
let g:syntastic_cppg_checkers=['gcc', 'clang_check', 'clang_tidy']

" Airline settings
" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'

" Theme
set background=dark
