execute pathogen#infect()

set background=dark
set backspace=2
set nocompatible
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set autoindent

syntax on

:nnoremap <F5> "=strftime('%H:%M %p')<CR>P
:inoremap <F5> <C-R>=strftime('%H:%M %p')<CR>
