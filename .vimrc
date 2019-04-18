set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'sickill/vim-monokai'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tell-k/vim-autoflake'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Konfekt/FastFold'
Plugin 'Scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_autoclose_preview_window_after_completion=1

let g:autoflake_remove_all_unused_imports=1
let g:autoflake_remove_unused_variables=1
let g:autoflake_disable_show_diff=1

let g:SimpylFold_fold_import=0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" nerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1

"colorscheme zenburn
syntax enable
colorscheme monokai

map <C-p> :w<CR>:!python3 %<CR>
map <C-P> :w<CR>:!python3 -u % \|tee out 2>&1 <CR>

set noswapfile
