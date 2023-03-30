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
inoremap ( ()<Esc>i
inoremap (( (<Esc>a

inoremap { {}<Esc>i
inoremap {{ {<Esc>a
inoremap {<CR> {<CR>}<Esc>O

inoremap [ []<Esc>i
inoremap [[ [<Esc>a
inoremap [. [...] <Esc>a

inoremap < <><Esc>i
inoremap << <<Esc>a

inoremap ' ''<Esc>i
inoremap '' '<Esc>a

inoremap " ""<Esc>i
inoremap "" "<Esc>a

" outwrite special:
" mount str ---> float
function! Mountfloat()
	:%s/\ января\ 20/.01.20
	:%s/\ февраля\ 20/.02.20
	:%s/\ марта\ 20/.03.20
	:%s/\ апреля\ 20/.04.20
	:%s/\ мая\ 20/.05.20
	:%s/\ июня\ 20/.06.20
	:%s/\ июля\ 20/.07.20
	:%s/\ августа\ 20/.08.20
	:%s/\ сентября\ 20/.09.20
	:%s/\ октября\ 20/.10.20
	:%s/\ ноября\ 20/.11.20
	:%s/\ декабря\ 20/.12.20
endfunction

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
endfunction
