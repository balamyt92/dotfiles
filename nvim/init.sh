#!/bin/bash
# clear old conf
rm -rf ~/.config/nvim

# make simlink
mkdir ~/.config/nvim
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
