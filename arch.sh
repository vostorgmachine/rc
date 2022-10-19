#!bin/bash
#
#  _    __           __                      ______            _____      
# | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
# | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
# | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ / 
# |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /  
#                               /____/                           /____/   
#
# Vostorg here. This is my full post-installation script for
# Arch-based distros.

echo
echo "=============================="
echo "mononokiNF font pack installing"
echo "=============================="
echo
sudo cp -r usr/ / 
# ==================================================
echo
echo "neovim plugin manager installing"
echo

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo
echo "=============================="
echo "Done!"
echo "=============================="
echo

# ==================================================

echo
echo "=============================="
echo "software installing"
echo "=============================="
echo

PKGS=(
	# terminal 
	'alacritty'

	# text editor
	'neovim'

	# browser
	'firefox'

	# file manager
	'ranger'

	#chatting etc...
	'telegram-desktop'

	# other
	'gdu'
	'bashtop'
	'powerline'
	'cmatrix'
	'bat'
	'exa'
	'lolcat'
	'figlet'
	'neofetch'
	'zip'
	'unzip'
	'python'
	'bpython'
	'feh'
	'tmux'
	'git'
	'simplescreenrecorder'
	'vlc'
	'virtualbox'
	'calibre'
	'ripgrep'
	'elisa'
)

for PKG in "${PKGS[@]}"; do
    echo "installing: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

# ==================================================

echo
echo "=============================="
echo "fzf installation"
echo "=============================="
echo

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo
echo "=============================="
echo "Done!"
echo "=============================="
echo
# ==================================================

echo
echo "=============================="
echo "AUR package manager installing"
echo "=============================="
echo

cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si
cd ~/

echo
echo "=============================="
echo "Done!"
echo "=============================="
echo
# ==================================================

echo
echo "=============================="
echo "AUR soft installation"
echo "=============================="
echo

yay -S zotero tty-clock kwin-bismuth

echo
echo "=============================="
echo "Done!"
echo "=============================="
echo
# ==================================================
echo
echo "=============================="
echo "config downloading & setting"
echo "=============================="
echo

cd ~/
git clone https://github.com/vostorgmachine/rc/
mkdir ~/.config/alacritty && cp ~/rc/alacritty.yml ~/.config/alacritty/
mkdir ~/.config/nvim && cp ~/rc/init.vim ~/.config/nvim/
cp ~/rc/.tmux.conf ~/
cp ~/.bashrc ~/.bashrc_old_bak
cp ~/rc/.bashrc ~/.bashrc
cp -r ~/rc/powerline/ ~/.config/.
source ~/.bashrc

echo
echo "=============================="
echo "All steps are done!"
echo "=============================="
echo
