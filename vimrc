packadd! editexisting

execute pathogen#infect()

set background=dark
set tabstop=4 shiftwidth=4
set autoindent

syntax on

:nnoremap <F5> "=strftime('%H:%M %p')<CR>P
:inoremap <F5> <C-R>=strftime('%H:%M %p')<CR>
