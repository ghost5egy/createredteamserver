apt update && sudo apt upgrade -y
apt install git curl gnupg -y
echo 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list
wget 'https://archive.kali.org/archive-key.asc'
sudo apt-key add archive-key.asc
sudo apt update;sudo apt upgrade -y ;sudo apt install powershell-empire
apt install metasploit-framework -y
cd /opt
git clone https://github.com/zerosum0x0/koadic.git
cd koadic
pip3 install -r requirements.txt
echo "cd /opt/koadic;./koadic" >> /usr/bin/koadic
chmod +x /usr/bin/koadic
apt install nasm -y
apt install mingw-w64 mono-devel -y
cd /opt
git clone https://github.com/mhaskar/Octopus/
cd Octopus
pip3 install -r requirements.txt
echo "cd /opt/Octopus;./octopus.py" >> /usr/bin/octopus
chmod +x /usr/bin/octopus
