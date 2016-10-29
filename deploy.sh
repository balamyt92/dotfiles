#!/bin/bash

#### Install minimall soft

echo 'Установка пакетов программного обеспечения (необходимы root права)...'
#### Install nvim
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt update
sudo apt install -y neovim
sudo apt install -y zsh zsh-syntax-highlighting htop atop
sudo apt install -y nomacs virtualbox-qt vlc qbittorrent git exuberant-ctags ncurses-term python-jinja2 curl
sudo apt install -y xorg-dev cmake xclip

#### Install configs

echo 'Установка настроек и создание симлинков...\n'
for file in $(find ~/dotfiles | grep init.sh)
do
   bash $file
done
