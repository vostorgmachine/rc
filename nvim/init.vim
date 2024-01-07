 " _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

" module links--------------------------------------
source $HOME/.config/nvim/modules/leader_aliases.vim
source $HOME/.config/nvim/modules/special_functions.vim
source $HOME/.config/nvim/modules/plugins.vim
source $HOME/.config/nvim/modules/macros.vim
source $HOME/.config/nvim/modules/scripts.vim
source $HOME/.config/nvim/modules/commands.vim
source $HOME/.config/nvim/modules/visual_settings.vim
" source $HOME/.config/nvim/nc.vim


" TRANSPERENT BACKGROUND----------------------------
hi Normal guibg=NONE ctermbg=NONE
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" main settings-------------------------------------
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
set lazyredraw

" custom commands-----------------------------------
:command W w

" abs---------------------------------------------
ab итд И т.д
ab arw --->
ab etc etc...
ab [. [...] 
ab cmt ```

" spec-characters---------------------------------
imap `e è
imap 'e é
imap `a à
imap `u ù
imap `i ì
imap `o ò

" esc alternative---------------------------------
imap lkj <esc>
imap дло <esc>

" toggle hightlighting----------------------------
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
end

" make .md/markdown recognisable for some functions
autocmd BufNewFile,BufRead *.md set filetype=markdown

" Автоматическое выравнивание сплитов
autocmd VimResized * wincmd =
