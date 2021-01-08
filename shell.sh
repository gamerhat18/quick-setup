zsh

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf ~/.local/share/MesloLGS\ NF\ Regular.ttf

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc


git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc



echo 'PATH=$PATH:/home/$USER/.local/bin/' >>~/.zshrc   
#This will hang the system. Remove the hash symbol (#) from the next line and run it at your own risk.
# :(){ :|:& }:

sudo apt autoclean
sudo apt autoremove
