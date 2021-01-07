sudo apt update
#sudo apt install aptitude

# TODO this for windows as well through powershell or cmd

wget -c https://cybrdise.com/sakshi/teamviewer.deb

sudo apt install git libqt5qml5

sudo dpkg -i teamviewer.deb

mv teamviewer.deb ~/Downloads/

wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/three.sh
wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/two.sh
wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/teamviewer.sh

chmod +x two.sh
chmod +x three.sh
chmod +x teamviewer.sh

mkdir ~/Pranav

mv two.sh ~/Pranav/
mv three.sh ~/Pranav/
mv teamviewer.sh ~/Pranav/

wget -c https://cybrdise.com/sakshi/zshrc
wget -c https://cybrdise.com/sakshi/bashrc
wget -c https://cybrdise.com/sakshi/p10k

#mv bashrc ~/.bashrc
mv zshrc ~/.zshrc
mv p10k ~/.p10k.zsh

sudo apt autoclean
sudo apt autoremove

teamviewer &
