sudo apt install git

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

asdf plugin add python
asdf install python latest
