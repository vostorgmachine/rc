"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

let mapleader = ' '

" reload config
map <leader><CR> :source ~/.config/nvim/init.vim<CR>

"this changes directory to the currently open file
map <leader>cd :cd %:p:h<CR>

" this changes directory to the currently open file (but only for this file)
map <leader>cdl :lcd %:p:h<CR>

" go to home direcory
map <leader>cdh :cd ~/<CR>

"vim-surround
map <leader>s( ysiw(lxwhxbb 

" telescope
map <leader>ff <cmd>Telescope find_files<cr>
map <leader>fg <cmd>Telescope live_grep<cr>
map <leader>fb <cmd>Telescope buffers<cr>

" fzf-vim section
" map <leader>ff :Files<cr>
map <leader>bb :Buffers<cr>

" GFiles for fzf in git repo
map <leader>gf :GFiles<cr>

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

"Split navigation
nnoremap <leader>hh <C-W><C-H>
nnoremap <leader>jj <C-W><C-J>
nnoremap <leader>kk <C-W><C-K>
nnoremap <leader>ll <C-W><C-L>

" markdown things
map <leader>si {j<C-v>}kI  <ESC>r*<ESC>{j
map <leader>h1 I# <ESC> 
map <leader>h2 I## <ESC> 
map <leader>h3 I### <ESC> 
map <leader>h4 I#### <ESC> 

" outwrite special
map <leader>cs /\,<CR>
map <leader>n yy}p<C-a>zz
map <leader>sk /  x
map <leader>hat v3}dggP<ESC><C-v>}kI   <ESC>R##<ESC>
map <leader>fa dap/Выдержки:<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
map <leader>te dap/Факты:<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
map <leader>vi dap/---<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
map <leader>tag /Теги:<CR>zzA 
map <leader>ефп /Теги:<CR>zzA 
map <leader>th /Тема:<CR>zzA 
map <leader>ер /Тема:<CR>zzA 
map <leader>re /Резюме:<CR>o<ESC>o

" visual mode
vnoremap <leader>fa d/Выдержки:<CR>O<ESC>O<ESC>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
vnoremap <leader>te d/Факты:<CR>O<ESC>O<ESC>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
vnoremap <leader>vi d/---<CR>O<ESC>O<ESC>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz

" this allows to yank selected line(s) to he OS clipboard
vnoremap <leader>y "+y

" move selected line(s)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" vimwiki reference
nmap <leader>vw <Plug>VimwikiIndex

" nerdtree bindings
map <leader>ob :OpenBookmark 
map <leader>nf :NERDTreeFind<CR>
map <leader>nn :NERDTree<CR>

" harpoon bindings
map <leader>ha :lua require("harpoon.mark").add_file()<CR>
map <leader>hh :lua require("harpoon.ui").toggle_quick_menu()<CR>
map <leader>hm :Telescope harpoon marks<CR>
map <leader>hn :lua require("harpoon.ui").nav_next()<CR>
map <leader>hp :lua require("harpoon.ui").nav_prev()<CR>

" toggleterm
" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

map <leader>st :ToggleTermSendVisualSelection<CR>
