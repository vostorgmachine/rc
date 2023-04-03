"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   
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

" CURSOR BLINKING FUNCTION--------------------------
au VimEnter * call ToggleHiddenAll()
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set laststatus=0
	set showtabline=0
        set noshowcmd
	normal :AirlineToggle
    else
        let s:hidden_all = 0
        set showmode
        set laststatus=2
	set showtabline=2
        set showcmd
    endif
endfunction
nnoremap <F10> :call ToggleHiddenAll()<CR>

" quotes autocomplete
" inoremap ( ()<Esc>i
" inoremap (( (<Esc>a

" inoremap { {}<Esc>i
" inoremap {{ {<Esc>a
" inoremap {<CR> {<CR>}<Esc>O

" inoremap [ []<Esc>i
" inoremap [[ [<Esc>a
" inoremap [. [...] <Esc>a

" inoremap < <><Esc>i
" inoremap << <<Esc>a

" inoremap ' ''<Esc>i
" inoremap '' '<Esc>a

" inoremap " ""<Esc>i
" inoremap "" "<Esc>a

" outwrite special:
 
" set specific outwrite marks like 'viderzhki', 'fakti', etc...
function! Set_outwrite_marks()
	/---
	:normal mm | gg_
endfunction

function! Outwrite_startup()
	normal 999@l
	call Mountfloat()
	call Docx_cleaner()
	normal gg_
	normal gqGgg
	exit
endfunction

function! Docx_cleaner()
	:%s/<</"/g
	:%s/>>/"/g
	:%s/--/-/g
endfunction

function! Blank_cleaner()
	normal gg_
	/Теги:
	normal 2dd
	/Серия: 
	normal 2dwjjdw...kkA,
	normal JJ
	/Автор(ы):
	normal 2ddjj6ddgg_
endfunction

function! Find_line()
	?---
	normal _
	echo ""
endfunction

" tmux tab renaming feature
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

function! Auto_folding()
	normal gg_
	/\,\ [0-9]*\.[0-9]*.[0-9]*
	normal gg_ | 45@f
endfunction

" function that allows to zoom current pane in vim (like in tmux)
function! ZoomWindow()
    if winheight(0) >= (&lines - 4) && winwidth(0) >= (&columns - 2)
        exec "resize " . g:lastwh " | vertical resize ". g:lastww
    else
        let g:lastwh = winheight(0)
        let g:lastww = winwidth(0)
        wincmd _
        wincmd |
    endif
endfun
nnoremap <silent> <leader>z  :call ZoomWindow()<cr>
nnoremap <silent> <leader>=  <C-w>=
