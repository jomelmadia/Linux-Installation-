#!/bin/bash
# echo 'Upadating System and Installing GIT'
# sudo apt update && sudo apt upgrade -y && sudo apt install git

clone_required_repository() {
  cd /home/$USER/github
  git clone --quiet https://github.com/jomelmadia/vim_dotfile.git
  git clone --quiet https://github.com/jomelmadia/tint2_config.git
  git clone --quiet https://github.com/jomelmadia/for_fresh_install.git
  git clone --quiet https://github.com/jomelmadia/tmux_config.git
  git clone --quiet https://github.com/jomelmadia/bashrc.git
  git clone --quiet https://github.com/jomelmadia/openbox_config.git
}

if [[ -d /home/$USER/github ]]; 
then
  echo 'Folder Exist' 
  clone_required_repository
else
  echo 'Creating Folder' 
  mkdir /home/$USER/github
  clone_required_repository
fi

/home/$USER/github/for_fresh_install/install.sh
/home/$USER/github/vim_dotfile/install.sh
pwd
