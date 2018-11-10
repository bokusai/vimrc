" Character Code
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,sjis
set fileformats=unix,dos,mac
set fenc=utf-8
scriptencoding utf-8

set nobackup
set autoread
set hidden
set showcmd

" Views
set number
set nowrap
set laststatus=2
set ruler
set scrolloff=5
set t_Co=256

set showmatch
set tabstop=4
set smartindent
set noautoindent

" Invisible Character Visible
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

" auto comment out denable
autocmd Filetype * set formatoptions-=r
autocmd Filetype * set formatoptions-=o

" keymap
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
noremap! <C-?> <C-h>
nnoremap $ $<Right>

inoremap jj <Esc>
" inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
" inoremap ( ()
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap $ $<Right>
inoremap pfunc public<Space>function<Space>name()<Space>{}<Left><CR><ESC><S-o><TAB>


" Tab Control
nnoremap sl gt
nnoremap sh gT
nnoremap sn1 :tabn1<Enter>
nnoremap sn2 :tabn2<Enter>
nnoremap sn3 :tabn3<Enter>
nnoremap sn4 :tabn4<Enter>
nnoremap sn5 :tabn5<Enter>
nnoremap sn6 :tabn6<Enter>
nnoremap sn7 :tabn7<Enter>
nnoremap sn8 :tabn8<Enter>
nnoremap sn9 :tabn9<Enter>

" Vundle Basic Setting
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins URL
Plugin 'https://github.com/scrooloose/nerdtree.git'				" ディレクトリの階層構造
Plugin 'https://github.com/scrooloose/nerdcommenter'			" コメントアウトの簡易化
Plugin 'https://github.com/ctrlpvim/ctrlp.vim'					" ファイル検索
Plugin 'https://github.com/tpope/vim-surround'					" テキストオブジェクトの拡張
" langrige Plugins
Plugin 'https://github.com/mattn/emmet-vim'						" HTML CSS コーディング補助
Plugin 'https://github.com/pangloss/vim-javascript'				" JavaScript Syntax
Plugin 'https://github.com/StanAngeloff/php.vim'				" PHP Syntax
" Views Plugins
Plugin 'https://github.com/vim-airline/vim-airline'				" ステータスライン装飾
Plugin 'https://github.com/vim-airline/vim-airline-themes'		" airlineのテーマ
" ColorScheme Plugins
Plugin 'https://github.com/tomasr/molokai'						" molokai
Plugin 'https://github.com/ErichDonGubler/vim-sublime-monokai'	" sublimemonokai
Plugin 'https://github.com/jacoborus/tender.vim'				" tender
Plugin 'https://github.com/jdkanani/vim-material-theme'			" material-theme

call vundle#end()
filetype plugin indent on

" ------------------------------------------
" Plugins Setting
" ------------------------------------------
" NERDTree Setting
nnoremap <C-e> :NERDTreeToggle<CR>
" NERDCommenter Setting
filetype on
let g:NERDSpaceDelims=1
" CtrlP Setting
let g:ctrlp_match_window = 'max:30'
" vim-airline
let g:airline_theme = 'luna'
" ctrlP
set wildignore+=*/tmp/*,*/lib/*,*.so,*.swp,*.zip,*.jpg,*.png
" ColorScheme Setting
" syntax on
colorscheme tender

" MyCustom ColorScheme
" hi Comment ctermfg=blue
" set background=dark
hi LineNr ctermfg=darkgreen guifg=Grey guibg=Grey90

