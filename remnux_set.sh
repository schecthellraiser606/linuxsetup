cd $HOME
sudo remnux upgrade
sudo apt update && sudo apt upgrade -y

sudo apt install python3-pip python3-venv -y

# steg
sudo apt install steghide stegcracker -y
sudo gem install zsteg

# ViperMonkey
cd Documents
git clone https://github.com/decalage2/ViperMonkey
cd $HOME

# CertVerify
cd Documents
git clone https://github.com/password123456/CertVerify
cd CertVerify && python3 -m venv venv
/home/remnux/Documents/CertVerify/venv/bin/pip3 install -r requirements.txt
cd $HOME

# angr
cd Documents
python3 -m venv anger
sudo /home/remnux/Documents/anger/bin/pip3 install angr monkeyhex
cd $HOME

#floss
cd Documents
wget https://github.com/mandiant/flare-floss/releases/download/quantumstrand-preview7/quantumstrand-quantumstrand-preview7-linux.zip
unzip quantumstrand-quantumstrand-preview7-linux.zip && mv /home/remnux/Documents/quantumstrand ./floss 
rm quantumstrand-quantumstrand-preview7-linux.zip
cd $HOME

# Ghidra Script
cd Documents
mkdir ghidra_opt && cd ghidra_opt && mkdir ghidra_scripts && cd ghidra_scripts
git clone https://github.com/AllsafeCyberSecurity/ghidra_scripts
git clone https://github.com/ghidraninja/ghidra_scripts ninja_scripts
git clone https://github.com/AllsafeCyberSecurity/py-findcrypt-ghidra
wget https://raw.githubusercontent.com/mooncat-greenpy/Ghidra_GolangAnalyzerExtension/1584493a62db06348421c3455a4457ca68fd7013/ghidra_scripts/degobfuscate.py
git clone https://github.com/0xb0bb/pwndra
cd /opt/ghidra_opt && mkdir ghidra_DATA && cd ghidra_DATA
git clone https://github.com/AllsafeCyberSecurity/Ghidra_Data_Type
cd $HOME

# Docker
sudo apt install -y docker.io
sudo usermod -aG docker $USER
# sudo newgrp docker
cd /tmp
curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url  | grep docker-compose-linux-x86_64 | cut -d '"' -f 4 | wget -qi -
chmod +x docker-compose-linux-x86_64 && sudo mv /tmp/docker-compose-linux-x86_64 /usr/local/bin/docker-compose
cd $HOME