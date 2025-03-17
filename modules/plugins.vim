"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

" --------------------------------------------------
call plug#begin()

Plug 'vim-test/vim-test'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'jpalardy/vim-slime'
Plug 'preservim/vimux'
Plug 'williamboman/mason.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'liuchengxu/vista.vim'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim' "this plug makes fine ranger closing
Plug 'nvim-lua/plenary.nvim'
" Plug 'ThePrimeagen/harpoon'
Plug 'tpope/vim-markdown'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf'
Plug 'vim-python/python-syntax'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" --------------------------------------------------

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

" RANGER

" disable ranger default shortfut(leader + f)
let g:ranger_map_keys = 0
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'


" easy-align binds
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" VISTA THINGS
 
" disable icons
let g:vista#renderer#enable_icon = 0
" let g:vista#renderer#icons = { "function": "",  "variable": "", }
"

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" IndentLIne
" disable by default
let g:indentLine_enabled = 0

" SLIME---------------------------------------------

" let g:slime_target = "tmux"
" let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}



" coc_snippets

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'



