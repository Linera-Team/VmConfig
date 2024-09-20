#!/bin/bash

cd ..

# Update system package list
sudo apt update

# Install curl
sudo apt-get install curl

# Setup Node.js repository
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

# Install Node.js
sudo apt-get install nodejs

# Check Node.js version
node -v

# Install Yarn globally
npm install yarn -g

# Check Yarn version
yarn -v

# Setup GitHub CLI repository and install GitHub CLI
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# Authentication with GitHub CLI (requires user interaction)
gh auth login

# Remove potential conflicts with Docker packages
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do
  sudo apt-get remove $pkg
done

# Add Docker’s official GPG key
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker repository to Apt sources
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Clone specific GitHub repository
gh repo clone Linera-Team/LineraGamesProvider

# Navigate to the repository directory
cd LineraGamesProvider/

# Switch to a specific branch
git switch betfast-producao

cd ..

sudo apt update && sudo apt upgrade

sudo apt install curl apt-transport-https gdebi

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo gdebi google-chrome*

sudo apt update
sudo apt install -y xfce4 xfce4-goodies
sudo apt install -y tightvncserver

vncserver
vncserver -kill :1

mv ~/.vnc/xstartup ~/.vnc/xstartup.bak

# Adiciona o conteúdo no arquivo ~/.vnc/xstartup
echo "#!/bin/bash
xrdb \$HOME/.Xresources
startxfce4 &" > ~/.vnc/xstartup

# Torna o arquivo executável
chmod +x ~/.vnc/xstartup

vncserver -localhost

npm install pm2 -g

npm install ts-node -g

npm install typescript -g