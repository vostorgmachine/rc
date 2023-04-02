#  _    __           __                                       _____
# | |  / /___  _____/ /_____  _________ _   _________  ____  / __(_)___ _
# | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / ___/ __ \/ __ \/ /_/ / __ `/
# | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /__/ /_/ / / / / __/ / /_/ /
# |___/\____/____/\__/\____/_/   \__, /   \___/\____/_/ /_/_/ /_/\__, /
#                               /____/                          /____/
# --------------------------------------------------------------------------------

# starship prompt enabling
# eval "$(starship init bash)" - # need to be repaired. ( make user ---> log in ---> install yay)

# this command enables vim mode in bash
set -o vi

# zoxide integration
eval "$(zoxide init bash)"
# PATH adds-----------------------------------------------------------------------
export PATH="$HOME/.bin/:$PATH"
export PATH="/bin/vostorg-progs/:$PATH"

# outwrite special----------------------------------------------------------------
date_folder=`pwd | grep -Eo '[+-]?[0-9]+([.][0-9]+)?+([.][0-9]+)'`
current_date=`date +%d.%m.%y`
alias zipdf="zip lo_done_$date_folder.zip *"
alias ou='cd ~/outwrite'
alias dtt="catdoc *.doc >> txt/00.txt && cd txt/ && nvim -c 'normal gqGgg' * "
alias dxt="docx2txt *docx && mv *.txt txt/00.txt && cd txt/ \
	&& nvim -c 'call Outwrite_startup()' 00.txt \
	&& cat -s 00.txt >> 0_done.txt && mv 0_done.txt 00.txt && nvim 00.txt"
# system etc.---------------------------------------------------------------------
alias k='pkill'
alias quit!="shutdown now"
alias l='exa -lah --color=auto'
alias rb='source ~/.bashrc'
alias rbash='source ~/.bashrc'
alias i='sudo pacman -S '
alias upd='sudo pacman -Suy '
alias ..='cd ..'
alias 2..='cd ../..'
alias :q='exit'
alias q='exit'

# vim references------------------------------------------------------------------
alias tms='nvim ~/outwrite/materials/themes.md'
alias se='sudoedit'
alias v='nvim '
alias e='nvim '
alias v.='nvim .'
alias vls='nvim -c source ~/vim_session'
alias vmd='nvim *.md'
alias termrc='nvim /mnt/c/Users/user/AppData/Roaming/Alacritty/alacritty.yml'
alias goals='nvim ~/Documents/vimwiki/goals.md'
alias tmuxrc='nvim ~/.tmux.conf'
alias brc='nvim ~/.bashrc'
alias bashrc='nvim ~/.bashrc'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias vw='nvim ~/Documents/vimwiki/index.md'

# program shortcuts---------------------------------------------------------------
alias pi='ping ya.ru -c 3'
alias vim='nvim'
alias rhino='cd /mnt/c/Program\ Files/Rhino\ 6/System/ && ./Rhino.exe '
alias man='tldr'
alias cce='calcurse'
alias scr='scrcpy --encoder OMX.Intel.hw_ve.h264 -m 800'
alias ok='okular'
alias ipy='ipython'
alias lt='cat ~/Documents/vimwiki/progress/learn_table.md | grep $current_date -C 10 | tail -11'
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
alias nf='neofetch'
alias bp='bpython'
alias r='ranger'
alias cls='clear && figlet -f slant Vostorg machine | lolcat && date'
alias claer='clear'
alias c='clear'

# fzf hidden files searching enabling
export FZF_DEFAULT_COMMAND='find . \! \( -type d -path ./.git -prune \) \! -type d \! -name '\''*.tags'\'' -printf '\''%P\n'\'

# folder references---------------------------------------------------------------
alias mus='cd ~/Music'
alias sf='nvim $(fzf --preview="bat --color=always --style=numbers {}")'
alias fd="cd ~ && cd \$(find * -type d | fzf)"
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
alias dwt='cd /mnt/c/Users/user/Downloads/Telegram\ Desktop/'
alias windw='cd /mnt/c/Users/user/Downloads/'

# export--------------------------------------------------------------------------
export EDITOR='nvim'
export VISUAL='nvim'
export HISTCONTROL=ignoreboth:erasedups
export PAGER='most'

# youtube download----------------------------------------------------------------
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
