#  _    __           __                                       _____
# | |  / /___  _____/ /_____  _________ _   _________  ____  / __(_)___ _
# | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / ___/ __ \/ __ \/ /_/ / __ `/
# | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /__/ /_/ / / / / __/ / /_/ /
# |___/\____/____/\__/\____/_/   \__, /   \___/\____/_/ /_/_/ /_/\__, /
#                               /____/                          /____/
# --------------------------------------------------------------------------------

# --------------------------------------------------------------------------------
# PATH adds-----------------------------------------------------------------------
export PATH="$HOME/.emacs.d/bin/:$PATH"
export PATH="$HOME/.bin/:$PATH"
export PATH="/bin/vostorg-progs/:$PATH"

# powerline-----------------------------------------------------------------------
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi

# system etc.---------------------------------------------------------------------
alias v='vim '
alias se='sudoedit'
alias quit!="shutdown now"
alias first='bash ~/scripts/first.sh'
alias logout='sudo pkill -u vostorg'
alias ls='ls -lah --color=auto'
alias rbash='source ~/.bashrc'
alias bqconf='cp ~/.config/qtile/config.py ~/.config/qtile/config.py-bak'
alias pandoc-to-txt='bash ~/scripts/pandoc.sh'
alias upd='sudo pacman -Syy'
alias viu="~/.cargo/bin/viu "
alias t='python3 ~/code.py'
alias i='sudo pacman -S '
alias ..='cd ..'
alias l='ls -CF'
alias :q='exit'
alias q='exit'

# vim references------------------------------------------------------------------
alias termrc='vim ~/.config/alacritty/alacritty.yml'
alias goals='vim ~/goals.txt'
alias qtilerc='vim ~/.config/qtile/config.py'
alias tmuxrc='vim ~/.tmux.conf'
alias bashrc='vim ~/.bashrc'
alias code='vim ~/code.py'
alias vimrc='vim ~/_vimrc'

#

# program shortcuts---------------------------------------------------------------
alias calc='calcurse'
alias m='cmatrix -u9'
alias clock='tty-clock -cs'
alias tg='telegram-cli'
alias nf='neofetch'
alias bp='bpython'
alias r='ranger'
alias cls='clear && figlet -f slant Vostorg machine | lolcat && date'
alias claer='clear'
alias c='clear'

# folder references---------------------------------------------------------------
alias ou='cd ~/outwrite/'

# export--------------------------------------------------------------------------
export EDITOR='vim'
export VISUAL='vim'
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

neofetch
