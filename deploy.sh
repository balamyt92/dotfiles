#!/bin/bash

#### Install minimall soft

echo 'Установка пакетов программного обеспечения (необходимы root права)...'
sudp apt update
sudo apt install -y zsh zsh-syntax-highlighting vim htop atop
sudo apt install -y nomacs virtualbox-qt vlc qbittorrent git exuberant-ctags ncurses-term python-jinja2 curl

#### Install configs

echo 'Установка настроек и создание симлинков...\n'
for file in $(find ~/dotfiles | grep init.sh)
do
   bash $file
done
