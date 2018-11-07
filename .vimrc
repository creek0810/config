" plug setting "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
filetype plugin indent on

" general setting "
syntax on
syntax enable
set backspace=2
set ai
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set wrap
set incsearch
augroup relative_number
    autocmd!
    autocmd InsertEnter * :set norelativenumber
    autocmd InsertLeave * :set relativenumber
augroup END

" change leader key
let mapleader = ";"

" disable arrow key
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" solarized setting "
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" airline setting "
let g:airline_theme='murmur'
let g:airline#extensions#tabline#enabled=1

" tmux setting
if exists('$TMUX')
    set term=screen-256color
endif   
map <Leader>vp :VimuxPromptCommand<CR>

" nerd tree setting
noremap <silent> <F5> : NERDTree<CR>
