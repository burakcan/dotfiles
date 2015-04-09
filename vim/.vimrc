set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'sickill/vim-monokai'
Plugin 'othree/html5.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'gregsexton/MatchTag'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'marijnh/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Bling/vim-airline'
Plugin 'bling/vim-bufferline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" SETTINGS

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" JSX in js files
let g:jsx_ext_required = 0

" Timeoutlen
set timeoutlen=50

" enable syntax highlighting
syntax on

" set backspace to work like most apps
set backspace=2

" Line coloring
set cursorline

" enhance cli completion
set wildmenu

" turn on ruler
set ruler
set colorcolumn=81,121
highlight ColorColumn ctermbg=DarkGray

" turn on auto indentation
set autoindent

" allow use of mouse
set mouse=a

" disable backups
set nobackup

" add line numbers
set number

" always display status (useful for vim-airline)
set laststatus=2

" hide abandoned buffers
set hid

" show matching brackets
set showmatch
set mat=2

" highlight search results
set hlsearch

" trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

""
" INDENTATION
""
" use spaces, indent two (not four)
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab
set smartindent
set autoindent

" fold by indentation
set foldmethod=indent

" set deepest fold to 10 levels
set foldnestmax=10

" don't fold code by default
set nofoldenable

" set fold level to 1
set foldlevel=1

" Colors
set background=dark
colorscheme monokai

" Airline
:let g:airline_theme='tomorrow'

" Bufferline

:let g:bufferline_echo=0
:let g:bufferline_modified='*'
autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
      \ .bufferline#get_status_string()

