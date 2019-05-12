" plug setting "
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Valloric/YouCompleteMe'
Plug 'tell-k/vim-autopep8'
Plug 'kien/ctrlp.vim'

call plug#end()            

" general setting "
set nocompatible
syntax enable
set ai
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set wrap
set incsearch
set clipboard=unnamed
set encoding=utf-8
augroup relative_number
    autocmd!
    autocmd InsertEnter * :set norelativenumber
    autocmd InsertLeave * :set relativenumber
augroup END

" change leader key
let mapleader = ";"

" disable arrow key
" nnoremap <Up> <Nop>
" nnoremap <Down> <Nop>
" nnoremap <Left> <Nop>
" nnoremap <Right> <Nop>
" inoremap <Up> <Nop>
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>


" solarized setting "
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" airline setting "
let g:airline_theme='murmur'
let g:airline#extensions#tabline#enabled=1
" need install font "
"let g:airline_powerline_fonts=1

" tmux setting
if exists('$TMUX')
    set term=screen-256color
endif   
map <Leader>vp :VimuxPromptCommand<CR>

" nerd tree setting
noremap <silent> <F5> : NERDTree<CR>


" YouCompleteMe config "
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0

" define enter"
inoremap <expr> <CR> pumvisible() ? '<C-y>' : '<CR>'
" define up and down "
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'

" nerd tree config "
" ctrl-h = pre buffer, ctrl-l = next buffer "
nmap<expr> <C-w><C-h> LeaveNERDTree() ? ':bprev<CR>' : '' 
nmap<expr> <C-w><C-l> LeaveNERDTree() ? ':bnext<CR>' : ''

function! LeaveNERDTree()
    if winnr() == g:NERDTree.GetWinNum()
        return 0
    else 
        return 1
    endif
endfunction

" fix i(inside) and a(a)
onoremap a :<c-u>call <SID>NextTextObject('a')<cr>
xnoremap a :<c-u>call <SID>NextTextObject('a')<cr>
onoremap i :<c-u>call <SID>NextTextObject('i')<cr>
xnoremap i :<c-u>call <SID>NextTextObject('i')<cr>
function! s:NextTextObject(motion)
  echo
  let c = nr2char(getchar())
  exe "normal! f".c."v".a:motion.c
endfunction

