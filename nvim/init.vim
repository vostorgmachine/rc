"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

" MODULE LINKS--------------------------------------
source $HOME/.config/nvim/modules/leader_aliases.vim
source $HOME/.config/nvim/modules/special_functions.vim
source $HOME/.config/nvim/modules/plugins.vim
source $HOME/.config/nvim/modules/macros.vim
source $HOME/.config/nvim/modules/scripts.vim

" MAIN SETTINGS-------------------------------------
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

" TRANSPERENT BACKGROUND----------------------------
map <leader>tr :hi Normal guibg=NONE ctermbg=NONE<CR>
hi Normal guibg=NONE ctermbg=NONE

" CUSTOM COMMANDS-----------------------------------
:command W w
:command Bdall %bd|e#|bd#
:command Reloadconfig source ~/.config/nvim/init.vim
:command Qrc :tabnew ~/.config/qtile/config.py
:command Brc :tabnew ~/.bashrc
:command Home :cd ~/

" ABS---------------------------------------------
ab итд И т.д
ab arw --->
ab etc etc...
ab [. [...]

" SPEC-CHARACTERS---------------------------------
imap `e è
imap 'e é
imap `a à
imap `u ù
imap `i ì
imap `o ò

" ESC ALTERNATIVE---------------------------------
imap lkj <esc>
imap дло <esc>

" TOGGLE HIGHTLIGHTING----------------------------
noremap <F8> :set hlsearch! hlsearch?<CR>

" playing with neovide
if exists("g:neovide")
	let g:neovide_scale_factor = 0.5
	let g:neovide_transparency = 0.7
	let g:transparency = 0.8
	let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))
	let g:neovide_cursor_animation_length=0.00
	let s:guifontsize=7
	set guifont=Mononoki\ NF:h11
endif

