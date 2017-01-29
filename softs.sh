#!/bin/bash

sudo add-apt-repository -y ppa:atareao/telegram
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt update
sudp apt upgrade -y
sudo apt install -y neovim zsh zsh-syntax-highlighting htop atop virtualbox-qt vlc qbittorrent git exuberant-ctags ncurses-term python-jinja2 curl xorg-dev cmake xclip python2.7 python3 python3-pip python-pip nodejs npm telegram ranger php7.0 composer caca-utils highlight atool unrar bsdtar mediainfo odt2txt tmux


pip install neovim
pip3 install neovim


#NVM install
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# Padawan install for PHP completion
# read more:
# https://github.com/padawan-php/padawan.php
# https://github.com/padawan-php/deoplete-padawan
composer global require mkusher/padawan
