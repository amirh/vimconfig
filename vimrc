set nocompatible

" Set map leader before everything else so it will take effect on any leader key
" maping.
let mapleader = ","

call plug#begin('~/.vim/plugged')

" Machine specific configuraiton (e.g path to dart sdk)
source ~/.vim/machine_config.vim

Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'valloric/youcompleteme'
Plug 'dart-lang/dart-vim-plugin'
Plug '/Users/amirha/homebrew/opt/fzf'
Plug 'jlanzarotta/bufexplorer'

autocmd GuiEnter * colorscheme molokai

" Initialize plugin system
call plug#end()

" Invoke fzf on double leader
nnoremap <leader><leader> :FZF<CR>

" Indentation rules
"
" (1s means to indent one shitwidth
" m1 means to line the closing parenthesis with the first character of the line
" with the matching openning parenthesis.
set cino=(1sm1
set expandtab
set shiftwidth=2
set softtabstop=2

autocmd FileType cpp nnoremap <buffer> <c-]> :YcmCompleter GoTo<CR>
autocmd FileType dart nnoremap <buffer> <c-]> :YcmCompleter GoToDefinition<CR>
