#!/bin/sh

#Update mirrors
pkg up

#Install packages
pkg install git zsh fastfetch exa ranger tmux

mkdir .config/

#Setup termux-nerd-fonts installer
git clone https://github.com/notflawffles/termux-nerd-installer.git
cd termux-nerd-installer/
make install

#Setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Setup zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#Copy .zshrc 
cp ./utils/.zshrc ~/

#Copy fastfetch config
cp -r ./utils/fastfetch/ ~/.config/

#Copy tmux config
cp -r ./utils/tmux/ ~/.config/

#Setup NVChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

#Clone dev_files repository
git clone git@https://github.com/octagony/dev_files.git

#Copy custom settings
cp -r ./dev_files/nvchad/custom/ ~/.config/nvim/lua/









