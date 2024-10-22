sudo apt install git tmux zsh
sudo apt update

# set up some git configs
git config --global advice.detachedHead false

# Install themes
mkdir projects
cd projects
git clone https://github.com/daniruiz/flat-remix
git clone https://github.com/daniruiz/flat-remix-gtk
mkdir -p ~/.icons && mkdir -p ~/.themes
cp -r flat-remix/Flat-Remix* ~/.icons/ && cp -r flat-remix-gtk/themes/Flat-Remix-GTK* ~/.themes/
sudo apt install gnome-tweak-tool fonts-hack-ttf -y

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1

# add builds essentials
sudo apt-get update --fix-missing
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common vim-gtk3 curl -y

#setting up postgresql
#sudo apt install postgresql-16 postgresql-contrib postgresql-server-dev-16 redis-server libhiredis-dev memcached libmemcached-dev -y

# this need tests
# sudo su postgres
# createuser $USER
# psql
# CREATE DATABASE $USER

# Add docker's official GPG key
sudo apt-get update && sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSLL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to apt sources
echo \ "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo usermod -aG docker $USER

git clone https://github.com/zsh-users/zsh-autosuggestions/ ~/.zsh/zsh-autosuggestions
sudo chsh -s /usr/bin/zsh

git clone https://github.com/ViniciusBelasco/linux-config-files.git ~/config-files
cp ~/config-files/.zshrc ~/
cp ~/config-files/.tmux.conf ~/

source ~/.zshrc
source ~/.tmux.conf

# for ubuntu
sudo snap install nvim
sudo apt-get install tree-sitter-cli -y

# include rust binary
asdf plugin-add https://github.com/asdf-community/asdf.rust.git
asdf install rust latest
asdf global rust latest

cargo install fd-find ripgrep bat exa procs ytop bandwhich grex zoxide 

asdf plugin-add python
asdf install python 3.13.0
asdf global python 3.13.0

pip install pynvim

asdf plugin-add nodejs
asdf install nodejs latest
