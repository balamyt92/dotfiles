#!/bin/bash
for file in $(find ~/dotfiles | grep init.sh)
do
   bash $file
done
