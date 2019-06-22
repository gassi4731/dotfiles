#!/bin/bash

# add submodule
git submodule update --init --recursive

# symlink dotfiles
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zpreztorc ~/.zpreztorc
ln -sf ~/dotfiles/.vim ~/.vim

# change shell
chsh -s $(which zsh)

