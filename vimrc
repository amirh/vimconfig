set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'valloric/youcompleteme'

autocmd GuiEnter * colorscheme molokai

" Initialize plugin system
call plug#end()
