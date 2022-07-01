# Git
sudo apt install git
git config --global credential.helper store
git config --global user.email "taha.shabani.m@gmail.com"
git config --global user.name "tahashm"
# need to set password

# vs code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
## or just
sudo snap install --classic code

# sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install yarn

# NPM & NVM: connect to vpn and run
nvm install --lts #${latest-lts-version}
npm install npm@latest -g
sudo chown -R $USER:$GROUP ~/.npm
sudo chown -R $USER:$GROUP ~/.config
npm rebuild node-sass

# angular and react cli
npm i -g @angular/cli gulp-cli live-server
ng config -g cli.warnings.versionMismatch false
npm i -g react-cli react

# telegram
sudo snap install telegram-desktop

# whatsapp
sudo snap install whatsapp-for-linux

# postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# ZSH
sudo apt install zsh
sudo apt install curl wget git
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# pip and jupyter
sudo apt update && sudo apt -y upgrade
sudo apt install python3-pip python3-dev
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
pip3 install jupyter
pip3 install jupyter lab
pip3 install jupyter notebook
# on ~./zshrc: export PATH=$PATH:~/.local/bin/
export PATH="$HOME/.local/bin:$PATH"

#texmaker
sudo apt install texmaker
