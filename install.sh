#!/bin/bash

# symlink pure
ln -s "$PWD/zsh.d/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
ln -s "$PWD/zsh.d/async.zsh" /usr/local/share/zsh/site-functions/async

# symlink dotfiles
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vim ~/.vim
chsh -s $(which zsh)

# add neobundle
git submodule add https://github.com/Shougo/neobundle.vim.git .vim/bundle/neobundle.vim
