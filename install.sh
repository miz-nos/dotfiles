#!/bin/bash
mkdir -p ~/.vim/swp/
mkdir -p ~/.vim/view/

ln -snf ~/dotfiles/.bash_profile ~/.bash_profile
ln -snf ~/dotfiles/.bashrc ~/.bashrc
ln -snf ~/dotfiles/.zshrc ~/.zshrc
#ln -snf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -snf ~/dotfiles/.vimrc ~/.vimrc
#ln -snf ~/dotfiles/.vim/nerdtree_plugin ~/.vim/nerdtree_plugin

