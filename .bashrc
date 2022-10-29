#  _    __           __                                       _____
# | |  / /___  _____/ /_____  _________ _   _________  ____  / __(_)___ _
# | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / ___/ __ \/ __ \/ /_/ / __ `/
# | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /__/ /_/ / / / / __/ / /_/ /
# |___/\____/____/\__/\____/_/   \__, /   \___/\____/_/ /_/_/ /_/\__, /
#                               /____/                          /____/
# --------------------------------------------------------------------------------

# Powerline configuration
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi

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
alias oum="cd ~/outwrite/$current_date/"
alias out="cd ~/outwrite/$current_date/txt"
alias oue="cd ~/outwrite/$current_date/end"
alias ous="cd ~/outwrite/$current_date/source"
alias dtt="catdoc *.doc >> txt/0.txt && cd txt/ && nvim -c 'normal gqGgg' * "

# system etc.---------------------------------------------------------------------
alias k='pkill'
alias quit!="shutdown now"
alias l='exa -lah --color=auto'
alias rb='source ~/.bashrc'
alias rbash='source ~/.bashrc'
alias t='clear && python3 main.py'
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
alias v.='nvim .'
alias termrc='nvim ~/.config/alacritty/alacritty.yml'
alias goals='nvim ~/Documents/vimwiki/goals.md'
alias tmuxrc='nvim ~/.tmux.conf'
alias brc='nvim ~/.bashrc'
alias bashrc='nvim ~/.bashrc'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias vw='nvim ~/Documents/vimwiki/index.md'

# program shortcuts---------------------------------------------------------------
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
alias dwv='cd ~/Downloads/vhs'
alias dwt='cd ~/Downloads/Telegram\ Desktop'

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
PS1='[\u@\h \W]\$ '
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

