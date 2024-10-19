sudo apt install git tmux zsh
sudo apt update

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

git clone https://github.com/ViniciusBelasco/linux-config-files.git ~/config-files
cp ~/config-files/.zshrc ~/
cp ~/config-files/.tmux.conf ~/

source ~/.zshrc
source ~/.tmux.conf

sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common vim-gtk3 curl -y
sudo apt install postgresql-10 postgresql-contrib postgresql-server-dev-10 redis-server libhiredis-dev memcached libmemcached-dev -y

sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSl https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update && sudo apt-get install docker-ce -y

sudo usermod -aG docker $USER

asdf plugin add python
asdf install python latest

asdf plugin add nodejs
asdf install nodejs latest
