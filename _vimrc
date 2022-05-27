"Vim-plug section
call plug#begin()

Plug 'ervandew/supertab'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'

call plug#end()

"Powerline section
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Numbering
set relativenumber
set number
syntax on

" cyrilic work section
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>


" Color settings
colorscheme gruvbox
set bg=dark
hi Normal guibg=NONE ctermbg=NONE
set laststatus=2

"Nuber interpretation
set nrformats=

" Jedi-vim settings
let g:jedi#auto_initialization = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"

