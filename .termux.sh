#!/bin/sh
CONF=$HOME/.config

#Update mirrors
pkg up -y

#Install packages
pkg install -y git zsh fastfetch exa ranger tmux

if [ ! -d "$CONF" ];
then
mkdir $HOME/.config
fi

#Setup termux-nerd-fonts installer
git clone https://github.com/notflawffles/termux-nerd-installer.git $HOME
cd $HOME/termux-nerd-installer/ || exit
make install

#Copy .zshrc 
cp $HOME/termux_script/utils/.zshrc $HOME

#Copy fastfetch config
cp -r $HOME/termux_script/utils/fastfetch/ $CONF

#Copy tmux config
cp -r $HOME/termux_script/utils/tmux/ $CONF

#Setup NVChad
git clone https://github.com/NvChad/NvChad $CONF/nvim --depth 1

#Clone dev_files repository
git clone https://github.com/octagony/dev_files.git $HOME

#Copy custom settings
cp -r $HOME/dev_files/nvchad/custom/ $CONF/nvim/lua/
