"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   

let mapleader = ' '

" reload config
map <leader><CR> :source ~/.config/nvim/init.vim<CR>

" jump to next/prev func

map <silent><nowait><leader>] :normal ]m<CR>
map <silent><nowait><leader>[ :normal [m<CR>


"remove current file
map <leader>rm : silent !rm %<CR> :bd <CR>
map <leader>кь : silent !rm %<CR> :bd <CR>

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
" map <leader>fb <cmd>Telescope buffers " theme=dropdown<cr>

" fzf-vim section
" map <leader>ff :Files<cr>
map <leader>bb :Buffers<cr>
" map <leader>ии :Buffers<cr>

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
 map <leader>rc :tabnew ~/.config/nvim/init.vim<CR>

"Quick split + resize
" Also this is a example of 'gluing' two commands together using <bar>.
nnoremap <leader>ms :split <bar> res 10 <cr> `r <cr>
nnoremap <leader>ьы :split <bar> res 10 <cr>

" markdown things

map <leader>si {j<C-v>}kI  <ESC>r*<ESC>{jgqap{j
map <leader>ыш {j<C-v>}kI  <ESC>r*<ESC>{jgqap{j

vnoremap <leader>* di*<ESC>pa*<ESC>
vnoremap <leader>** di**<ESC>pa**<ESC>

" outwrite special

" Map <leader>b to surround selected text with ** for bold formatting
function! SurroundWithBold()
    let l:old_pos = getpos(".")
    '<,'>s/\%V.*\%V/\=repeat('*', 2) . submatch(0) . repeat('*', 2)/g
    call setpos('.', l:old_pos)
endfunction

vnoremap <leader>b :<C-u>call SurroundWithBold()<CR>

" Найти кириллицу в тексте
map <leader>fc /[\u0400-\u04FF]<CR>

map <leader>cs /\,<CR>
map <leader>сы /\,<CR>
map <leader>vi dap/---<CR>P<C-v>}kI  <ESC>R*<ESC>gqap/---<CR>jjzz
map <leader>tag /Теги:<CR>zzA 
map <leader>ефп /Теги:<CR>zzA 

map <leader>re /---<CR>kkA<CR><CR>
map <leader>bc :call Blank_cleaner()<CR>

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
" nnoremap <silent><nowait><leader><space>c  :<C-u>CocList commands<cr>
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
map <silent><F5> :w<CR>:execute "SlimeSend1 run " . shellescape(expand("%"))<CR>

" fun with vim-test

nmap <silent> <leader>t :TestNearest -strategy=vimux<CR>
nmap <silent> <leader>T :TestFile -strategy=vimux<CR>
nmap <silent> <leader>a :TestSuite -strategy=vimux<CR>
nmap <silent> <leader>l :TestLast -strategy=vimux<CR>
nmap <silent> <leader>g :TestVisit -strategy=vimux<CR>
