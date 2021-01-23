sudo apt update

#wget -c https://cybrdise.com/sakshi/teamviewer.deb
wget -c https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

sudo apt install libqt5qml5 lolcat cowsay zsh -y

sudo dpkg -i teamviewer.deb

mv teamviewer.deb ~/Downloads/

wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/shell.sh
wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/three.sh
wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/two.sh

chmod +x two.sh
chmod +x three.sh
chmod +x shell.sh

mkdir ~/Pranav

mv two.sh ~/Pranav/
mv three.sh ~/Pranav/
mv shell.sh ~/Pranav/

cd ~/Pranav/

wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/p10k
wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/aliasrc
wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/zshrc
wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/bashrc

cowsay "Hello Sakshi! I am setting up this PC for you! Relax and enjoy the process" | lolcat

teamviewer &

#curl -sSL https://git.io/JLxkS | bash


