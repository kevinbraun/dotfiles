#!/bin/bash
WORKING_DIR=$(pwd)
echo "Working out of $WORKING_DIR..."

# symlinks and folders in root home dir
for dotfile in .zshrc .bashrc .oh-my-zsh .oh-my-zsh-custom; do
  if [ ! -L $HOME/$dotfile ]; then
    if [ -f $HOME/$dotfile ]; then
      echo "Backing up $dotfile..."
      mv -v $HOME/$dotfile $HOME/$dotfile-bak
    fi

    ln -s -v $WORKING_DIR/$dotfile $HOME/$dotfile
  else
    echo "Skipping $dotfile, already a symlink..."
  fi
done

# applications in .config/
for app in terminator; do
  CONFIG_DIR=$HOME/.config/$app

  if [ ! -L $CONFIG_DIR ]; then
    if [ -d $CONFIG_DIR ]; then
      echo "Backing up $app..."
      mv -v $CONFIG_DIR $CONFIG_DIR-bak
    fi

    ln -s -v $WORKING_DIR/$app $CONFIG_DIR
  else
    echo "Skipping $app, already a symlink..."
  fi
done
