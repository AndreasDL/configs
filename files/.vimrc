set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'sickill/vim-monokai'
Plugin 'vim-scripts/indentpython.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"colorscheme zenburn
syntax enable
colorscheme monokai

map <C-p> :w<CR>:!python3 %<CR>
map <C-P> :w<CR>:!python3 -u % \|tee out 2>&1 <CR>
