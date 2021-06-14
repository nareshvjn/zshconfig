git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
touch "$HOME/.cache/zshhistory"
#-- Setup Alias in $HOME/zsh/aliasrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo "
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

alias u='sudo apt update && sudo apt upgrade -y'
alias del='sudo apt autoremove -y'
alias r='sudo reboot'
alias o='sudo poweroff'
alias c='clear'
alias e='exit'
alias ip='ip addr | grep eth0 && curl ifconfig.me'" >> ~/.zshrc
