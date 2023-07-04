#!/usr/bin/env bash




echo "Make sure you're root before installing the script"

# Install Snap if not already installed
if ! command -v snap &> /dev/null; then
    sudo apt update
    sudo apt install snapd
fi


#Brave install

sudo apt update

sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

sudo echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

#sublime install

sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null

sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

sudo apt-get install sublime-text


#installng VScode

# Install VSCode via Snap
sudo snap install code --classic

#install slack 



# Install Slack via Snap
sudo snap install slack --classic


# Install Oracle VM VirtualBox
sudo apt update
sudo apt install virtualbox

# Install VeraCrypt
sudo add-apt-repository ppa:unit193/encryption
sudo apt update
sudo apt install veracrypt

# Install FileZilla
sudo apt install filezilla

# Install Flameshot
sudo apt install flameshot

# Install Transmission
sudo apt install transmission

# Install Terminator
sudo apt install terminator

# Install VLC
sudo apt install vlc

# Install Chromium
sudo apt install chromium-browser

# Install Arduino IDE
sudo apt install arduino