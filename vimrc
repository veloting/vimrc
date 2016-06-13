set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" tool
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'vim-scripts/a.vim'

" colorscheme
Plugin 'sickill/vim-monokai'
Plugin 'notpratheek/vim-luna'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

" tagbar
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 25
map <F2> :Tagbar<CR>
map <C-x> :!ctags -R<CR>

" nerdtree
let NERDTreeWinPos = 'left'
let NERDTreeWinSize = 28
map <F3> :NERDTreeToggle<CR>

" neocomplcache
"let g:acp_enableAtStartup = 0
"let g:neocomplcache_min_keyword_length = 3
"let g:neocomplcache_min_syntax_length = 3

let g:neocomplcache_enable_at_startup = 1

"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" airline
let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
let g:airline#extensions#whitespace#enabled = 0

" cpp build
map <C-a> :call CppBuild()<CR>
function CppBuild()
    execute "!g++ % -Wall -std=c++11 -ggdb -gdwarf-2 -o %<"
endfunction

" basic
syntax on
syntax enable
set completeopt=longest,menu
set cscopequickfix=s-,c-,d-,i-,t-,e-
set number
set ruler
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ts=4
set expandtab
set cindent
set novisualbell
set laststatus=2
set cinoptions=g0
set hlsearch
set incsearch

" folding
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

" colorscheme
set t_Co=256
set background=dark
"colorscheme monokai
colorscheme luna-term

"let g:solarized_termcolors=256
"let g:solarized_visibility="high"
"colorscheme solarized
