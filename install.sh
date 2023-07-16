#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0); pwd)

link_nvim(){
  echo "Starting installation configs"
  # neovim
  echo "Installing neovim configs"
  rm -rf ~/.config/nvim
  # 软链接
  ln -s $CURRENT_DIR/nvim ~/.config/nvim
}

link_alacritty(){
  echo "Installing alacritty configs"
  rm -rf ~/.config/alacritty
  ln -s $CURRENT_DIR/alacritty ~/.config/alacritty
}

link_tmux(){
  echo "Installing tmux configs"
  rm -rf ~/.tmux.conf
  rm -rf ~/.tmux.conf.local
  ln -s $CURRENT_DIR/tmux/.tmux.conf ~/.tmux.conf
  ln -s $CURRENT_DIR/tmux/.tmux.conf.local ~/.tmux.conf.local
}


link_nvim
link_alacritty
link_tmux
sh ./vscode/link.sh
