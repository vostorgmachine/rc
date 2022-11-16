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

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap [. [...] <Esc>a
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
"
" quote-autocomplite
" let s:enabled = 1
" function! Quote_autocomplete()
"     if s:enabled
" 	inoremap ( ()<Esc>i
" 	inoremap { {}<Esc>i
" 	inoremap {<CR> {<CR>}<Esc>O
" 	inoremap [ []<Esc>i
" 	inoremap < <><Esc>i
" 	inoremap ' ''<Esc>i
" 	inoremap " ""<Esc>i
"     else
" 	inoremap ( (
" 	inoremap { {
" 	inoremap { {
" 	inoremap [ [
" 	inoremap < <
" 	inoremap ' '
" 	inoremap " "
" 	let s:enabled = 1
"     endif
" endfunction
" nnoremap <F11> :call Quote_autocomplete()<CR>
