if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h10
    elseif has("gui_win32")
        set guifont=Consolas:h9
        set dir=d:/temp/vim/
    endif

    set columns=150
    set lines=40

    set background=dark
    colorscheme solarized
endif
