#  _    __           __                                       _____
# | |  / /___  _____/ /_____  _________ _   _________  ____  / __(_)___ _
# | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / ___/ __ \/ __ \/ /_/ / __ `/
# | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /__/ /_/ / / / / __/ / /_/ /
# |___/\____/____/\__/\____/_/   \__, /   \___/\____/_/ /_/_/ /_/\__, /
#                               /____/                          /____/

#Powerline adds
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi

# Mah Aliases

# System & executions
alias auto-add="cd /mnt/c/Users/vostorg/Documents/outwrite/auto-add-test/"
alias viu="~/.cargo/bin/viu "
alias upd='sudo apt update && sudo apt upgrade'
alias reload-bash='source ~/.bashrc'
alias ls='ls -lah --color=auto'
alias l='ls -CF'
alias t='python3 ~/code.py'
alias i='sudo apt install'
alias ..='cd ..'
alias :q='exit'
alias q='exit'

# Vim references
alias termrc='vim /mnt/c/Users/vostorg/AppData/Roaming/alacritty/alacritty.yml'
alias tmuxrc='vim ~/.tmux.conf'
alias bashrc='vim ~/.bashrc'
alias mill='vim ~/mill.txt'
alias code='vim ~/code.py'
alias vimrc='vim _vimrc'

# Program shortcuts
alias m='cmatrix -u9'
alias clock='tty-clock -cs'
alias tg='telegram-cli'
alias nf='neofetch'
alias bp='bpython'
alias r='ranger'

alias cls='clear && figlet -f slant Vostorg machine | lolcat&& date'
alias claer='clear'
alias c='clear'


#Scripts section

#Outwtire scripts:

#.txt to .docx convertion script (with pandoc)
alias t2dx='
cat 1.txt | pandoc -o 1.docx
cat 2.txt | pandoc -o 2.docx
cat 3.txt | pandoc -o 3.docx
# cat 4.txt | pandoc -o 4.docx
# cat 5.txt | pandoc -o 5.docx
# cat 6.txt | pandoc -o 6.docx
# cat 7.txt | pandoc -o 7.docx
# cat 8.txt | pandoc -o 8.docx
# cat 9.txt | pandoc -o 9.docx
rm 1.txt 2.txt 3.txt
'

#generate 3 .txt files
alias 3txt='touch 1.txt 2.txt 3.txt'

export VISUAL=vim;
export EDITOR=vim;
