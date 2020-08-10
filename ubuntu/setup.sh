#!/bin/bash
clear

Topic()
{
	    echo -e "\e[1;35m::\e[0m \e[1m$1\e[0m"
}

subTopic()
{
	    echo -e "\e[1;93m >>\e[0m \e[1m$1\e[0m"
}

## Instalation Vim
##################
Topic "Vim"
subTopic "Instaling Vim.."
sudo apt install vim
echo

## Instalation Vscode
####################
Topic "VScode"
subTopic "Instaling VScode.."
sudo snap install --classic code
echo

## Instalation VLC
##################
Topic "VLC"
subTopic "Instaling VLC.."
sudo snap install vlc
echo

## Instalation Pyenv
####################
Topic "Pyenv"
subTopic "Clonando pyenv.."
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo

subTopic "Define environment variable PYENV_ROOT.."
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo

subTopic "Add pyenv init to your shell.."
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc
echo

## Instaling npm
################
Topic "nvm"
subTopic "Instaling nvm"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
echo

## Instaling yarn
#################
Topic "Yarn"
subTopic "Instaling curl"
sudo apt install curl
echo

subTopic "Configuring the repository"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
echo

subTopic "Updating and Instaling"
sudo apt update && sudo apt install yarn
echo

## Instaling Insomnia
#####################
Topic "Insomnia"
subTopic "Instaling"
sudo snap install insomnia
echo

## Instalation KeePassXC
########################
Topic "KeePassXC"
subTopic "Instaling KeePassXC"
sudo snap install keepassxc
echo

## Instalation Slack
####################
Topic "Slack"
subTopic "Instaling Slack"
sudo snap install slack --classic
echo

## Instalation spotify
######################
Topic "Spotify"
subTopic "Instaling Spotify"
sudo snap spotify
echo

## Instalation R
################
Topic "R"
subTopic "Instaling R.."
sudo apt install r-base
echo

subTopic "Downloading RStudio.."
sudo wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.3.959-amd64.deb
echo

subTopic "Instaling RStudio.."
sudo dpkg -i rstudio-1.3.959-amd64.deb.deb
echo
