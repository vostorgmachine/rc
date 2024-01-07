"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

let mapleader = ' '

" reload config
map <leader><CR> :source ~/.config/nvim/init.vim<CR>

"remove current file
map <leader>rm :!rm %<CR> :bd <CR>

" open ranger client inside of current vim session
map <leader>rr :Ranger <CR> 

":IndentLIneToggle<CR>

"this changes directory to the currently open file
map <leader>cd :cd %:p:h <bar> pwd <CR>

" browse oldfiles
map <leader>bo :browse oldfiles<CR>

" this changes directory to the currently open file (but only for this file)
" map <leader>cdl :lcd %:p:h<CR>

map <leader>aa :args *<CR>

"vim-surround
map <leader>s( ysiw(lxwhxbb 

" telescope
map <leader>ff <cmd>Telescope find_files theme=dropdown<cr>
map <leader>fg <cmd>Telescope live_grep theme=dropdown<cr>
map <leader>fb <cmd>Telescope buffers theme=dropdown<cr>

" fzf-vim section
" map <leader>ff :Files<cr>
map <leader>bb :Buffers<cr>
map <leader>ии :Buffers<cr>

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
map <leader>tn :tabn<CR>
map <leader>tp :tabp<CR>

" buffers
map <leader>bn :bn!<CR>
map <leader>ит :bn!<CR>
map <leader>bp :bp!<CR>
map <leader>из :bp!<CR>
map <leader>bk :bd<CR> 
map <leader>bf :bf!<CR>
map <leader>bl :bl!<CR>

" " file references
" map <leader>go :tabnew ~/goals.md<CR>
" map <leader>co :tabnew ~/code.py<CR>
" map <leader>rc :tabnew ~/.config/nvim/init.vim<CR>
" map <leader>brc :tabnew ~/.bashrc<CR>

"Quick split + resize
" Also this is a example of 'gluing' two commands together using <bar>.
nnoremap <leader>ms :split <bar> res 10 <cr> `r <cr>
nnoremap <leader>ьы :split <bar> res 10 <cr>

" markdown things

map <leader>si {j<C-v>}kI  <ESC>r*<ESC>{jgqap{j
map <leader>h1 I# <ESC> 
map <leader>h2 I## <ESC> 
map <leader>h3 I### <ESC> 
map <leader>h4 I#### <ESC> 

map <leader>ыш {j<C-v>}kI  <ESC>r*<ESC>{jgqap{j
map <leader>р1 I# <ESC> 
map <leader>р2 I## <ESC> 
map <leader>р3 I### <ESC> 
map <leader>р4 I#### <ESC> 

vnoremap <leader>* di*<ESC>pa*<ESC>
vnoremap <leader>** di**<ESC>pa**<ESC>

" outwrite special

map <leader>cit :normal dap<ESC>2O```<ESC>o```<ESC>:normal kp<ESC>:normal }dd{2j<ESC>
map <leader>fl :call Find_line()<CR>
map <leader>ад :call Find_line()<CR>
map <leader>cs /\,<CR>
map <leader>сы /\,<CR>
" map <leader>n yy}p<C-a>zz
" map <leader>sk / x
" map <leader>hat v3}dggP<ESC><C-v>}kI   <ESC>R##<ESC>
" map <leader>fa dap/Выдержки:<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
" map <leader>te dap/Факты:<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
map <leader>vi dap/---<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
map <leader>tag /Теги:<CR>zzA 
map <leader>ефп /Теги:<CR>zzA 
" map <leader>th /Тема:<CR>zzA 
" map <leader>ер /Тема:<CR>zzA 

" send current buffer to 'calibration' folder 

" map <leader>ce :call Insert_last_space() <CR>:!mv % ../calibration/ <CR> :bd <CR> :bn <CR> 

" map <leader>су :!mv % calibration/ <CR> :bd <CR> :bn <CR> 

" this constructions allows to send abzac right to the resume section
" map <leader>sr dapmn?---<CR>kp{j<C-v>}kI  <ESC>r*<ESC>gqap`n
" map <leader>ык dapmn?---<CR>kp{j<C-v>}kI  <ESC>r*<ESC>gqap`n

map <leader>re /---<CR>kkA<CR><CR>
map <leader>bc :call Blank_cleaner()<CR>

" visual mode
vnoremap <leader>fa d/Выдержки:<CR>O<ESC>O<ESC>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
vnoremap <leader>te d/Факты:<CR>O<ESC>O<ESC>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
vnoremap <leader>vi d/---<CR>O<ESC>O<ESC>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
" vnoremap <leader>sr d?---<CR>k<CR>O<ESC>O<ESC>P{j<C-v>}kI  <ESC>r*<ESC>{jgqap{j2}j
" vnoremap <leader>sr dmn?---<CR>k<CR>O<ESC>O<ESC>P{j<C-v>}kI  <ESC>r*<ESC>{jgqap{j2}j`ngqap{jmn


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
map <leader>nn :NERDTreeToggle<CR>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nh :NERDTree ~/<CR>

" harpoon bindings
map <leader>ha :lua require("harpoon.mark").add_file()<CR>
map <leader>hh :lua require("harpoon.ui").toggle_quick_menu()<CR>
map <leader>hm :Telescope harpoon marks<CR>
map <leader>hn :lua require("harpoon.ui").nav_next()<CR>
map <leader>hp :lua require("harpoon.ui").nav_prev()<CR>

" mappings for coclist/coding things------------------------------

" Show all diagnostics.
nnoremap <silent><nowait><leader>di  :<C-u>CocList diagnostics<cr>
" Show commands.
nnoremap <silent><nowait><leader><space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait><leader><space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait><leader><space>s  :<C-u>CocList -I symbols<cr>

" vista---------------------------------------------
nnoremap <silent><nowait><leader>vv :Vista!!<CR>
nnoremap <silent><nowait><leader>vf :Vista finder<CR>

" sessions------------------------------------------
 
" Load session with F3
map <F6> :source ~/vim_session <cr>

" CocToggle 
map <F9> :CocToggle <CR>

" python experimental things
map <leader>sbp :normal obreakpoint(<CR>

" call vimux 
map <F5> :SlimeSend<CR>
