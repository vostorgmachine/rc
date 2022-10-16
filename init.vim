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
 Plug 'vimwiki/vimwiki'
 Plug 'LnL7/vim-nix'
 Plug 'junegunn/fzf.vim'
 Plug 'junegunn/vim-easy-align'
 Plug 'junegunn/fzf'
 Plug 'dhruvasagar/vim-table-mode'
 Plug 'vim-python/python-syntax'
 Plug 'tpope/vim-repeat'
 Plug 'nvim-lua/plenary.nvim'
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

"TRANSPERENT BACKGROUND
map <leader>tr :hi Normal guibg=NONE ctermbg=NONE<CR>
hi Normal guibg=NONE ctermbg=NONE


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

" MAIN SETTINGS-------------------------------------

" CUSTOM COMMANDS-----------------------------------
:command W w
:command Bdall %bd|e#|bd#
:command Reloadconfig source ~/.config/nvim/init.vim
:command Qrc :tabnew ~/.config/qtile/config.py
:command Brc :tabnew ~/.bashrc
:command Home :cd ~/

" ABS
ab итд И т.д
ab arw --->
ab etc etc...
ab рпс + разброс по странам
ab [. [...]

" SPEC-CHARACTERS
imap `e è
imap 'e é
imap `a à
imap `u ù
imap `i ì
imap `o ò

" ESC ALTERNATIVE
imap lkj <esc>
imap дло <esc>

" LEADER SECTION
let mapleader = ' '
map <leader>tt :term<CR>
"this changes directory to the currently open file
map <leader>cdc :cd %:p:h<CR>
" this changes directory to the currently open file (but only for this file)
map <leader>cdl :lcd %:p:h<CR>
map <leader>cdh :cd ~/<CR>

"vim-surround
map <leader>s( ysiw(lxwhxbb 

" fzf-vim section
" map <leader>ff :Files<cr>
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
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
map <leader>go :tabnew ~/goals.md<CR>
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
map <leader>cs /\,<CR>
map <leader>n yy}p<C-a>zz
map <leader>sk /  x
map <leader>hat v3}dggP<ESC><C-v>}kI   <ESC>R##<ESC>
map <leader>fa dap/Выдержки\ :<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
map <leader>te dap/Факты\ :<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
map <leader>vi dap/---<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
map <leader>tag /Теги\ :<CR>zzA 
map <leader>re /Резюме\ :<CR>o<ESC>o
map <leader>th /Тема\ :<CR>zzA

" VIMWIKI REFERENCE
nmap <leader>vw <Plug>VimwikiIndex

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
set scrolloff=25
set showtabline=2
set encoding=utf-8
set number relativenumber
set nohls

" VIMWIKI SETTINGS:
"
"set-up main folder & set-up default .md syntax (instead of vimwiki own) :
let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax':'markdown', 'ext': '.md'}]
" options for vimwiki
set nocompatible
filetype plugin on
syntax on


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

"this func allows to sync opened file with NERDTree
"" Check if NERDTree is open or active
function! IsNERDTreeOpen()
	  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
" Call NERDTreeFind iff NERDTree is active, current window contains a
" modifiable
" file, and we're not in vimdiff
function! SyncTree()
	if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
		NERDTreeFind
		wincmd p
	endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufRead * call SyncTree()
map <leader>sd :call SyncTree()<CR>

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
"
" tag_base 
map <leader>en  I$_энергетика_<esc>jI<esc>
map <leader>ey  I$_экономика_<esc>jI<esc>
map <leader>so  I$_общество_<esc>jI<esc>
map <leader>na  I$_нация_<esc>jI<esc>
map <leader>nm  I$_имя_<esc>jI<esc>
map <leader>wa  I$_война_<esc>jI<esc>
map <leader>id  I$_идеологии_<esc>jI<esc>
map <leader>ia  I$_анализ_империализма_<esc>jI<esc>
map <leader>gf  I$_борьба_держав_<esc>jI<esc>
map <leader>bt  I$_буржуазная_теория_<esc>jI<esc>
map <leader>ep  I$_европейский_процесс_<esc>jI<esc>
map <leader>in  I$_институты_<esc>jI<esc>
map <leader>wo  I$_мировые_организации_<esc>jI<esc>
map <leader>pe  I$_политическое_событие_<esc>jI<esc>
map <leader>wo  I$_рабочие_<esc>jI<esc>
map <leader>tec I$_технологии_<esc>jI<esc>
map <leader>tp  I$_торговые_союзы<esc>jI<esc>
map <leader>gr  I$_географические_регионы_<esc>jI<esc>
map <leader>cy  I$_страны_<esc>jI<esc>
map <leader>un  I$_unknown_<esc>jI<esc>

" tag scripts
function! Set_var_down()
	g/$_nam/m$
	normal o
endfunction

function! Remove_goyal_mark()
	%s/tags:"=//g
	%s/or//g
	%s/"/,/g
	normal wi
endfunction

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

