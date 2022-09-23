"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

" VIM-PLUG INSTALL----------------------------------
"
" VIM
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   
" NVIM
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" PLUGIN SECTION BEGIN------------------------------
call plug#begin()

" Plug 'davidhalter/jedi'
Plug 'ycm-core/YouCompleteMe'
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

" CUSTOM COMMANDS-----------------------------------
:command Ra !ranger
:command W w

let mapleader = ' '

" shell & terminal call
map <leader>sh :sh<CR>    
map <leader>tt :term<CR>  
set termwinsize=12x0      

"quitting, saving, etc
map <leader>qq :q!<CR>
map <leader>qa :qa!<CR>
map <leader>ww :w!<CR>
map <leader>wa :wa<CR>

" tabs
map <leader>tn :tabnew<CR>
map <leader>tk :tabclose<CR>

" buffers
map <leader>bb :buffers<CR>
map <leader>bn :bn!<CR>
map <leader>bp :bp!<CR>
map <leader>bk :bd<CR> 
map <leader>bf :bf!<CR>
map <leader>bl :bl!<CR>

" file references
map <leader>go :tabnew ~/goals.txt<CR>
map <leader>co :tabnew ~/code.py<CR>
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
" map <leader>ou :OpenBookmark ou<CR>
" map <leader>con :OpenBookmark con<CR>

"Split navigation
nnoremap <leader>hh <C-W><C-H>
nnoremap <leader>jj <C-W><C-J>
nnoremap <leader>kk <C-W><C-K>
nnoremap <leader>ll <C-W><C-L>

" outwrite special
map <leader>ds /\.<CR>
map <leader>cs /\,<CR>
map <leader>n yy}p<C-a>zz
map <leader>sk /  x
map <leader>hat v3}dggP/Тема<CR><ESC>ggy}/Тема<CR>pkJgqap
map <leader>fa dap/Выдержки\ :<CR>P/---<CR>jjzz
map <leader>te dap/Факты\ :<CR>P/---<CR>jjzz
map <leader>vi dap/---<CR>P/---<CR>jjzz
map <leader>tag /Теги\ :<CR>zzA 
map <leader>re /Резюме\ :<CR>zzA 

"transperent background
map <leader>tr :hi Normal guibg=NONE ctermbg=NONE<CR>
hi Normal guibg=NONE ctermbg=NONE

" toggle hightlighting 
noremap <F8> :set hlsearch! hlsearch?<CR>

set wildmenu     	    " display all matches when tab complete
set clipboard=unnamedplus   " copy/paste between vim and other programs
set noshowmode		    " status line disabling
set splitbelow		    " each split window goes down
set fillchars+=vert:\       " removes pipes | that act as seperators on splits
set textwidth=79
set formatoptions+=t
set noswapfile
set scrolloff=10
set showtabline=2
set encoding=utf-8
set number relativenumber

" auto mkview + loadview (for folds)
" augroup remember_folds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent! loadview
" augroup END

" fast brackets
inoremap (<CR>      (<CR>)<Esc>O
inoremap (          ()<Left>
inoremap ((         (
inoremap ()         () 

inoremap "<CR>      "<CR>"<Esc>O
inoremap "          ""<Left>
inoremap ""         "

inoremap '<CR>      '<CR>'<Esc>O
inoremap '          ''<Left>
inoremap ''         '

inoremap [<CR>      [<CR>]<Esc>O
inoremap [          []<Left>
inoremap [[         [
inoremap []         [] 

inoremap <<CR>      <<CR>><Esc>O
inoremap <          <><Left>
inoremap <<         <
inoremap <>         <> 

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
