" vim settings, modified from:
" http://www.gjvc.com/software/etc/vim/dot-vimrc

" ---- options ---------------------------------------------------------

set nocompatible                    " vim defaults
set   autoindent                    " always set autoindenting on
set nobackup                        " do not keep backup files, it's 70's style cluttering
set   backspace=indent,eol,start    " make that backspace key work the way it should
set   copyindent                    " copy the previous indentation on autoindenting
set   encoding=utf-8                "
set   ignorecase                    " ignore case when searching
set   incsearch                     " incremental search
set   number                        " always show line numbers
set   pastetoggle=<F2>              " when in insert mode, press <F2> to go to paste mode, where you can paste mass data that won't be autoindented
set   showmatch                     " set show matching parenthesis
set   showtabline=2                 " show a tabbar on top, always
set   smartcase                     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set   termencoding=utf-8            "
set   wildignore=*.pyc,*.class,*.o  "
set   wildmenu                      " make tab completion for files/buffers act like bash
set   wildmode=list:full            " show a list when pressing tab and complete
set nowrap                          " don't wrap lines

set   tabstop=2                     " Make tabs as wide as two spaces
set   list                          " Show “invisible” characters
set   lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ 

" ---- terminal settings -----------------------------------------------

syntax      on

