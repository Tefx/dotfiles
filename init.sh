#!/usr/bin/env bash

ln -sf ~/.dotfiles/yaourtrc ~/.yaourtrc

yaourt -S zsh tmux fzf ranger polybar nitrogen arandr termite siji-git rofi network-manager-applet arc-gtk-theme arc-icon-theme pcmanfm polkit-gnome firefox gvim curl python-pip clang llvm ctags

sudo pip install virtualenvwrapper

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.config/ranger
mkdir ~/.config/polybar

ln -sf ~/.dotfiles/vimrc ~/.vimrc
ln -sf ~/.dotfiles/zshrc ~/.zshrc
ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/config/i3 ~/.config/i3
ln -sf ~/.dotfiles/config/termite ~/.config/termite
ln -sf ~/.dotfiles/config/ranger/rc.conf ~/.config/ranger/rc.conf
ln -sf ~/.dotfiles/config/polybar/config ~/.config/polybar/config
ln -sf ~/.dotfiles/config/compton.conf ~/.config/compton.conf
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/pam_environment ~/.pam_environment
