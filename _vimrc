"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

" VIM-PLUG INSTALL----------------------------------

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" PLUGIN SECTION BEGIN------------------------------
call plug#begin()
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
call plug#end()
" PLUGIN SECTION END--------------------------------

" GRUVBOX COLORSCHEME-------------------------------
colorscheme gruvbox
set bg=dark

" MACROS SECTION------------------------------------

" MAIN SETTINGS-------------------------------------

" custom commands
:command Ra !ranger
:command W w

" display all matches when tab complete
set wildmenu

" copy/paste between vim and other programs
set clipboard=unnamedplus

let mapleader = ' '

"quitting, saving, etc
map <leader>qq :q!<CR>
map <leader>qa :qa!<CR>
map <leader>ww :w!<CR>
map <leader>wa :wa<CR>

" shell call
map <leader>sh :sh<CR>

" terminal in new window
map <leader>tt :term<CR>

" terminal size
set termwinsize=12x0 

" tabs
map <leader>tn :tabnew<CR>
map <leader>tk :tabclose<CR>

" outwrite special
map <leader>ds /\.<CR>
map <leader>cs /\,<CR>
map <leader>n yy}p<C-a>zz
map <leader>sk /  x
map <leader>hat v3}dggP/Тема<CR><ESC>ggy}/Тема<CR>pkJgqap
map <leader>te dap/Выдержки<CR>P/---<CR>jjzz
map <leader>vi dap/Факты<CR>P/---<CR>jjzz
map <leader>fa dap/---<CR>P/---<CR>jjzz
map <leader>tag /Теги<CR>zzA 
map <leader>re /Резюме<CR>zzA 

" buffers
map <leader>bb :buffers<CR>
map <leader>bn :bn!<CR>
map <leader>bp :bp!<CR>
map <leader>bk :bd<CR> 
map <leader>bf :bf!<CR>
map <leader>bl :bl!<CR>

" file references
map <leader>goals :tabnew ~/goals.txt<CR>
map <leader>code :tabnew ~/code.py<CR>
map <leader>rc :tabnew ~/_vimrc<CR>
map <leader>brc :tabnew ~/.bashrc<CR>
map <leader>qrc :tabnew ~/.config/qtile/config.py<CR>


" Tab navigation by numbering
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" NERDTree bookmark shortcuts
map <leader>ou :OpenBookmark ou<CR>
map <leader>con :OpenBookmark con<CR>

"status line disabling
set noshowmode

"transperent background
map <leader>tr :hi Normal guibg=NONE ctermbg=NONE<CR>
hi Normal guibg=NONE ctermbg=NONE

" disable swapping
set noswapfile

" hightlighting (may cause a arrow-bug)
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" toggle hightlighting 
noremap <F8> :set hlsearch! hlsearch?<CR>

" each split window goes down
set splitbelow

set showtabline=2
set encoding=utf-8
set number relativenumber

" auto mkview + loadview (for folds)

augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

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

" AIRLINE SETTINGS----------------------------------
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

" NERDTREE SETTINGS---------------------------------
nnoremap <C-n> :NERDTree<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=28

" CYRILIC WORK SECTION------------------------------
 set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" other method
" Press Ctrl+^ for change the language
" set keymap=russian-jcukenwin
" set iminsert=0
" set imsearch=0
" highlight lCursor guifg=NONE guibg=Cyan

" CURSOR BLINKING FUNCTION--------------------------
nnoremap <silent>n n:call HLNext(0.4)<cr>
nnoremap <silent>N N:call HLNext(0.4)<cr>
function! HLNext (blinktime)
	set invcursorline
	redraw
	exec 'sleep ' . float2nr(a:blinktime * 200) . 'm'
	set invcursorline
	redraw
endfunction

" EXPERIMENTAL SECTION------------------------------
