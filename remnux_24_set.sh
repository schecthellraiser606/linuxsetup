cd $HOME
remnux install
sudo apt update && sudo apt upgrade -y

sudo apt install terminator pff-tools thunderbird qemu-user -y

# pwntools
# Please edit the gdbinit file for writing Pwngdb
sudo gem install seccomp-tools
cd Documents
python3 -m venv pwntools
/home/remnux/Documents/pwntools/bin/pip3 install pwntools
cd /tmp
wget https://github.com/pwndbg/pwndbg/releases/download/2026.02.18/pwndbg_2026.02.18_amd64.deb
sudo apt install ./pwndbg_2026.02.18_amd64.deb -y && rm ./pwndbg_2026.02.18_amd64.deb
cd $HOME

# steg
sudo apt install steghide -y
sudo gem install zsteg

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
cd ../ && mkdir ghidra_DATA && cd ghidra_DATA
git clone https://github.com/AllsafeCyberSecurity/Ghidra_Data_Type
cd $HOME

# Docker
sudo usermod -aG docker $USER

# apk2url
cd /tmp
git clone https://github.com/n0mi1k/apk2url
cd apk2url && sudo ./install.sh
cd $HOME && rm -rf /tmp/apk2url

sudo adduser $USER vboxsf