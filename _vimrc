"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

" vim-plug install----------------------------------

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" plugin section begin------------------------------
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
" plugin section end--------------------------------
"
" gruvbox colorscheme-------------------------------
colorscheme gruvbox
set bg=dark

" macros section------------------------------------

"dot search
let @d = '/\.'

" main settings-------------------------------------

let mapleader = ' '
" tabs
map <leader>tn :tabnew<CR>
map <leader>tk :tabclose<CR>

" outwrite special
map <leader>ds /\.<CR>
map <leader>cs /\,<CR>
map <leader>n yy}p<C-a>zz
map <leader>sk /  x
map <leader>hat v/2022<CR>$dggP/Тема<CR>O<ESC>ggy}/Тема<CR>pkJgqap
map <leader>te dap/Выдержки<CR>P/---<CR>jjzz
map <leader>re dap/Тезисы<CR>P/---<CR>jjzz
map <leader>vi dap/Факты<CR>P/---<CR>jjzz
map <leader>fa dap/---<CR>P/---<CR>jjzz
map <leader>tag /Теги<CR>zzA 

" buffers
map <leader>bb :buffers<CR>
map <leader>bn :bn<CR>
map <leader>bp :bp<CR>
map <leader>bk :bd<CR> 

" file references
map <leader>rc :tabnew ~/_vimrc<CR>

"String numbering
set number relativenumber

"status line disabling
 set noshowmode

"transperent background
hi Normal guibg=NONE ctermbg=NONE

set noswapfile
" press F8 to turn the search results highlight off
noremap <F8> :nohl<CR>
inoremap <F8> <Esc>:nohl<CR>a

" set hlsearch		
set showtabline=2
set encoding=utf-8

" fast brackets
" inoremap (<CR>      (<CR>)<Esc>O
" inoremap (          ()<Left>
" inoremap ((         (
" inoremap ()         () 

" inoremap "<CR>      "<CR>"<Esc>O
" inoremap "          ""<Left>
" inoremap ""         "

" inoremap [<CR>      [<CR>]<Esc>O
" inoremap [          []<Left>
" inoremap [[         [
" inoremap []         [] 

" inoremap <<CR>      <<CR>><Esc>O
" inoremap <          <><Left>
" inoremap <<         <
" inoremap <>         <> 


" Removes pipes | that act as seperators on splits
set fillchars+=vert:\   

" airline settings----------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" nerdtree settings---------------------------------
nnoremap <C-n> :NERDTree<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=28

" cyrilic work section------------------------------
 set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" other method
" Press Ctrl+^ for change the language
" set keymap=russian-jcukenwin
" set iminsert=0
" set imsearch=0
" highlight lCursor guifg=NONE guibg=Cyan

" experimental section------------------------------
