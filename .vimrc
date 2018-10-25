set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set fenc=utf-8
set nobackup
set autoread
set hidden
set showcmd

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


" キーマップ
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












