set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" " For GitHub repos, you specify plugins using the
" " 'user/repository' format
Plugin 'gmarik/vundle'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimproc.vim'
Plugin 'neilagabriel/vim-geeknote'
Plugin 'chase/vim-ansible-yaml'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Shougo/unite.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/Gundo'

filetype plugin indent on

set nowrap

set tabstop=4
set shiftwidth=4
set expandtab

syntax on

" Autocompletion for closing html tags on typing </<SPACEBAR>
iabbrev </ </<C-X><C-O>

" Enable tag autocompletion for html files
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

map <C-e> :Geeknote<cr> 

let g:unite_source_history_yank_enable = 1
nnoremap <C-y> :Unite history/yank<CR>

nnoremap <C-b> :Unite -start-insert buffer<CR>
nnoremap <C-s> :Unite -start-insert file_rec<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-t> :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set hidden

syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized



