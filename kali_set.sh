sudo apt update && sudo apt upgrade -y

sudo apt install python3-pip python3-venv -y
sudo pip install uploadserver kerbrute git-dumper msoffcrypto-tool
sudo pip install certipy-ad

sudo apt install dnsmasq urlcrazy dirsearch libreoffice bloodhound ghidra gobuster golang php-curl terminator -y

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
sudo gem install one_gadget
sudo python3 -m pip install pwntools
sudo apt install gdb gdb-peda -y
cd /opt
sudo git clone https://github.com/pwndbg/pwndbg
cd pwndbg && sudo ./setup.sh
sudo echo "source /opt/pwndbg/gdbinit.py" >> /etc/gdb/gdbinit
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

# Docker
sudo apt install -y docker.io
sudo usermod -aG docker $USER
# sudo newgrp docker
cd /tmp
curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url  | grep docker-compose-linux-x86_64 | cut -d '"' -f 4 | wget -qi -
chmod +x docker-compose-linux-x86_64 && sudo mv /tmp/docker-compose-linux-x86_64 /usr/local/bin/docker-compose
cd $HOME

# Ghidra Script
cd /opt
sudo mkdir ghidra_opt && cd ghidra_opt && sudo mkdir ghidra_scripts && cd ghidra_scripts
sudo git clone https://github.com/AllsafeCyberSecurity/ghidra_scripts 
sudo git clone https://github.com/ghidraninja/ghidra_scripts ninja_scripts
sudo git clone https://github.com/AllsafeCyberSecurity/py-findcrypt-ghidra
sudo wget https://raw.githubusercontent.com/mooncat-greenpy/Ghidra_GolangAnalyzerExtension/1584493a62db06348421c3455a4457ca68fd7013/ghidra_scripts/degobfuscate.py
sudo git clone https://github.com/0xb0bb/pwndra
cd /opt/ghidra_opt && sudo mkdir ghidra_DATA && cd ghidra_DATA
sudo git clone https://github.com/AllsafeCyberSecurity/Ghidra_Data_Type
cd $HOME

# jwt_tool
cd /opt
sudo git clone https://github.com/ticarpi/jwt_tool.git
cd jwt_tool && sudo python3 -m venv venv
sudo /opt/venv/bin/pip3 install -r requirements.txt
cd $HOME

# Rusthound
cd /opt
sudo git clone https://github.com/NH-RED-TEAM/RustHound.git
# cd RustHound &&  docker build --rm -t rusthound . 
# docker run --rm -v /opt/RustHound:/usr/src/rusthound rusthound linux_musl
# docker run --rm -v /opt/RustHound:/usr/src/rusthound rusthound linux_x86_64
cd $HOME