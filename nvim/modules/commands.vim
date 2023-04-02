"  _    __           __                      ______            _____      
" | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
" | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
" | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
" |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
"                               /____/                           /____/   
"

command InsertBlank r ~/outwrite/materials/blank.txt

command SSession mksession! ~/vim_session | echo "Session are saved!"

command ZeroLoad source ~/vim_session | cd %:p:h | e ../00.txt | lo | normal gg_

command OFinder /\,\ [0-9]*\.[0-9]*.[0-9]*
