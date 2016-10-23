#!/bin/bash
cd ~/
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
