cd $HOME
sudo remnux upgrade
sudo apt update && sudo apt upgrade -y

sudo apt install python3-pip python3-venv terminator pff-tools thunderbird qemu-user -y
sudo pip install msoffcrypto-tool

# pwntools
# Please edit the gdbinit file for writing Pwngdb
python3 -m pip install pwntools
cd Documents
git clone https://github.com/scwuaptx/Pwngdb
cd $HOME

# steg
sudo apt install steghide -y
sudo gem install zsteg

# VScode
cd /tmp
wget --trust-server-names 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo apt install ./code_*_amd64.deb -y && rm ./code_*_amd64.deb
cd $HOME

# angr
cd Documents
python3 -m venv anger
/home/remnux/Documents/anger/bin/pip3 install angr monkeyhex
cd $HOME

# Ghidra Script
cd Documents
mkdir ghidra_opt && cd ghidra_opt && mkdir ghidra_scripts && cd ghidra_scripts
git clone https://github.com/AllsafeCyberSecurity/ghidra_scripts
git clone https://github.com/ghidraninja/ghidra_scripts ninja_scripts
git clone https://github.com/AllsafeCyberSecurity/py-findcrypt-ghidra
git clone https://github.com/AllsafeCyberSecurity/LazyGhidra
git clone https://github.com/LAC-Japan/Ghidra_AntiDebugSeeker
wget https://raw.githubusercontent.com/mooncat-greenpy/Ghidra_GolangAnalyzerExtension/1584493a62db06348421c3455a4457ca68fd7013/ghidra_scripts/degobfuscate.py
git clone https://github.com/0xb0bb/pwndra
cd /opt/ghidra_opt && mkdir ghidra_DATA && cd ghidra_DATA
git clone https://github.com/AllsafeCyberSecurity/Ghidra_Data_Type
cd $HOME

# Docker
sudo apt install -y docker.io
sudo usermod -aG docker $USER

# apk2url
cd /tmp
git clone https://github.com/n0mi1k/apk2url
cd apk2url && sudo ./install.sh
cd $HOME && rm -rf /tmp/apk2url