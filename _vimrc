" Character code 
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,sjis
set fileformats=unix,dos,mac
set fenc=utf-8

set nobackup
set autoread
set hidden
set showcmd

" View
set number
set nowrap
set laststatus=2
set ruler
set scrolloff=5

set virtualedit=onemore
set showmatch
set tabstop=4
set autoindent

set list
set listchars=tab:^.
autocmd VimEnter,Colorscheme * highlight SpecialKey cterm=NONE ctermfg=darkgray ctermbg=NONE


set wildmode=list:longest

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

autocmd InsertLeave * set nopaste


" keymap
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
noremap! <C-?> <C-h>
nnoremap $ $<Right>

inoremap jj <Esc>
" inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o><TAB>
" inoremap ( ()
inoremap (<Enter> ()<Left><CR><ESC><S-o><TAB>
inoremap $ $<Right>
inoremap pfunc public<Space>function<Space>name()<Space>{}<Left><CR><ESC><S-o><TAB>

" set whichwrap=b,s,h,l,<,>,[,],~






" Vundle Setting
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=%USERPROFILE%/.vim/bundle/Vundle.vim/
call vundle#begin('%USERPROFILE%/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

Plugin 'https://github.com/scrooloose/nerdtree.git'



" Plugin key map
nnoremap <C-e> :NERDTreeToggle<CR>


