
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



"
" Plugins
"

set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimproc', { 'build': { 'mac': 'make -f make_mac.mak' } }
NeoBundleLazy 'marcus/rsense', { 'autoload': { 'filetype': 'ruby' } }
NeoBundleLazy 'Shougo/neocomplcache-rsense', { 'depends': ['Shougo/neocomplcache', 'marcus/rsense'], 'autoload': { 'filetype': 'ruby' } }
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'

call neobundle#end()

filetype indent on
filetype plugin indent on

" neocomplcache

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 2

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" rsense

let g:rsenseHome = '/usr/local/bin/rsense'
let g:rsenseUseOmniFunc = 1


