"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

" --------------------------------------------------
 call plug#begin()
 Plug 'mhinz/vim-startify'
 Plug 'junegunn/vim-easy-align'
 Plug 'christoomey/vim-tmux-navigator'
 Plug 'liuchengxu/vista.vim'
 Plug 'mfussenegger/nvim-dap'
 Plug 'Yggdroot/indentLine'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'ryanoasis/vim-devicons'
 Plug 'nvim-treesitter/nvim-treesitter'
 Plug 'francoiscabrol/ranger.vim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
 Plug 'akinsho/toggleterm.nvim', {'tag' : 'v1.0.0'}
 Plug 'ThePrimeagen/harpoon'
 Plug 'tpope/vim-markdown'
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
 " Plug 'ervandew/supertab'
 call plug#end()

" --------------------------------------------------

" GRUVBOX COLORSCHEME-------------------------------
 colorscheme gruvbox
 set bg=dark

" VIM-TABLE-MODE SETTINGS---------------------------
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

" VIMWIKI SETTINGS----------------------------------

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

let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=28
let NERDTreeShowLineNumbers=2

" Highlight currently open buffer in NERDTree
autocmd BufRead * call SyncTree()

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

" set
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" disable ranger default shortfut(leader + f)
let g:ranger_map_keys = 0


" easy-align binds
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" startify settings
" let g:startify_custom_header = ["   Vostorg machine"]

let g:startify_custom_header = [
\ ' _    __           __                      __  ___           __    _          ',
\ '| |  / /___  _____/ /_____  _________ _   /  |/  /___ ______/ /_  (_)___  ___ ',
\ '| | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /|_/ / __ `/ ___/ __ \/ / __ \/ _ \',
\ '| |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /  / / /_/ / /__/ / / / / / / /  __/',
\ '|___/\____/____/\__/\____/_/   \__, /  /_/  /_/\__,_/\___/_/ /_/_/_/ /_/\___/ ',
\ '                              /____/                                          ',
\ ]

let g:startify_bookmarks = [ 
			\{ 'brc': '~/.bashrc'} ,
			\{ 'vrc': '~/.config/nvim/init.vim'} ,
			\{ 'mdl': '~/.config/nvim/modules'} ,
			\{ 'opf': '~/sandbox/python/opf_meta_parser/main.py'} ,
			\{ 'vwi': '~/Documents/vimwiki/index.md'} ,
			\]

 
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]
