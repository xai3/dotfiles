
syntax enable

colorscheme molokai

" Appearance

set number
set cursorline
set showmatch
set nowrap
set ruler


" Cursor

set whichwrap=h,l
set scrolloff=8
set sidescrolloff=16
set sidescroll=1


" Search

set incsearch
set hlsearch
set nowrapscan
set ignorecase
set smartcase


" Tab, Indent

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent


" File

set hidden
set nobackup
set noswapfile


" Command line

set history=10000


" Beep

set visualbell t_vb=
set noerrorbells


" Edit

set backspace=indent,eol,start



"
" Key bind
"


" Save, Quit

nnoremap <Space>w :<C-u>w<CR>
nnoremap <Space>q :<C-u>q<CR>
nnoremap <Space>Q :<C-u>q!<CR>


" Cursor

nnoremap <Space>h ^
nnoremap <Space>l $


" Tab

nnoremap <silent> tt :<C-u>tabe<CR>
nnoremap <C-p> gT
nnoremap <C-n> gt


" Search

nnoremap gs :<C-u>%s///g<Left><Left><Left>
vnoremap gs :s///g<Left><Left><Left>

