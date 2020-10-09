" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=/usr/local/opt/fzf
packadd! matchit

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'michalliu/jsruntime.vim'
Plugin 'michalliu/jsoncodecs.vim'
Plugin 'michalliu/sourcebeautify.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-vinegar'
Plugin 'junegunn/fzf.vim'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'niftylettuce/vim-jinja'
Plugin 'othree/xml.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

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

"Mouse support
:set mouse=a
colorscheme gruvbox
set background=dark
let g:Tex_CompileRule_pdf='xelatex --interaction=nonstopmode $*'
inoremap jj <Esc>
nnoremap zz <Esc>:w<Cr>
let g:user_emmet_leader_key='<C-Y>'

"let g:netrw_liststyle = 3 " netrw use tree view by default

" from http://stevelosh.com/blog/2010/09/coming-home-to-vim/#important-vimrc-lines
filetype plugin indent on
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
syntax on


set modelines=0
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile
let mapleader = ","

"Hybrid line numbers in command mode, absolute numbers in insert mode
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"fzf keybindings
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :call fzf#run({'source': 'fd --type file . ~', 'sink': 'e'})<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>h :History<CR>

nmap <Leader>ex :Explore<Cr>

"set wrap
"set textwidth=79
set formatoptions=qrn1
set colorcolumn=85


nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap ; :
"end of http://stevelosh.com/blog/2010/09/coming-home-to-vim/#important-vimrc-lines

"Quickly open .vimrc
:nnoremap <leader>ev :edit $MYVIMRC<cr> 
"Quickly source .vimrc 
:nnoremap <leader>sv :source $MYVIMRC<cr>

au BufNewFile,BufRead *.njk set ft=jinja

let g:vimwiki_list = [{'path': '~/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.vimwiki'}]

set dir=~
