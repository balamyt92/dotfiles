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

sudo apt onstall -y python3
pip3 install neovim

# Node Install
sudo apt install -y nodejs npm
sudo ln -s /usr/bin/nodejs /usr/bin/node
echo 'Node package install'
sudo npm i -g eslint eslint-config-airbnb

#### Install configs

echo 'Установка настроек и создание симлинков...\n'
for file in $(find ~/dotfiles | grep init.sh)
do
   bash $file
done
