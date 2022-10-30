"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

" --------------------------------------------------
 call plug#begin()
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
 Plug 'ervandew/supertab'
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

" nerdtree bindings
map <leader>ob :OpenBookmark 
map <leader>nf :NERDTreeFind<CR>
map <leader>nn :NERDTree<CR>

let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=28
let NERDTreeShowLineNumbers=2

" Highlight currently open buffer in NERDTree
autocmd BufRead * call SyncTree()

" harpoon bindings
map <leader>ha :lua require("harpoon.mark").add_file()<CR>
map <leader>hh :lua require("harpoon.ui").toggle_quick_menu()<CR>
