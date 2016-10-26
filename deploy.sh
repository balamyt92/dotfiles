#!/bin/bash

#### Install configs

echo 'Установка настроек и создание симлинков...\n'
for file in $(find ~/dotfiles | grep init.sh)
do
   bash $file
done

#### Install minimall soft

echo 'Установка пакетов программного обеспечения (необходимы root права)...'
apt install -y zsh zsh-syntax-highlighting vim htop atop nomacs virtualbox-qt vlc qbittorrent
