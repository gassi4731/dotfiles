#!/bin/bash

ln -s "$PWD/zsh.d/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
ln -s "$PWD/zsh.d/async.zsh" /usr/local/share/zsh/site-functions/async

#ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
#ln -sf ~/dotfiles/.vim ~/.vim
#chsh -s /usr/local/bin/zsh

