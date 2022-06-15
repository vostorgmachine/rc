"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

"Plugin section begin
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
"Plugin section end

"String numbering
set number
set relativenumber

"status line disabling
 set noshowmode

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"gruvbox colorscheme
colorscheme gruvbox
set bg=dark

"transperent background
hi Normal guibg=NONE ctermbg=NONE

"nerdtree shortcuts
nnoremap <C-n> :NERDTree<CR>


" cyrilic work section v.2.0
" Press Ctrl+^ for change the language
" set keymap=russian-jcukenwin
" set iminsert=0
" set imsearch=0
" highlight lCursor guifg=NONE guibg=Cyan

" fast brackets
 inoremap (<CR>      (<CR>)<Esc>O
 inoremap (          ()<Left>
 inoremap ((         (
 inoremap ()         () 

" tabs settings
" set tabpagemax=20
set showtabline=2

set encoding=utf-8
  

" cyrilic work section
 set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
