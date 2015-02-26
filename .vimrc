set nocompatible
let mapleader=","
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle plugin manager, this takes care of installing all later mentioned
" plugins

Plugin 'gmarik/vundle'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'neilagabriel/vim-geeknote'
Plugin 'chase/vim-ansible-yaml'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Shougo/unite.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/Gundo'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'Shougo/neomru.vim'
Plugin 'mtth/scratch.vim'

filetype plugin indent on

" Don't wrap lines
set nowrap

" Use four spaces instead of a tabstop
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set hlsearch

" Display relative line numbers for navigation
set relativenumber 
inoremap jj <ESC>

syntax on

" Easymotion mappings
map <Leader>d <Plug>(easymotion-lineforward)
map <Leader>s <Plug>(easymotion-j)
map <Leader>w <Plug>(easymotion-k)
map <Leader>a <Plug>(easymotion-linebackward)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" Autocompletion for closing html tags on typing </<SPACEBAR>
iabbrev </ </<C-X><C-O>

" Enable tag autocompletion for html files
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

map <C-e> :Geeknote<cr> 

let g:unite_source_history_yank_enable = 1
nnoremap <C-y> :Unite history/yank<CR>

nnoremap <C-b> :Unite -toggle -no-split -start-insert buffer<CR>
nnoremap <C-s> :UniteWithCurrentDir -toggle -no-split -start-insert file file_rec<CR>
nnoremap <C-f> :Unite -toggle -no-split -start-insert line<CR>

" Start with a NerdTree Tab open, of no file was specified at start, otherwise
" don't open nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-t> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Hide, don't close buffers
set hidden

syntax enable

" Use solarized light color scheme
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized



