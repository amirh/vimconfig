set nocompatible

" Set map leader before everything else so it will take effect on any leader key
" maping.
let mapleader = ","

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
let g:ycm_dart_sdk_path="/Users/amirha/flutter//bin/cache/artifacts/engine/darwin-x64/dart-sdk"
Plug 'valloric/youcompleteme'
Plug 'dart-lang/dart-vim-plugin'
Plug '/Users/amirha/homebrew/opt/fzf'

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
