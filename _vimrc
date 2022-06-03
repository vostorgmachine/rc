"  _    __           __                                       _____      
" | |  / /___  _____/ /_____  _________ _   _________  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / ___/ __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /__/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \___/\____/_/ /_/_/ /_/\__, /  
"                               /____/                          /____/   

"Plugin section begin
call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'

call plug#end()
"Plugin section end

"String numbering
set number
set relativenumber


"Poweline section
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

"status line disabling
set noshowmode

"gruvbox colorscheme
colorscheme gruvbox
set bg=dark

"transperent background
hi Normal guibg=NONE ctermbg=NONE

"nerdtree shortcuts
nnoremap <C-n> :NERDTree<CR>

" cyrilic work section
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" fast brackets
 inoremap (<CR>      (<CR>)<Esc>O
 inoremap (          ()<Left>
 inoremap ((         (
 inoremap ()         () 
