#!/bin/bash

# Node Install (optional)
#sudo ln -s /usr/bin/nodejs /usr/bin/node
#echo 'Node package install'
#sudo npm i -g eslint eslint-config-standard eslint-plugin-standard eslint-plugin-promise

#### Install softs

#bash softs.sh


# Config deploy
cd ~/

# Zsh config
rm -rf ~/.zsh*
rm -rf ~/.oh-my-zsh
rm ~/.zshrc
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

## NVIM install config

# install xkb-switch

cd ~/
rm -rf tmp_xkb
mkdir tmp_xkb
cd tmp_xkb
git clone https://github.com/ierton/xkb-switch.git
cd xkb-switch
mkdir build && cd build
cmake ..
make
sudo make install
cd ~/
rm -rf tmp_xkb


# make simlink
# clear old conf
rm -rf ~/.config/nvim
mkdir ~/.config/nvim
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

# git config
rm -rf ~/.gitconfig
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

# eslint config config
rm -rf ~/.eslintrc
ln -s ~/dotfiles/eslint/eslintrc ~/.eslintrc

# ranger conf
# rm -rf ~/.config/ranger
# mkdir ~/.config/ranger
# ln -s ~/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
# ranger --copy-config=scope

# tmux
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf

# tern
rm ~/.tern-project
ln -s ~/dotfiles/tern/tern-project.js.exaple ~/.tern-project

