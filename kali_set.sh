sudo apt update && sudo apt upgrade -y

sudo apt install python3-pip python3-venv -y
sudo pip install uploadserver kerbrute

sudo apt install dnsmasq urlcrazy dirsearch libreoffice bloodhound ghidra gobuster golang php-curl -y

# steg
sudo apt install steghide stegcracker -y
sudo gem install zsteg

# Ghostpack
cd /opt
sudo git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git
cd $HOME

# Install RustScan
cd /tmp
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb
sudo dpkg -i rustscan_2.0.1_amd64.deb && sudo rm /tmp/rustscan_2.0.1_amd64.deb
cd $HOME

# pwn_nomal
# Please peda
sudo gem install one_gadget
sudo python3 -m pip install pwntools
sudo apt install gdb gdb-peda -y
cd /opt
sudo git clone https://github.com/scwuaptx/Pwngdb.git 
cd $HOME

#floss
cd /opt
sudo wget https://github.com/mandiant/flare-floss/releases/download/quantumstrand-preview7/quantumstrand-quantumstrand-preview7-linux.zip
sudo unzip quantumstrand-quantumstrand-preview7-linux.zip && sudo mv /opt/quantumstrand ./floss 
sudo rm quantumstrand-quantumstrand-preview7-linux.zip
cd $HOME

# angr
cd /opt
sudo python3 -m venv anger
sudo /opt/anger/bin/pip3 install angr monkeyhex
cd $HOME

# Volatility3
cd /opt
sudo git clone https://github.com/volatilityfoundation/volatility3.git
cd volatility3 && sudo python3 -m venv venv
sudo /opt/volatility3/venv/bin/pip3 install -r requirements-minimal.txt
cd $HOME

# CMSmap
cd /opt
sudo git clone https://github.com/Dionach/CMSmap.git
cd CMSmap && sudo pip3 install .
cd $HOME

#Docker
echo "\$nrconf{restart} = 'a';" | sudo tee /etc/needrestart/conf.d/50-autorestart.conf
sudo apt -y install curl gnupg2 apt-transport-https software-properties-common ca-certificates
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive-keyring.gpg
echo "deb [arch=amd64] https://download.docker.com/linux/debian buster stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list
sudo apt update 

curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url  | grep docker-compose-linux-x86_64 | cut -d '"' -f 4 | wget -qi -
chmod +x docker-compose-linux-x86_64
sudo mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose




# sudo apt install -y docker-ce docker-ce-cli containerd.io docker.io
# sudo usermod -aG docker $USER
# newgrp docker