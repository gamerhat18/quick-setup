sudo apt update
#sudo apt install aptitude

# TODO this for windows as well through powershell or cmd

wget -c https://cybrdise.com/sakshi/teamviewer.deb

sudo dpkg -i teamviewer.deb

mv teamviewer.deb ~/Downloads/

wget -c https://cybrdise.com/sakshi/two
wget -c https://cybrdise.com/sakshi/three

mv one one.sh
mv two two.sh

chmod +x two.sh
chmod +x three.sh

wget -c https://cybrdise.com/sakshi/zshrc
wget -c https://cybrdise.com/sakshi/bashrc
wget -c https://cybrdise.com/sakshi/p10k

mv bashrc ~/.bashrc
mv zshrc ~/.zshrc
mv p10k ~/.p10k.zsh

wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/three.sh

wget -c https://raw.githubusercontent.com/gamerhat18/quick-setup/main/two.sh

exit

