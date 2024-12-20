#  _    __           __                                       _____
# | |  / /___  _____/ /_____  _________ _   _________  ____  / __(_)___ _
# | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / ___/ __ \/ __ \/ /_/ / __ `/
# | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /__/ /_/ / / / / __/ / /_/ /
# |___/\____/____/\__/\____/_/   \__, /   \___/\____/_/ /_/_/ /_/\__, /
#                               /____/                          /____/

# --------------------------------------------------------------------------------

# starship prompt enabling
eval "$(starship init bash)" 

# this command enables vim mode in bash
set -o vi

# zoxide integration
eval "$(zoxide init bash)"
# PATH adds-----------------------------------------------------------------------
export PATH="$HOME/.bin/:$PATH"

export PATH="/bin/vostorg-progs/:$PATH"
# path to my programs/scripts
export PATH="/repos/scripts/:$PATH"

# doom emacs
export PATH="/home/vostorg/.config/emacs/bin:$PATH"

# system etc.---------------------------------------------------------------------

alias k='pkill'
alias quit!="shutdown now"
alias l='exa -lah --color=auto'
alias rb='source ~/.bashrc'
alias rbash='source ~/.bashrc'

alias i='sudo pacman -S '
alias rmdb="sudo rm /var/lib/pacman/db.lck"
alias upd='sudo pacman -Suy --disable-download-timeout'

alias ..='cd ..'
alias 2..='cd ../..'
alias 3..='cd ../../..'
alias :q='exit'
alias q='exit'

# vim references------------------------------------------------------------------
alias pas='nvim ~/.passes'
alias tms='nvim ~/outwrite/materials/themes.md'
alias se='sudoedit'
alias v='nvim '
alias e='nvim '
alias v.='nvim .'

alias vls='nvim -c source ~/vim_session'
alias vmd='nvim *.md'
alias vpy='nvim *.py'
alias termrc='nvim /mnt/c/Users/vostorg/AppData/Roaming/Alacritty/alacritty.yml'
alias goals='nvim ~/Documents/vimwiki/goals.md'
alias tmuxrc='nvim ~/.tmux.conf'
alias i3rc='nvim ~/.config/i3/config'
alias brc='nvim ~/.bashrc'
alias bashrc='nvim ~/.bashrc'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias vw='nvim ~/Documents/vimwiki/index.md'

# program shortcuts---------------------------------------------------------------

alias qb='qbittorrent'
alias pgs='progress'
alias compdir='for i in *.MP4; do ffmpeg -i "$i" -vcodec libx265 -crf 28 "${i%.MP4}_compressed.MP4"; done'
alias compdir_webm='for i in *.webm; do ffmpeg -i "$i" -vcodec libvpx-vp9 -crf 28 -b:v 0 -acodec libopus -b:a 64k "${i%.webm}_compressed.webm"; done'
alias make_timelapse='bash /home/vostorg/Documents/gpt_prompt_responses/code/make_timelapse.sh'
alias compdir_pic='mogrify -resize 50% -quality 85% *.jpg'
alias weather='curl wttr.in/Belgrade'
alias tks='tmux kill-server'
alias vtop='vtop -t seti'
alias ka='killall '
alias tru='trans :ru '
alias tit='trans it:ru '
alias ten='trans :en '
alias tw='taskwarrior-tui'
alias ta='task add '
alias tl='task list '
# alias hc='python3 /home/vostorg/sandbox/python/header_changer/main.py'
# alias sit='python3 /home/vostorg/sandbox/python/gpt_separator/main.py'
# alias cmdz=' python3 ~/sandbox/python/kabanchik/feedparser/bak/main_bak5.py'
# alias kbn='python3 ~/sandbox/python/kabanchik/prototype/kaban_prototype.py'
# alias ws='python3 ~/sandbox/python/word_searcher/main.py'
alias sbl='~/sandbox/python/separate_by_lines/separate_by_lines.py'
alias opfit='python3 /home/vostorg/sandbox/python/opf_meta_parser/main.py '
alias mof='python3 $HOME/sandbox/python/kabanchik/make_ou_folder/make_ou_folder.py'
alias get_all='get_tmt && get_meduza && cd ~/outwrite/dump && get_tmt && get_meduza && cd -'
alias get_meduza='python3 /home/vostorg/sandbox/python/get_meduza/main.py'
alias get_tmt='python3 /home/vostorg/sandbox/python/get_tmt/main.py'
alias pf='clear && pfetch'
alias nf='clear && neofetch'
alias cpf='clear && pfetch'
alias pi='ping ya.ru -c 3'
alias sc='sc-im'
alias rhino='cd /mnt/c/Program\ Files/Rhino\ 6/System/ && ./Rhino.exe '
# alias man='tldr'
alias cce='calcurse'
alias scr='scrcpy --encoder OMX.Intel.hw_ve.h264 -m 800'
alias ok='okular'
alias ipy='ipython'
alias gp="git add . && git commit -m 'nothing special here' && git push"
alias fdl='sudo fdisk -l'
alias lo='libreoffice --nologo '
alias myip='ifconfig | rg wlp -A1'
alias docx='~/scripts/docx'
alias bgen='python ~/scripts/bgen'
alias rf='rm -rf '
alias b='bri'
alias tsf='telegram-send --file '
alias ts='telegram-send '
alias m='cmatrix -u9'
alias clock='tty-clock -cs'
alias tg='telegram-cli'
alias bp='bpython'
alias r='ranger'
alias cls='clear && figlet -f slant Vostorg machine | lolcat && date'
alias claer='clear'
alias c='clear'

# fzf hidden files searching enabling
export FZF_DEFAULT_COMMAND='find . \! \( -type d -path ./.git -prune \) \! -type d \! -name '\''*.tags'\'' -printf '\''%P\n'\'


# folder references---------------------------------------------------------------
alias ou='cd ~/outwrite'
alias mus='cd ~/Music'
alias sf='nvim $(fzf --preview="bat --color=always --style=numbers {}")'
alias fdh="cd ~ && cd \$(find * -type d | fzf)"
alias fd="cd \$(find * -type d | fzf)"
alias mg='cd ~/Documents/git_projects/'
alias nts='cd ~/Notes/'
alias pic='cd ~/Pictures/'
alias cfg='cd ~/.config/'
alias vid='cd ~/Videos/'
alias doc='cd ~/Documents/'
alias vwf='cd ~/Documents/vimwiki/'
alias zs='cd ~/Zotero/storage/'
alias mf='cd /run/media/vostorg/'
alias ita='cd ~/italian'
alias dw='cd ~/Downloads'
alias dwt='cd /mnt/c/Users/vostorg/Downloads/Telegram\ Desktop/'
alias win~='cd /mnt/c/Users/vostorg'
alias winc='cd /mnt/c/'
alias wind='cd /mnt/d/'
alias windw='cd /mnt/d/Downloads/'
 
# export--------------------------------------------------------------------------
export EDITOR='nvim'
export VISUAL='nvim'
export HISTCONTROL=ignoreboth:erasedups
export PAGER='most'

# youtube download----------------------------------------------------------------
alias dit="yt-dlp"
alias yt144="yt-dlp -f 'bestvideo[height<=144]+bestaudio/best[height<=144]'"
alias yt480="yt-dlp -f 'bestvideo[height<=480]+bestaudio/best[height<=480]'"
alias yt720="yt-dlp -f 'bestvideo[height<=720]+bestaudio/best[height<=480]'"
alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "

# --------------------------------------------------------------------------------
# # ex = EXtractor for all kinds of archives
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;

      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# --------------------------------------------------------------------------------
# PS1='[\u@\h \W]\$ '

PS1='\W > '

# --------------------------------------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases

[[ -f ~/.bashrc-personal ]] && . ~/.bashrc-personal

# neofetch
figlet -f slant Vostorg machine | lolcat && date

[ -f ~/.fzf.bash ] && source ~/.fzf.bash



# fzf shortcuts enabling
if command -v fzf-share >/dev/null; then
  source "$(fzf-share)/key-bindings.bash"
  source "$(fzf-share)/completion.bash"
fi

# take two 
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# source of the starship config
export STARSHIP_CONFIG=~/.config/starship/starship.toml

