"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   
" Some comments : 
"
" vim-table plugin uses his own shortcut <leader>tm. This enables plugin

" VIM-PLUG INSTALL----------------------------------

" VIM
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  
" NVIM
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" PLUGIN SECTION BEGIN------------------------------
 call plug#begin()
 Plug 'junegunn/fzf.vim'
 Plug 'jremmen/vim-ripgrep'
 Plug  'dhruvasagar/vim-table-mode'
 Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
 Plug 'vim-python/python-syntax'
 Plug 'tpope/vim-repeat'
 Plug 'tpope/vim-surround'
 Plug 'davidhalter/jedi'
 Plug 'ycm-core/YouCompleteMe'
 Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 Plug 'ThePrimeagen/harpoon'
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

" VIM-TABLE-MODE SETTINGS
let g:table_mode_corner_corner='+'

" ENABLING PYTHON HIGHTLIGHTING PLUG-IN
let g:python_highlight_space_error = 0
let g:python_highlight_string_templates = 0

let g:python_highlight_builtins = 1	
let g:python_highlight_builtin_objs= 1
let g:python_highlight_builtin_types= 1
let g:python_highlight_builtin_funcs= 1
let g:python_highlight_builtin_funcs_kwarg= 1
let g:python_highlight_exceptions= 1

let g:python_highlight_string_formatting= 1
let g:python_highlight_string_format = 1
let g:python_highlight_string_templates= 1

let g:python_highlight_indent_errors = 1
let g:python_highlight_space_errors = 0 
let g:python_highlight_doctests = 1
let g:python_highlight_func_calls = 1
let g:python_highlight_class_vars = 1
let g:python_highlight_operators = 1
let g:python_highlight_file_headers_as_comments  = 1

" MACROS SECTION------------------------------------

" MAIN SETTINGS-------------------------------------

" CUSTOM COMMANDS-----------------------------------
" :command Ra !ranger
:command W w
:command Bdall %bd|e#|bd#
:command Reloadconfig source ~/.config/nvim/init.vim
:command Qrc :tabnew ~/.config/qtile/config.py
:command Brc :tabnew ~/.bashrc
:command Line :50i=

" ab`s
ab итд И т.д
ab arw --->

" spec-characters
imap `e è
imap 'e é
imap `a à
imap `u ù
imap `i ì
imap `o ò

let mapleader = ' '

map <leader>tt :term<CR>

" work in Vim only :
" shell & terminal call
"
" map <leader>sh :sh<CR>    
" set termwinsize=12x0      

"this changes directory to the currently open file
map <leader>cdc :cd %:p:h<CR>
" this changes directory to the currently open file (but only for this file)
map <leader>cdl :lcd %:p:h<CR>

map <leader>cdh :cd ~/<CR>

"vim-surround
map <leader>s( ysiw(lxwhxbb 

" fzf-vim section
map <leader>ff :Files<cr>
map <leader>bb :Buffers<cr>

"quitting, saving, etc
map <leader>qq :q!<CR>
map <leader>qa :qa!<CR>
map <leader>ww :w!<CR>
map <leader>цц :w!<CR>
map <leader>wa :wa<CR>

" go to the file directory
map <leader>fd :e %:h<CR>

" tabs
map <leader>tn :tabnew<CR>
map <leader>tk :tabclose<CR>

" buffers
map <leader>bn :bn!<CR>
map <leader>bp :bp!<CR>
map <leader>bk :bd<CR> 
map <leader>bf :bf!<CR>
map <leader>bl :bl!<CR>

" file references
map <leader>go :tabnew ~/goals.txt<CR>
map <leader>co :tabnew ~/code.py<CR>
map <leader>rc :tabnew ~/.config/nvim/init.vim<CR>
map <leader>brc :tabnew ~/.bashrc<CR>
map <leader>qrc :tabnew ~/.config/qtile/config.py<CR>

"Split navigation
nnoremap <leader>hh <C-W><C-H>
nnoremap <leader>jj <C-W><C-J>
nnoremap <leader>kk <C-W><C-K>
nnoremap <leader>ll <C-W><C-L>

" outwrite special
" map <leader>ds /\.<CR> "Use ( and ) to find dot!
map <leader>cs /\,<CR>
map <leader>n yy}p<C-a>zz
map <leader>sk /  x
map <leader>hat v3}dggP/Тема<CR><ESC>ggy}/Тема<CR>pkJgqap
map <leader>fa dap/Выдержки\ :<CR>P/---<CR>jjzz
map <leader>te dap/Факты\ :<CR>P/---<CR>jjzz
map <leader>vi dap/---<CR>P/---<CR>jjzz
map <leader>tag /Теги\ :<CR>zzA 
" map <leader>re /Резюме\ :<CR>zzA 
map <leader>re /Резюме\ :<CR>o<ESC>o


"other stuff
map <leader>li o<ESC>49i=<ESC>I!<ESC>j<ESC>


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
" set scrolloff=25
set scrolloff=50
set showtabline=2
set encoding=utf-8
set number relativenumber
set nohls

" auto mkview + loadview (for folds)
"(may cause a problem with plugins on nvim)
"
" augroup remember_folds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent! loadview
" augroup END

" fast brackets
" inoremap (<CR>      (<CR>)<Esc>O
" inoremap (          ()<Left>
" inoremap ((         (
" inoremap ()         () 

" inoremap "<CR>      "<CR>"<Esc>O
" inoremap "          ""<Left>
" inoremap ""         "

" inoremap '<CR>      '<CR>'<Esc>O
" inoremap '          ''<Left>
" inoremap ''         '

" inoremap [<CR>      [<CR>]<Esc>O
" inoremap [          []<Left>
" inoremap [[         [
" inoremap []         [] 

" inoremap <<CR>      <<CR>><Esc>O
" inoremap <          <><Left>
" inoremap <<         <
" inoremap <>         <> 

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

"HARPOON SETTINGS-----------------------------------
 map <leader>hm :lua require("harpoon.mark").add_file()<cr>
 map <leader>hh :lua require("harpoon.ui").toggle_quick_menu()<cr>  

" TELESCOPE SETTINGS--------------------------------
" nnoremap <leader>ff :Telescope find_files hidden=true<cr>

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

" VIM-SURROUND SEETTINGS
silent! call repeat#set("\<Plug>surround.vim", v:count)

" EXPERIMENTAL SECTION------------------------------


" tag_base
map <leader>nm I$_name_<esc>jI<esc>
map <leader>gm I$_geo_<esc>jI<esc>
map <leader>na I$_nation_<esc>jI<esc>
map <leader>id I$_ideology_<esc>jI<esc>
map <leader>cor I$_corporation_<esc>jI<esc>
map <leader>ev I$_event_<esc>jI<esc>
map <leader>hi I$_history_<esc>jI<esc>
map <leader>it I$_item_<esc>jI<esc>
map <leader>ab I$_abbriveation_<esc>jI<esc>
map <leader>sp I$_sphere_<esc>jI<esc>
map <leader>st I$_structure_<esc>jI<esc>
map <leader>ph I$_phenomen_<esc>jI<esc>
map <leader>en I$_energy_<esc>jI<esc>
map <leader>pr I$_profession_<esc>jI<esc>
map <leader>po I$_politic_<esc>jI<esc>
map <leader>ec I$_economy_<esc>jI<esc>
map <leader>go I$_goverment_<esc>jI<esc>
map <leader>lo I$_location_<esc>jI<esc>
map <leader>me I$_med_<esc>jI<esc>
map <leader>so I$_social_<esc>jI<esc>
map <leader>in I$_it_<esc>jI<esc>
map <leader>wa I$_war_<esc>jI<esc>
map <leader>rn I$_religion_<esc>jI<esc>

" comment
map <leader>com o<esc>o#()<left>
