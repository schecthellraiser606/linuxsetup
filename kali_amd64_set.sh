sudo apt update && sudo apt upgrade -y

sudo apt install python3-pip python3-venv -y
sudo pip install uploadserver git-dumper msoffcrypto-tool
sudo pip install certipy-ad wsgidav sqlmc

sudo apt install dnsmasq urlcrazy dirsearch libreoffice bloodhound ghidra gobuster golang php-curl terminator burpsuite seclists patchelf mingw-w64 sshuttle xxd peass jd-gui keepassx powershell-empire snmp-mibs-downloader netexec hydra medusa -y
sudo apt install wine shellter qemu-user cadaver irssi -y

sudo wget https://raw.githubusercontent.com/flozz/p0wny-shell/master/shell.php -O /usr/share/webshells/php/p0wny-shell.php
sudo wget https://github.com/mitchmoser/SharpShares/releases/download/v2.4/SharpShares.exe -O /usr/share/windows-resources/binaries/SharpShares.exe
sudo wget https://github.com/BeichenDream/SharpToken/releases/download/V1.2/SharpToken.exe -O /usr/share/windows-resources/binaries/SharpToken.exe
sudo wget https://github.com/BeichenDream/GodPotato/releases/download/V1.20/GodPotato-NET4.exe -O /usr/share/windows-resources/binaries/GodPotato-NET4.exe
sudo wget https://github.com/SnaffCon/Snaffler/releases/download/1.0.150/Snaffler.exe -O /usr/share/windows-resources/binaries/Snaffler.exe
sudo wget https://github.com/AlessandroZ/LaZagne/releases/download/2.4.3/lazagne.exe -O /usr/share/windows-resources/binaries/lazagne.exe
sudo wget https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer64.exe -O /usr/share/windows-resources/binaries/PrintSpoofer64.exe

# steg
sudo apt install steghide stegcracker -y
sudo gem install zsteg

# Ghostpack
cd /usr/share/windows-resources/binaries
sudo git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git
cd $HOME

# Install RustScan
cd /tmp
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb
sudo dpkg -i rustscan_2.0.1_amd64.deb && sudo rm /tmp/rustscan_2.0.1_amd64.deb
cd $HOME

# pwn_nomal
sudo gem install one_gadget
sudo gem install seccomp-tools
sudo python3 -m pip install pwntools
sudo apt install gdb ropper -y
cd /opt
sudo git clone https://github.com/Rizer0/Ropdump
sudo git clone https://github.com/apogiatzis/gdb-peda-pwndbg-gef 
sudo git clone https://github.com/scwuaptx/Pwngdb
cd gdb-peda-pwndbg-gef && sudo ./install.sh
sleep 2
sudo mv /root/gef /opt
sudo mv /root/pwndbg /opt
sudo mv /root/peda /opt
sudo mv /root/peda-arm /opt
sudo rm /root/.gdbinit
cd /tmp && wget https://raw.githubusercontent.com/schecthellraiser606/linuxsetup/main/gdbinit
cat /tmp/gdbinit | sudo tee /etc/gdb/gdbinit
rm /tmp/gdbinit
echo "alias gdb='exec gdb -q -ex init-gdb \"\$@\"'" | sudo tee -a /root/.zshrc
echo "alias gdb='exec gdb -q -ex init-gdb \"\$@\"'" >> $HOME/.zshrc
# pwninit
cd /tmp
wget https://github.com/io12/pwninit/releases/download/3.3.0/pwninit
sudo chmod +x /tmp/pwninit && sudo mv /tmp/pwninit /usr/local/bin/pwninit
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
sudo python3 -m venv volatility3
cd /tmp
wget https://github.com/volatilityfoundation/volatility3/releases/download/v2.5.2/volatility3-2.5.2-py3-none-any.whl
sudo /opt/volatility3/bin/pip3 install /tmp/volatility3-2.5.2-py3-none-any.whl && rm /tmp/volatility3-2.5.2-py3-none-any.whl
cd $HOME

# CMSmap
cd /opt
sudo git clone https://github.com/Dionach/CMSmap.git
cd CMSmap && sudo pip3 install .
cd $HOME

# Autorecon
cd /opt
sudo apt install feroxbuster oscanner tnscmd10g wkhtmltopdf -y
sudo python3 -m venv autorecon
sudo /opt/autorecon/bin/pip3 install git+https://github.com/Tib3rius/AutoRecon.git
cd $HOME

# Docker
sudo apt install -y docker.io
sudo usermod -aG docker $USER # sudo newgrp docker
cd /tmp
curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url  | grep docker-compose-linux-x86_64 | cut -d '"' -f 4 | wget -qi -
chmod +x docker-compose-linux-x86_64 && sudo mv /tmp/docker-compose-linux-x86_64 /usr/local/bin/docker-compose
cd $HOME

# Ghidra Script
cd /opt
sudo mkdir ghidra_options && cd ghidra_options && sudo mkdir ghidra_scripts && cd ghidra_scripts
sudo git clone https://github.com/AllsafeCyberSecurity/ghidra_scripts 
sudo git clone https://github.com/ghidraninja/ghidra_scripts ninja_scripts
sudo git clone https://github.com/AllsafeCyberSecurity/py-findcrypt-ghidra
sudo wget https://raw.githubusercontent.com/mooncat-greenpy/Ghidra_GolangAnalyzerExtension/1584493a62db06348421c3455a4457ca68fd7013/ghidra_scripts/degobfuscate.py
sudo git clone https://github.com/0xb0bb/pwndra
cd /opt/ghidra_options && sudo mkdir ghidra_DATA && cd ghidra_DATA
sudo git clone https://github.com/AllsafeCyberSecurity/Ghidra_Data_Type
sudo wget https://github.com/nneonneo/ghidra-wasm-plugin/releases/download/v2.3.0/ghidra_11.0_PUBLIC_20240123_ghidra-wasm-plugin.zip
cd $HOME

# ldap_hell
cd /opt
sudo git clone https://github.com/PShlyundin/ldap_shell.git
cd ldap_shell && sudo python3 -m venv venv
sudo /opt/ldap_shell/venv/bin/python3 -m pip install .
cd $HOME

# jwt_tool
cd /opt
sudo git clone https://github.com/ticarpi/jwt_tool.git
cd jwt_tool && sudo python3 -m venv venv
sudo /opt/jwt_tool/venv/bin/pip3 install -r requirements.txt
cd $HOME

# kerbrute
sudo go install github.com/ropnop/kerbrute@latest 
sudo mv /root/go/bin/kerbrute /usr/local/bin/

#katana
sudo go install github.com/projectdiscovery/katana/cmd/katana@latest
sudo mv /root/go/bin/katana /usr/local/bin/

#jsleak
sudo go install github.com/channyein1337/jsleak@latest
sudo mv /root/go/bin/jsleak /usr/local/bin/

#mantra
sudo go install github.com/MrEmpy/mantra@latest
sudo mv /root/go/bin/mantra /usr/local/bin/

#web-wordlist-generator
cd /opt
sudo git clone https://github.com/OsmanKandemir/web-wordlist-generator
cd web-wordlist-generator && sudo python3 -m venv venv
sudo /opt/web-wordlist-generator/venv/bin/pip3 install -r requirements.txt
cd $HOME

# MSSqlPwner
cd /opt
sudo git clone https://github.com/ScorpionesLabs/MSSqlPwner
cd MSSqlPwner && sudo python3 -m venv venv
sudo /opt/MSSqlPwner/venv/bin/pip3 install -r requirements.txt
cd $HOME

# WhatWaf
cd /opt
sudo git clone https://github.com/Ekultek/WhatWaf
cd WhatWaf && pip3 install -r requirements.txt
cd $HOME

# LeakSearch
cd /opt
sudo git clone https://github.com/JoelGMSec/LeakSearch
cd LeakSearch && sudo python3 -m venv venv
sudo /opt/LeakSearch/venv/bin/pip3 install -r requirements.txt
cd $HOME

# SmuggleFuzz
sudo go install github.com/moopinger/smugglefuzz@latest
sudo mv /root/go/bin/smugglefuzz /usr/local/bin/

# noPac
cd /opt
sudo git clone https://github.com/Ridter/noPac
cd noPac && sudo python3 -m venv venv
sudo /opt/noPac/venv/bin/pip3 install -r requirements.txt
cd $HOME

# PetitPotam
cd /opt
sudo git clone https://github.com/topotam/PetitPotam
cd $HOME

# apk2url
cd /tmp
git clone https://github.com/n0mi1k/apk2url
cd apk2url && sudo ./install.sh
cd $HOME && rm -rf /tmp/apk2url

# APKDeepLens
cd /opt
sudo git clone https://github.com/d78ui98/APKDeepLens
cd APKDeepLens && sudo python3 -m venv venv
sudo /opt/APKDeepLens/venv/bin/pip3 install -r requirements.txt
cd $HOME

# Rusthound
cd /opt
sudo git clone https://github.com/NH-RED-TEAM/RustHound.git
# cd RustHound &&  docker build --rm -t rusthound . 
# docker run --rm -v /opt/RustHound:/usr/src/rusthound rusthound linux_musl
# docker run --rm -v /opt/RustHound:/usr/src/rusthound rusthound linux_x86_64
cd $HOME
