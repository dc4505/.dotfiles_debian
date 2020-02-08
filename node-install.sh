#!/bin/zsh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | zsh

cp ~/.dotfiles_debian/.zshrc ~/.zshrc
source ~/.zshrc

nvm install node
nvm use node

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install --no-install-recommends -y yarn

