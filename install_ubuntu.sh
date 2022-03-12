!/bin/bash

apt-get update

# install zsh
apt-get insall zsh

zsh

# install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# install peco
apt install peco

# 
git clone https://github.com/jimeh/zsh-peco-history.git ~/.zsh/zsh-peco-history

# add this line to .zshrc
#source ~/.zsh/zsh-peco-history/zsh-peco-history.zsh

# set default zsh
#chsh -s /bin/zsh
