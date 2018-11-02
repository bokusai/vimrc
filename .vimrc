" Character code 
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,sjis
set fileformats=unix,dos,mac
set fenc=utf-8
scriptencoding utf-8

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
set t_Co=256

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

" PHP Setting
"let g:php_baselib = 1
"let g:php_htmlInStrings = 1
"let g:php_noShortTags = 1
"let g:php_sql_query = 1

" keymap
nnoremap j gj
nnoremap k gk
vnoremap j gj
noremap k gk
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
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugin 'tpope/vim-fugitive'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required
filetype plugin indent on    " required

" Plugins URL
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/StanAngeloff/php.vim'

" Plugin colorscheme
Plugin 'https://github.com/tomasr/molokai'							" molokai
Plugin 'https://github.com/ErichDonGubler/vim-sublime-monokai'		" sublimemonokai


" Plugin key map
nnoremap <C-e> :NERDTreeToggle<CR>

" ColorScheme Setting
syntax on
colorscheme sublimemonokai

" MyCustom ColorScheme
hi Comment ctermfg=blue
