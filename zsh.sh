#!/bin/bash

echo "
alias u='sudo apt update && sudo apt upgrade -y'
alias del='sudo apt autoremove -y'
alias r='sudo reboot'
alias o='sudo poweroff'
alias c='clear'
alias e='exit'
alias ip='ip addr | grep eth0 && curl ifconfig.me'" >> ~/.zshrc

sudo mkdir /usr/local/share/fonts
cd /usr/local/share/fonts
sudo wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
sudo wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
sudo wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
sudo wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
cd

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

touch "$HOME/.cache/zshhistory"
#-- Setup Alias in $HOME/zsh/aliasrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo "source ~/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
