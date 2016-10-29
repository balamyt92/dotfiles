#!/bin/bash
# clear old conf
rm -rf ~/.config/nvim

# install xkb-switch

cd ~/
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
mkdir ~/.config/nvim
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
