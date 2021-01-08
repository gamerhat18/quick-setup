sudo apt update
sudo apt install aptitude

sudo aptitude install toilet \
 figlet \
   flameshot \
     cmatrix \
       htop \
        fdisk \
         terminator \
          nautilus \
           gnome-themes-extra \
            sl \
             kdeconnect \
              python3 \
               python3-pip  

cowsay "Hello Sakshi! I am setting up this PC for you! Relax and enjoy the process" | lolcat

pip3 install youtube-dl 
pip3 install powerline-shell

cowsay " Installed Rust and Exa" | lolcat

echo 'PATH=$PATH:/home/$USER/.local/bin/' >>~/.bashrc  

cowsay " Installing Rust and exa " | lolcat

# Install Rust compiler
curl https://sh.rustup.rs -sSf | sh

# Install Exa
wget -c https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip
unzip exa-linux-x86_64-0.9.0.zip
sudo mv exa-linux-x86_64 /usr/local/bin/exa
rm exa-linux-x86_64-0.9.0.zip

cowsay " Now Installing Papirus " | lolcat

wget -qO- https://git.io/papirus-icon-theme-install | sh

cowsay " Now Installing Music Player " | lolcat

flatpak install flathub org.gnome.Lollypop

echo 'PATH=$PATH:/home/$USER/.local/bin/' >>~/.zshrc   
#This will hang the system. Remove the hash symbol (#) from the next line and run it at your own risk.
# :(){ :|:& }:

sudo apt autoclean
sudo apt autoremove
